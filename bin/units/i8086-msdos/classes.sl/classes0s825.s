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
	GLOBAL CLASSES$_$TREADER_$_READCOMPONENT$TCOMPONENT$$TCOMPONENT_$$_RECOVER$TCOMPONENT$$BOOLEAN
CLASSES$_$TREADER_$_READCOMPONENT$TCOMPONENT$$TCOMPONENT_$$_RECOVER$TCOMPONENT$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	byte [bp-1],0
		call	SYSUTILS_$$_EXCEPTOBJECT$$TOBJECT
		mov	word [bp-4],ax
		mov	bx,word [bp-4]
		mov	ax,word [bx]
		push	ax
		mov	ax,word VMT_$SYSUTILS_$$_EXCEPTION
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_INHERITSFROM$TCLASS$$BOOLEAN
		test	al,al
		jne	..@j19294
		jmp	..@j19295
..@j19294:
		mov	bx,word [bp+6]
		test	byte [bx-3],1
		jne	..@j19303
		jmp	..@j19304
..@j19304:
		mov	bx,word [bp+4]
		cmp	word [bx],0
		jne	..@j19303
		jmp	..@j19302
..@j19302:
		mov	bx,word [bp+4]
		push	word [bx]
		call	SYSTEM$_$TOBJECT_$__$$_FREE
..@j19303:
		mov	bx,word [bp+4]
		mov	word [bx],0
		mov	bx,word [bp+6]
		mov	bx,word [bx+6]
		push	word [bx+9]
		mov	ax,0
		push	ax
		mov	bx,word [bp+6]
		mov	bx,word [bx+6]
		mov	bx,word [bx+9]
		mov	bx,word [bx]
		mov	ax,word [bx+94]
		call	ax
		mov	bx,word [bp+6]
		push	word [bx+6]
		call	SYSUTILS_$$_EXCEPTOBJECT$$TOBJECT
		mov	bx,ax
		push	word [bx+2]
		mov	bx,word [bp+6]
		mov	bx,word [bx+6]
		mov	bx,word [bx]
		mov	ax,word [bx+56]
		call	ax
		mov	byte [bp-1],al
..@j19295:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM$_$TOBJECT_$__$$_FREE
EXTERN	SYSTEM$_$TOBJECT_$__$$_INHERITSFROM$TCLASS$$BOOLEAN
EXTERN	VMT_$SYSUTILS_$$_EXCEPTION
EXTERN	SYSUTILS_$$_EXCEPTOBJECT$$TOBJECT
