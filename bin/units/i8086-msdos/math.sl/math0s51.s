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
	GLOBAL MATH_$$_CEIL$EXTENDED$$SMALLINT
MATH_$$_CEIL$EXTENDED$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,14
		fstcw	[bp-6]
		fstcw	[bp-4]
		DB	09bh
		or	word [bp-6],3840
		wait fld	tword [bp+4]
		wait fldcw	[bp-6]
		wait fistp	qword [bp-14]
		wait fldcw	[bp-4]
		DB	09bh
		mov	ax,word [bp-14]
		mov	word [bp-2],ax
		push	word [bp+12]
		push	word [bp+10]
		push	word [bp+8]
		push	word [bp+6]
		push	word [bp+4]
		call	fpc_frac_real
		wait fldz
		wait fcompp
		fstsw	[bp-4]
		mov	ah,byte [bp-3]
		sahf
		jp	..@j548
		jb	..@j544
..@j548:
		jmp	..@j545
..@j544:
		mov	ax,word [bp-2]
		inc	ax
		mov	word [bp-2],ax
..@j545:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	fpc_frac_real
