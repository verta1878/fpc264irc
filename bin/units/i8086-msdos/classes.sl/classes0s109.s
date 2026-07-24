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
	GLOBAL CLASSES$_$TSTREAMADAPTER_$__$$_DESTROY
CLASSES$_$TSTREAMADAPTER_$__$$_DESTROY:
		push	bp
		mov	bp,sp
		cmp	word [bp+4],0
		jg	..@j2528
		jmp	..@j2529
..@j2528:
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+36]
		call	ax
..@j2529:
		mov	bx,word [bp+6]
		cmp	word [bx+10],1
		je	..@j2532
		jmp	..@j2533
..@j2532:
		mov	bx,word [bp+6]
		lea	ax,[bx+8]
		push	ax
		call	SYSUTILS_$$_FREEANDNIL$formal
..@j2533:
		push	word [bp+6]
		mov	ax,0
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_DESTROY
		cmp	word [bp+6],0
		jne	..@j2542
		jmp	..@j2541
..@j2542:
		cmp	word [bp+4],0
		jne	..@j2540
		jmp	..@j2541
..@j2540:
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+28]
		call	ax
..@j2541:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM$_$TOBJECT_$__$$_DESTROY
EXTERN	SYSUTILS_$$_FREEANDNIL$formal
