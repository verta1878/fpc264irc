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
	GLOBAL TYPINFO_$$_SETSETPROP$TOBJECT$PPROPINFO$ANSISTRING
TYPINFO_$$_SETSETPROP$TOBJECT$PPROPINFO$ANSISTRING:
		push	bp
		mov	bp,sp
		push	word [bp+8]
		push	word [bp+6]
		push	word [bp+6]
		push	word [bp+4]
		call	TYPINFO_$$_STRINGTOSET$PPROPINFO$ANSISTRING$$SMALLINT
		mov	cx,ax
		mov	ax,cx
		cwd
		mov	bx,ax
		mov	si,dx
		mov	ax,cx
		cwd
		mov	bx,ax
		mov	si,dx
		mov	ax,bx
		mov	dx,si
		mov	cl,15
		sar	dx,cl
		mov	ax,dx
		push	dx
		push	ax
		push	si
		push	bx
		call	TYPINFO_$$_SETORDPROP$TOBJECT$PPROPINFO$INT64
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	TYPINFO_$$_SETORDPROP$TOBJECT$PPROPINFO$INT64
EXTERN	TYPINFO_$$_STRINGTOSET$PPROPINFO$ANSISTRING$$SMALLINT
