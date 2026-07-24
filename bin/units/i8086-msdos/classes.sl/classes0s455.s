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
	GLOBAL CLASSES$_$TTHREAD_$__$$_SPINWAIT$LONGWORD
CLASSES$_$TTHREAD_$__$$_SPINWAIT$LONGWORD:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		mov	word [bp-4],1
		mov	word [bp-2],0
		cmp	dx,word [bp-2]
		jb	..@j10339
		ja	..@j10341
		cmp	ax,word [bp-4]
		jb	..@j10339
..@j10341:
		sub	word [bp-4],1
		sbb	word [bp-2],0
	ALIGN 2
..@j10340:
		add	word [bp-4],1
		adc	word [bp-2],0
		add	word [U_$CLASSES_$$_SPINWAITDUMMY],1
		adc	word [U_$CLASSES_$$_SPINWAITDUMMY+2],0
		cmp	dx,word [bp-2]
		ja	..@j10340
		jb	..@j10342
		cmp	ax,word [bp-4]
		ja	..@j10340
..@j10342:
..@j10339:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	U_$CLASSES_$$_SPINWAITDUMMY
