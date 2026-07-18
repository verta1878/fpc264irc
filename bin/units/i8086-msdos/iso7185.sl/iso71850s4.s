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
	GLOBAL ISO7185_$$_RESET$TEXT
ISO7185_$$_RESET$TEXT:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+4]
		mov	dx,word [bx+2]
		mov	ax,word [bx+4]
		test	ax,ax
		jne	..@j39
		test	dx,dx
		je	..@j37
..@j39:
		test	ax,ax
		jne	..@j40
		cmp	dx,-10318
		je	..@j38
..@j40:
		jmp	..@j36
..@j37:
		mov	ax,word [bp+4]
		push	ax
		call	ISO7185_$$_DOASSIGN$TEXT
		jmp	..@j35
..@j38:
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word [bp+4]
		push	ax
		mov	ax,26
		push	ax
		call	fpc_write_text_char
		mov	ax,word [bp+4]
		push	ax
		call	fpc_write_end
		jmp	..@j35
..@j36:
..@j35:
		mov	ax,word [bp+4]
		push	ax
		call	SYSTEM_$$_RESET$TEXT
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	SYSTEM_$$_RESET$TEXT
EXTERN	fpc_write_end
EXTERN	fpc_write_text_char
EXTERN	ISO7185_$$_DOASSIGN$TEXT
