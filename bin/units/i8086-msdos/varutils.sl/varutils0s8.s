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
	GLOBAL VARUTILS_$$_VARIANTTOSMALLINT$TVARDATA$$SMALLINT
VARUTILS_$$_VARIANTTOSMALLINT$TVARDATA$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,10
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		and	ax,-4096
		test	ax,ax
		je	..@j98
		sub	ax,16384
		je	..@j99
		jmp	..@j97
..@j98:
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		test	ax,ax
		je	..@j102
		sub	ax,2
		je	..@j103
		dec	ax
		je	..@j105
		dec	ax
		je	..@j106
		dec	ax
		je	..@j107
		dec	ax
		je	..@j109
		dec	ax
		je	..@j108
		dec	ax
		je	..@j117
		sub	ax,3
		je	..@j110
		dec	ax
		je	..@j111
		sub	ax,4
		je	..@j104
		dec	ax
		je	..@j112
		dec	ax
		je	..@j113
		dec	ax
		je	..@j114
		dec	ax
		je	..@j115
		dec	ax
		je	..@j116
		sub	ax,235
		je	..@j118
		sub	ax,2
		je	..@j119
		jmp	..@j101
..@j102:
		mov	word [bp-2],0
		jmp	..@j100
..@j103:
		mov	bx,word [bp+4]
		mov	ax,word [bx+8]
		mov	word [bp-2],ax
		jmp	..@j100
..@j104:
		mov	bx,word [bp+4]
		mov	al,byte [bx+8]
		cbw
		mov	dx,ax
		mov	word [bp-2],dx
		jmp	..@j100
..@j105:
		mov	bx,word [bp+4]
		mov	ax,word [bx+8]
		mov	word [bp-2],ax
		jmp	..@j100
..@j106:
		mov	bx,word [bp+4]
		wait fld	dword [bx+8]
		wait fistp	qword [bp-10]
		DB	09bh
		mov	ax,word [bp-10]
		mov	word [bp-2],ax
		jmp	..@j100
..@j107:
		mov	bx,word [bp+4]
		wait fld	qword [bx+8]
		wait fistp	qword [bp-10]
		DB	09bh
		mov	ax,word [bp-10]
		mov	word [bp-2],ax
		jmp	..@j100
..@j108:
		mov	bx,word [bp+4]
		wait fld	qword [bx+8]
		wait fistp	qword [bp-10]
		DB	09bh
		mov	ax,word [bp-10]
		mov	word [bp-2],ax
		jmp	..@j100
..@j109:
		mov	bx,word [bp+4]
		wait fild	qword [_$VARUTILS$_Ld1]
		wait fild	qword [bx+8]
		wait fdivrp	st1,st0
		wait fistp	qword [bp-10]
		DB	09bh
		mov	ax,word [bp-10]
		mov	word [bp-2],ax
		jmp	..@j100
..@j110:
		mov	bx,word [bp+4]
		mov	ax,word [bx+8]
		mov	word [bp-2],ax
		jmp	..@j100
..@j111:
		mov	bx,word [bp+4]
		mov	ax,word [bx+8]
		push	ax
		call	VARUTILS_$$_VARIANTTOSMALLINT$TVARDATA$$SMALLINT
		mov	word [bp-2],ax
		jmp	..@j100
..@j112:
		mov	bx,word [bp+4]
		mov	al,byte [bx+8]
		mov	ah,0
		mov	word [bp-2],ax
		jmp	..@j100
..@j113:
		mov	bx,word [bp+4]
		mov	ax,word [bx+8]
		mov	word [bp-2],ax
		jmp	..@j100
..@j114:
		mov	bx,word [bp+4]
		mov	ax,word [bx+8]
		mov	word [bp-2],ax
		jmp	..@j100
..@j115:
		mov	bx,word [bp+4]
		mov	ax,word [bx+8]
		mov	word [bp-2],ax
		jmp	..@j100
..@j116:
		mov	bx,word [bp+4]
		mov	ax,word [bx+8]
		mov	word [bp-2],ax
		jmp	..@j100
..@j117:
		mov	bx,word [bp+4]
		push	word [bx+8]
		call	VARUTILS_$$_WSTRTOSMALLINT$POINTER$$SMALLINT
		mov	word [bp-2],ax
		jmp	..@j100
..@j118:
		mov	bx,word [bp+4]
		push	word [bx+8]
		call	VARUTILS_$$_LSTRTOSMALLINT$POINTER$$SMALLINT
		mov	word [bp-2],ax
		jmp	..@j100
..@j119:
		mov	bx,word [bp+4]
		push	word [bx+8]
		call	VARUTILS_$$_USTRTOSMALLINT$POINTER$$SMALLINT
		mov	word [bp-2],ax
		jmp	..@j100
..@j101:
		mov	bx,word [bp+4]
		push	word [bx]
		mov	ax,2
		push	ax
		call	VARUTILS_$$_VARIANTTYPEMISMATCH$WORD$WORD
..@j100:
		jmp	..@j96
..@j99:
		mov	bx,word [bp+4]
		cmp	word [bx+8],0
		jne	..@j170
		jmp	..@j171
..@j170:
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		and	ax,4095
		cmp	ax,2
		jb	..@j173
		sub	ax,2
		je	..@j174
		dec	ax
		je	..@j176
		dec	ax
		je	..@j177
		dec	ax
		je	..@j178
		dec	ax
		je	..@j180
		dec	ax
		je	..@j179
		dec	ax
		je	..@j188
		sub	ax,3
		je	..@j181
		dec	ax
		je	..@j182
		sub	ax,4
		je	..@j175
		dec	ax
		je	..@j183
		dec	ax
		je	..@j184
		dec	ax
		je	..@j185
		dec	ax
		je	..@j186
		dec	ax
		je	..@j187
		sub	ax,235
		je	..@j189
		sub	ax,2
		je	..@j190
		jmp	..@j173
..@j174:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		mov	ax,word [bx]
		mov	word [bp-2],ax
		jmp	..@j172
..@j175:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		mov	al,byte [bx]
		cbw
		mov	dx,ax
		mov	word [bp-2],dx
		jmp	..@j172
..@j176:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		mov	ax,word [bx]
		mov	word [bp-2],ax
		jmp	..@j172
..@j177:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		wait fld	dword [bx]
		wait fistp	qword [bp-10]
		DB	09bh
		mov	ax,word [bp-10]
		mov	word [bp-2],ax
		jmp	..@j172
..@j178:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		wait fld	qword [bx]
		wait fistp	qword [bp-10]
		DB	09bh
		mov	ax,word [bp-10]
		mov	word [bp-2],ax
		jmp	..@j172
..@j179:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		wait fld	qword [bx]
		wait fistp	qword [bp-10]
		DB	09bh
		mov	ax,word [bp-10]
		mov	word [bp-2],ax
		jmp	..@j172
..@j180:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		wait fild	qword [_$VARUTILS$_Ld1]
		wait fild	qword [bx]
		wait fdivrp	st1,st0
		wait fistp	qword [bp-10]
		DB	09bh
		mov	ax,word [bp-10]
		mov	word [bp-2],ax
		jmp	..@j172
..@j181:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		mov	ax,word [bx]
		mov	word [bp-2],ax
		jmp	..@j172
..@j182:
		mov	bx,word [bp+4]
		mov	ax,word [bx+8]
		push	ax
		call	VARUTILS_$$_VARIANTTOSMALLINT$TVARDATA$$SMALLINT
		mov	word [bp-2],ax
		jmp	..@j172
..@j183:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		mov	al,byte [bx]
		mov	ah,0
		mov	word [bp-2],ax
		jmp	..@j172
..@j184:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		mov	ax,word [bx]
		mov	word [bp-2],ax
		jmp	..@j172
..@j185:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		mov	ax,word [bx]
		mov	word [bp-2],ax
		jmp	..@j172
..@j186:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		mov	ax,word [bx]
		mov	word [bp-2],ax
		jmp	..@j172
..@j187:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		mov	ax,word [bx]
		mov	word [bp-2],ax
		jmp	..@j172
..@j188:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		push	word [bx]
		call	VARUTILS_$$_WSTRTOSMALLINT$POINTER$$SMALLINT
		mov	word [bp-2],ax
		jmp	..@j172
..@j189:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		push	word [bx]
		call	VARUTILS_$$_LSTRTOSMALLINT$POINTER$$SMALLINT
		mov	word [bp-2],ax
		jmp	..@j172
..@j190:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		push	word [bx]
		call	VARUTILS_$$_USTRTOSMALLINT$POINTER$$SMALLINT
		mov	word [bp-2],ax
		jmp	..@j172
..@j173:
		mov	bx,word [bp+4]
		push	word [bx]
		mov	ax,2
		push	ax
		call	VARUTILS_$$_VARIANTTYPEMISMATCH$WORD$WORD
..@j172:
		jmp	..@j239
..@j171:
		mov	bx,word [bp+4]
		push	word [bx]
		mov	ax,2
		push	ax
		call	VARUTILS_$$_VARIANTTYPEMISMATCH$WORD$WORD
..@j239:
		jmp	..@j96
..@j97:
		mov	bx,word [bp+4]
		push	word [bx]
		mov	ax,2
		push	ax
		call	VARUTILS_$$_VARIANTTYPEMISMATCH$WORD$WORD
..@j96:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	VARUTILS_$$_VARIANTTYPEMISMATCH$WORD$WORD
EXTERN	VARUTILS_$$_USTRTOSMALLINT$POINTER$$SMALLINT
EXTERN	VARUTILS_$$_LSTRTOSMALLINT$POINTER$$SMALLINT
EXTERN	VARUTILS_$$_WSTRTOSMALLINT$POINTER$$SMALLINT
EXTERN	_$VARUTILS$_Ld1
