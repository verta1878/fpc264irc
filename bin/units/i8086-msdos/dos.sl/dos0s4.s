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
	GLOBAL DOS_$$_DOSEXITCODE$$WORD
DOS_$$_DOSEXITCODE$$WORD:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j39
		push	word [U_$DOS_$$_LASTDOSEXITCODE+2]
		push	word [U_$DOS_$$_LASTDOSEXITCODE]
		call	ax
		mov	bx,ax
		jmp	..@j40
..@j39:
		mov	bx,word U_$DOS_$$_LASTDOSEXITCODE+2
..@j40:
		mov	dx,word [bx]
		mov	ax,word [bx+2]
		cmp	ax,0
		jg	..@j37
		jl	..@j38
		cmp	dx,-1
		ja	..@j37
		jmp	..@j38
..@j37:
		mov	word [bp-2],-1
		jmp	..@j43
..@j38:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j46
		push	word [U_$DOS_$$_LASTDOSEXITCODE+2]
		push	word [U_$DOS_$$_LASTDOSEXITCODE]
		call	ax
		mov	bx,ax
		jmp	..@j47
..@j46:
		mov	bx,word U_$DOS_$$_LASTDOSEXITCODE+2
..@j47:
		mov	ax,word [bx]
		mov	dx,word [bx+2]
		mov	dx,0
		mov	word [bp-2],ax
..@j43:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret
EXTERN	U_$DOS_$$_LASTDOSEXITCODE
EXTERN	FPC_THREADVAR_RELOCATE
