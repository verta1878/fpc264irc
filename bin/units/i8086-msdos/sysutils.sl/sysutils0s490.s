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
	GLOBAL SYSUTILS_$$_FILESETATTR$RAWBYTESTRING$LONGINT$$LONGINT
SYSUTILS_$$_FILESETATTR$RAWBYTESTRING$LONGINT$$LONGINT:
		push	bp
		mov	bp,sp
		sub	sp,24
		mov	ax,word [bp+8]
		test	ax,ax
		jne	..@j15651
		mov	ax,word FPC_EMPTYCHAR
..@j15651:
		mov	word [bp-18],ax
		mov	ax,word [bp+8]
		test	ax,ax
		jne	..@j15654
		mov	ax,word FPC_EMPTYCHAR
..@j15654:
		mov	ax,ds
		mov	word [bp-10],ax
		cmp	byte [U_$SYSTEM_$$_LFNSUPPORT],0
		jne	..@j15655
		jmp	..@j15656
..@j15655:
		mov	word [bp-24],28995
		mov	word [bp-22],1
		jmp	..@j15661
..@j15656:
		mov	word [bp-24],17153
..@j15661:
		mov	ax,word [bp+4]
		mov	word [bp-20],ax
		mov	ax,33
		push	ax
		lea	ax,[bp-24]
		push	ax
		call	FPC_INTR
		mov	ax,word [bp-6]
		and	ax,1
		test	ax,ax
		jne	..@j15670
		jmp	..@j15671
..@j15670:
		mov	ax,word [bp-24]
		neg	ax
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-4],cx
		mov	word [bp-2],ax
		jmp	..@j15674
..@j15671:
		mov	word [bp-4],0
		mov	word [bp-2],0
..@j15674:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	FPC_INTR
EXTERN	U_$SYSTEM_$$_LFNSUPPORT
EXTERN	FPC_EMPTYCHAR
