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
	GLOBAL fpc_read_text_char_iso
fpc_read_text_char_iso:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+4]
		mov	byte [bx],32
		mov	ax,word [bp+6]
		push	ax
		call	SYSTEM_$$_CHECKREAD$TEXT$$BOOLEAN
		test	al,al
		je	..@j23397
		jmp	..@j23398
..@j23397:
		jmp	..@j23393
..@j23398:
		mov	bx,word [bp+6]
		mov	si,word [bp+6]
		mov	ax,word [bx+10]
		cmp	ax,word [si+12]
		jge	..@j23401
		jmp	..@j23402
..@j23401:
		mov	bx,word [bp+4]
		mov	byte [bx],32
		jmp	..@j23393
..@j23402:
		mov	bx,word [bp+6]
		mov	bx,word [bx+14]
		mov	si,word [bp+6]
		mov	si,word [si+10]
		mov	di,word [bp+4]
		mov	al,byte [bx+si]
		mov	byte [di],al
		mov	bx,word [bp+6]
		inc	word [bx+10]
		mov	bx,word [bp+4]
		cmp	byte [bx],13
		je	..@j23407
		jmp	..@j23408
..@j23407:
		mov	bx,word [bp+4]
		mov	byte [bx],32
		mov	ax,word [bp+6]
		push	ax
		call	SYSTEM_$$_CHECKREAD$TEXT$$BOOLEAN
		test	al,al
		je	..@j23411
		jmp	..@j23413
..@j23413:
		mov	bx,word [bp+6]
		mov	si,word [bp+6]
		mov	ax,word [bx+10]
		cmp	ax,word [si+12]
		jge	..@j23411
		jmp	..@j23412
..@j23411:
		jmp	..@j23393
..@j23412:
		mov	bx,word [bp+6]
		mov	bx,word [bx+14]
		mov	si,word [bp+6]
		mov	si,word [si+10]
		cmp	byte [bx+si],10
		je	..@j23416
		jmp	..@j23417
..@j23416:
		mov	bx,word [bp+6]
		inc	word [bx+10]
..@j23417:
		mov	ax,word [bp+6]
		push	ax
		call	SYSTEM_$$_CHECKREAD$TEXT$$BOOLEAN
		test	al,al
		je	..@j23418
		jmp	..@j23420
..@j23420:
		mov	bx,word [bp+6]
		mov	si,word [bp+6]
		mov	ax,word [bx+10]
		cmp	ax,word [si+12]
		jge	..@j23418
		jmp	..@j23419
..@j23418:
		jmp	..@j23393
..@j23419:
		mov	bx,word [bp+6]
		mov	bx,word [bx+14]
		mov	si,word [bp+6]
		mov	si,word [si+10]
		cmp	byte [bx+si],26
		je	..@j23423
		jmp	..@j23424
..@j23423:
		mov	bx,word [bp+6]
		inc	word [bx+10]
..@j23424:
		jmp	..@j23425
..@j23408:
		mov	bx,word [bp+4]
		cmp	byte [bx],10
		je	..@j23426
		jmp	..@j23427
..@j23426:
		mov	bx,word [bp+4]
		mov	byte [bx],32
		mov	ax,word [bp+6]
		push	ax
		call	SYSTEM_$$_CHECKREAD$TEXT$$BOOLEAN
		test	al,al
		je	..@j23430
		jmp	..@j23432
..@j23432:
		mov	bx,word [bp+6]
		mov	si,word [bp+6]
		mov	ax,word [bx+10]
		cmp	ax,word [si+12]
		jge	..@j23430
		jmp	..@j23431
..@j23430:
		jmp	..@j23393
..@j23431:
		mov	bx,word [bp+6]
		mov	bx,word [bx+14]
		mov	si,word [bp+6]
		mov	si,word [si+10]
		cmp	byte [bx+si],26
		je	..@j23435
		jmp	..@j23436
..@j23435:
		mov	bx,word [bp+6]
		inc	word [bx+10]
..@j23436:
		jmp	..@j23437
..@j23427:
		mov	bx,word [bp+4]
		cmp	byte [bx],26
		je	..@j23438
		jmp	..@j23439
..@j23438:
		mov	bx,word [bp+4]
		mov	byte [bx],32
..@j23439:
..@j23437:
..@j23425:
..@j23393:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM_$$_CHECKREAD$TEXT$$BOOLEAN
