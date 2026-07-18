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
	GLOBAL fpc_shortstr_concat_multi
fpc_shortstr_concat_multi:
		push	bp
		mov	bp,sp
		sub	sp,286
		cmp	word [bp+4],0
		je	..@j1039
		jmp	..@j1040
..@j1039:
		mov	bx,word [bp+10]
		mov	byte [bx],0
		jmp	..@j1037
..@j1040:
		mov	word [bp-6],0
		mov	word [bp-4],0
		mov	bx,word [bp+6]
		mov	ax,word [bp-6]
		mov	si,ax
		shl	si,1
		mov	ax,word [bp+10]
		cmp	ax,word [bx+si]
		je	..@j1045
		jmp	..@j1046
..@j1045:
		add	word [bp-6],1
		adc	word [bp-4],0
..@j1046:
		mov	byte [bp-15],0
		mov	ax,word [bp+4]
		cwd
		mov	bx,word [bp-6]
		mov	cx,word [bp-4]
		mov	word [bp-10],bx
		mov	word [bp-8],cx
		cmp	dx,word [bp-8]
		jl	..@j1052
		jg	..@j1054
		cmp	ax,word [bp-10]
		jb	..@j1052
..@j1054:
		sub	word [bp-10],1
		sbb	word [bp-8],0
	ALIGN 2
..@j1053:
		add	word [bp-10],1
		adc	word [bp-8],0
		mov	bx,word [bp+6]
		mov	cx,word [bp-10]
		mov	si,cx
		shl	si,1
		mov	cx,word [bp+10]
		cmp	cx,word [bx+si]
		je	..@j1055
		jmp	..@j1056
..@j1055:
		mov	byte [bp-15],1
		jmp	..@j1052
..@j1056:
		cmp	dx,word [bp-8]
		jg	..@j1053
		jl	..@j1059
		cmp	ax,word [bp-10]
		ja	..@j1053
..@j1059:
..@j1052:
		cmp	byte [bp-15],0
		jne	..@j1060
		jmp	..@j1061
..@j1060:
		mov	word [bp-6],0
		mov	word [bp-4],0
		mov	byte [bp-271],0
		lea	ax,[bp-271]
		mov	word [bp-276],ax
		jmp	..@j1068
..@j1061:
		mov	ax,word [bp-6]
		mov	dx,word [bp-4]
		cmp	dx,0
		jne	..@j1070
		cmp	ax,0
		jne	..@j1070
		jmp	..@j1069
..@j1069:
		mov	bx,word [bp+10]
		mov	byte [bx],0
..@j1070:
		mov	ax,word [bp+10]
		mov	word [bp-276],ax
..@j1068:
		mov	bx,word [bp-276]
		mov	ax,0
		mov	dl,byte [bx]
		mov	dh,0
		mov	word [bp-14],dx
		mov	word [bp-12],ax
		mov	ax,word [bp+4]
		cwd
		mov	word [bp-286],ax
		mov	word [bp-284],dx
		mov	dx,word [bp-6]
		mov	ax,word [bp-4]
		mov	word [bp-10],dx
		mov	word [bp-8],ax
		mov	ax,word [bp-284]
		cmp	ax,word [bp-8]
		jl	..@j1080
		jg	..@j1082
		mov	ax,word [bp-286]
		cmp	ax,word [bp-10]
		jb	..@j1080
..@j1082:
		sub	word [bp-10],1
		sbb	word [bp-8],0
	ALIGN 2
..@j1081:
		add	word [bp-10],1
		adc	word [bp-8],0
		mov	bx,word [bp+6]
		mov	ax,word [bp-10]
		mov	si,ax
		shl	si,1
		mov	ax,word [bx+si]
		mov	word [bp-274],ax
		cmp	word [bp-274],0
		jne	..@j1085
		jmp	..@j1086
..@j1085:
		mov	bx,word [bp-274]
		mov	al,byte [bx]
		mov	byte [bp-1],al
		mov	si,0
		mov	al,byte [bp-1]
		mov	ah,0
		mov	dx,word [bp-14]
		mov	bx,word [bp-12]
		mov	cx,dx
		add	cx,ax
		adc	bx,si
		mov	ax,word [bp+8]
		cwd
		cmp	bx,dx
		jg	..@j1089
		jl	..@j1090
		cmp	cx,ax
		ja	..@j1089
		jmp	..@j1090
..@j1089:
		mov	ax,word [bp+8]
		cwd
		mov	cx,word [bp-14]
		mov	bx,word [bp-12]
		sub	ax,cx
		sbb	dx,bx
		mov	byte [bp-1],al
..@j1090:
		mov	dx,word [bp-14]
		mov	ax,word [bp-12]
		add	dx,1
		adc	ax,0
		mov	byte [bp-277],dl
		mov	ax,word [bp-274]
		mov	word [bp-282],ax
		mov	bx,word [bp-282]
		lea	ax,[bx+1]
		push	ax
		mov	bx,word [bp-276]
		mov	al,byte [bp-277]
		mov	byte [bp-280],al
		mov	byte [bp-279],0
		mov	si,word [bp-280]
		lea	ax,[bx+si]
		push	ax
		mov	al,byte [bp-1]
		mov	ah,0
		push	ax
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
		mov	ax,0
		mov	dl,byte [bp-1]
		mov	dh,0
		add	word [bp-14],dx
		adc	word [bp-12],ax
..@j1086:
		mov	ax,word [bp-284]
		cmp	ax,word [bp-8]
		jg	..@j1081
		jl	..@j1103
		mov	ax,word [bp-286]
		cmp	ax,word [bp-10]
		ja	..@j1081
..@j1103:
..@j1080:
		mov	bx,word [bp-276]
		mov	al,byte [bp-14]
		mov	byte [bx],al
		cmp	byte [bp-15],0
		jne	..@j1106
		jmp	..@j1107
..@j1106:
		mov	ax,word [bp+10]
		push	ax
		push	word [bp+8]
		lea	ax,[bp-271]
		push	ax
		call	fpc_shortstr_to_shortstr
..@j1107:
..@j1037:
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	fpc_shortstr_to_shortstr
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
