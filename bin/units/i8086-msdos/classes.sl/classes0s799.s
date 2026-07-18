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
	GLOBAL CLASSES$_$TBINARYOBJECTREADER_$__$$_READ$formal$LONGINT
CLASSES$_$TBINARYOBJECTREADER_$__$$_READ$formal$LONGINT:
		push	bp
		mov	bp,sp
		sub	sp,6
		mov	ax,word [bp+8]
		mov	word [bp-6],ax
		jmp	..@j18297
	ALIGN 2
..@j18296:
		mov	bx,word [bp+10]
		mov	si,word [bp+10]
		mov	ax,word [bx+8]
		cmp	ax,word [si+10]
		jge	..@j18299
		jmp	..@j18300
..@j18299:
		mov	bx,word [bp+10]
		push	word [bx+2]
		mov	bx,word [bp+10]
		mov	ax,word [bx+4]
		push	ax
		mov	bx,word [bp+10]
		mov	ax,word [bx+6]
		cwd
		push	dx
		push	ax
		mov	bx,word [bp+10]
		mov	bx,word [bx+2]
		mov	bx,word [bx]
		mov	ax,word [bx+64]
		call	ax
		mov	bx,word [bp+10]
		mov	word [bx+10],ax
		mov	bx,word [bp+10]
		cmp	word [bx+10],0
		je	..@j18309
		jmp	..@j18310
..@j18309:
..@j18311:
		mov	ax,word VMT_$CLASSES_$$_EREADERROR
		push	ax
		mov	ax,1
		push	ax
		push	word [RESSTR_$RTLCONSTS_$$_SREADERROR+2]
		call	SYSUTILS$_$EXCEPTION_$__$$_CREATE$ANSISTRING$$EXCEPTION
		push	ax
		mov	ax,word ..@j18311
		push	ax
		push	bp
		call	fpc_raiseexception
..@j18310:
		mov	bx,word [bp+10]
		mov	word [bx+8],0
..@j18300:
		mov	bx,word [bp+10]
		mov	si,word [bp+10]
		mov	ax,word [bx+10]
		mov	dx,word [si+8]
		sub	ax,dx
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-4],cx
		mov	word [bp-2],ax
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		cmp	dx,word [bp+6]
		jg	..@j18328
		jl	..@j18329
		cmp	ax,word [bp+4]
		ja	..@j18328
		jmp	..@j18329
		jmp	..@j18329
..@j18328:
		mov	ax,word [bp+4]
		mov	word [bp-4],ax
		mov	ax,word [bp+6]
		mov	word [bp-2],ax
..@j18329:
		mov	bx,word [bp+10]
		mov	bx,word [bx+4]
		mov	si,word [bp+10]
		mov	si,word [si+8]
		lea	ax,[bx+si]
		push	ax
		mov	ax,word [bp-6]
		push	ax
		push	word [bp-4]
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
		mov	bx,word [bp+10]
		mov	ax,word [bp-4]
		add	word [bx+8],ax
		mov	ax,word [bp-4]
		add	word [bp-6],ax
		mov	dx,word [bp-4]
		mov	ax,word [bp-2]
		sub	word [bp+4],dx
		sbb	word [bp+6],ax
..@j18297:
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		cmp	dx,0
		jg	..@j18296
		jl	..@j18298
		cmp	ax,0
		ja	..@j18296
		jmp	..@j18298
..@j18298:
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
EXTERN	fpc_raiseexception
EXTERN	SYSUTILS$_$EXCEPTION_$__$$_CREATE$ANSISTRING$$EXCEPTION
EXTERN	RESSTR_$RTLCONSTS_$$_SREADERROR
EXTERN	VMT_$CLASSES_$$_EREADERROR
