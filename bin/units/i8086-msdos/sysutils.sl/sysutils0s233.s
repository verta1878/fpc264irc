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
	GLOBAL SYSUTILS$_$FLOATTOTEXTFMT$crc533E3309_$$_GETSECTIONRANGE$SMALLINT
SYSUTILS$_$FLOATTOTEXTFMT$crc533E3309_$$_GETSECTIONRANGE$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,10
		mov	bx,word [bp+6]
		mov	ax,word [bx+6]
		mov	word [bp-6],ax
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-6]
		push	ax
		call	SYSUTILS$_$FLOATTOTEXTFMT$crc533E3309_$$_GETSECTIONEND$PCHAR$$BOOLEAN
		mov	byte [bp-9],al
		cmp	word [bp+4],1
		jg	..@j8179
		jmp	..@j8180
..@j8179:
		mov	ax,word [bp-6]
		mov	word [bp-4],ax
		mov	bx,word [bp-4]
		cmp	byte [bx],0
		jne	..@j8183
		jmp	..@j8184
..@j8183:
		inc	word [bp-4]
..@j8184:
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-4]
		push	ax
		call	SYSUTILS$_$FLOATTOTEXTFMT$crc533E3309_$$_GETSECTIONEND$PCHAR$$BOOLEAN
		mov	byte [bp-8],al
		cmp	word [bp+4],2
		jg	..@j8191
		jmp	..@j8192
..@j8191:
		mov	ax,word [bp-4]
		mov	word [bp-2],ax
		mov	bx,word [bp-2]
		cmp	byte [bx],0
		jne	..@j8195
		jmp	..@j8196
..@j8195:
		inc	word [bp-2]
..@j8196:
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-2]
		push	ax
		call	SYSUTILS$_$FLOATTOTEXTFMT$crc533E3309_$$_GETSECTIONEND$PCHAR$$BOOLEAN
		mov	byte [bp-7],al
..@j8192:
..@j8180:
		cmp	byte [bp-9],0
		je	..@j8203
		jmp	..@j8204
..@j8203:
		mov	bx,word [bp+6]
		mov	word [bx-54],0
		jmp	..@j8207
..@j8204:
		mov	si,word [bp+4]
		cmp	byte [bp+si-10],0
		je	..@j8208
		jmp	..@j8209
..@j8208:
		mov	word [bp+4],1
		jmp	..@j8212
..@j8209:
		cmp	word [bp+4],2
		je	..@j8213
		jmp	..@j8214
..@j8213:
		mov	bx,word [bp+6]
		wait fld	tword [bx+8]
		wait fchs
		mov	bx,word [bp+6]
		wait fstp	tword [bx+8]
		DB	09bh
..@j8214:
..@j8212:
		cmp	word [bp+4],1
		je	..@j8217
		jmp	..@j8218
..@j8217:
		mov	si,word [bp+6]
		mov	bx,word [bp+6]
		mov	ax,word [bx+6]
		mov	word [si-54],ax
		jmp	..@j8221
..@j8218:
		mov	si,word [bp+4]
		dec	si
		shl	si,1
		mov	bx,word [bp+6]
		mov	ax,word [bp+si-8]
		mov	word [bx-54],ax
		mov	bx,word [bp+6]
		inc	word [bx-54]
..@j8221:
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		shl	si,1
		mov	ax,word [bp+si-8]
		mov	word [bx-56],ax
..@j8207:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSUTILS$_$FLOATTOTEXTFMT$crc533E3309_$$_GETSECTIONEND$PCHAR$$BOOLEAN
