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
	GLOBAL SYSTEM_$$_DO_TRUNCATE$WORD$LONGINT
SYSTEM_$$_DO_TRUNCATE$WORD$LONGINT:
		push	bp
		mov	bp,sp
		sub	sp,20
		push	word [bp+8]
		push	word [bp+6]
		push	word [bp+4]
		call	SYSTEM_$$_DO_SEEK$WORD$LONGINT
		mov	word [bp-16],0
		mov	ax,word [bp+8]
		mov	word [bp-18],ax
		mov	word [bp-20],16384
		lea	ax,[bp-20]
		push	ax
		call	FPC_MSDOS
		mov	ax,word [bp-2]
		and	ax,1
		test	ax,ax
		jne	..@j20560
		jmp	..@j20561
..@j20560:
		push	word [bp-20]
		call	SYSTEM_$$_GETINOUTRES$WORD
..@j20561:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	SYSTEM_$$_GETINOUTRES$WORD
EXTERN	FPC_MSDOS
EXTERN	SYSTEM_$$_DO_SEEK$WORD$LONGINT
