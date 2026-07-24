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
	GLOBAL SYSUTILS_$$_DGETAPPCONFIGFILE$BOOLEAN$BOOLEAN$$ANSISTRING
SYSUTILS_$$_DGETAPPCONFIGFILE$BOOLEAN$BOOLEAN$$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,24
		mov	word [bp-18],0
		mov	word [bp-16],0
		mov	ax,1
		push	ax
		lea	ax,[bp-12]
		push	ax
		lea	ax,[bp-6]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j13328
		mov	ax,word [bp+8]
		push	ax
		lea	ax,[bp-16]
		push	ax
		mov	al,byte [bp+6]
		mov	ah,0
		push	ax
		call	SYSUTILS_$$_GETAPPCONFIGDIR$BOOLEAN$$ANSISTRING
		push	word [bp-16]
		call	SYSUTILS_$$_INCLUDETRAILINGPATHDELIMITER$RAWBYTESTRING$$RAWBYTESTRING
		cmp	byte [bp+4],0
		jne	..@j13338
		jmp	..@j13339
..@j13338:
		mov	ax,word [bp+8]
		push	ax
		lea	ax,[bp-18]
		push	ax
		lea	ax,[bp-16]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-16]
		push	ax
		mov	bx,word [bp+8]
		push	word [bx]
		mov	ax,word _$SYSUTILS$_Ld675
		push	ax
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat
		push	word [bp-16]
		call	SYSUTILS_$$_INCLUDETRAILINGPATHDELIMITER$RAWBYTESTRING$$RAWBYTESTRING
		push	word [bp-18]
		call	fpc_ansistr_assign
..@j13339:
		mov	ax,word [bp+8]
		push	ax
		mov	bx,word [bp+8]
		mov	ax,word [bx]
		mov	word [bp-24],ax
		lea	ax,[bp-16]
		push	ax
		call	SYSUTILS_$$_APPLICATIONNAME$$ANSISTRING
		mov	ax,word [bp-16]
		mov	word [bp-22],ax
		mov	ax,word [TC_$SYSUTILS_$$_CONFIGEXTENSION]
		mov	word [bp-20],ax
		lea	ax,[bp-24]
		push	ax
		mov	ax,2
		push	ax
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat_multi
..@j13328:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-18]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-16]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j13329
		call	FPC_RERAISE
..@j13329:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	FPC_RERAISE
EXTERN	FPC_POPADDRSTACK
EXTERN	fpc_ansistr_concat_multi
EXTERN	TC_$SYSUTILS_$$_CONFIGEXTENSION
EXTERN	SYSUTILS_$$_APPLICATIONNAME$$ANSISTRING
EXTERN	fpc_ansistr_assign
EXTERN	fpc_ansistr_concat
EXTERN	_$SYSUTILS$_Ld675
EXTERN	fpc_ansistr_decr_ref
EXTERN	SYSUTILS_$$_INCLUDETRAILINGPATHDELIMITER$RAWBYTESTRING$$RAWBYTESTRING
EXTERN	SYSUTILS_$$_GETAPPCONFIGDIR$BOOLEAN$$ANSISTRING
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
