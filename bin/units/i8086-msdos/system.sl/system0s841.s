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
	GLOBAL SYSTEM_$$_CAPTUREBACKTRACE$SMALLINT$SMALLINT$PCODEPOINTER$$SMALLINT
SYSTEM_$$_CAPTUREBACKTRACE$SMALLINT$SMALLINT$PCODEPOINTER$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,10
		mov	word [bp-4],bp
		call	SYSTEM_$$_GET_PC_ADDR$$NEARPOINTER
		mov	word [bp-8],ax
		mov	ax,word [bp-4]
		mov	word [bp-6],ax
		lea	ax,[bp-4]
		push	ax
		lea	ax,[bp-8]
		push	ax
		call	SYSTEM_$$_GET_CALLER_STACKINFO$POINTER$NEARPOINTER
		mov	ax,word [bp+8]
		neg	ax
		mov	word [bp-10],ax
		jmp	..@j17864
	ALIGN 2
..@j17863:
		cmp	word [bp-8],0
		je	..@j17866
		jmp	..@j17868
..@j17868:
		cmp	word [bp-4],0
		je	..@j17866
		jmp	..@j17867
..@j17866:
		jmp	..@j17865
..@j17867:
		cmp	word [bp-10],0
		jge	..@j17869
		jmp	..@j17870
..@j17869:
		mov	bx,word [bp+4]
		mov	ax,word [bp-10]
		mov	si,ax
		shl	si,1
		mov	ax,word [bp-8]
		mov	word [bx+si],ax
..@j17870:
		inc	word [bp-10]
		mov	ax,word [bp-4]
		mov	word [bp-6],ax
		lea	ax,[bp-4]
		push	ax
		lea	ax,[bp-8]
		push	ax
		call	SYSTEM_$$_GET_CALLER_STACKINFO$POINTER$NEARPOINTER
..@j17864:
		mov	ax,word [bp-10]
		cmp	ax,word [bp+6]
		jl	..@j17880
		jmp	..@j17865
..@j17880:
		mov	ax,word [bp-4]
		cmp	ax,word [bp-6]
		ja	..@j17879
		jmp	..@j17865
..@j17879:
		call	SYSTEM_$$_STACKTOP$$POINTER
		cmp	ax,word [bp-4]
		ja	..@j17863
		jmp	..@j17865
..@j17865:
		cmp	word [bp-10],0
		jl	..@j17881
		jmp	..@j17882
..@j17881:
		mov	word [bp-2],0
		jmp	..@j17885
..@j17882:
		mov	ax,word [bp-10]
		mov	word [bp-2],ax
..@j17885:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	SYSTEM_$$_STACKTOP$$POINTER
EXTERN	SYSTEM_$$_GET_CALLER_STACKINFO$POINTER$NEARPOINTER
EXTERN	SYSTEM_$$_GET_PC_ADDR$$NEARPOINTER
