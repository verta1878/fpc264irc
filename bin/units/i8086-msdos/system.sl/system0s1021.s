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
	GLOBAL SYSTEM_$$_INITTEXT$TEXT
SYSTEM_$$_INITTEXT$TEXT:
		push	bp
		mov	bp,sp
		mov	ax,word [bp+4]
		push	ax
		mov	ax,830
		push	ax
		mov	ax,0
		push	ax
		call	SYSTEM_$$_FILLCHAR$formal$SMALLINT$BYTE
		mov	bx,word [bp+4]
		mov	word [bx],-1
		mov	bx,word [bp+4]
		mov	word [bx+2],-10320
		mov	word [bx+4],0
		mov	bx,word [bp+4]
		mov	word [bx+6],256
		mov	si,word [bp+4]
		mov	bx,word [bp+4]
		lea	ax,[bx+572]
		mov	word [si+14],ax
		mov	bx,word [bp+4]
		mov	ax,word SYSTEM_$$_FILEOPENFUNC$TEXTREC
		mov	word [bx+16],ax
		mov	ax,word [TC_$SYSTEM_$$_DEFAULTTEXTLINEBREAKSTYLE]
		mov	dx,word [TC_$SYSTEM_$$_DEFAULTTEXTLINEBREAKSTYLE+2]
		test	dx,dx
		jne	..@j20985
		test	ax,ax
		je	..@j20982
..@j20985:
		test	dx,dx
		jne	..@j20986
		cmp	ax,1
		je	..@j20983
..@j20986:
		test	dx,dx
		jne	..@j20987
		cmp	ax,2
		je	..@j20984
..@j20987:
		jmp	..@j20981
..@j20982:
		mov	bx,word [bp+4]
		mov	word [bx+568],2561
		jmp	..@j20980
..@j20983:
		mov	bx,word [bp+4]
		lea	ax,[bx+568]
		push	ax
		mov	ax,3
		push	ax
		mov	ax,word _$SYSTEM$_Ld34
		push	ax
		call	fpc_shortstr_to_shortstr
		jmp	..@j20980
..@j20984:
		mov	bx,word [bp+4]
		mov	word [bx+568],3329
		jmp	..@j20980
..@j20981:
..@j20980:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	fpc_shortstr_to_shortstr
EXTERN	_$SYSTEM$_Ld34
EXTERN	TC_$SYSTEM_$$_DEFAULTTEXTLINEBREAKSTYLE
EXTERN	SYSTEM_$$_FILEOPENFUNC$TEXTREC
EXTERN	SYSTEM_$$_FILLCHAR$formal$SMALLINT$BYTE
