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
	GLOBAL CLASSES$_$TBINARYOBJECTWRITER_$__$$_BEGINCOMPONENT$TCOMPONENT$TFILERFLAGS$SMALLINT
CLASSES$_$TBINARYOBJECTWRITER_$__$$_BEGINCOMPONENT$TCOMPONENT$TFILERFLAGS$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,274
		mov	word [bp-18],0
		mov	ax,1
		push	ax
		lea	ax,[bp-14]
		push	ax
		lea	ax,[bp-8]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j21165
		mov	al,byte [bp+6]
		test	al,al
		jne	..@j21167
		jmp	..@j21168
..@j21167:
		mov	al,byte [bp+6]
		or	al,240
		mov	byte [bp-1],al
		push	word [bp+10]
		lea	ax,[bp-1]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,1
		push	ax
		mov	bx,word [bp+10]
		mov	bx,word [bx]
		mov	ax,word [bx+64]
		call	ax
		test	byte [bp+6],2
		jne	..@j21177
		jmp	..@j21178
..@j21177:
		push	word [bp+10]
		mov	ax,word [bp+4]
		cwd
		mov	bx,ax
		mov	si,dx
		mov	cl,15
		sar	si,cl
		mov	bx,si
		push	si
		push	bx
		push	dx
		push	ax
		mov	bx,word [bp+10]
		mov	bx,word [bx]
		mov	ax,word [bx+80]
		call	ax
..@j21178:
..@j21168:
		push	word [bp+10]
		lea	ax,[bp-18]
		push	ax
		mov	bx,word [bp+8]
		mov	ax,word [bx]
		push	ax
		lea	ax,[bp-274]
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_CLASSNAME$$SHORTSTRING
		lea	ax,[bp-274]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_shortstr_to_ansistr
		push	word [bp-18]
		call	CLASSES$_$TBINARYOBJECTWRITER_$__$$_WRITESTR$ANSISTRING
		push	word [bp+10]
		mov	bx,word [bp+8]
		push	word [bx+8]
		call	CLASSES$_$TBINARYOBJECTWRITER_$__$$_WRITESTR$ANSISTRING
..@j21165:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-18]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j21166
		call	FPC_RERAISE
..@j21166:
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	CLASSES$_$TBINARYOBJECTWRITER_$__$$_WRITESTR$ANSISTRING
EXTERN	fpc_shortstr_to_ansistr
EXTERN	SYSTEM$_$TOBJECT_$__$$_CLASSNAME$$SHORTSTRING
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
