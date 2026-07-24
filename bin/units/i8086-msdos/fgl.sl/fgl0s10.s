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
	GLOBAL FGL$_$TFPSLIST_$__$$_SETCAPACITY$SMALLINT
FGL$_$TFPSLIST_$__$$_SETCAPACITY$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,256
		mov	bx,word [bp+6]
		mov	ax,word [bx+4]
		cmp	ax,word [bp+4]
		jg	..@j130
		jmp	..@j132
..@j132:
		cmp	word [bp+4],2047
		jg	..@j130
		jmp	..@j131
..@j130:
		mov	bx,word [bp+6]
		mov	ax,word [bx]
		push	ax
		lea	ax,[bp-256]
		push	ax
		mov	ax,255
		push	ax
		push	word [RESSTR_$RTLCONSTS_$$_SLISTCAPACITYERROR+2]
		call	fpc_ansistr_to_shortstr
		lea	ax,[bp-256]
		push	ax
		push	word [bp+4]
		call	FGL$_$TFPSLIST_$__$$_ERROR$SHORTSTRING$SMALLINT
..@j131:
		mov	bx,word [bp+6]
		mov	ax,word [bx+6]
		cmp	ax,word [bp+4]
		je	..@j145
		jmp	..@j146
..@j145:
		jmp	..@j128
..@j146:
		mov	bx,word [bp+6]
		lea	ax,[bx+2]
		push	ax
		mov	dx,word [bp+4]
		inc	dx
		mov	bx,word [bp+6]
		mov	ax,word [bx+8]
		mul	dx
		push	ax
		call	SYSTEM_$$_REALLOCMEM$POINTER$WORD$$POINTER
		mov	bx,word [bp+6]
		mov	ax,word [bx+6]
		mov	word [bp-2],ax
		mov	ax,word [bp+6]
		mov	word [bp-4],ax
		mov	si,word [bp-4]
		mov	bx,word [bp-4]
		mov	ax,word [bx+8]
		mul	word [bp-2]
		mov	dx,word [si+2]
		add	ax,dx
		push	ax
		mov	dx,word [bp+4]
		inc	dx
		mov	bx,word [bp+6]
		mov	ax,word [bx+6]
		sub	dx,ax
		mov	bx,word [bp+6]
		mov	ax,word [bx+8]
		mul	dx
		push	ax
		mov	ax,0
		push	ax
		call	SYSTEM_$$_FILLCHAR$formal$SMALLINT$CHAR
		mov	bx,word [bp+6]
		mov	ax,word [bp+4]
		mov	word [bx+6],ax
..@j128:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM_$$_FILLCHAR$formal$SMALLINT$CHAR
EXTERN	SYSTEM_$$_REALLOCMEM$POINTER$WORD$$POINTER
EXTERN	FGL$_$TFPSLIST_$__$$_ERROR$SHORTSTRING$SMALLINT
EXTERN	fpc_ansistr_to_shortstr
EXTERN	RESSTR_$RTLCONSTS_$$_SLISTCAPACITYERROR
