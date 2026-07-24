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
	GLOBAL SYSUTILS$_$SSCANF$crcFD40E9A9_$$_GETFMT$$SMALLINT
SYSUTILS$_$SSCANF$crcFD40E9A9_$$_GETFMT$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,8
		mov	word [bp-2],-1
		jmp	..@j9175
	ALIGN 2
..@j9174:
		jmp	..@j9178
	ALIGN 2
..@j9177:
		mov	bx,word [bp+4]
		inc	word [bx-10]
..@j9178:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		test	bx,bx
		je	..@j9181
		mov	bx,word [bx-2]
..@j9181:
		mov	si,word [bp+4]
		cmp	bx,word [si-10]
		jg	..@j9180
		jmp	..@j9179
..@j9180:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		mov	si,word [bp+4]
		mov	si,word [si-10]
		cmp	byte [bx+si-1],32
		je	..@j9177
		jmp	..@j9179
..@j9179:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		test	bx,bx
		je	..@j9184
		mov	bx,word [bx-2]
..@j9184:
		mov	si,word [bp+4]
		cmp	bx,word [si-10]
		jle	..@j9182
		jmp	..@j9183
..@j9182:
		jmp	..@j9176
..@j9183:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		mov	si,word [bp+4]
		mov	si,word [si-10]
		cmp	byte [bx+si-1],37
		je	..@j9185
		jmp	..@j9186
..@j9185:
		mov	bx,word [bp+4]
		inc	word [bx-10]
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		mov	si,word [bp+4]
		mov	si,word [si-10]
		mov	al,byte [bx+si-1]
		cmp	al,99
		jb	..@j9188
		sub	al,99
		je	..@j9192
		dec	al
		je	..@j9189
		sub	al,2
		je	..@j9190
		sub	al,13
		je	..@j9191
		jmp	..@j9188
..@j9189:
		mov	word [bp-2],0
		jmp	..@j9187
..@j9190:
		mov	word [bp-2],3
		jmp	..@j9187
..@j9191:
		mov	word [bp-2],4
		jmp	..@j9187
..@j9192:
		mov	word [bp-2],2
		jmp	..@j9187
..@j9188:
..@j9201:
		mov	ax,word VMT_$SYSUTILS_$$_EFORMATERROR
		push	ax
		mov	ax,1
		push	ax
		push	word [RESSTR_$SYSCONST_$$_SINVALIDFORMAT+2]
		mov	bx,word [bp+4]
		mov	dx,word [bx+8]
		mov	ax,0
		mov	word [bp-6],dx
		mov	word [bp-4],ax
		mov	word [bp-8],11
		lea	ax,[bp-8]
		push	ax
		mov	ax,0
		push	ax
		call	SYSUTILS$_$EXCEPTION_$__$$_CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
		push	ax
		mov	ax,word ..@j9201
		push	ax
		push	bp
		call	fpc_raiseexception
..@j9187:
		mov	bx,word [bp+4]
		inc	word [bx-10]
		jmp	..@j9176
..@j9186:
		mov	ax,word [bp+4]
		push	ax
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		mov	si,word [bp+4]
		mov	si,word [si-10]
		mov	al,byte [bx+si-1]
		mov	ah,0
		push	ax
		call	SYSUTILS$_$SSCANF$crcFD40E9A9_$$_SCANSTR$CHAR$$BOOLEAN
		test	al,al
		je	..@j9218
		jmp	..@j9219
..@j9218:
		jmp	..@j9176
..@j9219:
		mov	bx,word [bp+4]
		inc	word [bx-10]
..@j9175:
		jmp	..@j9174
..@j9176:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	SYSUTILS$_$SSCANF$crcFD40E9A9_$$_SCANSTR$CHAR$$BOOLEAN
EXTERN	fpc_raiseexception
EXTERN	SYSUTILS$_$EXCEPTION_$__$$_CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
EXTERN	RESSTR_$SYSCONST_$$_SINVALIDFORMAT
EXTERN	VMT_$SYSUTILS_$$_EFORMATERROR
