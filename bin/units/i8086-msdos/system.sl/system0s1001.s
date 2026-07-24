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
	GLOBAL SYSTEM_$$_DO_RENAME$PCHAR$PCHAR$BOOLEAN$BOOLEAN
SYSTEM_$$_DO_RENAME$PCHAR$PCHAR$BOOLEAN$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,24
		mov	ax,word [bp+10]
		mov	word [bp-22],ax
		mov	ax,word [bp+8]
		mov	word [bp-24],ax
		lea	ax,[bp+10]
		push	ax
		mov	al,byte [bp+6]
		mov	ah,0
		push	ax
		call	SYSTEM_$$_DODIRSEPARATORS$PCHAR$BOOLEAN
		lea	ax,[bp+8]
		push	ax
		mov	al,byte [bp+4]
		mov	ah,0
		push	ax
		call	SYSTEM_$$_DODIRSEPARATORS$PCHAR$BOOLEAN
		mov	ax,word [bp+10]
		mov	ax,ds
		mov	word [bp-6],ax
		mov	ax,word [bp+10]
		mov	word [bp-14],ax
		mov	ax,word [bp+8]
		mov	ax,ds
		mov	word [bp-4],ax
		mov	ax,word [bp+8]
		mov	word [bp-8],ax
		cmp	byte [U_$SYSTEM_$$_LFNSUPPORT],0
		jne	..@j20407
		jmp	..@j20408
..@j20407:
		mov	word [bp-20],29014
		jmp	..@j20411
..@j20408:
		mov	word [bp-20],22016
..@j20411:
		mov	word [bp-16],255
		lea	ax,[bp-20]
		push	ax
		call	FPC_MSDOS
		mov	ax,word [bp-2]
		and	ax,1
		test	ax,ax
		jne	..@j20418
		jmp	..@j20419
..@j20418:
		push	word [bp-20]
		call	SYSTEM_$$_GETINOUTRES$WORD
..@j20419:
		mov	ax,word [bp+10]
		cmp	ax,word [bp-22]
		jne	..@j20422
		jmp	..@j20423
..@j20422:
		push	word [bp+10]
		call	SYSTEM_$$_FREEMEM$POINTER$$WORD
..@j20423:
		mov	ax,word [bp+8]
		cmp	ax,word [bp-24]
		jne	..@j20426
		jmp	..@j20427
..@j20426:
		push	word [bp+8]
		call	SYSTEM_$$_FREEMEM$POINTER$$WORD
..@j20427:
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	SYSTEM_$$_FREEMEM$POINTER$$WORD
EXTERN	SYSTEM_$$_GETINOUTRES$WORD
EXTERN	FPC_MSDOS
EXTERN	U_$SYSTEM_$$_LFNSUPPORT
EXTERN	SYSTEM_$$_DODIRSEPARATORS$PCHAR$BOOLEAN
