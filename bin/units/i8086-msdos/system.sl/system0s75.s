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
	GLOBAL fpc_help_fail
fpc_help_fail:
	GLOBAL FPC_HELP_FAIL
FPC_HELP_FAIL:
		push	bp
		mov	bp,sp
		cmp	word [bp+10],0
		je	..@j869
		jmp	..@j871
..@j871:
		mov	bx,word [bp+8]
		cmp	word [bx],0
		je	..@j869
		jmp	..@j870
..@j869:
		jmp	..@j867
..@j870:
		mov	bx,word [bp+8]
		cmp	word [bx],-1
		je	..@j872
		jmp	..@j873
..@j872:
		cmp	word [bp+10],0
		je	..@j874
		jmp	..@j876
..@j876:
		mov	ax,word [bp+4]
		mov	bx,word [bp+10]
		add	bx,ax
		cmp	word [bx],0
		je	..@j874
		jmp	..@j875
..@j874:
		mov	ax,0
		push	ax
		mov	ax,210
		push	ax
		call	FPC_HANDLEERROR
		jmp	..@j879
..@j875:
		mov	ax,word [bp+4]
		mov	bx,word [bp+10]
		add	bx,ax
		mov	word [bx],0
		push	word [bp+10]
		call	SYSTEM_$$_FREEMEM$POINTER$$WORD
		mov	bx,word [bp+8]
		mov	word [bx],0
..@j879:
		jmp	..@j886
..@j873:
		mov	ax,word [bp+4]
		mov	bx,word [bp+10]
		add	bx,ax
		mov	word [bx],0
..@j886:
..@j867:
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	SYSTEM_$$_FREEMEM$POINTER$$WORD
EXTERN	FPC_HANDLEERROR
