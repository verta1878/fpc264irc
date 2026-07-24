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
	GLOBAL SYSUTILS_$$_FILESEEK$WORD$LONGINT$LONGINT$$LONGINT
SYSUTILS_$$_FILESEEK$WORD$LONGINT$LONGINT$$LONGINT:
		push	bp
		mov	bp,sp
		sub	sp,24
		mov	word [bp-24],16896
		mov	al,byte [bp+4]
		mov	byte [bp-24],al
		mov	ax,word [bp+8]
		mov	word [bp-18],ax
		mov	ax,word [bp+8]
		mov	dx,word [bp+10]
		mov	ax,dx
		mov	dx,0
		mov	word [bp-20],ax
		mov	ax,word [bp+12]
		mov	word [bp-22],ax
		mov	ax,33
		push	ax
		lea	ax,[bp-24]
		push	ax
		call	FPC_INTR
		mov	ax,word [bp-6]
		and	ax,1
		test	ax,ax
		jne	..@j15300
		jmp	..@j15301
..@j15300:
		mov	word [bp-4],-1
		mov	word [bp-2],-1
		jmp	..@j15304
..@j15301:
		mov	ax,word [bp-24]
		mov	word [bp-4],ax
		mov	ax,word [bp-18]
		mov	word [bp-2],ax
..@j15304:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	FPC_INTR
