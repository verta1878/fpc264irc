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
	GLOBAL SYSTEM_$$_DO_ERASE$PCHAR$BOOLEAN
SYSTEM_$$_DO_ERASE$PCHAR$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,22
		mov	ax,word [bp+6]
		mov	word [bp-22],ax
		lea	ax,[bp+6]
		push	ax
		mov	al,byte [bp+4]
		mov	ah,0
		push	ax
		call	SYSTEM_$$_DODIRSEPARATORS$PCHAR$BOOLEAN
		mov	ax,word [bp+6]
		mov	word [bp-14],ax
		mov	ax,word [bp+6]
		mov	ax,ds
		mov	word [bp-6],ax
		cmp	byte [U_$SYSTEM_$$_LFNSUPPORT],0
		jne	..@j20364
		jmp	..@j20365
..@j20364:
		mov	word [bp-20],28993
		jmp	..@j20368
..@j20365:
		mov	word [bp-20],16640
..@j20368:
		mov	word [bp-10],0
		mov	word [bp-16],0
		lea	ax,[bp-20]
		push	ax
		call	FPC_MSDOS
		mov	ax,word [bp-2]
		and	ax,1
		test	ax,ax
		jne	..@j20377
		jmp	..@j20378
..@j20377:
		push	word [bp-20]
		call	SYSTEM_$$_GETINOUTRES$WORD
..@j20378:
		mov	ax,word [bp+6]
		cmp	ax,word [bp-22]
		jne	..@j20381
		jmp	..@j20382
..@j20381:
		push	word [bp+6]
		call	SYSTEM_$$_FREEMEM$POINTER$$WORD
..@j20382:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM_$$_FREEMEM$POINTER$$WORD
EXTERN	SYSTEM_$$_GETINOUTRES$WORD
EXTERN	FPC_MSDOS
EXTERN	U_$SYSTEM_$$_LFNSUPPORT
EXTERN	SYSTEM_$$_DODIRSEPARATORS$PCHAR$BOOLEAN
