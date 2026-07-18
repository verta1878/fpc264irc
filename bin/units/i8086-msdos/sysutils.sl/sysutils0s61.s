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
	GLOBAL SYSUTILS_$$_FILESEARCH$UNICODESTRING$UNICODESTRING$TFILESEARCHOPTIONS$$UNICODESTRING
SYSUTILS_$$_FILESEARCH$UNICODESTRING$UNICODESTRING$TFILESEARCHOPTIONS$$UNICODESTRING:
		push	bp
		mov	bp,sp
		sub	sp,20
		mov	word [bp-20],0
		mov	word [bp-18],0
		mov	word [bp-16],0
		mov	ax,1
		push	ax
		lea	ax,[bp-12]
		push	ax
		lea	ax,[bp-6]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j2306
		mov	ax,word [bp+10]
		push	ax
		lea	ax,[bp-16]
		push	ax
		lea	ax,[bp-18]
		push	ax
		push	word [bp+8]
		call	SYSTEM_$$_TOSINGLEBYTEFILESYSTEMENCODEDFILENAME$UNICODESTRING$$RAWBYTESTRING
		push	word [bp-18]
		lea	ax,[bp-20]
		push	ax
		push	word [bp+6]
		call	SYSTEM_$$_TOSINGLEBYTEFILESYSTEMENCODEDFILENAME$UNICODESTRING$$RAWBYTESTRING
		push	word [bp-20]
		mov	al,byte [bp+4]
		mov	ah,0
		push	ax
		call	SYSUTILS_$$_FILESEARCH$RAWBYTESTRING$RAWBYTESTRING$TFILESEARCHOPTIONS$$RAWBYTESTRING
		push	word [bp-16]
		call	fpc_ansistr_to_unicodestr
..@j2306:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-20]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-18]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-16]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j2307
		call	FPC_RERAISE
..@j2307:
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	fpc_ansistr_to_unicodestr
EXTERN	SYSUTILS_$$_FILESEARCH$RAWBYTESTRING$RAWBYTESTRING$TFILESEARCHOPTIONS$$RAWBYTESTRING
EXTERN	SYSTEM_$$_TOSINGLEBYTEFILESYSTEMENCODEDFILENAME$UNICODESTRING$$RAWBYTESTRING
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
