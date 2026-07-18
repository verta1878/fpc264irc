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
	GLOBAL fpc_val_currency_shortstr
fpc_val_currency_shortstr:
	GLOBAL FPC_VAL_CURRENCY_SHORTSTR
FPC_VAL_CURRENCY_SHORTSTR:
		push	bp
		mov	bp,sp
		sub	sp,68
		wait fldz
		wait fistp	qword [bp-8]
		DB	09bh
		mov	word [bp-16],0
		mov	word [bp-14],0
		mov	word [bp-12],0
		mov	word [bp-10],0
		mov	bx,word [bp+6]
		mov	ax,0
		mov	dl,byte [bx]
		mov	dh,0
		mov	word [bp-36],dx
		mov	word [bp-34],ax
		mov	bx,word [bp+4]
		mov	word [bx],1
		mov	word [bp-32],-1
		mov	word [bp-30],-1
		mov	word [bp-28],0
		mov	word [bp-26],0
		jmp	..@j8054
	ALIGN 2
..@j8053:
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		cwd
		cmp	dx,word [bp-34]
		jg	..@j8056
		jl	..@j8057
		cmp	ax,word [bp-36]
		ja	..@j8056
		jmp	..@j8057
		jmp	..@j8057
..@j8056:
		jmp	..@j8039
		jmp	..@j8058
..@j8057:
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		mov	al,byte [si]
		mov	byte [bp-46],al
		mov	byte [bp-45],0
		mov	si,word [bp-46]
		mov	al,byte [bx+si]
		mov	ah,0
		cmp	ax,9
		je	..@j8061
		cmp	ax,32
		je	..@j8061
..@j8061:
		je	..@j8059
		jmp	..@j8060
..@j8059:
		mov	bx,word [bp+4]
		inc	word [bx]
		jmp	..@j8062
..@j8060:
		jmp	..@j8055
..@j8062:
..@j8058:
..@j8054:
		jmp	..@j8053
..@j8055:
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		mov	al,byte [si]
		mov	byte [bp-52],al
		mov	byte [bp-51],0
		mov	si,word [bp-52]
		mov	al,byte [bx+si]
		cmp	al,43
		jb	..@j8064
		sub	al,43
		je	..@j8065
		sub	al,2
		je	..@j8066
		jmp	..@j8064
..@j8065:
		mov	bx,word [bp+4]
		inc	word [bx]
		jmp	..@j8063
..@j8066:
		mov	word [bp-32],1
		mov	word [bp-30],0
		mov	bx,word [bp+4]
		inc	word [bx]
		jmp	..@j8063
..@j8064:
..@j8063:
		mov	byte [bp-37],0
		mov	word [bp-20],0
		mov	word [bp-18],0
		jmp	..@j8074
	ALIGN 2
..@j8073:
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		mov	al,byte [si]
		mov	byte [bp-42],al
		mov	byte [bp-41],0
		mov	si,word [bp-42]
		mov	al,byte [bx+si]
		cmp	al,46
		jb	..@j8077
		sub	al,46
		je	..@j8079
		sub	al,2
		jb	..@j8077
		sub	al,9
		jbe	..@j8078
		jmp	..@j8077
..@j8078:
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		mov	al,byte [si]
		mov	byte [bp-44],al
		mov	byte [bp-43],0
		mov	si,word [bp-44]
		mov	al,byte [bx+si]
		mov	ah,0
		sub	ax,48
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-24],cx
		mov	word [bp-22],ax
		mov	cx,word [bp-16]
		mov	bx,word [bp-14]
		mov	ax,word [bp-12]
		mov	dx,word [bp-10]
		cmp	dx,word [TC_$SYSTEM$_$fpc_val_currency_shortstr$SHORTSTRING$SMALLINT$$CURRENCY_$$_MININT64EDGE+6]
		jg	..@j8082
		jl	..@j8084
		cmp	ax,word [TC_$SYSTEM$_$fpc_val_currency_shortstr$SHORTSTRING$SMALLINT$$CURRENCY_$$_MININT64EDGE+4]
		ja	..@j8082
		jb	..@j8084
		cmp	bx,word [TC_$SYSTEM$_$fpc_val_currency_shortstr$SHORTSTRING$SMALLINT$$CURRENCY_$$_MININT64EDGE+2]
		ja	..@j8082
		jb	..@j8084
		cmp	cx,word [TC_$SYSTEM$_$fpc_val_currency_shortstr$SHORTSTRING$SMALLINT$$CURRENCY_$$_MININT64EDGE]
		jae	..@j8082
		jmp	..@j8084
		jmp	..@j8084
..@j8084:
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,10
		push	ax
		mov	ax,word [bp-24]
		mov	bx,word [bp-22]
		mov	dx,ax
		mov	si,bx
		mov	cl,15
		sar	si,cl
		mov	dx,si
		add	ax,word [TC_$SYSTEM$_$fpc_val_currency_shortstr$SHORTSTRING$SMALLINT$$CURRENCY_$$_MININT64]
		adc	bx,word [TC_$SYSTEM$_$fpc_val_currency_shortstr$SHORTSTRING$SMALLINT$$CURRENCY_$$_MININT64+2]
		adc	dx,word [TC_$SYSTEM$_$fpc_val_currency_shortstr$SHORTSTRING$SMALLINT$$CURRENCY_$$_MININT64+4]
		adc	si,word [TC_$SYSTEM$_$fpc_val_currency_shortstr$SHORTSTRING$SMALLINT$$CURRENCY_$$_MININT64+6]
		push	si
		push	dx
		push	bx
		push	ax
		call	fpc_div_int64
		cmp	ax,word [bp-10]
		jl	..@j8082
		jg	..@j8083
		cmp	bx,word [bp-12]
		jb	..@j8082
		ja	..@j8083
		cmp	cx,word [bp-14]
		jb	..@j8082
		ja	..@j8083
		cmp	dx,word [bp-16]
		jbe	..@j8082
		jmp	..@j8083
		jmp	..@j8083
..@j8082:
		push	word [bp-10]
		push	word [bp-12]
		push	word [bp-14]
		push	word [bp-16]
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,10
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		call	fpc_mul_int64
		mov	word [bp-60],dx
		mov	word [bp-58],cx
		mov	word [bp-54],bx
		mov	di,word [bp-24]
		mov	dx,word [bp-22]
		mov	bx,di
		mov	si,dx
		mov	cl,15
		sar	si,cl
		mov	bx,si
		sub	word [bp-60],di
		sbb	word [bp-58],dx
		sbb	word [bp-54],bx
		sbb	ax,si
		mov	dx,word [bp-60]
		mov	word [bp-16],dx
		mov	dx,word [bp-58]
		mov	word [bp-14],dx
		mov	dx,word [bp-54]
		mov	word [bp-12],dx
		mov	word [bp-10],ax
		add	word [bp-20],1
		adc	word [bp-18],0
		jmp	..@j8097
..@j8083:
		mov	dx,word [bp-28]
		mov	ax,word [bp-26]
		cmp	ax,0
		jne	..@j8099
		cmp	dx,0
		jne	..@j8099
		jmp	..@j8098
..@j8098:
		jmp	..@j8039
		jmp	..@j8100
..@j8099:
		cmp	byte [bp-37],0
		je	..@j8104
		jmp	..@j8102
..@j8104:
		mov	dx,word [bp-24]
		mov	ax,word [bp-22]
		cmp	ax,0
		jg	..@j8103
		jl	..@j8102
		cmp	dx,5
		jae	..@j8103
		jmp	..@j8102
..@j8103:
		mov	cx,word [bp-16]
		mov	ax,word [bp-14]
		mov	dx,word [bp-12]
		mov	bx,word [bp-10]
		cmp	bx,word [TC_$SYSTEM$_$fpc_val_currency_shortstr$SHORTSTRING$SMALLINT$$CURRENCY_$$_MININT64+6]
		jg	..@j8101
		jl	..@j8102
		cmp	dx,word [TC_$SYSTEM$_$fpc_val_currency_shortstr$SHORTSTRING$SMALLINT$$CURRENCY_$$_MININT64+4]
		ja	..@j8101
		jb	..@j8102
		cmp	ax,word [TC_$SYSTEM$_$fpc_val_currency_shortstr$SHORTSTRING$SMALLINT$$CURRENCY_$$_MININT64+2]
		ja	..@j8101
		jb	..@j8102
		cmp	cx,word [TC_$SYSTEM$_$fpc_val_currency_shortstr$SHORTSTRING$SMALLINT$$CURRENCY_$$_MININT64]
		ja	..@j8101
		jmp	..@j8102
		jmp	..@j8102
..@j8101:
		sub	word [bp-16],1
		sbb	word [bp-14],0
		sbb	word [bp-12],0
		sbb	word [bp-10],0
..@j8102:
		mov	byte [bp-37],1
..@j8100:
..@j8097:
		jmp	..@j8076
..@j8079:
		mov	dx,word [bp-28]
		mov	ax,word [bp-26]
		cmp	ax,0
		jne	..@j8108
		cmp	dx,0
		jne	..@j8108
		jmp	..@j8107
..@j8107:
		mov	word [bp-28],1
		mov	word [bp-26],0
		mov	word [bp-20],0
		mov	word [bp-18],0
		jmp	..@j8113
..@j8108:
		jmp	..@j8039
..@j8113:
		jmp	..@j8076
..@j8077:
		jmp	..@j8075
..@j8076:
		mov	bx,word [bp+4]
		inc	word [bx]
..@j8074:
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		cwd
		cmp	dx,word [bp-34]
		jl	..@j8073
		jg	..@j8075
		cmp	ax,word [bp-36]
		jbe	..@j8073
		jmp	..@j8075
		jmp	..@j8075
..@j8075:
		mov	dx,word [bp-20]
		mov	ax,word [bp-18]
		cmp	ax,0
		jne	..@j8115
		cmp	dx,0
		jne	..@j8115
		jmp	..@j8116
..@j8116:
		mov	ax,word [bp-28]
		mov	dx,word [bp-26]
		cmp	dx,0
		jne	..@j8115
		cmp	ax,0
		jne	..@j8115
		jmp	..@j8114
..@j8114:
		jmp	..@j8039
..@j8115:
		mov	dx,word [bp-28]
		mov	ax,word [bp-26]
		cmp	ax,0
		jne	..@j8117
		cmp	dx,0
		jne	..@j8117
		jmp	..@j8118
..@j8117:
		mov	ax,word [bp-20]
		mov	word [bp-28],ax
		mov	ax,word [bp-18]
		mov	word [bp-26],ax
..@j8118:
		mov	cx,word [bp-28]
		mov	bx,word [bp-26]
		mov	ax,4
		mov	dx,0
		sub	ax,cx
		sbb	dx,bx
		mov	word [bp-28],ax
		mov	word [bp-26],dx
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		cwd
		cmp	dx,word [bp-34]
		jl	..@j8123
		jg	..@j8124
		cmp	ax,word [bp-36]
		jbe	..@j8123
		jmp	..@j8124
		jmp	..@j8124
..@j8123:
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		mov	al,byte [si]
		mov	byte [bp-50],al
		mov	byte [bp-49],0
		mov	si,word [bp-50]
		mov	al,byte [bx+si]
		mov	ah,0
		cmp	ax,69
		je	..@j8127
		cmp	ax,101
		je	..@j8127
..@j8127:
		je	..@j8125
		jmp	..@j8126
..@j8125:
		mov	bx,word [bp+4]
		inc	word [bx]
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		cwd
		cmp	dx,word [bp-34]
		jg	..@j8128
		jl	..@j8129
		cmp	ax,word [bp-36]
		ja	..@j8128
		jmp	..@j8129
		jmp	..@j8129
..@j8128:
		jmp	..@j8039
..@j8129:
		mov	word [bp-20],1
		mov	word [bp-18],0
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		mov	al,byte [si]
		mov	byte [bp-48],al
		mov	byte [bp-47],0
		mov	si,word [bp-48]
		mov	al,byte [bx+si]
		cmp	al,43
		jb	..@j8133
		sub	al,43
		je	..@j8134
		sub	al,2
		je	..@j8135
		jmp	..@j8133
..@j8134:
		mov	bx,word [bp+4]
		inc	word [bx]
		jmp	..@j8132
..@j8135:
		mov	word [bp-20],-1
		mov	word [bp-18],-1
		mov	bx,word [bp+4]
		inc	word [bx]
		jmp	..@j8132
..@j8133:
..@j8132:
		mov	word [bp-24],0
		mov	word [bp-22],0
		jmp	..@j8141
	ALIGN 2
..@j8140:
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		mov	al,byte [si]
		mov	byte [bp-40],al
		mov	byte [bp-39],0
		mov	si,word [bp-40]
		mov	al,byte [bx+si]
		mov	ah,0
		sub	ax,48
		cmp	ax,10
		jb	..@j8145
..@j8145:
		jc	..@j8143
		jmp	..@j8144
..@j8143:
		mov	ax,word [bp-24]
		mov	dx,word [bp-22]
		cmp	dx,0
		jg	..@j8146
		jl	..@j8147
		cmp	ax,4951
		ja	..@j8146
		jmp	..@j8147
..@j8146:
		jmp	..@j8039
..@j8147:
		push	word [bp-22]
		push	word [bp-24]
		mov	ax,0
		push	ax
		mov	ax,10
		push	ax
		mov	ax,0
		push	ax
		call	fpc_mul_longint
		mov	di,ax
		mov	cx,dx
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		mov	al,byte [si]
		mov	byte [bp-56],al
		mov	byte [bp-55],0
		mov	si,word [bp-56]
		mov	al,byte [bx+si]
		mov	ah,0
		sub	ax,48
		cwd
		mov	bx,ax
		mov	ax,dx
		add	bx,di
		adc	ax,cx
		mov	word [bp-24],bx
		mov	word [bp-22],ax
		mov	bx,word [bp+4]
		inc	word [bx]
		jmp	..@j8156
..@j8144:
		jmp	..@j8039
..@j8156:
..@j8141:
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		cwd
		cmp	dx,word [bp-34]
		jl	..@j8140
		jg	..@j8142
		cmp	ax,word [bp-36]
		jbe	..@j8140
		jmp	..@j8142
		jmp	..@j8142
..@j8142:
		push	word [bp-22]
		push	word [bp-24]
		push	word [bp-18]
		push	word [bp-20]
		mov	ax,0
		push	ax
		call	fpc_mul_longint
		mov	bx,word [bp-28]
		mov	cx,word [bp-26]
		add	ax,bx
		adc	dx,cx
		mov	word [bp-28],ax
		mov	word [bp-26],dx
		jmp	..@j8165
..@j8126:
		jmp	..@j8039
..@j8165:
..@j8124:
		mov	ax,word [bp-28]
		mov	dx,word [bp-26]
		cmp	dx,0
		jg	..@j8166
		jl	..@j8167
		cmp	ax,0
		ja	..@j8166
		jmp	..@j8167
..@j8166:
		mov	ax,word [bp-28]
		mov	word [bp-68],ax
		mov	ax,word [bp-26]
		mov	word [bp-66],ax
		mov	word [bp-20],1
		mov	word [bp-18],0
		mov	ax,word [bp-66]
		cmp	ax,word [bp-18]
		jl	..@j8171
		jg	..@j8173
		mov	ax,word [bp-68]
		cmp	ax,word [bp-20]
		jb	..@j8171
..@j8173:
		sub	word [bp-20],1
		sbb	word [bp-18],0
	ALIGN 2
..@j8172:
		add	word [bp-20],1
		adc	word [bp-18],0
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,10
		push	ax
		push	word [TC_$SYSTEM$_$fpc_val_currency_shortstr$SHORTSTRING$SMALLINT$$CURRENCY_$$_MININT64+6]
		push	word [TC_$SYSTEM$_$fpc_val_currency_shortstr$SHORTSTRING$SMALLINT$$CURRENCY_$$_MININT64+4]
		push	word [TC_$SYSTEM$_$fpc_val_currency_shortstr$SHORTSTRING$SMALLINT$$CURRENCY_$$_MININT64+2]
		push	word [TC_$SYSTEM$_$fpc_val_currency_shortstr$SHORTSTRING$SMALLINT$$CURRENCY_$$_MININT64]
		call	fpc_div_int64
		cmp	ax,word [bp-10]
		jl	..@j8174
		jg	..@j8175
		cmp	bx,word [bp-12]
		jb	..@j8174
		ja	..@j8175
		cmp	cx,word [bp-14]
		jb	..@j8174
		ja	..@j8175
		cmp	dx,word [bp-16]
		jbe	..@j8174
		jmp	..@j8175
		jmp	..@j8175
..@j8174:
		push	word [bp-10]
		push	word [bp-12]
		push	word [bp-14]
		push	word [bp-16]
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,10
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		call	fpc_mul_int64
		mov	word [bp-16],dx
		mov	word [bp-14],cx
		mov	word [bp-12],bx
		mov	word [bp-10],ax
		jmp	..@j8188
..@j8175:
		jmp	..@j8039
..@j8188:
		mov	ax,word [bp-66]
		cmp	ax,word [bp-18]
		jg	..@j8172
		jl	..@j8189
		mov	ax,word [bp-68]
		cmp	ax,word [bp-20]
		ja	..@j8172
..@j8189:
..@j8171:
		jmp	..@j8190
..@j8167:
		mov	ax,word [bp-28]
		mov	dx,word [bp-26]
		not	dx
		neg	ax
		sbb	dx,-1
		mov	word [bp-64],ax
		mov	word [bp-62],dx
		mov	word [bp-20],1
		mov	word [bp-18],0
		mov	ax,word [bp-62]
		cmp	ax,word [bp-18]
		jl	..@j8194
		jg	..@j8196
		mov	ax,word [bp-64]
		cmp	ax,word [bp-20]
		jb	..@j8194
..@j8196:
		sub	word [bp-20],1
		sbb	word [bp-18],0
	ALIGN 2
..@j8195:
		add	word [bp-20],1
		adc	word [bp-18],0
		mov	ax,word [TC_$SYSTEM$_$fpc_val_currency_shortstr$SHORTSTRING$SMALLINT$$CURRENCY_$$_MININT64]
		mov	cx,word [TC_$SYSTEM$_$fpc_val_currency_shortstr$SHORTSTRING$SMALLINT$$CURRENCY_$$_MININT64+2]
		mov	dx,word [TC_$SYSTEM$_$fpc_val_currency_shortstr$SHORTSTRING$SMALLINT$$CURRENCY_$$_MININT64+4]
		mov	bx,word [TC_$SYSTEM$_$fpc_val_currency_shortstr$SHORTSTRING$SMALLINT$$CURRENCY_$$_MININT64+6]
		add	ax,5
		adc	cx,0
		adc	dx,0
		adc	bx,0
		cmp	bx,word [bp-10]
		jl	..@j8197
		jg	..@j8198
		cmp	dx,word [bp-12]
		jb	..@j8197
		ja	..@j8198
		cmp	cx,word [bp-14]
		jb	..@j8197
		ja	..@j8198
		cmp	ax,word [bp-16]
		jbe	..@j8197
		jmp	..@j8198
		jmp	..@j8198
..@j8197:
		sub	word [bp-16],5
		sbb	word [bp-14],0
		sbb	word [bp-12],0
		sbb	word [bp-10],0
..@j8198:
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,10
		push	ax
		push	word [bp-10]
		push	word [bp-12]
		push	word [bp-14]
		push	word [bp-16]
		call	fpc_div_int64
		mov	word [bp-16],dx
		mov	word [bp-14],cx
		mov	word [bp-12],bx
		mov	word [bp-10],ax
		mov	ax,word [bp-62]
		cmp	ax,word [bp-18]
		jg	..@j8195
		jl	..@j8205
		mov	ax,word [bp-64]
		cmp	ax,word [bp-20]
		ja	..@j8195
..@j8205:
..@j8194:
..@j8190:
		mov	ax,word [bp-32]
		mov	dx,word [bp-30]
		cmp	dx,0
		jne	..@j8206
		cmp	ax,1
		jne	..@j8206
		jmp	..@j8207
..@j8206:
		mov	ax,word [bp-16]
		mov	bx,word [bp-14]
		mov	dx,word [bp-12]
		mov	cx,word [bp-10]
		cmp	cx,word [TC_$SYSTEM$_$fpc_val_currency_shortstr$SHORTSTRING$SMALLINT$$CURRENCY_$$_MININT64+6]
		jg	..@j8208
		jl	..@j8209
		cmp	dx,word [TC_$SYSTEM$_$fpc_val_currency_shortstr$SHORTSTRING$SMALLINT$$CURRENCY_$$_MININT64+4]
		ja	..@j8208
		jb	..@j8209
		cmp	bx,word [TC_$SYSTEM$_$fpc_val_currency_shortstr$SHORTSTRING$SMALLINT$$CURRENCY_$$_MININT64+2]
		ja	..@j8208
		jb	..@j8209
		cmp	ax,word [TC_$SYSTEM$_$fpc_val_currency_shortstr$SHORTSTRING$SMALLINT$$CURRENCY_$$_MININT64]
		ja	..@j8208
		jmp	..@j8209
		jmp	..@j8209
..@j8208:
		push	word [bp-10]
		push	word [bp-12]
		push	word [bp-14]
		push	word [bp-16]
		mov	dx,word [bp-32]
		mov	si,word [bp-30]
		mov	bx,dx
		mov	ax,si
		mov	cl,15
		sar	ax,cl
		mov	bx,ax
		push	ax
		push	bx
		push	si
		push	dx
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		call	fpc_mul_int64
		mov	word [bp-16],dx
		mov	word [bp-14],cx
		mov	word [bp-12],bx
		mov	word [bp-10],ax
		jmp	..@j8218
..@j8209:
		jmp	..@j8039
..@j8218:
..@j8207:
		lea	si,[bp-16]
		lea	di,[bp-8]
		push	ss
		pop	es
		cld
		mov	cx,4
		rep
		movsw
		mov	bx,word [bp+4]
		mov	word [bx],0
..@j8039:
		wait fild	qword [bp-8]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	fpc_mul_longint
EXTERN	fpc_mul_int64
EXTERN	fpc_div_int64
EXTERN	TC_$SYSTEM$_$fpc_val_currency_shortstr$SHORTSTRING$SMALLINT$$CURRENCY_$$_MININT64
EXTERN	TC_$SYSTEM$_$fpc_val_currency_shortstr$SHORTSTRING$SMALLINT$$CURRENCY_$$_MININT64EDGE
