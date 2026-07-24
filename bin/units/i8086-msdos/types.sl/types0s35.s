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
	GLOBAL TYPES$_$TRECT_$__$$_CREATE$TPOINT$TPOINT$BOOLEAN$$TRECT
TYPES$_$TRECT_$__$$_CREATE$TPOINT$TPOINT$BOOLEAN$$TRECT:
		push	bp
		mov	bp,sp
		sub	sp,16
		mov	ax,word [bp+8]
		lea	di,[bp-8]
		push	ss
		pop	es
		mov	si,ax
		cld
		mov	cx,4
		rep
		movsw
		mov	si,word [bp+6]
		lea	di,[bp-16]
		push	ss
		pop	es
		cld
		mov	cx,4
		rep
		movsw
		mov	di,word [bp+10]
		push	ds
		pop	es
		lea	si,[bp-8]
		cld
		mov	cx,4
		rep
		movsw
		mov	bx,word [bp+10]
		lea	di,[bx+8]
		push	ds
		pop	es
		lea	si,[bp-16]
		cld
		mov	cx,4
		rep
		movsw
		cmp	byte [bp+4],0
		jne	..@j239
		jmp	..@j240
..@j239:
		mov	ax,word [bp+10]
		push	ax
		call	TYPES$_$TRECT_$__$$_NORMALIZERECT
..@j240:
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	TYPES$_$TRECT_$__$$_NORMALIZERECT
