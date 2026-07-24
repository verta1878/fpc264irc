BITS 16
CPU 8086
SECTION .text use16 class=code
SECTION .rodata class=data
SECTION .data class=data
SECTION .fpc class=data
SECTION .bss class=bss
SECTION stack stack class=stack align=16
SECTION heap class=heap align=16
GROUP dgroup rodata data fpc bss stack heap
SECTION .text

SECTION .text
	ALIGN 2
	GLOBAL CLASSES$_$TSTRINGLIST_$__$$_SETCAPACITY$SMALLINT
CLASSES$_$TSTRINGLIST_$__$$_SETCAPACITY$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,10
		cmp	word [bp+4],0
		jl	..@j9196
		jmp	..@j9197
..@j9196:
		push	word [bp+6]
		push	word [RESSTR_$RTLCONSTS_$$_SLISTCAPACITYERROR+2]
		push	word [bp+4]
		call	CLASSES$_$TSTRINGS_$__$$_ERROR$ANSISTRING$SMALLINT
..@j9197:
		mov	bx,word [bp+6]
		mov	ax,word [bx+24]
		cmp	ax,word [bp+4]
		jl	..@j9204
		jmp	..@j9205
..@j9204:
		lea	ax,[bp-2]
		push	ax
		mov	ax,word [bp+4]
		mov	cl,2
		shl	ax,cl
		push	ax
		call	SYSTEM_$$_GETMEM$POINTER$WORD
		cmp	word [bp-2],0
		je	..@j9210
		jmp	..@j9211
..@j9210:
		push	word [bp+6]
		push	word [RESSTR_$RTLCONSTS_$$_SLISTCAPACITYERROR+2]
		push	word [bp+4]
		call	CLASSES$_$TSTRINGS_$__$$_ERROR$ANSISTRING$SMALLINT
..@j9211:
		mov	bx,word [bp+6]
		cmp	word [bx+20],0
		jne	..@j9218
		jmp	..@j9219
..@j9218:
		mov	bx,word [bp+6]
		mov	ax,word [bx+24]
		mov	cl,2
		shl	ax,cl
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-10],cx
		mov	word [bp-8],ax
		mov	bx,word [bp+6]
		mov	ax,word [bx+20]
		push	ax
		mov	ax,word [bp-2]
		push	ax
		push	word [bp-10]
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
		mov	bx,word [bp-2]
		mov	si,word [bp-10]
		lea	ax,[bx+si]
		push	ax
		mov	bx,word [bp+6]
		mov	dx,word [bx+24]
		mov	ax,word [bp+4]
		sub	ax,dx
		push	ax
		mov	ax,0
		push	ax
		call	SYSTEM_$$_FILLWORD$formal$SMALLINT$WORD
		mov	bx,word [bp+6]
		push	word [bx+20]
		push	word [bp-10]
		call	SYSTEM_$$_FREEMEM$POINTER$WORD
..@j9219:
		mov	bx,word [bp+6]
		mov	ax,word [bp-2]
		mov	word [bx+20],ax
		mov	bx,word [bp+6]
		mov	ax,word [bp+4]
		mov	word [bx+24],ax
		jmp	..@j9242
..@j9205:
		mov	bx,word [bp+6]
		mov	ax,word [bx+24]
		cmp	ax,word [bp+4]
		jg	..@j9243
		jmp	..@j9244
..@j9243:
		cmp	word [bp+4],0
		je	..@j9245
		jmp	..@j9246
..@j9245:
		mov	bx,word [bp+6]
		cmp	word [bx+22],0
		jg	..@j9247
		jmp	..@j9248
..@j9247:
		push	word [bp+6]
		mov	ax,0
		push	ax
		mov	ax,1
		push	ax
		call	CLASSES$_$TSTRINGLIST_$__$$_INTERNALCLEAR$SMALLINT$BOOLEAN
..@j9248:
		mov	bx,word [bp+6]
		push	word [bx+20]
		call	SYSTEM_$$_FREEMEM$POINTER$$WORD
		mov	bx,word [bp+6]
		mov	word [bx+20],0
		jmp	..@j9259
..@j9246:
		push	word [bp+6]
		push	word [bp+4]
		mov	ax,1
		push	ax
		call	CLASSES$_$TSTRINGLIST_$__$$_INTERNALCLEAR$SMALLINT$BOOLEAN
		lea	ax,[bp-2]
		push	ax
		mov	ax,word [bp+4]
		mov	cl,2
		shl	ax,cl
		push	ax
		call	SYSTEM_$$_GETMEM$POINTER$WORD
		mov	bx,word [bp+6]
		mov	ax,word [bx+20]
		push	ax
		mov	ax,word [bp-2]
		push	ax
		mov	ax,word [bp+4]
		mov	cl,2
		shl	ax,cl
		push	ax
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
		mov	bx,word [bp+6]
		push	word [bx+20]
		call	SYSTEM_$$_FREEMEM$POINTER$$WORD
		mov	bx,word [bp+6]
		mov	ax,word [bp-2]
		mov	word [bx+20],ax
..@j9259:
		mov	bx,word [bp+6]
		mov	ax,word [bp+4]
		mov	word [bx+24],ax
..@j9244:
..@j9242:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM_$$_FREEMEM$POINTER$$WORD
EXTERN	CLASSES$_$TSTRINGLIST_$__$$_INTERNALCLEAR$SMALLINT$BOOLEAN
EXTERN	SYSTEM_$$_FREEMEM$POINTER$WORD
EXTERN	SYSTEM_$$_FILLWORD$formal$SMALLINT$WORD
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
EXTERN	SYSTEM_$$_GETMEM$POINTER$WORD
EXTERN	CLASSES$_$TSTRINGS_$__$$_ERROR$ANSISTRING$SMALLINT
EXTERN	RESSTR_$RTLCONSTS_$$_SLISTCAPACITYERROR
