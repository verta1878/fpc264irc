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
	GLOBAL SYSTEM_$$_SYSREALLOCMEM$POINTER$WORD$$POINTER
SYSTEM_$$_SYSREALLOCMEM$POINTER$WORD$$POINTER:
		push	bp
		mov	bp,sp
		sub	sp,10
		cmp	word [bp+4],0
		je	..@j19503
		jmp	..@j19504
..@j19503:
		mov	bx,word [bp+6]
		cmp	word [bx],0
		jne	..@j19505
		jmp	..@j19506
..@j19505:
		mov	bx,word [bp+6]
		push	word [bx]
		mov	ax,word [TC_$SYSTEM_$$_MEMORYMANAGER+3]
		call	ax
		mov	bx,word [bp+6]
		mov	word [bx],0
..@j19506:
		jmp	..@j19511
..@j19504:
		mov	bx,word [bp+6]
		cmp	word [bx],0
		je	..@j19512
		jmp	..@j19513
..@j19512:
		push	word [bp+4]
		mov	ax,word [TC_$SYSTEM_$$_MEMORYMANAGER+1]
		call	ax
		mov	bx,word [bp+6]
		mov	word [bx],ax
		jmp	..@j19518
..@j19513:
		mov	ax,word [bp+6]
		push	ax
		push	word [bp+4]
		call	SYSTEM_$$_SYSTRYRESIZEMEM$POINTER$WORD$$BOOLEAN
		test	al,al
		je	..@j19519
		jmp	..@j19520
..@j19519:
		mov	bx,word [bp+6]
		push	word [bx]
		mov	ax,word [TC_$SYSTEM_$$_MEMORYMANAGER+11]
		call	ax
		mov	word [bp-6],ax
		cmp	word [bp-6],528
		jb	..@j19529
		jmp	..@j19530
..@j19529:
		mov	ax,word [bp-6]
		shl	ax,1
		add	ax,16
		mov	word [bp-4],ax
		mov	ax,word [bp+4]
		cmp	ax,word [bp-4]
		ja	..@j19533
		jmp	..@j19534
..@j19533:
		mov	ax,word [bp+4]
		mov	word [bp-4],ax
..@j19534:
		jmp	..@j19537
..@j19530:
		mov	ax,word [bp+4]
		mov	word [bp-4],ax
..@j19537:
		mov	ax,word [bp-6]
		mov	word [bp-8],ax
		mov	ax,word [bp-4]
		cmp	ax,word [bp-8]
		jb	..@j19542
		jmp	..@j19543
..@j19542:
		mov	ax,word [bp-4]
		mov	word [bp-8],ax
..@j19543:
		push	word [bp-4]
		mov	ax,word [TC_$SYSTEM_$$_MEMORYMANAGER+1]
		call	ax
		mov	word [bp-10],ax
		cmp	word [bp-10],0
		jne	..@j19550
		jmp	..@j19551
..@j19550:
		mov	bx,word [bp+6]
		mov	ax,word [bx]
		push	ax
		mov	ax,word [bp-10]
		push	ax
		push	word [bp-8]
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
..@j19551:
		mov	bx,word [bp+6]
		push	word [bx]
		mov	ax,word [TC_$SYSTEM_$$_MEMORYMANAGER+3]
		call	ax
		mov	bx,word [bp+6]
		mov	ax,word [bp-10]
		mov	word [bx],ax
..@j19520:
..@j19518:
..@j19511:
		mov	bx,word [bp+6]
		mov	ax,word [bx]
		mov	word [bp-2],ax
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
EXTERN	SYSTEM_$$_SYSTRYRESIZEMEM$POINTER$WORD$$BOOLEAN
EXTERN	TC_$SYSTEM_$$_MEMORYMANAGER
