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
	GLOBAL MATH_$$_CEIL64$EXTENDED$$INT64
MATH_$$_CEIL64$EXTENDED$$INT64:
		push	bp
		mov	bp,sp
		sub	sp,20
		fstcw	[bp-12]
		fstcw	[bp-10]
		DB	09bh
		or	word [bp-12],3840
		wait fld	tword [bp+4]
		wait fldcw	[bp-12]
		wait fistp	qword [bp-20]
		wait fldcw	[bp-10]
		DB	09bh
		lea	di,[bp-8]
		push	ss
		pop	es
		lea	si,[bp-20]
		cld
		mov	cx,4
		rep
		movsw
		push	word [bp+12]
		push	word [bp+10]
		push	word [bp+8]
		push	word [bp+6]
		push	word [bp+4]
		call	fpc_frac_real
		wait fldz
		wait fcompp
		fstsw	[bp-10]
		mov	ah,byte [bp-9]
		sahf
		jp	..@j559
		jb	..@j555
..@j559:
		jmp	..@j556
..@j555:
		mov	bx,word [bp-8]
		mov	ax,word [bp-6]
		mov	dx,word [bp-4]
		mov	cx,word [bp-2]
		add	bx,1
		adc	ax,0
		adc	dx,0
		adc	cx,0
		mov	word [bp-8],bx
		mov	word [bp-6],ax
		mov	word [bp-4],dx
		mov	word [bp-2],cx
..@j556:
		mov	bx,word [bp-4]
		mov	ax,word [bp-2]
		mov	dx,word [bp-8]
		mov	cx,word [bp-6]
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	fpc_frac_real
