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
	GLOBAL CLASSES$_$TSTRINGLIST_$__$$_CHANGED
CLASSES$_$TSTRINGLIST_$__$$_CHANGED:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+4]
		cmp	word [bx+10],0
		je	..@j9086
		jmp	..@j9087
..@j9086:
		mov	bx,word [bp+4]
		cmp	word [bx+26],0
		jne	..@j9088
		jmp	..@j9089
..@j9088:
		mov	bx,word [bp+4]
		push	word [bx+28]
		push	word [bp+4]
		mov	bx,word [bp+4]
		mov	ax,word [bx+26]
		call	ax
..@j9089:
		push	word [bp+4]
		push	word [bp+4]
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		call	CLASSES$_$TPERSISTENT_$__$$_FPONOTIFYOBSERVERS$TOBJECT$TFPOBSERVEDOPERATION$POINTER
..@j9087:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	CLASSES$_$TPERSISTENT_$__$$_FPONOTIFYOBSERVERS$TOBJECT$TFPOBSERVEDOPERATION$POINTER
