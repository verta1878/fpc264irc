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
	GLOBAL SYSUTILS_$$_TIMETOSTR$TDATETIME$TFORMATSETTINGS$$ANSISTRING
SYSUTILS_$$_TIMETOSTR$TDATETIME$TFORMATSETTINGS$$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	ax,word [bp+14]
		mov	word [bp-2],ax
		push	word [bp-2]
		call	fpc_ansistr_decr_ref
		push	word [bp-2]
		mov	bx,word [bp+4]
		push	word [bx+20]
		sub	sp,8
		mov	di,sp
		push	ds
		pop	es
		lea	si,[bp+6]
		cld
		mov	cx,4
		rep
		movsw
		mov	ax,word [bp+4]
		push	ax
		mov	ax,0
		push	ax
		call	SYSUTILS_$$_DATETIMETOSTRING$crcFCD1FCF1
		mov	sp,bp
		pop	bp
		ret	12
EXTERN	SYSUTILS_$$_DATETIMETOSTRING$crcFCD1FCF1
EXTERN	fpc_ansistr_decr_ref
