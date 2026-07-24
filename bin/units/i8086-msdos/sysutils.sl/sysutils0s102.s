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
	GLOBAL SYSUTILS_$$_GENERICANSISTRLICOMP$PCHAR$PCHAR$WORD$$SMALLINT
SYSUTILS_$$_GENERICANSISTRLICOMP$PCHAR$PCHAR$WORD$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,6
		mov	word [bp-2],0
		cmp	word [bp+4],0
		je	..@j3126
		jmp	..@j3127
..@j3126:
		jmp	..@j3122
..@j3127:
		cmp	word [bp+8],0
		je	..@j3128
		jmp	..@j3129
..@j3128:
		cmp	word [bp+6],0
		je	..@j3130
		jmp	..@j3131
..@j3130:
		jmp	..@j3122
..@j3131:
		mov	word [bp-2],-1
		jmp	..@j3122
..@j3129:
		cmp	word [bp+6],0
		je	..@j3134
		jmp	..@j3135
..@j3134:
		mov	word [bp-2],1
		jmp	..@j3122
..@j3135:
		mov	word [bp-6],0
		mov	word [bp-4],0
	ALIGN 2
..@j3140:
		mov	bx,word [bp+8]
		mov	bl,byte [bx]
		mov	bh,0
		mov	al,byte [U_$SYSUTILS_$$_LOWERCASETABLE+bx]
		mov	ah,0
		mov	bx,word [bp+6]
		mov	bl,byte [bx]
		mov	bh,0
		mov	dl,byte [U_$SYSUTILS_$$_LOWERCASETABLE+bx]
		mov	dh,0
		sub	ax,dx
		mov	word [bp-2],ax
		inc	word [bp+8]
		inc	word [bp+6]
		add	word [bp-6],1
		adc	word [bp-4],0
		cmp	word [bp-2],0
		jne	..@j3142
		jmp	..@j3145
..@j3145:
		mov	ax,word [bp+4]
		mov	dx,0
		cmp	dx,word [bp-4]
		jne	..@j3140
		cmp	ax,word [bp-6]
		jne	..@j3140
		jmp	..@j3142
		jmp	..@j3140
..@j3142:
..@j3122:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	U_$SYSUTILS_$$_LOWERCASETABLE
