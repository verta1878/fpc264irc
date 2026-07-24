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
	GLOBAL SYSUTILS_$$_DELETEFILE$RAWBYTESTRING$$BOOLEAN
SYSUTILS_$$_DELETEFILE$RAWBYTESTRING$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,22
		mov	ax,word [bp+4]
		test	ax,ax
		jne	..@j15681
		mov	ax,word FPC_EMPTYCHAR
..@j15681:
		mov	word [bp-16],ax
		mov	ax,word [bp+4]
		test	ax,ax
		jne	..@j15684
		mov	ax,word FPC_EMPTYCHAR
..@j15684:
		mov	ax,ds
		mov	word [bp-8],ax
		cmp	byte [U_$SYSTEM_$$_LFNSUPPORT],0
		jne	..@j15685
		jmp	..@j15686
..@j15685:
		mov	word [bp-22],28993
		jmp	..@j15689
..@j15686:
		mov	word [bp-22],16640
..@j15689:
		mov	word [bp-12],0
		mov	word [bp-18],0
		mov	ax,33
		push	ax
		lea	ax,[bp-22]
		push	ax
		call	FPC_INTR
		mov	ax,word [bp-4]
		and	ax,1
		test	ax,ax
		mov	al,0
		jne	..@j15702
		inc	ax
..@j15702:
		mov	byte [bp-1],al
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	FPC_INTR
EXTERN	U_$SYSTEM_$$_LFNSUPPORT
EXTERN	FPC_EMPTYCHAR
