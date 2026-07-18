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
	GLOBAL DATEUTILS_$$_TRYENCODEDAYOFWEEKINMONTH$WORD$WORD$WORD$WORD$TDATETIME$$BOOLEAN
DATEUTILS_$$_TRYENCODEDAYOFWEEKINMONTH$WORD$WORD$WORD$WORD$TDATETIME$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,10
		push	word [bp+12]
		push	word [bp+10]
		mov	ax,1
		push	ax
		call	SYSUTILS_$$_ENCODEDATE$WORD$WORD$WORD$$TDATETIME
		sub	sp,8
		mov	bx,sp
		wait fstp	qword [bx]
		DB	09bh
		call	DATEUTILS_$$_DAYOFTHEWEEK$TDATETIME$$WORD
		mov	word [bp-4],ax
		mov	ax,word [bp+6]
		inc	ax
		mov	bx,0
		mov	cx,word [bp-4]
		mov	dx,0
		mov	word [bp-10],ax
		mov	word [bp-8],bx
		sub	word [bp-10],cx
		sbb	word [bp-8],dx
		mov	ax,0
		push	ax
		mov	ax,7
		push	ax
		mov	ax,word [bp+8]
		mov	dx,0
		sub	ax,1
		sbb	dx,0
		push	dx
		push	ax
		mov	ax,0
		push	ax
		call	fpc_mul_longint
		add	ax,word [bp-10]
		adc	dx,word [bp-8]
		mov	word [bp-6],ax
		mov	ax,word [bp-4]
		cmp	ax,word [bp+6]
		ja	..@j2670
		jmp	..@j2671
..@j2670:
		mov	ax,word [bp-6]
		add	ax,7
		mov	word [bp-6],ax
..@j2671:
		push	word [bp+12]
		push	word [bp+10]
		push	word [bp-6]
		mov	ax,word [bp+4]
		push	ax
		call	SYSUTILS_$$_TRYENCODEDATE$WORD$WORD$WORD$TDATETIME$$BOOLEAN
		mov	byte [bp-1],al
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	SYSUTILS_$$_TRYENCODEDATE$WORD$WORD$WORD$TDATETIME$$BOOLEAN
EXTERN	fpc_mul_longint
EXTERN	DATEUTILS_$$_DAYOFTHEWEEK$TDATETIME$$WORD
EXTERN	SYSUTILS_$$_ENCODEDATE$WORD$WORD$WORD$$TDATETIME
