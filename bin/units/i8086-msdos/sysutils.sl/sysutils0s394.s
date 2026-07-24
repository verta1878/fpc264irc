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
	GLOBAL SYSUTILS$_$TMULTIREADEXCLUSIVEWRITESYNCHRONIZER_$__$$_BEGINWRITE$$BOOLEAN
SYSUTILS$_$TMULTIREADEXCLUSIVEWRITESYNCHRONIZER_$__$$_BEGINWRITE$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	bx,word [bp+4]
		lea	ax,[bx+10]
		push	ax
		call	SYSTEM_$$_ENTERCRITICALSECTION$TRTLCRITICALSECTION
		mov	bx,word [bp+4]
		push	word [bx+11]
		call	SYSTEM_$$_RTLEVENTRESETEVENT$PRTLEVENT
		mov	bx,word [bp+4]
		push	word [bx+8]
		call	SYSTEM_$$_BASICEVENTRESETEVENT$POINTER
		mov	bx,word [bp+4]
		lea	ax,[bx+17]
		push	ax
		call	SYSTEM_$$_INTERLOCKEDINCREMENT$LONGINT$$LONGINT
		jmp	..@j13085
	ALIGN 2
..@j13084:
		mov	bx,word [bp+4]
		push	word [bx+11]
		call	SYSTEM_$$_RTLEVENTWAITFOR$PRTLEVENT
..@j13085:
		mov	bx,word [bp+4]
		mov	dx,word [bx+13]
		mov	ax,word [bx+15]
		cmp	ax,0
		jne	..@j13084
		cmp	dx,0
		jne	..@j13084
		jmp	..@j13086
..@j13086:
		mov	byte [bp-1],1
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	SYSTEM_$$_RTLEVENTWAITFOR$PRTLEVENT
EXTERN	SYSTEM_$$_INTERLOCKEDINCREMENT$LONGINT$$LONGINT
EXTERN	SYSTEM_$$_BASICEVENTRESETEVENT$POINTER
EXTERN	SYSTEM_$$_RTLEVENTRESETEVENT$PRTLEVENT
EXTERN	SYSTEM_$$_ENTERCRITICALSECTION$TRTLCRITICALSECTION
