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
	GLOBAL fpc_val_enum_shortstr
fpc_val_enum_shortstr:
	GLOBAL FPC_VAL_ENUM_SHORTSTR
FPC_VAL_ENUM_SHORTSTR:
		push	bp
		mov	bp,sp
		sub	sp,536
		mov	byte [bp-21],1
		mov	bx,word [bp+4]
		mov	word [bx],1
		jmp	..@j7957
	ALIGN 2
..@j7956:
		inc	byte [bp-21]
..@j7957:
		mov	bx,word [bp+6]
		mov	al,byte [bx]
		cmp	al,byte [bp-21]
		jae	..@j7959
		jmp	..@j7958
..@j7959:
		mov	bx,word [bp+6]
		mov	al,byte [bp-21]
		mov	byte [bp-536],al
		mov	byte [bp-535],0
		mov	si,word [bp-536]
		cmp	byte [bx+si],32
		je	..@j7956
		jmp	..@j7958
..@j7958:
		lea	ax,[bp-277]
		push	ax
		lea	ax,[bp-533]
		push	ax
		mov	ax,word [bp+6]
		push	ax
		mov	al,byte [bp-21]
		mov	ah,0
		push	ax
		mov	ax,255
		push	ax
		call	fpc_shortstr_copy
		lea	ax,[bp-533]
		push	ax
		call	SYSTEM_$$_UPCASE$SHORTSTRING$$SHORTSTRING
		mov	bx,word [bp+8]
		lea	ax,[bx+4]
		mov	word [bp-20],ax
		mov	word [bp-8],1
		mov	word [bp-6],0
		mov	bx,word [bp+8]
		mov	ax,word [bx]
		mov	word [bp-12],ax
		mov	ax,word [bx+2]
		mov	word [bp-10],ax
	ALIGN 2
..@j7978:
		mov	bx,word [bp-8]
		mov	cx,word [bp-6]
		mov	ax,word [bp-12]
		mov	dx,word [bp-10]
		add	ax,bx
		adc	dx,cx
		shr	dx,1
		rcr	ax,1
		mov	word [bp-16],ax
		mov	word [bp-14],dx
		push	bp
		lea	ax,[bp-277]
		push	ax
		lea	ax,[bp-533]
		push	ax
		mov	bx,word [bp-20]
		mov	ax,word [bp-16]
		mov	dx,word [bp-14]
		sub	ax,1
		sbb	dx,0
		mov	si,ax
		mov	ax,6
		mul	si
		mov	si,ax
		mov	ax,word [bx+si+4]
		push	ax
		call	SYSTEM_$$_UPCASE$SHORTSTRING$$SHORTSTRING
		lea	ax,[bp-533]
		push	ax
		call	SYSTEM$_$fpc_val_enum_shortstr$crcC50A7760_$$_STRING_COMPARE$SHORTSTRING$SHORTSTRING$$SMALLINT
		mov	word [bp-18],ax
		cmp	word [bp-18],0
		jg	..@j7995
		jmp	..@j7996
..@j7995:
		mov	ax,word [bp-16]
		mov	dx,word [bp-14]
		add	ax,1
		adc	dx,0
		mov	word [bp-8],ax
		mov	word [bp-6],dx
		jmp	..@j7999
..@j7996:
		cmp	word [bp-18],0
		jl	..@j8000
		jmp	..@j8001
..@j8000:
		mov	ax,word [bp-16]
		mov	dx,word [bp-14]
		sub	ax,1
		sbb	dx,0
		mov	word [bp-12],ax
		mov	word [bp-10],dx
		jmp	..@j8004
..@j8001:
		jmp	..@j7980
..@j8004:
..@j7999:
		mov	dx,word [bp-8]
		mov	ax,word [bp-6]
		cmp	ax,word [bp-10]
		ja	..@j8005
		jb	..@j8006
		cmp	dx,word [bp-12]
		ja	..@j8005
		jmp	..@j8006
		jmp	..@j8006
..@j8005:
		mov	al,byte [bp-21]
		mov	ah,0
		dec	ax
		mov	bx,word [bp+4]
		add	word [bx],ax
		jmp	..@j7948
..@j8006:
		jmp	..@j7978
..@j7980:
		mov	bx,word [bp+4]
		mov	word [bx],0
		mov	bx,word [bp-20]
		mov	ax,word [bp-16]
		mov	dx,word [bp-14]
		sub	ax,1
		sbb	dx,0
		mov	si,ax
		mov	ax,6
		mul	si
		mov	si,ax
		mov	ax,word [bx+si]
		mov	word [bp-4],ax
		mov	ax,word [bx+si+2]
		mov	word [bp-2],ax
..@j7948:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	SYSTEM$_$fpc_val_enum_shortstr$crcC50A7760_$$_STRING_COMPARE$SHORTSTRING$SHORTSTRING$$SMALLINT
EXTERN	SYSTEM_$$_UPCASE$SHORTSTRING$$SHORTSTRING
EXTERN	fpc_shortstr_copy
