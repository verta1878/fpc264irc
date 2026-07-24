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
	GLOBAL CLASSES$_$TCOMPONENT_$__$$_QUERYINTERFACE$TGUID$formal$$HRESULT
CLASSES$_$TCOMPONENT_$__$$_QUERYINTERFACE$TGUID$formal$$HRESULT:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	bx,word [bp+4]
		cmp	word [bx+20],0
		jne	..@j12887
		jmp	..@j12888
..@j12887:
		mov	ax,word [bp+8]
		push	ax
		mov	ax,word [bp+6]
		push	ax
		mov	bx,word [bp+4]
		push	word [bx+20]
		mov	bx,word [bp+4]
		mov	bx,word [bx+20]
		mov	bx,word [bx]
		call	[bx]
		add	sp,6
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		jmp	..@j12897
..@j12888:
		push	word [bp+4]
		mov	ax,word [bp+6]
		push	ax
		mov	ax,word [bp+8]
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_GETINTERFACE$TGUID$formal$$BOOLEAN
		test	al,al
		jne	..@j12898
		jmp	..@j12899
..@j12898:
		mov	word [bp-4],0
		mov	word [bp-2],0
		jmp	..@j12908
..@j12899:
		mov	word [bp-4],16386
		mov	word [bp-2],-32768
..@j12908:
..@j12897:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret
EXTERN	SYSTEM$_$TOBJECT_$__$$_GETINTERFACE$TGUID$formal$$BOOLEAN
