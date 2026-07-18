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
	GLOBAL SYSUTILS_$$_CATCHUNHANDLEDEXCEPTION$TOBJECT$NEARPOINTER$LONGINT$PCODEPOINTER
SYSUTILS_$$_CATCHUNHANDLEDEXCEPTION$TOBJECT$NEARPOINTER$LONGINT$PCODEPOINTER:
	GLOBAL FPC_BREAK_UNHANDLED_EXCEPTION
FPC_BREAK_UNHANDLED_EXCEPTION:
		push	bp
		mov	bp,sp
		sub	sp,290
		cmp	byte [TC_$SYSTEM_$$_WRITEERRORSTOSTDERR],0
		jne	..@j14469
		jmp	..@j14470
..@j14469:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j14473
		push	word [U_$SYSTEM_$$_STDERR+2]
		push	word [U_$SYSTEM_$$_STDERR]
		call	ax
		jmp	..@j14474
..@j14473:
		mov	ax,word U_$SYSTEM_$$_STDERR+2
..@j14474:
		mov	word [bp-6],ax
		jmp	..@j14475
..@j14470:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j14478
		push	word [U_$SYSTEM_$$_STDOUT+2]
		push	word [U_$SYSTEM_$$_STDOUT]
		call	ax
		jmp	..@j14479
..@j14478:
		mov	ax,word U_$SYSTEM_$$_STDOUT+2
..@j14479:
		mov	word [bp-6],ax
..@j14475:
		mov	ax,word [bp-6]
		mov	dx,0
		push	dx
		mov	dx,0
		push	dx
		mov	word [bp-278],ax
		push	word [bp-278]
		mov	ax,word _$SYSUTILS$_Ld683
		push	ax
		call	fpc_write_text_shortstr
		call	FPC_IOCHECK
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word [bp-278]
		mov	word [bp-280],ax
		push	word [bp-280]
		lea	ax,[bp-262]
		push	ax
		push	word [bp+10]
		call	SYSTEM_$$_HEXSTR$NEARPOINTER$$SHORTSTRING
		lea	ax,[bp-262]
		push	ax
		call	fpc_write_text_shortstr
		call	FPC_IOCHECK
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word [bp-280]
		mov	word [bp-270],ax
		push	word [bp-270]
		mov	ax,58
		push	ax
		call	fpc_write_text_char
		call	FPC_IOCHECK
		mov	ax,word [bp-270]
		mov	word [bp-266],ax
		push	word [bp-266]
		call	fpc_writeln_end
		call	FPC_IOCHECK
		mov	ax,word VMT_$SYSUTILS_$$_EXCEPTION
		push	ax
		push	word [bp+12]
		call	fpc_do_is
		test	al,al
		jne	..@j14506
		jmp	..@j14507
..@j14506:
		mov	ax,word [bp-6]
		mov	word [bp-286],ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		push	word [bp-286]
		mov	bx,word [bp+12]
		mov	ax,word [bx]
		push	ax
		lea	ax,[bp-262]
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_CLASSNAME$$SHORTSTRING
		lea	ax,[bp-262]
		push	ax
		call	fpc_write_text_shortstr
		call	FPC_IOCHECK
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		push	word [bp-286]
		mov	ax,word _$SYSUTILS$_Ld684
		push	ax
		call	fpc_write_text_shortstr
		call	FPC_IOCHECK
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		push	word [bp-286]
		mov	bx,word [bp+12]
		push	word [bx+2]
		call	fpc_write_text_ansistr
		call	FPC_IOCHECK
		push	word [bp-286]
		call	fpc_writeln_end
		call	FPC_IOCHECK
		jmp	..@j14538
..@j14507:
		mov	ax,word VMT_$SYSTEM_$$_TOBJECT
		push	ax
		push	word [bp+12]
		call	fpc_do_is
		test	al,al
		jne	..@j14539
		jmp	..@j14540
..@j14539:
		mov	ax,word [bp-6]
		mov	word [bp-284],ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		push	word [bp-284]
		mov	ax,word _$SYSUTILS$_Ld685
		push	ax
		call	fpc_write_text_shortstr
		call	FPC_IOCHECK
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		push	word [bp-284]
		mov	bx,word [bp+12]
		mov	ax,word [bx]
		push	ax
		lea	ax,[bp-262]
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_CLASSNAME$$SHORTSTRING
		lea	ax,[bp-262]
		push	ax
		call	fpc_write_text_shortstr
		call	FPC_IOCHECK
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		push	word [bp-284]
		mov	ax,word _$SYSUTILS$_Ld686
		push	ax
		call	fpc_write_text_shortstr
		call	FPC_IOCHECK
		push	word [bp-284]
		call	fpc_writeln_end
		call	FPC_IOCHECK
		jmp	..@j14571
..@j14540:
		mov	ax,word [bp-6]
		mov	word [bp-274],ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		push	word [bp-274]
		mov	ax,word _$SYSUTILS$_Ld687
		push	ax
		call	fpc_write_text_shortstr
		call	FPC_IOCHECK
		push	word [bp-274]
		call	fpc_writeln_end
		call	FPC_IOCHECK
..@j14571:
..@j14538:
		mov	ax,word [bp-6]
		mov	dx,0
		push	dx
		mov	dx,0
		push	dx
		mov	word [bp-276],ax
		push	word [bp-276]
		lea	ax,[bp-262]
		push	ax
		push	word [bp+10]
		mov	ax,word [TC_$SYSTEM_$$_BACKTRACESTRFUNC]
		call	ax
		lea	ax,[bp-262]
		push	ax
		call	fpc_write_text_shortstr
		call	FPC_IOCHECK
		mov	ax,word [bp-276]
		mov	word [bp-264],ax
		push	word [bp-264]
		call	fpc_writeln_end
		call	FPC_IOCHECK
		mov	dx,word [bp+6]
		mov	ax,word [bp+8]
		cmp	ax,0
		jg	..@j14596
		jl	..@j14597
		cmp	dx,0
		ja	..@j14596
		jmp	..@j14597
..@j14596:
		mov	ax,word [bp+6]
		mov	dx,word [bp+8]
		sub	ax,1
		sbb	dx,0
		mov	word [bp-290],ax
		mov	word [bp-288],dx
		mov	word [bp-4],0
		mov	word [bp-2],0
		mov	ax,word [bp-288]
		cmp	ax,word [bp-2]
		jl	..@j14601
		jg	..@j14603
		mov	ax,word [bp-290]
		cmp	ax,word [bp-4]
		jb	..@j14601
..@j14603:
		sub	word [bp-4],1
		sbb	word [bp-2],0
	ALIGN 2
..@j14602:
		add	word [bp-4],1
		adc	word [bp-2],0
		mov	ax,word [bp-6]
		mov	word [bp-282],ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		push	word [bp-282]
		lea	ax,[bp-262]
		push	ax
		mov	bx,word [bp+4]
		mov	ax,word [bp-4]
		mov	si,ax
		shl	si,1
		push	word [bx+si]
		mov	ax,word [TC_$SYSTEM_$$_BACKTRACESTRFUNC]
		call	ax
		lea	ax,[bp-262]
		push	ax
		call	fpc_write_text_shortstr
		call	FPC_IOCHECK
		push	word [bp-282]
		call	fpc_writeln_end
		call	FPC_IOCHECK
		mov	ax,word [bp-288]
		cmp	ax,word [bp-2]
		jg	..@j14602
		jl	..@j14618
		mov	ax,word [bp-290]
		cmp	ax,word [bp-4]
		ja	..@j14602
..@j14618:
..@j14601:
..@j14597:
		mov	ax,word [bp-6]
		mov	dx,0
		push	dx
		mov	dx,0
		push	dx
		mov	word [bp-272],ax
		push	word [bp-272]
		mov	ax,word _$SYSUTILS$_Ld661
		push	ax
		call	fpc_write_text_shortstr
		call	FPC_IOCHECK
		mov	ax,word [bp-272]
		mov	word [bp-268],ax
		push	word [bp-268]
		call	fpc_writeln_end
		call	FPC_IOCHECK
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	_$SYSUTILS$_Ld661
EXTERN	TC_$SYSTEM_$$_BACKTRACESTRFUNC
EXTERN	_$SYSUTILS$_Ld687
EXTERN	_$SYSUTILS$_Ld686
EXTERN	_$SYSUTILS$_Ld685
EXTERN	VMT_$SYSTEM_$$_TOBJECT
EXTERN	fpc_write_text_ansistr
EXTERN	_$SYSUTILS$_Ld684
EXTERN	SYSTEM$_$TOBJECT_$__$$_CLASSNAME$$SHORTSTRING
EXTERN	fpc_do_is
EXTERN	VMT_$SYSUTILS_$$_EXCEPTION
EXTERN	fpc_writeln_end
EXTERN	fpc_write_text_char
EXTERN	SYSTEM_$$_HEXSTR$NEARPOINTER$$SHORTSTRING
EXTERN	FPC_IOCHECK
EXTERN	fpc_write_text_shortstr
EXTERN	_$SYSUTILS$_Ld683
EXTERN	U_$SYSTEM_$$_STDOUT
EXTERN	U_$SYSTEM_$$_STDERR
EXTERN	FPC_THREADVAR_RELOCATE
EXTERN	TC_$SYSTEM_$$_WRITEERRORSTOSTDERR
