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
	GLOBAL SYSTEM_$$_EOF$TEXT$$BOOLEAN
SYSTEM_$$_EOF$TEXT$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j21374
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j21375
..@j21374:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j21375:
		cmp	word [bx],0
		jne	..@j21372
		jmp	..@j21373
..@j21372:
		mov	byte [bp-1],1
		jmp	..@j21370
..@j21373:
		mov	bx,word [bp+4]
		mov	dx,word [bx+2]
		mov	ax,word [bx+4]
		cmp	ax,0
		jne	..@j21378
		cmp	dx,-10319
		jne	..@j21378
		jmp	..@j21379
..@j21378:
		mov	bx,word [bp+4]
		mov	dx,word [bx+2]
		mov	ax,word [bx+4]
		cmp	ax,0
		jne	..@j21381
		cmp	dx,-10318
		jne	..@j21381
		jmp	..@j21380
..@j21380:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j21384
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j21385
..@j21384:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j21385:
		mov	word [bx],104
		jmp	..@j21386
..@j21381:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j21389
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j21390
..@j21389:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j21390:
		mov	word [bx],103
..@j21386:
		mov	byte [bp-1],1
		jmp	..@j21370
..@j21379:
		mov	bx,word [bp+4]
		mov	si,word [bp+4]
		mov	ax,word [bx+10]
		cmp	ax,word [si+12]
		jge	..@j21393
		jmp	..@j21394
..@j21393:
		mov	ax,word [bp+4]
		push	ax
		mov	bx,word [bp+4]
		mov	ax,word [bx+18]
		call	ax
		mov	bx,word [bp+4]
		mov	si,word [bp+4]
		mov	ax,word [bx+10]
		cmp	ax,word [si+12]
		jge	..@j21397
		jmp	..@j21398
..@j21397:
		mov	byte [bp-1],1
		jmp	..@j21370
..@j21398:
..@j21394:
		cmp	byte [TC_$SYSTEM_$$_CTRLZMARKSEOF],0
		jne	..@j21403
		jmp	..@j21402
..@j21403:
		mov	bx,word [bp+4]
		mov	bx,word [bx+14]
		mov	si,word [bp+4]
		mov	si,word [si+10]
		cmp	byte [bx+si],26
		je	..@j21401
		jmp	..@j21402
..@j21401:
		mov	byte [bp-1],1
		jmp	..@j21404
..@j21402:
		mov	byte [bp-1],0
..@j21404:
..@j21370:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	TC_$SYSTEM_$$_CTRLZMARKSEOF
EXTERN	U_$SYSTEM_$$_INOUTRES
EXTERN	FPC_THREADVAR_RELOCATE
