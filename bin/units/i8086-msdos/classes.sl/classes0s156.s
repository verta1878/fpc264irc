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
	GLOBAL CLASSES$_$TPARSER_$__$$_ERRORSTR$ANSISTRING
CLASSES$_$TPARSER_$__$$_ERRORSTR$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,34
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
		jne	..@j3595
..@j3597:
		mov	ax,word VMT_$CLASSES_$$_EPARSERERROR
		push	ax
		mov	ax,1
		push	ax
		lea	ax,[bp-16]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-16]
		push	ax
		push	word [bp+4]
		push	word [RESSTR_$RTLCONSTS_$$_SPARLOCINFO+2]
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat
		push	word [bp-16]
		mov	bx,word [bp+6]
		mov	ax,word [bx+13]
		cwd
		mov	word [bp-32],ax
		mov	word [bp-30],dx
		mov	word [bp-34],0
		mov	bx,word [bp+6]
		mov	si,word [bp+6]
		mov	dx,word [bx+8]
		mov	ax,word [si+10]
		add	ax,dx
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-26],cx
		mov	word [bp-24],ax
		mov	word [bp-28],0
		push	word [bp+6]
		call	CLASSES$_$TPARSER_$__$$_SOURCEPOS$$LONGINT
		mov	word [bp-20],ax
		mov	word [bp-18],dx
		mov	word [bp-22],0
		lea	ax,[bp-34]
		push	ax
		mov	ax,2
		push	ax
		call	SYSUTILS$_$EXCEPTION_$__$$_CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
		push	ax
		mov	ax,word ..@j3597
		push	ax
		push	bp
		call	fpc_raiseexception
..@j3595:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-16]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j3596
		call	FPC_RERAISE
..@j3596:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_RERAISE
EXTERN	FPC_POPADDRSTACK
EXTERN	fpc_raiseexception
EXTERN	SYSUTILS$_$EXCEPTION_$__$$_CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
EXTERN	CLASSES$_$TPARSER_$__$$_SOURCEPOS$$LONGINT
EXTERN	fpc_ansistr_concat
EXTERN	RESSTR_$RTLCONSTS_$$_SPARLOCINFO
EXTERN	fpc_ansistr_decr_ref
EXTERN	VMT_$CLASSES_$$_EPARSERERROR
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
