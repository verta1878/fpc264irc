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
	GLOBAL CLASSES_$$_REGISTERCLASSALIAS$TPERSISTENTCLASS$ANSISTRING
CLASSES_$$_REGISTERCLASSALIAS$TPERSISTENTCLASS$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,2
		push	word [U_$CLASSES_$$_CLASSALIASLIST]
		push	word [bp+4]
		mov	bx,word [U_$CLASSES_$$_CLASSALIASLIST]
		mov	bx,word [bx]
		mov	ax,word [bx+100]
		call	ax
		mov	word [bp-2],ax
		cmp	word [bp-2],-1
		je	..@j13768
		jmp	..@j13769
..@j13768:
		push	word [U_$CLASSES_$$_CLASSALIASLIST]
		push	word [bp+4]
		push	word [bp+6]
		mov	bx,word [U_$CLASSES_$$_CLASSALIASLIST]
		mov	bx,word [bx]
		mov	ax,word [bx+84]
		call	ax
..@j13769:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	U_$CLASSES_$$_CLASSALIASLIST
