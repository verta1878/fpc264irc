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
	GLOBAL CLASSES_$$_CHECKSYNCHRONIZE$LONGINT$$BOOLEAN
CLASSES_$$_CHECKSYNCHRONIZE$LONGINT$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,34
		mov	byte [bp-1],0
		mov	ax,word [TC_$SYSTEM_$$_ISMULTITHREAD]
		or	ax,word [TC_$SYSTEM_$$_ISMULTITHREAD+2]
		je	..@j10046
		jmp	..@j10047
..@j10046:
		jmp	..@j10042
		jmp	..@j10048
..@j10047:
		call	SYSTEM_$$_GETCURRENTTHREADID$$WORD
		cmp	ax,word [U_$CLASSES_$$_MAINTHREADID]
		jne	..@j10049
		jmp	..@j10050
..@j10049:
..@j10051:
		mov	ax,word VMT_$CLASSES_$$_ETHREAD
		push	ax
		mov	ax,1
		push	ax
		push	word [RESSTR_$RTLCONSTS_$$_SCHECKSYNCHRONIZEERROR+2]
		call	SYSTEM_$$_GETCURRENTTHREADID$$WORD
		mov	dx,0
		mov	word [bp-10],ax
		mov	word [bp-8],dx
		mov	word [bp-12],0
		lea	ax,[bp-12]
		push	ax
		mov	ax,0
		push	ax
		call	SYSUTILS$_$EXCEPTION_$__$$_CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
		push	ax
		mov	ax,word ..@j10051
		push	ax
		push	bp
		call	fpc_raiseexception
..@j10050:
..@j10048:
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		cmp	dx,0
		jg	..@j10068
		jl	..@j10069
		cmp	ax,0
		ja	..@j10068
		jmp	..@j10069
..@j10068:
		push	word [U_$CLASSES_$$_SYNCHRONIZETIMEOUTEVENT]
		push	word [bp+6]
		push	word [bp+4]
		call	SYSTEM_$$_RTLEVENTWAITFOR$PRTLEVENT$LONGINT
		jmp	..@j10074
..@j10069:
		push	word [U_$CLASSES_$$_SYNCHRONIZETIMEOUTEVENT]
		call	SYSTEM_$$_RTLEVENTRESETEVENT$PRTLEVENT
..@j10074:
		call	CLASSES_$$_POPTHREADQUEUEHEAD$$TThread.PTHREADQUEUEENTRY
		mov	word [bp-6],ax
		jmp	..@j10080
	ALIGN 2
..@j10079:
		mov	word [bp-4],0
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
		jne	..@j10090
		push	word [bp-6]
		call	CLASSES_$$_EXECUTETHREADQUEUEENTRY$TThread.PTHREADQUEUEENTRY
..@j10090:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j10092
		mov	ax,1
		push	ax
		lea	ax,[bp-32]
		push	ax
		lea	ax,[bp-26]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j10096
		call	SYSTEM_$$_ACQUIREEXCEPTIONOBJECT$$POINTER
		mov	word [bp-4],ax
..@j10096:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j10099
		call	FPC_RAISE_NESTED
..@j10099:
		call	FPC_DONEEXCEPTION
		jmp	..@j10092
..@j10092:
		mov	bx,word [bp-6]
		cmp	word [bx+8],0
		jne	..@j10100
		jmp	..@j10101
..@j10100:
		mov	bx,word [bp-6]
		mov	ax,word [bp-4]
		mov	word [bx+6],ax
		mov	bx,word [bp-6]
		push	word [bx+8]
		call	SYSTEM_$$_RTLEVENTSETEVENT$PRTLEVENT
		jmp	..@j10106
..@j10101:
		push	word [bp-6]
		call	fpc_freemem
		cmp	word [bp-4],0
		jne	..@j10109
		jmp	..@j10110
..@j10109:
..@j10111:
		push	word [bp-4]
		mov	ax,word ..@j10111
		push	ax
		push	bp
		call	fpc_raiseexception
..@j10110:
..@j10106:
		call	CLASSES_$$_POPTHREADQUEUEHEAD$$TThread.PTHREADQUEUEENTRY
		mov	word [bp-6],ax
..@j10080:
		cmp	word [bp-6],0
		jne	..@j10079
		jmp	..@j10081
..@j10081:
..@j10042:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	fpc_freemem
EXTERN	SYSTEM_$$_RTLEVENTSETEVENT$PRTLEVENT
EXTERN	FPC_DONEEXCEPTION
EXTERN	FPC_RAISE_NESTED
EXTERN	SYSTEM_$$_ACQUIREEXCEPTIONOBJECT$$POINTER
EXTERN	FPC_POPADDRSTACK
EXTERN	CLASSES_$$_EXECUTETHREADQUEUEENTRY$TThread.PTHREADQUEUEENTRY
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
EXTERN	CLASSES_$$_POPTHREADQUEUEHEAD$$TThread.PTHREADQUEUEENTRY
EXTERN	SYSTEM_$$_RTLEVENTRESETEVENT$PRTLEVENT
EXTERN	SYSTEM_$$_RTLEVENTWAITFOR$PRTLEVENT$LONGINT
EXTERN	U_$CLASSES_$$_SYNCHRONIZETIMEOUTEVENT
EXTERN	fpc_raiseexception
EXTERN	SYSUTILS$_$EXCEPTION_$__$$_CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
EXTERN	RESSTR_$RTLCONSTS_$$_SCHECKSYNCHRONIZEERROR
EXTERN	VMT_$CLASSES_$$_ETHREAD
EXTERN	U_$CLASSES_$$_MAINTHREADID
EXTERN	SYSTEM_$$_GETCURRENTTHREADID$$WORD
EXTERN	TC_$SYSTEM_$$_ISMULTITHREAD
