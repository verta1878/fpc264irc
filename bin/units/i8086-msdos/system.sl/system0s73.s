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
	GLOBAL fpc_help_constructor
fpc_help_constructor:
	GLOBAL FPC_HELP_CONSTRUCTOR
FPC_HELP_CONSTRUCTOR:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	bx,word [bp+8]
		mov	ax,word [bx]
		mov	word [bp-4],ax
		cmp	word [bp-4],0
		je	..@j827
		jmp	..@j828
..@j827:
		mov	ax,word [bp+10]
		mov	word [bp-2],ax
		jmp	..@j823
..@j828:
		cmp	word [bp+10],0
		je	..@j833
		jmp	..@j832
..@j833:
		mov	bx,word [bp-4]
		cmp	word [bx],0
		ja	..@j831
		jmp	..@j832
..@j831:
		lea	ax,[bp+10]
		push	ax
		mov	bx,word [bp-4]
		push	word [bx]
		call	SYSTEM_$$_GETMEM$POINTER$WORD
		mov	bx,word [bp+8]
		mov	word [bx],-1
..@j832:
		cmp	word [bp+10],0
		jne	..@j840
		jmp	..@j841
..@j840:
		mov	ax,word [bp+10]
		push	ax
		mov	bx,word [bp-4]
		push	word [bx]
		mov	ax,0
		push	ax
		call	SYSTEM_$$_FILLCHAR$formal$SMALLINT$BYTE
		mov	ax,word [bp+4]
		mov	bx,word [bp+10]
		add	bx,ax
		mov	ax,word [bp-4]
		mov	word [bx],ax
..@j841:
		mov	ax,word [bp+10]
		mov	word [bp-2],ax
..@j823:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	SYSTEM_$$_FILLCHAR$formal$SMALLINT$BYTE
EXTERN	SYSTEM_$$_GETMEM$POINTER$WORD
