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
	GLOBAL CLASSES$_$TREADER_$__$$_READDATA$TCOMPONENT
CLASSES$_$TREADER_$__$$_READDATA$TCOMPONENT:
		push	bp
		mov	bp,sp
		sub	sp,18
		jmp	..@j19322
	ALIGN 2
..@j19321:
		push	word [bp+6]
		push	word [bp+4]
		call	CLASSES$_$TREADER_$__$$_READPROPERTY$TPERSISTENT
..@j19322:
		push	word [bp+6]
		call	CLASSES$_$TREADER_$__$$_ENDOFLIST$$BOOLEAN
		test	al,al
		jne	..@j19323
		jmp	..@j19321
..@j19323:
		push	word [bp+6]
		call	CLASSES$_$TREADER_$__$$_READLISTEND
		mov	bx,word [bp+6]
		mov	ax,word [bx+11]
		mov	word [bp-2],ax
		mov	bx,word [bp+6]
		mov	ax,word [bx+13]
		mov	word [bp-4],ax
		mov	ax,1
		push	ax
		lea	ax,[bp-16]
		push	ax
		lea	ax,[bp-10]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j19336
		push	word [bp+4]
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	ax,word [bx+62]
		call	ax
		mov	bx,word [bp+6]
		mov	word [bx+11],ax
		mov	bx,word [bp+6]
		cmp	word [bx+11],0
		je	..@j19343
		jmp	..@j19344
..@j19343:
		mov	si,word [bp+6]
		mov	bx,word [bp+6]
		mov	ax,word [bx+2]
		mov	word [si+11],ax
..@j19344:
		push	word [bp+4]
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	ax,word [bx+64]
		call	ax
		mov	bx,word [bp+6]
		mov	word [bx+13],ax
		jmp	..@j19352
	ALIGN 2
..@j19351:
		push	word [bp+6]
		mov	ax,0
		push	ax
		call	CLASSES$_$TREADER_$__$$_READCOMPONENT$TCOMPONENT$$TCOMPONENT
..@j19352:
		push	word [bp+6]
		call	CLASSES$_$TREADER_$__$$_ENDOFLIST$$BOOLEAN
		test	al,al
		jne	..@j19353
		jmp	..@j19351
..@j19353:
		push	word [bp+6]
		call	CLASSES$_$TREADER_$__$$_READLISTEND
..@j19336:
		call	FPC_POPADDRSTACK
		mov	bx,word [bp+6]
		mov	ax,word [bp-2]
		mov	word [bx+11],ax
		mov	bx,word [bp+6]
		mov	ax,word [bp-4]
		mov	word [bx+13],ax
		pop	ax
		test	ax,ax
		je	..@j19337
		call	FPC_RERAISE
..@j19337:
		mov	bx,word [bp+6]
		mov	ax,word [bx+2]
		cmp	ax,word [bp+4]
		je	..@j19366
		jmp	..@j19367
..@j19366:
		push	word [bp+6]
		call	CLASSES$_$TREADER_$__$$_DOFIXUPREFERENCES
..@j19367:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	CLASSES$_$TREADER_$__$$_DOFIXUPREFERENCES
EXTERN	FPC_RERAISE
EXTERN	FPC_POPADDRSTACK
EXTERN	CLASSES$_$TREADER_$__$$_READCOMPONENT$TCOMPONENT$$TCOMPONENT
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
EXTERN	CLASSES$_$TREADER_$__$$_READLISTEND
EXTERN	CLASSES$_$TREADER_$__$$_ENDOFLIST$$BOOLEAN
EXTERN	CLASSES$_$TREADER_$__$$_READPROPERTY$TPERSISTENT
