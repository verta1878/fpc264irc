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
	GLOBAL SYSTEM$_$TOBJECT_$__$$_GETINTERFACEENTRYBYSTR$SHORTSTRING$$PINTERFACEENTRY
SYSTEM$_$TOBJECT_$__$$_GETINTERFACEENTRYBYSTR$SHORTSTRING$$PINTERFACEENTRY:
		push	bp
		mov	bp,sp
		sub	sp,14
		mov	ax,word [bp+6]
		mov	word [bp-10],ax
		jmp	..@j15209
	ALIGN 2
..@j15208:
		mov	bx,word [bp-10]
		mov	ax,word [bx+20]
		mov	word [bp-8],ax
		cmp	word [bp-8],0
		jne	..@j15213
		jmp	..@j15214
..@j15213:
		mov	bx,word [bp-8]
		mov	ax,word [bx]
		mov	dx,0
		sub	ax,1
		sbb	dx,0
		mov	word [bp-14],ax
		mov	word [bp-12],dx
		mov	word [bp-6],0
		mov	word [bp-4],0
		mov	ax,word [bp-12]
		cmp	ax,word [bp-4]
		jl	..@j15218
		jg	..@j15220
		mov	ax,word [bp-14]
		cmp	ax,word [bp-6]
		jb	..@j15218
..@j15220:
		sub	word [bp-6],1
		sbb	word [bp-4],0
	ALIGN 2
..@j15219:
		add	word [bp-6],1
		adc	word [bp-4],0
		mov	bx,word [bp-8]
		mov	ax,word [bp-6]
		mov	si,ax
		mov	ax,12
		mul	si
		mov	si,ax
		lea	ax,[bx+si+2]
		mov	word [bp-2],ax
		mov	bx,word [bp-2]
		cmp	word [bx+6],0
		jne	..@j15225
		jmp	..@j15224
..@j15225:
		mov	bx,word [bp-2]
		mov	ax,word [bx+6]
		push	ax
		mov	ax,word [bp+4]
		push	ax
		call	fpc_shortstr_compare_equal
		cmp	dx,0
		jne	..@j15224
		cmp	ax,0
		jne	..@j15224
		jmp	..@j15223
..@j15223:
		jmp	..@j15204
..@j15224:
		mov	ax,word [bp-12]
		cmp	ax,word [bp-4]
		jg	..@j15219
		jl	..@j15230
		mov	ax,word [bp-14]
		cmp	ax,word [bp-6]
		ja	..@j15219
..@j15230:
..@j15218:
..@j15214:
		mov	bx,word [bp-10]
		mov	ax,word [bx+4]
		mov	word [bp-10],ax
..@j15209:
		cmp	word [bp-10],0
		jne	..@j15233
		jmp	..@j15210
..@j15233:
		mov	bx,word [bp-10]
		mov	ax,word FPC_EMPTYINTF
		cmp	ax,word [bx+20]
		jne	..@j15208
		jmp	..@j15210
..@j15210:
		mov	word [bp-2],0
..@j15204:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_EMPTYINTF
EXTERN	fpc_shortstr_compare_equal
