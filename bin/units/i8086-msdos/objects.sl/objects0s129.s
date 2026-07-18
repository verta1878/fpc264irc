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
	GLOBAL OBJECTS$_$TSTRLISTMAKER_$__$$_PUT$LONGWORD$SHORTSTRING
OBJECTS$_$TSTRLISTMAKER_$__$$_PUT$LONGWORD$SHORTSTRING:
		push	bp
		mov	bp,sp
		sub	sp,256
		mov	dx,word [bp+4]
		lea	ax,[bp-256]
		push	ax
		mov	ax,255
		push	ax
		push	dx
		call	fpc_shortstr_to_shortstr
		mov	bx,word [bp+10]
		cmp	word [bx+26],16
		je	..@j3107
		jmp	..@j3109
..@j3109:
		mov	bx,word [bp+10]
		mov	si,word [bx+26]
		mov	dx,0
		mov	bx,word [bp+10]
		mov	ax,word [bx+22]
		mov	cx,word [bx+24]
		add	ax,si
		adc	cx,dx
		cmp	cx,word [bp+8]
		jne	..@j3107
		cmp	ax,word [bp+6]
		jne	..@j3107
		jmp	..@j3108
		jmp	..@j3108
..@j3107:
		mov	ax,word [bp+10]
		push	ax
		call	OBJECTS$_$TSTRLISTMAKER_$__$$_CLOSECURRENT
..@j3108:
		mov	bx,word [bp+10]
		cmp	word [bx+26],0
		je	..@j3112
		jmp	..@j3113
..@j3112:
		mov	bx,word [bp+10]
		mov	ax,word [bp+6]
		mov	word [bx+22],ax
		mov	ax,word [bp+8]
		mov	word [bx+24],ax
		mov	bx,word [bp+10]
		mov	si,word [bp+10]
		mov	ax,word [bx+2]
		mov	word [si+28],ax
..@j3113:
		mov	bx,word [bp+10]
		inc	word [bx+26]
		lea	ax,[bp-256]
		push	ax
		mov	bx,word [bp+10]
		mov	bx,word [bx+10]
		mov	si,word [bp+10]
		mov	si,word [si+2]
		lea	ax,[bx+si]
		push	ax
		mov	al,byte [bp-256]
		mov	ah,0
		inc	ax
		push	ax
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
		mov	al,byte [bp-256]
		mov	ah,0
		inc	ax
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	bx,word [bp+10]
		add	word [bx+2],cx
		adc	word [bx+4],ax
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
EXTERN	OBJECTS$_$TSTRLISTMAKER_$__$$_CLOSECURRENT
EXTERN	fpc_shortstr_to_shortstr
