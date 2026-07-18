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
	GLOBAL SYSTEM$_$TDOUBLEREC_$__$$_SETFRAC$QWORD
SYSTEM$_$TDOUBLEREC_$__$$_SETFRAC$QWORD:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	bx,word [bp+12]
		mov	ax,word [bx]
		mov	word [bp-4],ax
		mov	ax,word [bx+2]
		mov	word [bp-2],ax
		mov	dx,word [bx+4]
		mov	cx,word [bx+6]
		mov	word [bp-4],0
		mov	word [bp-2],0
		mov	dx,0
		and	cx,32752
		mov	ax,word [bp+4]
		mov	bx,word [bp+6]
		mov	si,word [bp+8]
		mov	di,word [bp+10]
		and	di,15
		or	word [bp-4],ax
		or	word [bp-2],bx
		or	dx,si
		or	cx,di
		mov	bx,word [bp+12]
		mov	ax,word [bp-4]
		mov	word [bx],ax
		mov	ax,word [bp-2]
		mov	word [bx+2],ax
		mov	word [bx+4],dx
		mov	word [bx+6],cx
		mov	sp,bp
		pop	bp
		ret	10
