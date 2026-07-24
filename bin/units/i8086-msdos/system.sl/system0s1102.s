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
	GLOBAL fpc_read_text_pchar_as_pointer
fpc_read_text_pchar_as_pointer:
		push	bp
		mov	bp,sp
		mov	ax,word [bp+6]
		push	ax
		push	word [bp+4]
		mov	ax,32767
		push	ax
		mov	ax,-1
		push	ax
		call	SYSTEM_$$_READPCHARLEN$TEXT$PCHAR$LONGINT$$LONGINT
		mov	bx,ax
		mov	ax,word [bp+4]
		add	bx,ax
		mov	byte [bx],0
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM_$$_READPCHARLEN$TEXT$PCHAR$LONGINT$$LONGINT
