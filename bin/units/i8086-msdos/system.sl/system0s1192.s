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
	GLOBAL fpc_typed_read_iso
fpc_typed_read_iso:
	GLOBAL FPC_TYPED_READ_ISO
FPC_TYPED_READ_ISO:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	ax,word [bp+6]
		mov	bx,ax
		lea	ax,[bx+568]
		push	ax
		mov	ax,word [bp+4]
		push	ax
		push	word [bp+8]
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
		mov	ax,word [bp+6]
		push	ax
		call	SYSTEM_$$_EOF$file$$BOOLEAN
		test	al,al
		je	..@j25187
		jmp	..@j25188
..@j25187:
		mov	ax,word [bp+6]
		push	ax
		mov	bx,word [bp+6]
		lea	ax,[bx+568]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,1
		push	ax
		call	SYSTEM_$$_BLOCKREAD$file$formal$INT64
..@j25188:
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	SYSTEM_$$_BLOCKREAD$file$formal$INT64
EXTERN	SYSTEM_$$_EOF$file$$BOOLEAN
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
