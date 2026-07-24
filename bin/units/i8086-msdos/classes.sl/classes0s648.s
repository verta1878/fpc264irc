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
	GLOBAL CLASSES_$$_GETCLASS$ANSISTRING$$TPERSISTENTCLASS
CLASSES_$$_GETCLASS$ANSISTRING$$TPERSISTENTCLASS:
		push	bp
		mov	bp,sp
		sub	sp,280
		push	word [U_$CLASSES_$$_CLASSLIST]
		call	CLASSES$_$TTHREADLIST_$__$$_LOCKLIST$$TLIST
		mov	word [bp-280],ax
		mov	ax,word [bp-280]
		mov	word [bp-278],ax
		mov	ax,1
		push	ax
		lea	ax,[bp-16]
		push	ax
		lea	ax,[bp-10]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j13824
		push	word [bp-278]
		call	CLASSES$_$TLIST_$__$$_GETCOUNT$$SMALLINT
		dec	ax
		mov	word [bp-276],ax
		mov	word [bp-4],0
		mov	ax,word [bp-276]
		cmp	ax,word [bp-4]
		jl	..@j13832
		dec	word [bp-4]
	ALIGN 2
..@j13833:
		inc	word [bp-4]
		push	word [bp-278]
		push	word [bp-4]
		call	CLASSES$_$TLIST_$__$$_GET$SMALLINT$$POINTER
		mov	word [bp-2],ax
		push	word [bp-2]
		lea	ax,[bp-274]
		push	ax
		mov	ax,255
		push	ax
		push	word [bp+4]
		call	fpc_ansistr_to_shortstr
		lea	ax,[bp-274]
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_CLASSNAMEIS$SHORTSTRING$$BOOLEAN
		test	al,al
		jne	..@j13840
		jmp	..@j13841
..@j13840:
		jmp	..@j13826
..@j13841:
		mov	ax,word [bp-276]
		cmp	ax,word [bp-4]
		jg	..@j13833
..@j13832:
		push	word [U_$CLASSES_$$_CLASSALIASLIST]
		push	word [bp+4]
		mov	bx,word [U_$CLASSES_$$_CLASSALIASLIST]
		mov	bx,word [bx]
		mov	ax,word [bx+100]
		call	ax
		mov	word [bp-4],ax
		cmp	word [bp-4],0
		jge	..@j13858
		jmp	..@j13859
..@j13858:
		push	word [U_$CLASSES_$$_CLASSALIASLIST]
		push	word [bp-4]
		mov	bx,word [U_$CLASSES_$$_CLASSALIASLIST]
		mov	bx,word [bx]
		mov	ax,word [bx+66]
		call	ax
		mov	word [bp-2],ax
		jmp	..@j13826
..@j13859:
		mov	word [bp-2],0
..@j13824:
		call	FPC_POPADDRSTACK
		push	word [U_$CLASSES_$$_CLASSLIST]
		call	CLASSES$_$TTHREADLIST_$__$$_UNLOCKLIST
		pop	ax
		test	ax,ax
		je	..@j13825
		cmp	ax,2
		je	..@j13816
		call	FPC_RERAISE
..@j13826:
		pop	ax
		mov	dx,2
		push	dx
		jmp	..@j13824
..@j13825:
..@j13816:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	FPC_RERAISE
EXTERN	CLASSES$_$TTHREADLIST_$__$$_UNLOCKLIST
EXTERN	FPC_POPADDRSTACK
EXTERN	U_$CLASSES_$$_CLASSALIASLIST
EXTERN	SYSTEM$_$TOBJECT_$__$$_CLASSNAMEIS$SHORTSTRING$$BOOLEAN
EXTERN	fpc_ansistr_to_shortstr
EXTERN	CLASSES$_$TLIST_$__$$_GET$SMALLINT$$POINTER
EXTERN	CLASSES$_$TLIST_$__$$_GETCOUNT$$SMALLINT
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
EXTERN	CLASSES$_$TTHREADLIST_$__$$_LOCKLIST$$TLIST
EXTERN	U_$CLASSES_$$_CLASSLIST
