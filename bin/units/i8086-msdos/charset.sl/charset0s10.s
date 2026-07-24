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
	GLOBAL CHARSET_$$_LOADBINARYUNICODEMAPPING$SHORTSTRING$$PUNICODEMAP
CHARSET_$$_LOADBINARYUNICODEMAPPING$SHORTSTRING$$PUNICODEMAP:
		push	bp
		mov	bp,sp
		sub	sp,588
		mov	word [bp-2],0
		mov	bx,word [bp+4]
		cmp	byte [bx],0
		je	..@j492
		jmp	..@j493
..@j492:
		jmp	..@j488
..@j493:
		lea	ax,[bp-570]
		push	ax
		mov	ax,word [bp+4]
		push	ax
		call	SYSTEM_$$_ASSIGN$TYPEDFILE$SHORTSTRING
		lea	ax,[bp-570]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,1
		push	ax
		call	fpc_reset_typed
		call	SYSTEM_$$_IORESULT$$WORD
		test	ax,ax
		jne	..@j502
		jmp	..@j503
..@j502:
		jmp	..@j488
..@j503:
		lea	ax,[bp-570]
		push	ax
		call	SYSTEM_$$_FILESIZE$file$$INT64
		mov	word [bp-574],dx
		mov	word [bp-572],cx
		mov	dx,word [bp-574]
		mov	ax,word [bp-572]
		cmp	ax,0
		jl	..@j508
		jg	..@j509
		cmp	dx,35
		jb	..@j508
		jmp	..@j509
..@j508:
		lea	ax,[bp-570]
		push	ax
		call	SYSTEM_$$_CLOSE$file
		jmp	..@j488
..@j509:
		push	word [bp-574]
		call	SYSTEM_$$_GETMEM$WORD$$POINTER
		mov	word [bp-584],ax
		mov	word [bp-588],16384
		mov	word [bp-586],0
		mov	word [bp-578],0
		mov	word [bp-576],0
		mov	word [bp-582],0
		mov	word [bp-580],0
		jmp	..@j523
	ALIGN 2
..@j522:
		mov	ax,word [bp-574]
		mov	dx,word [bp-572]
		mov	cx,word [bp-578]
		mov	bx,word [bp-576]
		sub	ax,cx
		sbb	dx,bx
		cmp	dx,word [bp-586]
		jl	..@j525
		jg	..@j526
		cmp	ax,word [bp-588]
		jb	..@j525
		jmp	..@j526
		jmp	..@j526
..@j525:
		mov	ax,word [bp-574]
		mov	dx,word [bp-572]
		mov	bx,word [bp-578]
		mov	cx,word [bp-576]
		sub	ax,bx
		sbb	dx,cx
		mov	word [bp-588],ax
		mov	word [bp-586],dx
..@j526:
		lea	ax,[bp-570]
		push	ax
		mov	bx,word [bp-584]
		mov	si,word [bp-578]
		lea	ax,[bx+si]
		push	ax
		push	word [bp-586]
		push	word [bp-588]
		lea	ax,[bp-582]
		push	ax
		call	SYSTEM_$$_BLOCKREAD$file$formal$LONGINT$LONGINT
		call	SYSTEM_$$_IORESULT$$WORD
		test	ax,ax
		jne	..@j537
		jmp	..@j539
..@j539:
		mov	ax,word [bp-582]
		mov	dx,word [bp-580]
		cmp	dx,0
		jl	..@j537
		jg	..@j538
		cmp	ax,0
		jbe	..@j537
		jmp	..@j538
..@j537:
		push	word [bp-584]
		push	word [bp-574]
		call	SYSTEM_$$_FREEMEM$POINTER$WORD
		lea	ax,[bp-570]
		push	ax
		call	SYSTEM_$$_CLOSE$file
		jmp	..@j488
..@j538:
		mov	bx,word [bp-578]
		mov	cx,word [bp-576]
		mov	ax,word [bp-582]
		mov	dx,word [bp-580]
		add	ax,bx
		adc	dx,cx
		mov	word [bp-578],ax
		mov	word [bp-576],dx
..@j523:
		mov	ax,word [bp-578]
		mov	dx,word [bp-576]
		cmp	dx,word [bp-572]
		jl	..@j522
		jg	..@j524
		cmp	ax,word [bp-574]
		jb	..@j522
		jmp	..@j524
		jmp	..@j524
..@j524:
		push	word [bp-584]
		push	word [bp-574]
		call	CHARSET_$$_LOADBINARYUNICODEMAPPING$POINTER$SMALLINT$$PUNICODEMAP
		mov	word [bp-2],ax
		push	word [bp-584]
		push	word [bp-574]
		call	SYSTEM_$$_FREEMEM$POINTER$WORD
		lea	ax,[bp-570]
		push	ax
		call	SYSTEM_$$_CLOSE$file
..@j488:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	CHARSET_$$_LOADBINARYUNICODEMAPPING$POINTER$SMALLINT$$PUNICODEMAP
EXTERN	SYSTEM_$$_FREEMEM$POINTER$WORD
EXTERN	SYSTEM_$$_BLOCKREAD$file$formal$LONGINT$LONGINT
EXTERN	SYSTEM_$$_GETMEM$WORD$$POINTER
EXTERN	SYSTEM_$$_CLOSE$file
EXTERN	SYSTEM_$$_FILESIZE$file$$INT64
EXTERN	SYSTEM_$$_IORESULT$$WORD
EXTERN	fpc_reset_typed
EXTERN	SYSTEM_$$_ASSIGN$TYPEDFILE$SHORTSTRING
