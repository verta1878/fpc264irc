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
	GLOBAL fpc_safecallhandler
fpc_safecallhandler:
	GLOBAL FPC_SAFECALLHANDLER
FPC_SAFECALLHANDLER:
		push	bp
		mov	bp,sp
		sub	sp,10
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j15733
		push	word [U_$SYSTEM_$$_EXCEPTOBJECTSTACK+2]
		push	word [U_$SYSTEM_$$_EXCEPTOBJECTSTACK]
		call	ax
		mov	bx,ax
		jmp	..@j15734
..@j15733:
		mov	bx,word U_$SYSTEM_$$_EXCEPTOBJECTSTACK+2
..@j15734:
		mov	ax,word [bx]
		mov	word [bp-6],ax
		cmp	word [bp-6],0
		jne	..@j15735
		jmp	..@j15736
..@j15735:
		mov	bx,word [bp-6]
		mov	ax,word [bx+2]
		mov	word [bp-8],ax
		jmp	..@j15739
..@j15736:
		mov	word [bp-8],0
..@j15739:
		call	FPC_POPOBJECTSTACK
		mov	word [bp-10],ax
		cmp	word [bp+4],0
		jne	..@j15746
		jmp	..@j15745
..@j15746:
		cmp	word [bp-10],0
		jne	..@j15744
		jmp	..@j15745
..@j15744:
		push	word [bp+4]
		push	word [bp-10]
		push	word [bp-8]
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	ax,word [bx+30]
		call	ax
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		jmp	..@j15755
..@j15745:
		mov	word [bp-4],-1
		mov	word [bp-2],-32768
..@j15755:
		push	word [bp-10]
		call	SYSTEM$_$TOBJECT_$__$$_FREE
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	SYSTEM$_$TOBJECT_$__$$_FREE
EXTERN	FPC_POPOBJECTSTACK
EXTERN	U_$SYSTEM_$$_EXCEPTOBJECTSTACK
EXTERN	FPC_THREADVAR_RELOCATE
