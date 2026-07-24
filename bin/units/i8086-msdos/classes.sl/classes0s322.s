BITS 16
CPU 8086
SECTION .text use16 class=code
SECTION .rodata class=data
SECTION .data class=data
SECTION .fpc class=data
SECTION .bss class=bss
SECTION stack stack class=stack align=16
SECTION heap class=heap align=16
GROUP dgroup rodata data fpc bss stack heap
SECTION .text

SECTION .text
	ALIGN 2
	GLOBAL CLASSES$_$TSTRINGS_$__$$_EXTRACTNAME$ANSISTRING$$ANSISTRING
CLASSES$_$TSTRINGS_$__$$_EXTRACTNAME$ANSISTRING$$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,4
		push	word [bp+8]
		call	CLASSES$_$TSTRINGS_$__$$_CHECKSPECIALCHARS
		mov	bx,word [bp+8]
		mov	al,byte [bx+9]
		mov	ah,0
		push	ax
		push	word [bp+4]
		call	SYSTEM_$$_POS$CHAR$RAWBYTESTRING$$SMALLINT
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-4],cx
		mov	word [bp-2],ax
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		cmp	dx,0
		jne	..@j7202
		cmp	ax,0
		jne	..@j7202
		jmp	..@j7203
..@j7202:
		mov	ax,word [bp+6]
		push	ax
		push	word [bp+4]
		mov	ax,1
		push	ax
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		sub	ax,1
		sbb	dx,0
		push	ax
		call	fpc_ansistr_copy
		jmp	..@j7212
..@j7203:
		mov	ax,word [bp+6]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_assign
..@j7212:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	fpc_ansistr_assign
EXTERN	fpc_ansistr_copy
EXTERN	SYSTEM_$$_POS$CHAR$RAWBYTESTRING$$SMALLINT
EXTERN	CLASSES$_$TSTRINGS_$__$$_CHECKSPECIALCHARS
