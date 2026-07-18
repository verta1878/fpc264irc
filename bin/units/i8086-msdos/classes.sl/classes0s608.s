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
	GLOBAL CLASSES$_$TBASICACTION_$__$$_CREATE$TCOMPONENT$$TBASICACTION
CLASSES$_$TBASICACTION_$__$$_CREATE$TCOMPONENT$$TBASICACTION:
		push	bp
		mov	bp,sp
		sub	sp,28
		cmp	word [bp+6],1
		je	..@j13131
		jmp	..@j13132
..@j13131:
		push	word [bp+8]
		mov	bx,word [bp+8]
		mov	ax,word [bx+26]
		call	ax
		mov	word [bp+8],ax
..@j13132:
		cmp	word [bp+8],0
		je	..@j13137
		jmp	..@j13138
..@j13137:
		jmp	..@j13129
..@j13138:
		mov	ax,1
		push	ax
		lea	ax,[bp-12]
		push	ax
		lea	ax,[bp-6]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j13141
		push	word [bp+8]
		mov	ax,0
		push	ax
		push	word [bp+4]
		call	CLASSES$_$TCOMPONENT_$__$$_CREATE$TCOMPONENT$$TCOMPONENT
		mov	ax,word VMT_$CLASSES_$$_TFPLIST
		push	ax
		mov	ax,1
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
		mov	bx,word [bp+8]
		mov	word [bx+42],ax
		cmp	word [bp+8],0
		jne	..@j13160
		jmp	..@j13159
..@j13160:
		cmp	word [bp+6],0
		jne	..@j13158
		jmp	..@j13159
..@j13158:
		push	word [bp+8]
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bx+34]
		call	ax
..@j13159:
..@j13141:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j13143
		mov	ax,1
		push	ax
		lea	ax,[bp-26]
		push	ax
		lea	ax,[bp-20]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j13163
		cmp	word [bp+6],0
		jne	..@j13164
		jmp	..@j13165
..@j13164:
		push	word [bp+8]
		mov	ax,-1
		push	ax
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bx+24]
		call	ax
..@j13165:
		call	fpc_popaddrstack
		call	fpc_reraise
..@j13163:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j13170
		call	FPC_RAISE_NESTED
..@j13170:
		call	FPC_DONEEXCEPTION
		jmp	..@j13143
..@j13143:
..@j13129:
		mov	ax,word [bp+8]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	FPC_DONEEXCEPTION
EXTERN	FPC_RAISE_NESTED
EXTERN	fpc_reraise
EXTERN	fpc_popaddrstack
EXTERN	FPC_POPADDRSTACK
EXTERN	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
EXTERN	VMT_$CLASSES_$$_TFPLIST
EXTERN	CLASSES$_$TCOMPONENT_$__$$_CREATE$TCOMPONENT$$TCOMPONENT
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
