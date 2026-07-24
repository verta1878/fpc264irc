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
	GLOBAL TYPINFO_$$_GETPROPINFO$PTYPEINFO$ANSISTRING$TTYPEKINDS$$PPROPINFO
TYPINFO_$$_GETPROPINFO$PTYPEINFO$ANSISTRING$TTYPEKINDS$$PPROPINFO:
		push	bp
		mov	bp,sp
		sub	sp,6
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		mov	word [bp-6],ax
		mov	ax,word [bx+2]
		mov	word [bp-4],ax
		push	word [bp+8]
		push	word [bp+6]
		call	TYPINFO_$$_GETPROPINFO$PTYPEINFO$ANSISTRING$$PPROPINFO
		mov	word [bp-2],ax
		lea	ax,[bp-6]
		push	ax
		mov	ax,word _$TYPINFO$_Ld7
		push	ax
		mov	ax,4
		push	ax
		call	fpc_varset_comp_sets
		test	al,al
		je	..@j385
		jmp	..@j386
..@j385:
		cmp	word [bp-2],0
		jne	..@j393
		jmp	..@j394
..@j393:
		mov	bx,word [bp-2]
		mov	bx,word [bx]
		mov	al,byte [bx]
		mov	ah,0
		mov	si,ax
		mov	cl,4
		shr	si,cl
		shl	si,1
		mov	cx,ax
		and	cl,15
		mov	ax,1
		shl	ax,cl
		test	word [bp+si-6],ax
		je	..@j395
		jmp	..@j396
..@j395:
		mov	word [bp-2],0
..@j396:
..@j394:
..@j386:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	fpc_varset_comp_sets
EXTERN	_$TYPINFO$_Ld7
EXTERN	TYPINFO_$$_GETPROPINFO$PTYPEINFO$ANSISTRING$$PPROPINFO
