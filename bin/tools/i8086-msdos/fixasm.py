import re, sys, itertools

for fn in sys.argv[1:]:
    s = open(fn).read()
    # [sp] fixes
    s = s.replace('\t\tfstp\ttword [sp]', '\t\tmov\tdi,sp\n\t\tfstp\ttword [di]')
    s = re.sub(r'\t\tlea\tdi,\[sp\+(\d+)\]', lambda m: f'\t\tmov\tdi,sp\n\t\tadd\tdi,{m.group(1)}', s)
    # dword SYMBOL
    s = re.sub(r'(mov\t[a-z]+),dword ([A-Z_][A-Za-z0-9_$]+(?:\+\d+)?)', r'\1,\2', s)
    # 32→16 bit registers
    for e32, e16 in [('eax','ax'),('ebx','bx'),('ecx','cx'),('edx','dx')]:
        s = s.replace(f'test\t{e32},{e32}', f'test\t{e16},{e16}')
        s = s.replace(f'mov\t{e32},0', f'xor\t{e16},{e16}')
        s = s.replace(f'mov\t{e32},{e16}', f'; nop {e32},{e16}')
        s = s.replace(f'mov\t{e16},{e32}', f'; nop {e16},{e32}')
        for o16 in ['ax','bx','cx','dx']:
            if o16 != e16:
                s = s.replace(f'mov\t{e32},{o16}', f'mov\t{e16},{o16}')
                s = s.replace(f'mov\t{o16},{e32}', f'mov\t{o16},{e16}')
        s = re.sub(rf'mov\tword \[([^\]]+)\],{e32}', rf'mov\tword [\1],{e16}', s)
        s = re.sub(rf'and\tword \[([^\]]+)\],{e32}', rf'and\tword [\1],{e16}', s)
        s = re.sub(rf'and\t(\w+),{e32}', rf'and\t\1,{e16}', s)
        s = re.sub(rf'mov\t{e32},dword \[([^\]]+)\]', rf'mov\t{e16},word [\1]', s)
        s = re.sub(rf'mov\tdword \[([^\]]+)\],{e32}', rf'mov\tword [\1],{e16}', s)
    # push dword
    def fix_push(m):
        p = m.group(1) or ''; b, o = m.group(2), int(m.group(3))
        return f'push\tword [{p}{b}+{o+2}]\n\t\tpush\tword [{p}{b}+{o}]'
    s = re.sub(r'push\tdword \[(ss:)?(bp)([+-]\d+)\]', fix_push, s)
    # shifts
    def fix_shift(m):
        op, reg, n = m.group(1), m.group(2), int(m.group(3))
        if n <= 4: return '\n\t\t'.join([f'{op}\t{reg},1'] * n)
        return f'mov\tcl,{n}\n\t\t{op}\t{reg},cl'
    s = re.sub(r'(shl|shr|sar)\t(\w+),(\d+)', lambda m: fix_shift(m) if int(m.group(3))>1 else m.group(0), s)
    # fnstsw ax
    s = s.replace('\t\tfnstsw\tax', '\t\tdb 0xDF, 0xE0')
    # prefetchnta
    s = re.sub(r'\t\tprefetchnta\t\[.*?\]', '\t\t; prefetchnta', s)
    # cmovns
    ctr = itertools.count(90000)
    def fix_cmov(m):
        lbl = f'..@cmov{next(ctr)}'; return f'js\t{lbl}\n\t\tmov\t{m.group(1)},{m.group(2)}\n{lbl}:'
    s = re.sub(r'cmovns\t(\w+),(\w+)', fix_cmov, s)
    # bt
    s = s.replace('bt\tcx,31', 'test\tcx,0x8000')
    s = s.replace('bt\tdword [bp+8],31', 'test\tword [bp+10],0x8000')
    s = re.sub(r'bt\tdword \[([^\]]+)\],(ax|cx|dx)', r'CPU 386\n\t\tbt\tword [\1],\2\n\t\tCPU 8086', s)
    # Fix section names to match GROUP and merge into single segment
    s = s.replace('SECTION .text', 'SECTION text')
    # Fix section name mismatch: .rodata → rodata (to match GROUP dgroup)
    s = s.replace('SECTION .rodata', 'SECTION rodata')
    # Same for .data, .bss, .fpc
    s = s.replace('SECTION .data', 'SECTION data')
    s = s.replace('SECTION .bss', 'SECTION bss')
    s = s.replace('SECTION .fpc', 'SECTION fpc')
    open(fn, 'w').write(s)

# Additional fixes for remaining 386+ instructions
import sys
for fn in sys.argv[1:]:
    s = open(fn).read()
    changed = False
    
    # Fix o32 push/pop segment registers
    import re
    for seg in ['es','cs','ss','ds','fs','gs']:
        s = s.replace(f'o32 push {seg}', f'push {seg}')
        s = s.replace(f'o32 pop {seg}', f'pop {seg}')
    
    # Fix near conditional jumps (0F 8x xx xx) to short jumps
    # These are: jnz near, jz near, ja near, jc near, etc.
    # NASM generates these for large displacements. Can't always fix with
    # short jumps (limited range). For now, trust NASM to pick the right size.
    # Actually, NASM auto-sizes jumps — these might be in data, not code.
    
    # Fix section names to match GROUP and merge into single segment
    s = s.replace('SECTION .text', 'SECTION text')
    # Fix section name mismatch: .rodata → rodata (to match GROUP dgroup)
    s = s.replace('SECTION .rodata', 'SECTION rodata')
    # Same for .data, .bss, .fpc
    s = s.replace('SECTION .data', 'SECTION data')
    s = s.replace('SECTION .bss', 'SECTION bss')
    s = s.replace('SECTION .fpc', 'SECTION fpc')
    open(fn, 'w').write(s)
