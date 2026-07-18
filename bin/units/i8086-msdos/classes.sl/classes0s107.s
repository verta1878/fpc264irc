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
	GLOBAL CLASSES$_$TOWNERSTREAM_$__$$_DESTROY
CLASSES$_$TOWNERSTREAM_$__$$_DESTROY:
		push	bp
		mov	bp,sp
		cmp	word [bp+4],0
		jg	..@j2469
		jmp	..@j2470
..@j2469:
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+36]
		call	ax
..@j2470:
		mov	bx,word [bp+6]
		cmp	byte [bx+2],0
		jne	..@j2473
		jmp	..@j2474
..@j2473:
		mov	bx,word [bp+6]
		lea	ax,[bx+3]
		push	ax
		call	SYSUTILS_$$_FREEANDNIL$formal
..@j2474:
		push	word [bp+6]
		mov	ax,0
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_DESTROY
		cmp	word [bp+6],0
		jne	..@j2483
		jmp	..@j2482
..@j2483:
		cmp	word [bp+4],0
		jne	..@j2481
		jmp	..@j2482
..@j2481:
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+28]
		call	ax
..@j2482:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM$_$TOBJECT_$__$$_DESTROY
EXTERN	SYSUTILS_$$_FREEANDNIL$formal
