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
	GLOBAL SYSUTILS_$$_RENAMEFILE$RAWBYTESTRING$RAWBYTESTRING$$BOOLEAN
SYSUTILS_$$_RENAMEFILE$RAWBYTESTRING$RAWBYTESTRING$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,22
		mov	ax,word [bp+6]
		test	ax,ax
		jne	..@j15707
		mov	ax,word FPC_EMPTYCHAR
..@j15707:
		mov	word [bp-16],ax
		mov	ax,word [bp+6]
		test	ax,ax
		jne	..@j15710
		mov	ax,word FPC_EMPTYCHAR
..@j15710:
		mov	ax,ds
		mov	word [bp-8],ax
		mov	ax,word [bp+4]
		test	ax,ax
		jne	..@j15713
		mov	ax,word FPC_EMPTYCHAR
..@j15713:
		mov	word [bp-10],ax
		mov	ax,word [bp+4]
		test	ax,ax
		jne	..@j15716
		mov	ax,word FPC_EMPTYCHAR
..@j15716:
		mov	ax,ds
		mov	word [bp-6],ax
		cmp	byte [U_$SYSTEM_$$_LFNSUPPORT],0
		jne	..@j15717
		jmp	..@j15718
..@j15717:
		mov	word [bp-22],29014
		jmp	..@j15721
..@j15718:
		mov	word [bp-22],22016
..@j15721:
		mov	word [bp-18],255
		mov	ax,33
		push	ax
		lea	ax,[bp-22]
		push	ax
		call	FPC_INTR
		mov	ax,word [bp-4]
		and	ax,1
		test	ax,ax
		mov	al,0
		jne	..@j15732
		inc	ax
..@j15732:
		mov	byte [bp-1],al
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_INTR
EXTERN	U_$SYSTEM_$$_LFNSUPPORT
EXTERN	FPC_EMPTYCHAR
