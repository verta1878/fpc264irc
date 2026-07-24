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
	GLOBAL CLASSES_$$_QUOTESTRING$ANSISTRING$ANSISTRING$$ANSISTRING
CLASSES_$$_QUOTESTRING$ANSISTRING$ANSISTRING$$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,28
		mov	word [bp-20],0
		mov	ax,1
		push	ax
		lea	ax,[bp-16]
		push	ax
		lea	ax,[bp-10]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j6807
		mov	word [bp-4],0
		mov	ax,word [bp+8]
		push	ax
		push	word [bp+6]
		call	fpc_ansistr_assign
		mov	bx,word [bp+6]
		test	bx,bx
		je	..@j6817
		mov	bx,word [bx-2]
..@j6817:
		mov	word [bp-28],bx
		mov	word [bp-2],1
		mov	ax,word [bp-28]
		cmp	ax,word [bp-2]
		jl	..@j6819
		dec	word [bp-2]
	ALIGN 2
..@j6820:
		inc	word [bp-2]
		inc	word [bp-4]
		lea	ax,[bp-20]
		push	ax
		mov	bx,word [bp+6]
		mov	si,word [bp-2]
		mov	al,byte [bx+si-1]
		mov	ah,0
		push	ax
		mov	ax,0
		push	ax
		call	fpc_char_to_ansistr
		push	word [bp-20]
		push	word [bp+4]
		call	fpc_ansistr_compare_equal
		cwd
		mov	cx,ax
		mov	ax,dx
		cmp	ax,0
		jne	..@j6822
		cmp	cx,0
		jne	..@j6822
		jmp	..@j6821
..@j6821:
		push	word [bp+4]
		mov	ax,word [bp+8]
		push	ax
		push	word [bp-4]
		call	SYSTEM_$$_INSERT$RAWBYTESTRING$RAWBYTESTRING$SMALLINT
		inc	word [bp-4]
..@j6822:
		mov	ax,word [bp-28]
		cmp	ax,word [bp-2]
		jg	..@j6820
..@j6819:
		mov	ax,word [bp+8]
		push	ax
		mov	ax,word [bp+4]
		mov	word [bp-26],ax
		mov	bx,word [bp+8]
		mov	ax,word [bx]
		mov	word [bp-24],ax
		mov	ax,word [bp+4]
		mov	word [bp-22],ax
		lea	ax,[bp-26]
		push	ax
		mov	ax,2
		push	ax
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat_multi
..@j6807:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-20]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j6808
		call	FPC_RERAISE
..@j6808:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	fpc_ansistr_concat_multi
EXTERN	SYSTEM_$$_INSERT$RAWBYTESTRING$RAWBYTESTRING$SMALLINT
EXTERN	fpc_ansistr_compare_equal
EXTERN	fpc_char_to_ansistr
EXTERN	fpc_ansistr_assign
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
