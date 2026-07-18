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
	GLOBAL CLASSES$_$TCOMPONENT_$__$$_FREENOTIFICATION$TCOMPONENT
CLASSES$_$TCOMPONENT_$__$$_FREENOTIFICATION$TCOMPONENT:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+6]
		cmp	word [bx+6],0
		jne	..@j12729
		jmp	..@j12728
..@j12729:
		mov	bx,word [bp+6]
		mov	ax,word [bx+6]
		cmp	ax,word [bp+4]
		je	..@j12727
		jmp	..@j12728
..@j12727:
		jmp	..@j12725
..@j12728:
		mov	bx,word [bp+6]
		cmp	word [bx+14],0
		je	..@j12730
		jmp	..@j12731
..@j12730:
		mov	ax,word VMT_$CLASSES_$$_TFPLIST
		push	ax
		mov	ax,1
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
		mov	bx,word [bp+6]
		mov	word [bx+14],ax
..@j12731:
		mov	bx,word [bp+6]
		push	word [bx+14]
		push	word [bp+4]
		call	CLASSES$_$TFPLIST_$__$$_INDEXOF$POINTER$$SMALLINT
		cmp	ax,-1
		je	..@j12738
		jmp	..@j12739
..@j12738:
		mov	bx,word [bp+6]
		push	word [bx+14]
		push	word [bp+4]
		call	CLASSES$_$TFPLIST_$__$$_ADD$POINTER$$SMALLINT
		push	word [bp+4]
		push	word [bp+6]
		call	CLASSES$_$TCOMPONENT_$__$$_FREENOTIFICATION$TCOMPONENT
..@j12739:
..@j12725:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	CLASSES$_$TFPLIST_$__$$_ADD$POINTER$$SMALLINT
EXTERN	CLASSES$_$TFPLIST_$__$$_INDEXOF$POINTER$$SMALLINT
EXTERN	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
EXTERN	VMT_$CLASSES_$$_TFPLIST
