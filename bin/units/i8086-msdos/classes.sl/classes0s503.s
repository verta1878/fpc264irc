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
	GLOBAL CLASSES_$$_ADDTORESOLVELIST$TPERSISTENT$$TUNRESOLVEDINSTANCE
CLASSES_$$_ADDTORESOLVELIST$TPERSISTENT$$TUNRESOLVEDINSTANCE:
		push	bp
		mov	bp,sp
		sub	sp,16
		push	word [bp+4]
		call	CLASSES_$$_FINDUNRESOLVEDINSTANCE$TPERSISTENT$$TUNRESOLVEDINSTANCE
		mov	word [bp-2],ax
		cmp	word [bp-2],0
		je	..@j11259
		jmp	..@j11260
..@j11259:
		mov	ax,word U_$CLASSES_$$_RESOLVESECTION
		push	ax
		call	SYSTEM_$$_ENTERCRITICALSECTION$TRTLCRITICALSECTION
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
		jne	..@j11263
		cmp	word [U_$CLASSES_$$_NEEDRESOLVING],0
		je	..@j11266
		jmp	..@j11267
..@j11266:
		mov	ax,word VMT_$CLASSES_$$_TLINKEDLIST
		push	ax
		mov	ax,1
		push	ax
		mov	ax,word VMT_$CLASSES_$$_TUNRESOLVEDINSTANCE
		push	ax
		mov	bx,word VMT_$CLASSES_$$_TLINKEDLIST
		mov	ax,word [bx+50]
		call	ax
		mov	word [U_$CLASSES_$$_NEEDRESOLVING],ax
..@j11267:
		mov	ax,word VMT_$CLASSES_$$_TUNRESOLVEDINSTANCE
		push	ax
		push	word [U_$CLASSES_$$_NEEDRESOLVING]
		call	CLASSES$_$TLINKEDLIST_$__$$_ADD$$TLINKEDLISTITEM
		push	ax
		call	fpc_do_as
		mov	word [bp-2],ax
		mov	bx,word [bp-2]
		mov	ax,word [bp+4]
		mov	word [bx+4],ax
..@j11263:
		call	FPC_POPADDRSTACK
		mov	ax,word U_$CLASSES_$$_RESOLVESECTION
		push	ax
		call	SYSTEM_$$_LEAVECRITICALSECTION$TRTLCRITICALSECTION
		pop	ax
		test	ax,ax
		je	..@j11264
		call	FPC_RERAISE
..@j11264:
..@j11260:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	FPC_RERAISE
EXTERN	SYSTEM_$$_LEAVECRITICALSECTION$TRTLCRITICALSECTION
EXTERN	FPC_POPADDRSTACK
EXTERN	fpc_do_as
EXTERN	CLASSES$_$TLINKEDLIST_$__$$_ADD$$TLINKEDLISTITEM
EXTERN	VMT_$CLASSES_$$_TUNRESOLVEDINSTANCE
EXTERN	VMT_$CLASSES_$$_TLINKEDLIST
EXTERN	U_$CLASSES_$$_NEEDRESOLVING
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
EXTERN	SYSTEM_$$_ENTERCRITICALSECTION$TRTLCRITICALSECTION
EXTERN	U_$CLASSES_$$_RESOLVESECTION
EXTERN	CLASSES_$$_FINDUNRESOLVEDINSTANCE$TPERSISTENT$$TUNRESOLVEDINSTANCE
