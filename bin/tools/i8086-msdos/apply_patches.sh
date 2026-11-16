#!/bin/bash
WORK=/home/claude/i8086_work
SL=$WORK/rtl/units/i8086-msdos/system.sl

# 1. FillChar register convention
cat > $SL/system0s4.s << 'EOF'
BITS 16
CPU 8086
SECTION text use16 class=code
	GLOBAL SYSTEM_FILLCHAR$formal$SMALLINT$BYTE
SYSTEM_FILLCHAR$formal$SMALLINT$BYTE:
	ALIGN 2
	GLOBAL FPC_FILLCHAR
FPC_FILLCHAR:
		mov	di,ax
		mov	al,cl
		mov	ah,al
		mov	cx,dx
		or	cx,cx
		jle	.done
		push	ds
		pop	es
		shr	cx,1
		jnc	.even
		stosb
.even:
		rep	stosw
.done:
		ret
EOF

# 2. MOVE register convention
cat > $SL/system0s7.s << 'EOF'
BITS 16
CPU 8086
SECTION text use16 class=code
	GLOBAL SYSTEM_MOVE$formal$formal$SMALLINT
SYSTEM_MOVE$formal$formal$SMALLINT:
	ALIGN 2
	GLOBAL FPC_MOVE
FPC_MOVE:
		mov	si,ax
		mov	di,dx
		or	cx,cx
		jle	.done
		push	ds
		pop	es
		cmp	si,di
		ja	.forward
		add	si,cx
		add	di,cx
		dec	si
		dec	di
		std
		rep	movsb
		cld
		jmp	.done
.forward:
		rep	movsb
.done:
		ret
EOF

# 3. do_open direct INT 21h
cat > $SL/system0s919.s << 'EOF'
BITS 16
CPU 8086
SECTION text use16 class=code
	GLOBAL SYSTEM_DO_OPEN$formal$PCHAR$LONGINT
SYSTEM_DO_OPEN$formal$PCHAR$LONGINT:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	word [bp-2],ax
		mov	word [bp-4],dx
		mov	ax,word [bp+4]
		test	ax,0x1000
		jnz	.create
		mov	ah,3Dh
		and	al,3
		jmp	.do_int
.create:
		mov	ah,3Ch
		xor	cx,cx
.do_int:
		mov	dx,word [bp-4]
		int	21h
		jc	.error
		mov	bx,word [bp-2]
		mov	word [bx],ax
		cmp	ax,50
		jae	.done
		mov	bx,ax
		mov	byte [U_SYSTEM_OPENFILES+bx],1
		jmp	.done
.error:
		call	SYSTEM_GETINOUTRES$WORD
.done:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	U_SYSTEM_OPENFILES
EXTERN	SYSTEM_GETINOUTRES$WORD
EOF

# 4. do_write direct INT 21h
cat > $SL/system0s911.s << 'EOF'
BITS 16
CPU 8086
SECTION text use16 class=code
	GLOBAL SYSTEM_DO_WRITE$WORD$POINTER$LONGINT$$LONGINT
SYSTEM_DO_WRITE$WORD$POINTER$LONGINT$$LONGINT:
		push	bp
		mov	bp,sp
		mov	bx,ax
		mov	cx,word [bp+4]
		mov	ah,40h
		int	21h
		jc	.error
		mov	dx,0
		jmp	.done
.error:
		call	SYSTEM_GETINOUTRES$WORD
		xor	ax,ax
		xor	dx,dx
.done:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM_GETINOUTRES$WORD
EOF

# 5. do_read direct INT 21h
cat > $SL/system0s912.s << 'EOF'
BITS 16
CPU 8086
SECTION text use16 class=code
	GLOBAL SYSTEM_DO_READ$WORD$POINTER$LONGINT$$LONGINT
SYSTEM_DO_READ$WORD$POINTER$LONGINT$$LONGINT:
		push	bp
		mov	bp,sp
		mov	bx,ax
		mov	cx,word [bp+4]
		mov	ah,3Fh
		int	21h
		jc	.error
		mov	dx,0
		jmp	.done
.error:
		call	SYSTEM_GETINOUTRES$WORD
		xor	ax,ax
		xor	dx,dx
.done:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM_GETINOUTRES$WORD
EOF

# 6. do_close direct INT 21h
cat > $SL/system0s908.s << 'EOF'
BITS 16
CPU 8086
SECTION text use16 class=code
	GLOBAL SYSTEM_DO_CLOSE$WORD
SYSTEM_DO_CLOSE$WORD:
		mov	bx,ax
		cmp	bx,4
		jbe	.skip
		mov	ah,3Eh
		int	21h
		jc	.error
		cmp	bx,50
		jae	.skip
		mov	byte [U_SYSTEM_OPENFILES+bx],0
.skip:
		ret
.error:
		call	SYSTEM_GETINOUTRES$WORD
		ret
EXTERN	U_SYSTEM_OPENFILES
EXTERN	SYSTEM_GETINOUTRES$WORD
EOF

# 7. Do_Isdevice stub
cat > $SL/system0s920.s << 'EOF'
BITS 16
CPU 8086
SECTION text use16 class=code
	GLOBAL SYSTEM_DO_ISDEVICE$WORD$$BOOLEAN
SYSTEM_DO_ISDEVICE$WORD$$BOOLEAN:
		mov	al,1
		ret
EOF

# 8. OpenText parameter swap (bp+8→bp+4)
python3 -c "
fn = '$SL/' + [f for f in __import__('os').listdir('$SL') if f.endswith('.s') and 'SYSTEM_OPENTEXT' in open('$SL/'+f).read()][0]
s = open(fn).read()
s = s.replace('\tmov\tdx,word [bp+8]\n\t\tmov\tax,word [bp+10]',
              '\tmov\tdx,word [bp+4]\n\t\tmov\tax,word [bp+6]')
open(fn,'w').write(s)
" 2>/dev/null

# 9. Null area check inverted branch (je→jne)
python3 -c "
s = open('$SL/system0s1121.s').read()
s = s.replace('je\t..@j21943', 'jne\t..@j21943')
open('$SL/system0s1121.s','w').write(s)
"

# Reassemble all patched files
for sf in system0s4 system0s7 system0s919 system0s911 system0s912 system0s908 system0s920 system0s1121; do
    fn=$SL/${sf}.s
    if [ -f "$fn" ]; then
        nasm -f obj -o "${fn%.s}.o" "$fn" 2>/dev/null
    fi
done

# OpenText file:
for sf in $SL/*.s; do
    if grep -q "SYSTEM_OPENTEXT" "$sf" 2>/dev/null; then
        nasm -f obj -o "${sf%.s}.o" "$sf" 2>/dev/null
    fi
done

echo "ALL PATCHES APPLIED"

# 10. GetInOutRes - direct InOutRes set (no FPC_MSDOS INT 59h call)
cat > $SL/system0s2.s << 'EOF'
BITS 16
CPU 8086
SECTION text use16 class=code
	GLOBAL SYSTEM_GETINOUTRES$WORD
SYSTEM_GETINOUTRES$WORD:
		push	bx
		mov	bx,word [FPC_THREADVAR_RELOCATE]
		test	bx,bx
		jnz	.tvar
		mov	bx,U_SYSTEM_INOUTRES+2
		jmp	.set
.tvar:
		push	ax
		mov	ax,word [U_SYSTEM_INOUTRES]
		call	bx
		mov	bx,ax
		pop	ax
.set:
		mov	word [bx],ax
		pop	bx
		ret
EXTERN	U_SYSTEM_INOUTRES
EXTERN	FPC_THREADVAR_RELOCATE
EOF
nasm -f obj -o $SL/system0s2.o $SL/system0s2.s 2>/dev/null

# 11. Fix section classes in data-only smartlink files (bss→class=bss, data→class=data, rodata→class=data)
echo "Fixing section classes..."
cd $SL
fixed=0
for sf in *.s; do
    changed=0
    if grep -q "^SECTION bss$" "$sf" 2>/dev/null; then
        sed -i 's/^SECTION bss$/SECTION bss class=bss/' "$sf"
        changed=1
    fi
    if grep -q "^SECTION data$" "$sf" 2>/dev/null; then
        sed -i 's/^SECTION data$/SECTION data class=data/' "$sf"
        changed=1
    fi
    if grep -q "^SECTION rodata$" "$sf" 2>/dev/null; then
        sed -i 's/^SECTION rodata$/SECTION rodata class=data/' "$sf"
        changed=1
    fi
    if [ "$changed" -eq 1 ]; then
        nasm -f obj -o "${sf%.s}.o" "$sf" 2>/dev/null
        fixed=$((fixed+1))
    fi
done
echo "Fixed section classes in $fixed files"
