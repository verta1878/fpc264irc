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
	GLOBAL SYSUTILS_$$_FLOATTOTEXT$crc274C3314
SYSUTILS_$$_FLOATTOTEXT$crc274C3314:
		push	bp
		mov	bp,sp
		sub	sp,62
		mov	word [bp-62],0
		mov	ax,1
		push	ax
		lea	ax,[bp-58]
		push	ax
		lea	ax,[bp-52]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j6900
		lea	ax,[bp-45]
		push	ax
		mov	ax,40
		push	ax
		lea	ax,[bp-62]
		push	ax
		push	word [bp+22]
		push	word [bp+20]
		push	word [bp+18]
		push	word [bp+16]
		push	word [bp+14]
		push	word [bp+12]
		push	word [bp+10]
		push	word [bp+8]
		push	word [bp+6]
		mov	ax,word [bp+4]
		push	ax
		call	SYSUTILS_$$_FLOATTOSTRF$crcE00706A7
		push	word [bp-62]
		call	fpc_ansistr_to_shortstr
		mov	ax,0
		mov	dl,byte [bp-45]
		mov	dh,0
		mov	word [bp-4],dx
		mov	word [bp-2],ax
		lea	ax,[bp-44]
		push	ax
		mov	ax,word [bp+24]
		push	ax
		push	word [bp-4]
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
..@j6900:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-62]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j6901
		call	FPC_RERAISE
..@j6901:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	22
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
EXTERN	fpc_ansistr_to_shortstr
EXTERN	SYSUTILS_$$_FLOATTOSTRF$crcE00706A7
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
