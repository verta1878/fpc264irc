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
	GLOBAL CLASSES$_$TTHREAD_$__$$_GETISSINGLEPROCESSOR$$BOOLEAN
CLASSES$_$TTHREAD_$__$$_GETISSINGLEPROCESSOR$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	dx,word [U_$CLASSES_$$__static_tthread_FPROCESSORCOUNT]
		mov	ax,word [U_$CLASSES_$$__static_tthread_FPROCESSORCOUNT+2]
		cmp	ax,0
		jb	..@j10140
		ja	..@j10141
		cmp	dx,1
		jbe	..@j10140
		jmp	..@j10141
..@j10140:
		mov	byte [bp-1],1
		jmp	..@j10142
..@j10141:
		mov	byte [bp-1],0
..@j10142:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret
EXTERN	U_$CLASSES_$$__static_tthread_FPROCESSORCOUNT
