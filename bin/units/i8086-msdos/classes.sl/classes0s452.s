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
	GLOBAL CLASSES$_$TTHREAD_$__$$_NAMETHREADFORDEBUGGING$ANSISTRING$WORD
CLASSES$_$TTHREAD_$__$$_NAMETHREADFORDEBUGGING$ANSISTRING$WORD:
		push	bp
		mov	bp,sp
		sub	sp,16
		push	word [bp+6]
		call	fpc_ansistr_incr_ref
		mov	word [bp-16],0
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
		jne	..@j10318
		lea	ax,[bp-16]
		push	ax
		push	word [bp+6]
		call	fpc_ansistr_to_unicodestr
		push	word [bp-16]
		push	word [bp+4]
		call	CLASSES$_$TTHREAD_$__$$_NAMETHREADFORDEBUGGING$UNICODESTRING$WORD
..@j10318:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-16]
		push	ax
		call	fpc_unicodestr_decr_ref
		lea	ax,[bp+6]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j10319
		call	FPC_RERAISE
..@j10319:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	fpc_unicodestr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	CLASSES$_$TTHREAD_$__$$_NAMETHREADFORDEBUGGING$UNICODESTRING$WORD
EXTERN	fpc_ansistr_to_unicodestr
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
EXTERN	fpc_ansistr_incr_ref
