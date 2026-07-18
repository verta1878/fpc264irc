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
	GLOBAL CLASSES$_$TMEMORYSTREAM_$__$$_REALLOC$SMALLINT$$POINTER
CLASSES$_$TMEMORYSTREAM_$__$$_REALLOC$SMALLINT$$POINTER:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	bx,word [bp+4]
		cmp	word [bx],0
		jl	..@j1802
		jmp	..@j1803
..@j1802:
		mov	bx,word [bp+4]
		mov	word [bx],0
		jmp	..@j1806
..@j1803:
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		mov	ax,word [bx+8]
		cmp	ax,word [si]
		jl	..@j1809
		jmp	..@j1808
..@j1809:
		mov	bx,word [bp+6]
		mov	ax,5
		mul	word [bx+8]
		test	ax,ax
		jns	..@j1810
		add	ax,3
..@j1810:
		mov	cl,2
		sar	ax,cl
		mov	bx,word [bp+4]
		cmp	ax,word [bx]
		jg	..@j1807
		jmp	..@j1808
..@j1807:
		mov	bx,word [bp+6]
		mov	ax,5
		mul	word [bx+8]
		test	ax,ax
		jns	..@j1813
		add	ax,3
..@j1813:
		mov	cl,2
		sar	ax,cl
		mov	bx,word [bp+4]
		mov	word [bx],ax
..@j1808:
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		add	ax,4095
		and	ax,-4096
		mov	bx,word [bp+4]
		mov	word [bx],ax
..@j1806:
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		mov	ax,word [bx+8]
		cmp	ax,word [si]
		je	..@j1816
		jmp	..@j1817
..@j1816:
		mov	bx,word [bp+6]
		mov	ax,word [bx+2]
		mov	word [bp-2],ax
		jmp	..@j1820
..@j1817:
		mov	bx,word [bp+6]
		lea	ax,[bx+2]
		push	ax
		mov	bx,word [bp+4]
		push	word [bx]
		call	SYSTEM_$$_REALLOCMEM$POINTER$WORD$$POINTER
		mov	word [bp-2],ax
		cmp	word [bp-2],0
		je	..@j1829
		jmp	..@j1828
..@j1829:
		mov	bx,word [bp+4]
		cmp	word [bx],0
		jg	..@j1827
		jmp	..@j1828
..@j1827:
..@j1830:
		mov	ax,word VMT_$CLASSES_$$_ESTREAMERROR
		push	ax
		mov	ax,1
		push	ax
		push	word [RESSTR_$RTLCONSTS_$$_SMEMORYSTREAMERROR+2]
		call	SYSUTILS$_$EXCEPTION_$__$$_CREATE$ANSISTRING$$EXCEPTION
		push	ax
		mov	ax,word ..@j1830
		push	ax
		push	bp
		call	fpc_raiseexception
..@j1828:
..@j1820:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	fpc_raiseexception
EXTERN	SYSUTILS$_$EXCEPTION_$__$$_CREATE$ANSISTRING$$EXCEPTION
EXTERN	RESSTR_$RTLCONSTS_$$_SMEMORYSTREAMERROR
EXTERN	VMT_$CLASSES_$$_ESTREAMERROR
EXTERN	SYSTEM_$$_REALLOCMEM$POINTER$WORD$$POINTER
