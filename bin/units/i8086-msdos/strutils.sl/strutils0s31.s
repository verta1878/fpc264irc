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
	GLOBAL STRUTILS_$$_ANSISTARTSTEXT$ANSISTRING$ANSISTRING$$BOOLEAN
STRUTILS_$$_ANSISTARTSTEXT$ANSISTRING$ANSISTRING$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	si,word [bp+4]
		test	si,si
		je	..@j1034
		mov	si,word [si-2]
..@j1034:
		mov	bx,word [bp+6]
		test	bx,bx
		je	..@j1035
		mov	bx,word [bx-2]
..@j1035:
		cmp	si,bx
		jge	..@j1033
		jmp	..@j1032
..@j1033:
		cmp	word [bp+6],0
		jne	..@j1031
		jmp	..@j1032
..@j1031:
		mov	ax,word [bp+6]
		test	ax,ax
		jne	..@j1040
		mov	ax,word FPC_EMPTYCHAR
..@j1040:
		push	ax
		mov	ax,word [bp+4]
		test	ax,ax
		jne	..@j1043
		mov	ax,word FPC_EMPTYCHAR
..@j1043:
		push	ax
		mov	bx,word [bp+6]
		test	bx,bx
		je	..@j1046
		mov	bx,word [bx-2]
..@j1046:
		mov	ax,bx
		cwd
		mov	cx,ax
		mov	ax,dx
		push	ax
		push	cx
		call	SYSUTILS_$$_ANSISTRLICOMP$PCHAR$PCHAR$LONGWORD$$SMALLINT
		test	ax,ax
		mov	al,0
		jne	..@j1047
		inc	ax
..@j1047:
		mov	byte [bp-1],al
		jmp	..@j1048
..@j1032:
		mov	byte [bp-1],0
..@j1048:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSUTILS_$$_ANSISTRLICOMP$PCHAR$PCHAR$LONGWORD$$SMALLINT
EXTERN	FPC_EMPTYCHAR
