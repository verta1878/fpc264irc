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
	GLOBAL CLASSES$_$TSTREAM_$__$$_SEEK$INT64$TSEEKORIGIN$$INT64
CLASSES$_$TSTREAM_$__$$_SEEK$INT64$TSEEKORIGIN$$INT64:
		push	bp
		mov	bp,sp
		sub	sp,8
		mov	dx,word [bp+8]
		mov	cx,word [bp+10]
		mov	bx,word [bp+12]
		mov	ax,word [bp+14]
		cmp	ax,-1
		jl	..@j941
		jg	..@j943
		cmp	bx,-1
		jb	..@j941
		ja	..@j943
		cmp	cx,-32768
		jb	..@j941
		ja	..@j943
		cmp	dx,0
		jb	..@j941
		jmp	..@j943
..@j943:
		mov	ax,word [bp+8]
		mov	bx,word [bp+10]
		mov	dx,word [bp+12]
		mov	cx,word [bp+14]
		cmp	cx,0
		jg	..@j941
		jl	..@j942
		cmp	dx,0
		ja	..@j941
		jb	..@j942
		cmp	bx,32767
		ja	..@j941
		jb	..@j942
		cmp	ax,-1
		ja	..@j941
		jmp	..@j942
..@j941:
..@j944:
		mov	ax,word VMT_$SYSUTILS_$$_ERANGEERROR
		push	ax
		mov	ax,1
		push	ax
		push	word [RESSTR_$RTLCONSTS_$$_SRANGEERROR+2]
		call	SYSUTILS$_$EXCEPTION_$__$$_CREATE$ANSISTRING$$EXCEPTION
		push	ax
		mov	ax,word ..@j944
		push	ax
		push	bp
		call	fpc_raiseexception
..@j942:
		push	word [bp+16]
		push	word [bp+10]
		push	word [bp+8]
		push	word [bp+4]
		mov	bx,word [bp+16]
		mov	bx,word [bx]
		mov	ax,word [bx+68]
		call	ax
		mov	bx,ax
		mov	si,dx
		mov	bx,ax
		mov	si,dx
		mov	ax,bx
		mov	dx,si
		mov	cl,15
		sar	dx,cl
		mov	ax,dx
		mov	word [bp-8],bx
		mov	word [bp-6],si
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		mov	bx,word [bp-4]
		mov	ax,word [bp-2]
		mov	dx,word [bp-8]
		mov	cx,word [bp-6]
		mov	sp,bp
		pop	bp
		ret	14
EXTERN	fpc_raiseexception
EXTERN	SYSUTILS$_$EXCEPTION_$__$$_CREATE$ANSISTRING$$EXCEPTION
EXTERN	RESSTR_$RTLCONSTS_$$_SRANGEERROR
EXTERN	VMT_$SYSUTILS_$$_ERANGEERROR
