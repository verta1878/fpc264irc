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
	GLOBAL VARUTILS_$$_SAFEARRAYCALCULATEELEMENTADDRESS$PVARARRAY$SMALLINT$$POINTER
VARUTILS_$$_SAFEARRAYCALCULATEELEMENTADDRESS$PVARARRAY$SMALLINT$$POINTER:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	ax,word [bp+6]
		mov	word [bp-4],ax
		mov	ax,word [bp+4]
		cwd
		push	dx
		push	ax
		mov	bx,word [bp+6]
		push	word [bx+6]
		push	word [bx+4]
		mov	ax,0
		push	ax
		call	fpc_mul_longint
		mov	bx,word [bp-4]
		mov	dx,word [bx+12]
		add	ax,dx
		mov	word [bp-2],ax
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	fpc_mul_longint
