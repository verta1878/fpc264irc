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
	GLOBAL CLASSES_$$_FINDGLOBALCOMPONENT$ANSISTRING$$TCOMPONENT
CLASSES_$$_FINDGLOBALCOMPONENT$ANSISTRING$$TCOMPONENT:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	word [bp-2],0
		cmp	word [U_$CLASSES_$$_FINDGLOBALCOMPONENTLIST],0
		jne	..@j14836
		jmp	..@j14837
..@j14836:
		push	word [U_$CLASSES_$$_FINDGLOBALCOMPONENTLIST]
		call	CLASSES$_$TLIST_$__$$_GETCOUNT$$SMALLINT
		dec	ax
		mov	word [bp-4],ax
		cmp	word [bp-4],0
		jl	..@j14839
		inc	word [bp-4]
	ALIGN 2
..@j14840:
		dec	word [bp-4]
		push	word [bp+4]
		push	word [U_$CLASSES_$$_FINDGLOBALCOMPONENTLIST]
		push	word [bp-4]
		call	CLASSES$_$TLIST_$__$$_GET$SMALLINT$$POINTER
		call	ax
		mov	word [bp-2],ax
		cmp	word [bp-2],0
		jne	..@j14851
		jmp	..@j14852
..@j14851:
		jmp	..@j14839
..@j14852:
		cmp	word [bp-4],0
		jg	..@j14840
..@j14839:
..@j14837:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	CLASSES$_$TLIST_$__$$_GET$SMALLINT$$POINTER
EXTERN	CLASSES$_$TLIST_$__$$_GETCOUNT$$SMALLINT
EXTERN	U_$CLASSES_$$_FINDGLOBALCOMPONENTLIST
