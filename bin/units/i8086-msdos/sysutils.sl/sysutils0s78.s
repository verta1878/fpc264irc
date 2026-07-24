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
	GLOBAL SYSUTILS_$$_FILESETDATE$RAWBYTESTRING$LONGINT$$LONGINT
SYSUTILS_$$_FILESETDATE$RAWBYTESTRING$LONGINT$$LONGINT:
		push	bp
		mov	bp,sp
		sub	sp,20
		push	word [bp+8]
		mov	ax,1
		push	ax
		call	SYSUTILS_$$_FILEOPEN$RAWBYTESTRING$SMALLINT$$WORD
		mov	word [bp-6],ax
		mov	ax,word [bp-6]
		cmp	ax,word [TC_$SYSUTILS_$$_FEINVALIDHANDLE]
		jne	..@j2670
		jmp	..@j2671
..@j2670:
		mov	ax,1
		push	ax
		lea	ax,[bp-18]
		push	ax
		lea	ax,[bp-12]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j2672
		push	word [bp-6]
		push	word [bp+6]
		push	word [bp+4]
		call	SYSUTILS_$$_FILESETDATE$WORD$LONGINT$$LONGINT
		mov	word [bp-4],ax
		mov	word [bp-2],dx
..@j2672:
		call	FPC_POPADDRSTACK
		push	word [bp-6]
		call	SYSUTILS_$$_FILECLOSE$WORD
		pop	ax
		test	ax,ax
		je	..@j2673
		call	FPC_RERAISE
..@j2673:
		jmp	..@j2683
..@j2671:
		mov	word [bp-4],-1
		mov	word [bp-2],-1
..@j2683:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	FPC_RERAISE
EXTERN	SYSUTILS_$$_FILECLOSE$WORD
EXTERN	FPC_POPADDRSTACK
EXTERN	SYSUTILS_$$_FILESETDATE$WORD$LONGINT$$LONGINT
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
EXTERN	TC_$SYSUTILS_$$_FEINVALIDHANDLE
EXTERN	SYSUTILS_$$_FILEOPEN$RAWBYTESTRING$SMALLINT$$WORD
