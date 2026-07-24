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
	GLOBAL CLASSES$_$TCUSTOMMEMORYSTREAM_$__$$_SAVETOFILE$ANSISTRING
CLASSES$_$TCUSTOMMEMORYSTREAM_$__$$_SAVETOFILE$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,16
		mov	ax,word VMT_$CLASSES_$$_TFILESTREAM
		push	ax
		mov	ax,1
		push	ax
		push	word [bp+4]
		mov	ax,-256
		push	ax
		call	CLASSES$_$TFILESTREAM_$__$$_CREATE$ANSISTRING$WORD$$TFILESTREAM
		mov	word [bp-2],ax
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
		jne	..@j1777
		push	word [bp+6]
		push	word [bp-2]
		call	CLASSES$_$TCUSTOMMEMORYSTREAM_$__$$_SAVETOSTREAM$TSTREAM
..@j1777:
		call	FPC_POPADDRSTACK
		push	word [bp-2]
		call	SYSTEM$_$TOBJECT_$__$$_FREE
		pop	ax
		test	ax,ax
		je	..@j1778
		call	FPC_RERAISE
..@j1778:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_RERAISE
EXTERN	SYSTEM$_$TOBJECT_$__$$_FREE
EXTERN	FPC_POPADDRSTACK
EXTERN	CLASSES$_$TCUSTOMMEMORYSTREAM_$__$$_SAVETOSTREAM$TSTREAM
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
EXTERN	CLASSES$_$TFILESTREAM_$__$$_CREATE$ANSISTRING$WORD$$TFILESTREAM
EXTERN	VMT_$CLASSES_$$_TFILESTREAM
