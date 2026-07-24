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
	GLOBAL CLASSES$_$TRESOURCESTREAM_$__$$_DESTROY
CLASSES$_$TRESOURCESTREAM_$__$$_DESTROY:
		push	bp
		mov	bp,sp
		cmp	word [bp+4],0
		jg	..@j2418
		jmp	..@j2419
..@j2418:
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+36]
		call	ax
..@j2419:
		mov	bx,word [bp+6]
		push	word [bx+10]
		call	SYSTEM_$$_UNLOCKRESOURCE$WORD$$LONGBOOL
		mov	bx,word [bp+6]
		push	word [bx+10]
		call	SYSTEM_$$_FREERESOURCE$WORD$$LONGBOOL
		push	word [bp+6]
		mov	ax,0
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_DESTROY
		cmp	word [bp+6],0
		jne	..@j2432
		jmp	..@j2431
..@j2432:
		cmp	word [bp+4],0
		jne	..@j2430
		jmp	..@j2431
..@j2430:
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+28]
		call	ax
..@j2431:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM$_$TOBJECT_$__$$_DESTROY
EXTERN	SYSTEM_$$_FREERESOURCE$WORD$$LONGBOOL
EXTERN	SYSTEM_$$_UNLOCKRESOURCE$WORD$$LONGBOOL
