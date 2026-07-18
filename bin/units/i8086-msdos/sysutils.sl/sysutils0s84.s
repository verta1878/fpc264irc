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
	GLOBAL SYSUTILS_$$_APPENDSTR$ANSISTRING$ANSISTRING
SYSUTILS_$$_APPENDSTR$ANSISTRING$ANSISTRING:
		push	bp
		mov	bp,sp
		mov	ax,word [bp+6]
		push	ax
		mov	bx,word [bp+6]
		push	word [bx]
		push	word [bp+4]
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	fpc_ansistr_concat
