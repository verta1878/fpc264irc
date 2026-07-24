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
	GLOBAL CLASSES_$$_REGISTERCOMPONENTS$ANSISTRING$array_of_TCOMPONENTCLASS
CLASSES_$$_REGISTERCOMPONENTS$ANSISTRING$array_of_TCOMPONENTCLASS:
		push	bp
		mov	bp,sp
		sub	sp,8
		mov	ax,word [bp+6]
		mov	di,word [bp+4]
		inc	di
		mov	cx,di
		shl	di,1
		sub	sp,di
		and	sp,-2
		mov	di,sp
		push	ss
		pop	es
		mov	si,ax
		cld
		rep
		movsw
		mov	ax,sp
		mov	word [bp+6],ax
		cmp	word [bp+8],0
		je	..@j13917
		jmp	..@j13918
..@j13917:
		jmp	..@j13915
..@j13918:
		mov	word [bp-4],0
		cmp	word [U_$CLASSES_$$_COMPONENTPAGES],0
		je	..@j13921
		jmp	..@j13922
..@j13921:
		call	CLASSES_$$_INITCOMPONENTPAGES
		jmp	..@j13923
..@j13922:
		push	word [U_$CLASSES_$$_COMPONENTPAGES]
		call	CLASSES$_$TCOLLECTION_$__$$_GETCOUNT$$SMALLINT
		dec	ax
		mov	word [bp-8],ax
		mov	word [bp-2],0
		mov	ax,word [bp-8]
		cmp	ax,word [bp-2]
		jl	..@j13929
		dec	word [bp-2]
	ALIGN 2
..@j13930:
		inc	word [bp-2]
		push	word [U_$CLASSES_$$_COMPONENTPAGES]
		push	word [bp-2]
		call	CLASSES$_$TCOLLECTION_$__$$_GETITEM$SMALLINT$$TCOLLECTIONITEM
		mov	bx,ax
		push	word [bx+12]
		push	word [bp+8]
		call	fpc_ansistr_compare_equal
		cwd
		mov	cx,ax
		mov	ax,dx
		cmp	ax,0
		jne	..@j13932
		cmp	cx,0
		jne	..@j13932
		jmp	..@j13931
..@j13931:
		push	word [U_$CLASSES_$$_COMPONENTPAGES]
		push	word [bp-2]
		call	CLASSES$_$TCOLLECTION_$__$$_GETITEM$SMALLINT$$TCOLLECTIONITEM
		mov	word [bp-4],ax
		jmp	..@j13929
..@j13932:
		mov	ax,word [bp-8]
		cmp	ax,word [bp-2]
		jg	..@j13930
..@j13929:
..@j13923:
		cmp	word [bp-4],0
		je	..@j13947
		jmp	..@j13948
..@j13947:
		push	word [U_$CLASSES_$$_COMPONENTPAGES]
		call	CLASSES$_$TCOLLECTION_$__$$_ADD$$TCOLLECTIONITEM
		mov	word [bp-4],ax
		mov	bx,word [bp-4]
		lea	ax,[bx+12]
		push	ax
		push	word [bp+8]
		call	fpc_ansistr_assign
..@j13948:
		mov	bx,word [bp-4]
		cmp	word [bx+14],0
		je	..@j13957
		jmp	..@j13958
..@j13957:
		mov	ax,word VMT_$CLASSES_$$_TLIST
		push	ax
		mov	ax,1
		push	ax
		call	CLASSES$_$TLIST_$__$$_CREATE$$TLIST
		mov	bx,word [bp-4]
		mov	word [bx+14],ax
..@j13958:
		mov	ax,word [bp+4]
		mov	word [bp-6],ax
		mov	word [bp-2],0
		mov	ax,word [bp-6]
		cmp	ax,word [bp-2]
		jl	..@j13968
		dec	word [bp-2]
	ALIGN 2
..@j13969:
		inc	word [bp-2]
		mov	bx,word [bp-4]
		push	word [bx+14]
		mov	bx,word [bp+6]
		mov	ax,word [bp-2]
		mov	si,ax
		shl	si,1
		push	word [bx+si]
		call	CLASSES$_$TLIST_$__$$_ADD$POINTER$$SMALLINT
		mov	ax,word [bp-6]
		cmp	ax,word [bp-2]
		jg	..@j13969
..@j13968:
		cmp	word [U_$CLASSES_$$_REGISTERCOMPONENTSPROC],0
		jne	..@j13974
		jmp	..@j13975
..@j13974:
		push	word [bp+8]
		mov	ax,word [bp+6]
		push	ax
		push	word [bp+4]
		mov	ax,word [U_$CLASSES_$$_REGISTERCOMPONENTSPROC]
		call	ax
..@j13975:
..@j13915:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	U_$CLASSES_$$_REGISTERCOMPONENTSPROC
EXTERN	CLASSES$_$TLIST_$__$$_ADD$POINTER$$SMALLINT
EXTERN	CLASSES$_$TLIST_$__$$_CREATE$$TLIST
EXTERN	VMT_$CLASSES_$$_TLIST
EXTERN	fpc_ansistr_assign
EXTERN	CLASSES$_$TCOLLECTION_$__$$_ADD$$TCOLLECTIONITEM
EXTERN	fpc_ansistr_compare_equal
EXTERN	CLASSES$_$TCOLLECTION_$__$$_GETITEM$SMALLINT$$TCOLLECTIONITEM
EXTERN	CLASSES$_$TCOLLECTION_$__$$_GETCOUNT$$SMALLINT
EXTERN	CLASSES_$$_INITCOMPONENTPAGES
EXTERN	U_$CLASSES_$$_COMPONENTPAGES
