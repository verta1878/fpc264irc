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
	GLOBAL VARUTILS_$$_PREPAREFLOATSTR$SHORTSTRING
VARUTILS_$$_PREPAREFLOATSTR$SHORTSTRING:
		push	bp
		mov	bp,sp
		sub	sp,14
		mov	byte [bp-2],1
		mov	bx,word [bp+4]
		mov	dl,byte [bx]
		mov	byte [bp-1],1
		cmp	dl,byte [bp-1]
		jb	..@j849
		dec	byte [bp-1]
	ALIGN 2
..@j850:
		inc	byte [bp-1]
		mov	bx,word [bp+4]
		mov	al,byte [bp-1]
		mov	byte [bp-4],al
		mov	byte [bp-3],0
		mov	si,word [bp-4]
		mov	al,byte [bx+si]
		cmp	al,byte [TC_$SYSUTILS_$$_DEFAULTFORMATSETTINGS+2]
		jne	..@j851
		jmp	..@j852
..@j851:
		mov	bx,word [bp+4]
		mov	al,byte [bp-1]
		mov	byte [bp-6],al
		mov	byte [bp-5],0
		mov	si,word [bp-6]
		mov	al,byte [bx+si]
		cmp	al,byte [TC_$SYSUTILS_$$_DEFAULTFORMATSETTINGS+3]
		je	..@j853
		jmp	..@j854
..@j853:
		mov	bx,word [bp+4]
		mov	al,byte [bp-2]
		mov	byte [bp-8],al
		mov	byte [bp-7],0
		mov	si,word [bp-8]
		mov	byte [bx+si],46
		jmp	..@j857
..@j854:
		mov	ax,word [bp+4]
		mov	word [bp-10],ax
		mov	al,byte [bp-2]
		mov	byte [bp-14],al
		mov	byte [bp-13],0
		mov	bx,word [bp+4]
		mov	al,byte [bp-1]
		mov	byte [bp-12],al
		mov	byte [bp-11],0
		mov	si,word [bp-12]
		mov	al,byte [bx+si]
		mov	bx,word [bp-10]
		mov	si,word [bp-14]
		mov	byte [bx+si],al
..@j857:
		inc	byte [bp-2]
..@j852:
		cmp	dl,byte [bp-1]
		ja	..@j850
..@j849:
		mov	ax,word [bp+4]
		push	ax
		mov	ax,255
		push	ax
		mov	al,byte [bp-2]
		dec	al
		mov	ah,0
		push	ax
		call	fpc_shortstr_setlength
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	fpc_shortstr_setlength
EXTERN	TC_$SYSUTILS_$$_DEFAULTFORMATSETTINGS
