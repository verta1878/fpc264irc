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
	GLOBAL CLASSES$_$TWRITER_$__$$_WRITECHILDREN$TCOMPONENT
CLASSES$_$TWRITER_$__$$_WRITECHILDREN$TCOMPONENT:
		push	bp
		mov	bp,sp
		sub	sp,48
		mov	bx,word [bp+6]
		mov	ax,word [bx+2]
		mov	word [bp-2],ax
		mov	bx,word [bp+6]
		mov	ax,word [bx+12]
		mov	word [bp-4],ax
		mov	bx,word [bp+6]
		mov	ax,word [bx+16]
		mov	word [bp-6],ax
		mov	bx,word [bp+6]
		mov	ax,word [bx+20]
		mov	word [bp-8],ax
		mov	ax,1
		push	ax
		lea	ax,[bp-22]
		push	ax
		lea	ax,[bp-16]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j22189
		mov	bx,word [bp+6]
		mov	word [bx+16],0
		mov	bx,word [bp+6]
		mov	word [bx+20],0
		mov	bx,word [bp+6]
		mov	word [bx+18],-1
		mov	bx,word [bp+4]
		test	word [bx+22],512
		jne	..@j22198
		jmp	..@j22199
..@j22198:
		mov	bx,word [bp+6]
		mov	ax,word [bp+4]
		mov	word [bx+2],ax
..@j22199:
		mov	ax,word VMT_$CLASSES_$$_TCOMPONENT
		push	ax
		mov	bx,word [bp+6]
		push	word [bx+6]
		call	fpc_do_is
		test	al,al
		jne	..@j22202
		jmp	..@j22203
..@j22202:
		mov	ax,word VMT_$CLASSES_$$_TSTRINGLIST
		push	ax
		mov	ax,1
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
		mov	bx,word [bp+6]
		mov	word [bx+16],ax
		mov	bx,word [bp+6]
		mov	bx,word [bx+6]
		test	word [bx+22],512
		jne	..@j22214
		jmp	..@j22215
..@j22214:
		mov	si,word [bp+6]
		mov	bx,word [bp+6]
		mov	ax,word [bx+6]
		mov	word [si+12],ax
..@j22215:
		mov	bx,word [bp+6]
		push	word [bx+6]
		mov	ax,word [bp+6]
		mov	dx,word CLASSES$_$TWRITER_$__$$_ADDTOANCESTORLIST$TCOMPONENT
		mov	word [bp-28],dx
		mov	word [bp-26],ax
		lea	ax,[bp-28]
		push	ax
		mov	bx,word [bp+6]
		push	word [bx+12]
		mov	bx,word [bp+6]
		mov	bx,word [bx+6]
		mov	bx,word [bx]
		mov	ax,word [bx+60]
		call	ax
		mov	bx,word [bp+6]
		push	word [bx+16]
		mov	ax,1
		push	ax
		call	CLASSES$_$TSTRINGLIST_$__$$_SETSORTED$BOOLEAN
..@j22203:
		mov	ax,1
		push	ax
		lea	ax,[bp-40]
		push	ax
		lea	ax,[bp-34]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j22228
		push	word [bp+4]
		mov	ax,word [bp+6]
		mov	dx,word CLASSES$_$TWRITER_$__$$_WRITECOMPONENT$TCOMPONENT
		mov	word [bp-44],dx
		mov	word [bp-42],ax
		lea	ax,[bp-44]
		push	ax
		mov	bx,word [bp+6]
		push	word [bx+2]
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	ax,word [bx+60]
		call	ax
..@j22228:
		call	FPC_POPADDRSTACK
		mov	bx,word [bp+6]
		cmp	word [bx+16],0
		jne	..@j22237
		jmp	..@j22238
..@j22237:
		mov	bx,word [bp+6]
		push	word [bx+16]
		mov	bx,word [bp+6]
		mov	bx,word [bx+16]
		mov	bx,word [bx]
		mov	ax,word [bx+64]
		call	ax
		dec	ax
		mov	word [bp-48],ax
		mov	word [bp-10],0
		mov	ax,word [bp-48]
		cmp	ax,word [bp-10]
		jl	..@j22244
		dec	word [bp-10]
	ALIGN 2
..@j22245:
		inc	word [bp-10]
		mov	bx,word [bp+6]
		push	word [bx+16]
		push	word [bp-10]
		mov	bx,word [bp+6]
		mov	bx,word [bx+16]
		mov	bx,word [bx]
		mov	ax,word [bx+66]
		call	ax
		mov	word [bp-46],ax
		push	word [bp-46]
		call	SYSTEM$_$TOBJECT_$__$$_FREE
		mov	ax,word [bp-48]
		cmp	ax,word [bp-10]
		jg	..@j22245
..@j22244:
..@j22238:
		mov	bx,word [bp+6]
		lea	ax,[bx+16]
		push	ax
		call	SYSUTILS_$$_FREEANDNIL$formal
		pop	ax
		test	ax,ax
		je	..@j22229
		call	FPC_RERAISE
..@j22229:
..@j22189:
		call	FPC_POPADDRSTACK
		mov	bx,word [bp+6]
		mov	ax,word [bp-6]
		mov	word [bx+16],ax
		mov	bx,word [bp+6]
		mov	ax,word [bp-2]
		mov	word [bx+2],ax
		mov	bx,word [bp+6]
		mov	ax,word [bp-4]
		mov	word [bx+12],ax
		mov	bx,word [bp+6]
		mov	ax,word [bp-8]
		mov	word [bx+20],ax
		mov	bx,word [bp+6]
		mov	ax,word [bp-8]
		mov	word [bx+18],ax
		pop	ax
		test	ax,ax
		je	..@j22190
		call	FPC_RERAISE
..@j22190:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_RERAISE
EXTERN	SYSUTILS_$$_FREEANDNIL$formal
EXTERN	SYSTEM$_$TOBJECT_$__$$_FREE
EXTERN	FPC_POPADDRSTACK
EXTERN	CLASSES$_$TWRITER_$__$$_WRITECOMPONENT$TCOMPONENT
EXTERN	CLASSES$_$TSTRINGLIST_$__$$_SETSORTED$BOOLEAN
EXTERN	CLASSES$_$TWRITER_$__$$_ADDTOANCESTORLIST$TCOMPONENT
EXTERN	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
EXTERN	VMT_$CLASSES_$$_TSTRINGLIST
EXTERN	fpc_do_is
EXTERN	VMT_$CLASSES_$$_TCOMPONENT
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
