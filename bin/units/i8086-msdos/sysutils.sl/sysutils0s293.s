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
	GLOBAL SYSUTILS_$$_DATETIMETOSTR$TDATETIME$BOOLEAN$$ANSISTRING
SYSUTILS_$$_DATETIMETOSTR$TDATETIME$BOOLEAN$$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	ax,word [bp+14]
		mov	word [bp-2],ax
		push	word [bp-2]
		call	fpc_ansistr_decr_ref
		push	word [bp-2]
		mov	al,byte [bp+4]
		mov	ah,0
		mov	bx,ax
		shl	bx,1
		push	word [TC_$SYSUTILS_$$_DATETIMETOSTRFORMAT+bx]
		sub	sp,8
		mov	di,sp
		push	ds
		pop	es
		lea	si,[bp+6]
		cld
		mov	cx,4
		rep
		movsw
		mov	ax,0
		push	ax
		call	SYSUTILS_$$_DATETIMETOSTRING$ANSISTRING$ANSISTRING$TDATETIME$TFORMATDATETIMEOPTIONS
		mov	sp,bp
		pop	bp
		ret	12
EXTERN	SYSUTILS_$$_DATETIMETOSTRING$ANSISTRING$ANSISTRING$TDATETIME$TFORMATDATETIMEOPTIONS
EXTERN	TC_$SYSUTILS_$$_DATETIMETOSTRFORMAT
EXTERN	fpc_ansistr_decr_ref
