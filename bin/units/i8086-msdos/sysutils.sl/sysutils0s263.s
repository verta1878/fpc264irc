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
	GLOBAL SYSUTILS$_$SSCANF$crcFD40E9A9_$$_GETSTRING$$SMALLINT
SYSUTILS$_$SSCANF$crcFD40E9A9_$$_GETSTRING$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,18
		mov	word [bp-18],0
		mov	ax,1
		push	ax
		lea	ax,[bp-14]
		push	ax
		lea	ax,[bp-8]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j9237
		mov	bx,word [bp+4]
		lea	ax,[bx-12]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_assign
		jmp	..@j9244
	ALIGN 2
..@j9243:
		mov	bx,word [bp+4]
		inc	word [bx-8]
..@j9244:
		mov	bx,word [bp+4]
		mov	bx,word [bx+10]
		test	bx,bx
		je	..@j9247
		mov	bx,word [bx-2]
..@j9247:
		mov	si,word [bp+4]
		cmp	bx,word [si-8]
		jg	..@j9246
		jmp	..@j9245
..@j9246:
		mov	bx,word [bp+4]
		mov	bx,word [bx+10]
		mov	si,word [bp+4]
		mov	si,word [si-8]
		cmp	byte [bx+si-1],32
		je	..@j9243
		jmp	..@j9245
..@j9245:
		jmp	..@j9249
	ALIGN 2
..@j9248:
		mov	bx,word [bp+4]
		lea	ax,[bx-12]
		push	ax
		mov	bx,word [bp+4]
		push	word [bx-12]
		lea	ax,[bp-18]
		push	ax
		mov	bx,word [bp+4]
		mov	bx,word [bx+10]
		mov	si,word [bp+4]
		mov	si,word [si-8]
		mov	al,byte [bx+si-1]
		mov	ah,0
		push	ax
		mov	ax,0
		push	ax
		call	fpc_char_to_ansistr
		push	word [bp-18]
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat
		mov	bx,word [bp+4]
		inc	word [bx-8]
..@j9249:
		mov	bx,word [bp+4]
		mov	bx,word [bx+10]
		test	bx,bx
		je	..@j9266
		mov	bx,word [bx-2]
..@j9266:
		mov	si,word [bp+4]
		cmp	bx,word [si-8]
		jge	..@j9265
		jmp	..@j9250
..@j9265:
		mov	bx,word [bp+4]
		mov	bx,word [bx+10]
		mov	si,word [bp+4]
		mov	si,word [si-8]
		cmp	byte [bx+si-1],32
		jne	..@j9248
		jmp	..@j9250
..@j9250:
		mov	bx,word [bp+4]
		mov	bx,word [bx-12]
		test	bx,bx
		je	..@j9269
		mov	bx,word [bx-2]
..@j9269:
		mov	word [bp-2],bx
..@j9237:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-18]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j9238
		call	FPC_RERAISE
..@j9238:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	fpc_ansistr_concat
EXTERN	fpc_char_to_ansistr
EXTERN	fpc_ansistr_assign
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
