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
	GLOBAL TYPINFO_$$_GETENUMVALUE$PTYPEINFO$ANSISTRING$$SMALLINT
TYPINFO_$$_GETENUMVALUE$PTYPEINFO$ANSISTRING$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,266
		mov	bx,word [bp+4]
		test	bx,bx
		je	..@j52
		mov	bx,word [bx-2]
..@j52:
		test	bx,bx
		je	..@j50
		jmp	..@j51
..@j50:
		mov	word [bp-2],-1
		jmp	..@j48
..@j51:
		lea	ax,[bp-266]
		push	ax
		mov	ax,255
		push	ax
		push	word [bp+4]
		call	fpc_ansistr_to_shortstr
		push	word [bp+6]
		call	TYPINFO_$$_GETTYPEDATA$PTYPEINFO$$PTYPEDATA
		mov	word [bp-6],ax
		mov	word [bp-10],0
		mov	word [bp-8],0
		mov	word [bp-2],-1
		mov	bx,word [bp+6]
		cmp	byte [bx],18
		je	..@j69
		jmp	..@j70
..@j69:
		push	word [TC_$TYPINFO_$$_BOOLEANIDENTS]
		push	word [bp+4]
		call	SYSUTILS_$$_COMPARETEXT$ANSISTRING$ANSISTRING$$SMALLINT
		test	ax,ax
		je	..@j71
		jmp	..@j72
..@j71:
		mov	word [bp-2],0
		jmp	..@j79
..@j72:
		push	word [TC_$TYPINFO_$$_BOOLEANIDENTS+2]
		push	word [bp+4]
		call	SYSUTILS_$$_COMPARETEXT$ANSISTRING$ANSISTRING$$SMALLINT
		test	ax,ax
		je	..@j80
		jmp	..@j81
..@j80:
		mov	word [bp-2],1
..@j81:
..@j79:
		jmp	..@j88
..@j70:
		mov	bx,word [bp-6]
		lea	ax,[bx+11]
		mov	word [bp-4],ax
		jmp	..@j92
	ALIGN 2
..@j91:
		mov	ax,word [bp-4]
		push	ax
		lea	ax,[bp-266]
		push	ax
		call	SYSTEM_$$_SHORTCOMPARETEXT$SHORTSTRING$SHORTSTRING$$SMALLINT
		test	ax,ax
		je	..@j94
		jmp	..@j95
..@j94:
		mov	bx,word [bp-6]
		mov	cx,word [bx+1]
		mov	bx,word [bx+3]
		mov	ax,word [bp-10]
		mov	dx,word [bp-8]
		add	ax,cx
		adc	dx,bx
		mov	word [bp-2],ax
..@j95:
		mov	bx,word [bp-4]
		mov	dl,byte [bx]
		mov	dh,0
		mov	ax,word [bp-4]
		add	ax,dx
		inc	ax
		mov	word [bp-4],ax
		add	word [bp-10],1
		adc	word [bp-8],0
..@j92:
		cmp	word [bp-2],-1
		je	..@j104
		jmp	..@j93
..@j104:
		mov	bx,word [bp-4]
		cmp	byte [bx],0
		jne	..@j91
		jmp	..@j93
..@j93:
..@j88:
..@j48:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM_$$_SHORTCOMPARETEXT$SHORTSTRING$SHORTSTRING$$SMALLINT
EXTERN	SYSUTILS_$$_COMPARETEXT$ANSISTRING$ANSISTRING$$SMALLINT
EXTERN	TC_$TYPINFO_$$_BOOLEANIDENTS
EXTERN	TYPINFO_$$_GETTYPEDATA$PTYPEINFO$$PTYPEDATA
EXTERN	fpc_ansistr_to_shortstr
