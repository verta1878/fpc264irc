BITS 16
CPU 8086
SECTION .text use16 class=code
SECTION .rodata class=data
SECTION .data class=data
SECTION .fpc class=data
SECTION .bss class=bss
SECTION stack stack class=stack align=16
SECTION heap class=heap align=16
GROUP dgroup rodata data fpc bss stack heap
SECTION .text

SECTION .text
	ALIGN 2
	GLOBAL CLASSES$_$TSTRINGLIST_$__$$_FIND$ANSISTRING$SMALLINT$$BOOLEAN
CLASSES$_$TSTRINGLIST_$__$$_FIND$ANSISTRING$SMALLINT$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,10
		mov	byte [bp-1],0
		mov	bx,word [bp+4]
		mov	word [bx],-1
		push	word [bp+8]
		call	CLASSES$_$TSTRINGLIST_$__$$_GETSORTED$$BOOLEAN
		test	al,al
		je	..@j9491
		jmp	..@j9492
..@j9491:
..@j9495:
		mov	ax,word VMT_$CLASSES_$$_ELISTERROR
		push	ax
		mov	ax,1
		push	ax
		push	word [RESSTR_$RTLCONSTS_$$_SERRFINDNEEDSSORTEDLIST+2]
		call	SYSUTILS$_$EXCEPTION_$__$$_CREATE$ANSISTRING$$EXCEPTION
		push	ax
		mov	ax,word ..@j9495
		push	ax
		push	bp
		call	fpc_raiseexception
..@j9492:
		mov	word [bp-4],0
		push	word [bp+8]
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bx+64]
		call	ax
		dec	ax
		mov	word [bp-6],ax
		jmp	..@j9515
	ALIGN 2
..@j9514:
		mov	ax,word [bp-6]
		mov	dx,word [bp-4]
		sub	ax,dx
		test	ax,ax
		jns	..@j9519
		inc	ax
..@j9519:
		sar	ax,1
		mov	dx,word [bp-4]
		add	dx,ax
		mov	word [bp-8],dx
		push	word [bp+8]
		push	word [bp+6]
		mov	bx,word [bp+8]
		mov	bx,word [bx+20]
		mov	ax,word [bp-8]
		mov	si,ax
		mov	cl,2
		shl	si,cl
		push	word [bx+si]
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bx+80]
		call	ax
		mov	word [bp-10],ax
		cmp	word [bp-10],0
		jg	..@j9528
		jmp	..@j9529
..@j9528:
		mov	ax,word [bp-8]
		inc	ax
		mov	word [bp-4],ax
		jmp	..@j9532
..@j9529:
		mov	ax,word [bp-8]
		dec	ax
		mov	word [bp-6],ax
		cmp	word [bp-10],0
		je	..@j9535
		jmp	..@j9536
..@j9535:
		mov	byte [bp-1],1
		mov	bx,word [bp+8]
		mov	dx,word [bx+34]
		mov	ax,0
		cmp	ax,0
		jne	..@j9539
		cmp	dx,1
		jne	..@j9539
		jmp	..@j9540
..@j9539:
		mov	ax,word [bp-8]
		mov	word [bp-4],ax
..@j9540:
..@j9536:
..@j9532:
..@j9515:
		mov	ax,word [bp-4]
		cmp	ax,word [bp-6]
		jle	..@j9514
		jmp	..@j9516
..@j9516:
		mov	bx,word [bp+4]
		mov	ax,word [bp-4]
		mov	word [bx],ax
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	fpc_raiseexception
EXTERN	SYSUTILS$_$EXCEPTION_$__$$_CREATE$ANSISTRING$$EXCEPTION
EXTERN	RESSTR_$RTLCONSTS_$$_SERRFINDNEEDSSORTEDLIST
EXTERN	VMT_$CLASSES_$$_ELISTERROR
EXTERN	CLASSES$_$TSTRINGLIST_$__$$_GETSORTED$$BOOLEAN
