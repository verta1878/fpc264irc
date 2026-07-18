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
	GLOBAL CLASSES$_$TBINARYOBJECTREADER_$__$$_BEGINCOMPONENT$TFILERFLAGS$SMALLINT$ANSISTRING$ANSISTRING
CLASSES$_$TBINARYOBJECTREADER_$__$$_BEGINCOMPONENT$TFILERFLAGS$SMALLINT$ANSISTRING$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,22
		mov	word [bp-22],0
		mov	ax,1
		push	ax
		lea	ax,[bp-18]
		push	ax
		lea	ax,[bp-12]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j17738
		mov	bx,word [bp+10]
		mov	byte [bx],0
		push	word [bp+12]
		mov	bx,word [bp+12]
		mov	bx,word [bx]
		mov	ax,word [bx+50]
		call	ax
		and	al,240
		cmp	al,240
		je	..@j17742
		jmp	..@j17743
..@j17742:
		push	word [bp+12]
		mov	bx,word [bp+12]
		mov	bx,word [bx]
		mov	ax,word [bx+52]
		call	ax
		mov	byte [bp-1],al
		mov	al,byte [bp-1]
		mov	ah,0
		and	ax,15
		mov	bx,word [bp+10]
		mov	byte [bx],al
		mov	bx,word [bp+10]
		test	byte [bx],2
		jne	..@j17752
		jmp	..@j17753
..@j17752:
		push	word [bp+12]
		mov	bx,word [bp+12]
		mov	bx,word [bx]
		mov	ax,word [bx+52]
		call	ax
		mov	word [bp-6],ax
		mov	word [bp-4],dx
		mov	dx,word [bp-6]
		mov	ax,word [bp-4]
		test	ax,ax
		jne	..@j17763
		cmp	dx,2
		je	..@j17760
..@j17763:
		test	ax,ax
		jne	..@j17764
		cmp	dx,3
		je	..@j17761
..@j17764:
		test	ax,ax
		jne	..@j17765
		cmp	dx,4
		je	..@j17762
..@j17765:
		jmp	..@j17759
..@j17760:
		push	word [bp+12]
		mov	bx,word [bp+12]
		mov	bx,word [bx]
		mov	ax,word [bx+74]
		call	ax
		cbw
		mov	dx,ax
		mov	bx,word [bp+8]
		mov	word [bx],dx
		jmp	..@j17758
..@j17761:
		push	word [bp+12]
		mov	bx,word [bp+12]
		mov	bx,word [bx]
		mov	ax,word [bx+76]
		call	ax
		mov	bx,word [bp+8]
		mov	word [bx],ax
		jmp	..@j17758
..@j17762:
		push	word [bp+12]
		mov	bx,word [bp+12]
		mov	bx,word [bx]
		mov	ax,word [bx+78]
		call	ax
		mov	bx,word [bp+8]
		mov	word [bx],ax
		jmp	..@j17758
..@j17759:
..@j17778:
		mov	ax,word VMT_$CLASSES_$$_EREADERROR
		push	ax
		mov	ax,1
		push	ax
		push	word [RESSTR_$RTLCONSTS_$$_SINVALIDPROPERTYVALUE+2]
		call	SYSUTILS$_$EXCEPTION_$__$$_CREATE$ANSISTRING$$EXCEPTION
		push	ax
		mov	ax,word ..@j17778
		push	ax
		push	bp
		call	fpc_raiseexception
..@j17758:
..@j17753:
..@j17743:
		mov	ax,word [bp+6]
		push	ax
		push	word [bp+12]
		lea	ax,[bp-22]
		push	ax
		mov	bx,word [bp+12]
		mov	bx,word [bx]
		mov	ax,word [bx+86]
		call	ax
		push	word [bp-22]
		call	fpc_ansistr_assign
		mov	ax,word [bp+4]
		push	ax
		push	word [bp+12]
		lea	ax,[bp-22]
		push	ax
		mov	bx,word [bp+12]
		mov	bx,word [bx]
		mov	ax,word [bx+86]
		call	ax
		push	word [bp-22]
		call	fpc_ansistr_assign
..@j17738:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-22]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j17739
		call	FPC_RERAISE
..@j17739:
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	fpc_ansistr_assign
EXTERN	fpc_raiseexception
EXTERN	SYSUTILS$_$EXCEPTION_$__$$_CREATE$ANSISTRING$$EXCEPTION
EXTERN	RESSTR_$RTLCONSTS_$$_SINVALIDPROPERTYVALUE
EXTERN	VMT_$CLASSES_$$_EREADERROR
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
