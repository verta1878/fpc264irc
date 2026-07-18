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
	GLOBAL fpc_mul_word
fpc_mul_word:
	GLOBAL FPC_MUL_WORD
FPC_MUL_WORD:
		push	bp
		mov	bp,sp
		sub	sp,8
		mov	word [bp-2],0
		mov	word [bp-6],1
		mov	byte [bp-8],0
		mov	byte [bp-7],0
		dec	byte [bp-7]
	ALIGN 2
..@j1464:
		inc	byte [bp-7]
		mov	dx,word [bp+6]
		mov	ax,word [bp-6]
		and	ax,dx
		test	ax,ax
		jne	..@j1465
		jmp	..@j1466
..@j1465:
		mov	ax,word [bp-2]
		mov	word [bp-4],ax
		mov	dx,word [bp-2]
		mov	ax,word [bp+8]
		add	ax,dx
		mov	word [bp-2],ax
		cmp	byte [bp+4],0
		jne	..@j1473
		jmp	..@j1472
..@j1473:
		cmp	byte [bp-8],0
		jne	..@j1471
		jmp	..@j1474
..@j1474:
		cmp	word [bp-4],0
		jne	..@j1476
		jmp	..@j1472
..@j1476:
		cmp	word [bp+8],0
		jne	..@j1475
		jmp	..@j1472
..@j1475:
		mov	ax,word [bp-4]
		cmp	ax,word [bp-2]
		ja	..@j1471
		jmp	..@j1477
..@j1477:
		mov	ax,word [bp+8]
		cmp	ax,word [bp-2]
		ja	..@j1471
		jmp	..@j1472
..@j1471:
		mov	ax,0
		push	ax
		mov	ax,215
		push	ax
		call	SYSTEM_$$_GET_PC_ADDR$$NEARPOINTER
		push	ax
		push	bp
		call	SYSTEM_$$_HANDLEERRORADDRFRAMEIND$LONGINT$NEARPOINTER$POINTER
..@j1472:
..@j1466:
		cmp	byte [bp-8],0
		jne	..@j1484
		jmp	..@j1486
..@j1486:
		mov	ax,word [bp+8]
		and	ax,-32768
		test	ax,ax
		jne	..@j1484
		jmp	..@j1485
..@j1484:
		mov	byte [bp-8],1
		jmp	..@j1487
..@j1485:
		mov	byte [bp-8],0
..@j1487:
		mov	ax,word [bp+8]
		shl	ax,1
		mov	word [bp+8],ax
		mov	ax,word [bp-6]
		shl	ax,1
		mov	word [bp-6],ax
		cmp	byte [bp-7],15
		jb	..@j1464
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	SYSTEM_$$_HANDLEERRORADDRFRAMEIND$LONGINT$NEARPOINTER$POINTER
EXTERN	SYSTEM_$$_GET_PC_ADDR$$NEARPOINTER
