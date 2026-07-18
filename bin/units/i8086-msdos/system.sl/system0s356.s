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
	GLOBAL SYSTEM_$$_NEWANSISTRING$SMALLINT$$POINTER
SYSTEM_$$_NEWANSISTRING$SMALLINT$$POINTER:
		push	bp
		mov	bp,sp
		sub	sp,4
		lea	ax,[bp-4]
		push	ax
		mov	ax,word [bp+4]
		add	ax,9
		push	ax
		call	SYSTEM_$$_GETMEM$POINTER$WORD
		cmp	word [bp-4],0
		jne	..@j8572
		jmp	..@j8573
..@j8572:
		mov	bx,word [bp-4]
		mov	word [bx+4],1
		mov	bx,word [bp-4]
		mov	word [bx+6],0
		mov	bx,word [bp-4]
		mov	ax,word [U_$SYSTEM_$$_DEFAULTSYSTEMCODEPAGE]
		mov	word [bx],ax
		mov	bx,word [bp-4]
		mov	word [bx+2],1
		add	word [bp-4],8
		mov	bx,word [bp-4]
		mov	byte [bx],0
..@j8573:
		mov	ax,word [bp-4]
		mov	word [bp-2],ax
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	U_$SYSTEM_$$_DEFAULTSYSTEMCODEPAGE
EXTERN	SYSTEM_$$_GETMEM$POINTER$WORD
