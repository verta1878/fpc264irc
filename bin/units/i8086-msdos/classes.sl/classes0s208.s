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
	GLOBAL CLASSES$_$TCOLLECTION_$__$$_EXCHANGE$SMALLINT$SMALLINT
CLASSES$_$TCOLLECTION_$__$$_EXCHANGE$SMALLINT$SMALLINT:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+8]
		push	word [bx+8]
		push	word [bp+6]
		push	word [bp+4]
		call	CLASSES$_$TFPLIST_$__$$_EXCHANGE$SMALLINT$SMALLINT
		mov	bx,word [bp+8]
		cmp	word [bx+10],0
		je	..@j4606
		jmp	..@j4607
..@j4606:
		push	word [bp+8]
		push	word [bp+8]
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		call	CLASSES$_$TPERSISTENT_$__$$_FPONOTIFYOBSERVERS$TOBJECT$TFPOBSERVEDOPERATION$POINTER
..@j4607:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	CLASSES$_$TPERSISTENT_$__$$_FPONOTIFYOBSERVERS$TOBJECT$TFPOBSERVEDOPERATION$POINTER
EXTERN	CLASSES$_$TFPLIST_$__$$_EXCHANGE$SMALLINT$SMALLINT
