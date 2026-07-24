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
	GLOBAL STRUTILS_$$_DECODESOUNDEXWORD$WORD$$ANSISTRING
STRUTILS_$$_DECODESOUNDEXWORD$WORD$$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	word [bp-2],0
		mov	ax,word [bp+6]
		push	ax
		mov	ax,word [bp+4]
		xor	dx,dx
		mov	cx,7
		div	cx
		add	dx,48
		push	dx
		mov	ax,0
		push	ax
		call	fpc_char_to_ansistr
		mov	dx,word [bp+4]
		mov	ax,-28087
		mul	dx
		add	ax,-28087
		adc	dx,0
		mov	cl,2
		shr	dx,cl
		mov	word [bp+4],dx
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-2]
		push	ax
		mov	ax,word [bp+4]
		xor	dx,dx
		mov	cx,7
		div	cx
		add	dx,48
		push	dx
		mov	ax,0
		push	ax
		call	fpc_char_to_ansistr
		push	word [bp-2]
		mov	bx,word [bp+6]
		push	word [bx]
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat
		mov	dx,word [bp+4]
		mov	ax,-28087
		mul	dx
		add	ax,-28087
		adc	dx,0
		mov	cl,2
		shr	dx,cl
		mov	word [bp+4],dx
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-2]
		push	ax
		mov	ax,word [bp+4]
		xor	dx,dx
		mov	cx,26
		div	cx
		mov	ax,0
		push	ax
		push	dx
		call	SYSUTILS_$$_INTTOSTR$LONGINT$$ANSISTRING
		push	word [bp-2]
		mov	bx,word [bp+6]
		push	word [bx]
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat
		mov	dx,word [bp+4]
		mov	ax,20165
		mul	dx
		mov	cl,3
		shr	dx,cl
		mov	word [bp+4],dx
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-2]
		push	ax
		mov	ax,word [bp+4]
		add	ax,65
		push	ax
		mov	ax,0
		push	ax
		call	fpc_char_to_ansistr
		push	word [bp-2]
		mov	bx,word [bp+6]
		push	word [bx]
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat
		lea	ax,[bp-2]
		push	ax
		call	fpc_ansistr_decr_ref
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	fpc_ansistr_decr_ref
EXTERN	SYSUTILS_$$_INTTOSTR$LONGINT$$ANSISTRING
EXTERN	fpc_ansistr_concat
EXTERN	fpc_char_to_ansistr
