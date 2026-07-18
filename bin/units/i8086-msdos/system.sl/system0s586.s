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
	GLOBAL SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT
SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT:
		push	bp
		mov	bp,sp
		sub	sp,6
		lea	ax,[bp-4]
		push	ax
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		push	ax
		call	SYSTEM_$$_GETMEM$POINTER$WORD
		cmp	word [bp-4],0
		jne	..@j14671
		jmp	..@j14672
..@j14671:
		mov	ax,word [bp-4]
		mov	word [bp-6],ax
		mov	ax,word [bp-6]
		push	ax
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		push	ax
		mov	ax,0
		push	ax
		call	SYSTEM_$$_FILLCHAR$formal$SMALLINT$BYTE
		mov	bx,word [bp-6]
		mov	ax,word [bp+4]
		mov	word [bx],ax
		mov	bx,word [bp+4]
		mov	ax,word FPC_EMPTYINTF
		cmp	ax,word [bx+20]
		jne	..@j14686
		jmp	..@j14687
..@j14686:
		push	word [bp+4]
		push	word [bp-6]
		call	SYSTEM_$$_INITINTERFACEPOINTERS$TCLASS$POINTER
..@j14687:
		mov	ax,word [bp-6]
..@j14672:
		mov	ax,word [bp-4]
		mov	word [bp-2],ax
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	SYSTEM_$$_INITINTERFACEPOINTERS$TCLASS$POINTER
EXTERN	FPC_EMPTYINTF
EXTERN	SYSTEM_$$_FILLCHAR$formal$SMALLINT$BYTE
EXTERN	SYSTEM_$$_GETMEM$POINTER$WORD
