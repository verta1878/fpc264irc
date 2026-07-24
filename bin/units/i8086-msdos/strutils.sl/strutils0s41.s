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
	GLOBAL STRUTILS_$$_ANSIINDEXSTR$ANSISTRING$array_of_ANSISTRING$$SMALLINT
STRUTILS_$$_ANSIINDEXSTR$ANSISTRING$array_of_ANSISTRING$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,10
		mov	word [bp-2],-1
		cmp	word [bp+4],-1
		je	..@j1210
		jmp	..@j1212
..@j1212:
		jmp	..@j1211
..@j1210:
		jmp	..@j1206
..@j1211:
		mov	ax,word [bp+4]
		cwd
		mov	word [bp-10],ax
		mov	word [bp-8],dx
		mov	word [bp-6],0
		mov	word [bp-4],0
		mov	ax,word [bp-8]
		cmp	ax,word [bp-4]
		jl	..@j1216
		jg	..@j1218
		mov	ax,word [bp-10]
		cmp	ax,word [bp-6]
		jb	..@j1216
..@j1218:
		sub	word [bp-6],1
		sbb	word [bp-4],0
	ALIGN 2
..@j1217:
		add	word [bp-6],1
		adc	word [bp-4],0
		mov	bx,word [bp+6]
		mov	ax,word [bp-6]
		mov	si,ax
		shl	si,1
		push	word [bx+si]
		push	word [bp+8]
		call	fpc_ansistr_compare_equal
		cwd
		mov	cx,ax
		mov	ax,dx
		cmp	ax,0
		jne	..@j1220
		cmp	cx,0
		jne	..@j1220
		jmp	..@j1219
..@j1219:
		mov	ax,word [bp-6]
		mov	word [bp-2],ax
		jmp	..@j1206
..@j1220:
		mov	ax,word [bp-8]
		cmp	ax,word [bp-4]
		jg	..@j1217
		jl	..@j1227
		mov	ax,word [bp-10]
		cmp	ax,word [bp-6]
		ja	..@j1217
..@j1227:
..@j1216:
..@j1206:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	fpc_ansistr_compare_equal
