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
	GLOBAL CLASSES$_$TBINARYOBJECTREADER_$__$$_READIDENT$TVALUETYPE$$ANSISTRING
CLASSES$_$TBINARYOBJECTREADER_$__$$_READIDENT$TVALUETYPE$$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	dx,word [bp+4]
		mov	ax,word [bp+6]
		test	ax,ax
		jne	..@j17869
		test	dx,dx
		je	..@j17868
..@j17869:
		test	ax,ax
		jne	..@j17870
		cmp	dx,7
		je	..@j17864
..@j17870:
		test	ax,ax
		jne	..@j17871
		cmp	dx,8
		je	..@j17866
..@j17871:
		test	ax,ax
		jne	..@j17872
		cmp	dx,9
		je	..@j17867
..@j17872:
		test	ax,ax
		jne	..@j17873
		cmp	dx,13
		je	..@j17865
..@j17873:
		jmp	..@j17863
..@j17864:
		push	word [bp+10]
		lea	ax,[bp-1]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,1
		push	ax
		mov	bx,word [bp+10]
		mov	bx,word [bx]
		mov	ax,word [bx+60]
		call	ax
		mov	ax,word [bp+8]
		push	ax
		mov	al,byte [bp-1]
		mov	ah,0
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_setlength
		push	word [bp+10]
		mov	bx,word [bp+8]
		mov	ax,word [bx]
		push	ax
		mov	ax,0
		mov	dl,byte [bp-1]
		mov	dh,0
		push	ax
		push	dx
		mov	bx,word [bp+10]
		mov	bx,word [bx]
		mov	ax,word [bx+60]
		call	ax
		jmp	..@j17862
..@j17865:
		mov	ax,word [bp+8]
		push	ax
		mov	ax,word _$CLASSES$_Ld52
		push	ax
		call	fpc_ansistr_assign
		jmp	..@j17862
..@j17866:
		mov	ax,word [bp+8]
		push	ax
		mov	ax,word _$CLASSES$_Ld49
		push	ax
		call	fpc_ansistr_assign
		jmp	..@j17862
..@j17867:
		mov	ax,word [bp+8]
		push	ax
		mov	ax,word _$CLASSES$_Ld50
		push	ax
		call	fpc_ansistr_assign
		jmp	..@j17862
..@j17868:
		mov	ax,word [bp+8]
		push	ax
		mov	ax,word _$CLASSES$_Ld71
		push	ax
		call	fpc_ansistr_assign
		jmp	..@j17862
..@j17863:
..@j17862:
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	_$CLASSES$_Ld71
EXTERN	_$CLASSES$_Ld50
EXTERN	_$CLASSES$_Ld49
EXTERN	fpc_ansistr_assign
EXTERN	_$CLASSES$_Ld52
EXTERN	fpc_ansistr_setlength
