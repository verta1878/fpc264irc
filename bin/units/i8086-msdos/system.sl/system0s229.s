BITS 16
CPU 8086
SECTION text use16 class=code
SECTION rodata class=data
SECTION data class=data
SECTION fpc class=data
SECTION bss class=bss
SECTION stack stack class=stack align=16
SECTION heap class=heap align=16
GROUP dgroup rodata data fpc bss stack heap
SECTION text

SECTION text
	ALIGN 2
	GLOBAL SYSTEM$_$TEXTENDED80REC_$__$$_SETEXP$QWORD
SYSTEM$_$TEXTENDED80REC_$__$$_SETEXP$QWORD:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	bx,word [bp+12]
		mov	ax,word [bx+8]
		and	ax,-32768
		mov	word [bp-2],ax
		mov	word [bp-4],0
		mov	word [bp-2],ax
		mov	word [bp-4],0
		mov	ax,0
		mov	dx,0
		mov	si,word [bp+4]
		mov	di,word [bp+6]
		mov	cx,word [bp+8]
		mov	bx,word [bp+10]
		and	si,32767
		mov	di,0
		mov	cx,0
		mov	bx,0
		or	word [bp-2],si
		or	word [bp-4],di
		or	ax,cx
		or	dx,bx
		mov	ax,word [bp-2]
		mov	bx,word [bp+12]
		mov	word [bx+8],ax
		mov	sp,bp
		pop	bp
		ret	10
