BITS 16
CPU 8086
SECTION .text use16 class=code
SECTION .rodata class=data
SECTION .data class=data
SECTION .fpc class=data
SECTION .bss class=bss
SECTION stack stack class=stack align=16
SECTION heap class=heap align=16
GROUP dgroup rodata data fpc bss stack heap
SECTION .text

SECTION .text
	ALIGN 2
	GLOBAL MATH_$$_SAMEVALUE$SINGLE$SINGLE$SINGLE$$BOOLEAN
MATH_$$_SAMEVALUE$SINGLE$SINGLE$SINGLE$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,46
		wait fldz
		wait fld	dword [bp+4]
		wait fcompp
		fstsw	[bp-4]
		mov	ah,byte [bp-3]
		sahf
		jp	..@j2170
		je	..@j2168
..@j2170:
		jmp	..@j2169
..@j2168:
		lea	di,[bp-24]
		push	ss
		pop	es
		mov	si,word _$MATH$_Ld22
		cld
		mov	cx,5
		rep
		movsw
		wait fld	dword [bp+8]
		wait fabs
		wait fstp	dword [bp-42]
		DB	09bh
		wait fld	dword [bp+12]
		wait fabs
		wait fstp	dword [bp-46]
		DB	09bh
		wait fld	dword [bp-42]
		wait fld	dword [bp-46]
		wait fcompp
		fstsw	[bp-4]
		mov	ah,byte [bp-3]
		sahf
		jp	..@j2183
		jb	..@j2181
..@j2183:
		jmp	..@j2182
..@j2181:
		mov	ax,word [bp-46]
		mov	word [bp-38],ax
		mov	ax,word [bp-44]
		mov	word [bp-36],ax
		jmp	..@j2186
..@j2182:
		mov	ax,word [bp-42]
		mov	word [bp-38],ax
		mov	ax,word [bp-40]
		mov	word [bp-36],ax
..@j2186:
		wait fld	dword [bp-38]
		wait fld	tword [_$MATH$_Ld22]
		wait fmulp	st1,st0
		wait fstp	tword [bp-34]
		DB	09bh
		wait fld	tword [bp-24]
		wait fld	tword [bp-34]
		wait fcompp
		fstsw	[bp-4]
		mov	ah,byte [bp-3]
		sahf
		jp	..@j2191
		ja	..@j2189
..@j2191:
		jmp	..@j2190
..@j2189:
		lea	di,[bp-14]
		push	ss
		pop	es
		lea	si,[bp-34]
		cld
		mov	cx,5
		rep
		movsw
		jmp	..@j2194
..@j2190:
		lea	di,[bp-14]
		push	ss
		pop	es
		lea	si,[bp-24]
		cld
		mov	cx,5
		rep
		movsw
..@j2194:
		wait fld	tword [bp-14]
		wait fstp	dword [bp+4]
		DB	09bh
..@j2169:
		wait fld	dword [bp+8]
		wait fld	dword [bp+12]
		wait fcompp
		fstsw	[bp-4]
		mov	ah,byte [bp-3]
		sahf
		jp	..@j2199
		ja	..@j2197
..@j2199:
		jmp	..@j2198
..@j2197:
		wait fld	dword [bp+8]
		wait fsubr	dword [bp+12]
		wait fld	dword [bp+4]
		wait fcompp
		fstsw	[bp-4]
		mov	ah,byte [bp-3]
		sahf
		mov	al,0
		jb	..@j2202
		inc	ax
..@j2202:
		mov	byte [bp-1],al
		jmp	..@j2203
..@j2198:
		wait fld	dword [bp+12]
		wait fsubr	dword [bp+8]
		wait fld	dword [bp+4]
		wait fcompp
		fstsw	[bp-4]
		mov	ah,byte [bp-3]
		sahf
		mov	al,0
		jb	..@j2206
		inc	ax
..@j2206:
		mov	byte [bp-1],al
..@j2203:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	12
EXTERN	_$MATH$_Ld22
