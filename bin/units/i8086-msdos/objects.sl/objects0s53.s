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
	GLOBAL OBJECTS$_$TBUFSTREAM_$__$$_DONE
OBJECTS$_$TBUFSTREAM_$__$$_DONE:
		push	bp
		mov	bp,sp
		mov	ax,word [bp+6]
		push	ax
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+16]
		call	ax
		mov	ax,word [bp+6]
		push	ax
		mov	ax,0
		push	ax
		call	OBJECTS$_$TDOSSTREAM_$__$$_DONE
		mov	bx,word [bp+6]
		cmp	word [bx+854],0
		jne	..@j990
		jmp	..@j991
..@j990:
		mov	bx,word [bp+6]
		push	word [bx+854]
		mov	bx,word [bp+6]
		push	word [bx+842]
		call	SYSTEM_$$_FREEMEM$POINTER$WORD
..@j991:
		push	word [bp+6]
		push	word [bp+4]
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		call	fpc_help_destructor
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	fpc_help_destructor
EXTERN	SYSTEM_$$_FREEMEM$POINTER$WORD
EXTERN	OBJECTS$_$TDOSSTREAM_$__$$_DONE
