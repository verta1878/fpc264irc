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
	GLOBAL SYSUTILS_$$_SHOWEXCEPTION$TOBJECT$POINTER
SYSUTILS_$$_SHOWEXCEPTION$TOBJECT$POINTER:
		push	bp
		mov	bp,sp
		sub	sp,258
		lea	ax,[bp-256]
		push	ax
		mov	ax,255
		push	ax
		push	word [bp+6]
		push	word [bp+4]
		lea	ax,[bp-255]
		push	ax
		mov	ax,255
		push	ax
		call	SYSUTILS_$$_EXCEPTIONERRORMESSAGE$TOBJECT$POINTER$PCHAR$SMALLINT$$SMALLINT
		push	ax
		call	fpc_shortstr_setlength
		cmp	byte [operatingsystem_isconsole],0
		jne	..@j14991
		jmp	..@j14992
..@j14991:
		call	fpc_get_output
		mov	word [bp-258],ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		push	word [bp-258]
		lea	ax,[bp-256]
		push	ax
		call	fpc_write_text_shortstr
		call	FPC_IOCHECK
		push	word [bp-258]
		call	fpc_writeln_end
		call	FPC_IOCHECK
		jmp	..@j15003
..@j14992:
		cmp	word [U_$SYSUTILS_$$_ONSHOWEXCEPTION],0
		jne	..@j15004
		jmp	..@j15005
..@j15004:
		lea	ax,[bp-256]
		push	ax
		mov	ax,word [U_$SYSUTILS_$$_ONSHOWEXCEPTION]
		call	ax
..@j15005:
..@j15003:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	U_$SYSUTILS_$$_ONSHOWEXCEPTION
EXTERN	fpc_writeln_end
EXTERN	FPC_IOCHECK
EXTERN	fpc_write_text_shortstr
EXTERN	fpc_get_output
EXTERN	operatingsystem_isconsole
EXTERN	fpc_shortstr_setlength
EXTERN	SYSUTILS_$$_EXCEPTIONERRORMESSAGE$TOBJECT$POINTER$PCHAR$SMALLINT$$SMALLINT
