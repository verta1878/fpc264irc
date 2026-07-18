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
	GLOBAL SYSUTILS_$$_GETEXTENDEDCOUNTRYINFO$SMALLINT$WORD$WORD$TCOUNTRYINFO
SYSUTILS_$$_GETEXTENDEDCOUNTRYINFO$SMALLINT$WORD$WORD$TCOUNTRYINFO:
		push	bp
		mov	bp,sp
		sub	sp,20
		mov	byte [bp-19],101
		mov	al,byte [bp+10]
		mov	byte [bp-20],al
		mov	ax,word [bp+8]
		mov	word [bp-18],ax
		mov	ax,word [bp+6]
		mov	word [bp-14],ax
		mov	ax,word [bp+4]
		mov	ax,ds
		mov	word [bp-4],ax
		mov	ax,word [bp+4]
		mov	word [bp-8],ax
		mov	word [bp-16],41
		mov	ax,33
		push	ax
		lea	ax,[bp-20]
		push	ax
		call	FPC_INTR
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	FPC_INTR
