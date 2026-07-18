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
	GLOBAL MD5_$$_MDFILE$ANSISTRING$TMDVERSION$WORD$$TMDDIGEST
MD5_$$_MDFILE$ANSISTRING$TMDVERSION$WORD$$TMDDIGEST:
		push	bp
		mov	bp,sp
		sub	sp,690
		lea	ax,[bp-682]
		push	ax
		push	word [bp+8]
		push	word [bp+6]
		call	MD5_$$_MDINIT$TMDCONTEXT$TMDVERSION
		lea	ax,[bp-568]
		push	ax
		push	word [bp+10]
		call	SYSTEM_$$_ASSIGN$file$RAWBYTESTRING
		mov	ax,0
		mov	dl,byte [TC_$SYSTEM_$$_FILEMODE]
		mov	dh,0
		mov	word [bp-690],dx
		mov	word [bp-688],ax
		mov	byte [TC_$SYSTEM_$$_FILEMODE],0
		lea	ax,[bp-568]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,1
		push	ax
		call	SYSTEM_$$_RESET$file$LONGINT
		call	SYSTEM_$$_IORESULT$$WORD
		test	ax,ax
		je	..@j2115
		jmp	..@j2116
..@j2115:
		lea	ax,[bp-570]
		push	ax
		push	word [bp+4]
		call	SYSTEM_$$_GETMEM$POINTER$WORD
	ALIGN 2
..@j2121:
		lea	ax,[bp-568]
		push	ax
		mov	ax,word [bp-570]
		push	ax
		mov	dx,word [bp+4]
		mov	ax,0
		push	ax
		push	dx
		lea	ax,[bp-686]
		push	ax
		call	SYSTEM_$$_BLOCKREAD$file$formal$LONGWORD$LONGWORD
		call	FPC_IOCHECK
		mov	dx,word [bp-686]
		mov	ax,word [bp-684]
		cmp	ax,0
		ja	..@j2132
		jb	..@j2133
		cmp	dx,0
		ja	..@j2132
		jmp	..@j2133
..@j2132:
		lea	ax,[bp-682]
		push	ax
		mov	ax,word [bp-570]
		push	ax
		push	word [bp-686]
		call	MD5_$$_MDUPDATE$TMDCONTEXT$formal$WORD
..@j2133:
		mov	dx,word [bp+4]
		mov	ax,0
		cmp	ax,word [bp-684]
		ja	..@j2123
		jb	..@j2121
		cmp	dx,word [bp-686]
		ja	..@j2123
		jmp	..@j2121
		jmp	..@j2121
..@j2123:
		push	word [bp-570]
		push	word [bp+4]
		call	SYSTEM_$$_FREEMEM$POINTER$WORD
		lea	ax,[bp-568]
		push	ax
		call	SYSTEM_$$_CLOSE$file
		call	FPC_IOCHECK
..@j2116:
		lea	ax,[bp-682]
		push	ax
		mov	ax,word [bp+12]
		push	ax
		call	MD5_$$_MDFINAL$TMDCONTEXT$TMDDIGEST
		mov	al,byte [bp-690]
		mov	byte [TC_$SYSTEM_$$_FILEMODE],al
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	MD5_$$_MDFINAL$TMDCONTEXT$TMDDIGEST
EXTERN	SYSTEM_$$_CLOSE$file
EXTERN	SYSTEM_$$_FREEMEM$POINTER$WORD
EXTERN	MD5_$$_MDUPDATE$TMDCONTEXT$formal$WORD
EXTERN	FPC_IOCHECK
EXTERN	SYSTEM_$$_BLOCKREAD$file$formal$LONGWORD$LONGWORD
EXTERN	SYSTEM_$$_GETMEM$POINTER$WORD
EXTERN	SYSTEM_$$_IORESULT$$WORD
EXTERN	SYSTEM_$$_RESET$file$LONGINT
EXTERN	TC_$SYSTEM_$$_FILEMODE
EXTERN	SYSTEM_$$_ASSIGN$file$RAWBYTESTRING
EXTERN	MD5_$$_MDINIT$TMDCONTEXT$TMDVERSION
