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
	GLOBAL CLASSES$_$TREADER_$__$$_DOFIXUPREFERENCES
CLASSES$_$TREADER_$__$$_DOFIXUPREFERENCES:
		push	bp
		mov	bp,sp
		sub	sp,32
		mov	word [bp-8],0
		mov	word [bp-32],0
		mov	word [bp-30],0
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
		jne	..@j18690
		mov	bx,word [bp+4]
		cmp	word [bx+15],0
		jne	..@j18692
		jmp	..@j18693
..@j18692:
		mov	bx,word [bp+4]
		mov	ax,word [bx+15]
		mov	word [bp-14],ax
		mov	bx,word [bp-14]
		mov	ax,word [bx+4]
		mov	word [bp-2],ax
		jmp	..@j18699
	ALIGN 2
..@j18698:
		mov	bx,word [bp-2]
		mov	ax,word [bx+2]
		mov	word [bp-4],ax
		lea	ax,[bp-8]
		push	ax
		mov	bx,word [bp-2]
		push	word [bx+10]
		call	fpc_ansistr_assign
		mov	bx,word [bp+4]
		cmp	word [bx+31],0
		jne	..@j18707
		jmp	..@j18708
..@j18707:
		mov	bx,word [bp+4]
		push	word [bx+33]
		push	word [bp+4]
		lea	ax,[bp-8]
		push	ax
		mov	bx,word [bp+4]
		mov	ax,word [bx+31]
		call	ax
..@j18708:
		mov	bx,word [bp-2]
		push	word [bx+4]
		push	word [bp-8]
		mov	ax,1
		push	ax
		call	CLASSES_$$_FINDNESTEDCOMPONENT$TCOMPONENT$ANSISTRING$BOOLEAN$$TCOMPONENT
		mov	word [bp-10],ax
		cmp	word [bp-10],0
		jne	..@j18723
		jmp	..@j18724
..@j18723:
		mov	bx,word [bp-2]
		push	word [bx+12]
		mov	bx,word [bp-2]
		push	word [bx+6]
		push	word [bp-10]
		call	TYPINFO_$$_SETOBJECTPROP$TOBJECT$PPROPINFO$TOBJECT
		jmp	..@j18731
..@j18724:
		mov	ax,46
		push	ax
		mov	bx,word [bp-2]
		push	word [bx+10]
		call	SYSTEM_$$_POS$CHAR$RAWBYTESTRING$$SMALLINT
		mov	word [bp-12],ax
		cmp	word [bp-12],0
		jne	..@j18738
		jmp	..@j18739
..@j18738:
		mov	bx,word [bp-2]
		push	word [bx+12]
		call	CLASSES_$$_ADDTORESOLVELIST$TPERSISTENT$$TUNRESOLVEDINSTANCE
		mov	word [bp-6],ax
		push	word [bp-6]
		mov	bx,word [bp-2]
		push	word [bx+4]
		mov	bx,word [bp-2]
		push	word [bx+6]
		lea	ax,[bp-30]
		push	ax
		mov	bx,word [bp-2]
		push	word [bx+10]
		mov	ax,1
		push	ax
		mov	ax,word [bp-12]
		dec	ax
		push	ax
		call	fpc_ansistr_copy
		push	word [bp-30]
		lea	ax,[bp-32]
		push	ax
		mov	bx,word [bp-2]
		push	word [bx+10]
		mov	ax,word [bp-12]
		inc	ax
		push	ax
		mov	bx,word [bp-2]
		mov	bx,word [bx+10]
		test	bx,bx
		je	..@j18770
		mov	bx,word [bx-2]
..@j18770:
		mov	ax,word [bp-12]
		sub	bx,ax
		push	bx
		call	fpc_ansistr_copy
		push	word [bp-32]
		call	CLASSES$_$TUNRESOLVEDINSTANCE_$__$$_ADDREFERENCE$crc55E5A940
..@j18739:
..@j18731:
		push	word [bp-14]
		push	word [bp-2]
		mov	ax,1
		push	ax
		call	CLASSES$_$TLINKEDLIST_$__$$_REMOVEITEM$TLINKEDLISTITEM$BOOLEAN
		mov	ax,word [bp-4]
		mov	word [bp-2],ax
..@j18699:
		cmp	word [bp-2],0
		jne	..@j18698
		jmp	..@j18700
..@j18700:
		mov	bx,word [bp+4]
		lea	ax,[bx+15]
		push	ax
		call	SYSUTILS_$$_FREEANDNIL$formal
..@j18693:
..@j18690:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-32]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-30]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-8]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j18691
		call	FPC_RERAISE
..@j18691:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	SYSUTILS_$$_FREEANDNIL$formal
EXTERN	CLASSES$_$TLINKEDLIST_$__$$_REMOVEITEM$TLINKEDLISTITEM$BOOLEAN
EXTERN	CLASSES$_$TUNRESOLVEDINSTANCE_$__$$_ADDREFERENCE$crc55E5A940
EXTERN	fpc_ansistr_copy
EXTERN	CLASSES_$$_ADDTORESOLVELIST$TPERSISTENT$$TUNRESOLVEDINSTANCE
EXTERN	SYSTEM_$$_POS$CHAR$RAWBYTESTRING$$SMALLINT
EXTERN	TYPINFO_$$_SETOBJECTPROP$TOBJECT$PPROPINFO$TOBJECT
EXTERN	CLASSES_$$_FINDNESTEDCOMPONENT$TCOMPONENT$ANSISTRING$BOOLEAN$$TCOMPONENT
EXTERN	fpc_ansistr_assign
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
