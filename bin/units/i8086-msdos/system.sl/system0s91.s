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
	GLOBAL fpc_pwidechar_length
fpc_pwidechar_length:
	GLOBAL FPC_PWIDECHAR_LENGTH
FPC_PWIDECHAR_LENGTH:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	word [bp-4],0
		cmp	word [bp+4],0
		jne	..@j1395
		jmp	..@j1396
..@j1395:
		jmp	..@j1398
	ALIGN 2
..@j1397:
		inc	word [bp-4]
..@j1398:
		mov	bx,word [bp+4]
		mov	ax,word [bp-4]
		mov	si,ax
		shl	si,1
		cmp	word [bx+si],0
		jne	..@j1397
		jmp	..@j1399
..@j1399:
..@j1396:
		mov	ax,word [bp-4]
		mov	word [bp-2],ax
		jmp	..@j1391
..@j1391:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
