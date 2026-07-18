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
	GLOBAL fpc_mul_integer
fpc_mul_integer:
	GLOBAL FPC_MUL_INTEGER
FPC_MUL_INTEGER:
		push	bp
		mov	bp,sp
		sub	sp,10
		cmp	byte [bp+4],0
		je	..@j1404
		jmp	..@j1405
..@j1404:
		mov	ax,word [bp+6]
		mul	word [bp+8]
		mov	word [bp-2],ax
		jmp	..@j1408
..@j1405:
		mov	byte [bp-3],0
		cmp	word [bp+8],0
		jl	..@j1411
		jmp	..@j1412
..@j1411:
		cmp	byte [bp-3],0
		mov	al,0
		jne	..@j1415
		inc	ax
..@j1415:
		mov	byte [bp-3],al
		mov	ax,word [bp+8]
		neg	ax
		mov	word [bp-6],ax
		jmp	..@j1418
..@j1412:
		mov	ax,word [bp+8]
		mov	word [bp-6],ax
..@j1418:
		cmp	word [bp+6],0
		jl	..@j1421
		jmp	..@j1422
..@j1421:
		cmp	byte [bp-3],0
		mov	al,0
		jne	..@j1425
		inc	ax
..@j1425:
		mov	byte [bp-3],al
		mov	ax,word [bp+6]
		neg	ax
		mov	word [bp-8],ax
		jmp	..@j1428
..@j1422:
		mov	ax,word [bp+6]
		mov	word [bp-8],ax
..@j1428:
		mov	ax,word [bp-8]
		mul	word [bp-6]
		mov	word [bp-10],ax
		cmp	word [bp-6],0
		jne	..@j1436
		jmp	..@j1434
..@j1436:
		cmp	word [bp-8],0
		jne	..@j1435
		jmp	..@j1434
..@j1435:
		mov	ax,word [bp-6]
		cmp	ax,word [bp-10]
		ja	..@j1433
		jmp	..@j1438
..@j1438:
		mov	ax,word [bp-8]
		cmp	ax,word [bp-10]
		ja	..@j1433
		jmp	..@j1437
..@j1437:
		mov	ax,word [bp-10]
		mov	cl,15
		shr	ax,cl
		test	ax,ax
		jne	..@j1439
		jmp	..@j1434
..@j1439:
		cmp	word [bp-10],-32768
		jne	..@j1433
		jmp	..@j1440
..@j1440:
		cmp	byte [bp-3],0
		je	..@j1433
		jmp	..@j1434
..@j1433:
		mov	ax,0
		push	ax
		mov	ax,215
		push	ax
		call	SYSTEM_$$_GET_PC_ADDR$$NEARPOINTER
		push	ax
		push	bp
		call	SYSTEM_$$_HANDLEERRORADDRFRAMEIND$LONGINT$NEARPOINTER$POINTER
..@j1434:
		cmp	byte [bp-3],0
		jne	..@j1447
		jmp	..@j1448
..@j1447:
		mov	ax,word [bp-10]
		neg	ax
		mov	word [bp-2],ax
		jmp	..@j1451
..@j1448:
		mov	ax,word [bp-10]
		mov	word [bp-2],ax
..@j1451:
..@j1408:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	SYSTEM_$$_HANDLEERRORADDRFRAMEIND$LONGINT$NEARPOINTER$POINTER
EXTERN	SYSTEM_$$_GET_PC_ADDR$$NEARPOINTER
