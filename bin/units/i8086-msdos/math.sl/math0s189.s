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
	GLOBAL MATH_$$_IFTHEN$BOOLEAN$INT64$INT64$$INT64
MATH_$$_IFTHEN$BOOLEAN$INT64$INT64$$INT64:
		push	bp
		mov	bp,sp
		sub	sp,8
		cmp	byte [bp+20],0
		jne	..@j2327
		jmp	..@j2328
..@j2327:
		lea	di,[bp-8]
		push	ss
		pop	es
		lea	si,[bp+12]
		cld
		mov	cx,4
		rep
		movsw
		jmp	..@j2331
..@j2328:
		lea	di,[bp-8]
		push	ss
		pop	es
		lea	si,[bp+4]
		cld
		mov	cx,4
		rep
		movsw
..@j2331:
		mov	bx,word [bp-4]
		mov	ax,word [bp-2]
		mov	dx,word [bp-8]
		mov	cx,word [bp-6]
		mov	sp,bp
		pop	bp
		ret	18
