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
	GLOBAL SYSTEM$_$STR_REAL$crcEDBAA446_$$_K_COMP$SMALLINT$SMALLINT$$SMALLINT
SYSTEM$_$STR_REAL$crcEDBAA446_$$_K_COMP$SMALLINT$SMALLINT$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,26
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		sub	ax,dx
		mov	word [bp-12],ax
		mov	ax,word [bp-12]
		cwd
		mov	word [bp-18],ax
		mov	word [bp-16],dx
		wait fild	dword [bp-18]
		wait fmul	qword [TC_$SYSTEM$_$STR_REAL$crcEDBAA446_K_COMP$SMALLINT$SMALLINT$$SMALLINT_$$_D_LOG10_2]
		wait fstp	qword [bp-10]
		DB	09bh
		fstcw	[bp-18]
		fstcw	[bp-16]
		DB	09bh
		or	word [bp-18],3840
		wait fld	qword [bp-10]
		wait fldcw	[bp-18]
		wait fistp	qword [bp-26]
		wait fldcw	[bp-16]
		DB	09bh
		mov	ax,word [bp-26]
		mov	word [bp-14],ax
		cmp	word [bp-12],0
		jg	..@j5208
		jmp	..@j5209
..@j5208:
		mov	ax,word [bp-14]
		cwd
		mov	word [bp-18],ax
		mov	word [bp-16],dx
		wait fild	dword [bp-18]
		wait fld	qword [bp-10]
		wait fcompp
		fstsw	[bp-16]
		mov	ah,byte [bp-15]
		sahf
		jp	..@j5210
		jne	..@j5210
		jmp	..@j5211
..@j5210:
		inc	word [bp-14]
..@j5211:
..@j5209:
		mov	ax,word [bp-14]
		mov	word [bp-2],ax
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	TC_$SYSTEM$_$STR_REAL$crcEDBAA446_K_COMP$SMALLINT$SMALLINT$$SMALLINT_$$_D_LOG10_2
