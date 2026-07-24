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
	GLOBAL SYSUTILS_$$_DAYOFWEEK$TDATETIME$$SMALLINT
SYSUTILS_$$_DAYOFWEEK$TDATETIME$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,14
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,7
		push	ax
		fstcw	[bp-6]
		fstcw	[bp-4]
		DB	09bh
		or	word [bp-6],3840
		wait fld	qword [bp+4]
		wait fldcw	[bp-6]
		wait fistp	qword [bp-14]
		wait fldcw	[bp-4]
		DB	09bh
		mov	ax,word [bp-14]
		mov	dx,word [bp-12]
		mov	cx,word [bp-10]
		mov	bx,word [bp-8]
		sub	ax,1
		sbb	dx,0
		sbb	cx,0
		sbb	bx,0
		push	bx
		push	cx
		push	dx
		push	ax
		call	fpc_mod_int64
		add	dx,1
		adc	cx,0
		adc	bx,0
		adc	ax,0
		mov	word [bp-2],dx
		cmp	word [bp-2],0
		jle	..@j9834
		jmp	..@j9835
..@j9834:
		add	word [bp-2],7
..@j9835:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	fpc_mod_int64
