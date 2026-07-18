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
	GLOBAL SYSTEM_$$_UNIMPLEMENTEDUNICODESTRING
SYSTEM_$$_UNIMPLEMENTEDUNICODESTRING:
		push	bp
		mov	bp,sp
		cmp	byte [operatingsystem_isconsole],0
		jne	..@j13642
		jmp	..@j13643
..@j13642:
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j13648
		push	word [U_$SYSTEM_$$_STDERR+2]
		push	word [U_$SYSTEM_$$_STDERR]
		call	ax
		jmp	..@j13649
..@j13648:
		mov	ax,word U_$SYSTEM_$$_STDERR+2
..@j13649:
		push	ax
		mov	ax,word _$SYSTEM$_Ld21
		push	ax
		call	fpc_write_text_shortstr
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j13654
		push	word [U_$SYSTEM_$$_STDERR+2]
		push	word [U_$SYSTEM_$$_STDERR]
		call	ax
		jmp	..@j13655
..@j13654:
		mov	ax,word U_$SYSTEM_$$_STDERR+2
..@j13655:
		push	ax
		call	fpc_writeln_end
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j13660
		push	word [U_$SYSTEM_$$_STDERR+2]
		push	word [U_$SYSTEM_$$_STDERR]
		call	ax
		jmp	..@j13661
..@j13660:
		mov	ax,word U_$SYSTEM_$$_STDERR+2
..@j13661:
		push	ax
		mov	ax,word _$SYSTEM$_Ld22
		push	ax
		call	fpc_write_text_shortstr
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j13666
		push	word [U_$SYSTEM_$$_STDERR+2]
		push	word [U_$SYSTEM_$$_STDERR]
		call	ax
		jmp	..@j13667
..@j13666:
		mov	ax,word U_$SYSTEM_$$_STDERR+2
..@j13667:
		push	ax
		call	fpc_writeln_end
..@j13643:
		mov	ax,0
		push	ax
		mov	ax,233
		push	ax
		call	SYSTEM_$$_GET_PC_ADDR$$NEARPOINTER
		push	ax
		push	bp
		call	SYSTEM_$$_HANDLEERRORADDRFRAMEIND$LONGINT$NEARPOINTER$POINTER
		mov	sp,bp
		pop	bp
		ret
EXTERN	SYSTEM_$$_HANDLEERRORADDRFRAMEIND$LONGINT$NEARPOINTER$POINTER
EXTERN	SYSTEM_$$_GET_PC_ADDR$$NEARPOINTER
EXTERN	_$SYSTEM$_Ld22
EXTERN	fpc_writeln_end
EXTERN	fpc_write_text_shortstr
EXTERN	_$SYSTEM$_Ld21
EXTERN	U_$SYSTEM_$$_STDERR
EXTERN	FPC_THREADVAR_RELOCATE
EXTERN	operatingsystem_isconsole
