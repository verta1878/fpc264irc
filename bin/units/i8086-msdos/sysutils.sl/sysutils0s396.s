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
	GLOBAL SYSUTILS$_$TMULTIREADEXCLUSIVEWRITESYNCHRONIZER_$__$$_BEGINREAD
SYSUTILS$_$TMULTIREADEXCLUSIVEWRITESYNCHRONIZER_$__$$_BEGINREAD:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+4]
		lea	ax,[bx+13]
		push	ax
		call	FPC_INTERLOCKEDINCREMENT
		jmp	..@j13109
	ALIGN 2
..@j13108:
		mov	bx,word [bp+4]
		lea	ax,[bx+13]
		push	ax
		call	FPC_INTERLOCKEDDECREMENT
		cmp	dx,0
		jne	..@j13113
		cmp	ax,0
		jne	..@j13113
		jmp	..@j13112
..@j13112:
		mov	bx,word [bp+4]
		push	word [bx+11]
		call	SYSTEM_$$_RTLEVENTSETEVENT$PRTLEVENT
..@j13113:
		mov	ax,-1
		push	ax
		mov	ax,-1
		push	ax
		mov	bx,word [bp+4]
		push	word [bx+8]
		call	SYSTEM_$$_BASICEVENTWAITFOR$LONGWORD$POINTER$$LONGINT
		sub	ax,2
		cmp	ax,2
		jb	..@j13124
..@j13124:
		jc	..@j13118
		jmp	..@j13119
..@j13118:
..@j13125:
		mov	ax,word VMT_$SYSUTILS_$$_EXCEPTION
		push	ax
		mov	ax,1
		push	ax
		mov	ax,word _$SYSUTILS$_Ld674
		push	ax
		call	SYSUTILS$_$EXCEPTION_$__$$_CREATE$ANSISTRING$$EXCEPTION
		push	ax
		mov	ax,word ..@j13125
		push	ax
		push	bp
		call	fpc_raiseexception
..@j13119:
		mov	bx,word [bp+4]
		lea	ax,[bx+13]
		push	ax
		call	FPC_INTERLOCKEDINCREMENT
..@j13109:
		mov	bx,word [bp+4]
		mov	dx,word [bx+17]
		mov	ax,word [bx+19]
		cmp	ax,0
		jne	..@j13108
		cmp	dx,0
		jne	..@j13108
		jmp	..@j13110
..@j13110:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	fpc_raiseexception
EXTERN	SYSUTILS$_$EXCEPTION_$__$$_CREATE$ANSISTRING$$EXCEPTION
EXTERN	_$SYSUTILS$_Ld674
EXTERN	VMT_$SYSUTILS_$$_EXCEPTION
EXTERN	SYSTEM_$$_BASICEVENTWAITFOR$LONGWORD$POINTER$$LONGINT
EXTERN	SYSTEM_$$_RTLEVENTSETEVENT$PRTLEVENT
EXTERN	FPC_INTERLOCKEDDECREMENT
EXTERN	FPC_INTERLOCKEDINCREMENT
