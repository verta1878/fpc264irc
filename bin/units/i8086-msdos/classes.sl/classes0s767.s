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
	GLOBAL CLASSES_$$_COMMONCLEANUP
CLASSES_$$_COMMONCLEANUP:
		push	bp
		mov	bp,sp
		sub	sp,38
		push	word [U_$CLASSES_$$_GLOBALNAMESPACE]
		mov	bx,word [U_$CLASSES_$$_GLOBALNAMESPACE]
		mov	bx,word [bx]
		mov	ax,word [bx+10]
		call	ax
		push	word [U_$CLASSES_$$_INTCONSTLIST]
		call	CLASSES$_$TTHREADLIST_$__$$_LOCKLIST$$TLIST
		mov	word [bp-38],ax
		mov	ax,word [bp-38]
		mov	word [bp-34],ax
		mov	ax,1
		push	ax
		lea	ax,[bp-16]
		push	ax
		lea	ax,[bp-10]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j17470
		push	word [bp-34]
		call	CLASSES$_$TLIST_$__$$_GETCOUNT$$SMALLINT
		dec	ax
		mov	word [bp-28],ax
		mov	word [bp-2],0
		mov	ax,word [bp-28]
		cmp	ax,word [bp-2]
		jl	..@j17478
		dec	word [bp-2]
	ALIGN 2
..@j17479:
		inc	word [bp-2]
		push	word [bp-34]
		push	word [bp-2]
		call	CLASSES$_$TLIST_$__$$_GET$SMALLINT$$POINTER
		mov	word [bp-24],ax
		push	word [bp-24]
		call	SYSTEM$_$TOBJECT_$__$$_FREE
		mov	ax,word [bp-28]
		cmp	ax,word [bp-2]
		jg	..@j17479
..@j17478:
..@j17470:
		call	FPC_POPADDRSTACK
		push	word [U_$CLASSES_$$_INTCONSTLIST]
		call	CLASSES$_$TTHREADLIST_$__$$_UNLOCKLIST
		pop	ax
		test	ax,ax
		je	..@j17471
		call	FPC_RERAISE
..@j17471:
		push	word [U_$CLASSES_$$_INTCONSTLIST]
		call	SYSTEM$_$TOBJECT_$__$$_FREE
		push	word [U_$CLASSES_$$_CLASSLIST]
		call	SYSTEM$_$TOBJECT_$__$$_FREE
		push	word [U_$CLASSES_$$_CLASSALIASLIST]
		call	SYSTEM$_$TOBJECT_$__$$_FREE
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		call	CLASSES_$$_REMOVEFIXUPREFERENCES$TCOMPONENT$ANSISTRING
		mov	ax,word U_$CLASSES_$$_RESOLVESECTION
		push	ax
		call	SYSTEM_$$_DONECRITICALSECTION$TRTLCRITICALSECTION
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j17504
		push	word [U_$CLASSES_$$_GLOBALLISTS+2]
		push	word [U_$CLASSES_$$_GLOBALLISTS]
		call	ax
		mov	bx,ax
		jmp	..@j17505
..@j17504:
		mov	bx,word U_$CLASSES_$$_GLOBALLISTS+2
..@j17505:
		push	word [bx]
		call	SYSTEM$_$TOBJECT_$__$$_FREE
		push	word [U_$CLASSES_$$_COMPONENTPAGES]
		call	SYSTEM$_$TOBJECT_$__$$_FREE
		mov	ax,word U_$CLASSES_$$_NEEDRESOLVING
		push	ax
		call	SYSUTILS_$$_FREEANDNIL$formal
		mov	ax,word U_$CLASSES_$$_GLOBALNAMESPACE
		push	ax
		mov	ax,0
		push	ax
		call	fpc_intf_assign
		cmp	word [U_$CLASSES_$$_INITHANDLERLIST],0
		jne	..@j17514
		jmp	..@j17515
..@j17514:
		push	word [U_$CLASSES_$$_INITHANDLERLIST]
		call	CLASSES$_$TLIST_$__$$_GETCOUNT$$SMALLINT
		dec	ax
		mov	word [bp-22],ax
		mov	word [bp-2],0
		mov	ax,word [bp-22]
		cmp	ax,word [bp-2]
		jl	..@j17521
		dec	word [bp-2]
	ALIGN 2
..@j17522:
		inc	word [bp-2]
		push	word [U_$CLASSES_$$_INITHANDLERLIST]
		push	word [bp-2]
		call	CLASSES$_$TLIST_$__$$_GET$SMALLINT$$POINTER
		mov	word [bp-20],ax
		push	word [bp-20]
		call	SYSTEM$_$TOBJECT_$__$$_FREE
		mov	ax,word [bp-22]
		cmp	ax,word [bp-2]
		jg	..@j17522
..@j17521:
..@j17515:
		push	word [U_$CLASSES_$$_INITHANDLERLIST]
		call	SYSTEM$_$TOBJECT_$__$$_FREE
		mov	word [U_$CLASSES_$$_INITHANDLERLIST],0
		push	word [U_$CLASSES_$$_FINDGLOBALCOMPONENTLIST]
		call	SYSTEM$_$TOBJECT_$__$$_FREE
		mov	word [U_$CLASSES_$$_FINDGLOBALCOMPONENTLIST],0
		mov	byte [TC_$CLASSES_$$_EXTERNALTHREADSCLEANUP],1
		push	word [U_$CLASSES_$$_EXTERNALTHREADS]
		call	CLASSES$_$TTHREADLIST_$__$$_LOCKLIST$$TLIST
		mov	word [bp-36],ax
		mov	ax,word [bp-36]
		mov	word [bp-32],ax
		mov	ax,1
		push	ax
		lea	ax,[bp-16]
		push	ax
		lea	ax,[bp-10]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j17547
		push	word [bp-32]
		call	CLASSES$_$TLIST_$__$$_GETCOUNT$$SMALLINT
		dec	ax
		mov	word [bp-30],ax
		mov	word [bp-2],0
		mov	ax,word [bp-30]
		cmp	ax,word [bp-2]
		jl	..@j17555
		dec	word [bp-2]
	ALIGN 2
..@j17556:
		inc	word [bp-2]
		push	word [bp-32]
		push	word [bp-2]
		call	CLASSES$_$TLIST_$__$$_GET$SMALLINT$$POINTER
		mov	word [bp-26],ax
		push	word [bp-26]
		call	SYSTEM$_$TOBJECT_$__$$_FREE
		mov	ax,word [bp-30]
		cmp	ax,word [bp-2]
		jg	..@j17556
..@j17555:
..@j17547:
		call	FPC_POPADDRSTACK
		push	word [U_$CLASSES_$$_EXTERNALTHREADS]
		call	CLASSES$_$TTHREADLIST_$__$$_UNLOCKLIST
		pop	ax
		test	ax,ax
		je	..@j17548
		call	FPC_RERAISE
..@j17548:
		mov	ax,word U_$CLASSES_$$_EXTERNALTHREADS
		push	ax
		call	SYSUTILS_$$_FREEANDNIL$formal
		push	word [U_$CLASSES_$$_SYNCHRONIZETIMEOUTEVENT]
		call	SYSTEM_$$_RTLEVENTDESTROY$PRTLEVENT
		jmp	..@j17572
	ALIGN 2
..@j17571:
		mov	ax,word [U_$CLASSES_$$_THREADQUEUEHEAD]
		mov	word [bp-4],ax
		mov	bx,word [bp-4]
		mov	ax,word [bx+10]
		mov	word [U_$CLASSES_$$_THREADQUEUEHEAD],ax
		mov	bx,word [bp-4]
		cmp	word [bx+8],0
		je	..@j17578
		jmp	..@j17579
..@j17578:
		push	word [bp-4]
		call	fpc_freemem
..@j17579:
..@j17572:
		cmp	word [U_$CLASSES_$$_THREADQUEUEHEAD],0
		jne	..@j17571
		jmp	..@j17573
..@j17573:
		mov	ax,word U_$CLASSES_$$_THREADQUEUELOCK
		push	ax
		call	SYSTEM_$$_DONECRITICALSECTION$TRTLCRITICALSECTION
		mov	sp,bp
		pop	bp
		ret
EXTERN	U_$CLASSES_$$_THREADQUEUELOCK
EXTERN	fpc_freemem
EXTERN	U_$CLASSES_$$_THREADQUEUEHEAD
EXTERN	SYSTEM_$$_RTLEVENTDESTROY$PRTLEVENT
EXTERN	U_$CLASSES_$$_SYNCHRONIZETIMEOUTEVENT
EXTERN	U_$CLASSES_$$_EXTERNALTHREADS
EXTERN	TC_$CLASSES_$$_EXTERNALTHREADSCLEANUP
EXTERN	U_$CLASSES_$$_FINDGLOBALCOMPONENTLIST
EXTERN	U_$CLASSES_$$_INITHANDLERLIST
EXTERN	fpc_intf_assign
EXTERN	SYSUTILS_$$_FREEANDNIL$formal
EXTERN	U_$CLASSES_$$_NEEDRESOLVING
EXTERN	U_$CLASSES_$$_COMPONENTPAGES
EXTERN	U_$CLASSES_$$_GLOBALLISTS
EXTERN	FPC_THREADVAR_RELOCATE
EXTERN	SYSTEM_$$_DONECRITICALSECTION$TRTLCRITICALSECTION
EXTERN	U_$CLASSES_$$_RESOLVESECTION
EXTERN	CLASSES_$$_REMOVEFIXUPREFERENCES$TCOMPONENT$ANSISTRING
EXTERN	U_$CLASSES_$$_CLASSALIASLIST
EXTERN	U_$CLASSES_$$_CLASSLIST
EXTERN	FPC_RERAISE
EXTERN	CLASSES$_$TTHREADLIST_$__$$_UNLOCKLIST
EXTERN	FPC_POPADDRSTACK
EXTERN	SYSTEM$_$TOBJECT_$__$$_FREE
EXTERN	CLASSES$_$TLIST_$__$$_GET$SMALLINT$$POINTER
EXTERN	CLASSES$_$TLIST_$__$$_GETCOUNT$$SMALLINT
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
EXTERN	CLASSES$_$TTHREADLIST_$__$$_LOCKLIST$$TLIST
EXTERN	U_$CLASSES_$$_INTCONSTLIST
EXTERN	U_$CLASSES_$$_GLOBALNAMESPACE
