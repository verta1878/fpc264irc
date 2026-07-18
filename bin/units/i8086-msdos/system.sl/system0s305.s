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
	GLOBAL SYSTEM_$$_VAL_REAL$SHORTSTRING$SMALLINT$$EXTENDED
SYSTEM_$$_VAL_REAL$SHORTSTRING$SMALLINT$$EXTENDED:
		push	bp
		mov	bp,sp
		sub	sp,200
		mov	bx,word [bp+4]
		mov	word [bx],1
		mov	word [bp-50],1
		mov	bx,word [bp+6]
		mov	al,byte [bx]
		mov	ah,0
		mov	word [bp-52],ax
		push	bp
		lea	ax,[bp-10]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		call	SYSTEM$_$VAL_REAL$SHORTSTRING$SMALLINT$$EXTENDED_$$_PACK_FLOAT$EXTENDED$BOOLEAN$SMALLINT$QWORD
		mov	byte [bp-64],0
		jmp	..@j6002
	ALIGN 2
..@j6001:
		mov	bx,word [bp+6]
		mov	al,byte [bp-50]
		mov	byte [bp-122],al
		mov	byte [bp-121],0
		mov	si,word [bp-122]
		mov	al,byte [bx+si]
		mov	byte [bp-11],al
		mov	al,byte [bp-11]
		cmp	al,43
		jb	..@j6007
		sub	al,43
		je	..@j6008
		sub	al,2
		je	..@j6009
		jmp	..@j6007
..@j6008:
		inc	word [bp-50]
		jmp	..@j6003
		jmp	..@j6006
..@j6009:
		mov	byte [bp-64],1
		inc	word [bp-50]
		jmp	..@j6003
		jmp	..@j6006
..@j6007:
		cmp	byte [bp-11],32
		jne	..@j6012
		jmp	..@j6013
..@j6012:
		jmp	..@j6003
..@j6013:
..@j6006:
		inc	word [bp-50]
..@j6002:
		mov	ax,word [bp-50]
		cmp	ax,word [bp-52]
		jle	..@j6001
		jmp	..@j6003
..@j6003:
		mov	ax,word [bp-50]
		cmp	ax,word [bp-52]
		jg	..@j6014
		jmp	..@j6015
..@j6014:
		mov	bx,word [bp+4]
		mov	ax,word [bp-50]
		mov	word [bx],ax
		jmp	..@j5969
..@j6015:
		mov	bx,word [bp+6]
		mov	al,byte [bp-50]
		mov	byte [bp-148],al
		mov	byte [bp-147],0
		mov	si,word [bp-148]
		mov	al,byte [bx+si]
		cmp	al,46
		jb	..@j6019
		sub	al,46
		je	..@j6020
		sub	al,2
		jb	..@j6019
		sub	al,9
		jbe	..@j6020
		sub	al,12
		je	..@j6020
		sub	al,32
		je	..@j6020
		jmp	..@j6019
..@j6020:
		mov	byte [bp-66],0
		jmp	..@j6018
..@j6019:
		mov	byte [bp-66],1
..@j6018:
		cmp	byte [bp-66],0
		jne	..@j6025
		jmp	..@j6026
..@j6025:
		mov	word [bp-20],0
		mov	word [bp-18],0
		mov	word [bp-16],0
		mov	word [bp-14],-32768
		push	bp
		push	word [bp-50]
		mov	ax,word [bp+6]
		push	ax
		mov	ax,word TC_$SYSTEM_$$_C_STR_INF
		push	ax
		call	SYSTEM$_$VAL_REAL$SHORTSTRING$SMALLINT$$EXTENDED_$$_MATCH_SPECIAL$crcD4AB17D1
		test	al,al
		je	..@j6029
		jmp	..@j6030
..@j6029:
		push	bp
		push	word [bp-50]
		mov	ax,word [bp+6]
		push	ax
		mov	ax,word TC_$SYSTEM_$$_C_STR_QNAN
		push	ax
		call	SYSTEM$_$VAL_REAL$SHORTSTRING$SMALLINT$$EXTENDED_$$_MATCH_SPECIAL$crcD4AB17D1
		test	al,al
		jne	..@j6039
		jmp	..@j6040
..@j6039:
		mov	byte [bp-64],1
		mov	word [bp-20],0
		mov	word [bp-18],0
		mov	word [bp-16],0
		mov	word [bp-14],-16384
		jmp	..@j6053
..@j6040:
		mov	byte [bp-66],0
..@j6053:
..@j6030:
		cmp	byte [bp-66],0
		jne	..@j6056
		jmp	..@j6057
..@j6056:
		push	bp
		lea	ax,[bp-10]
		push	ax
		mov	al,byte [bp-64]
		mov	ah,0
		push	ax
		mov	ax,32767
		push	ax
		push	word [bp-14]
		push	word [bp-16]
		push	word [bp-18]
		push	word [bp-20]
		call	SYSTEM$_$VAL_REAL$SHORTSTRING$SMALLINT$$EXTENDED_$$_PACK_FLOAT$EXTENDED$BOOLEAN$SMALLINT$QWORD
		mov	word [bp-50],0
..@j6057:
		mov	bx,word [bp+4]
		mov	ax,word [bp-50]
		mov	word [bx],ax
		jmp	..@j5969
..@j6026:
		mov	word [bp-20],0
		mov	word [bp-18],0
		mov	word [bp-16],0
		mov	word [bp-14],0
		mov	word [bp-40],0
		mov	word [bp-38],0
		mov	word [bp-42],0
		mov	word [bp-44],0
		mov	byte [bp-62],0
		mov	byte [bp-63],0
		jmp	..@j6085
	ALIGN 2
..@j6084:
		inc	word [bp-50]
..@j6085:
		mov	ax,word [bp-50]
		cmp	ax,word [bp-52]
		jle	..@j6087
		jmp	..@j6086
..@j6087:
		mov	bx,word [bp+6]
		mov	al,byte [bp-50]
		mov	byte [bp-146],al
		mov	byte [bp-145],0
		mov	si,word [bp-146]
		cmp	byte [bx+si],48
		je	..@j6084
		jmp	..@j6086
..@j6086:
		jmp	..@j6089
	ALIGN 2
..@j6088:
		mov	bx,word [bp+6]
		mov	al,byte [bp-50]
		mov	byte [bp-120],al
		mov	byte [bp-119],0
		mov	si,word [bp-120]
		mov	al,byte [bx+si]
		mov	byte [bp-11],al
		cmp	byte [bp-11],48
		jb	..@j6093
		jmp	..@j6095
..@j6095:
		cmp	byte [bp-11],57
		ja	..@j6093
		jmp	..@j6094
..@j6093:
		jmp	..@j6090
..@j6094:
		mov	al,byte [bp-11]
		mov	ah,0
		sub	ax,48
		mov	byte [bp-61],al
		cmp	word [bp-42],28
		jl	..@j6098
		jmp	..@j6099
..@j6098:
		mov	word [bp-98],bp
		mov	dx,word [bp-20]
		mov	ax,word [bp-18]
		mov	bx,0
		mov	cx,0
		mov	word [bp-106],dx
		mov	word [bp-104],ax
		mov	word [bp-102],bx
		mov	word [bp-100],cx
		mov	dx,0
		mov	al,byte [bp-61]
		mov	byte [bp-174],al
		mov	byte [bp-173],0
		mov	word [bp-160],0
		mov	word [bp-182],0
		mov	ax,word [bp-106]
		mov	bx,word [bp-104]
		mov	si,word [bp-102]
		mov	di,word [bp-100]
		mov	cx,3
..@j6106:
		shl	ax,1
		rcl	bx,1
		rcl	si,1
		rcl	di,1
		loop	..@j6106
		add	ax,word [bp-106]
		adc	bx,word [bp-104]
		adc	si,word [bp-102]
		adc	di,word [bp-100]
		add	word [bp-174],ax
		adc	dx,bx
		adc	word [bp-160],si
		adc	word [bp-182],di
		mov	ax,word [bp-174]
		mov	word [bp-168],ax
		mov	word [bp-154],dx
		mov	ax,word [bp-160]
		mov	dx,word [bp-182]
		mov	si,word [bp-106]
		mov	di,word [bp-104]
		mov	cx,word [bp-102]
		mov	bx,word [bp-100]
		add	si,word [bp-168]
		adc	di,word [bp-154]
		adc	cx,ax
		adc	bx,dx
		mov	word [bp-106],si
		mov	word [bp-104],di
		mov	word [bp-102],cx
		mov	word [bp-100],bx
		mov	cx,word [bp-40]
		mov	bx,word [bp-38]
		mov	dx,0
		mov	ax,0
		mov	word [bp-114],cx
		mov	word [bp-112],bx
		mov	word [bp-110],dx
		mov	word [bp-108],ax
		mov	dx,word [bp-20]
		mov	si,word [bp-18]
		mov	ax,word [bp-16]
		mov	bx,word [bp-14]
		mov	cx,32
..@j6113:
		shr	bx,1
		rcr	ax,1
		rcr	si,1
		rcr	dx,1
		loop	..@j6113
		mov	word [bp-194],dx
		mov	word [bp-192],si
		mov	word [bp-194],dx
		mov	word [bp-192],si
		mov	dx,0
		mov	bx,0
		mov	di,word [bp-114]
		mov	si,word [bp-112]
		mov	ax,word [bp-110]
		mov	word [bp-132],ax
		mov	ax,word [bp-108]
		mov	cx,32
..@j6116:
		shl	di,1
		rcl	si,1
		rcl	word [bp-132],1
		rcl	ax,1
		loop	..@j6116
		add	word [bp-194],di
		adc	word [bp-192],si
		adc	dx,word [bp-132]
		adc	bx,ax
		mov	ax,word [bp-194]
		mov	word [bp-114],ax
		mov	ax,word [bp-192]
		mov	word [bp-112],ax
		mov	word [bp-110],dx
		mov	word [bp-108],bx
		mov	ax,word [bp-106]
		mov	si,word [bp-104]
		mov	dx,word [bp-102]
		mov	bx,word [bp-100]
		mov	cx,32
..@j6119:
		shr	bx,1
		rcr	dx,1
		rcr	si,1
		rcr	ax,1
		loop	..@j6119
		mov	word [bp-190],ax
		mov	word [bp-198],si
		mov	word [bp-190],ax
		mov	word [bp-198],si
		mov	bx,0
		mov	word [bp-180],0
		mov	dx,word [bp-114]
		mov	si,word [bp-112]
		mov	ax,word [bp-110]
		mov	di,word [bp-108]
		mov	cx,3
..@j6122:
		shl	dx,1
		rcl	si,1
		rcl	ax,1
		rcl	di,1
		loop	..@j6122
		add	dx,word [bp-114]
		adc	si,word [bp-112]
		adc	ax,word [bp-110]
		adc	di,word [bp-108]
		add	word [bp-190],dx
		adc	word [bp-198],si
		adc	bx,ax
		adc	word [bp-180],di
		mov	ax,word [bp-190]
		mov	word [bp-166],ax
		mov	ax,word [bp-198]
		mov	word [bp-150],ax
		mov	ax,bx
		mov	dx,word [bp-180]
		mov	si,word [bp-114]
		mov	di,word [bp-112]
		mov	cx,word [bp-110]
		mov	bx,word [bp-108]
		add	si,word [bp-166]
		adc	di,word [bp-150]
		adc	cx,ax
		adc	bx,dx
		mov	word [bp-114],si
		mov	word [bp-112],di
		mov	word [bp-110],cx
		mov	word [bp-108],bx
		mov	bx,word [bp-114]
		mov	si,word [bp-112]
		mov	dx,word [bp-110]
		mov	ax,word [bp-108]
		mov	cx,32
..@j6127:
		shr	ax,1
		rcr	dx,1
		rcr	si,1
		rcr	bx,1
		loop	..@j6127
		mov	word [bp-40],bx
		mov	word [bp-38],si
		mov	dx,word [bp-114]
		mov	bx,word [bp-112]
		mov	ax,word [bp-110]
		mov	word [bp-126],ax
		mov	ax,word [bp-108]
		mov	word [bp-130],ax
		mov	cx,32
..@j6132:
		shl	dx,1
		rcl	bx,1
		rcl	word [bp-126],1
		rcl	word [bp-130],1
		loop	..@j6132
		mov	di,word [bp-106]
		mov	ax,word [bp-104]
		mov	cx,0
		mov	si,0
		add	dx,di
		adc	bx,ax
		adc	word [bp-126],cx
		adc	word [bp-130],si
		mov	word [bp-20],dx
		mov	word [bp-18],bx
		mov	ax,word [bp-126]
		mov	word [bp-16],ax
		mov	ax,word [bp-130]
		mov	word [bp-14],ax
		jmp	..@j6134
..@j6099:
		cmp	word [bp-42],28
		je	..@j6135
		jmp	..@j6136
..@j6135:
		mov	al,byte [bp-61]
		mov	byte [bp-62],al
		jmp	..@j6139
..@j6136:
		mov	dl,byte [bp-63]
		mov	al,byte [bp-61]
		or	al,dl
		mov	byte [bp-63],al
..@j6139:
		inc	word [bp-44]
..@j6134:
		inc	word [bp-42]
		inc	word [bp-50]
..@j6089:
		mov	ax,word [bp-50]
		cmp	ax,word [bp-52]
		jle	..@j6088
		jmp	..@j6090
..@j6090:
		mov	ax,word [bp-50]
		cmp	ax,word [bp-52]
		jle	..@j6144
		jmp	..@j6143
..@j6144:
		mov	bx,word [bp+6]
		mov	al,byte [bp-50]
		mov	byte [bp-140],al
		mov	byte [bp-139],0
		mov	si,word [bp-140]
		cmp	byte [bx+si],46
		je	..@j6142
		jmp	..@j6143
..@j6142:
		inc	word [bp-50]
		cmp	word [bp-42],0
		je	..@j6145
		jmp	..@j6146
..@j6145:
		jmp	..@j6148
	ALIGN 2
..@j6147:
		dec	word [bp-44]
		inc	word [bp-50]
..@j6148:
		mov	ax,word [bp-50]
		cmp	ax,word [bp-52]
		jle	..@j6150
		jmp	..@j6149
..@j6150:
		mov	bx,word [bp+6]
		mov	al,byte [bp-50]
		mov	byte [bp-138],al
		mov	byte [bp-137],0
		mov	si,word [bp-138]
		cmp	byte [bx+si],48
		je	..@j6147
		jmp	..@j6149
..@j6149:
..@j6146:
		jmp	..@j6152
	ALIGN 2
..@j6151:
		mov	bx,word [bp+6]
		mov	al,byte [bp-50]
		mov	byte [bp-118],al
		mov	byte [bp-117],0
		mov	si,word [bp-118]
		mov	al,byte [bx+si]
		mov	byte [bp-11],al
		cmp	byte [bp-11],48
		jb	..@j6156
		jmp	..@j6158
..@j6158:
		cmp	byte [bp-11],57
		ja	..@j6156
		jmp	..@j6157
..@j6156:
		jmp	..@j6153
..@j6157:
		mov	al,byte [bp-11]
		mov	ah,0
		sub	ax,48
		mov	byte [bp-61],al
		cmp	word [bp-42],28
		jl	..@j6161
		jmp	..@j6162
..@j6161:
		mov	word [bp-98],bp
		mov	dx,word [bp-20]
		mov	cx,word [bp-18]
		mov	ax,0
		mov	bx,0
		mov	word [bp-106],dx
		mov	word [bp-104],cx
		mov	word [bp-102],ax
		mov	word [bp-100],bx
		mov	bx,0
		mov	al,byte [bp-61]
		mov	byte [bp-172],al
		mov	byte [bp-171],0
		mov	word [bp-158],0
		mov	word [bp-178],0
		mov	si,word [bp-106]
		mov	dx,word [bp-104]
		mov	di,word [bp-102]
		mov	ax,word [bp-100]
		mov	cx,3
..@j6169:
		shl	si,1
		rcl	dx,1
		rcl	di,1
		rcl	ax,1
		loop	..@j6169
		add	si,word [bp-106]
		adc	dx,word [bp-104]
		adc	di,word [bp-102]
		adc	ax,word [bp-100]
		add	word [bp-172],si
		adc	bx,dx
		adc	word [bp-158],di
		adc	word [bp-178],ax
		mov	ax,word [bp-172]
		mov	word [bp-164],ax
		mov	word [bp-152],bx
		mov	si,word [bp-158]
		mov	di,word [bp-178]
		mov	ax,word [bp-106]
		mov	bx,word [bp-104]
		mov	dx,word [bp-102]
		mov	cx,word [bp-100]
		add	ax,word [bp-164]
		adc	bx,word [bp-152]
		adc	dx,si
		adc	cx,di
		mov	word [bp-106],ax
		mov	word [bp-104],bx
		mov	word [bp-102],dx
		mov	word [bp-100],cx
		mov	ax,word [bp-40]
		mov	cx,word [bp-38]
		mov	bx,0
		mov	dx,0
		mov	word [bp-114],ax
		mov	word [bp-112],cx
		mov	word [bp-110],bx
		mov	word [bp-108],dx
		mov	dx,word [bp-20]
		mov	si,word [bp-18]
		mov	bx,word [bp-16]
		mov	ax,word [bp-14]
		mov	cx,32
..@j6176:
		shr	ax,1
		rcr	bx,1
		rcr	si,1
		rcr	dx,1
		loop	..@j6176
		mov	word [bp-188],dx
		mov	word [bp-186],si
		mov	word [bp-188],dx
		mov	word [bp-186],si
		mov	dx,0
		mov	bx,0
		mov	ax,word [bp-114]
		mov	word [bp-134],ax
		mov	ax,word [bp-112]
		mov	si,word [bp-110]
		mov	di,word [bp-108]
		mov	cx,32
..@j6179:
		shl	word [bp-134],1
		rcl	ax,1
		rcl	si,1
		rcl	di,1
		loop	..@j6179
		mov	cx,word [bp-188]
		add	cx,word [bp-134]
		mov	word [bp-188],cx
		adc	word [bp-186],ax
		adc	dx,si
		adc	bx,di
		mov	ax,word [bp-188]
		mov	word [bp-114],ax
		mov	ax,word [bp-186]
		mov	word [bp-112],ax
		mov	word [bp-110],dx
		mov	word [bp-108],bx
		mov	bx,word [bp-106]
		mov	si,word [bp-104]
		mov	dx,word [bp-102]
		mov	ax,word [bp-100]
		mov	cx,32
..@j6182:
		shr	ax,1
		rcr	dx,1
		rcr	si,1
		rcr	bx,1
		loop	..@j6182
		mov	word [bp-184],bx
		mov	word [bp-196],si
		mov	word [bp-184],bx
		mov	word [bp-196],si
		mov	bx,0
		mov	word [bp-176],0
		mov	di,word [bp-114]
		mov	ax,word [bp-112]
		mov	si,word [bp-110]
		mov	dx,word [bp-108]
		mov	cx,3
..@j6185:
		shl	di,1
		rcl	ax,1
		rcl	si,1
		rcl	dx,1
		loop	..@j6185
		add	di,word [bp-114]
		adc	ax,word [bp-112]
		adc	si,word [bp-110]
		adc	dx,word [bp-108]
		add	word [bp-184],di
		adc	word [bp-196],ax
		adc	bx,si
		adc	word [bp-176],dx
		mov	ax,word [bp-184]
		mov	word [bp-162],ax
		mov	ax,word [bp-196]
		mov	word [bp-156],ax
		mov	ax,word [bp-176]
		mov	si,word [bp-114]
		mov	di,word [bp-112]
		mov	dx,word [bp-110]
		mov	cx,word [bp-108]
		add	si,word [bp-162]
		adc	di,word [bp-156]
		adc	dx,bx
		adc	cx,ax
		mov	word [bp-114],si
		mov	word [bp-112],di
		mov	word [bp-110],dx
		mov	word [bp-108],cx
		mov	dx,word [bp-114]
		mov	si,word [bp-112]
		mov	ax,word [bp-110]
		mov	bx,word [bp-108]
		mov	cx,32
..@j6190:
		shr	bx,1
		rcr	ax,1
		rcr	si,1
		rcr	dx,1
		loop	..@j6190
		mov	word [bp-40],dx
		mov	word [bp-38],si
		mov	ax,word [bp-114]
		mov	word [bp-124],ax
		mov	ax,word [bp-112]
		mov	word [bp-128],ax
		mov	dx,word [bp-110]
		mov	bx,word [bp-108]
		mov	cx,32
..@j6195:
		shl	word [bp-124],1
		rcl	word [bp-128],1
		rcl	dx,1
		rcl	bx,1
		loop	..@j6195
		mov	di,word [bp-106]
		mov	si,word [bp-104]
		mov	ax,0
		mov	cx,0
		add	word [bp-124],di
		adc	word [bp-128],si
		adc	dx,ax
		adc	bx,cx
		mov	ax,word [bp-124]
		mov	word [bp-20],ax
		mov	ax,word [bp-128]
		mov	word [bp-18],ax
		mov	word [bp-16],dx
		mov	word [bp-14],bx
		dec	word [bp-44]
		jmp	..@j6197
..@j6162:
		cmp	word [bp-42],28
		je	..@j6198
		jmp	..@j6199
..@j6198:
		mov	al,byte [bp-61]
		mov	byte [bp-62],al
		jmp	..@j6202
..@j6199:
		mov	dl,byte [bp-63]
		mov	al,byte [bp-61]
		or	al,dl
		mov	byte [bp-63],al
..@j6202:
..@j6197:
		inc	word [bp-42]
		inc	word [bp-50]
..@j6152:
		mov	ax,word [bp-50]
		cmp	ax,word [bp-52]
		jle	..@j6151
		jmp	..@j6153
..@j6153:
..@j6143:
		cmp	byte [bp-62],5
		je	..@j6208
		jmp	..@j6206
..@j6208:
		cmp	byte [bp-63],0
		je	..@j6207
		jmp	..@j6206
..@j6207:
		mov	bx,word [bp-20]
		mov	cx,word [bp-18]
		mov	dx,word [bp-16]
		mov	ax,word [bp-14]
		and	bx,1
		mov	cx,0
		mov	dx,0
		mov	ax,0
		cmp	ax,0
		jne	..@j6206
		cmp	dx,0
		jne	..@j6206
		cmp	cx,0
		jne	..@j6206
		cmp	bx,0
		jne	..@j6206
		jmp	..@j6205
..@j6205:
		dec	byte [bp-62]
..@j6206:
		cmp	byte [bp-62],5
		jae	..@j6209
		jmp	..@j6210
..@j6209:
		add	word [bp-20],1
		adc	word [bp-18],0
		adc	word [bp-16],0
		adc	word [bp-14],0
		mov	dx,word [bp-20]
		mov	bx,word [bp-18]
		mov	cx,word [bp-16]
		mov	ax,word [bp-14]
		cmp	ax,0
		jne	..@j6212
		cmp	cx,0
		jne	..@j6212
		cmp	bx,0
		jne	..@j6212
		cmp	dx,0
		jne	..@j6212
		jmp	..@j6211
..@j6211:
		add	word [bp-40],1
		adc	word [bp-38],0
..@j6212:
..@j6210:
		mov	word [bp-56],0
		mov	word [bp-54],0
		mov	ax,word [bp-50]
		cmp	ax,word [bp-52]
		jle	..@j6215
		jmp	..@j6216
..@j6215:
		mov	byte [bp-65],0
		mov	bx,word [bp+6]
		mov	al,byte [bp-50]
		mov	byte [bp-142],al
		mov	byte [bp-141],0
		mov	si,word [bp-142]
		mov	al,byte [bx+si]
		cmp	al,69
		jb	..@j6220
		sub	al,69
		je	..@j6221
		sub	al,32
		je	..@j6221
		jmp	..@j6220
..@j6221:
		jmp	..@j6219
..@j6220:
		mov	bx,word [bp+4]
		mov	ax,word [bp-50]
		mov	word [bx],ax
		jmp	..@j5969
..@j6219:
		inc	word [bp-50]
		mov	ax,word [bp-50]
		cmp	ax,word [bp-52]
		jg	..@j6224
		jmp	..@j6225
..@j6224:
		mov	bx,word [bp+4]
		mov	ax,word [bp-50]
		mov	word [bx],ax
		jmp	..@j5969
..@j6225:
		mov	bx,word [bp+6]
		mov	al,byte [bp-50]
		mov	byte [bp-144],al
		mov	byte [bp-143],0
		mov	si,word [bp-144]
		mov	al,byte [bx+si]
		cmp	al,43
		jb	..@j6229
		sub	al,43
		je	..@j6230
		sub	al,2
		je	..@j6231
		jmp	..@j6229
..@j6230:
		inc	word [bp-50]
		jmp	..@j6228
..@j6231:
		mov	byte [bp-65],1
		inc	word [bp-50]
		jmp	..@j6228
..@j6229:
..@j6228:
		jmp	..@j6235
	ALIGN 2
..@j6234:
		mov	bx,word [bp+6]
		mov	al,byte [bp-50]
		mov	byte [bp-116],al
		mov	byte [bp-115],0
		mov	si,word [bp-116]
		mov	al,byte [bx+si]
		mov	byte [bp-11],al
		cmp	byte [bp-11],48
		jb	..@j6239
		jmp	..@j6241
..@j6241:
		cmp	byte [bp-11],57
		ja	..@j6239
		jmp	..@j6240
..@j6239:
		mov	bx,word [bp+4]
		mov	ax,word [bp-50]
		mov	word [bx],ax
		jmp	..@j5969
..@j6240:
		mov	dx,word [bp-56]
		mov	ax,word [bp-54]
		cmp	ax,1
		jl	..@j6244
		jg	..@j6245
		cmp	dx,-31072
		jb	..@j6244
		jmp	..@j6245
..@j6244:
		mov	ax,word [bp-56]
		mov	si,word [bp-54]
		mov	cx,3
..@j6246:
		shl	ax,1
		rcl	si,1
		loop	..@j6246
		mov	bx,word [bp-56]
		mov	dx,word [bp-54]
		add	bx,ax
		adc	dx,si
		mov	cx,0
		mov	al,byte [bp-11]
		mov	ah,0
		add	ax,bx
		adc	cx,dx
		sub	ax,48
		sbb	cx,0
		add	word [bp-56],ax
		adc	word [bp-54],cx
..@j6245:
		inc	word [bp-50]
..@j6235:
		mov	ax,word [bp-50]
		cmp	ax,word [bp-52]
		jle	..@j6234
		jmp	..@j6236
..@j6236:
		cmp	byte [bp-65],0
		jne	..@j6247
		jmp	..@j6248
..@j6247:
		mov	ax,word [bp-56]
		mov	dx,word [bp-54]
		not	dx
		neg	ax
		sbb	dx,-1
		mov	word [bp-56],ax
		mov	word [bp-54],dx
..@j6248:
..@j6216:
		mov	ax,word [bp-44]
		cwd
		mov	bx,word [bp-56]
		mov	cx,word [bp-54]
		add	bx,ax
		adc	cx,dx
		mov	word [bp-60],bx
		mov	word [bp-58],cx
		mov	dx,word [bp-56]
		mov	ax,word [bp-54]
		cmp	ax,1
		jg	..@j6253
		jl	..@j6255
		cmp	dx,-31072
		jae	..@j6253
		jmp	..@j6255
..@j6255:
		mov	dx,word [bp-60]
		mov	ax,word [bp-58]
		cmp	ax,0
		jg	..@j6253
		jl	..@j6254
		cmp	dx,10000
		jae	..@j6253
		jmp	..@j6254
..@j6253:
		mov	word [bp-44],10000
		jmp	..@j6258
..@j6254:
		mov	dx,word [bp-56]
		mov	ax,word [bp-54]
		cmp	ax,-2
		jl	..@j6259
		jg	..@j6261
		cmp	dx,31072
		jbe	..@j6259
		jmp	..@j6261
..@j6261:
		mov	ax,word [bp-60]
		mov	dx,word [bp-58]
		cmp	dx,-1
		jl	..@j6259
		jg	..@j6260
		cmp	ax,-10000
		jbe	..@j6259
		jmp	..@j6260
..@j6259:
		mov	word [bp-44],-10000
		jmp	..@j6264
..@j6260:
		mov	ax,word [bp-60]
		mov	word [bp-44],ax
..@j6264:
..@j6258:
		mov	ax,word [bp-50]
		cmp	ax,word [bp-52]
		jle	..@j6267
		jmp	..@j6268
..@j6267:
		mov	bx,word [bp+4]
		mov	ax,word [bp-50]
		mov	word [bx],ax
		jmp	..@j5969
..@j6268:
		mov	bx,word [bp-40]
		mov	ax,word [bp-38]
		mov	dx,0
		mov	cx,0
		or	bx,word [bp-20]
		or	ax,word [bp-18]
		or	dx,word [bp-16]
		or	cx,word [bp-14]
		cmp	cx,0
		jne	..@j6273
		cmp	dx,0
		jne	..@j6273
		cmp	ax,0
		jne	..@j6273
		cmp	bx,0
		jne	..@j6273
		jmp	..@j6271
..@j6273:
		cmp	word [bp-44],-10000
		jle	..@j6271
		jmp	..@j6272
..@j6271:
		push	bp
		lea	ax,[bp-10]
		push	ax
		mov	al,byte [bp-64]
		mov	ah,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		call	SYSTEM$_$VAL_REAL$SHORTSTRING$SMALLINT$$EXTENDED_$$_PACK_FLOAT$EXTENDED$BOOLEAN$SMALLINT$QWORD
		mov	bx,word [bp+4]
		mov	word [bx],0
		jmp	..@j5969
..@j6272:
		cmp	word [bp-44],10000
		jge	..@j6286
		jmp	..@j6287
..@j6286:
		mov	word [bp-46],1
		jmp	..@j6290
..@j6287:
		mov	dx,word [bp-40]
		mov	ax,word [bp-38]
		cmp	ax,0
		jne	..@j6292
		cmp	dx,0
		jne	..@j6292
		jmp	..@j6291
..@j6291:
		lea	di,[bp-104]
		push	ss
		pop	es
		lea	si,[bp-20]
		cld
		mov	cx,4
		rep
		movsw
		mov	word [bp-106],bp
		push	word [bp-98]
		push	word [bp-100]
		push	word [bp-102]
		push	word [bp-104]
		call	SYSTEM_$$_BSRQWORD$QWORD$$BYTE
		mov	ah,0
		mov	dx,63
		sub	dx,ax
		add	dx,32
		mov	word [bp-48],dx
		jmp	..@j6303
..@j6292:
		mov	ax,word [bp-40]
		mov	word [bp-100],ax
		mov	ax,word [bp-38]
		mov	word [bp-98],ax
		mov	word [bp-102],bp
		push	word [bp-98]
		push	word [bp-100]
		call	SYSTEM_$$_BSRDWORD$LONGWORD$$BYTE
		mov	ah,0
		mov	dx,31
		sub	dx,ax
		mov	word [bp-48],dx
..@j6303:
		lea	di,[bp-96]
		push	ss
		pop	es
		lea	si,[bp-20]
		cld
		mov	cx,4
		rep
		movsw
		mov	ax,word [bp-40]
		mov	word [bp-88],ax
		mov	ax,word [bp-38]
		mov	word [bp-86],ax
		lea	ax,[bp-88]
		push	ax
		lea	ax,[bp-96]
		push	ax
		push	word [bp-48]
		call	SYSTEM_$$_DIY_UTIL_SHL$LONGWORD$QWORD$SMALLINT
		mov	ax,word [bp-48]
		neg	ax
		mov	word [bp-84],ax
		push	bp
		push	word [bp-44]
		lea	ax,[bp-82]
		push	ax
		call	SYSTEM$_$VAL_REAL$SHORTSTRING$SMALLINT$$EXTENDED_$$_FACTOR_10_INEXACT$crcDDB8D7AA
		mov	word [bp-46],ax
..@j6290:
		cmp	word [bp-46],0
		je	..@j6334
		jmp	..@j6335
..@j6334:
		cmp	word [bp-68],0
		jne	..@j6336
		jmp	..@j6337
..@j6336:
		lea	ax,[bp-110]
		push	ax
		lea	ax,[bp-96]
		push	ax
		lea	ax,[bp-82]
		push	ax
		mov	ax,1
		push	ax
		call	SYSTEM_$$_DIY_FP_MULTIPLY$TDIY_FP$TDIY_FP$BOOLEAN$$TDIY_FP
		lea	di,[bp-96]
		push	ss
		pop	es
		lea	si,[bp-110]
		cld
		mov	cx,7
		rep
		movsw
..@j6337:
		mov	bx,word [bp-96]
		mov	cx,word [bp-94]
		mov	ax,word [bp-92]
		mov	dx,word [bp-90]
		and	ax,1
		mov	dx,0
		cmp	dx,0
		jne	..@j6349
		cmp	ax,0
		jne	..@j6349
		cmp	cx,-32768
		jne	..@j6349
		cmp	bx,0
		jne	..@j6349
		jmp	..@j6348
..@j6348:
		mov	byte [bp-61],0
		jmp	..@j6352
..@j6349:
		mov	dx,word [bp-96]
		mov	ax,word [bp-94]
		mov	cx,word [bp-92]
		mov	bx,word [bp-90]
		mov	dx,0
		and	ax,-32768
		mov	cx,0
		mov	bx,0
		cmp	bx,0
		jne	..@j6355
		cmp	cx,0
		jne	..@j6355
		cmp	ax,0
		jne	..@j6355
		cmp	dx,0
		jne	..@j6355
		jmp	..@j6356
..@j6355:
		mov	al,1
		jmp	..@j6357
..@j6356:
		mov	al,0
..@j6357:
		mov	byte [bp-61],al
..@j6352:
		lea	ax,[bp-88]
		push	ax
		lea	ax,[bp-96]
		push	ax
		mov	ax,32
		push	ax
		call	SYSTEM_$$_DIY_UTIL_SHR$LONGWORD$QWORD$SMALLINT
		cmp	byte [bp-61],0
		jne	..@j6364
		jmp	..@j6365
..@j6364:
		mov	bx,0
		mov	cl,byte [bp-61]
		mov	ch,0
		mov	ax,0
		mov	dx,0
		mov	word [bp-104],cx
		mov	word [bp-102],bx
		mov	word [bp-100],ax
		mov	word [bp-98],dx
		lea	ax,[bp-96]
		mov	word [bp-200],ax
		lea	ax,[bp-88]
		mov	bx,ax
		mov	si,word [bp-200]
		mov	ax,word [si]
		mov	si,word [bp-200]
		mov	dx,word [si+2]
		mov	si,word [bp-200]
		mov	cx,word [si+4]
		mov	si,word [bp-200]
		mov	di,word [si+6]
		add	ax,word [bp-104]
		adc	dx,word [bp-102]
		adc	cx,word [bp-100]
		adc	di,word [bp-98]
		mov	word [bp-112],ax
		mov	word [bp-110],dx
		mov	word [bp-108],cx
		mov	word [bp-106],di
		mov	ax,word [bp-112]
		mov	dx,word [bp-110]
		mov	cx,word [bp-108]
		mov	di,word [bp-106]
		mov	si,word [bp-200]
		cmp	di,word [si+6]
		jb	..@j6377
		ja	..@j6378
		mov	si,word [bp-200]
		cmp	cx,word [si+4]
		jb	..@j6377
		ja	..@j6378
		mov	si,word [bp-200]
		cmp	dx,word [si+2]
		jb	..@j6377
		ja	..@j6378
		mov	si,word [bp-200]
		cmp	ax,word [si]
		jb	..@j6377
		jmp	..@j6378
		jmp	..@j6378
..@j6377:
		mov	al,1
		jmp	..@j6379
..@j6378:
		mov	al,0
..@j6379:
		mov	si,0
		mov	ah,0
		mov	dx,word [bx]
		mov	cx,word [bx+2]
		mov	di,ax
		mov	ax,si
		add	di,dx
		adc	ax,cx
		mov	word [bx],di
		mov	word [bx+2],ax
		mov	di,word [bp-200]
		push	ds
		pop	es
		lea	si,[bp-112]
		cld
		mov	cx,4
		rep
		movsw
..@j6365:
		mov	ax,word [bp-88]
		mov	dx,word [bp-86]
		cmp	dx,0
		jne	..@j6382
		cmp	ax,0
		jne	..@j6382
		jmp	..@j6383
..@j6382:
		lea	ax,[bp-88]
		push	ax
		lea	ax,[bp-96]
		push	ax
		mov	ax,1
		push	ax
		call	SYSTEM_$$_DIY_UTIL_SHR$LONGWORD$QWORD$SMALLINT
		inc	word [bp-84]
..@j6383:
		mov	ax,word [bp-84]
		add	ax,16478
		mov	word [bp-84],ax
		cmp	word [bp-84],32767
		jge	..@j6392
		jmp	..@j6393
..@j6392:
		mov	word [bp-46],1
		jmp	..@j6396
..@j6393:
		cmp	word [bp-84],-63
		jl	..@j6397
		jmp	..@j6398
..@j6397:
		mov	word [bp-46],-1
		jmp	..@j6401
..@j6398:
		cmp	word [bp-84],0
		jle	..@j6402
		jmp	..@j6403
..@j6402:
		mov	dx,word [bp-84]
		mov	ax,1
		sub	ax,dx
		mov	word [bp-48],ax
		mov	cx,word [bp-48]
		dec	cx
		mov	bx,1
		mov	si,0
		mov	dx,0
		mov	ax,0
		cmp	cx,64
		jl	..@j6408
		xor	bx,bx
		xor	si,si
		xor	dx,dx
		xor	ax,ax
		jmp	..@j6410
..@j6408:
		test	cx,cx
		je	..@j6410
..@j6409:
		shl	bx,1
		rcl	si,1
		rcl	dx,1
		rcl	ax,1
		loop	..@j6409
..@j6410:
		mov	word [bp-28],bx
		mov	word [bp-26],si
		mov	word [bp-24],dx
		mov	word [bp-22],ax
		mov	ax,word [bp-28]
		mov	dx,word [bp-26]
		mov	bx,word [bp-24]
		mov	si,word [bp-22]
		mov	cx,2
..@j6414:
		shl	ax,1
		rcl	dx,1
		rcl	bx,1
		rcl	si,1
		loop	..@j6414
		sub	ax,1
		sbb	dx,0
		sbb	bx,0
		sbb	si,0
		mov	word [bp-36],ax
		mov	word [bp-34],dx
		mov	word [bp-32],bx
		mov	word [bp-30],si
		mov	ax,word [bp-96]
		mov	cx,word [bp-94]
		mov	bx,word [bp-92]
		mov	dx,word [bp-90]
		and	ax,word [bp-36]
		and	cx,word [bp-34]
		and	bx,word [bp-32]
		and	dx,word [bp-30]
		cmp	dx,word [bp-22]
		jne	..@j6417
		cmp	bx,word [bp-24]
		jne	..@j6417
		cmp	cx,word [bp-26]
		jne	..@j6417
		cmp	ax,word [bp-28]
		jne	..@j6417
		jmp	..@j6416
		jmp	..@j6417
..@j6416:
		mov	byte [bp-61],0
		jmp	..@j6420
..@j6417:
		mov	cx,word [bp-96]
		mov	dx,word [bp-94]
		mov	bx,word [bp-92]
		mov	ax,word [bp-90]
		and	cx,word [bp-28]
		and	dx,word [bp-26]
		and	bx,word [bp-24]
		and	ax,word [bp-22]
		cmp	ax,0
		jne	..@j6423
		cmp	bx,0
		jne	..@j6423
		cmp	dx,0
		jne	..@j6423
		cmp	cx,0
		jne	..@j6423
		jmp	..@j6424
..@j6423:
		mov	al,1
		jmp	..@j6425
..@j6424:
		mov	al,0
..@j6425:
		mov	byte [bp-61],al
..@j6420:
		cmp	word [bp-84],-63
		je	..@j6426
		jmp	..@j6427
..@j6426:
		mov	dx,0
		mov	cl,byte [bp-61]
		mov	ch,0
		mov	bx,0
		mov	ax,0
		mov	word [bp-96],cx
		mov	word [bp-94],dx
		mov	word [bp-92],bx
		mov	word [bp-90],ax
		cmp	byte [bp-61],0
		je	..@j6430
		jmp	..@j6431
..@j6430:
		mov	word [bp-46],-1
..@j6431:
		jmp	..@j6434
..@j6427:
		mov	dx,word [bp-96]
		mov	bx,word [bp-94]
		mov	ax,word [bp-92]
		mov	word [bp-136],ax
		mov	si,word [bp-90]
		mov	cx,word [bp-48]
		cmp	cx,64
		jl	..@j6437
		xor	dx,dx
		xor	bx,bx
		mov	ax,word [bp-136]
		xor	ax,ax
		mov	word [bp-136],ax
		xor	si,si
		jmp	..@j6439
..@j6437:
		test	cx,cx
		je	..@j6439
..@j6438:
		shr	si,1
		rcr	word [bp-136],1
		rcr	bx,1
		rcr	dx,1
		loop	..@j6438
..@j6439:
		mov	cx,0
		mov	al,byte [bp-61]
		mov	byte [bp-170],al
		mov	byte [bp-169],0
		mov	ax,0
		mov	di,0
		add	dx,word [bp-170]
		adc	bx,cx
		adc	word [bp-136],ax
		adc	si,di
		mov	word [bp-96],dx
		mov	word [bp-94],bx
		mov	ax,word [bp-136]
		mov	word [bp-92],ax
		mov	word [bp-90],si
..@j6434:
		mov	word [bp-84],0
		jmp	..@j6442
..@j6403:
..@j6442:
..@j6401:
..@j6396:
..@j6335:
		cmp	word [bp-46],0
		jl	..@j6443
		jmp	..@j6444
..@j6443:
		push	bp
		lea	ax,[bp-10]
		push	ax
		mov	al,byte [bp-64]
		mov	ah,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		call	SYSTEM$_$VAL_REAL$SHORTSTRING$SMALLINT$$EXTENDED_$$_PACK_FLOAT$EXTENDED$BOOLEAN$SMALLINT$QWORD
		jmp	..@j6455
..@j6444:
		cmp	word [bp-46],0
		jg	..@j6456
		jmp	..@j6457
..@j6456:
		push	bp
		lea	ax,[bp-10]
		push	ax
		mov	al,byte [bp-64]
		mov	ah,0
		push	ax
		mov	ax,32767
		push	ax
		mov	ax,-32768
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		call	SYSTEM$_$VAL_REAL$SHORTSTRING$SMALLINT$$EXTENDED_$$_PACK_FLOAT$EXTENDED$BOOLEAN$SMALLINT$QWORD
		jmp	..@j6468
..@j6457:
		push	bp
		lea	ax,[bp-10]
		push	ax
		mov	al,byte [bp-64]
		mov	ah,0
		push	ax
		push	word [bp-84]
		push	word [bp-90]
		push	word [bp-92]
		push	word [bp-94]
		push	word [bp-96]
		call	SYSTEM$_$VAL_REAL$SHORTSTRING$SMALLINT$$EXTENDED_$$_PACK_FLOAT$EXTENDED$BOOLEAN$SMALLINT$QWORD
..@j6468:
..@j6455:
		mov	bx,word [bp+4]
		mov	word [bx],0
..@j5969:
		wait fld	tword [bp-10]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM_$$_DIY_UTIL_SHR$LONGWORD$QWORD$SMALLINT
EXTERN	SYSTEM_$$_DIY_FP_MULTIPLY$TDIY_FP$TDIY_FP$BOOLEAN$$TDIY_FP
EXTERN	SYSTEM$_$VAL_REAL$SHORTSTRING$SMALLINT$$EXTENDED_$$_FACTOR_10_INEXACT$crcDDB8D7AA
EXTERN	SYSTEM_$$_DIY_UTIL_SHL$LONGWORD$QWORD$SMALLINT
EXTERN	SYSTEM_$$_BSRDWORD$LONGWORD$$BYTE
EXTERN	SYSTEM_$$_BSRQWORD$QWORD$$BYTE
EXTERN	TC_$SYSTEM_$$_C_STR_QNAN
EXTERN	SYSTEM$_$VAL_REAL$SHORTSTRING$SMALLINT$$EXTENDED_$$_MATCH_SPECIAL$crcD4AB17D1
EXTERN	TC_$SYSTEM_$$_C_STR_INF
EXTERN	SYSTEM$_$VAL_REAL$SHORTSTRING$SMALLINT$$EXTENDED_$$_PACK_FLOAT$EXTENDED$BOOLEAN$SMALLINT$QWORD
