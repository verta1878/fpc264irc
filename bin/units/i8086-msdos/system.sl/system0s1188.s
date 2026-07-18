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
	GLOBAL fpc_reset_typed_iso
fpc_reset_typed_iso:
	GLOBAL FPC_RESET_TYPED_ISO
FPC_RESET_TYPED_ISO:
		push	bp
		mov	bp,sp
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j25087
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j25088
..@j25087:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j25088:
		cmp	word [bx],0
		jne	..@j25085
		jmp	..@j25086
..@j25085:
		jmp	..@j25083
..@j25086:
		mov	bx,word [bp+8]
		mov	dx,word [bx+2]
		mov	ax,word [bx+4]
		cmp	ax,0
		jne	..@j25090
		cmp	dx,0
		jne	..@j25090
		jmp	..@j25089
..@j25089:
		mov	ax,word [bp+8]
		push	ax
		call	SYSTEM_$$_DOASSIGN$TYPEDFILE
..@j25090:
		mov	ax,word [bp+8]
		push	ax
		push	word [bp+6]
		push	word [bp+4]
		call	SYSTEM_$$_RESET$file$LONGINT
		mov	ax,word [bp+8]
		push	ax
		mov	bx,word [bp+8]
		lea	ax,[bx+568]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,1
		push	ax
		call	SYSTEM_$$_BLOCKREAD$file$formal$INT64
..@j25083:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	SYSTEM_$$_BLOCKREAD$file$formal$INT64
EXTERN	SYSTEM_$$_RESET$file$LONGINT
EXTERN	SYSTEM_$$_DOASSIGN$TYPEDFILE
EXTERN	U_$SYSTEM_$$_INOUTRES
EXTERN	FPC_THREADVAR_RELOCATE
