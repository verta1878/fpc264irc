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
	GLOBAL SYSUTILS_$$_EXTRACTFILEPATH$RAWBYTESTRING$$RAWBYTESTRING
SYSUTILS_$$_EXTRACTFILEPATH$RAWBYTESTRING$$RAWBYTESTRING:
		push	bp
		mov	bp,sp
		sub	sp,68
		mov	bx,word [bp+4]
		test	bx,bx
		je	..@j309
		mov	bx,word [bx-2]
..@j309:
		mov	ax,bx
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-4],cx
		mov	word [bp-2],ax
		mov	ax,word TC_$SYSTEM_$$_ALLOWDIRECTORYSEPARATORS
		push	ax
		mov	ax,word TC_$SYSTEM_$$_ALLOWDRIVESEPARATORS
		push	ax
		lea	ax,[bp-68]
		push	ax
		mov	ax,32
		push	ax
		call	fpc_varset_add_sets
		lea	di,[bp-36]
		push	ss
		pop	es
		lea	si,[bp-68]
		cld
		mov	cx,16
		rep
		movsw
		jmp	..@j321
	ALIGN 2
..@j320:
		sub	word [bp-4],1
		sbb	word [bp-2],0
..@j321:
		mov	dx,word [bp-4]
		mov	ax,word [bp-2]
		cmp	ax,0
		jg	..@j323
		jl	..@j322
		cmp	dx,0
		ja	..@j323
		jmp	..@j322
..@j323:
		mov	bx,word [bp+4]
		mov	si,word [bp-4]
		lea	bx,[bx+si-1]
		mov	al,byte [bx]
		mov	ah,0
		mov	si,ax
		mov	cl,4
		shr	si,cl
		shl	si,1
		mov	cx,ax
		and	cl,15
		mov	ax,1
		shl	ax,cl
		test	word [bp+si-36],ax
		mov	al,0
		je	..@j328
		inc	ax
..@j328:
		test	al,al
		je	..@j320
		jmp	..@j322
..@j322:
		mov	dx,word [bp-4]
		mov	ax,word [bp-2]
		cmp	ax,0
		jg	..@j329
		jl	..@j330
		cmp	dx,0
		ja	..@j329
		jmp	..@j330
..@j329:
		mov	ax,word [bp+6]
		push	ax
		push	word [bp+4]
		mov	ax,1
		push	ax
		push	word [bp-4]
		call	fpc_ansistr_copy
		jmp	..@j339
..@j330:
		mov	ax,word [bp+6]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_assign
..@j339:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	fpc_ansistr_assign
EXTERN	fpc_ansistr_copy
EXTERN	fpc_varset_add_sets
EXTERN	TC_$SYSTEM_$$_ALLOWDRIVESEPARATORS
EXTERN	TC_$SYSTEM_$$_ALLOWDIRECTORYSEPARATORS
