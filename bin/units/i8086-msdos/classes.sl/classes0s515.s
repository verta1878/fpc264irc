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
	GLOBAL CLASSES$_$TUNRESOLVEDINSTANCE_$__$$_ADDREFERENCE$crc55E5A940
CLASSES$_$TUNRESOLVEDINSTANCE_$__$$_ADDREFERENCE$crc55E5A940:
		push	bp
		mov	bp,sp
		sub	sp,16
		push	word [bp+6]
		call	fpc_ansistr_incr_ref
		push	word [bp+4]
		call	fpc_ansistr_incr_ref
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
		jne	..@j11444
		mov	bx,word [bp+12]
		cmp	word [bx+6],0
		je	..@j11446
		jmp	..@j11447
..@j11446:
		mov	ax,word VMT_$CLASSES_$$_TLINKEDLIST
		push	ax
		mov	ax,1
		push	ax
		mov	ax,word VMT_$CLASSES_$$_TUNRESOLVEDREFERENCE
		push	ax
		mov	bx,word VMT_$CLASSES_$$_TLINKEDLIST
		mov	ax,word [bx+50]
		call	ax
		mov	bx,word [bp+12]
		mov	word [bx+6],ax
..@j11447:
		mov	ax,word VMT_$CLASSES_$$_TUNRESOLVEDREFERENCE
		push	ax
		mov	bx,word [bp+12]
		push	word [bx+6]
		call	CLASSES$_$TLINKEDLIST_$__$$_ADD$$TLINKEDLISTITEM
		push	ax
		call	fpc_do_as
		mov	word [bp-2],ax
		mov	bx,word [bp-2]
		lea	ax,[bx+8]
		push	ax
		push	word [bp+6]
		call	fpc_ansistr_assign
		mov	bx,word [bp-2]
		lea	ax,[bx+10]
		push	ax
		push	word [bp+4]
		call	fpc_ansistr_assign
		mov	bx,word [bp-2]
		mov	ax,word [bp+8]
		mov	word [bx+6],ax
		mov	bx,word [bp-2]
		mov	ax,word [bp+10]
		mov	word [bx+4],ax
..@j11444:
		call	FPC_POPADDRSTACK
		lea	ax,[bp+6]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp+4]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j11445
		call	FPC_RERAISE
..@j11445:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	fpc_ansistr_assign
EXTERN	fpc_do_as
EXTERN	CLASSES$_$TLINKEDLIST_$__$$_ADD$$TLINKEDLISTITEM
EXTERN	VMT_$CLASSES_$$_TUNRESOLVEDREFERENCE
EXTERN	VMT_$CLASSES_$$_TLINKEDLIST
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
EXTERN	fpc_ansistr_incr_ref
