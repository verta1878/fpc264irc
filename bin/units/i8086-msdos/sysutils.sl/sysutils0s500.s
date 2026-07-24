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
	GLOBAL SYSUTILS_$$_INITANSI
SYSUTILS_$$_INITANSI:
		push	bp
		mov	bp,sp
		sub	sp,44
		mov	word [bp-44],0
		dec	word [bp-44]
	ALIGN 2
..@j15847:
		inc	word [bp-44]
		mov	bx,word [bp-44]
		mov	al,byte [bp-44]
		mov	byte [U_$SYSUTILS_$$_UPPERCASETABLE+bx],al
		cmp	word [bp-44],96
		jl	..@j15847
		mov	word [bp-44],97
		dec	word [bp-44]
	ALIGN 2
..@j15852:
		inc	word [bp-44]
		mov	ax,word [bp-44]
		sub	ax,32
		mov	bx,word [bp-44]
		mov	byte [U_$SYSUTILS_$$_UPPERCASETABLE+bx],al
		cmp	word [bp-44],122
		jl	..@j15852
		mov	word [bp-44],123
		dec	word [bp-44]
	ALIGN 2
..@j15857:
		inc	word [bp-44]
		mov	bx,word [bp-44]
		mov	al,byte [bp-44]
		mov	byte [U_$SYSUTILS_$$_UPPERCASETABLE+bx],al
		cmp	word [bp-44],127
		jl	..@j15857
		mov	word [bp-44],0
		dec	word [bp-44]
	ALIGN 2
..@j15862:
		inc	word [bp-44]
		mov	bx,word [bp-44]
		mov	al,byte [bp-44]
		mov	byte [U_$SYSUTILS_$$_LOWERCASETABLE+bx],al
		cmp	word [bp-44],64
		jl	..@j15862
		mov	word [bp-44],65
		dec	word [bp-44]
	ALIGN 2
..@j15867:
		inc	word [bp-44]
		mov	ax,word [bp-44]
		add	ax,32
		mov	bx,word [bp-44]
		mov	byte [U_$SYSUTILS_$$_LOWERCASETABLE+bx],al
		cmp	word [bp-44],90
		jl	..@j15867
		mov	word [bp-44],91
		dec	word [bp-44]
	ALIGN 2
..@j15872:
		inc	word [bp-44]
		mov	bx,word [bp-44]
		mov	al,byte [bp-44]
		mov	byte [U_$SYSUTILS_$$_LOWERCASETABLE+bx],al
		cmp	word [bp-44],255
		jl	..@j15872
		mov	ax,1
		push	ax
		mov	ax,-1
		push	ax
		mov	ax,-1
		push	ax
		lea	ax,[bp-41]
		push	ax
		call	SYSUTILS_$$_GETEXTENDEDCOUNTRYINFO$SMALLINT$WORD$WORD$TCOUNTRYINFO
		cmp	word [bp-36],850
		je	..@j15883
		jmp	..@j15884
..@j15883:
		mov	ax,word TC_$SYSUTILS_$$_CP850UCT
		push	ax
		mov	ax,word U_$SYSUTILS_$$_UPPERCASETABLE+128
		push	ax
		mov	ax,128
		push	ax
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
		mov	ax,word TC_$SYSUTILS_$$_CP850LCT
		push	ax
		mov	ax,word U_$SYSUTILS_$$_LOWERCASETABLE+128
		push	ax
		mov	ax,128
		push	ax
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
		jmp	..@j15897
..@j15884:
		mov	ax,2
		push	ax
		mov	ax,-1
		push	ax
		mov	ax,-1
		push	ax
		lea	ax,[bp-41]
		push	ax
		call	SYSUTILS_$$_GETEXTENDEDCOUNTRYINFO$SMALLINT$WORD$WORD$TCOUNTRYINFO
		mov	word [bp-44],128
		dec	word [bp-44]
	ALIGN 2
..@j15908:
		inc	word [bp-44]
		mov	bx,word [bp-44]
		mov	al,byte [U_$SYSUTILS_$$_UPPERCASETABLE+bx]
		cmp	al,byte [bp-44]
		jne	..@j15909
		jmp	..@j15910
..@j15909:
		mov	bx,word [bp-44]
		mov	bl,byte [U_$SYSUTILS_$$_UPPERCASETABLE+bx]
		mov	bh,0
		mov	al,byte [bp-44]
		mov	byte [U_$SYSUTILS_$$_LOWERCASETABLE+bx],al
..@j15910:
		cmp	word [bp-44],255
		jl	..@j15908
..@j15897:
		mov	sp,bp
		pop	bp
		ret
EXTERN	TC_$SYSUTILS_$$_CP850LCT
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
EXTERN	TC_$SYSUTILS_$$_CP850UCT
EXTERN	SYSUTILS_$$_GETEXTENDEDCOUNTRYINFO$SMALLINT$WORD$WORD$TCOUNTRYINFO
EXTERN	U_$SYSUTILS_$$_LOWERCASETABLE
EXTERN	U_$SYSUTILS_$$_UPPERCASETABLE
