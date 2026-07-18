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
	GLOBAL SYSUTILS_$$_SSCANF$ANSISTRING$ANSISTRING$array_of_POINTER$$SMALLINT
SYSUTILS_$$_SSCANF$ANSISTRING$ANSISTRING$array_of_POINTER$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,28
		mov	word [bp-12],0
		mov	ax,1
		push	ax
		lea	ax,[bp-24]
		push	ax
		lea	ax,[bp-18]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j9110
		mov	word [bp-8],1
		mov	word [bp-10],1
		mov	word [bp-2],0
		mov	ax,word [bp+4]
		mov	word [bp-28],ax
		mov	word [bp-4],0
		mov	ax,word [bp-28]
		cmp	ax,word [bp-4]
		jl	..@j9121
		dec	word [bp-4]
	ALIGN 2
..@j9122:
		inc	word [bp-4]
		push	bp
		call	SYSUTILS$_$SSCANF$crcFD40E9A9_$$_GETFMT$$SMALLINT
		mov	word [bp-6],ax
		mov	ax,word [bp-6]
		test	ax,ax
		jl	..@j9128
		test	ax,ax
		je	..@j9129
		sub	ax,2
		je	..@j9130
		dec	ax
		je	..@j9131
		dec	ax
		je	..@j9132
		jmp	..@j9128
..@j9129:
		push	bp
		mov	ax,0
		push	ax
		call	SYSUTILS$_$SSCANF$crcFD40E9A9_$$_GETINT$BOOLEAN$$SMALLINT
		cmp	ax,0
		jg	..@j9133
		jmp	..@j9134
..@j9133:
		push	word [bp-12]
		call	SYSUTILS_$$_STRTOINT$ANSISTRING$$LONGINT
		mov	bx,word [bp+6]
		mov	cx,word [bp-4]
		mov	si,cx
		shl	si,1
		mov	bx,word [bx+si]
		mov	word [bx],ax
		mov	word [bx+2],dx
		inc	word [bp-2]
		jmp	..@j9143
..@j9134:
		jmp	..@j9121
..@j9143:
		jmp	..@j9127
..@j9130:
		mov	bx,word [bp+10]
		test	bx,bx
		je	..@j9146
		mov	bx,word [bx-2]
..@j9146:
		cmp	bx,word [bp-8]
		jg	..@j9144
		jmp	..@j9145
..@j9144:
		mov	bx,word [bp+6]
		mov	ax,word [bp-4]
		mov	si,ax
		shl	si,1
		mov	di,word [bx+si]
		mov	bx,word [bp+10]
		mov	si,word [bp-8]
		mov	al,byte [bx+si-1]
		mov	byte [di],al
		inc	word [bp-8]
		inc	word [bp-2]
		jmp	..@j9149
..@j9145:
		jmp	..@j9121
..@j9149:
		jmp	..@j9127
..@j9131:
		push	bp
		call	SYSUTILS$_$SSCANF$crcFD40E9A9_$$_GETFLOAT$$SMALLINT
		cmp	ax,0
		jg	..@j9150
		jmp	..@j9151
..@j9150:
		push	word [bp-12]
		call	SYSUTILS_$$_STRTOFLOAT$ANSISTRING$$EXTENDED
		mov	bx,word [bp+6]
		mov	ax,word [bp-4]
		mov	si,ax
		shl	si,1
		mov	bx,word [bx+si]
		wait fstp	tword [bx]
		DB	09bh
		inc	word [bp-2]
		jmp	..@j9158
..@j9151:
		jmp	..@j9121
..@j9158:
		jmp	..@j9127
..@j9132:
		push	bp
		call	SYSUTILS$_$SSCANF$crcFD40E9A9_$$_GETSTRING$$SMALLINT
		cmp	ax,0
		jg	..@j9159
		jmp	..@j9160
..@j9159:
		mov	bx,word [bp+6]
		mov	ax,word [bp-4]
		mov	si,ax
		shl	si,1
		mov	ax,word [bx+si]
		push	ax
		push	word [bp-12]
		call	fpc_ansistr_assign
		inc	word [bp-2]
		jmp	..@j9167
..@j9160:
		jmp	..@j9121
..@j9167:
		jmp	..@j9127
..@j9128:
		jmp	..@j9121
..@j9127:
		mov	ax,word [bp-28]
		cmp	ax,word [bp-4]
		jg	..@j9122
..@j9121:
..@j9110:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-12]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j9111
		call	FPC_RERAISE
..@j9111:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	fpc_ansistr_assign
EXTERN	SYSUTILS$_$SSCANF$crcFD40E9A9_$$_GETSTRING$$SMALLINT
EXTERN	SYSUTILS_$$_STRTOFLOAT$ANSISTRING$$EXTENDED
EXTERN	SYSUTILS$_$SSCANF$crcFD40E9A9_$$_GETFLOAT$$SMALLINT
EXTERN	SYSUTILS_$$_STRTOINT$ANSISTRING$$LONGINT
EXTERN	SYSUTILS$_$SSCANF$crcFD40E9A9_$$_GETINT$BOOLEAN$$SMALLINT
EXTERN	SYSUTILS$_$SSCANF$crcFD40E9A9_$$_GETFMT$$SMALLINT
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
