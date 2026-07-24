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
	GLOBAL CLASSES$_$TDATAMODULE_$__$$_HANDLECREATEEXCEPTION$$BOOLEAN
CLASSES$_$TDATAMODULE_$__$$_HANDLECREATEEXCEPTION$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,2
		cmp	word [U_$CLASSES_$$_APPLICATIONHANDLEEXCEPTION],0
		mov	al,0
		je	..@j13635
		inc	ax
..@j13635:
		mov	byte [bp-1],al
		cmp	byte [bp-1],0
		jne	..@j13636
		jmp	..@j13637
..@j13636:
		push	word [U_$CLASSES_$$_APPLICATIONHANDLEEXCEPTION+2]
		push	word [bp+4]
		mov	ax,word [U_$CLASSES_$$_APPLICATIONHANDLEEXCEPTION]
		call	ax
..@j13637:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	U_$CLASSES_$$_APPLICATIONHANDLEEXCEPTION
