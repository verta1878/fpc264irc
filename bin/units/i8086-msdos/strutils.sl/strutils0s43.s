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
	GLOBAL STRUTILS_$$_INDEXSTR$UNICODESTRING$array_of_UNICODESTRING$$SMALLINT
STRUTILS_$$_INDEXSTR$UNICODESTRING$array_of_UNICODESTRING$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,10
		mov	word [bp-2],-1
		cmp	word [bp+4],-1
		je	..@j1243
		jmp	..@j1245
..@j1245:
		jmp	..@j1244
..@j1243:
		jmp	..@j1239
..@j1244:
		mov	ax,word [bp+4]
		cwd
		mov	word [bp-10],ax
		mov	word [bp-8],dx
		mov	word [bp-6],0
		mov	word [bp-4],0
		mov	ax,word [bp-8]
		cmp	ax,word [bp-4]
		jl	..@j1249
		jg	..@j1251
		mov	ax,word [bp-10]
		cmp	ax,word [bp-6]
		jb	..@j1249
..@j1251:
		sub	word [bp-6],1
		sbb	word [bp-4],0
	ALIGN 2
..@j1250:
		add	word [bp-6],1
		adc	word [bp-4],0
		mov	bx,word [bp+6]
		mov	ax,word [bp-6]
		mov	si,ax
		shl	si,1
		push	word [bx+si]
		push	word [bp+8]
		call	fpc_unicodestr_compare_equal
		cwd
		mov	cx,ax
		mov	ax,dx
		cmp	ax,0
		jne	..@j1253
		cmp	cx,0
		jne	..@j1253
		jmp	..@j1252
..@j1252:
		mov	ax,word [bp-6]
		mov	word [bp-2],ax
		jmp	..@j1239
..@j1253:
		mov	ax,word [bp-8]
		cmp	ax,word [bp-4]
		jg	..@j1250
		jl	..@j1260
		mov	ax,word [bp-10]
		cmp	ax,word [bp-6]
		ja	..@j1250
..@j1260:
..@j1249:
..@j1239:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	fpc_unicodestr_compare_equal
