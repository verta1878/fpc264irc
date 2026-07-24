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
	GLOBAL VARUTILS_$$_VARIANTTYPEMISMATCH$WORD$WORD
VARUTILS_$$_VARIANTTYPEMISMATCH$WORD$WORD:
		push	bp
		mov	bp,sp
..@j20:
		mov	ax,word VMT_$SYSUTILS_$$_EVARIANTERROR
		push	ax
		mov	ax,1
		push	ax
		mov	ax,-32766
		push	ax
		mov	ax,5
		push	ax
		call	SYSUTILS$_$EVARIANTERROR_$__$$_CREATECODE$LONGINT$$EVARIANTERROR
		push	ax
		mov	ax,word ..@j20
		push	ax
		push	bp
		call	fpc_raiseexception
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	fpc_raiseexception
EXTERN	SYSUTILS$_$EVARIANTERROR_$__$$_CREATECODE$LONGINT$$EVARIANTERROR
EXTERN	VMT_$SYSUTILS_$$_EVARIANTERROR
