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
	GLOBAL CLASSES$_$TFPLIST_$__$$_ASSIGN$TFPLIST$TLISTASSIGNOP$TFPLIST
CLASSES$_$TFPLIST_$__$$_ASSIGN$TFPLIST$TLISTASSIGNOP$TFPLIST:
		push	bp
		mov	bp,sp
		mov	dx,word [bp+6]
		mov	ax,word [bp+8]
		test	ax,ax
		jne	..@j5605
		test	dx,dx
		je	..@j5599
..@j5605:
		test	ax,ax
		jne	..@j5606
		cmp	dx,1
		je	..@j5601
..@j5606:
		test	ax,ax
		jne	..@j5607
		cmp	dx,2
		je	..@j5603
..@j5607:
		test	ax,ax
		jne	..@j5608
		cmp	dx,3
		je	..@j5604
..@j5608:
		test	ax,ax
		jne	..@j5609
		cmp	dx,4
		je	..@j5600
..@j5609:
		test	ax,ax
		jne	..@j5610
		cmp	dx,5
		je	..@j5602
..@j5610:
		jmp	..@j5598
..@j5599:
		push	word [bp+12]
		push	word [bp+10]
		push	word [bp+4]
		call	CLASSES$_$TFPLIST_$__$$_DOCOPY$TFPLIST$TFPLIST
		jmp	..@j5597
..@j5600:
		push	word [bp+12]
		push	word [bp+10]
		push	word [bp+4]
		call	CLASSES$_$TFPLIST_$__$$_DOSRCUNIQUE$TFPLIST$TFPLIST
		jmp	..@j5597
..@j5601:
		push	word [bp+12]
		push	word [bp+10]
		push	word [bp+4]
		call	CLASSES$_$TFPLIST_$__$$_DOAND$TFPLIST$TFPLIST
		jmp	..@j5597
..@j5602:
		push	word [bp+12]
		push	word [bp+10]
		push	word [bp+4]
		call	CLASSES$_$TFPLIST_$__$$_DODESTUNIQUE$TFPLIST$TFPLIST
		jmp	..@j5597
..@j5603:
		push	word [bp+12]
		push	word [bp+10]
		push	word [bp+4]
		call	CLASSES$_$TFPLIST_$__$$_DOOR$TFPLIST$TFPLIST
		jmp	..@j5597
..@j5604:
		push	word [bp+12]
		push	word [bp+10]
		push	word [bp+4]
		call	CLASSES$_$TFPLIST_$__$$_DOXOR$TFPLIST$TFPLIST
		jmp	..@j5597
..@j5598:
..@j5597:
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	CLASSES$_$TFPLIST_$__$$_DOXOR$TFPLIST$TFPLIST
EXTERN	CLASSES$_$TFPLIST_$__$$_DOOR$TFPLIST$TFPLIST
EXTERN	CLASSES$_$TFPLIST_$__$$_DODESTUNIQUE$TFPLIST$TFPLIST
EXTERN	CLASSES$_$TFPLIST_$__$$_DOAND$TFPLIST$TFPLIST
EXTERN	CLASSES$_$TFPLIST_$__$$_DOSRCUNIQUE$TFPLIST$TFPLIST
EXTERN	CLASSES$_$TFPLIST_$__$$_DOCOPY$TFPLIST$TFPLIST
