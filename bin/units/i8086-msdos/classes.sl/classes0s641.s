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
	GLOBAL CLASSES_$$_REGISTERCLASS$TPERSISTENTCLASS
CLASSES_$$_REGISTERCLASS$TPERSISTENTCLASS:
		push	bp
		mov	bp,sp
		sub	sp,290
		mov	word [bp-2],0
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
		jne	..@j13712
		push	word [U_$CLASSES_$$_CLASSLIST]
		call	CLASSES$_$TTHREADLIST_$__$$_LOCKLIST$$TLIST
		mov	word [bp-290],ax
		mov	ax,word [bp-290]
		mov	word [bp-288],ax
		mov	ax,1
		push	ax
		lea	ax,[bp-28]
		push	ax
		lea	ax,[bp-22]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j13720
		jmp	..@j13724
	ALIGN 2
..@j13723:
		lea	ax,[bp-2]
		push	ax
		push	word [bp+4]
		lea	ax,[bp-286]
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_CLASSNAME$$SHORTSTRING
		lea	ax,[bp-286]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_shortstr_to_ansistr
		push	word [bp-2]
		call	CLASSES_$$_GETCLASS$ANSISTRING$$TPERSISTENTCLASS
		test	ax,ax
		jne	..@j13736
		jmp	..@j13737
..@j13736:
		jmp	..@j13722
..@j13737:
		push	word [bp-288]
		push	word [bp+4]
		call	CLASSES$_$TLIST_$__$$_ADD$POINTER$$SMALLINT
		mov	ax,word VMT_$CLASSES_$$_TPERSISTENT
		cmp	ax,word [bp+4]
		je	..@j13744
		jmp	..@j13745
..@j13744:
		jmp	..@j13725
..@j13745:
		mov	bx,word [bp+4]
		mov	ax,word [bx+4]
		mov	word [bp+4],ax
..@j13724:
		push	word [bp-288]
		push	word [bp+4]
		call	CLASSES$_$TLIST_$__$$_INDEXOF$POINTER$$SMALLINT
		cmp	ax,-1
		je	..@j13723
		jmp	..@j13725
..@j13725:
..@j13720:
		call	FPC_POPADDRSTACK
		push	word [U_$CLASSES_$$_CLASSLIST]
		call	CLASSES$_$TTHREADLIST_$__$$_UNLOCKLIST
		pop	ax
		test	ax,ax
		je	..@j13721
		cmp	ax,2
		je	..@j13712
		call	FPC_RERAISE
..@j13722:
		pop	ax
		mov	dx,2
		push	dx
		jmp	..@j13720
..@j13721:
..@j13712:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-2]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j13713
		call	FPC_RERAISE
..@j13713:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_RERAISE
EXTERN	CLASSES$_$TTHREADLIST_$__$$_UNLOCKLIST
EXTERN	FPC_POPADDRSTACK
EXTERN	CLASSES$_$TLIST_$__$$_INDEXOF$POINTER$$SMALLINT
EXTERN	VMT_$CLASSES_$$_TPERSISTENT
EXTERN	CLASSES$_$TLIST_$__$$_ADD$POINTER$$SMALLINT
EXTERN	CLASSES_$$_GETCLASS$ANSISTRING$$TPERSISTENTCLASS
EXTERN	fpc_shortstr_to_ansistr
EXTERN	SYSTEM$_$TOBJECT_$__$$_CLASSNAME$$SHORTSTRING
EXTERN	CLASSES$_$TTHREADLIST_$__$$_LOCKLIST$$TLIST
EXTERN	U_$CLASSES_$$_CLASSLIST
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
