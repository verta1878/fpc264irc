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
	GLOBAL SYSTEM$_$fpc_val_enum_shortstr$crcC50A7760_$$_STRING_COMPARE$SHORTSTRING$SHORTSTRING$$SMALLINT
SYSTEM$_$fpc_val_enum_shortstr$crcC50A7760_$$_STRING_COMPARE$SHORTSTRING$SHORTSTRING$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,10
		mov	bx,word [bp+6]
		mov	al,byte [bx]
		mov	byte [bp-4],al
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		mov	al,byte [bx]
		cmp	al,byte [si]
		ja	..@j8013
		jmp	..@j8014
..@j8013:
		mov	bx,word [bp+4]
		mov	al,byte [bx]
		mov	byte [bp-4],al
..@j8014:
		mov	byte [bp-3],1
		jmp	..@j8020
	ALIGN 2
..@j8019:
		mov	bx,word [bp+6]
		mov	al,byte [bp-3]
		mov	byte [bp-10],al
		mov	byte [bp-9],0
		mov	si,word [bp-10]
		mov	al,byte [bx+si]
		mov	byte [bp-5],al
		mov	bx,word [bp+4]
		mov	al,byte [bp-3]
		mov	byte [bp-8],al
		mov	byte [bp-7],0
		mov	si,word [bp-8]
		mov	al,byte [bx+si]
		mov	byte [bp-6],al
		mov	al,byte [bp-5]
		cmp	al,byte [bp-6]
		jne	..@j8026
		jmp	..@j8027
..@j8026:
		jmp	..@j8021
..@j8027:
		inc	byte [bp-3]
..@j8020:
		mov	al,byte [bp-3]
		cmp	al,byte [bp-4]
		jbe	..@j8019
		jmp	..@j8021
..@j8021:
		mov	bx,word [bp+8]
		mov	bx,word [bx+4]
		mov	al,byte [bp-3]
		mov	ah,0
		cmp	ax,word [bx]
		jg	..@j8028
		jmp	..@j8029
..@j8028:
		mov	bx,word [bp+8]
		mov	bx,word [bx+4]
		mov	al,byte [bp-3]
		mov	ah,0
		mov	word [bx],ax
..@j8029:
		mov	al,byte [bp-3]
		cmp	al,byte [bp-4]
		jbe	..@j8032
		jmp	..@j8033
..@j8032:
		mov	al,byte [bp-5]
		mov	ah,0
		mov	dl,byte [bp-6]
		mov	dh,0
		sub	ax,dx
		mov	word [bp-2],ax
		jmp	..@j8036
..@j8033:
		mov	bx,word [bp+6]
		mov	al,byte [bx]
		mov	ah,0
		mov	bx,word [bp+4]
		mov	dl,byte [bx]
		mov	dh,0
		sub	ax,dx
		mov	word [bp-2],ax
..@j8036:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	6
