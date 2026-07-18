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
	GLOBAL SYSTEM_$$_OPENSTDIO$TEXT$LONGINT$WORD
SYSTEM_$$_OPENSTDIO$TEXT$LONGINT$WORD:
		push	bp
		mov	bp,sp
		mov	ax,word [bp+10]
		push	ax
		mov	ax,word _$SYSTEM$_Ld2
		push	ax
		call	SYSTEM_$$_ASSIGN$TEXT$SHORTSTRING
		mov	bx,word [bp+10]
		mov	ax,word [bp+4]
		mov	word [bx],ax
		mov	bx,word [bp+10]
		mov	ax,word [bp+6]
		mov	word [bx+2],ax
		mov	ax,word [bp+8]
		mov	word [bx+4],ax
		mov	bx,word [bp+10]
		mov	ax,word SYSTEM_$$_FILECLOSEFUNC$TEXTREC
		mov	word [bx+22],ax
		mov	ax,word [bp+6]
		mov	dx,word [bp+8]
		test	dx,dx
		jne	..@j24289
		cmp	ax,-10319
		je	..@j24287
..@j24289:
		test	dx,dx
		jne	..@j24290
		cmp	ax,-10318
		je	..@j24288
..@j24290:
		jmp	..@j24286
..@j24287:
		mov	bx,word [bp+10]
		mov	ax,word SYSTEM_$$_FILEREADFUNC$TEXTREC
		mov	word [bx+18],ax
		mov	ax,0
		push	ax
		mov	ax,1
		push	ax
		mov	ax,word [U_$SYSTEM_$$_WIDESTRINGMANAGER+48]
		call	ax
		mov	bx,word [bp+10]
		mov	word [bx+828],ax
		jmp	..@j24285
..@j24288:
		mov	bx,word [bp+10]
		mov	ax,word SYSTEM_$$_FILEWRITEFUNC$TEXTREC
		mov	word [bx+18],ax
		mov	ax,0
		push	ax
		mov	ax,2
		push	ax
		mov	ax,word [U_$SYSTEM_$$_WIDESTRINGMANAGER+48]
		call	ax
		mov	bx,word [bp+10]
		mov	word [bx+828],ax
		push	word [bp+4]
		call	SYSTEM_$$_DO_ISDEVICE$WORD$$BOOLEAN
		test	al,al
		jne	..@j24303
		jmp	..@j24304
..@j24303:
		mov	bx,word [bp+10]
		mov	ax,word SYSTEM_$$_FILEWRITEFUNC$TEXTREC
		mov	word [bx+20],ax
..@j24304:
		jmp	..@j24285
..@j24286:
		mov	ax,0
		push	ax
		mov	ax,102
		push	ax
		call	FPC_HANDLEERROR
..@j24285:
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	FPC_HANDLEERROR
EXTERN	SYSTEM_$$_DO_ISDEVICE$WORD$$BOOLEAN
EXTERN	SYSTEM_$$_FILEWRITEFUNC$TEXTREC
EXTERN	U_$SYSTEM_$$_WIDESTRINGMANAGER
EXTERN	SYSTEM_$$_FILEREADFUNC$TEXTREC
EXTERN	SYSTEM_$$_FILECLOSEFUNC$TEXTREC
EXTERN	SYSTEM_$$_ASSIGN$TEXT$SHORTSTRING
EXTERN	_$SYSTEM$_Ld2
