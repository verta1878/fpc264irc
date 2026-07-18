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
	GLOBAL CLASSES$_$TUNRESOLVEDINSTANCE_$__$$_RESOLVEREFERENCES$$BOOLEAN
CLASSES$_$TUNRESOLVEDINSTANCE_$__$$_RESOLVEREFERENCES$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,6
		push	word [bp+4]
		call	CLASSES$_$TUNRESOLVEDINSTANCE_$__$$_ROOTUNRESOLVED$$TUNRESOLVEDREFERENCE
		mov	word [bp-4],ax
		jmp	..@j11491
	ALIGN 2
..@j11490:
		push	word [bp-4]
		call	CLASSES$_$TUNRESOLVEDREFERENCE_$__$$_NEXTREF$$TUNRESOLVEDREFERENCE
		mov	word [bp-6],ax
		push	word [bp-4]
		mov	bx,word [bp+4]
		push	word [bx+4]
		call	CLASSES$_$TUNRESOLVEDREFERENCE_$__$$_RESOLVE$TPERSISTENT$$BOOLEAN
		test	al,al
		jne	..@j11497
		jmp	..@j11498
..@j11497:
		mov	bx,word [bp+4]
		push	word [bx+6]
		push	word [bp-4]
		mov	ax,1
		push	ax
		call	CLASSES$_$TLINKEDLIST_$__$$_REMOVEITEM$TLINKEDLISTITEM$BOOLEAN
..@j11498:
		mov	ax,word [bp-6]
		mov	word [bp-4],ax
..@j11491:
		cmp	word [bp-4],0
		jne	..@j11490
		jmp	..@j11492
..@j11492:
		push	word [bp+4]
		call	CLASSES$_$TUNRESOLVEDINSTANCE_$__$$_ROOTUNRESOLVED$$TUNRESOLVEDREFERENCE
		test	ax,ax
		mov	al,0
		jne	..@j11515
		inc	ax
..@j11515:
		mov	byte [bp-1],al
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	CLASSES$_$TLINKEDLIST_$__$$_REMOVEITEM$TLINKEDLISTITEM$BOOLEAN
EXTERN	CLASSES$_$TUNRESOLVEDREFERENCE_$__$$_RESOLVE$TPERSISTENT$$BOOLEAN
EXTERN	CLASSES$_$TUNRESOLVEDREFERENCE_$__$$_NEXTREF$$TUNRESOLVEDREFERENCE
EXTERN	CLASSES$_$TUNRESOLVEDINSTANCE_$__$$_ROOTUNRESOLVED$$TUNRESOLVEDREFERENCE
