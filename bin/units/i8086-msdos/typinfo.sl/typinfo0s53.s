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
	GLOBAL TYPINFO_$$_SETOBJECTPROP$TOBJECT$PPROPINFO$TOBJECT
TYPINFO_$$_SETOBJECTPROP$TOBJECT$PPROPINFO$TOBJECT:
		push	bp
		mov	bp,sp
		push	word [bp+8]
		push	word [bp+6]
		mov	ax,word [bp+4]
		cwd
		mov	bx,ax
		mov	si,dx
		mov	cl,15
		sar	si,cl
		mov	bx,si
		push	si
		push	bx
		push	dx
		push	ax
		call	TYPINFO_$$_SETORDPROP$TOBJECT$PPROPINFO$INT64
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	TYPINFO_$$_SETORDPROP$TOBJECT$PPROPINFO$INT64
