#!/usr/bin/env python3
"""pe-win11-fix.py — Patch FPC-generated PE32 executables for Windows 11 compatibility.

FPC 2.6.4 generates PE32 with DllCharacteristics=0 and SubsystemVersion=4.0,
which can cause crashes on Windows 11 due to stricter DEP enforcement.

This tool patches:
  - DllCharacteristics: sets NX_COMPAT (0x0100) for DEP compatibility
  - MajorSubsystemVersion: 4 → 6 (minimum Vista, required for Win11)
  - MajorOperatingSystemVersion: 4 → 6

Usage:
  python3 pe-win11-fix.py mystic.exe mide.exe *.exe
"""
import struct, sys, os

def patch_pe(path):
    with open(path, 'rb') as f:
        data = bytearray(f.read())
    
    if data[:2] != b'MZ':
        print(f"  SKIP {path}: not a PE file")
        return False
    
    pe_off = struct.unpack_from('<I', data, 0x3C)[0]
    if data[pe_off:pe_off+4] != b'PE\0\0':
        print(f"  SKIP {path}: no PE signature")
        return False
    
    opt = pe_off + 24  # optional header
    magic = struct.unpack_from('<H', data, opt)[0]
    if magic != 0x10B:
        print(f"  SKIP {path}: not PE32 (magic=0x{magic:X})")
        return False
    
    # PE32 offsets from optional header start:
    os_ver = opt + 40      # MajorOperatingSystemVersion
    subsys_ver = opt + 48  # MajorSubsystemVersion  
    dll_char = opt + 70    # DllCharacteristics
    
    old_dll = struct.unpack_from('<H', data, dll_char)[0]
    old_subsys = struct.unpack_from('<H', data, subsys_ver)[0]
    old_os = struct.unpack_from('<H', data, os_ver)[0]
    
    changed = False
    
    # Set NX_COMPAT if not already set:
    if not (old_dll & 0x0100):
        struct.pack_into('<H', data, dll_char, old_dll | 0x0100)
        changed = True
    
    # Set subsystem version to 6.0 if below:
    if old_subsys < 6:
        struct.pack_into('<H', data, subsys_ver, 6)
        struct.pack_into('<H', data, subsys_ver + 2, 0)
        changed = True
    
    # Set OS version to 6.0 if below:
    if old_os < 6:
        struct.pack_into('<H', data, os_ver, 6)
        struct.pack_into('<H', data, os_ver + 2, 0)
        changed = True
    
    if changed:
        with open(path, 'wb') as f:
            f.write(data)
        new_dll = struct.unpack_from('<H', data, dll_char)[0]
        print(f"  FIXED {path}: DllChar=0x{old_dll:04X}→0x{new_dll:04X}, SubsysVer={old_subsys}→6")
        return True
    else:
        print(f"  OK    {path}: already patched")
        return False

if __name__ == '__main__':
    if len(sys.argv) < 2:
        print("Usage: python3 pe-win11-fix.py <file.exe> [file2.exe ...]")
        sys.exit(1)
    
    fixed = 0
    for arg in sys.argv[1:]:
        if os.path.isfile(arg):
            if patch_pe(arg):
                fixed += 1
    
    print(f"\n{fixed} file(s) patched for Windows 11 compatibility.")
