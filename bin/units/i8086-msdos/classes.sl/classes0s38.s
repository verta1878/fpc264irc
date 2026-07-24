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
	GLOBAL CLASSES$_$TSTREAM_$__$$_SETSIZE$INT64
CLASSES$_$TSTREAM_$__$$_SETSIZE$INT64:
		push	bp
		mov	bp,sp
		mov	dx,word [bp+4]
		mov	cx,word [bp+6]
		mov	bx,word [bp+8]
		mov	ax,word [bp+10]
		cmp	ax,-1
		jl	..@j744
		jg	..@j746
		cmp	bx,-1
		jb	..@j744
		ja	..@j746
		cmp	cx,-32768
		jb	..@j744
		ja	..@j746
		cmp	dx,0
		jb	..@j744
		jmp	..@j746
..@j746:
		mov	ax,word [bp+4]
		mov	bx,word [bp+6]
		mov	dx,word [bp+8]
		mov	cx,word [bp+10]
		cmp	cx,0
		jg	..@j744
		jl	..@j745
		cmp	dx,0
		ja	..@j744
		jb	..@j745
		cmp	bx,32767
		ja	..@j744
		jb	..@j745
		cmp	ax,-1
		ja	..@j744
		jmp	..@j745
..@j744:
..@j747:
		mov	ax,word VMT_$SYSUTILS_$$_ERANGEERROR
		push	ax
		mov	ax,1
		push	ax
		push	word [RESSTR_$RTLCONSTS_$$_SRANGEERROR+2]
		call	SYSUTILS$_$EXCEPTION_$__$$_CREATE$ANSISTRING$$EXCEPTION
		push	ax
		mov	ax,word ..@j747
		push	ax
		push	bp
		call	fpc_raiseexception
..@j745:
		push	word [bp+12]
		push	word [bp+6]
		push	word [bp+4]
		mov	bx,word [bp+12]
		mov	bx,word [bx]
		mov	ax,word [bx+60]
		call	ax
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	fpc_raiseexception
EXTERN	SYSUTILS$_$EXCEPTION_$__$$_CREATE$ANSISTRING$$EXCEPTION
EXTERN	RESSTR_$RTLCONSTS_$$_SRANGEERROR
EXTERN	VMT_$SYSUTILS_$$_ERANGEERROR
