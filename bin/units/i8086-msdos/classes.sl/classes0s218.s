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
	GLOBAL CLASSES$_$TFPLIST_$__$$_SETCAPACITY$SMALLINT
CLASSES$_$TFPLIST_$__$$_SETCAPACITY$SMALLINT:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+6]
		mov	ax,word [bx+4]
		cmp	ax,word [bp+4]
		jg	..@j4760
		jmp	..@j4762
..@j4762:
		cmp	word [bp+4],1024
		jg	..@j4760
		jmp	..@j4761
..@j4760:
		mov	bx,word [bp+6]
		mov	ax,word [bx]
		push	ax
		push	word [RESSTR_$RTLCONSTS_$$_SLISTCAPACITYERROR+2]
		push	word [bp+4]
		call	CLASSES$_$TFPLIST_$__$$_ERROR$ANSISTRING$SMALLINT
..@j4761:
		mov	bx,word [bp+6]
		mov	ax,word [bx+6]
		cmp	ax,word [bp+4]
		je	..@j4769
		jmp	..@j4770
..@j4769:
		jmp	..@j4758
..@j4770:
		mov	bx,word [bp+6]
		lea	ax,[bx+2]
		push	ax
		mov	ax,word [bp+4]
		shl	ax,1
		push	ax
		call	SYSTEM_$$_REALLOCMEM$POINTER$WORD$$POINTER
		mov	bx,word [bp+6]
		mov	ax,word [bp+4]
		mov	word [bx+6],ax
..@j4758:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM_$$_REALLOCMEM$POINTER$WORD$$POINTER
EXTERN	CLASSES$_$TFPLIST_$__$$_ERROR$ANSISTRING$SMALLINT
EXTERN	RESSTR_$RTLCONSTS_$$_SLISTCAPACITYERROR
