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
	GLOBAL CLASSES$_$TPERSISTENT_$__$$_DESTROY
CLASSES$_$TPERSISTENT_$__$$_DESTROY:
		push	bp
		mov	bp,sp
		cmp	word [bp+4],0
		jg	..@j10793
		jmp	..@j10794
..@j10793:
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+36]
		call	ax
..@j10794:
		mov	bx,word [bp+6]
		cmp	word [bx+2],0
		jne	..@j10797
		jmp	..@j10798
..@j10797:
		push	word [bp+6]
		push	word [bp+6]
		mov	ax,0
		push	ax
		mov	ax,1
		push	ax
		mov	ax,0
		push	ax
		call	CLASSES$_$TPERSISTENT_$__$$_FPONOTIFYOBSERVERS$TOBJECT$TFPOBSERVEDOPERATION$POINTER
		mov	bx,word [bp+6]
		lea	ax,[bx+2]
		push	ax
		call	SYSUTILS_$$_FREEANDNIL$formal
..@j10798:
		push	word [bp+6]
		mov	ax,0
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_DESTROY
		cmp	word [bp+6],0
		jne	..@j10815
		jmp	..@j10814
..@j10815:
		cmp	word [bp+4],0
		jne	..@j10813
		jmp	..@j10814
..@j10813:
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+28]
		call	ax
..@j10814:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM$_$TOBJECT_$__$$_DESTROY
EXTERN	SYSUTILS_$$_FREEANDNIL$formal
EXTERN	CLASSES$_$TPERSISTENT_$__$$_FPONOTIFYOBSERVERS$TOBJECT$TFPOBSERVEDOPERATION$POINTER
