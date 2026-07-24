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
	GLOBAL fpc_ansistr_setlength
fpc_ansistr_setlength:
	GLOBAL FPC_ANSISTR_SETLENGTH
FPC_ANSISTR_SETLENGTH:
		push	bp
		mov	bp,sp
		sub	sp,8
		cmp	word [bp+6],0
		jg	..@j9580
		jmp	..@j9581
..@j9580:
		mov	bx,word [bp+8]
		cmp	word [bx],0
		je	..@j9582
		jmp	..@j9583
..@j9582:
		push	word [bp+6]
		call	SYSTEM_$$_NEWANSISTRING$SMALLINT$$POINTER
		mov	bx,word [bp+8]
		mov	word [bx],ax
		mov	dx,word [bp+4]
		mov	ax,word [bp+4]
		sub	ax,1
		jbe	..@j9595
		jmp	..@j9594
..@j9595:
		mov	dx,word [U_$SYSTEM_$$_DEFAULTSYSTEMCODEPAGE]
		jmp	..@j9593
..@j9594:
..@j9593:
		mov	word [bp+4],dx
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bp+4]
		mov	word [bx-8],ax
		jmp	..@j9600
..@j9583:
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		cmp	word [bx-4],1
		je	..@j9601
		jmp	..@j9602
..@j9601:
		mov	bx,word [bp+8]
		mov	ax,word [bx]
		sub	ax,8
		mov	word [bp-2],ax
		push	word [bp-2]
		call	SYSTEM_$$_MEMSIZE$POINTER$$WORD
		mov	word [bp-4],ax
		mov	ax,word [bp+6]
		add	ax,8
		inc	ax
		mov	word [bp-6],ax
		mov	ax,word [bp-6]
		cmp	ax,word [bp-4]
		jg	..@j9611
		jmp	..@j9613
..@j9613:
		cmp	word [bp-4],32
		jg	..@j9614
		jmp	..@j9612
..@j9614:
		mov	ax,word [bp-4]
		test	ax,ax
		jns	..@j9615
		inc	ax
..@j9615:
		sar	ax,1
		cmp	ax,word [bp-6]
		jge	..@j9611
		jmp	..@j9612
..@j9611:
		lea	ax,[bp-2]
		push	ax
		push	word [bp-6]
		call	SYSTEM_$$_REALLOCMEM$POINTER$WORD$$POINTER
		mov	ax,word [bp-2]
		add	ax,8
		mov	bx,word [bp+8]
		mov	word [bx],ax
..@j9612:
		jmp	..@j9622
..@j9602:
		push	word [bp+6]
		call	SYSTEM_$$_NEWANSISTRING$SMALLINT$$POINTER
		mov	word [bp-2],ax
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	si,word [bp-2]
		mov	ax,word [bx-8]
		mov	word [si-8],ax
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		test	bx,bx
		je	..@j9631
		mov	bx,word [bx-2]
..@j9631:
		inc	bx
		mov	word [bp-4],bx
		mov	ax,word [bp+6]
		cmp	ax,word [bp-4]
		jl	..@j9632
		jmp	..@j9633
..@j9632:
		mov	ax,word [bp+6]
		mov	word [bp-8],ax
		jmp	..@j9636
..@j9633:
		mov	ax,word [bp-4]
		mov	word [bp-8],ax
..@j9636:
		mov	bx,word [bp+8]
		mov	ax,word [bx]
		push	ax
		mov	ax,word [bp-2]
		push	ax
		push	word [bp-8]
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
		mov	ax,word [bp+8]
		push	ax
		call	FPC_ANSISTR_DECR_REF
		mov	bx,word [bp+8]
		mov	ax,word [bp-2]
		mov	word [bx],ax
..@j9622:
..@j9600:
		mov	bx,word [bp+8]
		mov	ax,word [bx]
		mov	bx,word [bp+6]
		add	bx,ax
		mov	byte [bx],0
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bp+6]
		mov	word [bx-2],ax
		jmp	..@j9653
..@j9581:
		mov	ax,word [bp+8]
		push	ax
		call	FPC_ANSISTR_DECR_REF
..@j9653:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	FPC_ANSISTR_DECR_REF
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
EXTERN	SYSTEM_$$_REALLOCMEM$POINTER$WORD$$POINTER
EXTERN	SYSTEM_$$_MEMSIZE$POINTER$$WORD
EXTERN	U_$SYSTEM_$$_DEFAULTSYSTEMCODEPAGE
EXTERN	SYSTEM_$$_NEWANSISTRING$SMALLINT$$POINTER
