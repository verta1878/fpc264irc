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
	GLOBAL CLASSES_$$_FINDUNRESOLVEDINSTANCE$TPERSISTENT$$TUNRESOLVEDINSTANCE
CLASSES_$$_FINDUNRESOLVEDINSTANCE$TPERSISTENT$$TUNRESOLVEDINSTANCE:
		push	bp
		mov	bp,sp
		sub	sp,16
		mov	word [bp-2],0
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
		jne	..@j11238
		cmp	word [U_$CLASSES_$$_NEEDRESOLVING],0
		jne	..@j11241
		jmp	..@j11242
..@j11241:
		mov	bx,word [U_$CLASSES_$$_NEEDRESOLVING]
		mov	ax,word [bx+4]
		mov	word [bp-2],ax
		jmp	..@j11246
	ALIGN 2
..@j11245:
		mov	bx,word [bp-2]
		mov	ax,word [bx+2]
		mov	word [bp-2],ax
..@j11246:
		cmp	word [bp-2],0
		jne	..@j11250
		jmp	..@j11247
..@j11250:
		mov	bx,word [bp-2]
		mov	ax,word [bx+4]
		cmp	ax,word [bp+4]
		jne	..@j11245
		jmp	..@j11247
..@j11247:
..@j11242:
..@j11238:
		call	FPC_POPADDRSTACK
		mov	ax,word U_$CLASSES_$$_RESOLVESECTION
		push	ax
		call	SYSTEM_$$_LEAVECRITICALSECTION$TRTLCRITICALSECTION
		pop	ax
		test	ax,ax
		je	..@j11239
		call	FPC_RERAISE
..@j11239:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	FPC_RERAISE
EXTERN	SYSTEM_$$_LEAVECRITICALSECTION$TRTLCRITICALSECTION
EXTERN	FPC_POPADDRSTACK
EXTERN	U_$CLASSES_$$_NEEDRESOLVING
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
EXTERN	SYSTEM_$$_ENTERCRITICALSECTION$TRTLCRITICALSECTION
EXTERN	U_$CLASSES_$$_RESOLVESECTION
