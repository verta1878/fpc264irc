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
	GLOBAL OBJECTS$_$TBUFSTREAM_$__$$_READ$formal$LONGINT
OBJECTS$_$TBUFSTREAM_$__$$_READ$formal$LONGINT:
		push	bp
		mov	bp,sp
		sub	sp,12
		mov	bx,word [bp+10]
		cmp	word [bx+2],0
		jne	..@j1084
		jmp	..@j1085
..@j1084:
		mov	ax,word [bp+8]
		push	ax
		push	word [bp+4]
		mov	ax,0
		push	ax
		call	SYSTEM_$$_FILLCHAR$formal$SMALLINT$CHAR
		jmp	..@j1082
..@j1085:
		mov	bx,word [bp+10]
		mov	cx,word [bx+10]
		mov	bx,word [bx+12]
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		add	ax,cx
		adc	dx,bx
		mov	bx,word [bp+10]
		cmp	dx,word [bx+8]
		jg	..@j1092
		jl	..@j1093
		cmp	ax,word [bx+6]
		ja	..@j1092
		jmp	..@j1093
		jmp	..@j1093
..@j1092:
		mov	ax,word [bp+10]
		push	ax
		mov	ax,-3
		push	ax
		mov	ax,0
		push	ax
		mov	bx,word [bp+10]
		mov	bx,word [bx]
		mov	ax,word [bx+22]
		call	ax
..@j1093:
		mov	bx,word [bp+10]
		mov	ax,word [bx+15]
		cmp	ax,word [U_$OBJECTS_$$_INVALIDHANDLE]
		je	..@j1100
		jmp	..@j1101
..@j1100:
		mov	ax,word [bp+10]
		push	ax
		mov	ax,-3
		push	ax
		mov	ax,103
		push	ax
		mov	bx,word [bp+10]
		mov	bx,word [bx]
		mov	ax,word [bx+22]
		call	ax
..@j1101:
		mov	ax,word [bp+8]
		mov	word [bp-10],ax
		mov	bx,word [bp+10]
		cmp	byte [bx+841],2
		je	..@j1110
		jmp	..@j1111
..@j1110:
		mov	ax,word [bp+10]
		push	ax
		mov	bx,word [bp+10]
		mov	bx,word [bx]
		mov	ax,word [bx+16]
		call	ax
..@j1111:
		mov	bx,word [bp+10]
		mov	byte [bx+841],1
		jmp	..@j1117
	ALIGN 2
..@j1116:
		mov	si,word [bp+10]
		mov	bx,word [bp+10]
		mov	dx,word [si+846]
		mov	ax,word [si+848]
		cmp	ax,word [bx+852]
		jne	..@j1120
		cmp	dx,word [bx+850]
		jne	..@j1120
		jmp	..@j1119
		jmp	..@j1120
..@j1119:
		mov	di,word [bp+10]
		mov	bx,word [bp+10]
		mov	si,word [di+10]
		mov	dx,word [di+12]
		mov	ax,word [bx+842]
		mov	cx,word [bx+844]
		add	ax,si
		adc	cx,dx
		mov	bx,word [bp+10]
		cmp	cx,word [bx+8]
		jg	..@j1121
		jl	..@j1122
		cmp	ax,word [bx+6]
		ja	..@j1121
		jmp	..@j1122
		jmp	..@j1122
..@j1121:
		mov	si,word [bp+10]
		mov	bx,word [bp+10]
		mov	ax,word [si+6]
		mov	dx,word [si+8]
		mov	cx,word [bx+10]
		mov	bx,word [bx+12]
		sub	ax,cx
		sbb	dx,bx
		mov	word [bp-8],ax
		mov	word [bp-6],dx
		jmp	..@j1125
..@j1122:
		mov	bx,word [bp+10]
		mov	ax,word [bx+842]
		mov	word [bp-8],ax
		mov	ax,word [bx+844]
		mov	word [bp-6],ax
..@j1125:
		mov	bx,word [bp+10]
		lea	ax,[bx+273]
		push	ax
		mov	bx,word [bp+10]
		mov	ax,word [bx+854]
		push	ax
		push	word [bp-6]
		push	word [bp-8]
		lea	ax,[bp-4]
		push	ax
		call	SYSTEM_$$_BLOCKREAD$file$formal$LONGINT$LONGINT
		call	SYSTEM_$$_IORESULT$$WORD
		mov	word [bp-12],ax
		cmp	word [bp-12],0
		jne	..@j1138
		jmp	..@j1140
..@j1140:
		mov	dx,word [bp-8]
		mov	ax,word [bp-6]
		cmp	ax,word [bp-2]
		jne	..@j1138
		cmp	dx,word [bp-4]
		jne	..@j1138
		jmp	..@j1139
		jmp	..@j1139
..@j1138:
		cmp	word [bp-12],0
		jne	..@j1141
		jmp	..@j1142
..@j1141:
		mov	ax,word [bp+10]
		push	ax
		mov	ax,-3
		push	ax
		push	word [bp-12]
		mov	bx,word [bp+10]
		mov	bx,word [bx]
		mov	ax,word [bx+22]
		call	ax
		jmp	..@j1149
..@j1142:
		mov	ax,word [bp+10]
		push	ax
		mov	ax,-3
		push	ax
		mov	ax,0
		push	ax
		mov	bx,word [bp+10]
		mov	bx,word [bx]
		mov	ax,word [bx+22]
		call	ax
..@j1149:
		jmp	..@j1156
..@j1139:
		mov	bx,word [bp+10]
		mov	word [bx+846],0
		mov	word [bx+848],0
		mov	bx,word [bp+10]
		mov	ax,word [bp-4]
		mov	word [bx+850],ax
		mov	ax,word [bp-2]
		mov	word [bx+852],ax
..@j1156:
..@j1120:
		mov	bx,word [bp+10]
		cmp	word [bx+2],0
		je	..@j1161
		jmp	..@j1162
..@j1161:
		mov	si,word [bp+10]
		mov	bx,word [bp+10]
		mov	ax,word [si+850]
		mov	dx,word [si+852]
		mov	cx,word [bx+846]
		mov	bx,word [bx+848]
		sub	ax,cx
		sbb	dx,bx
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		mov	dx,word [bp+4]
		mov	ax,word [bp+6]
		cmp	ax,word [bp-2]
		jl	..@j1165
		jg	..@j1166
		cmp	dx,word [bp-4]
		jb	..@j1165
		jmp	..@j1166
		jmp	..@j1166
..@j1165:
		mov	ax,word [bp+4]
		mov	word [bp-4],ax
		mov	ax,word [bp+6]
		mov	word [bp-2],ax
..@j1166:
		mov	bx,word [bp+10]
		mov	bx,word [bx+854]
		mov	si,word [bp+10]
		mov	si,word [si+846]
		lea	ax,[bx+si]
		push	ax
		mov	ax,word [bp-10]
		push	ax
		push	word [bp-4]
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
		mov	dx,word [bp-4]
		mov	ax,word [bp-2]
		sub	word [bp+4],dx
		sbb	word [bp+6],ax
		mov	bx,word [bp+10]
		mov	dx,word [bp-4]
		mov	ax,word [bp-2]
		add	word [bx+846],dx
		adc	word [bx+848],ax
		mov	ax,word [bp-4]
		add	word [bp-10],ax
		mov	bx,word [bp+10]
		mov	dx,word [bp-4]
		mov	ax,word [bp-2]
		add	word [bx+10],dx
		adc	word [bx+12],ax
..@j1162:
..@j1117:
		mov	dx,word [bp+4]
		mov	ax,word [bp+6]
		cmp	ax,0
		jg	..@j1175
		jl	..@j1118
		cmp	dx,0
		ja	..@j1175
		jmp	..@j1118
..@j1175:
		mov	bx,word [bp+10]
		cmp	word [bx+2],0
		je	..@j1116
		jmp	..@j1118
..@j1118:
		mov	bx,word [bp+10]
		cmp	word [bx+2],0
		jne	..@j1178
		jmp	..@j1177
..@j1178:
		mov	dx,word [bp+4]
		mov	ax,word [bp+6]
		cmp	ax,0
		jg	..@j1176
		jl	..@j1177
		cmp	dx,0
		ja	..@j1176
		jmp	..@j1177
..@j1176:
		mov	ax,word [bp-10]
		push	ax
		push	word [bp+4]
		mov	ax,0
		push	ax
		call	SYSTEM_$$_FILLCHAR$formal$SMALLINT$CHAR
..@j1177:
..@j1082:
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
EXTERN	SYSTEM_$$_IORESULT$$WORD
EXTERN	SYSTEM_$$_BLOCKREAD$file$formal$LONGINT$LONGINT
EXTERN	U_$OBJECTS_$$_INVALIDHANDLE
EXTERN	SYSTEM_$$_FILLCHAR$formal$SMALLINT$CHAR
