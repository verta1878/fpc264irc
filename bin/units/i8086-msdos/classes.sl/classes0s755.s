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
	GLOBAL CLASSES$_$OBJECTTEXTTOBINARY$TSTREAM$TSTREAM_$$_WRITEINTEGER$INT64
CLASSES$_$OBJECTTEXTTOBINARY$TSTREAM$TSTREAM_$$_WRITEINTEGER$INT64:
		push	bp
		mov	bp,sp
		mov	dx,word [bp+4]
		mov	cx,word [bp+6]
		mov	ax,word [bp+8]
		mov	bx,word [bp+10]
		cmp	bx,-1
		jg	..@j17179
		jl	..@j17178
		cmp	ax,-1
		ja	..@j17179
		jb	..@j17178
		cmp	cx,-1
		ja	..@j17179
		jb	..@j17178
		cmp	dx,-128
		jae	..@j17179
		jmp	..@j17178
..@j17179:
		mov	bx,word [bp+4]
		mov	dx,word [bp+6]
		mov	cx,word [bp+8]
		mov	ax,word [bp+10]
		cmp	ax,0
		jl	..@j17177
		jg	..@j17178
		cmp	cx,0
		jb	..@j17177
		ja	..@j17178
		cmp	dx,0
		jb	..@j17177
		ja	..@j17178
		cmp	bx,127
		jbe	..@j17177
		jmp	..@j17178
..@j17177:
		mov	bx,word [bp+12]
		push	word [bx+4]
		mov	ax,2
		push	ax
		call	CLASSES$_$TSTREAM_$__$$_WRITEBYTE$BYTE
		mov	bx,word [bp+12]
		push	word [bx+4]
		mov	al,byte [bp+4]
		mov	ah,0
		push	ax
		call	CLASSES$_$TSTREAM_$__$$_WRITEBYTE$BYTE
		jmp	..@j17188
..@j17178:
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		mov	cx,word [bp+8]
		mov	bx,word [bp+10]
		cmp	bx,-1
		jg	..@j17191
		jl	..@j17190
		cmp	cx,-1
		ja	..@j17191
		jb	..@j17190
		cmp	dx,-1
		ja	..@j17191
		jb	..@j17190
		cmp	ax,-32768
		jae	..@j17191
		jmp	..@j17190
..@j17191:
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		mov	cx,word [bp+8]
		mov	bx,word [bp+10]
		cmp	bx,0
		jl	..@j17189
		jg	..@j17190
		cmp	cx,0
		jb	..@j17189
		ja	..@j17190
		cmp	dx,0
		jb	..@j17189
		ja	..@j17190
		cmp	ax,32767
		jbe	..@j17189
		jmp	..@j17190
..@j17189:
		mov	bx,word [bp+12]
		push	word [bx+4]
		mov	ax,3
		push	ax
		call	CLASSES$_$TSTREAM_$__$$_WRITEBYTE$BYTE
		mov	ax,word [bp+12]
		push	ax
		push	word [bp+4]
		call	CLASSES$_$OBJECTTEXTTOBINARY$TSTREAM$TSTREAM_$$_WRITEWORD$WORD
		jmp	..@j17200
..@j17190:
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		mov	cx,word [bp+8]
		mov	bx,word [bp+10]
		cmp	bx,-1
		jg	..@j17203
		jl	..@j17202
		cmp	cx,-1
		ja	..@j17203
		jb	..@j17202
		cmp	dx,-32768
		ja	..@j17203
		jb	..@j17202
		cmp	ax,0
		jae	..@j17203
		jmp	..@j17202
..@j17203:
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		mov	cx,word [bp+8]
		mov	bx,word [bp+10]
		cmp	bx,0
		jl	..@j17201
		jg	..@j17202
		cmp	cx,0
		jb	..@j17201
		ja	..@j17202
		cmp	dx,32767
		jb	..@j17201
		ja	..@j17202
		cmp	ax,-1
		jbe	..@j17201
		jmp	..@j17202
..@j17201:
		mov	bx,word [bp+12]
		push	word [bx+4]
		mov	ax,4
		push	ax
		call	CLASSES$_$TSTREAM_$__$$_WRITEBYTE$BYTE
		mov	ax,word [bp+12]
		push	ax
		push	word [bp+6]
		push	word [bp+4]
		call	CLASSES$_$OBJECTTEXTTOBINARY$TSTREAM$TSTREAM_$$_WRITEDWORD$LONGWORD
		jmp	..@j17212
..@j17202:
		mov	bx,word [bp+12]
		push	word [bx+4]
		mov	ax,19
		push	ax
		call	CLASSES$_$TSTREAM_$__$$_WRITEBYTE$BYTE
		mov	ax,word [bp+12]
		push	ax
		push	word [bp+10]
		push	word [bp+8]
		push	word [bp+6]
		push	word [bp+4]
		call	CLASSES$_$OBJECTTEXTTOBINARY$TSTREAM$TSTREAM_$$_WRITEQWORD$QWORD
..@j17212:
..@j17200:
..@j17188:
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	CLASSES$_$OBJECTTEXTTOBINARY$TSTREAM$TSTREAM_$$_WRITEQWORD$QWORD
EXTERN	CLASSES$_$OBJECTTEXTTOBINARY$TSTREAM$TSTREAM_$$_WRITEDWORD$LONGWORD
EXTERN	CLASSES$_$OBJECTTEXTTOBINARY$TSTREAM$TSTREAM_$$_WRITEWORD$WORD
EXTERN	CLASSES$_$TSTREAM_$__$$_WRITEBYTE$BYTE
