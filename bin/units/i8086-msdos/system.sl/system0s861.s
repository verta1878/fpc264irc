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
	GLOBAL SYSTEM_$$_SYSASSERT$SHORTSTRING$SHORTSTRING$LONGINT$POINTER
SYSTEM_$$_SYSASSERT$SHORTSTRING$SHORTSTRING$LONGINT$POINTER:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+12]
		cmp	byte [bx],0
		je	..@j18286
		jmp	..@j18287
..@j18286:
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j18292
		push	word [U_$SYSTEM_$$_STDERR+2]
		push	word [U_$SYSTEM_$$_STDERR]
		call	ax
		jmp	..@j18293
..@j18292:
		mov	ax,word U_$SYSTEM_$$_STDERR+2
..@j18293:
		push	ax
		mov	ax,word _$SYSTEM$_Ld28
		push	ax
		call	fpc_write_text_shortstr
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j18298
		push	word [U_$SYSTEM_$$_STDERR+2]
		push	word [U_$SYSTEM_$$_STDERR]
		call	ax
		jmp	..@j18299
..@j18298:
		mov	ax,word U_$SYSTEM_$$_STDERR+2
..@j18299:
		push	ax
		call	fpc_write_end
		jmp	..@j18300
..@j18287:
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j18305
		push	word [U_$SYSTEM_$$_STDERR+2]
		push	word [U_$SYSTEM_$$_STDERR]
		call	ax
		jmp	..@j18306
..@j18305:
		mov	ax,word U_$SYSTEM_$$_STDERR+2
..@j18306:
		push	ax
		mov	ax,word [bp+12]
		push	ax
		call	fpc_write_text_shortstr
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j18311
		push	word [U_$SYSTEM_$$_STDERR+2]
		push	word [U_$SYSTEM_$$_STDERR]
		call	ax
		jmp	..@j18312
..@j18311:
		mov	ax,word U_$SYSTEM_$$_STDERR+2
..@j18312:
		push	ax
		call	fpc_write_end
..@j18300:
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j18317
		push	word [U_$SYSTEM_$$_STDERR+2]
		push	word [U_$SYSTEM_$$_STDERR]
		call	ax
		jmp	..@j18318
..@j18317:
		mov	ax,word U_$SYSTEM_$$_STDERR+2
..@j18318:
		push	ax
		mov	ax,word _$SYSTEM$_Ld29
		push	ax
		call	fpc_write_text_shortstr
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j18325
		push	word [U_$SYSTEM_$$_STDERR+2]
		push	word [U_$SYSTEM_$$_STDERR]
		call	ax
		jmp	..@j18326
..@j18325:
		mov	ax,word U_$SYSTEM_$$_STDERR+2
..@j18326:
		push	ax
		mov	ax,word [bp+10]
		push	ax
		call	fpc_write_text_shortstr
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j18333
		push	word [U_$SYSTEM_$$_STDERR+2]
		push	word [U_$SYSTEM_$$_STDERR]
		call	ax
		jmp	..@j18334
..@j18333:
		mov	ax,word U_$SYSTEM_$$_STDERR+2
..@j18334:
		push	ax
		mov	ax,word _$SYSTEM$_Ld30
		push	ax
		call	fpc_write_text_shortstr
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j18341
		push	word [U_$SYSTEM_$$_STDERR+2]
		push	word [U_$SYSTEM_$$_STDERR]
		call	ax
		jmp	..@j18342
..@j18341:
		mov	ax,word U_$SYSTEM_$$_STDERR+2
..@j18342:
		push	ax
		push	word [bp+8]
		push	word [bp+6]
		call	fpc_write_text_longint
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j18349
		push	word [U_$SYSTEM_$$_STDERR+2]
		push	word [U_$SYSTEM_$$_STDERR]
		call	ax
		jmp	..@j18350
..@j18349:
		mov	ax,word U_$SYSTEM_$$_STDERR+2
..@j18350:
		push	ax
		mov	ax,word _$SYSTEM$_Ld31
		push	ax
		call	fpc_write_text_shortstr
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j18355
		push	word [U_$SYSTEM_$$_STDERR+2]
		push	word [U_$SYSTEM_$$_STDERR]
		call	ax
		jmp	..@j18356
..@j18355:
		mov	ax,word U_$SYSTEM_$$_STDERR+2
..@j18356:
		push	ax
		call	fpc_writeln_end
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j18361
		push	word [U_$SYSTEM_$$_STDERR+2]
		push	word [U_$SYSTEM_$$_STDERR]
		call	ax
		jmp	..@j18362
..@j18361:
		mov	ax,word U_$SYSTEM_$$_STDERR+2
..@j18362:
		push	ax
		mov	ax,word _$SYSTEM$_Ld2
		push	ax
		call	fpc_write_text_shortstr
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j18367
		push	word [U_$SYSTEM_$$_STDERR+2]
		push	word [U_$SYSTEM_$$_STDERR]
		call	ax
		jmp	..@j18368
..@j18367:
		mov	ax,word U_$SYSTEM_$$_STDERR+2
..@j18368:
		push	ax
		call	fpc_writeln_end
		mov	ax,0
		push	ax
		mov	ax,227
		push	ax
		call	SYSTEM_$$_HALT$LONGINT
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	SYSTEM_$$_HALT$LONGINT
EXTERN	_$SYSTEM$_Ld2
EXTERN	fpc_writeln_end
EXTERN	_$SYSTEM$_Ld31
EXTERN	fpc_write_text_longint
EXTERN	_$SYSTEM$_Ld30
EXTERN	_$SYSTEM$_Ld29
EXTERN	fpc_write_end
EXTERN	fpc_write_text_shortstr
EXTERN	_$SYSTEM$_Ld28
EXTERN	U_$SYSTEM_$$_STDERR
EXTERN	FPC_THREADVAR_RELOCATE
