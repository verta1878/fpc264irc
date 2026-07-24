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
	GLOBAL SYSTEM_$$_DUMP_STACK$TEXT$POINTER$NEARPOINTER
SYSTEM_$$_DUMP_STACK$TEXT$POINTER$NEARPOINTER:
		push	bp
		mov	bp,sp
		sub	sp,278
		mov	ax,1
		push	ax
		lea	ax,[bp-20]
		push	ax
		lea	ax,[bp-14]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j17986
		mov	word [bp-6],bp
		mov	word [bp-4],0
		mov	word [bp-2],0
		mov	bx,word [bp+8]
		push	word [bx]
		call	SYSTEM_$$_DO_ISDEVICE$WORD$$BOOLEAN
		mov	byte [bp-7],al
		jmp	..@j17999
	ALIGN 2
..@j17998:
		mov	ax,word [bp+6]
		mov	word [bp-6],ax
		lea	ax,[bp+6]
		push	ax
		lea	ax,[bp+4]
		push	ax
		call	SYSTEM_$$_GET_CALLER_STACKINFO$POINTER$NEARPOINTER
		cmp	word [bp+4],0
		je	..@j18007
		jmp	..@j18008
..@j18007:
		jmp	..@j18000
..@j18008:
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word [bp+8]
		push	ax
		lea	ax,[bp-278]
		push	ax
		push	word [bp+4]
		mov	ax,word [TC_$SYSTEM_$$_BACKTRACESTRFUNC]
		call	ax
		lea	ax,[bp-278]
		push	ax
		call	fpc_write_text_shortstr
		mov	ax,word [bp+8]
		push	ax
		call	fpc_writeln_end
		cmp	word [bp+6],0
		je	..@j18021
		jmp	..@j18022
..@j18021:
		jmp	..@j18000
..@j18022:
		add	word [bp-4],1
		adc	word [bp-2],0
		mov	dx,word [TC_$SYSTEM_$$_MAX_FRAME_DUMP]
		mov	ax,0
		cmp	ax,word [bp-2]
		jl	..@j18026
		jg	..@j18025
		cmp	dx,word [bp-4]
		jb	..@j18026
		jmp	..@j18025
		jmp	..@j18025
..@j18026:
		cmp	byte [bp-7],0
		jne	..@j18023
		jmp	..@j18025
..@j18025:
		mov	dx,word [bp-4]
		mov	ax,word [bp-2]
		cmp	ax,0
		jg	..@j18023
		jl	..@j18024
		cmp	dx,256
		ja	..@j18023
		jmp	..@j18024
..@j18023:
		jmp	..@j18000
..@j18024:
..@j17999:
		mov	ax,word [bp+6]
		cmp	ax,word [bp-6]
		ja	..@j18027
		jmp	..@j18000
..@j18027:
		call	SYSTEM_$$_STACKTOP$$POINTER
		cmp	ax,word [bp+6]
		ja	..@j17998
		jmp	..@j18000
..@j18000:
..@j17986:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j17988
		call	FPC_DONEEXCEPTION
		jmp	..@j17988
..@j17988:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	FPC_DONEEXCEPTION
EXTERN	FPC_POPADDRSTACK
EXTERN	SYSTEM_$$_STACKTOP$$POINTER
EXTERN	TC_$SYSTEM_$$_MAX_FRAME_DUMP
EXTERN	fpc_writeln_end
EXTERN	fpc_write_text_shortstr
EXTERN	TC_$SYSTEM_$$_BACKTRACESTRFUNC
EXTERN	SYSTEM_$$_GET_CALLER_STACKINFO$POINTER$NEARPOINTER
EXTERN	SYSTEM_$$_DO_ISDEVICE$WORD$$BOOLEAN
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
