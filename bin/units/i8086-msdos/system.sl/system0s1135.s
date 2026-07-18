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
	GLOBAL fpc_setupwritestr_shortstr
fpc_setupwritestr_shortstr:
		push	bp
		mov	bp,sp
		mov	ax,word [bp+8]
		push	ax
		push	word [U_$SYSTEM_$$_DEFAULTSYSTEMCODEPAGE]
		call	SYSTEM_$$_SETUPWRITESTRCOMMON$TEXTREC$WORD
		mov	bx,word [bp+8]
		lea	bx,[bx+24]
		mov	ax,word [bp+6]
		mov	word [bx],ax
		mov	bx,word [bp+8]
		lea	ax,[bx+32]
		push	ax
		mov	ax,word [bp+4]
		inc	ax
		push	ax
		call	SYSTEM_$$_GETMEM$POINTER$WORD
		mov	bx,word [bp+8]
		lea	bx,[bx+32]
		mov	ax,word [bx]
		push	ax
		mov	ax,255
		push	ax
		mov	ax,0
		push	ax
		call	fpc_shortstr_setlength
		mov	bx,word [bp+8]
		mov	al,byte [bp+4]
		mov	byte [bx+40],al
		mov	bx,word [bp+8]
		mov	ax,word SYSTEM_$$_WRITESTRSHORT$TEXTREC
		mov	word [bx+18],ax
		mov	bx,word [bp+8]
		mov	ax,word SYSTEM_$$_WRITESTRSHORTFLUSH$TEXTREC
		mov	word [bx+20],ax
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	SYSTEM_$$_WRITESTRSHORTFLUSH$TEXTREC
EXTERN	SYSTEM_$$_WRITESTRSHORT$TEXTREC
EXTERN	fpc_shortstr_setlength
EXTERN	SYSTEM_$$_GETMEM$POINTER$WORD
EXTERN	SYSTEM_$$_SETUPWRITESTRCOMMON$TEXTREC$WORD
EXTERN	U_$SYSTEM_$$_DEFAULTSYSTEMCODEPAGE
