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
	GLOBAL CLASSES$_$TBINARYOBJECTREADER_$__$$_SKIPVALUE
CLASSES$_$TBINARYOBJECTREADER_$__$$_SKIPVALUE:
		push	bp
		mov	bp,sp
		sub	sp,20
		mov	word [bp-20],0
		mov	ax,1
		push	ax
		lea	ax,[bp-16]
		push	ax
		lea	ax,[bp-10]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j18147
		push	word [bp+4]
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	ax,word [bx+52]
		call	ax
		test	dx,dx
		jne	..@j18167
		test	ax,ax
		je	..@j18151
..@j18167:
		test	dx,dx
		jne	..@j18168
		cmp	ax,1
		je	..@j18152
..@j18168:
		test	dx,dx
		jne	..@j18169
		cmp	ax,2
		je	..@j18153
..@j18169:
		test	dx,dx
		jne	..@j18170
		cmp	ax,3
		je	..@j18154
..@j18170:
		test	dx,dx
		jne	..@j18171
		cmp	ax,4
		je	..@j18155
..@j18171:
		test	dx,dx
		jne	..@j18172
		cmp	ax,5
		je	..@j18156
..@j18172:
		test	dx,dx
		jb	..@j18150
		test	dx,dx
		ja	..@j18173
		cmp	ax,6
		jb	..@j18150
..@j18173:
		test	dx,dx
		jb	..@j18157
		test	dx,dx
		ja	..@j18174
		cmp	ax,7
		jbe	..@j18157
..@j18174:
		test	dx,dx
		jb	..@j18151
		test	dx,dx
		ja	..@j18175
		cmp	ax,9
		jbe	..@j18151
..@j18175:
		test	dx,dx
		jne	..@j18176
		cmp	ax,10
		je	..@j18158
..@j18176:
		test	dx,dx
		jne	..@j18177
		cmp	ax,11
		je	..@j18161
..@j18177:
		test	dx,dx
		jne	..@j18178
		cmp	ax,12
		je	..@j18158
..@j18178:
		test	dx,dx
		jne	..@j18179
		cmp	ax,13
		je	..@j18151
..@j18179:
		test	dx,dx
		jne	..@j18180
		cmp	ax,14
		je	..@j18162
..@j18180:
		test	dx,dx
		jne	..@j18181
		cmp	ax,15
		je	..@j18163
..@j18181:
		test	dx,dx
		jne	..@j18182
		cmp	ax,17
		je	..@j18164
..@j18182:
		test	dx,dx
		jne	..@j18183
		cmp	ax,18
		je	..@j18159
..@j18183:
		test	dx,dx
		jne	..@j18184
		cmp	ax,19
		je	..@j18164
..@j18184:
		test	dx,dx
		jne	..@j18185
		cmp	ax,21
		je	..@j18160
..@j18185:
		jmp	..@j18150
..@j18151:
		jmp	..@j18149
..@j18152:
		jmp	..@j18187
	ALIGN 2
..@j18186:
		push	word [bp+4]
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	ax,word [bx+96]
		call	ax
..@j18187:
		push	word [bp+4]
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	ax,word [bx+50]
		call	ax
		test	ax,ax
		jne	..@j18186
		jmp	..@j18188
..@j18188:
		push	word [bp+4]
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	ax,word [bx+52]
		call	ax
		jmp	..@j18149
..@j18153:
		push	bp
		mov	ax,0
		push	ax
		mov	ax,1
		push	ax
		call	CLASSES$_$TBINARYOBJECTREADER_$_SKIPVALUE_$$_SKIPBYTES$LONGINT
		jmp	..@j18149
..@j18154:
		push	bp
		mov	ax,0
		push	ax
		mov	ax,2
		push	ax
		call	CLASSES$_$TBINARYOBJECTREADER_$_SKIPVALUE_$$_SKIPBYTES$LONGINT
		jmp	..@j18149
..@j18155:
		push	bp
		mov	ax,0
		push	ax
		mov	ax,4
		push	ax
		call	CLASSES$_$TBINARYOBJECTREADER_$_SKIPVALUE_$$_SKIPBYTES$LONGINT
		jmp	..@j18149
..@j18156:
		push	bp
		mov	ax,0
		push	ax
		mov	ax,10
		push	ax
		call	CLASSES$_$TBINARYOBJECTREADER_$_SKIPVALUE_$$_SKIPBYTES$LONGINT
		jmp	..@j18149
..@j18157:
		push	word [bp+4]
		lea	ax,[bp-20]
		push	ax
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	ax,word [bx+86]
		call	ax
		lea	ax,[bp-20]
		push	ax
		call	fpc_ansistr_decr_ref
		jmp	..@j18149
..@j18158:
		push	word [bp+4]
		call	CLASSES$_$TBINARYOBJECTREADER_$__$$_READDWORD$$LONGWORD
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		push	bp
		push	word [bp-2]
		push	word [bp-4]
		call	CLASSES$_$TBINARYOBJECTREADER_$_SKIPVALUE_$$_SKIPBYTES$LONGINT
		jmp	..@j18149
..@j18159:
		push	word [bp+4]
		call	CLASSES$_$TBINARYOBJECTREADER_$__$$_READDWORD$$LONGWORD
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		push	bp
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		shl	ax,1
		rcl	dx,1
		push	dx
		push	ax
		call	CLASSES$_$TBINARYOBJECTREADER_$_SKIPVALUE_$$_SKIPBYTES$LONGINT
		jmp	..@j18149
..@j18160:
		push	word [bp+4]
		call	CLASSES$_$TBINARYOBJECTREADER_$__$$_READDWORD$$LONGWORD
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		push	bp
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		shl	ax,1
		rcl	dx,1
		push	dx
		push	ax
		call	CLASSES$_$TBINARYOBJECTREADER_$_SKIPVALUE_$$_SKIPBYTES$LONGINT
		jmp	..@j18149
..@j18161:
		push	word [bp+4]
		call	CLASSES$_$TBINARYOBJECTREADER_$__$$_SKIPSETBODY
		jmp	..@j18149
..@j18162:
		jmp	..@j18242
	ALIGN 2
..@j18241:
		push	word [bp+4]
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	ax,word [bx+50]
		call	ax
		sub	ax,2
		cmp	ax,3
		jb	..@j18248
..@j18248:
		jc	..@j18244
		jmp	..@j18245
..@j18244:
		push	word [bp+4]
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	ax,word [bx+96]
		call	ax
..@j18245:
		push	bp
		mov	ax,0
		push	ax
		mov	ax,1
		push	ax
		call	CLASSES$_$TBINARYOBJECTREADER_$_SKIPVALUE_$$_SKIPBYTES$LONGINT
		jmp	..@j18256
	ALIGN 2
..@j18255:
		push	word [bp+4]
		call	CLASSES$_$TBINARYOBJECTREADER_$__$$_SKIPPROPERTY
..@j18256:
		push	word [bp+4]
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	ax,word [bx+50]
		call	ax
		test	ax,ax
		jne	..@j18255
		jmp	..@j18257
..@j18257:
		push	word [bp+4]
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	ax,word [bx+52]
		call	ax
..@j18242:
		push	word [bp+4]
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	ax,word [bx+50]
		call	ax
		test	ax,ax
		jne	..@j18241
		jmp	..@j18243
..@j18243:
		push	word [bp+4]
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	ax,word [bx+52]
		call	ax
		jmp	..@j18149
..@j18163:
		push	bp
		mov	ax,0
		push	ax
		mov	ax,4
		push	ax
		call	CLASSES$_$TBINARYOBJECTREADER_$_SKIPVALUE_$$_SKIPBYTES$LONGINT
		jmp	..@j18149
..@j18164:
		push	bp
		mov	ax,0
		push	ax
		mov	ax,8
		push	ax
		call	CLASSES$_$TBINARYOBJECTREADER_$_SKIPVALUE_$$_SKIPBYTES$LONGINT
		jmp	..@j18149
..@j18150:
..@j18149:
..@j18147:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-20]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j18148
		call	FPC_RERAISE
..@j18148:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	FPC_RERAISE
EXTERN	FPC_POPADDRSTACK
EXTERN	CLASSES$_$TBINARYOBJECTREADER_$__$$_SKIPPROPERTY
EXTERN	CLASSES$_$TBINARYOBJECTREADER_$__$$_SKIPSETBODY
EXTERN	CLASSES$_$TBINARYOBJECTREADER_$__$$_READDWORD$$LONGWORD
EXTERN	fpc_ansistr_decr_ref
EXTERN	CLASSES$_$TBINARYOBJECTREADER_$_SKIPVALUE_$$_SKIPBYTES$LONGINT
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
