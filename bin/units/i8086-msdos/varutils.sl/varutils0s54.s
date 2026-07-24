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
	GLOBAL VARUTILS_$$_VARDATETOSTRING$TDATETIME$$ANSISTRING
VARUTILS_$$_VARDATETOSTRING$TDATETIME$$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,12
		fstcw	[bp-4]
		fstcw	[bp-2]
		DB	09bh
		or	word [bp-4],3840
		wait fld	qword [bp+4]
		wait fldcw	[bp-4]
		wait fistp	qword [bp-12]
		wait fldcw	[bp-2]
		DB	09bh
		mov	dx,word [bp-12]
		mov	cx,word [bp-10]
		mov	bx,word [bp-8]
		mov	ax,word [bp-6]
		cmp	ax,0
		jne	..@j2693
		cmp	bx,0
		jne	..@j2693
		cmp	cx,0
		jne	..@j2693
		cmp	dx,0
		jne	..@j2693
		jmp	..@j2692
..@j2692:
		mov	ax,word [bp+12]
		push	ax
		sub	sp,8
		mov	di,sp
		push	ds
		pop	es
		lea	si,[bp+4]
		cld
		mov	cx,4
		rep
		movsw
		call	SYSUTILS_$$_TIMETOSTR$TDATETIME$$ANSISTRING
		jmp	..@j2698
..@j2693:
		mov	ax,word [bp+12]
		push	ax
		sub	sp,8
		mov	di,sp
		push	ds
		pop	es
		lea	si,[bp+4]
		cld
		mov	cx,4
		rep
		movsw
		mov	ax,0
		push	ax
		call	SYSUTILS_$$_DATETIMETOSTR$TDATETIME$BOOLEAN$$ANSISTRING
..@j2698:
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	SYSUTILS_$$_DATETIMETOSTR$TDATETIME$BOOLEAN$$ANSISTRING
EXTERN	SYSUTILS_$$_TIMETOSTR$TDATETIME$$ANSISTRING
