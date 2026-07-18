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
	GLOBAL fpc_setupreadstr_ansistr
fpc_setupreadstr_ansistr:
	GLOBAL FPC_SETUPREADSTR_ANSISTR
FPC_SETUPREADSTR_ANSISTR:
		push	bp
		mov	bp,sp
		mov	ax,word [bp+6]
		push	ax
		push	word [bp+4]
		call	SYSTEM_$$_STRINGCODEPAGE$RAWBYTESTRING$$WORD
		push	ax
		call	SYSTEM_$$_SETUPREADSTRCOMMON$TEXTREC$WORD
		mov	bx,word [bp+6]
		lea	ax,[bx+24]
		push	ax
		push	word [bp+4]
		call	fpc_ansistr_assign
		mov	bx,word [bp+6]
		mov	ax,word SYSTEM_$$_READSTRANSI$TEXTREC
		mov	word [bx+18],ax
		mov	bx,word [bp+6]
		mov	ax,word SYSTEM_$$_READANSISTRFINAL$TEXTREC
		mov	word [bx+20],ax
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM_$$_READANSISTRFINAL$TEXTREC
EXTERN	SYSTEM_$$_READSTRANSI$TEXTREC
EXTERN	fpc_ansistr_assign
EXTERN	SYSTEM_$$_SETUPREADSTRCOMMON$TEXTREC$WORD
EXTERN	SYSTEM_$$_STRINGCODEPAGE$RAWBYTESTRING$$WORD
