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
	GLOBAL fpc_pchar_length
fpc_pchar_length:
	GLOBAL FPC_PCHAR_LENGTH
FPC_PCHAR_LENGTH:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	word [bp-4],0
		cmp	word [bp+4],0
		jne	..@j1384
		jmp	..@j1385
..@j1384:
		jmp	..@j1387
	ALIGN 2
..@j1386:
		inc	word [bp-4]
..@j1387:
		mov	bx,word [bp+4]
		mov	si,word [bp-4]
		cmp	byte [bx+si],0
		jne	..@j1386
		jmp	..@j1388
..@j1388:
..@j1385:
		mov	ax,word [bp-4]
		mov	word [bp-2],ax
		jmp	..@j1380
..@j1380:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
