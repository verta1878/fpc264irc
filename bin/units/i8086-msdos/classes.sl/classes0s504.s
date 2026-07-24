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
	GLOBAL CLASSES_$$_VISITRESOLVELIST$TLINKEDLISTVISITOR
CLASSES_$$_VISITRESOLVELIST$TLINKEDLISTVISITOR:
		push	bp
		mov	bp,sp
		sub	sp,28
		mov	ax,word U_$CLASSES_$$_RESOLVESECTION
		push	ax
		call	SYSTEM_$$_ENTERCRITICALSECTION$TRTLCRITICALSECTION
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
		jne	..@j11292
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
		jne	..@j11295
		push	word [U_$CLASSES_$$_NEEDRESOLVING]
		push	word [bp+4]
		call	CLASSES$_$TLINKEDLIST_$__$$_FOREACH$TLINKEDLISTVISITOR
..@j11295:
		call	FPC_POPADDRSTACK
		lea	ax,[bp+4]
		push	ax
		call	SYSUTILS_$$_FREEANDNIL$formal
		pop	ax
		test	ax,ax
		je	..@j11296
		call	FPC_RERAISE
..@j11296:
..@j11292:
		call	FPC_POPADDRSTACK
		mov	ax,word U_$CLASSES_$$_RESOLVESECTION
		push	ax
		call	SYSTEM_$$_LEAVECRITICALSECTION$TRTLCRITICALSECTION
		pop	ax
		test	ax,ax
		je	..@j11293
		call	FPC_RERAISE
..@j11293:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	SYSTEM_$$_LEAVECRITICALSECTION$TRTLCRITICALSECTION
EXTERN	FPC_RERAISE
EXTERN	SYSUTILS_$$_FREEANDNIL$formal
EXTERN	FPC_POPADDRSTACK
EXTERN	CLASSES$_$TLINKEDLIST_$__$$_FOREACH$TLINKEDLISTVISITOR
EXTERN	U_$CLASSES_$$_NEEDRESOLVING
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
EXTERN	SYSTEM_$$_ENTERCRITICALSECTION$TRTLCRITICALSECTION
EXTERN	U_$CLASSES_$$_RESOLVESECTION
