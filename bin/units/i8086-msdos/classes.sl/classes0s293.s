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
	GLOBAL CLASSES$_$TLIST_$__$$_ASSIGN$TLIST$TLISTASSIGNOP$TLIST
CLASSES$_$TLIST_$__$$_ASSIGN$TLIST$TLISTASSIGNOP$TLIST:
		push	bp
		mov	bp,sp
		mov	dx,word [bp+6]
		mov	ax,word [bp+8]
		test	ax,ax
		jne	..@j6569
		test	dx,dx
		je	..@j6563
..@j6569:
		test	ax,ax
		jne	..@j6570
		cmp	dx,1
		je	..@j6565
..@j6570:
		test	ax,ax
		jne	..@j6571
		cmp	dx,2
		je	..@j6567
..@j6571:
		test	ax,ax
		jne	..@j6572
		cmp	dx,3
		je	..@j6568
..@j6572:
		test	ax,ax
		jne	..@j6573
		cmp	dx,4
		je	..@j6564
..@j6573:
		test	ax,ax
		jne	..@j6574
		cmp	dx,5
		je	..@j6566
..@j6574:
		jmp	..@j6562
..@j6563:
		push	word [bp+12]
		push	word [bp+10]
		push	word [bp+4]
		call	CLASSES$_$TLIST_$__$$_DOCOPY$TLIST$TLIST
		jmp	..@j6561
..@j6564:
		push	word [bp+12]
		push	word [bp+10]
		push	word [bp+4]
		call	CLASSES$_$TLIST_$__$$_DOSRCUNIQUE$TLIST$TLIST
		jmp	..@j6561
..@j6565:
		push	word [bp+12]
		push	word [bp+10]
		push	word [bp+4]
		call	CLASSES$_$TLIST_$__$$_DOAND$TLIST$TLIST
		jmp	..@j6561
..@j6566:
		push	word [bp+12]
		push	word [bp+10]
		push	word [bp+4]
		call	CLASSES$_$TLIST_$__$$_DODESTUNIQUE$TLIST$TLIST
		jmp	..@j6561
..@j6567:
		push	word [bp+12]
		push	word [bp+10]
		push	word [bp+4]
		call	CLASSES$_$TLIST_$__$$_DOOR$TLIST$TLIST
		jmp	..@j6561
..@j6568:
		push	word [bp+12]
		push	word [bp+10]
		push	word [bp+4]
		call	CLASSES$_$TLIST_$__$$_DOXOR$TLIST$TLIST
		jmp	..@j6561
..@j6562:
..@j6561:
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	CLASSES$_$TLIST_$__$$_DOXOR$TLIST$TLIST
EXTERN	CLASSES$_$TLIST_$__$$_DOOR$TLIST$TLIST
EXTERN	CLASSES$_$TLIST_$__$$_DODESTUNIQUE$TLIST$TLIST
EXTERN	CLASSES$_$TLIST_$__$$_DOAND$TLIST$TLIST
EXTERN	CLASSES$_$TLIST_$__$$_DOSRCUNIQUE$TLIST$TLIST
EXTERN	CLASSES$_$TLIST_$__$$_DOCOPY$TLIST$TLIST
