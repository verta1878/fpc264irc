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
	GLOBAL SYSUTILS_$$_SUPPORTS$TOBJECT$TGUID$formal$$BOOLEAN
SYSUTILS_$$_SUPPORTS$TOBJECT$TGUID$formal$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,4
		cmp	word [bp+8],0
		jne	..@j13620
		jmp	..@j13619
..@j13620:
		push	word [bp+8]
		mov	ax,word _$SYSUTILS$_Ld680
		push	ax
		lea	ax,[bp-4]
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_GETINTERFACEWEAK$TGUID$formal$$BOOLEAN
		test	al,al
		jne	..@j13622
		jmp	..@j13621
..@j13622:
		mov	ax,word [bp+4]
		push	ax
		mov	ax,word [bp+6]
		push	ax
		push	word [bp-4]
		mov	bx,word [bp-4]
		mov	bx,word [bx]
		call	[bx]
		add	sp,6
		cmp	dx,0
		jne	..@j13621
		cmp	ax,0
		jne	..@j13621
		jmp	..@j13618
..@j13621:
		push	word [bp+8]
		mov	ax,word [bp+6]
		push	ax
		mov	ax,word [bp+4]
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_GETINTERFACE$TGUID$formal$$BOOLEAN
		test	al,al
		jne	..@j13618
		jmp	..@j13619
..@j13618:
		mov	byte [bp-1],1
		jmp	..@j13641
..@j13619:
		mov	byte [bp-1],0
..@j13641:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	SYSTEM$_$TOBJECT_$__$$_GETINTERFACE$TGUID$formal$$BOOLEAN
EXTERN	SYSTEM$_$TOBJECT_$__$$_GETINTERFACEWEAK$TGUID$formal$$BOOLEAN
EXTERN	_$SYSUTILS$_Ld680
