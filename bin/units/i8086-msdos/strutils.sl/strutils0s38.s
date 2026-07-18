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
	GLOBAL STRUTILS_$$_ANSIENDSSTR$ANSISTRING$ANSISTRING$$BOOLEAN
STRUTILS_$$_ANSIENDSSTR$ANSISTRING$ANSISTRING$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	bx,word [bp+4]
		test	bx,bx
		je	..@j1158
		mov	bx,word [bx-2]
..@j1158:
		mov	si,word [bp+6]
		test	si,si
		je	..@j1159
		mov	si,word [si-2]
..@j1159:
		cmp	bx,si
		jge	..@j1156
		jmp	..@j1157
..@j1156:
		mov	ax,word [bp+6]
		test	ax,ax
		jne	..@j1164
		mov	ax,word FPC_EMPTYCHAR
..@j1164:
		push	ax
		mov	ax,word [bp+4]
		test	ax,ax
		jne	..@j1167
		mov	ax,word FPC_EMPTYCHAR
..@j1167:
		mov	bx,word [bp+4]
		test	bx,bx
		je	..@j1168
		mov	bx,word [bx-2]
..@j1168:
		add	bx,ax
		mov	si,word [bp+6]
		test	si,si
		je	..@j1169
		mov	si,word [si-2]
..@j1169:
		sub	bx,si
		push	bx
		mov	bx,word [bp+6]
		test	bx,bx
		je	..@j1172
		mov	bx,word [bx-2]
..@j1172:
		mov	ax,bx
		cwd
		mov	cx,ax
		mov	ax,dx
		push	ax
		push	cx
		call	SYSUTILS_$$_ANSISTRLCOMP$PCHAR$PCHAR$LONGWORD$$SMALLINT
		test	ax,ax
		mov	al,0
		jne	..@j1173
		inc	ax
..@j1173:
		mov	byte [bp-1],al
		jmp	..@j1174
..@j1157:
		mov	byte [bp-1],0
..@j1174:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSUTILS_$$_ANSISTRLCOMP$PCHAR$PCHAR$LONGWORD$$SMALLINT
EXTERN	FPC_EMPTYCHAR
