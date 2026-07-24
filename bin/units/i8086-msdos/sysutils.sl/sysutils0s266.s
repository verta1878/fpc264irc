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
	GLOBAL SYSUTILS_$$_DOENCODEDATE$WORD$WORD$WORD$$LONGINT
SYSUTILS_$$_DOENCODEDATE$WORD$WORD$WORD$$LONGINT:
		push	bp
		mov	bp,sp
		sub	sp,24
		push	word [bp+8]
		push	word [bp+6]
		push	word [bp+4]
		lea	ax,[bp-12]
		push	ax
		call	SYSUTILS_$$_TRYENCODEDATE$WORD$WORD$WORD$TDATETIME$$BOOLEAN
		test	al,al
		jne	..@j9373
		jmp	..@j9374
..@j9373:
		fstcw	[bp-16]
		fstcw	[bp-14]
		DB	09bh
		or	word [bp-16],3840
		wait fld	qword [bp-12]
		wait fldcw	[bp-16]
		wait fistp	qword [bp-24]
		wait fldcw	[bp-14]
		DB	09bh
		mov	ax,word [bp-24]
		mov	word [bp-4],ax
		mov	ax,word [bp-22]
		mov	word [bp-2],ax
		jmp	..@j9385
..@j9374:
		mov	word [bp-4],0
		mov	word [bp-2],0
..@j9385:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	SYSUTILS_$$_TRYENCODEDATE$WORD$WORD$WORD$TDATETIME$$BOOLEAN
