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
	GLOBAL SYSUTILS_$$_COMPARETEXT$ANSISTRING$ANSISTRING$$SMALLINT
SYSUTILS_$$_COMPARETEXT$ANSISTRING$ANSISTRING$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,16
		mov	bx,word [bp+6]
		test	bx,bx
		je	..@j2889
		mov	bx,word [bx-2]
..@j2889:
		mov	word [bp-8],bx
		mov	bx,word [bp+4]
		test	bx,bx
		je	..@j2892
		mov	bx,word [bx-2]
..@j2892:
		mov	word [bp-10],bx
		mov	ax,word [bp-8]
		cmp	ax,word [bp-10]
		jg	..@j2893
		jmp	..@j2894
..@j2893:
		mov	ax,word [bp-10]
		mov	word [bp-6],ax
		jmp	..@j2897
..@j2894:
		mov	ax,word [bp-8]
		mov	word [bp-6],ax
..@j2897:
		mov	word [bp-4],0
		cmp	word [bp-6],0
		jg	..@j2902
		jmp	..@j2903
..@j2902:
		mov	ax,word [bp+6]
		mov	word [bp-14],ax
		mov	ax,word [bp+4]
		mov	word [bp-16],ax
		jmp	..@j2909
	ALIGN 2
..@j2908:
		mov	bx,word [bp-14]
		mov	al,byte [bx]
		mov	byte [bp-11],al
		mov	bx,word [bp-16]
		mov	al,byte [bx]
		mov	byte [bp-12],al
		mov	al,byte [bp-11]
		cmp	al,byte [bp-12]
		jne	..@j2915
		jmp	..@j2916
..@j2915:
		mov	al,byte [bp-11]
		mov	ah,0
		sub	ax,97
		cmp	ax,26
		jb	..@j2919
..@j2919:
		jc	..@j2917
		jmp	..@j2918
..@j2917:
		sub	byte [bp-11],32
..@j2918:
		mov	al,byte [bp-12]
		mov	ah,0
		sub	ax,97
		cmp	ax,26
		jb	..@j2922
..@j2922:
		jc	..@j2920
		jmp	..@j2921
..@j2920:
		sub	byte [bp-12],32
..@j2921:
		mov	al,byte [bp-11]
		cmp	al,byte [bp-12]
		jne	..@j2923
		jmp	..@j2924
..@j2923:
		jmp	..@j2910
..@j2924:
..@j2916:
		inc	word [bp-14]
		inc	word [bp-16]
		inc	word [bp-4]
..@j2909:
		mov	ax,word [bp-4]
		cmp	ax,word [bp-6]
		jl	..@j2908
		jmp	..@j2910
..@j2910:
..@j2903:
		mov	ax,word [bp-4]
		cmp	ax,word [bp-6]
		jl	..@j2925
		jmp	..@j2926
..@j2925:
		mov	al,byte [bp-11]
		mov	ah,0
		mov	dl,byte [bp-12]
		mov	dh,0
		sub	ax,dx
		mov	word [bp-2],ax
		jmp	..@j2929
..@j2926:
		mov	ax,word [bp-8]
		mov	dx,word [bp-10]
		sub	ax,dx
		mov	word [bp-2],ax
..@j2929:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
