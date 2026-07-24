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
	GLOBAL ISO7185_$$_PAGE$TEXT
ISO7185_$$_PAGE$TEXT:
		push	bp
		mov	bp,sp
		sub	sp,4
		call	fpc_get_output
		mov	dx,0
		push	dx
		mov	dx,0
		push	dx
		mov	word [bp-4],ax
		push	word [bp-4]
		mov	ax,12
		push	ax
		call	fpc_write_text_char
		mov	ax,word [bp-4]
		mov	word [bp-2],ax
		push	word [bp-2]
		call	fpc_write_end
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	fpc_write_end
EXTERN	fpc_write_text_char
EXTERN	fpc_get_output
