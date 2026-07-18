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
	GLOBAL STRUTILS_$$_ANSISTARTSSTR$ANSISTRING$ANSISTRING$$BOOLEAN
STRUTILS_$$_ANSISTARTSSTR$ANSISTRING$ANSISTRING$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	si,word [bp+4]
		test	si,si
		je	..@j1137
		mov	si,word [si-2]
..@j1137:
		mov	bx,word [bp+6]
		test	bx,bx
		je	..@j1138
		mov	bx,word [bx-2]
..@j1138:
		cmp	si,bx
		jge	..@j1136
		jmp	..@j1135
..@j1136:
		cmp	word [bp+6],0
		jne	..@j1134
		jmp	..@j1135
..@j1134:
		mov	ax,word [bp+6]
		test	ax,ax
		jne	..@j1143
		mov	ax,word FPC_EMPTYCHAR
..@j1143:
		push	ax
		mov	ax,word [bp+4]
		test	ax,ax
		jne	..@j1146
		mov	ax,word FPC_EMPTYCHAR
..@j1146:
		push	ax
		mov	bx,word [bp+6]
		test	bx,bx
		je	..@j1149
		mov	bx,word [bx-2]
..@j1149:
		mov	ax,bx
		cwd
		mov	cx,ax
		mov	ax,dx
		push	ax
		push	cx
		call	SYSUTILS_$$_ANSISTRLCOMP$PCHAR$PCHAR$LONGWORD$$SMALLINT
		test	ax,ax
		mov	al,0
		jne	..@j1150
		inc	ax
..@j1150:
		mov	byte [bp-1],al
		jmp	..@j1151
..@j1135:
		mov	byte [bp-1],0
..@j1151:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSUTILS_$$_ANSISTRLCOMP$PCHAR$PCHAR$LONGWORD$$SMALLINT
EXTERN	FPC_EMPTYCHAR
