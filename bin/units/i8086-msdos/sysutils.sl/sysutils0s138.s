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
	GLOBAL SYSUTILS_$$_STRTOQWORD$ANSISTRING$$QWORD
SYSUTILS_$$_STRTOQWORD$ANSISTRING$$QWORD:
		push	bp
		mov	bp,sp
		sub	sp,16
		push	word [bp+4]
		lea	ax,[bp-10]
		push	ax
		call	fpc_val_qword_ansistr
		mov	word [bp-8],dx
		mov	word [bp-6],cx
		mov	word [bp-4],bx
		mov	word [bp-2],ax
		cmp	word [bp-10],0
		jne	..@j3889
		jmp	..@j3890
..@j3889:
..@j3891:
		mov	ax,word VMT_$SYSUTILS_$$_ECONVERTERROR
		push	ax
		mov	ax,1
		push	ax
		push	word [RESSTR_$SYSCONST_$$_SINVALIDINTEGER+2]
		mov	dx,word [bp+4]
		mov	ax,0
		mov	word [bp-14],dx
		mov	word [bp-12],ax
		mov	word [bp-16],11
		lea	ax,[bp-16]
		push	ax
		mov	ax,0
		push	ax
		call	SYSUTILS$_$EXCEPTION_$__$$_CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
		push	ax
		mov	ax,word ..@j3891
		push	ax
		push	bp
		call	fpc_raiseexception
..@j3890:
		mov	bx,word [bp-4]
		mov	ax,word [bp-2]
		mov	dx,word [bp-8]
		mov	cx,word [bp-6]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	fpc_raiseexception
EXTERN	SYSUTILS$_$EXCEPTION_$__$$_CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
EXTERN	RESSTR_$SYSCONST_$$_SINVALIDINTEGER
EXTERN	VMT_$SYSUTILS_$$_ECONVERTERROR
EXTERN	fpc_val_qword_ansistr
