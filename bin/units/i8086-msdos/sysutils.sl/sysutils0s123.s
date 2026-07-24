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
	GLOBAL SYSUTILS_$$_ANSIQUOTEDSTR$ANSISTRING$CHAR$$ANSISTRING
SYSUTILS_$$_ANSIQUOTEDSTR$ANSISTRING$CHAR$$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,32
		mov	word [bp-32],0
		mov	word [bp-30],0
		mov	word [bp-22],0
		mov	ax,1
		push	ax
		lea	ax,[bp-18]
		push	ax
		lea	ax,[bp-12]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j3351
		mov	ax,word [bp+8]
		push	ax
		lea	ax,[bp-22]
		push	ax
		mov	al,byte [bp+4]
		mov	ah,0
		push	ax
		mov	ax,0
		push	ax
		call	fpc_char_to_ansistr
		push	word [bp-22]
		call	fpc_ansistr_assign
		mov	bx,word [bp+6]
		test	bx,bx
		je	..@j3365
		mov	bx,word [bx-2]
..@j3365:
		mov	word [bp-6],bx
		mov	word [bp-2],0
		mov	word [bp-4],0
		jmp	..@j3371
	ALIGN 2
..@j3370:
		mov	ax,word [bp-2]
		inc	ax
		mov	word [bp-2],ax
		mov	bx,word [bp+6]
		mov	si,word [bp-2]
		mov	al,byte [bx+si-1]
		cmp	al,byte [bp+4]
		je	..@j3375
		jmp	..@j3376
..@j3375:
		mov	ax,word [bp+8]
		push	ax
		mov	bx,word [bp+8]
		mov	ax,word [bx]
		mov	word [bp-28],ax
		lea	ax,[bp-30]
		push	ax
		push	word [bp+6]
		mov	ax,word [bp-4]
		inc	ax
		push	ax
		mov	ax,word [bp-2]
		mov	dx,word [bp-4]
		sub	ax,dx
		push	ax
		call	fpc_ansistr_copy
		mov	ax,word [bp-30]
		mov	word [bp-26],ax
		lea	ax,[bp-32]
		push	ax
		mov	al,byte [bp+4]
		mov	ah,0
		push	ax
		mov	ax,0
		push	ax
		call	fpc_char_to_ansistr
		mov	ax,word [bp-32]
		mov	word [bp-24],ax
		lea	ax,[bp-28]
		push	ax
		mov	ax,2
		push	ax
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat_multi
		mov	ax,word [bp-2]
		mov	word [bp-4],ax
..@j3376:
..@j3371:
		mov	ax,word [bp-2]
		cmp	ax,word [bp-6]
		jl	..@j3370
		jmp	..@j3372
..@j3372:
		mov	ax,word [bp-2]
		cmp	ax,word [bp-4]
		jne	..@j3401
		jmp	..@j3402
..@j3401:
		mov	ax,word [bp+8]
		push	ax
		mov	bx,word [bp+8]
		push	word [bx]
		lea	ax,[bp-22]
		push	ax
		push	word [bp+6]
		mov	ax,word [bp-4]
		inc	ax
		push	ax
		mov	ax,word [bp-2]
		mov	dx,word [bp-4]
		sub	ax,dx
		push	ax
		call	fpc_ansistr_copy
		push	word [bp-22]
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat
..@j3402:
		mov	ax,word [bp+8]
		push	ax
		mov	bx,word [bp+8]
		push	word [bx]
		lea	ax,[bp-22]
		push	ax
		mov	al,byte [bp+4]
		mov	ah,0
		push	ax
		mov	ax,0
		push	ax
		call	fpc_char_to_ansistr
		push	word [bp-22]
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat
..@j3351:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-32]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-30]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-22]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j3352
		call	FPC_RERAISE
..@j3352:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	fpc_ansistr_concat
EXTERN	fpc_ansistr_concat_multi
EXTERN	fpc_ansistr_copy
EXTERN	fpc_ansistr_assign
EXTERN	fpc_char_to_ansistr
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
