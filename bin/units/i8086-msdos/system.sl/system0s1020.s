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
	GLOBAL SYSTEM_$$_FILEOPENFUNC$TEXTREC
SYSTEM_$$_FILEOPENFUNC$TEXTREC:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	bx,word [bp+4]
		mov	dx,word [bx+2]
		mov	ax,word [bx+4]
		test	ax,ax
		jne	..@j20921
		cmp	dx,-10319
		je	..@j20918
..@j20921:
		test	ax,ax
		jne	..@j20922
		cmp	dx,-10318
		je	..@j20919
..@j20922:
		test	ax,ax
		jne	..@j20923
		cmp	dx,-10316
		je	..@j20920
..@j20923:
		jmp	..@j20917
..@j20918:
		mov	word [bp-4],0
		mov	word [bp-2],1
		jmp	..@j20916
..@j20919:
		mov	word [bp-4],4097
		mov	word [bp-2],1
		jmp	..@j20916
..@j20920:
		mov	word [bp-4],257
		mov	word [bp-2],1
		jmp	..@j20916
..@j20917:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j20932
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j20933
..@j20932:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j20933:
		mov	word [bx],102
		jmp	..@j20914
..@j20916:
		mov	ax,word [bp+4]
		push	ax
		mov	bx,word [bp+4]
		lea	ax,[bx+56]
		push	ax
		push	word [bp-2]
		push	word [bp-4]
		mov	ax,0
		push	ax
		call	SYSTEM_$$_DO_OPEN$formal$PWIDECHAR$LONGINT$BOOLEAN
		mov	bx,word [bp+4]
		mov	ax,word SYSTEM_$$_FILECLOSEFUNC$TEXTREC
		mov	word [bx+22],ax
		mov	bx,word [bp+4]
		mov	word [bx+20],0
		mov	bx,word [bp+4]
		mov	dx,word [bx+2]
		mov	ax,word [bx+4]
		cmp	ax,0
		jne	..@j20947
		cmp	dx,-10319
		jne	..@j20947
		jmp	..@j20946
..@j20946:
		mov	bx,word [bp+4]
		mov	ax,word SYSTEM_$$_FILEREADFUNC$TEXTREC
		mov	word [bx+18],ax
		jmp	..@j20950
..@j20947:
		mov	bx,word [bp+4]
		mov	ax,word SYSTEM_$$_FILEWRITEFUNC$TEXTREC
		mov	word [bx+18],ax
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j20956
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j20957
..@j20956:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j20957:
		cmp	word [bx],0
		je	..@j20955
		jmp	..@j20954
..@j20955:
		mov	bx,word [bp+4]
		push	word [bx]
		call	SYSTEM_$$_DO_ISDEVICE$WORD$$BOOLEAN
		test	al,al
		jne	..@j20953
		jmp	..@j20954
..@j20953:
		mov	bx,word [bp+4]
		mov	ax,word SYSTEM_$$_FILEWRITEFUNC$TEXTREC
		mov	word [bx+20],ax
..@j20954:
..@j20950:
..@j20914:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	SYSTEM_$$_DO_ISDEVICE$WORD$$BOOLEAN
EXTERN	SYSTEM_$$_FILEWRITEFUNC$TEXTREC
EXTERN	SYSTEM_$$_FILEREADFUNC$TEXTREC
EXTERN	SYSTEM_$$_FILECLOSEFUNC$TEXTREC
EXTERN	SYSTEM_$$_DO_OPEN$formal$PWIDECHAR$LONGINT$BOOLEAN
EXTERN	U_$SYSTEM_$$_INOUTRES
EXTERN	FPC_THREADVAR_RELOCATE
