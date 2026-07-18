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
	GLOBAL SYSTEM$_$TOBJECT_$__$$_INITINSTANCE$POINTER$$TOBJECT
SYSTEM$_$TOBJECT_$__$$_INITINSTANCE$POINTER$$TOBJECT:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	ax,word [bp+4]
		push	ax
		mov	bx,word [bp+6]
		mov	ax,word [bx]
		push	ax
		mov	ax,0
		push	ax
		call	SYSTEM_$$_FILLCHAR$formal$SMALLINT$BYTE
		mov	bx,word [bp+4]
		mov	ax,word [bp+6]
		mov	word [bx],ax
		mov	bx,word [bp+6]
		mov	ax,word FPC_EMPTYINTF
		cmp	ax,word [bx+20]
		jne	..@j14651
		jmp	..@j14652
..@j14651:
		push	word [bp+6]
		push	word [bp+4]
		call	SYSTEM_$$_INITINTERFACEPOINTERS$TCLASS$POINTER
..@j14652:
		mov	ax,word [bp+4]
		mov	word [bp-2],ax
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM_$$_INITINTERFACEPOINTERS$TCLASS$POINTER
EXTERN	FPC_EMPTYINTF
EXTERN	SYSTEM_$$_FILLCHAR$formal$SMALLINT$BYTE
