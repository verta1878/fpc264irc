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
	GLOBAL SYSTEM$_$TOBJECT_$__$$_CLEANUPINSTANCE
SYSTEM$_$TOBJECT_$__$$_CLEANUPINSTANCE:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		mov	word [bp-2],ax
		jmp	..@j14961
	ALIGN 2
..@j14960:
		mov	bx,word [bp-2]
		mov	ax,word [bx+16]
		mov	word [bp-4],ax
		cmp	word [bp-4],0
		jne	..@j14965
		jmp	..@j14966
..@j14965:
		push	word [bp+4]
		push	word [bp-4]
		mov	ax,word FPC_FINALIZE
		push	ax
		call	SYSTEM_$$_RECORDRTTI$POINTER$POINTER$TRTTIPROC
..@j14966:
		mov	bx,word [bp-2]
		mov	ax,word [bx+4]
		mov	word [bp-2],ax
..@j14961:
		cmp	word [bp-2],0
		jne	..@j14960
		jmp	..@j14962
..@j14962:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	SYSTEM_$$_RECORDRTTI$POINTER$POINTER$TRTTIPROC
EXTERN	FPC_FINALIZE
