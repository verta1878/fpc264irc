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
	GLOBAL DOS_$$_GETDIRIO$BYTE$SHORTSTRING
DOS_$$_GETDIRIO$BYTE$SHORTSTRING:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j201
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j202
..@j201:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j202:
		mov	ax,word [bx]
		mov	word [bp-2],ax
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j205
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j206
..@j205:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j206:
		mov	word [bx],0
		mov	al,byte [bp+6]
		mov	ah,0
		push	ax
		mov	ax,word [bp+4]
		push	ax
		mov	ax,255
		push	ax
		call	SYSTEM_$$_GETDIR$BYTE$OPENSTRING
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j215
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j216
..@j215:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j216:
		mov	ax,word [bp-2]
		mov	word [bx],ax
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM_$$_GETDIR$BYTE$OPENSTRING
EXTERN	U_$SYSTEM_$$_INOUTRES
EXTERN	FPC_THREADVAR_RELOCATE
