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
	GLOBAL CLASSES_$$_GETFIELDCLASS$TOBJECT$ANSISTRING$$TPERSISTENTCLASS
CLASSES_$$_GETFIELDCLASS$TOBJECT$ANSISTRING$$TPERSISTENTCLASS:
		push	bp
		mov	bp,sp
		sub	sp,268
		lea	ax,[bp-258]
		push	ax
		mov	ax,255
		push	ax
		push	word [bp+4]
		call	fpc_ansistr_to_shortstr
		mov	bx,word [bp+6]
		mov	ax,word [bx]
		mov	word [bp-260],ax
		jmp	..@j18373
	ALIGN 2
..@j18372:
		mov	bx,word [bp-260]
		mov	ax,word [bx+12]
		mov	word [bp-266],ax
		cmp	word [bp-266],0
		jne	..@j18377
		jmp	..@j18378
..@j18377:
		mov	bx,word [bp-266]
		mov	ax,word [bx+2]
		mov	word [bp-262],ax
		mov	bx,word [bp-262]
		mov	ax,word [bx]
		mov	dx,0
		sub	ax,1
		sbb	dx,0
		mov	word [bp-268],ax
		mov	word [bp-264],0
		mov	ax,word [bp-268]
		cmp	ax,word [bp-264]
		jl	..@j18384
		dec	word [bp-264]
	ALIGN 2
..@j18385:
		inc	word [bp-264]
		mov	bx,word [bp-262]
		mov	ax,word [bp-264]
		mov	si,ax
		shl	si,1
		mov	ax,word [bx+si+2]
		mov	word [bp-2],ax
		push	word [bp-2]
		lea	ax,[bp-258]
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_CLASSNAMEIS$SHORTSTRING$$BOOLEAN
		test	al,al
		jne	..@j18388
		jmp	..@j18389
..@j18388:
		jmp	..@j18360
..@j18389:
		mov	ax,word [bp-268]
		cmp	ax,word [bp-264]
		jg	..@j18385
..@j18384:
..@j18378:
		mov	bx,word [bp-260]
		mov	ax,word [bx+4]
		mov	word [bp-260],ax
..@j18373:
		mov	ax,word VMT_$CLASSES_$$_TPERSISTENT
		cmp	ax,word [bp-260]
		jne	..@j18372
		jmp	..@j18374
..@j18374:
		push	word [bp+4]
		call	CLASSES_$$_GETCLASS$ANSISTRING$$TPERSISTENTCLASS
		mov	word [bp-2],ax
..@j18360:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	CLASSES_$$_GETCLASS$ANSISTRING$$TPERSISTENTCLASS
EXTERN	VMT_$CLASSES_$$_TPERSISTENT
EXTERN	SYSTEM$_$TOBJECT_$__$$_CLASSNAMEIS$SHORTSTRING$$BOOLEAN
EXTERN	fpc_ansistr_to_shortstr
