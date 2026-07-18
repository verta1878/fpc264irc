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
	GLOBAL fpc_write_text_unicodestr
fpc_write_text_unicodestr:
		push	bp
		mov	bp,sp
		sub	sp,20
		mov	word [bp-6],0
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
		jne	..@j22058
		cmp	word [bp+4],0
		je	..@j22060
		jmp	..@j22062
..@j22062:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j22063
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j22064
..@j22063:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j22064:
		cmp	word [bx],0
		jne	..@j22060
		jmp	..@j22061
..@j22060:
		jmp	..@j22058
..@j22061:
		mov	bx,word [bp+6]
		mov	dx,word [bx+2]
		mov	ax,word [bx+4]
		test	ax,ax
		jne	..@j22069
		cmp	dx,-10319
		je	..@j22068
..@j22069:
		test	ax,ax
		jne	..@j22070
		cmp	dx,-10318
		je	..@j22067
..@j22070:
		jmp	..@j22066
..@j22067:
		mov	bx,word [bp+4]
		test	bx,bx
		je	..@j22073
		mov	bx,word [bx-2]
..@j22073:
		mov	ax,bx
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-4],cx
		mov	word [bp-2],ax
		mov	dx,word [bp+8]
		mov	ax,word [bp+10]
		cmp	ax,word [bp-2]
		jg	..@j22074
		jl	..@j22075
		cmp	dx,word [bp-4]
		ja	..@j22074
		jmp	..@j22075
		jmp	..@j22075
..@j22074:
		mov	ax,word [bp+6]
		push	ax
		mov	ax,word [bp+8]
		mov	dx,word [bp+10]
		mov	cx,word [bp-4]
		mov	bx,word [bp-2]
		sub	ax,cx
		sbb	dx,bx
		push	dx
		push	ax
		call	SYSTEM_$$_FPC_WRITEBLANKS$TEXT$LONGINT
..@j22075:
		mov	ax,word [bp+4]
		test	ax,ax
		jne	..@j22082
		mov	ax,word FPC_EMPTYCHAR
..@j22082:
		push	ax
		lea	ax,[bp-6]
		push	ax
		mov	bx,word [bp+6]
		push	word [bx+828]
		push	word [bp-4]
		mov	ax,word [U_$SYSTEM_$$_WIDESTRINGMANAGER+38]
		call	ax
		mov	ax,word [bp+6]
		push	ax
		mov	ax,word [bp-6]
		test	ax,ax
		jne	..@j22093
		mov	ax,word FPC_EMPTYCHAR
..@j22093:
		push	ax
		mov	bx,word [bp-6]
		test	bx,bx
		je	..@j22096
		mov	bx,word [bx-2]
..@j22096:
		push	bx
		call	SYSTEM_$$_FPC_WRITEBUFFER$TEXT$formal$SMALLINT
		jmp	..@j22065
..@j22068:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j22099
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j22100
..@j22099:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j22100:
		mov	word [bx],105
		jmp	..@j22065
..@j22066:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j22103
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j22104
..@j22103:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j22104:
		mov	word [bx],103
..@j22065:
..@j22058:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-6]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j22059
		call	FPC_RERAISE
..@j22059:
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	SYSTEM_$$_FPC_WRITEBUFFER$TEXT$formal$SMALLINT
EXTERN	U_$SYSTEM_$$_WIDESTRINGMANAGER
EXTERN	FPC_EMPTYCHAR
EXTERN	SYSTEM_$$_FPC_WRITEBLANKS$TEXT$LONGINT
EXTERN	U_$SYSTEM_$$_INOUTRES
EXTERN	FPC_THREADVAR_RELOCATE
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
