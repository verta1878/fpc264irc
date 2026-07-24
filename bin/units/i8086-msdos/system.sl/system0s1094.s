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
	GLOBAL SYSTEM_$$_CHECKREAD$TEXT$$BOOLEAN
SYSTEM_$$_CHECKREAD$TEXT$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	byte [bp-1],0
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j22846
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j22847
..@j22846:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j22847:
		cmp	word [bx],0
		jne	..@j22844
		jmp	..@j22845
..@j22844:
		jmp	..@j22840
..@j22845:
		mov	bx,word [bp+4]
		mov	dx,word [bx+2]
		mov	ax,word [bx+4]
		cmp	ax,0
		jne	..@j22848
		cmp	dx,-10319
		jne	..@j22848
		jmp	..@j22849
..@j22848:
		mov	bx,word [bp+4]
		mov	dx,word [bx+2]
		mov	ax,word [bx+4]
		test	ax,ax
		jne	..@j22853
		cmp	dx,-10318
		je	..@j22852
..@j22853:
		test	ax,ax
		jne	..@j22854
		cmp	dx,-10316
		je	..@j22852
..@j22854:
		jmp	..@j22851
..@j22852:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j22857
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j22858
..@j22857:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j22858:
		mov	word [bx],104
		jmp	..@j22850
..@j22851:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j22861
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j22862
..@j22861:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j22862:
		mov	word [bx],103
..@j22850:
		jmp	..@j22840
..@j22849:
		mov	bx,word [bp+4]
		mov	si,word [bp+4]
		mov	ax,word [bx+10]
		cmp	ax,word [si+12]
		jge	..@j22863
		jmp	..@j22864
..@j22863:
		mov	ax,word [bp+4]
		push	ax
		mov	bx,word [bp+4]
		mov	ax,word [bx+18]
		call	ax
..@j22864:
		mov	byte [bp-1],1
..@j22840:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	U_$SYSTEM_$$_INOUTRES
EXTERN	FPC_THREADVAR_RELOCATE
