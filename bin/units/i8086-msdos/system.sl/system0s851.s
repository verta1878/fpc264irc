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
	GLOBAL SYSTEM_$$_DUMP_STACK$TEXT$LONGINT
SYSTEM_$$_DUMP_STACK$TEXT$LONGINT:
		push	bp
		mov	bp,sp
		sub	sp,794
		mov	bx,word [bp+8]
		push	word [bx]
		call	SYSTEM_$$_DO_ISDEVICE$WORD$$BOOLEAN
		test	al,al
		jne	..@j18030
		jmp	..@j18031
..@j18030:
		mov	dx,word [TC_$SYSTEM_$$_MAX_FRAME_DUMP]
		mov	ax,0
		mov	word [bp-8],dx
		mov	word [bp-6],ax
		jmp	..@j18036
..@j18031:
		mov	word [bp-8],255
		mov	word [bp-6],0
..@j18036:
		mov	ax,1
		push	ax
		lea	ax,[bp-532]
		push	ax
		lea	ax,[bp-526]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j18041
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		add	ax,1
		adc	dx,0
		push	ax
		push	word [bp-8]
		lea	ax,[bp-520]
		push	ax
		call	SYSTEM_$$_CAPTUREBACKTRACE$SMALLINT$SMALLINT$PCODEPOINTER$$SMALLINT
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-8],cx
		mov	word [bp-6],ax
		mov	ax,word [bp-8]
		mov	dx,word [bp-6]
		sub	ax,1
		sbb	dx,0
		mov	word [bp-794],ax
		mov	word [bp-792],dx
		mov	word [bp-4],0
		mov	word [bp-2],0
		mov	ax,word [bp-792]
		cmp	ax,word [bp-2]
		jl	..@j18056
		jg	..@j18058
		mov	ax,word [bp-794]
		cmp	ax,word [bp-4]
		jb	..@j18056
..@j18058:
		sub	word [bp-4],1
		sbb	word [bp-2],0
	ALIGN 2
..@j18057:
		add	word [bp-4],1
		adc	word [bp-2],0
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word [bp+8]
		push	ax
		lea	ax,[bp-790]
		push	ax
		mov	ax,word [bp-4]
		mov	si,ax
		shl	si,1
		push	word [bp+si-520]
		mov	ax,word [TC_$SYSTEM_$$_BACKTRACESTRFUNC]
		call	ax
		lea	ax,[bp-790]
		push	ax
		call	fpc_write_text_shortstr
		mov	ax,word [bp+8]
		push	ax
		call	fpc_writeln_end
		mov	ax,word [bp-792]
		cmp	ax,word [bp-2]
		jg	..@j18057
		jl	..@j18071
		mov	ax,word [bp-794]
		cmp	ax,word [bp-4]
		ja	..@j18057
..@j18071:
..@j18056:
..@j18041:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j18043
		call	FPC_DONEEXCEPTION
		jmp	..@j18043
..@j18043:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	FPC_DONEEXCEPTION
EXTERN	FPC_POPADDRSTACK
EXTERN	fpc_writeln_end
EXTERN	fpc_write_text_shortstr
EXTERN	TC_$SYSTEM_$$_BACKTRACESTRFUNC
EXTERN	SYSTEM_$$_CAPTUREBACKTRACE$SMALLINT$SMALLINT$PCODEPOINTER$$SMALLINT
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
EXTERN	TC_$SYSTEM_$$_MAX_FRAME_DUMP
EXTERN	SYSTEM_$$_DO_ISDEVICE$WORD$$BOOLEAN
