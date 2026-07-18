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
	GLOBAL SYSTEM$_$STR_REAL$crcEDBAA446_$$_GEN_DIGITS_32$TASCIIDIGITS$SMALLINT$LONGWORD$BOOLEAN$$SMALLINT
SYSTEM$_$STR_REAL$crcEDBAA446_$$_GEN_DIGITS_32$TASCIIDIGITS$SMALLINT$LONGWORD$BOOLEAN$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,12
		mov	ax,word [bp+6]
		mov	dx,word [bp+8]
		cmp	dx,0
		jne	..@j5894
		cmp	ax,0
		jne	..@j5894
		jmp	..@j5893
..@j5893:
		mov	word [bp-4],0
		jmp	..@j5897
..@j5894:
		push	word [bp+8]
		push	word [bp+6]
		call	SYSTEM_$$_BSRDWORD$LONGWORD$$BYTE
		mov	dl,al
		mov	dh,0
		inc	dx
		mov	ax,1233
		mul	dx
		mov	cl,12
		shr	ax,cl
		mov	word [bp-4],ax
		mov	bx,word [bp-4]
		mov	cl,2
		shl	bx,cl
		mov	dx,word [TC_$SYSTEM$_$STR_REAL$crcEDBAA446_GEN_DIGITS_32$crc66C340FE_$$_DIGITS+bx]
		mov	ax,word [TC_$SYSTEM$_$STR_REAL$crcEDBAA446_GEN_DIGITS_32$crc66C340FE_$$_DIGITS+bx+2]
		cmp	ax,word [bp+8]
		jb	..@j5902
		ja	..@j5903
		cmp	dx,word [bp+6]
		jbe	..@j5902
		jmp	..@j5903
		jmp	..@j5903
..@j5902:
		inc	word [bp-4]
..@j5903:
..@j5897:
		cmp	byte [bp+4],0
		jne	..@j5906
		jmp	..@j5905
..@j5906:
		cmp	word [bp-4],9
		jl	..@j5904
		jmp	..@j5905
..@j5904:
		mov	word [bp-4],9
..@j5905:
		mov	ax,word [bp-4]
		mov	word [bp-2],ax
		mov	ax,word [bp+6]
		mov	word [bp-8],ax
		mov	ax,word [bp+8]
		mov	word [bp-6],ax
		jmp	..@j5914
	ALIGN 2
..@j5913:
		dec	word [bp-4]
		mov	dx,word [bp-8]
		mov	ax,word [bp-6]
		cmp	ax,0
		jne	..@j5916
		cmp	dx,0
		jne	..@j5916
		jmp	..@j5917
..@j5916:
		mov	ax,0
		push	ax
		mov	ax,10
		push	ax
		push	word [bp-6]
		push	word [bp-8]
		call	fpc_div_dword
		mov	word [bp-12],ax
		mov	word [bp-10],dx
		push	word [bp-10]
		push	word [bp-12]
		mov	ax,0
		push	ax
		mov	ax,10
		push	ax
		mov	ax,0
		push	ax
		call	fpc_mul_longint
		mov	cx,word [bp-8]
		mov	bx,word [bp-6]
		sub	cx,ax
		sbb	bx,dx
		mov	al,cl
		mov	bx,word [bp+12]
		mov	cx,word [bp+10]
		mov	dx,word [bp-4]
		mov	si,dx
		add	si,cx
		mov	byte [bx+si],al
		mov	ax,word [bp-12]
		mov	word [bp-8],ax
		mov	ax,word [bp-10]
		mov	word [bp-6],ax
		jmp	..@j5934
..@j5917:
		mov	bx,word [bp+12]
		mov	dx,word [bp+10]
		mov	ax,word [bp-4]
		mov	si,ax
		add	si,dx
		mov	byte [bx+si],0
..@j5934:
..@j5914:
		cmp	word [bp-4],0
		jg	..@j5913
		jmp	..@j5915
..@j5915:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	12
EXTERN	fpc_mul_longint
EXTERN	fpc_div_dword
EXTERN	TC_$SYSTEM$_$STR_REAL$crcEDBAA446_GEN_DIGITS_32$crc66C340FE_$$_DIGITS
EXTERN	SYSTEM_$$_BSRDWORD$LONGWORD$$BYTE
