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
	GLOBAL fpc_rewrite_typed
fpc_rewrite_typed:
	GLOBAL FPC_REWRITE_TYPED
FPC_REWRITE_TYPED:
		push	bp
		mov	bp,sp
		mov	ax,word [bp+8]
		push	ax
		push	word [bp+6]
		push	word [bp+4]
		call	SYSTEM_$$_REWRITE$file$LONGINT
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	SYSTEM_$$_REWRITE$file$LONGINT
