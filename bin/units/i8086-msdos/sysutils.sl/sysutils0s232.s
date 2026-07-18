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
	GLOBAL SYSUTILS$_$FLOATTOTEXTFMT$crc533E3309_$$_GETFORMATOPTIONS
SYSUTILS$_$FLOATTOTEXTFMT$crc533E3309_$$_GETFORMATOPTIONS:
		push	bp
		mov	bp,sp
		sub	sp,6
		mov	byte [bp-3],0
		mov	byte [bp-4],0
		mov	bx,word [bp+4]
		mov	ax,word [bx-54]
		mov	word [bp-2],ax
		mov	bx,word [bp+4]
		mov	word [bx-58],0
		mov	word [bp-6],1
		mov	bx,word [bp+4]
		mov	byte [bx-69],0
		mov	bx,word [bp+4]
		mov	word [bx-68],0
		mov	bx,word [bp+4]
		mov	word [bx-66],0
		mov	bx,word [bp+4]
		mov	word [bx-64],0
		mov	bx,word [bp+4]
		mov	word [bx-62],0
		jmp	..@j8092
	ALIGN 2
..@j8091:
		mov	bx,word [bp-2]
		mov	al,byte [bx]
		cmp	al,34
		jb	..@j8095
		sub	al,34
		je	..@j8096
		sub	al,5
		je	..@j8097
		jmp	..@j8095
..@j8096:
		cmp	byte [bp-3],0
		je	..@j8098
		jmp	..@j8099
..@j8098:
		cmp	byte [bp-4],0
		mov	al,0
		jne	..@j8102
		inc	ax
..@j8102:
		mov	byte [bp-4],al
..@j8099:
		inc	word [bp-2]
		jmp	..@j8094
..@j8097:
		cmp	byte [bp-4],0
		je	..@j8103
		jmp	..@j8104
..@j8103:
		cmp	byte [bp-3],0
		mov	al,0
		jne	..@j8107
		inc	ax
..@j8107:
		mov	byte [bp-3],al
..@j8104:
		inc	word [bp-2]
		jmp	..@j8094
..@j8095:
		cmp	byte [bp-3],0
		jne	..@j8109
		jmp	..@j8110
..@j8110:
		cmp	byte [bp-4],0
		jne	..@j8109
		jmp	..@j8108
..@j8108:
		mov	bx,word [bp-2]
		mov	al,byte [bx]
		cmp	al,35
		jb	..@j8112
		sub	al,35
		je	..@j8114
		sub	al,9
		je	..@j8116
		sub	al,2
		je	..@j8115
		sub	al,2
		je	..@j8113
		sub	al,21
		je	..@j8117
		sub	al,32
		je	..@j8117
		jmp	..@j8112
..@j8113:
		mov	ax,word [bp-6]
		cmp	ax,1
		jl	..@j8119
		dec	ax
		je	..@j8120
		sub	ax,3
		je	..@j8121
		jmp	..@j8119
..@j8120:
		mov	word [bp-6],2
		jmp	..@j8118
..@j8121:
		mov	word [bp-6],3
		mov	bx,word [bp+4]
		mov	si,word [bp+4]
		mov	ax,word [bx-62]
		add	word [si-64],ax
		mov	bx,word [bp+4]
		mov	word [bx-62],0
		jmp	..@j8118
..@j8119:
..@j8118:
		mov	bx,word [bp+4]
		mov	ax,word [bp-6]
		mov	si,ax
		shl	si,1
		inc	word [bx+si-70]
		inc	word [bp-2]
		jmp	..@j8111
..@j8114:
		cmp	word [bp-6],3
		je	..@j8128
		jmp	..@j8129
..@j8128:
		mov	word [bp-6],4
..@j8129:
		mov	bx,word [bp+4]
		mov	ax,word [bp-6]
		mov	si,ax
		shl	si,1
		inc	word [bx+si-70]
		inc	word [bp-2]
		jmp	..@j8111
..@j8115:
		cmp	word [bp-6],3
		jl	..@j8132
		jmp	..@j8133
..@j8132:
		mov	word [bp-6],3
..@j8133:
		inc	word [bp-2]
		jmp	..@j8111
..@j8116:
		mov	bx,word [bp+4]
		cmp	byte [TC_$SYSUTILS_$$_DEFAULTFORMATSETTINGS+2],0
		mov	al,0
		je	..@j8138
		inc	ax
..@j8138:
		mov	byte [bx-69],al
		inc	word [bp-2]
		jmp	..@j8111
..@j8117:
		mov	bx,word [bp+4]
		cmp	word [bx-58],0
		je	..@j8139
		jmp	..@j8140
..@j8139:
		mov	bx,word [bp-2]
		cmp	byte [bx],69
		je	..@j8141
		jmp	..@j8142
..@j8141:
		mov	bx,word [bp+4]
		mov	word [bx-58],1
		jmp	..@j8145
..@j8142:
		mov	bx,word [bp+4]
		mov	word [bx-58],3
..@j8145:
		inc	word [bp-2]
		mov	bx,word [bp+4]
		mov	ax,word [bx-56]
		cmp	ax,word [bp-2]
		ja	..@j8148
		jmp	..@j8149
..@j8148:
		mov	bx,word [bp-2]
		mov	al,byte [bx]
		cmp	al,43
		jb	..@j8151
		sub	al,43
		je	..@j8152
		sub	al,2
		je	..@j8153
		jmp	..@j8151
..@j8152:
		jmp	..@j8150
..@j8153:
		mov	bx,word [bp+4]
		inc	word [bx-58]
		jmp	..@j8150
..@j8151:
		mov	bx,word [bp+4]
		mov	word [bx-58],0
..@j8150:
		mov	bx,word [bp+4]
		cmp	word [bx-58],0
		jne	..@j8156
		jmp	..@j8157
..@j8156:
		inc	word [bp-2]
		mov	bx,word [bp+4]
		mov	word [bx-60],0
		jmp	..@j8161
	ALIGN 2
..@j8160:
		mov	bx,word [bp+4]
		inc	word [bx-60]
		inc	word [bp-2]
..@j8161:
		mov	bx,word [bp+4]
		mov	ax,word [bx-56]
		cmp	ax,word [bp-2]
		ja	..@j8164
		jmp	..@j8162
..@j8164:
		mov	bx,word [bp+4]
		cmp	word [bx-60],4
		jl	..@j8163
		jmp	..@j8162
..@j8163:
		mov	bx,word [bp-2]
		mov	al,byte [bx]
		mov	ah,0
		sub	ax,48
		cmp	ax,10
		jb	..@j8165
..@j8165:
		jc	..@j8160
		jmp	..@j8162
..@j8162:
..@j8157:
		jmp	..@j8166
..@j8149:
		mov	bx,word [bp+4]
		mov	word [bx-58],0
..@j8166:
		jmp	..@j8169
..@j8140:
		inc	word [bp-2]
..@j8169:
		jmp	..@j8111
..@j8112:
		inc	word [bp-2]
..@j8111:
		jmp	..@j8170
..@j8109:
		inc	word [bp-2]
..@j8170:
..@j8094:
..@j8092:
		mov	bx,word [bp+4]
		mov	ax,word [bx-56]
		cmp	ax,word [bp-2]
		ja	..@j8091
		jmp	..@j8093
..@j8093:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	TC_$SYSUTILS_$$_DEFAULTFORMATSETTINGS
