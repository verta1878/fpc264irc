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
	GLOBAL DATEUTILS_$$_PREVIOUSDAYOFWEEK$WORD$$WORD
DATEUTILS_$$_PREVIOUSDAYOFWEEK$WORD$$WORD:
		push	bp
		mov	bp,sp
		sub	sp,8
		mov	ax,word [bp+4]
		dec	ax
		cmp	ax,7
		jb	..@j239
..@j239:
		jnc	..@j237
		jmp	..@j238
..@j237:
..@j240:
		mov	ax,word VMT_$SYSUTILS_$$_ECONVERTERROR
		push	ax
		mov	ax,1
		push	ax
		push	word [RESSTR_$SYSCONST_$$_SERRINVALIDDAYOFWEEK+2]
		mov	ax,word [bp+4]
		mov	dx,0
		mov	word [bp-6],ax
		mov	word [bp-4],dx
		mov	word [bp-8],0
		lea	ax,[bp-8]
		push	ax
		mov	ax,0
		push	ax
		call	SYSUTILS$_$EXCEPTION_$__$$_CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
		push	ax
		mov	ax,word ..@j240
		push	ax
		push	bp
		call	fpc_raiseexception
..@j238:
		mov	bx,word [bp+4]
		shl	bx,1
		mov	ax,word [TC_$DATEUTILS_$$_DOWMAP+bx-2]
		mov	word [bp-2],ax
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	TC_$DATEUTILS_$$_DOWMAP
EXTERN	fpc_raiseexception
EXTERN	SYSUTILS$_$EXCEPTION_$__$$_CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
EXTERN	RESSTR_$SYSCONST_$$_SERRINVALIDDAYOFWEEK
EXTERN	VMT_$SYSUTILS_$$_ECONVERTERROR
