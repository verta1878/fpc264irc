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
	GLOBAL SYSTEM_$$_FPC_TRUELY_ANSISTR_UNIQUE$POINTER$$POINTER
SYSTEM_$$_FPC_TRUELY_ANSISTR_UNIQUE$POINTER$$POINTER:
		push	bp
		mov	bp,sp
		sub	sp,6
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	ax,word [bx-2]
		mov	word [bp-6],ax
		push	word [bp-6]
		call	SYSTEM_$$_NEWANSISTRING$SMALLINT$$POINTER
		mov	word [bp-4],ax
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		push	ax
		mov	ax,word [bp-4]
		push	ax
		mov	ax,word [bp-6]
		inc	ax
		push	ax
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
		mov	bx,word [bp-4]
		mov	ax,word [bp-6]
		mov	word [bx-2],ax
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	si,word [bp-4]
		mov	ax,word [bx-8]
		mov	word [si-8],ax
		mov	ax,word [bp+4]
		push	ax
		call	FPC_ANSISTR_DECR_REF
		mov	bx,word [bp+4]
		mov	ax,word [bp-4]
		mov	word [bx],ax
		mov	ax,word [bp-4]
		mov	word [bp-2],ax
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	FPC_ANSISTR_DECR_REF
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
EXTERN	SYSTEM_$$_NEWANSISTRING$SMALLINT$$POINTER
