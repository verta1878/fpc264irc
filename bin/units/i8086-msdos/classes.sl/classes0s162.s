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
	GLOBAL CLASSES$_$TPARSER_$__$$_TOKENINT$$INT64
CLASSES$_$TPARSER_$__$$_TOKENINT$$INT64:
		push	bp
		mov	bp,sp
		sub	sp,8
		mov	bx,word [bp+4]
		push	word [bx+17]
		lea	ax,[bp-8]
		push	ax
		call	SYSUTILS_$$_TRYSTRTOINT64$ANSISTRING$INT64$$BOOLEAN
		test	al,al
		je	..@j3782
		jmp	..@j3783
..@j3782:
		mov	bx,word [bp+4]
		push	word [bx+17]
		call	SYSUTILS_$$_STRTOQWORD$ANSISTRING$$QWORD
		mov	word [bp-8],dx
		mov	word [bp-6],cx
		mov	word [bp-4],bx
		mov	word [bp-2],ax
..@j3783:
		mov	bx,word [bp-4]
		mov	ax,word [bp-2]
		mov	dx,word [bp-8]
		mov	cx,word [bp-6]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	SYSUTILS_$$_STRTOQWORD$ANSISTRING$$QWORD
EXTERN	SYSUTILS_$$_TRYSTRTOINT64$ANSISTRING$INT64$$BOOLEAN
