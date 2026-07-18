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
	GLOBAL SHA1_$$_SHA1FINAL$TSHA1CONTEXT$TSHA1DIGEST
SHA1_$$_SHA1FINAL$TSHA1CONTEXT$TSHA1DIGEST:
		push	bp
		mov	bp,sp
		sub	sp,12
		mov	bx,word [bp+6]
		mov	si,word [bx+84]
		mov	ax,0
		mov	dx,0
		mov	di,0
		mov	bx,word [bp+6]
		add	si,word [bx+86]
		adc	ax,word [bx+88]
		adc	dx,word [bx+90]
		adc	di,word [bx+92]
		mov	cx,3
..@j212:
		shl	si,1
		rcl	ax,1
		rcl	dx,1
		rcl	di,1
		loop	..@j212
		mov	word [bp-8],si
		mov	word [bp-6],ax
		mov	word [bp-4],dx
		mov	word [bp-2],di
		mov	bx,word [bp+6]
		cmp	word [bx+84],56
		jae	..@j214
		jmp	..@j215
..@j214:
		mov	bx,word [bp+6]
		mov	cx,word [bx+84]
		mov	bx,0
		mov	ax,120
		mov	dx,0
		sub	ax,cx
		sbb	dx,bx
		mov	word [bp-12],ax
		mov	word [bp-10],dx
		jmp	..@j218
..@j215:
		mov	bx,word [bp+6]
		mov	bx,word [bx+84]
		mov	cx,0
		mov	ax,56
		mov	dx,0
		sub	ax,bx
		sbb	dx,cx
		mov	word [bp-12],ax
		mov	word [bp-10],dx
..@j218:
		mov	ax,word [bp+6]
		push	ax
		mov	ax,word TC_$SHA1_$$_PADDING
		push	ax
		push	word [bp-12]
		call	SHA1_$$_SHA1UPDATE$TSHA1CONTEXT$formal$WORD
		push	word [bp-2]
		push	word [bp-4]
		push	word [bp-6]
		push	word [bp-8]
		call	SYSTEM_$$_SWAPENDIAN$QWORD$$QWORD
		mov	word [bp-8],dx
		mov	word [bp-6],cx
		mov	word [bp-4],bx
		mov	word [bp-2],ax
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-8]
		push	ax
		mov	ax,8
		push	ax
		call	SHA1_$$_SHA1UPDATE$TSHA1CONTEXT$formal$WORD
		mov	ax,word [bp+6]
		push	ax
		mov	ax,word [bp+4]
		push	ax
		mov	ax,20
		push	ax
		call	SHA1_$$_INVERT$POINTER$POINTER$WORD
		mov	ax,word [bp+6]
		push	ax
		mov	ax,94
		push	ax
		mov	ax,0
		push	ax
		call	SYSTEM_$$_FILLCHAR$formal$SMALLINT$BYTE
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM_$$_FILLCHAR$formal$SMALLINT$BYTE
EXTERN	SHA1_$$_INVERT$POINTER$POINTER$WORD
EXTERN	SYSTEM_$$_SWAPENDIAN$QWORD$$QWORD
EXTERN	SHA1_$$_SHA1UPDATE$TSHA1CONTEXT$formal$WORD
EXTERN	TC_$SHA1_$$_PADDING
