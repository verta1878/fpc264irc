BITS 16
CPU 8086
SECTION .text use16 class=code
SECTION .rodata class=data
SECTION .data class=data
SECTION .fpc class=data
SECTION .bss class=bss
SECTION stack stack class=stack align=16
SECTION heap class=heap align=16
GROUP dgroup rodata data fpc bss stack heap
SECTION .text

SECTION .text
	ALIGN 2
	GLOBAL CLASSES$_$TREADER_$__$$_READUNICODECHAR$$WIDECHAR
CLASSES$_$TREADER_$__$$_READUNICODECHAR$$WIDECHAR:
		push	bp
		mov	bp,sp
		sub	sp,18
		mov	word [bp-4],0
		mov	ax,1
		push	ax
		lea	ax,[bp-16]
		push	ax
		lea	ax,[bp-10]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j18930
		push	word [bp+4]
		lea	ax,[bp-4]
		push	ax
		call	CLASSES$_$TREADER_$__$$_READUNICODESTRING$$UNICODESTRING
		mov	bx,word [bp-4]
		test	bx,bx
		je	..@j18938
		mov	bx,word [bx-2]
..@j18938:
		cmp	bx,1
		je	..@j18936
		jmp	..@j18937
..@j18936:
		mov	bx,word [bp-4]
		mov	ax,word [bx]
		mov	word [bp-2],ax
		jmp	..@j18941
..@j18937:
..@j18942:
		mov	ax,word VMT_$CLASSES_$$_EREADERROR
		push	ax
		mov	ax,1
		push	ax
		push	word [RESSTR_$RTLCONSTS_$$_SINVALIDPROPERTYVALUE+2]
		call	SYSUTILS$_$EXCEPTION_$__$$_CREATE$ANSISTRING$$EXCEPTION
		push	ax
		mov	ax,word ..@j18942
		push	ax
		push	bp
		call	fpc_raiseexception
..@j18941:
..@j18930:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-4]
		push	ax
		call	fpc_unicodestr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j18931
		call	FPC_RERAISE
..@j18931:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	FPC_RERAISE
EXTERN	fpc_unicodestr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	fpc_raiseexception
EXTERN	SYSUTILS$_$EXCEPTION_$__$$_CREATE$ANSISTRING$$EXCEPTION
EXTERN	RESSTR_$RTLCONSTS_$$_SINVALIDPROPERTYVALUE
EXTERN	VMT_$CLASSES_$$_EREADERROR
EXTERN	CLASSES$_$TREADER_$__$$_READUNICODESTRING$$UNICODESTRING
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
