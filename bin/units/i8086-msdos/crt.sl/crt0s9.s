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
	GLOBAL CRT_$$_DETECTSNOW
CRT_$$_DETECTSNOW:
		push	bp
		mov	bp,sp
		sub	sp,22
		cmp	word [TC_$CRT_$$_LASTMODE],2
		jne	..@j51
		jmp	..@j50
..@j51:
		cmp	word [TC_$CRT_$$_LASTMODE],3
		jne	..@j49
		jmp	..@j50
..@j49:
		mov	byte [U_$CRT_$$_CHECKSNOW],0
		jmp	..@j47
..@j50:
		mov	word [bp-20],6656
		mov	ax,16
		push	ax
		lea	ax,[bp-20]
		push	ax
		call	FPC_INTR
		cmp	byte [bp-20],26
		je	..@j60
		jmp	..@j61
..@j60:
		cmp	byte [bp-18],2
		mov	al,0
		jne	..@j64
		inc	ax
..@j64:
		mov	byte [U_$CRT_$$_CHECKSNOW],al
		jmp	..@j47
..@j61:
		mov	byte [bp-19],18
		mov	word [bp-18],-240
		mov	ax,16
		push	ax
		lea	ax,[bp-20]
		push	ax
		call	FPC_INTR
		cmp	byte [bp-17],255
		jne	..@j73
		jmp	..@j74
..@j73:
		mov	al,byte [bp-16]
		mov	ah,0
		and	ax,15
		mov	byte [bp-21],al
		cmp	byte [bp-21],4
		je	..@j77
		jmp	..@j81
..@j81:
		cmp	byte [bp-21],5
		je	..@j77
		jmp	..@j80
..@j80:
		cmp	byte [bp-21],10
		je	..@j77
		jmp	..@j79
..@j79:
		cmp	byte [bp-21],11
		je	..@j77
		jmp	..@j78
..@j77:
		mov	byte [U_$CRT_$$_CHECKSNOW],1
		jmp	..@j82
..@j78:
		mov	byte [U_$CRT_$$_CHECKSNOW],0
..@j82:
		jmp	..@j47
..@j74:
		mov	byte [U_$CRT_$$_CHECKSNOW],1
..@j47:
		mov	sp,bp
		pop	bp
		ret
EXTERN	FPC_INTR
EXTERN	U_$CRT_$$_CHECKSNOW
EXTERN	TC_$CRT_$$_LASTMODE
