BITS 16
CPU 8086
SECTION text use16 class=code
SECTION rodata class=data
SECTION data class=data
SECTION fpc class=data
SECTION bss class=bss
SECTION stack stack class=stack align=16
SECTION heap class=heap align=16
GROUP dgroup rodata data fpc bss stack heap
SECTION text

SECTION text
	ALIGN 2
	GLOBAL SYSUTILS$_$EXCEPTION_$__$$_CREATERESHELP$PANSISTRING$LONGINT$$EXCEPTION
SYSUTILS$_$EXCEPTION_$__$$_CREATERESHELP$PANSISTRING$LONGINT$$EXCEPTION:
		push	bp
		mov	bp,sp
		sub	sp,28
		cmp	word [bp+10],1
		je	..@j14219
		jmp	..@j14220
..@j14219:
		push	word [bp+12]
		mov	bx,word [bp+12]
		mov	ax,word [bx+26]
		call	ax
		mov	word [bp+12],ax
..@j14220:
		cmp	word [bp+12],0
		je	..@j14225
		jmp	..@j14226
..@j14225:
		jmp	..@j14217
..@j14226:
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
		jne	..@j14229
		push	word [bp+12]
		mov	ax,0
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
		mov	bx,word [bp+12]
		lea	ax,[bx+2]
		push	ax
		mov	bx,word [bp+8]
		push	word [bx]
		call	fpc_ansistr_assign
		mov	bx,word [bp+12]
		mov	ax,word [bp+4]
		mov	word [bx+4],ax
		mov	ax,word [bp+6]
		mov	word [bx+6],ax
		cmp	word [bp+12],0
		jne	..@j14246
		jmp	..@j14245
..@j14246:
		cmp	word [bp+10],0
		jne	..@j14244
		jmp	..@j14245
..@j14244:
		push	word [bp+12]
		mov	bx,word [bp+12]
		mov	bx,word [bx]
		mov	ax,word [bx+34]
		call	ax
..@j14245:
..@j14229:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j14231
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
		jne	..@j14249
		cmp	word [bp+10],0
		jne	..@j14250
		jmp	..@j14251
..@j14250:
		push	word [bp+12]
		mov	ax,-1
		push	ax
		mov	bx,word [bp+12]
		mov	bx,word [bx]
		mov	ax,word [bx+24]
		call	ax
..@j14251:
		call	fpc_popaddrstack
		call	fpc_reraise
..@j14249:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j14256
		call	FPC_RAISE_NESTED
..@j14256:
		call	FPC_DONEEXCEPTION
		jmp	..@j14231
..@j14231:
..@j14217:
		mov	ax,word [bp+12]
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	FPC_DONEEXCEPTION
EXTERN	FPC_RAISE_NESTED
EXTERN	fpc_reraise
EXTERN	fpc_popaddrstack
EXTERN	FPC_POPADDRSTACK
EXTERN	fpc_ansistr_assign
EXTERN	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
