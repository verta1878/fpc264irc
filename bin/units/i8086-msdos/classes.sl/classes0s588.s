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
	GLOBAL CLASSES$_$TCOMPONENT_$__$$_SAFECALLEXCEPTION$TOBJECT$NEARPOINTER$$HRESULT
CLASSES$_$TCOMPONENT_$__$$_SAFECALLEXCEPTION$TOBJECT$NEARPOINTER$$HRESULT:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	bx,word [bp+8]
		cmp	word [bx+20],0
		jne	..@j12844
		jmp	..@j12845
..@j12844:
		mov	bx,word [bp+8]
		push	word [bx+20]
		push	word [bp+6]
		push	word [bp+4]
		mov	bx,word [bp+8]
		mov	bx,word [bx+20]
		mov	bx,word [bx]
		mov	ax,word [bx+14]
		call	ax
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		jmp	..@j12854
..@j12845:
		push	word [bp+8]
		push	word [bp+6]
		push	word [bp+4]
		call	SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$NEARPOINTER$$HRESULT
		mov	word [bp-4],ax
		mov	word [bp-2],dx
..@j12854:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$NEARPOINTER$$HRESULT
