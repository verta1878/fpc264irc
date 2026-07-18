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
	GLOBAL SYSTEM_$$_UNICODETOUTF8$PCHAR$WORD$PUNICODECHAR$WORD$$WORD
SYSTEM_$$_UNICODETOUTF8$PCHAR$WORD$PUNICODECHAR$WORD$$WORD:
		push	bp
		mov	bp,sp
		sub	sp,10
		mov	word [bp-2],0
		cmp	word [bp+6],0
		je	..@j13035
		jmp	..@j13036
..@j13035:
		jmp	..@j13031
..@j13036:
		mov	word [bp-4],0
		mov	word [bp-6],0
		cmp	word [bp+10],0
		jne	..@j13041
		jmp	..@j13042
..@j13041:
		jmp	..@j13044
	ALIGN 2
..@j13043:
		mov	bx,word [bp+6]
		mov	ax,word [bp-4]
		mov	si,ax
		shl	si,1
		mov	ax,word [bx+si]
		mov	dx,0
		mov	word [bp-10],ax
		mov	word [bp-8],dx
		mov	ax,word [bp-10]
		mov	dx,word [bp-8]
		test	dx,dx
		jb	..@j13049
		test	dx,dx
		ja	..@j13054
		test	ax,ax
		jb	..@j13049
..@j13054:
		test	dx,dx
		jb	..@j13050
		test	dx,dx
		ja	..@j13055
		cmp	ax,127
		jbe	..@j13050
..@j13055:
		test	dx,dx
		jb	..@j13051
		test	dx,dx
		ja	..@j13056
		cmp	ax,2047
		jbe	..@j13051
..@j13056:
		test	dx,dx
		jb	..@j13052
		test	dx,dx
		ja	..@j13057
		cmp	ax,-10241
		jbe	..@j13052
..@j13057:
		test	dx,dx
		jb	..@j13053
		test	dx,dx
		ja	..@j13058
		cmp	ax,-9217
		jbe	..@j13053
..@j13058:
		test	dx,dx
		jb	..@j13049
		test	dx,dx
		ja	..@j13059
		cmp	ax,-8192
		jb	..@j13049
..@j13059:
		test	dx,dx
		jb	..@j13052
		test	dx,dx
		ja	..@j13060
		cmp	ax,-1
		jbe	..@j13052
..@j13060:
		jmp	..@j13049
..@j13050:
		mov	bx,word [bp+10]
		mov	si,word [bp-6]
		mov	al,byte [bp-10]
		mov	byte [bx+si],al
		inc	word [bp-6]
		jmp	..@j13048
..@j13051:
		mov	ax,word [bp-6]
		inc	ax
		cmp	ax,word [bp+8]
		jae	..@j13063
		jmp	..@j13064
..@j13063:
		jmp	..@j13045
..@j13064:
		mov	ax,word [bp-10]
		mov	dx,word [bp-8]
		mov	cx,6
..@j13067:
		shr	dx,1
		rcr	ax,1
		loop	..@j13067
		or	ax,192
		mov	bx,word [bp+10]
		mov	si,word [bp-6]
		mov	byte [bx+si],al
		mov	ax,word [bp-10]
		mov	dx,word [bp-8]
		and	ax,63
		mov	dx,0
		or	ax,128
		mov	bx,word [bp+10]
		mov	dx,word [bp-6]
		inc	dx
		mov	si,dx
		mov	byte [bx+si],al
		add	word [bp-6],2
		jmp	..@j13048
..@j13052:
		mov	ax,word [bp-6]
		add	ax,2
		cmp	ax,word [bp+8]
		jae	..@j13070
		jmp	..@j13071
..@j13070:
		jmp	..@j13045
..@j13071:
		mov	ax,word [bp-10]
		mov	dx,word [bp-8]
		mov	cx,12
..@j13074:
		shr	dx,1
		rcr	ax,1
		loop	..@j13074
		or	ax,224
		mov	bx,word [bp+10]
		mov	si,word [bp-6]
		mov	byte [bx+si],al
		mov	ax,word [bp-10]
		mov	dx,word [bp-8]
		mov	cx,6
..@j13077:
		shr	dx,1
		rcr	ax,1
		loop	..@j13077
		and	ax,63
		mov	dx,0
		or	ax,128
		mov	bx,word [bp+10]
		mov	dx,word [bp-6]
		inc	dx
		mov	si,dx
		mov	byte [bx+si],al
		mov	ax,word [bp-10]
		mov	dx,word [bp-8]
		and	ax,63
		mov	dx,0
		or	ax,128
		mov	bx,word [bp+10]
		mov	dx,word [bp-6]
		add	dx,2
		mov	si,dx
		mov	byte [bx+si],al
		add	word [bp-6],3
		jmp	..@j13048
..@j13053:
		mov	ax,word [bp-6]
		add	ax,3
		cmp	ax,word [bp+8]
		jae	..@j13080
		jmp	..@j13081
..@j13080:
		jmp	..@j13045
..@j13081:
		mov	ax,word [bp-4]
		inc	ax
		cmp	ax,word [bp+4]
		jb	..@j13085
		jmp	..@j13083
..@j13085:
		mov	bx,word [bp+6]
		mov	ax,word [bp-4]
		inc	ax
		mov	si,ax
		shl	si,1
		cmp	word [bx+si],-9216
		jae	..@j13084
		jmp	..@j13083
..@j13084:
		mov	bx,word [bp+6]
		mov	ax,word [bp-4]
		inc	ax
		mov	si,ax
		shl	si,1
		cmp	word [bx+si],-8193
		jbe	..@j13082
		jmp	..@j13083
..@j13082:
		mov	bx,word [bp+6]
		mov	ax,word [bp-4]
		inc	ax
		mov	si,ax
		shl	si,1
		mov	ax,word [bx+si]
		xor	ax,-9216
		mov	si,0
		mov	dx,word [bp-10]
		mov	bx,word [bp-8]
		sub	dx,-10304
		sbb	bx,0
		mov	cx,10
..@j13088:
		shl	dx,1
		rcl	bx,1
		loop	..@j13088
		add	dx,ax
		adc	bx,si
		mov	word [bp-10],dx
		mov	word [bp-8],bx
		mov	ax,word [bp-10]
		mov	dx,word [bp-8]
		mov	ax,dx
		mov	dx,0
		mov	cl,2
		shr	ax,cl
		or	ax,240
		mov	bx,word [bp+10]
		mov	si,word [bp-6]
		mov	byte [bx+si],al
		mov	ax,word [bp-10]
		mov	dx,word [bp-8]
		mov	cx,12
..@j13093:
		shr	dx,1
		rcr	ax,1
		loop	..@j13093
		and	ax,63
		mov	dx,0
		or	ax,128
		mov	bx,word [bp+10]
		mov	dx,word [bp-6]
		inc	dx
		mov	si,dx
		mov	byte [bx+si],al
		mov	ax,word [bp-10]
		mov	dx,word [bp-8]
		mov	cx,6
..@j13096:
		shr	dx,1
		rcr	ax,1
		loop	..@j13096
		and	ax,63
		mov	dx,0
		or	ax,128
		mov	bx,word [bp+10]
		mov	dx,word [bp-6]
		add	dx,2
		mov	si,dx
		mov	byte [bx+si],al
		mov	ax,word [bp-10]
		mov	dx,word [bp-8]
		and	ax,63
		mov	dx,0
		or	ax,128
		mov	bx,word [bp+10]
		mov	dx,word [bp-6]
		add	dx,3
		mov	si,dx
		mov	byte [bx+si],al
		add	word [bp-6],4
		inc	word [bp-4]
..@j13083:
		jmp	..@j13048
..@j13049:
..@j13048:
		inc	word [bp-4]
..@j13044:
		mov	ax,word [bp-4]
		cmp	ax,word [bp+4]
		jb	..@j13099
		jmp	..@j13045
..@j13099:
		mov	ax,word [bp-6]
		cmp	ax,word [bp+8]
		jb	..@j13043
		jmp	..@j13045
..@j13045:
		mov	ax,word [bp+8]
		mov	dx,0
		sub	ax,1
		sbb	dx,0
		cmp	ax,word [bp-6]
		jb	..@j13100
		jmp	..@j13101
..@j13100:
		mov	ax,word [bp+8]
		mov	dx,0
		sub	ax,1
		sbb	dx,0
		mov	word [bp-6],ax
..@j13101:
		mov	bx,word [bp+10]
		mov	si,word [bp-6]
		mov	byte [bx+si],0
		jmp	..@j13106
..@j13042:
		jmp	..@j13108
	ALIGN 2
..@j13107:
		mov	bx,word [bp+6]
		mov	ax,word [bp-4]
		mov	si,ax
		shl	si,1
		mov	ax,word [bx+si]
		sub	ax,127
		jbe	..@j13112
		sub	ax,1
		sub	ax,1919
		jbe	..@j13113
		sub	ax,1
		sub	ax,-12289
		jbe	..@j13114
		sub	ax,1
		sub	ax,1023
		jbe	..@j13115
		sub	ax,1025
		jb	..@j13111
		sub	ax,8191
		jbe	..@j13114
		jmp	..@j13111
..@j13112:
		inc	word [bp-6]
		jmp	..@j13110
..@j13113:
		add	word [bp-6],2
		jmp	..@j13110
..@j13114:
		add	word [bp-6],3
		jmp	..@j13110
..@j13115:
		mov	ax,word [bp-4]
		inc	ax
		cmp	ax,word [bp+4]
		jb	..@j13119
		jmp	..@j13117
..@j13119:
		mov	bx,word [bp+6]
		mov	ax,word [bp-4]
		inc	ax
		mov	si,ax
		shl	si,1
		cmp	word [bx+si],-9216
		jae	..@j13118
		jmp	..@j13117
..@j13118:
		mov	bx,word [bp+6]
		mov	ax,word [bp-4]
		inc	ax
		mov	si,ax
		shl	si,1
		cmp	word [bx+si],-8193
		jbe	..@j13116
		jmp	..@j13117
..@j13116:
		add	word [bp-6],4
		inc	word [bp-4]
..@j13117:
		jmp	..@j13110
..@j13111:
..@j13110:
		inc	word [bp-4]
..@j13108:
		mov	ax,word [bp-4]
		cmp	ax,word [bp+4]
		jb	..@j13107
		jmp	..@j13109
..@j13109:
..@j13106:
		mov	ax,word [bp-6]
		inc	ax
		mov	word [bp-2],ax
..@j13031:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	8
