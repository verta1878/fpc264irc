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
	GLOBAL STRUTILS_$$_ANSIENDSTEXT$ANSISTRING$ANSISTRING$$BOOLEAN
STRUTILS_$$_ANSIENDSTEXT$ANSISTRING$ANSISTRING$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	bx,word [bp+4]
		test	bx,bx
		je	..@j1055
		mov	bx,word [bx-2]
..@j1055:
		mov	si,word [bp+6]
		test	si,si
		je	..@j1056
		mov	si,word [si-2]
..@j1056:
		cmp	bx,si
		jge	..@j1053
		jmp	..@j1054
..@j1053:
		mov	ax,word [bp+6]
		test	ax,ax
		jne	..@j1061
		mov	ax,word FPC_EMPTYCHAR
..@j1061:
		push	ax
		mov	ax,word [bp+4]
		test	ax,ax
		jne	..@j1064
		mov	ax,word FPC_EMPTYCHAR
..@j1064:
		mov	bx,word [bp+4]
		test	bx,bx
		je	..@j1065
		mov	bx,word [bx-2]
..@j1065:
		add	bx,ax
		mov	si,word [bp+6]
		test	si,si
		je	..@j1066
		mov	si,word [si-2]
..@j1066:
		sub	bx,si
		push	bx
		mov	bx,word [bp+6]
		test	bx,bx
		je	..@j1069
		mov	bx,word [bx-2]
..@j1069:
		mov	ax,bx
		cwd
		mov	cx,ax
		mov	ax,dx
		push	ax
		push	cx
		call	SYSUTILS_$$_ANSISTRLICOMP$PCHAR$PCHAR$LONGWORD$$SMALLINT
		test	ax,ax
		mov	al,0
		jne	..@j1070
		inc	ax
..@j1070:
		mov	byte [bp-1],al
		jmp	..@j1071
..@j1054:
		mov	byte [bp-1],0
..@j1071:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSUTILS_$$_ANSISTRLICOMP$PCHAR$PCHAR$LONGWORD$$SMALLINT
EXTERN	FPC_EMPTYCHAR
