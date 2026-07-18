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
	GLOBAL SYSTEM_$$_SYSTINYFREEMEM$POINTER$$WORD
SYSTEM_$$_SYSTINYFREEMEM$POINTER$$WORD:
		push	bp
		mov	bp,sp
		sub	sp,8
		cmp	word [bp+4],0
		je	..@j26042
		jmp	..@j26043
..@j26042:
		mov	word [bp-2],0
		jmp	..@j26040
..@j26043:
		mov	ax,word [bp+4]
		cmp	ax,word [TC_$SYSTEM_$$_HEAPORG]
		jb	..@j26046
		jmp	..@j26048
..@j26048:
		mov	ax,word [bp+4]
		cmp	ax,word [TC_$SYSTEM_$$_HEAPPTR]
		jae	..@j26046
		jmp	..@j26047
..@j26046:
		mov	ax,0
		push	ax
		mov	ax,204
		push	ax
		call	FPC_HANDLEERROR
..@j26047:
		push	word [bp+4]
		call	SYSTEM_$$_FINDSIZE$POINTER$$WORD
		add	ax,2
		mov	word [bp-6],ax
		mov	ax,word [bp-6]
		mov	dx,0
		add	ax,3
		adc	dx,0
		mov	word [bp-8],ax
		mov	ax,word [bp-8]
		and	ax,3
		mov	bx,0
		mov	dx,word [bp-8]
		mov	cx,0
		sub	dx,ax
		sbb	cx,bx
		mov	word [bp-4],dx
		mov	bx,word [bp+4]
		lea	ax,[bx-2]
		push	ax
		push	word [bp-4]
		call	SYSTEM_$$_INTERNALTINYFREEMEM$POINTER$WORD
		mov	ax,word [bp-4]
		mov	word [bp-2],ax
..@j26040:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	SYSTEM_$$_INTERNALTINYFREEMEM$POINTER$WORD
EXTERN	SYSTEM_$$_FINDSIZE$POINTER$$WORD
EXTERN	FPC_HANDLEERROR
EXTERN	TC_$SYSTEM_$$_HEAPPTR
EXTERN	TC_$SYSTEM_$$_HEAPORG
