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
	GLOBAL CLASSES$_$TBUILDLISTVISITOR_$__$$_DESTROY
CLASSES$_$TBUILDLISTVISITOR_$__$$_DESTROY:
		push	bp
		mov	bp,sp
		sub	sp,4
		cmp	word [bp+4],0
		jg	..@j11885
		jmp	..@j11886
..@j11885:
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+36]
		call	ax
..@j11886:
		mov	bx,word [bp+6]
		cmp	word [bx+2],0
		jne	..@j11889
		jmp	..@j11890
..@j11889:
		mov	bx,word [bp+6]
		mov	bx,word [bx+2]
		mov	ax,word [bx+4]
		dec	ax
		mov	word [bp-4],ax
		mov	word [bp-2],0
		mov	ax,word [bp-4]
		cmp	ax,word [bp-2]
		jl	..@j11894
		dec	word [bp-2]
	ALIGN 2
..@j11895:
		inc	word [bp-2]
		push	word [U_$CLASSES_$$_NEEDRESOLVING]
		mov	bx,word [bp+6]
		push	word [bx+2]
		push	word [bp-2]
		call	CLASSES$_$TFPLIST_$__$$_GET$SMALLINT$$POINTER
		push	ax
		mov	ax,1
		push	ax
		call	CLASSES$_$TLINKEDLIST_$__$$_REMOVEITEM$TLINKEDLISTITEM$BOOLEAN
		mov	ax,word [bp-4]
		cmp	ax,word [bp-2]
		jg	..@j11895
..@j11894:
..@j11890:
		mov	bx,word [bp+6]
		lea	ax,[bx+2]
		push	ax
		call	SYSUTILS_$$_FREEANDNIL$formal
		push	word [bp+6]
		mov	ax,0
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_DESTROY
		cmp	word [bp+6],0
		jne	..@j11914
		jmp	..@j11913
..@j11914:
		cmp	word [bp+4],0
		jne	..@j11912
		jmp	..@j11913
..@j11912:
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+28]
		call	ax
..@j11913:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM$_$TOBJECT_$__$$_DESTROY
EXTERN	SYSUTILS_$$_FREEANDNIL$formal
EXTERN	CLASSES$_$TLINKEDLIST_$__$$_REMOVEITEM$TLINKEDLISTITEM$BOOLEAN
EXTERN	CLASSES$_$TFPLIST_$__$$_GET$SMALLINT$$POINTER
EXTERN	U_$CLASSES_$$_NEEDRESOLVING
