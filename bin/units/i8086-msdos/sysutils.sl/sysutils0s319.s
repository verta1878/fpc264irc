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
	GLOBAL SYSUTILS_$$_FORMATDATETIME$crc318EA188
SYSUTILS_$$_FORMATDATETIME$crc318EA188:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	ax,word [bp+18]
		mov	word [bp-2],ax
		push	word [bp-2]
		call	fpc_ansistr_decr_ref
		push	word [bp-2]
		push	word [bp+16]
		sub	sp,8
		mov	di,sp
		push	ds
		pop	es
		lea	si,[bp+8]
		cld
		mov	cx,4
		rep
		movsw
		mov	ax,word [bp+6]
		push	ax
		mov	al,byte [bp+4]
		mov	ah,0
		push	ax
		call	SYSUTILS_$$_DATETIMETOSTRING$crcFCD1FCF1
		mov	sp,bp
		pop	bp
		ret	16
EXTERN	SYSUTILS_$$_DATETIMETOSTRING$crcFCD1FCF1
EXTERN	fpc_ansistr_decr_ref
