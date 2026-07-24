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
	GLOBAL OBJECTS$_$TBUFSTREAM_$__$$_WRITE$formal$LONGINT
OBJECTS$_$TBUFSTREAM_$__$$_WRITE$formal$LONGINT:
		push	bp
		mov	bp,sp
		sub	sp,8
		mov	bx,word [bp+10]
		cmp	word [bx+2],0
		jne	..@j1187
		jmp	..@j1188
..@j1187:
		jmp	..@j1185
..@j1188:
		mov	bx,word [bp+10]
		mov	ax,word [bx+15]
		cmp	ax,word [U_$OBJECTS_$$_INVALIDHANDLE]
		je	..@j1189
		jmp	..@j1190
..@j1189:
		mov	ax,word [bp+10]
		push	ax
		mov	ax,-4
		push	ax
		mov	ax,103
		push	ax
		mov	bx,word [bp+10]
		mov	bx,word [bx]
		mov	ax,word [bx+22]
		call	ax
..@j1190:
		mov	bx,word [bp+10]
		cmp	byte [bx+841],1
		je	..@j1197
		jmp	..@j1198
..@j1197:
		mov	ax,word [bp+10]
		push	ax
		mov	bx,word [bp+10]
		mov	bx,word [bx]
		mov	ax,word [bx+16]
		call	ax
..@j1198:
		mov	bx,word [bp+10]
		mov	byte [bx+841],2
		mov	ax,word [bp+8]
		mov	word [bp-6],ax
		jmp	..@j1206
	ALIGN 2
..@j1205:
		mov	si,word [bp+10]
		mov	bx,word [bp+10]
		mov	dx,word [si+846]
		mov	ax,word [si+848]
		cmp	ax,word [bx+844]
		jne	..@j1209
		cmp	dx,word [bx+842]
		jne	..@j1209
		jmp	..@j1208
		jmp	..@j1209
..@j1208:
		mov	bx,word [bp+10]
		lea	ax,[bx+273]
		push	ax
		mov	bx,word [bp+10]
		mov	ax,word [bx+854]
		push	ax
		mov	bx,word [bp+10]
		push	word [bx+844]
		push	word [bx+842]
		lea	ax,[bp-4]
		push	ax
		call	SYSTEM_$$_BLOCKWRITE$file$formal$LONGINT$LONGINT
		call	SYSTEM_$$_IORESULT$$WORD
		mov	word [bp-8],ax
		cmp	word [bp-8],0
		jne	..@j1220
		jmp	..@j1222
..@j1222:
		mov	bx,word [bp+10]
		mov	dx,word [bx+842]
		mov	ax,word [bx+844]
		cmp	ax,word [bp-2]
		jne	..@j1220
		cmp	dx,word [bp-4]
		jne	..@j1220
		jmp	..@j1221
		jmp	..@j1221
..@j1220:
		cmp	word [bp-8],0
		je	..@j1223
		jmp	..@j1224
..@j1223:
		mov	ax,word [bp+10]
		push	ax
		mov	ax,-4
		push	ax
		mov	ax,0
		push	ax
		mov	bx,word [bp+10]
		mov	bx,word [bx]
		mov	ax,word [bx+22]
		call	ax
		jmp	..@j1231
..@j1224:
		mov	ax,word [bp+10]
		push	ax
		mov	ax,-1
		push	ax
		push	word [bp-8]
		mov	bx,word [bp+10]
		mov	bx,word [bx]
		mov	ax,word [bx+22]
		call	ax
..@j1231:
..@j1221:
		mov	bx,word [bp+10]
		mov	word [bx+846],0
		mov	word [bx+848],0
..@j1209:
		mov	bx,word [bp+10]
		cmp	word [bx+2],0
		je	..@j1240
		jmp	..@j1241
..@j1240:
		mov	si,word [bp+10]
		mov	bx,word [bp+10]
		mov	ax,word [si+842]
		mov	dx,word [si+844]
		mov	cx,word [bx+846]
		mov	bx,word [bx+848]
		sub	ax,cx
		sbb	dx,bx
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		cmp	dx,word [bp-2]
		jl	..@j1244
		jg	..@j1245
		cmp	ax,word [bp-4]
		jb	..@j1244
		jmp	..@j1245
		jmp	..@j1245
..@j1244:
		mov	ax,word [bp+4]
		mov	word [bp-4],ax
		mov	ax,word [bp+6]
		mov	word [bp-2],ax
..@j1245:
		mov	ax,word [bp-6]
		push	ax
		mov	bx,word [bp+10]
		mov	bx,word [bx+854]
		mov	si,word [bp+10]
		mov	si,word [si+846]
		lea	ax,[bx+si]
		push	ax
		push	word [bp-4]
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		sub	word [bp+4],ax
		sbb	word [bp+6],dx
		mov	bx,word [bp+10]
		mov	dx,word [bp-4]
		mov	ax,word [bp-2]
		add	word [bx+846],dx
		adc	word [bx+848],ax
		mov	ax,word [bp-4]
		add	word [bp-6],ax
		mov	bx,word [bp+10]
		mov	dx,word [bp-4]
		mov	ax,word [bp-2]
		add	word [bx+10],dx
		adc	word [bx+12],ax
		mov	si,word [bp+10]
		mov	bx,word [bp+10]
		mov	dx,word [si+10]
		mov	ax,word [si+12]
		cmp	ax,word [bx+8]
		jg	..@j1254
		jl	..@j1255
		cmp	dx,word [bx+6]
		ja	..@j1254
		jmp	..@j1255
		jmp	..@j1255
..@j1254:
		mov	bx,word [bp+10]
		mov	si,word [bp+10]
		mov	ax,word [si+10]
		mov	word [bx+6],ax
		mov	ax,word [si+12]
		mov	word [bx+8],ax
..@j1255:
..@j1241:
..@j1206:
		mov	dx,word [bp+4]
		mov	ax,word [bp+6]
		cmp	ax,0
		jg	..@j1258
		jl	..@j1207
		cmp	dx,0
		ja	..@j1258
		jmp	..@j1207
..@j1258:
		mov	bx,word [bp+10]
		cmp	word [bx+2],0
		je	..@j1205
		jmp	..@j1207
..@j1207:
..@j1185:
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
EXTERN	SYSTEM_$$_IORESULT$$WORD
EXTERN	SYSTEM_$$_BLOCKWRITE$file$formal$LONGINT$LONGINT
EXTERN	U_$OBJECTS_$$_INVALIDHANDLE
