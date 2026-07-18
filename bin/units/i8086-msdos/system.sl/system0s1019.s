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
	GLOBAL SYSTEM_$$_FILEWRITEFUNC$TEXTREC
SYSTEM_$$_FILEWRITEFUNC$TEXTREC:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	bx,word [bp+4]
		cmp	word [bx+10],0
		je	..@j20896
		jmp	..@j20897
..@j20896:
		jmp	..@j20894
..@j20897:
		mov	bx,word [bp+4]
		push	word [bx]
		mov	bx,word [bp+4]
		push	word [bx+14]
		mov	bx,word [bp+4]
		mov	ax,word [bx+10]
		cwd
		push	dx
		push	ax
		call	SYSTEM_$$_DO_WRITE$WORD$POINTER$LONGINT$$LONGINT
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		mov	bx,word [bp+4]
		mov	ax,word [bx+10]
		cwd
		cmp	dx,word [bp-2]
		jne	..@j20906
		cmp	ax,word [bp-4]
		jne	..@j20906
		jmp	..@j20907
		jmp	..@j20907
..@j20906:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j20910
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j20911
..@j20910:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j20911:
		mov	word [bx],101
..@j20907:
		mov	bx,word [bp+4]
		mov	word [bx+10],0
..@j20894:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	U_$SYSTEM_$$_INOUTRES
EXTERN	FPC_THREADVAR_RELOCATE
EXTERN	SYSTEM_$$_DO_WRITE$WORD$POINTER$LONGINT$$LONGINT
