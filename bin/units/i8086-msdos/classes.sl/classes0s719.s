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
	GLOBAL CLASSES_$$_NOTIFYGLOBALLOADING
CLASSES_$$_NOTIFYGLOBALLOADING:
		push	bp
		mov	bp,sp
		sub	sp,6
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j15321
		push	word [U_$CLASSES_$$_GLOBALLOADED+2]
		push	word [U_$CLASSES_$$_GLOBALLOADED]
		call	ax
		mov	bx,ax
		jmp	..@j15322
..@j15321:
		mov	bx,word U_$CLASSES_$$_GLOBALLOADED+2
..@j15322:
		mov	bx,word [bx]
		mov	ax,word [bx+4]
		dec	ax
		mov	word [bp-6],ax
		mov	word [bp-2],0
		mov	ax,word [bp-6]
		cmp	ax,word [bp-2]
		jl	..@j15324
		dec	word [bp-2]
	ALIGN 2
..@j15325:
		inc	word [bp-2]
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j15330
		push	word [U_$CLASSES_$$_GLOBALLOADED+2]
		push	word [U_$CLASSES_$$_GLOBALLOADED]
		call	ax
		mov	bx,ax
		jmp	..@j15331
..@j15330:
		mov	bx,word U_$CLASSES_$$_GLOBALLOADED+2
..@j15331:
		push	word [bx]
		push	word [bp-2]
		call	CLASSES$_$TFPLIST_$__$$_GET$SMALLINT$$POINTER
		mov	word [bp-4],ax
		push	word [bp-4]
		mov	bx,word [bp-4]
		mov	bx,word [bx]
		mov	ax,word [bx+66]
		call	ax
		mov	ax,word [bp-6]
		cmp	ax,word [bp-2]
		jg	..@j15325
..@j15324:
		mov	sp,bp
		pop	bp
		ret
EXTERN	CLASSES$_$TFPLIST_$__$$_GET$SMALLINT$$POINTER
EXTERN	U_$CLASSES_$$_GLOBALLOADED
EXTERN	FPC_THREADVAR_RELOCATE
