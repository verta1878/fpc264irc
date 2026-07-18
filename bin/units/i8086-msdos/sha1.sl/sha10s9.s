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
	GLOBAL SHA1_$$_SHA1FILE$ANSISTRING$WORD$$TSHA1DIGEST
SHA1_$$_SHA1FILE$ANSISTRING$WORD$$TSHA1DIGEST:
		push	bp
		mov	bp,sp
		sub	sp,672
		lea	ax,[bp-664]
		push	ax
		call	SHA1_$$_SHA1INIT$TSHA1CONTEXT
		lea	ax,[bp-568]
		push	ax
		push	word [bp+6]
		call	SYSTEM_$$_ASSIGN$file$RAWBYTESTRING
		mov	ax,0
		mov	dl,byte [TC_$SYSTEM_$$_FILEMODE]
		mov	dh,0
		mov	word [bp-672],dx
		mov	word [bp-670],ax
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
		je	..@j297
		jmp	..@j298
..@j297:
		lea	ax,[bp-570]
		push	ax
		push	word [bp+4]
		call	SYSTEM_$$_GETMEM$POINTER$WORD
	ALIGN 2
..@j303:
		lea	ax,[bp-568]
		push	ax
		mov	ax,word [bp-570]
		push	ax
		mov	dx,word [bp+4]
		mov	ax,0
		push	ax
		push	dx
		lea	ax,[bp-668]
		push	ax
		call	SYSTEM_$$_BLOCKREAD$file$formal$LONGWORD$LONGWORD
		call	FPC_IOCHECK
		mov	dx,word [bp-668]
		mov	ax,word [bp-666]
		cmp	ax,0
		ja	..@j314
		jb	..@j315
		cmp	dx,0
		ja	..@j314
		jmp	..@j315
..@j314:
		lea	ax,[bp-664]
		push	ax
		mov	ax,word [bp-570]
		push	ax
		push	word [bp-668]
		call	SHA1_$$_SHA1UPDATE$TSHA1CONTEXT$formal$WORD
..@j315:
		mov	dx,word [bp+4]
		mov	ax,0
		cmp	ax,word [bp-666]
		ja	..@j305
		jb	..@j303
		cmp	dx,word [bp-668]
		ja	..@j305
		jmp	..@j303
		jmp	..@j303
..@j305:
		push	word [bp-570]
		push	word [bp+4]
		call	SYSTEM_$$_FREEMEM$POINTER$WORD
		lea	ax,[bp-568]
		push	ax
		call	SYSTEM_$$_CLOSE$file
		call	FPC_IOCHECK
..@j298:
		lea	ax,[bp-664]
		push	ax
		mov	ax,word [bp+8]
		push	ax
		call	SHA1_$$_SHA1FINAL$TSHA1CONTEXT$TSHA1DIGEST
		mov	al,byte [bp-672]
		mov	byte [TC_$SYSTEM_$$_FILEMODE],al
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	SHA1_$$_SHA1FINAL$TSHA1CONTEXT$TSHA1DIGEST
EXTERN	SYSTEM_$$_CLOSE$file
EXTERN	SYSTEM_$$_FREEMEM$POINTER$WORD
EXTERN	SHA1_$$_SHA1UPDATE$TSHA1CONTEXT$formal$WORD
EXTERN	FPC_IOCHECK
EXTERN	SYSTEM_$$_BLOCKREAD$file$formal$LONGWORD$LONGWORD
EXTERN	SYSTEM_$$_GETMEM$POINTER$WORD
EXTERN	SYSTEM_$$_IORESULT$$WORD
EXTERN	SYSTEM_$$_RESET$file$LONGINT
EXTERN	TC_$SYSTEM_$$_FILEMODE
EXTERN	SYSTEM_$$_ASSIGN$file$RAWBYTESTRING
EXTERN	SHA1_$$_SHA1INIT$TSHA1CONTEXT
