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
	GLOBAL OBJPAS_$$_PARAMSTR$SMALLINT$$ANSISTRING
OBJPAS_$$_PARAMSTR$SMALLINT$$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,256
		cmp	word [bp+4],0
		je	..@j85
		jmp	..@j86
..@j85:
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-256]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		call	SYSTEM_$$_PARAMSTR$LONGINT$$SHORTSTRING
		lea	ax,[bp-256]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_shortstr_to_ansistr
		jmp	..@j97
..@j86:
		cmp	word [bp+4],0
		jg	..@j100
		jmp	..@j99
..@j100:
		mov	ax,word [bp+4]
		cwd
		cmp	dx,word [U_$SYSTEM_$$_ARGC+2]
		jl	..@j98
		jg	..@j99
		cmp	ax,word [U_$SYSTEM_$$_ARGC]
		jb	..@j98
		jmp	..@j99
		jmp	..@j99
..@j98:
		mov	ax,word [bp+6]
		push	ax
		mov	bx,word [U_$SYSTEM_$$_ARGV]
		mov	ax,word [bp+4]
		mov	si,ax
		shl	si,1
		push	word [bx+si]
		mov	ax,0
		push	ax
		call	fpc_pchar_to_ansistr
		jmp	..@j107
..@j99:
		mov	ax,word [bp+6]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_assign
..@j107:
..@j97:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	fpc_ansistr_assign
EXTERN	fpc_pchar_to_ansistr
EXTERN	U_$SYSTEM_$$_ARGV
EXTERN	U_$SYSTEM_$$_ARGC
EXTERN	fpc_shortstr_to_ansistr
EXTERN	SYSTEM_$$_PARAMSTR$LONGINT$$SHORTSTRING
