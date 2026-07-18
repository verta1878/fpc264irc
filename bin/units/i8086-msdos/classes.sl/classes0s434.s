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
	GLOBAL CLASSES_$$_THREADQUEUEAPPEND$TThread.PTHREADQUEUEENTRY
CLASSES_$$_THREADQUEUEAPPEND$TThread.PTHREADQUEUEENTRY:
		push	bp
		mov	bp,sp
		sub	sp,14
		call	SYSTEM_$$_GETCURRENTTHREADID$$WORD
		cmp	ax,word [U_$CLASSES_$$_MAINTHREADID]
		je	..@j9917
		jmp	..@j9918
..@j9917:
		push	word [bp+4]
		call	CLASSES_$$_EXECUTETHREADQUEUEENTRY$TThread.PTHREADQUEUEENTRY
		mov	bx,word [bp+4]
		cmp	word [bx+8],0
		je	..@j9921
		jmp	..@j9922
..@j9921:
		push	word [bp+4]
		call	fpc_freemem
..@j9922:
		jmp	..@j9925
..@j9918:
		mov	ax,word U_$CLASSES_$$_THREADQUEUELOCK
		push	ax
		call	SYSTEM_$$_ENTERCRITICALSECTION$TRTLCRITICALSECTION
		mov	ax,1
		push	ax
		lea	ax,[bp-12]
		push	ax
		lea	ax,[bp-6]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j9928
		cmp	word [U_$CLASSES_$$_THREADQUEUETAIL],0
		jne	..@j9931
		jmp	..@j9932
..@j9931:
		mov	bx,word [U_$CLASSES_$$_THREADQUEUETAIL]
		mov	ax,word [bp+4]
		mov	word [bx+10],ax
		jmp	..@j9935
..@j9932:
		mov	ax,word [bp+4]
		mov	word [U_$CLASSES_$$_THREADQUEUEHEAD],ax
..@j9935:
		mov	ax,word [bp+4]
		mov	word [U_$CLASSES_$$_THREADQUEUETAIL],ax
..@j9928:
		call	FPC_POPADDRSTACK
		mov	ax,word U_$CLASSES_$$_THREADQUEUELOCK
		push	ax
		call	SYSTEM_$$_LEAVECRITICALSECTION$TRTLCRITICALSECTION
		pop	ax
		test	ax,ax
		je	..@j9929
		call	FPC_RERAISE
..@j9929:
		push	word [U_$CLASSES_$$_SYNCHRONIZETIMEOUTEVENT]
		call	SYSTEM_$$_RTLEVENTSETEVENT$PRTLEVENT
		cmp	word [TC_$CLASSES_$$_WAKEMAINTHREAD],0
		jne	..@j9944
		jmp	..@j9945
..@j9944:
		push	word [TC_$CLASSES_$$_WAKEMAINTHREAD+2]
		mov	bx,word [bp+4]
		push	word [bx+4]
		mov	ax,word [TC_$CLASSES_$$_WAKEMAINTHREAD]
		call	ax
..@j9945:
		mov	bx,word [bp+4]
		cmp	word [bx+8],0
		jne	..@j9950
		jmp	..@j9951
..@j9950:
		mov	bx,word [bp+4]
		push	word [bx+8]
		call	SYSTEM_$$_RTLEVENTWAITFOR$PRTLEVENT
		mov	bx,word [bp+4]
		cmp	word [bx+6],0
		jne	..@j9954
		jmp	..@j9955
..@j9954:
..@j9956:
		mov	bx,word [bp+4]
		push	word [bx+6]
		mov	ax,word ..@j9956
		push	ax
		push	bp
		call	fpc_raiseexception
..@j9955:
..@j9951:
..@j9925:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	fpc_raiseexception
EXTERN	SYSTEM_$$_RTLEVENTWAITFOR$PRTLEVENT
EXTERN	TC_$CLASSES_$$_WAKEMAINTHREAD
EXTERN	SYSTEM_$$_RTLEVENTSETEVENT$PRTLEVENT
EXTERN	U_$CLASSES_$$_SYNCHRONIZETIMEOUTEVENT
EXTERN	FPC_RERAISE
EXTERN	SYSTEM_$$_LEAVECRITICALSECTION$TRTLCRITICALSECTION
EXTERN	FPC_POPADDRSTACK
EXTERN	U_$CLASSES_$$_THREADQUEUEHEAD
EXTERN	U_$CLASSES_$$_THREADQUEUETAIL
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
EXTERN	SYSTEM_$$_ENTERCRITICALSECTION$TRTLCRITICALSECTION
EXTERN	U_$CLASSES_$$_THREADQUEUELOCK
EXTERN	fpc_freemem
EXTERN	CLASSES_$$_EXECUTETHREADQUEUEENTRY$TThread.PTHREADQUEUEENTRY
EXTERN	U_$CLASSES_$$_MAINTHREADID
EXTERN	SYSTEM_$$_GETCURRENTTHREADID$$WORD
