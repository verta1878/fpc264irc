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
	GLOBAL SYSUTILS_$$_CODEPAGENAMETOCODEPAGE$ANSISTRING$$WORD
SYSUTILS_$$_CODEPAGENAMETOCODEPAGE$ANSISTRING$$WORD:
		push	bp
		mov	bp,sp
		sub	sp,34
		mov	word [bp-4],0
		mov	word [bp-34],0
		mov	ax,1
		push	ax
		lea	ax,[bp-30]
		push	ax
		lea	ax,[bp-24]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j182
		lea	ax,[bp-4]
		push	ax
		push	word [bp+4]
		call	SYSUTILS_$$_LOWERCASE$ANSISTRING$$ANSISTRING
		mov	ax,word [bp-4]
		test	ax,ax
		jne	..@j192
		mov	ax,word FPC_EMPTYCHAR
..@j192:
		push	ax
		call	SYSUTILS_$$_HASHNAME$PCHAR$$LONGWORD
		mov	word [bp-8],ax
		mov	word [bp-6],dx
		mov	word [bp-14],0
		mov	word [bp-16],415
		jmp	..@j198
	ALIGN 2
..@j197:
		mov	dx,word [bp-14]
		mov	ax,word [bp-16]
		add	ax,dx
		shr	ax,1
		mov	word [bp-18],ax
		mov	bx,word [bp-18]
		mov	cl,3
		shl	bx,cl
		mov	ax,word [TC_$SYSUTILS_$$_CODEPAGEHASHES+bx]
		mov	word [bp-12],ax
		mov	ax,word [TC_$SYSUTILS_$$_CODEPAGEHASHES+bx+2]
		mov	word [bp-10],ax
		mov	dx,word [bp-12]
		mov	ax,word [bp-10]
		cmp	ax,word [bp-6]
		jne	..@j205
		cmp	dx,word [bp-8]
		jne	..@j205
		jmp	..@j204
		jmp	..@j205
..@j204:
		jmp	..@j207
	ALIGN 2
..@j206:
		dec	word [bp-18]
..@j207:
		cmp	word [bp-18],0
		jg	..@j209
		jmp	..@j208
..@j209:
		mov	bx,word [bp-18]
		dec	bx
		mov	cl,3
		shl	bx,cl
		mov	dx,word [TC_$SYSUTILS_$$_CODEPAGEHASHES+bx]
		mov	ax,word [TC_$SYSUTILS_$$_CODEPAGEHASHES+bx+2]
		cmp	ax,word [bp-10]
		jne	..@j208
		cmp	dx,word [bp-12]
		jne	..@j208
		jmp	..@j206
		jmp	..@j208
..@j208:
		jmp	..@j211
	ALIGN 2
..@j210:
		push	word [bp-4]
		lea	ax,[bp-34]
		push	ax
		mov	bx,word [bp-18]
		mov	cl,3
		shl	bx,cl
		push	word [TC_$SYSUTILS_$$_CODEPAGEHASHES+bx+6]
		mov	ax,0
		push	ax
		call	fpc_pchar_to_ansistr
		push	word [bp-34]
		call	fpc_ansistr_compare_equal
		cwd
		mov	cx,ax
		mov	ax,dx
		cmp	ax,0
		jne	..@j214
		cmp	cx,0
		jne	..@j214
		jmp	..@j213
..@j213:
		mov	bx,word [bp-18]
		mov	cl,3
		shl	bx,cl
		mov	ax,word [TC_$SYSUTILS_$$_CODEPAGEHASHES+bx+4]
		mov	word [bp-2],ax
		jmp	..@j182
..@j214:
		inc	word [bp-18]
..@j211:
		cmp	word [bp-18],415
		jle	..@j227
		jmp	..@j212
..@j227:
		mov	bx,word [bp-18]
		mov	cl,3
		shl	bx,cl
		mov	dx,word [TC_$SYSUTILS_$$_CODEPAGEHASHES+bx]
		mov	ax,word [TC_$SYSUTILS_$$_CODEPAGEHASHES+bx+2]
		cmp	ax,word [bp-10]
		jne	..@j212
		cmp	dx,word [bp-12]
		jne	..@j212
		jmp	..@j210
		jmp	..@j212
..@j212:
		jmp	..@j199
..@j205:
		mov	dx,word [bp-8]
		mov	ax,word [bp-6]
		cmp	ax,word [bp-10]
		ja	..@j228
		jb	..@j229
		cmp	dx,word [bp-12]
		ja	..@j228
		jmp	..@j229
		jmp	..@j229
..@j228:
		mov	ax,word [bp-18]
		inc	ax
		mov	word [bp-14],ax
		jmp	..@j232
..@j229:
		mov	ax,word [bp-18]
		dec	ax
		mov	word [bp-16],ax
..@j232:
..@j198:
		mov	ax,word [bp-14]
		cmp	ax,word [bp-16]
		jle	..@j197
		jmp	..@j199
..@j199:
		mov	word [bp-2],-1
..@j182:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-34]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-4]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j183
		call	FPC_RERAISE
..@j183:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	fpc_ansistr_compare_equal
EXTERN	fpc_pchar_to_ansistr
EXTERN	TC_$SYSUTILS_$$_CODEPAGEHASHES
EXTERN	SYSUTILS_$$_HASHNAME$PCHAR$$LONGWORD
EXTERN	FPC_EMPTYCHAR
EXTERN	SYSUTILS_$$_LOWERCASE$ANSISTRING$$ANSISTRING
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
