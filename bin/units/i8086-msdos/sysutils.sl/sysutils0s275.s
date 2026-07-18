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
	GLOBAL SYSUTILS_$$_ENCODEDATE$WORD$WORD$WORD$$TDATETIME
SYSUTILS_$$_ENCODEDATE$WORD$WORD$WORD$$TDATETIME:
		push	bp
		mov	bp,sp
		sub	sp,26
		push	word [bp+8]
		push	word [bp+6]
		push	word [bp+4]
		lea	ax,[bp-8]
		push	ax
		call	SYSUTILS_$$_TRYENCODEDATE$WORD$WORD$WORD$TDATETIME$$BOOLEAN
		test	al,al
		je	..@j9554
		jmp	..@j9555
..@j9554:
..@j9564:
		mov	ax,word VMT_$SYSUTILS_$$_ECONVERTERROR
		push	ax
		mov	ax,1
		push	ax
		mov	ax,word _$SYSUTILS$_Ld652
		push	ax
		mov	dx,word [bp+8]
		mov	ax,0
		mov	word [bp-24],dx
		mov	word [bp-22],ax
		mov	word [bp-26],0
		mov	ax,word [bp+6]
		mov	dx,0
		mov	word [bp-18],ax
		mov	word [bp-16],dx
		mov	word [bp-20],0
		mov	ax,word [bp+4]
		mov	dx,0
		mov	word [bp-12],ax
		mov	word [bp-10],dx
		mov	word [bp-14],0
		lea	ax,[bp-26]
		push	ax
		mov	ax,2
		push	ax
		call	SYSUTILS$_$EXCEPTION_$__$$_CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
		push	ax
		mov	ax,word ..@j9564
		push	ax
		push	bp
		call	fpc_raiseexception
..@j9555:
		wait fld	qword [bp-8]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	fpc_raiseexception
EXTERN	SYSUTILS$_$EXCEPTION_$__$$_CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
EXTERN	_$SYSUTILS$_Ld652
EXTERN	VMT_$SYSUTILS_$$_ECONVERTERROR
EXTERN	SYSUTILS_$$_TRYENCODEDATE$WORD$WORD$WORD$TDATETIME$$BOOLEAN
