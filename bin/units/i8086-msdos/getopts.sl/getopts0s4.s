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
	GLOBAL GETOPTS_$$_INTERNAL_GETOPT$SHORTSTRING$POPTION$POINTER$BOOLEAN$$CHAR
GETOPTS_$$_INTERNAL_GETOPT$SHORTSTRING$POPTION$POINTER$BOOLEAN$$CHAR:
		push	bp
		mov	bp,sp
		sub	sp,814
		mov	byte [U_$GETOPTS_$$_OPTARG],0
		mov	ax,word [U_$GETOPTS_$$_OPTIND]
		mov	dx,word [U_$GETOPTS_$$_OPTIND+2]
		cmp	dx,0
		jne	..@j101
		cmp	ax,0
		jne	..@j101
		jmp	..@j100
..@j100:
		mov	ax,word [bp+10]
		push	ax
		call	GETOPTS_$$_GETOPT_INIT$SHORTSTRING
..@j101:
		mov	dx,word [U_$GETOPTS_$$_OPTIND]
		mov	ax,word [U_$GETOPTS_$$_OPTIND+2]
		cmp	ax,word [U_$GETOPTS_$$_NRARGS+2]
		jl	..@j104
		jg	..@j105
		cmp	dx,word [U_$GETOPTS_$$_NRARGS]
		jb	..@j104
		jmp	..@j105
		jmp	..@j105
..@j104:
		lea	ax,[bp-262]
		push	ax
		mov	bx,word [U_$SYSTEM_$$_ARGV]
		mov	ax,word [U_$GETOPTS_$$_OPTIND]
		mov	si,ax
		shl	si,1
		push	word [bx+si]
		call	SYSTEM_$$_STRPAS$PCHAR$$SHORTSTRING
		jmp	..@j110
..@j105:
		mov	byte [bp-262],0
..@j110:
		mov	ax,word [U_$GETOPTS_$$_NEXTCHAR]
		mov	dx,word [U_$GETOPTS_$$_NEXTCHAR+2]
		cmp	dx,0
		jne	..@j114
		cmp	ax,0
		jne	..@j114
		jmp	..@j113
..@j113:
		cmp	word [U_$GETOPTS_$$_ORDERING],1
		je	..@j115
		jmp	..@j116
..@j115:
		mov	ax,word [U_$GETOPTS_$$_FIRST_NONOPT]
		mov	dx,word [U_$GETOPTS_$$_FIRST_NONOPT+2]
		cmp	dx,word [U_$GETOPTS_$$_LAST_NONOPT+2]
		jne	..@j119
		cmp	ax,word [U_$GETOPTS_$$_LAST_NONOPT]
		jne	..@j119
		jmp	..@j118
		jmp	..@j118
..@j119:
		mov	dx,word [U_$GETOPTS_$$_LAST_NONOPT]
		mov	ax,word [U_$GETOPTS_$$_LAST_NONOPT+2]
		cmp	ax,word [U_$GETOPTS_$$_OPTIND+2]
		jne	..@j117
		cmp	dx,word [U_$GETOPTS_$$_OPTIND]
		jne	..@j117
		jmp	..@j118
		jmp	..@j118
..@j117:
		call	GETOPTS_$$_EXCHANGE
		jmp	..@j120
..@j118:
		mov	ax,word [U_$GETOPTS_$$_LAST_NONOPT]
		mov	dx,word [U_$GETOPTS_$$_LAST_NONOPT+2]
		cmp	dx,word [U_$GETOPTS_$$_OPTIND+2]
		jne	..@j121
		cmp	ax,word [U_$GETOPTS_$$_OPTIND]
		jne	..@j121
		jmp	..@j122
		jmp	..@j122
..@j121:
		mov	ax,word [U_$GETOPTS_$$_OPTIND]
		mov	word [U_$GETOPTS_$$_FIRST_NONOPT],ax
		mov	ax,word [U_$GETOPTS_$$_OPTIND+2]
		mov	word [U_$GETOPTS_$$_FIRST_NONOPT+2],ax
..@j122:
..@j120:
		jmp	..@j126
	ALIGN 2
..@j125:
		add	word [U_$GETOPTS_$$_OPTIND],1
		adc	word [U_$GETOPTS_$$_OPTIND+2],0
..@j126:
		mov	ax,word [U_$GETOPTS_$$_OPTIND]
		mov	dx,word [U_$GETOPTS_$$_OPTIND+2]
		cmp	dx,word [U_$GETOPTS_$$_NRARGS+2]
		jl	..@j128
		jg	..@j127
		cmp	ax,word [U_$GETOPTS_$$_NRARGS]
		jb	..@j128
		jmp	..@j127
		jmp	..@j127
..@j128:
		mov	bx,word [U_$SYSTEM_$$_ARGV]
		mov	ax,word [U_$GETOPTS_$$_OPTIND]
		mov	si,ax
		shl	si,1
		mov	bx,word [bx+si]
		mov	al,byte [bx]
		mov	ah,0
		mov	bx,ax
		mov	cl,4
		shr	bx,cl
		shl	bx,1
		mov	cx,ax
		and	cl,15
		mov	ax,1
		shl	ax,cl
		test	word [TC_$GETOPTS_$$_OPTSPECIFIER+bx],ax
		je	..@j125
		jmp	..@j129
..@j129:
		lea	ax,[bp-781]
		push	ax
		mov	bx,word [U_$SYSTEM_$$_ARGV]
		mov	ax,word [U_$GETOPTS_$$_OPTIND]
		mov	si,ax
		shl	si,1
		push	word [bx+si]
		call	SYSTEM_$$_STRPAS$PCHAR$$SHORTSTRING
		cmp	byte [bp-781],1
		je	..@j125
		jmp	..@j127
..@j127:
		mov	ax,word [U_$GETOPTS_$$_OPTIND]
		mov	word [U_$GETOPTS_$$_LAST_NONOPT],ax
		mov	ax,word [U_$GETOPTS_$$_OPTIND+2]
		mov	word [U_$GETOPTS_$$_LAST_NONOPT+2],ax
..@j116:
		mov	dx,word [U_$GETOPTS_$$_OPTIND]
		mov	ax,word [U_$GETOPTS_$$_OPTIND+2]
		cmp	ax,word [U_$GETOPTS_$$_NRARGS+2]
		jl	..@j136
		jg	..@j137
		cmp	dx,word [U_$GETOPTS_$$_NRARGS]
		jb	..@j136
		jmp	..@j137
		jmp	..@j137
..@j136:
		lea	ax,[bp-262]
		push	ax
		mov	bx,word [U_$SYSTEM_$$_ARGV]
		mov	ax,word [U_$GETOPTS_$$_OPTIND]
		mov	si,ax
		shl	si,1
		push	word [bx+si]
		call	SYSTEM_$$_STRPAS$PCHAR$$SHORTSTRING
		jmp	..@j142
..@j137:
		mov	byte [bp-262],0
..@j142:
		mov	dx,word [U_$GETOPTS_$$_OPTIND]
		mov	ax,word [U_$GETOPTS_$$_OPTIND+2]
		cmp	ax,word [U_$GETOPTS_$$_NRARGS+2]
		jne	..@j147
		cmp	dx,word [U_$GETOPTS_$$_NRARGS]
		jne	..@j147
		jmp	..@j146
		jmp	..@j146
..@j147:
		lea	ax,[bp-262]
		push	ax
		mov	ax,word _$GETOPTS$_Ld2
		push	ax
		call	fpc_shortstr_compare_equal
		cmp	dx,0
		jne	..@j146
		cmp	ax,0
		jne	..@j146
		jmp	..@j145
..@j145:
		add	word [U_$GETOPTS_$$_OPTIND],1
		adc	word [U_$GETOPTS_$$_OPTIND+2],0
		mov	dx,word [U_$GETOPTS_$$_FIRST_NONOPT]
		mov	ax,word [U_$GETOPTS_$$_FIRST_NONOPT+2]
		cmp	ax,word [U_$GETOPTS_$$_LAST_NONOPT+2]
		jne	..@j154
		cmp	dx,word [U_$GETOPTS_$$_LAST_NONOPT]
		jne	..@j154
		jmp	..@j153
		jmp	..@j153
..@j154:
		mov	ax,word [U_$GETOPTS_$$_LAST_NONOPT]
		mov	dx,word [U_$GETOPTS_$$_LAST_NONOPT+2]
		cmp	dx,word [U_$GETOPTS_$$_OPTIND+2]
		jne	..@j152
		cmp	ax,word [U_$GETOPTS_$$_OPTIND]
		jne	..@j152
		jmp	..@j153
		jmp	..@j153
..@j152:
		call	GETOPTS_$$_EXCHANGE
		jmp	..@j155
..@j153:
		mov	dx,word [U_$GETOPTS_$$_FIRST_NONOPT]
		mov	ax,word [U_$GETOPTS_$$_FIRST_NONOPT+2]
		cmp	ax,word [U_$GETOPTS_$$_LAST_NONOPT+2]
		jne	..@j157
		cmp	dx,word [U_$GETOPTS_$$_LAST_NONOPT]
		jne	..@j157
		jmp	..@j156
		jmp	..@j157
..@j156:
		mov	ax,word [U_$GETOPTS_$$_OPTIND]
		mov	word [U_$GETOPTS_$$_FIRST_NONOPT],ax
		mov	ax,word [U_$GETOPTS_$$_OPTIND+2]
		mov	word [U_$GETOPTS_$$_FIRST_NONOPT+2],ax
..@j157:
..@j155:
		mov	ax,word [U_$GETOPTS_$$_NRARGS]
		mov	word [U_$GETOPTS_$$_LAST_NONOPT],ax
		mov	ax,word [U_$GETOPTS_$$_NRARGS+2]
		mov	word [U_$GETOPTS_$$_LAST_NONOPT+2],ax
		mov	ax,word [U_$GETOPTS_$$_NRARGS]
		mov	word [U_$GETOPTS_$$_OPTIND],ax
		mov	ax,word [U_$GETOPTS_$$_NRARGS+2]
		mov	word [U_$GETOPTS_$$_OPTIND+2],ax
..@j146:
		mov	ax,word [U_$GETOPTS_$$_OPTIND]
		mov	dx,word [U_$GETOPTS_$$_OPTIND+2]
		cmp	dx,word [U_$GETOPTS_$$_NRARGS+2]
		jg	..@j164
		jl	..@j165
		cmp	ax,word [U_$GETOPTS_$$_NRARGS]
		jae	..@j164
		jmp	..@j165
		jmp	..@j165
..@j164:
		mov	dx,word [U_$GETOPTS_$$_FIRST_NONOPT]
		mov	ax,word [U_$GETOPTS_$$_FIRST_NONOPT+2]
		cmp	ax,word [U_$GETOPTS_$$_LAST_NONOPT+2]
		jne	..@j166
		cmp	dx,word [U_$GETOPTS_$$_LAST_NONOPT]
		jne	..@j166
		jmp	..@j167
		jmp	..@j167
..@j166:
		mov	ax,word [U_$GETOPTS_$$_FIRST_NONOPT]
		mov	word [U_$GETOPTS_$$_OPTIND],ax
		mov	ax,word [U_$GETOPTS_$$_FIRST_NONOPT+2]
		mov	word [U_$GETOPTS_$$_OPTIND+2],ax
..@j167:
		mov	byte [bp-1],255
		jmp	..@j96
..@j165:
		mov	dx,word [U_$GETOPTS_$$_OPTIND]
		mov	ax,word [U_$GETOPTS_$$_OPTIND+2]
		cmp	ax,word [U_$GETOPTS_$$_NRARGS+2]
		jl	..@j172
		jg	..@j173
		cmp	dx,word [U_$GETOPTS_$$_NRARGS]
		jb	..@j172
		jmp	..@j173
		jmp	..@j173
..@j172:
		lea	ax,[bp-262]
		push	ax
		mov	ax,255
		push	ax
		lea	ax,[bp-781]
		push	ax
		mov	bx,word [U_$SYSTEM_$$_ARGV]
		mov	ax,word [U_$GETOPTS_$$_OPTIND]
		mov	si,ax
		shl	si,1
		push	word [bx+si]
		call	SYSTEM_$$_STRPAS$PCHAR$$SHORTSTRING
		lea	ax,[bp-781]
		push	ax
		call	fpc_shortstr_to_shortstr
		jmp	..@j184
..@j173:
		mov	byte [bp-262],0
..@j184:
		mov	al,byte [bp-261]
		mov	ah,0
		mov	bx,ax
		mov	cl,4
		shr	bx,cl
		shl	bx,1
		mov	cx,ax
		and	cl,15
		mov	ax,1
		shl	ax,cl
		test	word [TC_$GETOPTS_$$_OPTSPECIFIER+bx],ax
		je	..@j187
		jmp	..@j189
..@j189:
		cmp	byte [bp-262],1
		je	..@j187
		jmp	..@j188
..@j187:
		cmp	word [U_$GETOPTS_$$_ORDERING],0
		je	..@j190
		jmp	..@j191
..@j190:
		mov	byte [bp-1],255
		jmp	..@j96
		jmp	..@j194
..@j191:
		mov	ax,word U_$GETOPTS_$$_OPTARG
		push	ax
		mov	ax,255
		push	ax
		lea	ax,[bp-781]
		push	ax
		mov	bx,word [U_$SYSTEM_$$_ARGV]
		mov	ax,word [U_$GETOPTS_$$_OPTIND]
		mov	si,ax
		shl	si,1
		push	word [bx+si]
		call	SYSTEM_$$_STRPAS$PCHAR$$SHORTSTRING
		lea	ax,[bp-781]
		push	ax
		call	fpc_shortstr_to_shortstr
		add	word [U_$GETOPTS_$$_OPTIND],1
		adc	word [U_$GETOPTS_$$_OPTIND+2],0
		mov	byte [bp-1],0
		jmp	..@j96
..@j194:
..@j188:
		mov	word [U_$GETOPTS_$$_NEXTCHAR],2
		mov	word [U_$GETOPTS_$$_NEXTCHAR+2],0
		cmp	word [bp+8],0
		jne	..@j211
		jmp	..@j210
..@j211:
		cmp	byte [bp-260],45
		je	..@j212
		jmp	..@j210
..@j212:
		cmp	byte [bp-261],45
		je	..@j209
		jmp	..@j210
..@j209:
		add	word [U_$GETOPTS_$$_NEXTCHAR],1
		adc	word [U_$GETOPTS_$$_NEXTCHAR+2],0
..@j210:
..@j114:
		cmp	word [bp+8],0
		jne	..@j213
		jmp	..@j214
..@j213:
		cmp	byte [bp-262],1
		ja	..@j215
		jmp	..@j216
..@j215:
		cmp	byte [bp-260],45
		je	..@j220
		jmp	..@j219
..@j220:
		cmp	byte [bp-261],45
		je	..@j217
		jmp	..@j219
..@j219:
		cmp	byte [bp+4],0
		je	..@j221
		jmp	..@j218
..@j221:
		mov	al,byte [bp-260]
		mov	ah,0
		push	ax
		mov	ax,word [bp+10]
		push	ax
		call	SYSTEM_$$_POS$CHAR$SHORTSTRING$$SMALLINT
		test	ax,ax
		jne	..@j217
		jmp	..@j218
..@j217:
		mov	ax,61
		push	ax
		lea	ax,[bp-262]
		push	ax
		call	SYSTEM_$$_POS$CHAR$SHORTSTRING$$SMALLINT
		mov	byte [bp-3],al
		cmp	byte [bp-3],0
		je	..@j232
		jmp	..@j233
..@j232:
		mov	al,byte [bp-262]
		mov	ah,0
		inc	ax
		mov	byte [bp-3],al
..@j233:
		lea	ax,[bp-518]
		push	ax
		lea	ax,[bp-262]
		push	ax
		push	word [U_$GETOPTS_$$_NEXTCHAR]
		mov	ax,0
		mov	dl,byte [bp-3]
		mov	dh,0
		mov	bx,word [U_$GETOPTS_$$_NEXTCHAR]
		mov	cx,word [U_$GETOPTS_$$_NEXTCHAR+2]
		sub	dx,bx
		sbb	ax,cx
		push	dx
		call	fpc_shortstr_copy
		mov	ax,word [bp+8]
		mov	word [bp-520],ax
		mov	word [bp-522],0
		mov	byte [bp-523],0
		mov	byte [bp-524],0
		mov	byte [bp-4],0
		mov	word [bp-6],0
		jmp	..@j257
	ALIGN 2
..@j256:
		lea	ax,[bp-518]
		push	ax
		mov	ax,word [bp-520]
		push	ax
		call	SYSTEM_$$_POS$SHORTSTRING$SHORTSTRING$$SMALLINT
		test	ax,ax
		jne	..@j259
		jmp	..@j260
..@j259:
		mov	bx,word [bp-520]
		mov	al,byte [bx]
		cmp	al,byte [bp-518]
		je	..@j265
		jmp	..@j266
..@j265:
		mov	byte [bp-523],1
		mov	ax,word [bp-520]
		mov	word [bp-522],ax
		mov	al,byte [bp-4]
		mov	ah,0
		mov	word [bp-6],ax
		jmp	..@j273
..@j266:
		cmp	word [bp-522],0
		je	..@j274
		jmp	..@j275
..@j274:
		mov	al,byte [bp-4]
		mov	ah,0
		mov	word [bp-6],ax
		mov	ax,word [bp-520]
		mov	word [bp-522],ax
		jmp	..@j280
..@j275:
		mov	byte [bp-524],1
..@j280:
..@j273:
..@j260:
		add	word [bp-520],261
		inc	byte [bp-4]
..@j257:
		mov	bx,word [bp-520]
		cmp	byte [bx],0
		jne	..@j283
		jmp	..@j258
..@j283:
		cmp	byte [bp-523],0
		je	..@j256
		jmp	..@j258
..@j258:
		cmp	byte [bp-524],0
		jne	..@j286
		jmp	..@j285
..@j286:
		cmp	byte [bp-523],0
		je	..@j284
		jmp	..@j285
..@j284:
		cmp	byte [U_$GETOPTS_$$_OPTERR],0
		jne	..@j287
		jmp	..@j288
..@j287:
		call	fpc_get_output
		mov	word [bp-810],ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		push	word [bp-810]
		mov	bx,word [U_$SYSTEM_$$_ARGV]
		push	word [bx]
		call	fpc_write_text_pchar_as_pointer
		call	FPC_IOCHECK
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		push	word [bp-810]
		mov	ax,word _$GETOPTS$_Ld3
		push	ax
		call	fpc_write_text_shortstr
		call	FPC_IOCHECK
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		push	word [bp-810]
		lea	ax,[bp-518]
		push	ax
		call	fpc_write_text_shortstr
		call	FPC_IOCHECK
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		push	word [bp-810]
		mov	ax,word _$GETOPTS$_Ld4
		push	ax
		call	fpc_write_text_shortstr
		call	FPC_IOCHECK
		push	word [bp-810]
		call	fpc_writeln_end
		call	FPC_IOCHECK
..@j288:
		mov	word [U_$GETOPTS_$$_NEXTCHAR],0
		mov	word [U_$GETOPTS_$$_NEXTCHAR+2],0
		add	word [U_$GETOPTS_$$_OPTIND],1
		adc	word [U_$GETOPTS_$$_OPTIND+2],0
		mov	byte [bp-1],63
..@j285:
		cmp	word [bp-522],0
		jne	..@j321
		jmp	..@j322
..@j321:
		add	word [U_$GETOPTS_$$_OPTIND],1
		adc	word [U_$GETOPTS_$$_OPTIND+2],0
		mov	al,byte [bp-262]
		cmp	al,byte [bp-3]
		jae	..@j323
		jmp	..@j324
..@j323:
		mov	bx,word [bp-522]
		cmp	word [bx+256],0
		jg	..@j325
		jmp	..@j326
..@j325:
		mov	ax,word U_$GETOPTS_$$_OPTARG
		push	ax
		mov	ax,255
		push	ax
		lea	ax,[bp-781]
		push	ax
		lea	ax,[bp-262]
		push	ax
		mov	al,byte [bp-3]
		mov	ah,0
		inc	ax
		push	ax
		mov	al,byte [bp-262]
		mov	ah,0
		mov	dl,byte [bp-3]
		mov	dh,0
		sub	ax,dx
		push	ax
		call	fpc_shortstr_copy
		lea	ax,[bp-781]
		push	ax
		call	fpc_shortstr_to_shortstr
		jmp	..@j341
..@j326:
		cmp	byte [U_$GETOPTS_$$_OPTERR],0
		jne	..@j342
		jmp	..@j343
..@j342:
		cmp	byte [bp-260],45
		je	..@j344
		jmp	..@j345
..@j344:
		call	fpc_get_output
		mov	word [bp-808],ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		push	word [bp-808]
		mov	bx,word [U_$SYSTEM_$$_ARGV]
		push	word [bx]
		call	fpc_write_text_pchar_as_pointer
		call	FPC_IOCHECK
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		push	word [bp-808]
		mov	ax,word _$GETOPTS$_Ld5
		push	ax
		call	fpc_write_text_shortstr
		call	FPC_IOCHECK
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		push	word [bp-808]
		mov	ax,word [bp-522]
		push	ax
		call	fpc_write_text_shortstr
		call	FPC_IOCHECK
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		push	word [bp-808]
		mov	ax,word _$GETOPTS$_Ld6
		push	ax
		call	fpc_write_text_shortstr
		call	FPC_IOCHECK
		push	word [bp-808]
		call	fpc_writeln_end
		call	FPC_IOCHECK
		jmp	..@j374
..@j345:
		call	fpc_get_output
		mov	word [bp-814],ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		push	word [bp-814]
		mov	bx,word [U_$SYSTEM_$$_ARGV]
		push	word [bx]
		call	fpc_write_text_pchar_as_pointer
		call	FPC_IOCHECK
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		push	word [bp-814]
		mov	ax,word _$GETOPTS$_Ld3
		push	ax
		call	fpc_write_text_shortstr
		call	FPC_IOCHECK
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		push	word [bp-814]
		mov	al,byte [bp-261]
		mov	ah,0
		push	ax
		call	fpc_write_text_char
		call	FPC_IOCHECK
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		push	word [bp-814]
		mov	ax,word [bp-522]
		push	ax
		call	fpc_write_text_shortstr
		call	FPC_IOCHECK
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		push	word [bp-814]
		mov	ax,word _$GETOPTS$_Ld6
		push	ax
		call	fpc_write_text_shortstr
		call	FPC_IOCHECK
		push	word [bp-814]
		call	fpc_writeln_end
		call	FPC_IOCHECK
..@j374:
..@j343:
		mov	word [U_$GETOPTS_$$_NEXTCHAR],0
		mov	word [U_$GETOPTS_$$_NEXTCHAR+2],0
		mov	byte [bp-1],63
		jmp	..@j96
..@j341:
		jmp	..@j413
..@j324:
		mov	bx,word [bp-522]
		cmp	word [bx+256],1
		je	..@j414
		jmp	..@j415
..@j414:
		mov	ax,word [U_$GETOPTS_$$_OPTIND]
		mov	dx,word [U_$GETOPTS_$$_OPTIND+2]
		cmp	dx,word [U_$GETOPTS_$$_NRARGS+2]
		jl	..@j416
		jg	..@j417
		cmp	ax,word [U_$GETOPTS_$$_NRARGS]
		jb	..@j416
		jmp	..@j417
		jmp	..@j417
..@j416:
		mov	ax,word U_$GETOPTS_$$_OPTARG
		push	ax
		mov	ax,255
		push	ax
		lea	ax,[bp-781]
		push	ax
		mov	bx,word [U_$SYSTEM_$$_ARGV]
		mov	ax,word [U_$GETOPTS_$$_OPTIND]
		mov	si,ax
		shl	si,1
		push	word [bx+si]
		call	SYSTEM_$$_STRPAS$PCHAR$$SHORTSTRING
		lea	ax,[bp-781]
		push	ax
		call	fpc_shortstr_to_shortstr
		add	word [U_$GETOPTS_$$_OPTIND],1
		adc	word [U_$GETOPTS_$$_OPTIND+2],0
		jmp	..@j428
..@j417:
		cmp	byte [U_$GETOPTS_$$_OPTERR],0
		jne	..@j429
		jmp	..@j430
..@j429:
		call	fpc_get_output
		mov	word [bp-806],ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		push	word [bp-806]
		mov	bx,word [U_$SYSTEM_$$_ARGV]
		push	word [bx]
		call	fpc_write_text_pchar_as_pointer
		call	FPC_IOCHECK
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		push	word [bp-806]
		mov	ax,word _$GETOPTS$_Ld7
		push	ax
		call	fpc_write_text_shortstr
		call	FPC_IOCHECK
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		push	word [bp-806]
		mov	ax,word [bp-522]
		push	ax
		call	fpc_write_text_shortstr
		call	FPC_IOCHECK
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		push	word [bp-806]
		mov	ax,word _$GETOPTS$_Ld8
		push	ax
		call	fpc_write_text_shortstr
		call	FPC_IOCHECK
		push	word [bp-806]
		call	fpc_writeln_end
		call	FPC_IOCHECK
..@j430:
		mov	word [U_$GETOPTS_$$_NEXTCHAR],0
		mov	word [U_$GETOPTS_$$_NEXTCHAR+2],0
		mov	bx,word [bp+10]
		cmp	byte [bx+1],58
		je	..@j461
		jmp	..@j462
..@j461:
		mov	byte [bp-1],58
		jmp	..@j465
..@j462:
		mov	byte [bp-1],63
..@j465:
		jmp	..@j96
..@j428:
..@j415:
..@j413:
		mov	word [U_$GETOPTS_$$_NEXTCHAR],0
		mov	word [U_$GETOPTS_$$_NEXTCHAR+2],0
		cmp	word [bp+6],0
		jne	..@j470
		jmp	..@j471
..@j470:
		mov	ax,word [bp-6]
		inc	ax
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	bx,word [bp+6]
		mov	word [bx],cx
		mov	word [bx+2],ax
..@j471:
		mov	bx,word [bp-522]
		cmp	word [bx+258],0
		jne	..@j474
		jmp	..@j475
..@j474:
		mov	bx,word [bp-522]
		mov	si,word [bx+258]
		mov	bx,word [bp-522]
		mov	al,byte [bx+260]
		mov	byte [si],al
		mov	byte [bp-1],0
		jmp	..@j96
..@j475:
		mov	bx,word [bp-522]
		mov	al,byte [bx+260]
		mov	byte [bp-1],al
		jmp	..@j96
..@j322:
		cmp	byte [bp+4],0
		je	..@j482
		jmp	..@j484
..@j484:
		cmp	byte [bp-260],45
		je	..@j482
		jmp	..@j485
..@j485:
		mov	al,byte [U_$GETOPTS_$$_NEXTCHAR]
		mov	byte [bp-784],al
		mov	byte [bp-783],0
		mov	si,word [bp-784]
		mov	al,byte [bp+si-262]
		mov	ah,0
		push	ax
		mov	ax,word [bp+10]
		push	ax
		call	SYSTEM_$$_POS$CHAR$SHORTSTRING$$SMALLINT
		test	ax,ax
		je	..@j482
		jmp	..@j483
..@j482:
		cmp	byte [U_$GETOPTS_$$_OPTERR],0
		jne	..@j490
		jmp	..@j491
..@j490:
		cmp	byte [bp-260],45
		je	..@j492
		jmp	..@j493
..@j492:
		call	fpc_get_output
		mov	word [bp-804],ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		push	word [bp-804]
		mov	bx,word [U_$SYSTEM_$$_ARGV]
		push	word [bx]
		call	fpc_write_text_pchar_as_pointer
		call	FPC_IOCHECK
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		push	word [bp-804]
		mov	ax,word _$GETOPTS$_Ld9
		push	ax
		call	fpc_write_text_shortstr
		call	FPC_IOCHECK
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		push	word [bp-804]
		lea	ax,[bp-518]
		push	ax
		call	fpc_write_text_shortstr
		call	FPC_IOCHECK
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		push	word [bp-804]
		mov	ax,34
		push	ax
		call	fpc_write_text_char
		call	FPC_IOCHECK
		push	word [bp-804]
		call	fpc_writeln_end
		call	FPC_IOCHECK
		jmp	..@j522
..@j493:
		call	fpc_get_output
		mov	word [bp-812],ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		push	word [bp-812]
		mov	bx,word [U_$SYSTEM_$$_ARGV]
		push	word [bx]
		call	fpc_write_text_pchar_as_pointer
		call	FPC_IOCHECK
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		push	word [bp-812]
		mov	ax,word _$GETOPTS$_Ld10
		push	ax
		call	fpc_write_text_shortstr
		call	FPC_IOCHECK
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		push	word [bp-812]
		mov	al,byte [bp-261]
		mov	ah,0
		push	ax
		call	fpc_write_text_char
		call	FPC_IOCHECK
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		push	word [bp-812]
		lea	ax,[bp-518]
		push	ax
		call	fpc_write_text_shortstr
		call	FPC_IOCHECK
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		push	word [bp-812]
		mov	ax,34
		push	ax
		call	fpc_write_text_char
		call	FPC_IOCHECK
		push	word [bp-812]
		call	fpc_writeln_end
		call	FPC_IOCHECK
..@j522:
..@j491:
		mov	word [U_$GETOPTS_$$_NEXTCHAR],0
		mov	word [U_$GETOPTS_$$_NEXTCHAR+2],0
		add	word [U_$GETOPTS_$$_OPTIND],1
		adc	word [U_$GETOPTS_$$_OPTIND+2],0
		mov	byte [bp-1],63
		jmp	..@j96
..@j483:
..@j218:
..@j216:
..@j214:
		mov	al,byte [U_$GETOPTS_$$_NEXTCHAR]
		mov	byte [bp-788],al
		mov	byte [bp-787],0
		mov	si,word [bp-788]
		mov	al,byte [bp+si-262]
		mov	ah,0
		push	ax
		mov	ax,word [bp+10]
		push	ax
		call	SYSTEM_$$_POS$CHAR$SHORTSTRING$$SMALLINT
		mov	byte [bp-2],al
		mov	al,byte [U_$GETOPTS_$$_NEXTCHAR]
		mov	byte [bp-786],al
		mov	byte [bp-785],0
		mov	si,word [bp-786]
		mov	al,byte [bp+si-262]
		mov	byte [bp-525],al
		add	word [U_$GETOPTS_$$_NEXTCHAR],1
		adc	word [U_$GETOPTS_$$_NEXTCHAR+2],0
		mov	ax,0
		mov	dl,byte [bp-262]
		mov	dh,0
		cmp	ax,word [U_$GETOPTS_$$_NEXTCHAR+2]
		jl	..@j569
		jg	..@j570
		cmp	dx,word [U_$GETOPTS_$$_NEXTCHAR]
		jb	..@j569
		jmp	..@j570
		jmp	..@j570
..@j569:
		add	word [U_$GETOPTS_$$_OPTIND],1
		adc	word [U_$GETOPTS_$$_OPTIND+2],0
		mov	word [U_$GETOPTS_$$_NEXTCHAR],0
		mov	word [U_$GETOPTS_$$_NEXTCHAR+2],0
..@j570:
		cmp	byte [bp-2],0
		je	..@j573
		jmp	..@j575
..@j575:
		cmp	byte [bp-525],58
		je	..@j573
		jmp	..@j574
..@j573:
		cmp	byte [U_$GETOPTS_$$_OPTERR],0
		jne	..@j576
		jmp	..@j577
..@j576:
		call	fpc_get_output
		mov	word [bp-800],ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		push	word [bp-800]
		mov	bx,word [U_$SYSTEM_$$_ARGV]
		push	word [bx]
		call	fpc_write_text_pchar_as_pointer
		call	FPC_IOCHECK
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		push	word [bp-800]
		mov	ax,word _$GETOPTS$_Ld11
		push	ax
		call	fpc_write_text_shortstr
		call	FPC_IOCHECK
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		push	word [bp-800]
		mov	al,byte [bp-525]
		mov	ah,0
		push	ax
		call	fpc_write_text_char
		call	FPC_IOCHECK
		push	word [bp-800]
		call	fpc_writeln_end
		call	FPC_IOCHECK
..@j577:
		mov	al,byte [bp-525]
		mov	byte [U_$GETOPTS_$$_OPTOPT],al
		mov	byte [bp-1],63
		jmp	..@j96
..@j574:
		mov	bx,word [bp+10]
		mov	al,byte [bp-2]
		mov	byte [bp-794],al
		mov	byte [bp-793],0
		mov	si,word [bp-794]
		mov	al,byte [bx+si]
		mov	byte [bp-1],al
		mov	bx,word [bp+10]
		mov	al,byte [bp-2]
		mov	ah,0
		inc	ax
		mov	byte [bp-790],al
		mov	byte [bp-789],0
		mov	si,word [bp-790]
		cmp	byte [bx+si],58
		je	..@j606
		jmp	..@j607
..@j606:
		mov	bx,word [bp+10]
		mov	al,byte [bp-2]
		mov	ah,0
		add	ax,2
		mov	byte [bp-796],al
		mov	byte [bp-795],0
		mov	si,word [bp-796]
		cmp	byte [bx+si],58
		je	..@j608
		jmp	..@j609
..@j608:
		mov	dx,word [U_$GETOPTS_$$_NEXTCHAR]
		mov	ax,word [U_$GETOPTS_$$_NEXTCHAR+2]
		cmp	ax,0
		jg	..@j610
		jl	..@j611
		cmp	dx,0
		ja	..@j610
		jmp	..@j611
..@j610:
		mov	ax,word U_$GETOPTS_$$_OPTARG
		push	ax
		mov	ax,255
		push	ax
		lea	ax,[bp-781]
		push	ax
		lea	ax,[bp-262]
		push	ax
		push	word [U_$GETOPTS_$$_NEXTCHAR]
		mov	ax,0
		mov	cl,byte [bp-262]
		mov	ch,0
		mov	bx,word [U_$GETOPTS_$$_NEXTCHAR]
		mov	dx,word [U_$GETOPTS_$$_NEXTCHAR+2]
		sub	cx,bx
		sbb	ax,dx
		add	cx,1
		adc	ax,0
		push	cx
		call	fpc_shortstr_copy
		lea	ax,[bp-781]
		push	ax
		call	fpc_shortstr_to_shortstr
		add	word [U_$GETOPTS_$$_OPTIND],1
		adc	word [U_$GETOPTS_$$_OPTIND+2],0
		mov	word [U_$GETOPTS_$$_NEXTCHAR],0
		mov	word [U_$GETOPTS_$$_NEXTCHAR+2],0
		jmp	..@j628
..@j611:
		mov	dx,word [U_$GETOPTS_$$_OPTIND]
		mov	ax,word [U_$GETOPTS_$$_OPTIND+2]
		cmp	ax,word [U_$GETOPTS_$$_NRARGS+2]
		jne	..@j629
		cmp	dx,word [U_$GETOPTS_$$_NRARGS]
		jne	..@j629
		jmp	..@j630
		jmp	..@j630
..@j629:
		mov	ax,word U_$GETOPTS_$$_OPTARG
		push	ax
		mov	ax,255
		push	ax
		lea	ax,[bp-781]
		push	ax
		mov	bx,word [U_$SYSTEM_$$_ARGV]
		mov	ax,word [U_$GETOPTS_$$_OPTIND]
		mov	si,ax
		shl	si,1
		push	word [bx+si]
		call	SYSTEM_$$_STRPAS$PCHAR$$SHORTSTRING
		lea	ax,[bp-781]
		push	ax
		call	fpc_shortstr_to_shortstr
		cmp	byte [U_$GETOPTS_$$_OPTARG+1],45
		je	..@j641
		jmp	..@j642
..@j641:
		mov	byte [U_$GETOPTS_$$_OPTARG],0
		jmp	..@j645
..@j642:
		add	word [U_$GETOPTS_$$_OPTIND],1
		adc	word [U_$GETOPTS_$$_OPTIND+2],0
..@j645:
		mov	word [U_$GETOPTS_$$_NEXTCHAR],0
		mov	word [U_$GETOPTS_$$_NEXTCHAR+2],0
..@j630:
..@j628:
		jmp	..@j648
..@j609:
		mov	ax,word [U_$GETOPTS_$$_NEXTCHAR]
		mov	dx,word [U_$GETOPTS_$$_NEXTCHAR+2]
		cmp	dx,0
		jg	..@j649
		jl	..@j650
		cmp	ax,0
		ja	..@j649
		jmp	..@j650
..@j649:
		mov	ax,word U_$GETOPTS_$$_OPTARG
		push	ax
		mov	ax,255
		push	ax
		lea	ax,[bp-781]
		push	ax
		lea	ax,[bp-262]
		push	ax
		push	word [U_$GETOPTS_$$_NEXTCHAR]
		mov	ax,0
		mov	cl,byte [bp-262]
		mov	ch,0
		mov	bx,word [U_$GETOPTS_$$_NEXTCHAR]
		mov	dx,word [U_$GETOPTS_$$_NEXTCHAR+2]
		sub	cx,bx
		sbb	ax,dx
		add	cx,1
		adc	ax,0
		push	cx
		call	fpc_shortstr_copy
		lea	ax,[bp-781]
		push	ax
		call	fpc_shortstr_to_shortstr
		add	word [U_$GETOPTS_$$_OPTIND],1
		adc	word [U_$GETOPTS_$$_OPTIND+2],0
		jmp	..@j665
..@j650:
		mov	ax,word [U_$GETOPTS_$$_OPTIND]
		mov	dx,word [U_$GETOPTS_$$_OPTIND+2]
		cmp	dx,word [U_$GETOPTS_$$_NRARGS+2]
		jne	..@j667
		cmp	ax,word [U_$GETOPTS_$$_NRARGS]
		jne	..@j667
		jmp	..@j666
		jmp	..@j667
..@j666:
		cmp	byte [U_$GETOPTS_$$_OPTERR],0
		jne	..@j668
		jmp	..@j669
..@j668:
		call	fpc_get_output
		mov	word [bp-802],ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		push	word [bp-802]
		mov	bx,word [U_$SYSTEM_$$_ARGV]
		push	word [bx]
		call	fpc_write_text_pchar_as_pointer
		call	FPC_IOCHECK
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		push	word [bp-802]
		mov	ax,word _$GETOPTS$_Ld12
		push	ax
		call	fpc_write_text_shortstr
		call	FPC_IOCHECK
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		push	word [bp-802]
		mov	bx,word [bp+10]
		mov	al,byte [bp-2]
		mov	byte [bp-798],al
		mov	byte [bp-797],0
		mov	si,word [bp-798]
		mov	al,byte [bx+si]
		mov	ah,0
		push	ax
		call	fpc_write_text_char
		call	FPC_IOCHECK
		push	word [bp-802]
		call	fpc_writeln_end
		call	FPC_IOCHECK
..@j669:
		mov	bx,word [bp+10]
		mov	al,byte [bp-2]
		mov	byte [bp-792],al
		mov	byte [bp-791],0
		mov	si,word [bp-792]
		mov	al,byte [bx+si]
		mov	byte [U_$GETOPTS_$$_OPTOPT],al
		mov	bx,word [bp+10]
		cmp	byte [bx+1],58
		je	..@j694
		jmp	..@j695
..@j694:
		mov	byte [bp-1],58
		jmp	..@j698
..@j695:
		mov	byte [bp-1],63
..@j698:
		jmp	..@j701
..@j667:
		mov	ax,word U_$GETOPTS_$$_OPTARG
		push	ax
		mov	ax,255
		push	ax
		lea	ax,[bp-781]
		push	ax
		mov	bx,word [U_$SYSTEM_$$_ARGV]
		mov	ax,word [U_$GETOPTS_$$_OPTIND]
		mov	si,ax
		shl	si,1
		push	word [bx+si]
		call	SYSTEM_$$_STRPAS$PCHAR$$SHORTSTRING
		lea	ax,[bp-781]
		push	ax
		call	fpc_shortstr_to_shortstr
		add	word [U_$GETOPTS_$$_OPTIND],1
		adc	word [U_$GETOPTS_$$_OPTIND+2],0
..@j701:
..@j665:
		mov	word [U_$GETOPTS_$$_NEXTCHAR],0
		mov	word [U_$GETOPTS_$$_NEXTCHAR+2],0
..@j648:
..@j607:
..@j96:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	_$GETOPTS$_Ld12
EXTERN	U_$GETOPTS_$$_OPTOPT
EXTERN	_$GETOPTS$_Ld11
EXTERN	_$GETOPTS$_Ld10
EXTERN	_$GETOPTS$_Ld9
EXTERN	_$GETOPTS$_Ld8
EXTERN	_$GETOPTS$_Ld7
EXTERN	fpc_write_text_char
EXTERN	_$GETOPTS$_Ld6
EXTERN	_$GETOPTS$_Ld5
EXTERN	fpc_writeln_end
EXTERN	_$GETOPTS$_Ld4
EXTERN	fpc_write_text_shortstr
EXTERN	_$GETOPTS$_Ld3
EXTERN	FPC_IOCHECK
EXTERN	fpc_write_text_pchar_as_pointer
EXTERN	fpc_get_output
EXTERN	U_$GETOPTS_$$_OPTERR
EXTERN	SYSTEM_$$_POS$SHORTSTRING$SHORTSTRING$$SMALLINT
EXTERN	fpc_shortstr_copy
EXTERN	SYSTEM_$$_POS$CHAR$SHORTSTRING$$SMALLINT
EXTERN	fpc_shortstr_to_shortstr
EXTERN	fpc_shortstr_compare_equal
EXTERN	_$GETOPTS$_Ld2
EXTERN	TC_$GETOPTS_$$_OPTSPECIFIER
EXTERN	GETOPTS_$$_EXCHANGE
EXTERN	U_$GETOPTS_$$_LAST_NONOPT
EXTERN	U_$GETOPTS_$$_FIRST_NONOPT
EXTERN	U_$GETOPTS_$$_ORDERING
EXTERN	U_$GETOPTS_$$_NEXTCHAR
EXTERN	SYSTEM_$$_STRPAS$PCHAR$$SHORTSTRING
EXTERN	U_$SYSTEM_$$_ARGV
EXTERN	U_$GETOPTS_$$_NRARGS
EXTERN	GETOPTS_$$_GETOPT_INIT$SHORTSTRING
EXTERN	U_$GETOPTS_$$_OPTIND
EXTERN	U_$GETOPTS_$$_OPTARG
