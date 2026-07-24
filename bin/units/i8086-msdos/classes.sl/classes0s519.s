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
	GLOBAL CLASSES$_$TREFERENCENAMESVISITOR_$__$$_VISIT$TLINKEDLISTITEM$$BOOLEAN
CLASSES$_$TREFERENCENAMESVISITOR_$__$$_VISIT$TLINKEDLISTITEM$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,4
		push	word [bp+4]
		call	CLASSES$_$TUNRESOLVEDINSTANCE_$__$$_ROOTUNRESOLVED$$TUNRESOLVEDREFERENCE
		mov	word [bp-4],ax
		jmp	..@j11557
	ALIGN 2
..@j11556:
		push	word [bp-4]
		mov	bx,word [bp+6]
		push	word [bx+4]
		call	CLASSES$_$TUNRESOLVEDREFERENCE_$__$$_ROOTMATCHES$TCOMPONENT$$BOOLEAN
		test	al,al
		jne	..@j11559
		jmp	..@j11560
..@j11559:
		mov	bx,word [bp+6]
		push	word [bx+2]
		mov	bx,word [bp-4]
		push	word [bx+8]
		mov	bx,word [bp+6]
		mov	bx,word [bx+2]
		mov	bx,word [bx]
		mov	ax,word [bx+100]
		call	ax
		cmp	ax,-1
		je	..@j11565
		jmp	..@j11566
..@j11565:
		mov	bx,word [bp+6]
		push	word [bx+2]
		mov	bx,word [bp-4]
		push	word [bx+8]
		mov	bx,word [bp+6]
		mov	bx,word [bx+2]
		mov	bx,word [bx]
		mov	ax,word [bx+82]
		call	ax
..@j11566:
..@j11560:
		push	word [bp-4]
		call	CLASSES$_$TUNRESOLVEDREFERENCE_$__$$_NEXTREF$$TUNRESOLVEDREFERENCE
		mov	word [bp-4],ax
..@j11557:
		cmp	word [bp-4],0
		jne	..@j11556
		jmp	..@j11558
..@j11558:
		mov	byte [bp-1],1
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	CLASSES$_$TUNRESOLVEDREFERENCE_$__$$_NEXTREF$$TUNRESOLVEDREFERENCE
EXTERN	CLASSES$_$TUNRESOLVEDREFERENCE_$__$$_ROOTMATCHES$TCOMPONENT$$BOOLEAN
EXTERN	CLASSES$_$TUNRESOLVEDINSTANCE_$__$$_ROOTUNRESOLVED$$TUNRESOLVEDREFERENCE
