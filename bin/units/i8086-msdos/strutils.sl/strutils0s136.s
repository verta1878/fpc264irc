BITS 16
CPU 8086
SECTION text use16 class=code
SECTION rodata class=data
SECTION data class=data
SECTION fpc class=data
SECTION bss class=bss
SECTION stack stack class=stack align=16
SECTION heap class=heap align=16
GROUP dgroup rodata data fpc bss stack heap
SECTION text

SECTION text
	ALIGN 2
	GLOBAL STRUTILS_$$_GETCMDLINEARG$ANSISTRING$TSYSCHARSET$$ANSISTRING
STRUTILS_$$_GETCMDLINEARG$ANSISTRING$TSYSCHARSET$$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,48
		mov	ax,word [bp+4]
		lea	di,[bp-36]
		push	ss
		pop	es
		mov	si,ax
		cld
		mov	cx,16
		rep
		movsw
		mov	word [bp-4],0
		mov	word [bp-40],0
		mov	word [bp-38],0
		mov	word [bp-2],1
		mov	ax,word [bp+8]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_assign
		jmp	..@j4202
	ALIGN 2
..@j4201:
		lea	ax,[bp-4]
		push	ax
		push	word [bp-2]
		call	OBJPAS_$$_PARAMSTR$SMALLINT$$ANSISTRING
		lea	ax,[bp-36]
		push	ax
		mov	ax,word _$STRUTILS$_Ld22
		push	ax
		mov	ax,32
		push	ax
		call	fpc_varset_comp_sets
		test	al,al
		jne	..@j4208
		jmp	..@j4210
..@j4210:
		mov	bx,word [bp-4]
		mov	al,byte [bx]
		mov	ah,0
		mov	si,ax
		mov	cl,4
		shr	si,cl
		shl	si,1
		mov	cx,ax
		and	cl,15
		test	ax,ax
		jbe	..@j4219
		test	al,0
		jmp	..@j4220
..@j4219:
		mov	ax,1
		shl	ax,cl
		test	word [bp+si-36],ax
..@j4220:
		jne	..@j4218
		jmp	..@j4209
..@j4218:
		mov	bx,word [bp-4]
		test	bx,bx
		je	..@j4221
		mov	bx,word [bx-2]
..@j4221:
		cmp	bx,1
		jg	..@j4217
		jmp	..@j4209
..@j4217:
		lea	ax,[bp-38]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-38]
		push	ax
		lea	ax,[bp-40]
		push	ax
		push	word [bp-4]
		mov	ax,2
		push	ax
		mov	bx,word [bp-4]
		test	bx,bx
		je	..@j4234
		mov	bx,word [bx-2]
..@j4234:
		dec	bx
		push	bx
		call	fpc_ansistr_copy
		push	word [bp-40]
		call	fpc_ansistr_assign
		push	word [bp-38]
		push	word [bp+6]
		mov	ax,word [U_$SYSTEM_$$_WIDESTRINGMANAGER+20]
		call	ax
		test	ax,ax
		je	..@j4208
		jmp	..@j4209
..@j4208:
		inc	word [bp-2]
		mov	ax,word [bp-2]
		cwd
		mov	word [bp-42],ax
		mov	word [bp-44],dx
		call	SYSTEM_$$_PARAMCOUNT$$LONGINT
		cmp	word [bp-44],dx
		jl	..@j4241
		jg	..@j4242
		cmp	word [bp-42],ax
		jbe	..@j4241
		jmp	..@j4242
..@j4241:
		mov	ax,word [bp+8]
		push	ax
		lea	ax,[bp-40]
		push	ax
		push	word [bp-2]
		call	OBJPAS_$$_PARAMSTR$SMALLINT$$ANSISTRING
		push	word [bp-40]
		call	fpc_ansistr_assign
..@j4242:
..@j4209:
		inc	word [bp-2]
..@j4202:
		mov	bx,word [bp+8]
		cmp	word [bx],0
		je	..@j4251
		jmp	..@j4203
..@j4251:
		mov	ax,word [bp-2]
		cwd
		mov	word [bp-46],ax
		mov	word [bp-48],dx
		call	SYSTEM_$$_PARAMCOUNT$$LONGINT
		cmp	word [bp-48],dx
		jl	..@j4201
		jg	..@j4203
		cmp	word [bp-46],ax
		jbe	..@j4201
		jmp	..@j4203
..@j4203:
		lea	ax,[bp-40]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-38]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-4]
		push	ax
		call	fpc_ansistr_decr_ref
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	SYSTEM_$$_PARAMCOUNT$$LONGINT
EXTERN	U_$SYSTEM_$$_WIDESTRINGMANAGER
EXTERN	fpc_ansistr_copy
EXTERN	fpc_ansistr_decr_ref
EXTERN	fpc_varset_comp_sets
EXTERN	_$STRUTILS$_Ld22
EXTERN	OBJPAS_$$_PARAMSTR$SMALLINT$$ANSISTRING
EXTERN	fpc_ansistr_assign
