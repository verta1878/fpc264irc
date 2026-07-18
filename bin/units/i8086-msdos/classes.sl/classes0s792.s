BITS 16
CPU 8086
SECTION .text use16 class=code
SECTION .rodata class=data
SECTION .data class=data
SECTION .fpc class=data
SECTION .bss class=bss
SECTION stack stack class=stack align=16
SECTION heap class=heap align=16
GROUP dgroup rodata data fpc bss stack heap
SECTION .text

SECTION .text
	ALIGN 2
	GLOBAL CLASSES$_$TBINARYOBJECTREADER_$__$$_READSTR$$ANSISTRING
CLASSES$_$TBINARYOBJECTREADER_$__$$_READSTR$$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,2
		push	word [bp+6]
		lea	ax,[bp-1]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,1
		push	ax
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+60]
		call	ax
		mov	ax,word [bp+4]
		push	ax
		mov	al,byte [bp-1]
		mov	ah,0
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_setlength
		cmp	byte [bp-1],0
		ja	..@j18022
		jmp	..@j18023
..@j18022:
		push	word [bp+6]
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		push	ax
		mov	ax,0
		mov	dl,byte [bp-1]
		mov	dh,0
		push	ax
		push	dx
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+60]
		call	ax
..@j18023:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	fpc_ansistr_setlength
