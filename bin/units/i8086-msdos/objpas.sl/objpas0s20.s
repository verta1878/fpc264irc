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
	GLOBAL OBJPAS_$$_SETUNITRESOURCESTRINGS$SHORTSTRING$TRESOURCEITERATOR$POINTER
OBJPAS_$$_SETUNITRESOURCESTRINGS$SHORTSTRING$TRESOURCEITERATOR$POINTER:
		push	bp
		mov	bp,sp
		sub	sp,280
		mov	word [bp-6],0
		mov	word [bp-8],0
		mov	ax,1
		push	ax
		lea	ax,[bp-20]
		push	ax
		lea	ax,[bp-14]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j196
		lea	ax,[bp-8]
		push	ax
		lea	ax,[bp-278]
		push	ax
		mov	ax,word [bp+8]
		push	ax
		call	SYSTEM_$$_UPCASE$SHORTSTRING$$SHORTSTRING
		lea	ax,[bp-278]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_shortstr_to_ansistr
		mov	ax,word [FPC_RESOURCESTRINGTABLES]
		dec	ax
		mov	word [bp-280],ax
		mov	word [bp-4],0
		mov	ax,word [bp-280]
		cmp	ax,word [bp-4]
		jl	..@j211
		dec	word [bp-4]
	ALIGN 2
..@j212:
		inc	word [bp-4]
		mov	bx,word [bp-4]
		mov	cl,2
		shl	bx,cl
		mov	ax,word [FPC_RESOURCESTRINGTABLES+bx+2]
		mov	word [bp-2],ax
		mov	bx,word [bp-2]
		push	word [bx]
		push	word [bp-8]
		call	fpc_ansistr_compare_equal
		cwd
		mov	cx,ax
		mov	ax,dx
		cmp	ax,0
		jne	..@j215
		cmp	cx,0
		jne	..@j215
		jmp	..@j216
..@j215:
		jmp	..@j210
..@j216:
		add	word [bp-2],10
		jmp	..@j222
	ALIGN 2
..@j221:
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
		jne	..@j234
		jmp	..@j235
..@j234:
		mov	bx,word [bp-2]
		lea	ax,[bx+2]
		push	ax
		push	word [bp-6]
		call	fpc_ansistr_assign
..@j235:
		add	word [bp-2],10
..@j222:
		mov	bx,word [bp-4]
		mov	cl,2
		shl	bx,cl
		mov	ax,word [FPC_RESOURCESTRINGTABLES+bx+4]
		cmp	ax,word [bp-2]
		ja	..@j221
		jmp	..@j223
..@j223:
..@j210:
		mov	ax,word [bp-280]
		cmp	ax,word [bp-4]
		jg	..@j212
..@j211:
		call	OBJPAS_$$_UPDATERESOURCESTRINGREFS
..@j196:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-6]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-8]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j197
		call	FPC_RERAISE
..@j197:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	OBJPAS_$$_UPDATERESOURCESTRINGREFS
EXTERN	fpc_ansistr_assign
EXTERN	fpc_ansistr_compare_equal
EXTERN	FPC_RESOURCESTRINGTABLES
EXTERN	fpc_shortstr_to_ansistr
EXTERN	SYSTEM_$$_UPCASE$SHORTSTRING$$SHORTSTRING
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
