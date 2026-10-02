#!/usr/bin/env python3
"""fpc264irc: find stale .ppu files - a unit whose recorded checksum for a used unit no longer matches
that unit's .ppu (the compiler would try to recompile it). Uses ppudump.  byte, 2026-10-02
usage: ppu_consistency.py <ppudump> <unit dir> [<extra unit dir> ...]"""
import re, subprocess, sys, os, glob
pd = sys.argv[1]; dirs = sys.argv[2:]
info = {}
for d in dirs:
    for p in glob.glob(os.path.join(d, '*.ppu')):
        name = os.path.basename(p)[:-4].lower()
        if name in info: continue
        out = subprocess.run([pd, p], capture_output=True, text=True, errors='replace').stdout
        crc = re.search(r'^Checksum\s*:\s*(\w+)', out, re.M)
        intf = re.search(r'^Interface Checksum\s*:\s*(\w+)', out, re.M)
        cut = out.find('Implementation section')
        intf_part, impl_part = (out[:cut], out[cut:]) if cut >= 0 else (out, '')
        uses = [(u, c, i, 'intf') for u, c, i in re.findall(r'Uses unit: (\w+) \(Crc: (\w+), IntfcCrc: (\w+)', intf_part)]
        uses += [(u, c, i, 'impl') for u, c, i in re.findall(r'Uses unit: (\w+) \(Crc: (\w+), IntfcCrc: (\w+)', impl_part)]
        info[name] = (crc.group(1) if crc else None, intf.group(1) if intf else None, uses, p)
# interface uses: compiler compares the interface crc - mismatch is reported but tolerated without source.
# implementation uses: compiler compares the interface crc too and really recompiles - fatal without source.
fatal = warn = 0; fatal_units = set()
for name, (crc, intf, uses, p) in sorted(info.items()):
    for u, ucrc, uintf, part in uses:
        t = info.get(u.lower())
        if t is None or t[1] == uintf:
            continue
        if part == 'impl':
            print(f'FATAL {name}: implementation uses {u} (recorded {uintf}, {u}.ppu has {t[1]})'); fatal += 1; fatal_units.add(name)
        else:
            warn += 1
print(f'{len(info)} units checked: {fatal} fatal (impl) in {len(fatal_units)} units, {warn} interface-only warnings')
