#!/usr/bin/env python3
"""fpc264irc: find stale .ppu files - a unit whose recorded checksum for a used unit no longer matches
that unit's .ppu (the compiler would try to recompile it). Uses ppudump.  byte, 2026-10-02
usage: ppu_consistency.py <ppudump> <unit dir> [<extra unit dir> ...]
2026-11-15: Free Vision and the LCL both have units named Dialogs and Menus. With lcl/ given before the main folder,
FV units (tabs, stddlg, ...) looked stale against the LCL Dialogs. An FV unit (a source in src/packages/fv/src) whose
record matches a later folder's unit of that name (the main folder, or fv/ on i386-darwin) is now a CLASH line (expected: FV and the LCL are not used in the
same program), not FATAL. Nothing else changed: every other unit is still checked against the first folder."""
import re, subprocess, sys, os, glob
pd = sys.argv[1]; dirs = sys.argv[2:]
info = {}; base = {}
fvsrc = os.path.join(os.path.dirname(os.path.abspath(__file__)), '..', '..', 'src', 'packages', 'fv', 'src')
fv = {os.path.splitext(f)[0].lower() for f in os.listdir(fvsrc) if f.lower().endswith(('.pas', '.pp'))} if os.path.isdir(fvsrc) else set()
for d in dirs:
    for p in glob.glob(os.path.join(d, '*.ppu')):
        name = os.path.basename(p)[:-4].lower()
        if name in info:
            # a later folder's copy of a name an earlier folder also has: only its checksum, for the FV rule below
            i = re.search(r'^Interface Checksum\s*:\s*(\w+)', subprocess.run([pd, '-Vh', p], capture_output=True, text=True, errors='replace').stdout, re.M)
            if i: base.setdefault(name, set()).add(i.group(1))
            continue
        out = subprocess.run([pd, p] if os.path.getsize(p) < 2000000 else [pd, '-Vhi', p], capture_output=True, text=True, errors='replace').stdout
        crc = re.search(r'^Checksum\s*:\s*(\w+)', out, re.M)
        intf = re.search(r'^Interface Checksum\s*:\s*(\w+)', out, re.M)
        cut = out.find('Implementation section')
        intf_part, impl_part = (out[:cut], out[cut:]) if cut >= 0 else (out, '')
        uses = [(u, c, i, 'intf') for u, c, i in re.findall(r'Uses unit: (\w+) \(Crc: (\w+), IntfcCrc: (\w+)', intf_part)]
        uses += [(u, c, i, 'impl') for u, c, i in re.findall(r'Uses unit: (\w+) \(Crc: (\w+), IntfcCrc: (\w+)', impl_part)]
        info[name] = (crc.group(1) if crc else None, intf.group(1) if intf else None, uses, p)
# interface uses: compiler compares the interface crc - mismatch is reported but tolerated without source.
# implementation uses: compiler compares the interface crc too and really recompiles - fatal without source.
fatal = warn = clash = 0; fatal_units = set()
for name, (crc, intf, uses, p) in sorted(info.items()):
    for u, ucrc, uintf, part in uses:
        t = info.get(u.lower())
        if t is None or t[1] == uintf:
            continue
        if name in fv and uintf in base.get(u.lower(), ()):
            print(f'CLASH {name}: Free Vision unit, uses the {u} of a later folder (an earlier folder has another {u}) - expected'); clash += 1
            continue
        if part == 'impl':
            print(f'FATAL {name}: implementation uses {u} (recorded {uintf}, {u}.ppu has {t[1]})'); fatal += 1; fatal_units.add(name)
        else:
            warn += 1
print(f'{len(info)} units checked: {fatal} fatal (impl) in {len(fatal_units)} units, {warn} interface-only warnings'
      + (f', {clash} FV/LCL name clashes (expected)' if clash else ''))
