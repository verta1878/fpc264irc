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
	GLOBAL SYSTEM_$$_INTERNALEXIT
SYSTEM_$$_INTERNALEXIT:
		push	bp
		mov	bp,sp
		sub	sp,266
		jmp	..@j17737
	ALIGN 2
..@j17736:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j17741
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j17742
..@j17741:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j17742:
		mov	word [bx],0
		mov	ax,word [TC_$SYSTEM_$$_EXITPROC]
		mov	word [bp-2],ax
		mov	word [TC_$SYSTEM_$$_EXITPROC],0
		mov	ax,word [bp-2]
		call	ax
..@j17737:
		cmp	word [TC_$SYSTEM_$$_EXITPROC],0
		jne	..@j17736
		jmp	..@j17738
..@j17738:
		cmp	byte [TC_$SYSTEM_$$_WRITEERRORSTOSTDERR],0
		jne	..@j17747
		jmp	..@j17748
..@j17747:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j17751
		push	word [U_$SYSTEM_$$_STDERR+2]
		push	word [U_$SYSTEM_$$_STDERR]
		call	ax
		jmp	..@j17752
..@j17751:
		mov	ax,word U_$SYSTEM_$$_STDERR+2
..@j17752:
		mov	word [bp-4],ax
		jmp	..@j17753
..@j17748:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j17756
		push	word [U_$SYSTEM_$$_STDOUT+2]
		push	word [U_$SYSTEM_$$_STDOUT]
		call	ax
		jmp	..@j17757
..@j17756:
		mov	ax,word U_$SYSTEM_$$_STDOUT+2
..@j17757:
		mov	word [bp-4],ax
..@j17753:
		cmp	word [TC_$SYSTEM_$$_ERRORADDR],0
		jne	..@j17758
		jmp	..@j17759
..@j17758:
		mov	ax,word [bp-4]
		mov	word [bp-266],ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		push	word [bp-266]
		mov	ax,word _$SYSTEM$_Ld25
		push	ax
		call	fpc_write_text_shortstr
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		push	word [bp-266]
		push	word [TC_$SYSTEM_$$_ERRORCODE]
		call	fpc_write_text_uint
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		push	word [bp-266]
		mov	ax,word _$SYSTEM$_Ld26
		push	ax
		call	fpc_write_text_shortstr
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		push	word [bp-266]
		lea	ax,[bp-260]
		push	ax
		push	word [TC_$SYSTEM_$$_ERRORADDR]
		call	SYSTEM_$$_HEXSTR$NEARPOINTER$$SHORTSTRING
		lea	ax,[bp-260]
		push	ax
		call	fpc_write_text_shortstr
		push	word [bp-266]
		call	fpc_writeln_end
		mov	ax,word [bp-4]
		mov	word [bp-264],ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		push	word [bp-264]
		lea	ax,[bp-260]
		push	ax
		push	word [TC_$SYSTEM_$$_ERRORADDR]
		mov	ax,word [TC_$SYSTEM_$$_BACKTRACESTRFUNC]
		call	ax
		lea	ax,[bp-260]
		push	ax
		call	fpc_write_text_shortstr
		push	word [bp-264]
		call	fpc_writeln_end
		mov	ax,word [bp-4]
		push	ax
		push	word [FPC_ERRORBASE]
		push	word [TC_$SYSTEM_$$_ERRORADDR]
		call	SYSTEM_$$_DUMP_STACK$TEXT$POINTER$NEARPOINTER
		mov	ax,word [bp-4]
		mov	word [bp-262],ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		push	word [bp-262]
		mov	ax,word _$SYSTEM$_Ld2
		push	ax
		call	fpc_write_text_shortstr
		push	word [bp-262]
		call	fpc_writeln_end
..@j17759:
		call	SYSTEM_$$_SYSFLUSHSTDIO
		call	SYSTEM_$$_FINALIZEUNITS
		mov	sp,bp
		pop	bp
		ret
EXTERN	SYSTEM_$$_FINALIZEUNITS
EXTERN	SYSTEM_$$_SYSFLUSHSTDIO
EXTERN	_$SYSTEM$_Ld2
EXTERN	SYSTEM_$$_DUMP_STACK$TEXT$POINTER$NEARPOINTER
EXTERN	FPC_ERRORBASE
EXTERN	TC_$SYSTEM_$$_BACKTRACESTRFUNC
EXTERN	fpc_writeln_end
EXTERN	SYSTEM_$$_HEXSTR$NEARPOINTER$$SHORTSTRING
EXTERN	_$SYSTEM$_Ld26
EXTERN	fpc_write_text_uint
EXTERN	TC_$SYSTEM_$$_ERRORCODE
EXTERN	fpc_write_text_shortstr
EXTERN	_$SYSTEM$_Ld25
EXTERN	TC_$SYSTEM_$$_ERRORADDR
EXTERN	U_$SYSTEM_$$_STDOUT
EXTERN	U_$SYSTEM_$$_STDERR
EXTERN	TC_$SYSTEM_$$_WRITEERRORSTOSTDERR
EXTERN	TC_$SYSTEM_$$_EXITPROC
EXTERN	U_$SYSTEM_$$_INOUTRES
EXTERN	FPC_THREADVAR_RELOCATE
