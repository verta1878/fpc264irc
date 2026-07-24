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
	GLOBAL SYSTEM_$$_SYSTEM_EXIT
SYSTEM_$$_SYSTEM_EXIT:
		push	bp
		mov	bp,sp
		sub	sp,2
		call	FPC_RESTORE_INTERRUPT_HANDLERS
		mov	byte [bp-1],0
		dec	byte [bp-1]
	ALIGN 2
..@j26678:
		inc	byte [bp-1]
		mov	bl,byte [bp-1]
		mov	bh,0
		cmp	byte [U_$SYSTEM_$$_OPENFILES+bx],0
		jne	..@j26679
		jmp	..@j26680
..@j26679:
		cmp	byte [bp-1],5
		jae	..@j26681
		jmp	..@j26682
..@j26681:
		mov	al,byte [bp-1]
		mov	ah,0
		push	ax
		call	SYSTEM_$$_DO_CLOSE$WORD
..@j26682:
..@j26680:
		cmp	byte [bp-1],49
		jb	..@j26678
		call	FPC_CHECK_NULLAREA
		test	al,al
		je	..@j26685
		jmp	..@j26686
..@j26685:
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j26691
		push	word [U_$SYSTEM_$$_STDERR+2]
		push	word [U_$SYSTEM_$$_STDERR]
		call	ax
		jmp	..@j26692
..@j26691:
		mov	ax,word U_$SYSTEM_$$_STDERR+2
..@j26692:
		push	ax
		mov	ax,word _$SYSTEM$_Ld41
		push	ax
		call	fpc_write_text_shortstr
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j26697
		push	word [U_$SYSTEM_$$_STDERR+2]
		push	word [U_$SYSTEM_$$_STDERR]
		call	ax
		jmp	..@j26698
..@j26697:
		mov	ax,word U_$SYSTEM_$$_STDERR+2
..@j26698:
		push	ax
		call	fpc_writeln_end
..@j26686:
		mov	al,byte [operatingsystem_result]
		mov	ah,76
		int	byte 33
		mov	sp,bp
		pop	bp
		ret
EXTERN	operatingsystem_result
EXTERN	fpc_writeln_end
EXTERN	fpc_write_text_shortstr
EXTERN	_$SYSTEM$_Ld41
EXTERN	U_$SYSTEM_$$_STDERR
EXTERN	FPC_THREADVAR_RELOCATE
EXTERN	FPC_CHECK_NULLAREA
EXTERN	SYSTEM_$$_DO_CLOSE$WORD
EXTERN	U_$SYSTEM_$$_OPENFILES
EXTERN	FPC_RESTORE_INTERRUPT_HANDLERS
