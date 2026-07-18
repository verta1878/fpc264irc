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
	GLOBAL SYSTEM_$$_SETTEXTLINEENDING$TEXT$SHORTSTRING
SYSTEM_$$_SETTEXTLINEENDING$TEXT$SHORTSTRING:
		push	bp
		mov	bp,sp
		sub	sp,256
		mov	dx,word [bp+4]
		lea	ax,[bp-256]
		push	ax
		mov	ax,255
		push	ax
		push	dx
		call	fpc_shortstr_to_shortstr
		mov	bx,word [bp+6]
		lea	ax,[bx+568]
		push	ax
		mov	ax,3
		push	ax
		lea	ax,[bp-256]
		push	ax
		call	fpc_shortstr_to_shortstr
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	fpc_shortstr_to_shortstr
