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
	GLOBAL CLASSES_$$_FINDNESTEDCOMPONENT$TCOMPONENT$ANSISTRING$BOOLEAN$$TCOMPONENT
CLASSES_$$_FINDNESTEDCOMPONENT$TCOMPONENT$ANSISTRING$BOOLEAN$$TCOMPONENT:
		push	bp
		mov	bp,sp
		sub	sp,22
		push	word [bp+6]
		call	fpc_ansistr_incr_ref
		mov	word [bp-6],0
		mov	word [bp-22],0
		mov	ax,1
		push	ax
		lea	ax,[bp-18]
		push	ax
		lea	ax,[bp-12]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j15203
		cmp	word [bp+6],0
		je	..@j15205
		jmp	..@j15206
..@j15205:
		mov	word [bp-2],0
		jmp	..@j15209
..@j15206:
		mov	ax,word [bp+8]
		mov	word [bp-2],ax
		jmp	..@j15213
	ALIGN 2
..@j15212:
		mov	ax,word [bp-2]
		mov	word [bp-4],ax
		lea	ax,[bp-6]
		push	ax
		push	bp
		lea	ax,[bp-22]
		push	ax
		call	CLASSES$_$FINDNESTEDCOMPONENT$crc99F16C57_$$_GETNEXTNAME$$ANSISTRING
		push	word [bp-22]
		call	SYSUTILS_$$_UPPERCASE$ANSISTRING$$ANSISTRING
		push	word [bp-4]
		push	word [bp-6]
		call	CLASSES$_$TCOMPONENT_$__$$_FINDCOMPONENT$ANSISTRING$$TCOMPONENT
		mov	word [bp-2],ax
		cmp	word [bp-2],0
		je	..@j15233
		jmp	..@j15232
..@j15233:
		push	word [bp-6]
		mov	ax,word _$CLASSES$_Ld35
		push	ax
		call	fpc_ansistr_compare_equal
		cwd
		mov	cx,ax
		mov	ax,dx
		cmp	ax,0
		jne	..@j15232
		cmp	cx,0
		jne	..@j15232
		jmp	..@j15231
..@j15231:
		mov	ax,word [bp-4]
		mov	word [bp-2],ax
..@j15232:
..@j15213:
		cmp	word [bp+6],0
		jne	..@j15240
		jmp	..@j15214
..@j15240:
		cmp	word [bp-2],0
		jne	..@j15212
		jmp	..@j15214
..@j15214:
..@j15209:
..@j15203:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-22]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-6]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp+6]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j15204
		call	FPC_RERAISE
..@j15204:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	fpc_ansistr_compare_equal
EXTERN	_$CLASSES$_Ld35
EXTERN	CLASSES$_$TCOMPONENT_$__$$_FINDCOMPONENT$ANSISTRING$$TCOMPONENT
EXTERN	SYSUTILS_$$_UPPERCASE$ANSISTRING$$ANSISTRING
EXTERN	CLASSES$_$FINDNESTEDCOMPONENT$crc99F16C57_$$_GETNEXTNAME$$ANSISTRING
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
EXTERN	fpc_ansistr_incr_ref
