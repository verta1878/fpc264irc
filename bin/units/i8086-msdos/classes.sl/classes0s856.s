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
	GLOBAL CLASSES$_$TBINARYOBJECTWRITER_$__$$_CREATE$TSTREAM$SMALLINT$$TBINARYOBJECTWRITER
CLASSES$_$TBINARYOBJECTWRITER_$__$$_CREATE$TSTREAM$SMALLINT$$TBINARYOBJECTWRITER:
		push	bp
		mov	bp,sp
		sub	sp,28
		cmp	word [bp+8],1
		je	..@j21071
		jmp	..@j21072
..@j21071:
		push	word [bp+10]
		mov	bx,word [bp+10]
		mov	ax,word [bx+26]
		call	ax
		mov	word [bp+10],ax
..@j21072:
		cmp	word [bp+10],0
		je	..@j21077
		jmp	..@j21078
..@j21077:
		jmp	..@j21069
..@j21078:
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
		jne	..@j21081
		push	word [bp+10]
		mov	ax,0
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
		cmp	word [bp+6],0
		je	..@j21090
		jmp	..@j21091
..@j21090:
..@j21092:
		mov	ax,word VMT_$CLASSES_$$_EWRITEERROR
		push	ax
		mov	ax,1
		push	ax
		push	word [RESSTR_$RTLCONSTS_$$_SEMPTYSTREAMILLEGALWRITER+2]
		call	SYSUTILS$_$EXCEPTION_$__$$_CREATE$ANSISTRING$$EXCEPTION
		push	ax
		mov	ax,word ..@j21092
		push	ax
		push	bp
		call	fpc_raiseexception
..@j21091:
		mov	bx,word [bp+10]
		mov	ax,word [bp+6]
		mov	word [bx+2],ax
		mov	bx,word [bp+10]
		mov	ax,word [bp+4]
		mov	word [bx+6],ax
		mov	bx,word [bp+10]
		lea	ax,[bx+4]
		push	ax
		push	word [bp+4]
		call	SYSTEM_$$_GETMEM$POINTER$WORD
		cmp	word [bp+10],0
		jne	..@j21115
		jmp	..@j21114
..@j21115:
		cmp	word [bp+8],0
		jne	..@j21113
		jmp	..@j21114
..@j21113:
		push	word [bp+10]
		mov	bx,word [bp+10]
		mov	bx,word [bx]
		mov	ax,word [bx+34]
		call	ax
..@j21114:
..@j21081:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j21083
		mov	ax,1
		push	ax
		lea	ax,[bp-26]
		push	ax
		lea	ax,[bp-20]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j21118
		cmp	word [bp+8],0
		jne	..@j21119
		jmp	..@j21120
..@j21119:
		push	word [bp+10]
		mov	ax,-1
		push	ax
		mov	bx,word [bp+10]
		mov	bx,word [bx]
		mov	ax,word [bx+24]
		call	ax
..@j21120:
		call	fpc_popaddrstack
		call	fpc_reraise
..@j21118:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j21125
		call	FPC_RAISE_NESTED
..@j21125:
		call	FPC_DONEEXCEPTION
		jmp	..@j21083
..@j21083:
..@j21069:
		mov	ax,word [bp+10]
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	FPC_DONEEXCEPTION
EXTERN	FPC_RAISE_NESTED
EXTERN	fpc_reraise
EXTERN	fpc_popaddrstack
EXTERN	FPC_POPADDRSTACK
EXTERN	SYSTEM_$$_GETMEM$POINTER$WORD
EXTERN	fpc_raiseexception
EXTERN	SYSUTILS$_$EXCEPTION_$__$$_CREATE$ANSISTRING$$EXCEPTION
EXTERN	RESSTR_$RTLCONSTS_$$_SEMPTYSTREAMILLEGALWRITER
EXTERN	VMT_$CLASSES_$$_EWRITEERROR
EXTERN	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
