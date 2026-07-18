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
	GLOBAL SYSUTILS_$$_CODEPAGETOCODEPAGENAME$WORD$$ANSISTRING
SYSUTILS_$$_CODEPAGETOCODEPAGENAME$WORD$$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,8
		mov	word [bp-4],0
		mov	word [bp-6],149
		jmp	..@j155
	ALIGN 2
..@j154:
		mov	dx,word [bp-4]
		mov	ax,word [bp-6]
		add	ax,dx
		shr	ax,1
		mov	word [bp-8],ax
		mov	bx,word [bp-8]
		mov	cl,2
		shl	bx,cl
		mov	ax,word [TC_$SYSUTILS_$$_CODEPAGENAMES+bx]
		mov	word [bp-2],ax
		mov	ax,word [bp-2]
		cmp	ax,word [bp+4]
		je	..@j161
		jmp	..@j162
..@j161:
		mov	ax,word [bp+6]
		push	ax
		mov	bx,word [bp-8]
		mov	cl,2
		shl	bx,cl
		push	word [TC_$SYSUTILS_$$_CODEPAGENAMES+bx+2]
		mov	ax,0
		push	ax
		call	fpc_pchar_to_ansistr
		jmp	..@j148
		jmp	..@j156
..@j162:
		mov	ax,word [bp+4]
		cmp	ax,word [bp-2]
		ja	..@j169
		jmp	..@j170
..@j169:
		mov	ax,word [bp-8]
		inc	ax
		mov	word [bp-4],ax
		jmp	..@j173
..@j170:
		mov	ax,word [bp-8]
		dec	ax
		mov	word [bp-6],ax
..@j173:
..@j155:
		mov	ax,word [bp-4]
		cmp	ax,word [bp-6]
		jle	..@j154
		jmp	..@j156
..@j156:
		mov	ax,word [bp+6]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_assign
..@j148:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	fpc_ansistr_assign
EXTERN	fpc_pchar_to_ansistr
EXTERN	TC_$SYSUTILS_$$_CODEPAGENAMES
