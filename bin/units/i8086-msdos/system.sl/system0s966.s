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
	GLOBAL SYSTEM_$$_NOTHREADERROR
SYSTEM_$$_NOTHREADERROR:
		push	bp
		mov	bp,sp
		cmp	byte [operatingsystem_isconsole],0
		jne	..@j19980
		jmp	..@j19981
..@j19980:
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j19986
		push	word [U_$SYSTEM_$$_STDERR+2]
		push	word [U_$SYSTEM_$$_STDERR]
		call	ax
		jmp	..@j19987
..@j19986:
		mov	ax,word U_$SYSTEM_$$_STDERR+2
..@j19987:
		push	ax
		mov	ax,word _$SYSTEM$_Ld32
		push	ax
		call	fpc_write_text_shortstr
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j19992
		push	word [U_$SYSTEM_$$_STDERR+2]
		push	word [U_$SYSTEM_$$_STDERR]
		call	ax
		jmp	..@j19993
..@j19992:
		mov	ax,word U_$SYSTEM_$$_STDERR+2
..@j19993:
		push	ax
		call	fpc_writeln_end
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j19998
		push	word [U_$SYSTEM_$$_STDERR+2]
		push	word [U_$SYSTEM_$$_STDERR]
		call	ax
		jmp	..@j19999
..@j19998:
		mov	ax,word U_$SYSTEM_$$_STDERR+2
..@j19999:
		push	ax
		mov	ax,word _$SYSTEM$_Ld33
		push	ax
		call	fpc_write_text_shortstr
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j20004
		push	word [U_$SYSTEM_$$_STDERR+2]
		push	word [U_$SYSTEM_$$_STDERR]
		call	ax
		jmp	..@j20005
..@j20004:
		mov	ax,word U_$SYSTEM_$$_STDERR+2
..@j20005:
		push	ax
		call	fpc_writeln_end
..@j19981:
		mov	ax,232
		push	ax
		call	SYSTEM_$$_RUNERROR$WORD
		mov	sp,bp
		pop	bp
		ret
EXTERN	SYSTEM_$$_RUNERROR$WORD
EXTERN	_$SYSTEM$_Ld33
EXTERN	fpc_writeln_end
EXTERN	fpc_write_text_shortstr
EXTERN	_$SYSTEM$_Ld32
EXTERN	U_$SYSTEM_$$_STDERR
EXTERN	FPC_THREADVAR_RELOCATE
EXTERN	operatingsystem_isconsole
