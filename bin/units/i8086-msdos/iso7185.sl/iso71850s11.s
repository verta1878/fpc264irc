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
	GLOBAL ISO7185_$$_GET$TEXT
ISO7185_$$_GET$TEXT:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	ax,word [bp+4]
		push	ax
		lea	ax,[bp-1]
		push	ax
		call	fpc_read_text_char
		mov	ax,word [bp+4]
		push	ax
		call	fpc_read_end
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	fpc_read_end
EXTERN	fpc_read_text_char
