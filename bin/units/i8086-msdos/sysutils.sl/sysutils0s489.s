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
	GLOBAL SYSUTILS_$$_FILEGETATTR$RAWBYTESTRING$$LONGINT
SYSUTILS_$$_FILEGETATTR$RAWBYTESTRING$$LONGINT:
		push	bp
		mov	bp,sp
		sub	sp,24
		mov	ax,word [bp+4]
		test	ax,ax
		jne	..@j15623
		mov	ax,word FPC_EMPTYCHAR
..@j15623:
		mov	word [bp-18],ax
		mov	ax,word [bp+4]
		test	ax,ax
		jne	..@j15626
		mov	ax,word FPC_EMPTYCHAR
..@j15626:
		mov	ax,ds
		mov	word [bp-10],ax
		cmp	byte [U_$SYSTEM_$$_LFNSUPPORT],0
		jne	..@j15627
		jmp	..@j15628
..@j15627:
		mov	word [bp-24],28995
		mov	word [bp-22],0
		jmp	..@j15633
..@j15628:
		mov	word [bp-24],17152
..@j15633:
		mov	ax,33
		push	ax
		lea	ax,[bp-24]
		push	ax
		call	FPC_INTR
		mov	ax,word [bp-6]
		and	ax,1
		test	ax,ax
		jne	..@j15640
		jmp	..@j15641
..@j15640:
		mov	word [bp-4],-1
		mov	word [bp-2],-1
		jmp	..@j15644
..@j15641:
		mov	ax,word [bp-20]
		mov	dx,0
		mov	word [bp-4],ax
		mov	word [bp-2],dx
..@j15644:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	FPC_INTR
EXTERN	U_$SYSTEM_$$_LFNSUPPORT
EXTERN	FPC_EMPTYCHAR
