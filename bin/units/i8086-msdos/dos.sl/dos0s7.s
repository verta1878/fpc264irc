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
	GLOBAL DOS_$$_FSPLIT$SHORTSTRING$SHORTSTRING$SHORTSTRING$SHORTSTRING
DOS_$$_FSPLIT$SHORTSTRING$SHORTSTRING$SHORTSTRING$SHORTSTRING:
		push	bp
		mov	bp,sp
		sub	sp,530
		mov	dx,word [bp+10]
		lea	ax,[bp-264]
		push	ax
		mov	ax,255
		push	ax
		push	dx
		call	fpc_shortstr_to_shortstr
		lea	ax,[bp-264]
		push	ax
		call	DOS_$$_DODIRSEPARATORS$SHORTSTRING
		mov	ax,0
		mov	dl,byte [bp-264]
		mov	dh,0
		mov	word [bp-4],dx
		mov	word [bp-2],ax
		jmp	..@j116
	ALIGN 2
..@j115:
		sub	word [bp-4],1
		sbb	word [bp-2],0
..@j116:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		cmp	dx,0
		jg	..@j119
		jl	..@j117
		cmp	ax,0
		ja	..@j119
		jmp	..@j117
..@j119:
		mov	al,byte [bp-4]
		mov	byte [bp-530],al
		mov	byte [bp-529],0
		mov	si,word [bp-530]
		cmp	byte [bp+si-264],92
		jne	..@j118
		jmp	..@j117
..@j118:
		mov	al,byte [bp-4]
		mov	byte [bp-522],al
		mov	byte [bp-521],0
		mov	si,word [bp-522]
		cmp	byte [bp+si-264],58
		jne	..@j115
		jmp	..@j117
..@j117:
		cmp	byte [U_$SYSTEM_$$_LFNSUPPORT],0
		jne	..@j120
		jmp	..@j121
..@j120:
		mov	ax,0
		mov	dl,byte [bp-264]
		mov	dh,0
		mov	word [bp-8],dx
		mov	word [bp-6],ax
		jmp	..@j125
	ALIGN 2
..@j124:
		sub	word [bp-8],1
		sbb	word [bp-6],0
..@j125:
		mov	ax,word [bp-8]
		mov	dx,word [bp-6]
		cmp	dx,word [bp-2]
		jg	..@j127
		jl	..@j126
		cmp	ax,word [bp-4]
		ja	..@j127
		jmp	..@j126
		jmp	..@j126
..@j127:
		mov	al,byte [bp-8]
		mov	byte [bp-524],al
		mov	byte [bp-523],0
		mov	si,word [bp-524]
		cmp	byte [bp+si-264],46
		jne	..@j124
		jmp	..@j126
..@j126:
		mov	dx,word [bp-8]
		mov	ax,word [bp-6]
		cmp	ax,0
		jne	..@j129
		cmp	dx,0
		jne	..@j129
		jmp	..@j128
..@j128:
		mov	al,byte [bp-264]
		mov	ah,0
		inc	ax
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-8],cx
		mov	word [bp-6],ax
		jmp	..@j132
..@j129:
		mov	al,byte [bp-8]
		mov	byte [bp-526],al
		mov	byte [bp-525],0
		mov	si,word [bp-526]
		cmp	byte [bp+si-264],46
		jne	..@j133
		jmp	..@j134
..@j133:
		mov	al,byte [bp-264]
		mov	ah,0
		inc	ax
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-8],cx
		mov	word [bp-6],ax
..@j134:
..@j132:
		jmp	..@j137
..@j121:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		add	ax,1
		adc	dx,0
		mov	word [bp-8],ax
		mov	word [bp-6],dx
		jmp	..@j141
	ALIGN 2
..@j140:
		add	word [bp-8],1
		adc	word [bp-6],0
..@j141:
		mov	ax,0
		mov	dl,byte [bp-264]
		mov	dh,0
		cmp	ax,word [bp-6]
		jg	..@j143
		jl	..@j142
		cmp	dx,word [bp-8]
		jae	..@j143
		jmp	..@j142
		jmp	..@j142
..@j143:
		mov	al,byte [bp-8]
		mov	byte [bp-528],al
		mov	byte [bp-527],0
		mov	si,word [bp-528]
		cmp	byte [bp+si-264],46
		jne	..@j140
		jmp	..@j142
..@j142:
..@j137:
		mov	ax,word [bp+8]
		push	ax
		mov	ax,255
		push	ax
		lea	ax,[bp-520]
		push	ax
		lea	ax,[bp-264]
		push	ax
		mov	ax,1
		push	ax
		push	word [bp-4]
		call	fpc_shortstr_copy
		lea	ax,[bp-520]
		push	ax
		call	fpc_shortstr_to_shortstr
		mov	ax,word [bp+6]
		push	ax
		mov	ax,255
		push	ax
		lea	ax,[bp-520]
		push	ax
		lea	ax,[bp-264]
		push	ax
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		add	ax,1
		adc	dx,0
		push	ax
		mov	ax,word [bp-8]
		mov	dx,word [bp-6]
		mov	cx,word [bp-4]
		mov	bx,word [bp-2]
		sub	ax,cx
		sbb	dx,bx
		sub	ax,1
		sbb	dx,0
		push	ax
		call	fpc_shortstr_copy
		lea	ax,[bp-520]
		push	ax
		call	fpc_shortstr_to_shortstr
		mov	ax,word [bp+4]
		push	ax
		mov	ax,255
		push	ax
		lea	ax,[bp-520]
		push	ax
		lea	ax,[bp-264]
		push	ax
		push	word [bp-8]
		mov	ax,0
		mov	cl,byte [bp-264]
		mov	ch,0
		mov	dx,word [bp-8]
		mov	bx,word [bp-6]
		sub	cx,dx
		sbb	ax,bx
		add	cx,1
		adc	ax,0
		push	cx
		call	fpc_shortstr_copy
		lea	ax,[bp-520]
		push	ax
		call	fpc_shortstr_to_shortstr
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	fpc_shortstr_copy
EXTERN	U_$SYSTEM_$$_LFNSUPPORT
EXTERN	DOS_$$_DODIRSEPARATORS$SHORTSTRING
EXTERN	fpc_shortstr_to_shortstr
