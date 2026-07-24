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
	GLOBAL SYSTEM_$$_ENDOFLASTCOMPLETEUTF8CODEPOINT$TEXTREC$$SMALLINT
SYSTEM_$$_ENDOFLASTCOMPLETEUTF8CODEPOINT$TEXTREC$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,10
		mov	word [bp-6],0
		mov	bx,word [bp+4]
		mov	ax,word [bx+10]
		dec	ax
		mov	word [bp-4],ax
		cmp	word [bp-4],0
		jl	..@j23994
		inc	word [bp-4]
	ALIGN 2
..@j23995:
		dec	word [bp-4]
		mov	bx,word [bp+4]
		mov	bx,word [bx+14]
		mov	si,word [bp-4]
		mov	al,byte [bx+si]
		mov	byte [bp-9],al
		cmp	byte [bp-9],127
		jbe	..@j23998
		jmp	..@j23999
..@j23998:
		cmp	word [bp-6],0
		je	..@j24000
		jmp	..@j24001
..@j24000:
		mov	ax,word [bp-4]
		inc	ax
		mov	word [bp-2],ax
		jmp	..@j24004
..@j24001:
		mov	bx,word [bp+4]
		mov	ax,word [bx+10]
		mov	word [bp-2],ax
..@j24004:
		jmp	..@j23989
..@j23999:
		mov	al,byte [bp-9]
		and	al,192
		test	al,al
		jne	..@j24007
		jmp	..@j24008
..@j24007:
		mov	al,byte [bp-9]
		mov	ah,0
		push	ax
		call	SYSTEM_$$_UTF8CODEPOINTLENGTH$BYTE$$SMALLINT
		mov	word [bp-8],ax
		mov	ax,word [bp-6]
		inc	ax
		cmp	ax,word [bp-8]
		jl	..@j24013
		jmp	..@j24014
..@j24013:
		cmp	word [bp-4],0
		jne	..@j24015
		jmp	..@j24016
..@j24015:
		mov	ax,word [bp-4]
		mov	word [bp-2],ax
		jmp	..@j24019
..@j24016:
		mov	bx,word [bp+4]
		mov	ax,word [bx+10]
		mov	word [bp-2],ax
..@j24019:
		jmp	..@j24022
..@j24014:
		mov	bx,word [bp+4]
		mov	ax,word [bx+10]
		mov	word [bp-2],ax
..@j24022:
		jmp	..@j23989
..@j24008:
		inc	word [bp-6]
		cmp	word [bp-4],0
		jg	..@j23995
..@j23994:
		mov	bx,word [bp+4]
		mov	ax,word [bx+10]
		mov	word [bp-2],ax
..@j23989:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	SYSTEM_$$_UTF8CODEPOINTLENGTH$BYTE$$SMALLINT
