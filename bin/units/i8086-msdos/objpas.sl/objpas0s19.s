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
	GLOBAL OBJPAS_$$_SETRESOURCESTRINGS$TRESOURCEITERATOR$POINTER
OBJPAS_$$_SETRESOURCESTRINGS$TRESOURCEITERATOR$POINTER:
		push	bp
		mov	bp,sp
		sub	sp,22
		mov	word [bp-6],0
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
		jne	..@j162
		mov	ax,word [FPC_RESOURCESTRINGTABLES]
		dec	ax
		mov	word [bp-22],ax
		mov	word [bp-4],0
		mov	ax,word [bp-22]
		cmp	ax,word [bp-4]
		jl	..@j167
		dec	word [bp-4]
	ALIGN 2
..@j168:
		inc	word [bp-4]
		mov	bx,word [bp-4]
		mov	cl,2
		shl	bx,cl
		mov	ax,word [FPC_RESOURCESTRINGTABLES+bx+2]
		mov	word [bp-2],ax
		add	word [bp-2],10
		jmp	..@j172
	ALIGN 2
..@j171:
		lea	ax,[bp-6]
		push	ax
		mov	bx,word [bp-2]
		push	word [bx]
		mov	bx,word [bp-2]
		push	word [bx+4]
		mov	bx,word [bp-2]
		push	word [bx+8]
		push	word [bx+6]
		push	word [bp+4]
		mov	ax,word [bp+6]
		call	ax
		cmp	word [bp-6],0
		jne	..@j184
		jmp	..@j185
..@j184:
		mov	bx,word [bp-2]
		lea	ax,[bx+2]
		push	ax
		push	word [bp-6]
		call	fpc_ansistr_assign
..@j185:
		add	word [bp-2],10
..@j172:
		mov	bx,word [bp-4]
		mov	cl,2
		shl	bx,cl
		mov	ax,word [FPC_RESOURCESTRINGTABLES+bx+4]
		cmp	ax,word [bp-2]
		ja	..@j171
		jmp	..@j173
..@j173:
		mov	ax,word [bp-22]
		cmp	ax,word [bp-4]
		jg	..@j168
..@j167:
		call	OBJPAS_$$_UPDATERESOURCESTRINGREFS
..@j162:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-6]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j163
		call	FPC_RERAISE
..@j163:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	OBJPAS_$$_UPDATERESOURCESTRINGREFS
EXTERN	fpc_ansistr_assign
EXTERN	FPC_RESOURCESTRINGTABLES
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
