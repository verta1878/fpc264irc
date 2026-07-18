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
	GLOBAL SYSTEM_$$_RTTISIZE$POINTER$$SMALLINT
SYSTEM_$$_RTTISIZE$POINTER$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	bx,word [bp+4]
		mov	al,byte [bx]
		cmp	al,9
		jb	..@j17072
		sub	al,9
		sub	al,1
		jbe	..@j17073
		dec	al
		je	..@j17074
		dec	al
		je	..@j17075
		dec	al
		je	..@j17076
		dec	al
		je	..@j17073
		sub	al,2
		je	..@j17076
		sub	al,5
		je	..@j17073
		sub	al,3
		je	..@j17073
		jmp	..@j17072
..@j17073:
		mov	word [bp-2],2
		jmp	..@j17071
..@j17074:
		mov	word [bp-2],16
		jmp	..@j17071
..@j17075:
		push	word [bp+4]
		call	SYSTEM_$$_RTTIARRAYSIZE$POINTER$$SMALLINT
		mov	word [bp-2],ax
		jmp	..@j17071
..@j17076:
		push	word [bp+4]
		call	SYSTEM_$$_RTTIRECORDSIZE$POINTER$$SMALLINT
		mov	word [bp-2],ax
		jmp	..@j17071
..@j17072:
		mov	word [bp-2],-1
..@j17071:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	SYSTEM_$$_RTTIRECORDSIZE$POINTER$$SMALLINT
EXTERN	SYSTEM_$$_RTTIARRAYSIZE$POINTER$$SMALLINT
