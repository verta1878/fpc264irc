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
	GLOBAL SYSTEM_$$_DO_READ$WORD$POINTER$LONGINT$$LONGINT
SYSTEM_$$_DO_READ$WORD$POINTER$LONGINT$$LONGINT:
		push	bp
		mov	bp,sp
		sub	sp,24
		mov	byte [bp-23],63
		mov	ax,word [bp+10]
		mov	word [bp-22],ax
		mov	ax,word [bp+4]
		mov	word [bp-20],ax
		mov	ax,word [bp+8]
		mov	ax,ds
		mov	word [bp-10],ax
		mov	ax,word [bp+8]
		mov	word [bp-18],ax
		lea	ax,[bp-24]
		push	ax
		call	FPC_MSDOS
		mov	ax,word [bp-6]
		and	ax,1
		test	ax,ax
		jne	..@j20466
		jmp	..@j20467
..@j20466:
		push	word [bp-24]
		call	SYSTEM_$$_GETINOUTRES$WORD
		mov	word [bp-4],0
		mov	word [bp-2],0
		jmp	..@j20452
..@j20467:
		mov	ax,word [bp-24]
		mov	dx,0
		mov	word [bp-4],ax
		mov	word [bp-2],dx
..@j20452:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	SYSTEM_$$_GETINOUTRES$WORD
EXTERN	FPC_MSDOS
