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
	GLOBAL SYSUTILS_$$_FORMAT$ANSISTRING$array_of_const$TFORMATSETTINGS$$ANSISTRING
SYSUTILS_$$_FORMAT$ANSISTRING$array_of_const$TFORMATSETTINGS$$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,570
		mov	word [bp-12],0
		mov	word [bp-14],0
		mov	word [bp-570],0
		mov	word [bp-312],0
		mov	word [bp-50],0
		mov	ax,1
		push	ax
		lea	ax,[bp-46]
		push	ax
		lea	ax,[bp-40]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j4104
		mov	ax,word [bp+12]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_assign
		mov	bx,word [bp+10]
		test	bx,bx
		je	..@j4112
		mov	bx,word [bx-2]
..@j4112:
		mov	word [bp-10],bx
		mov	word [bp-2],1
		mov	word [bp-4],1
		mov	word [bp-6],0
		jmp	..@j4120
	ALIGN 2
..@j4119:
		jmp	..@j4123
	ALIGN 2
..@j4122:
		inc	word [bp-2]
..@j4123:
		mov	ax,word [bp-2]
		cmp	ax,word [bp-10]
		jle	..@j4125
		jmp	..@j4124
..@j4125:
		mov	bx,word [bp+10]
		mov	si,word [bp-2]
		cmp	byte [bx+si-1],37
		jne	..@j4122
		jmp	..@j4124
..@j4124:
		mov	ax,word [bp-2]
		cmp	ax,word [bp-4]
		jg	..@j4126
		jmp	..@j4127
..@j4126:
		mov	ax,word [bp+12]
		push	ax
		mov	bx,word [bp+12]
		push	word [bx]
		lea	ax,[bp-50]
		push	ax
		push	word [bp+10]
		push	word [bp-4]
		mov	ax,word [bp-2]
		mov	dx,word [bp-4]
		sub	ax,dx
		push	ax
		call	fpc_ansistr_copy
		push	word [bp-50]
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat
..@j4127:
		mov	ax,word [bp-2]
		cmp	ax,word [bp-10]
		jl	..@j4144
		jmp	..@j4145
..@j4144:
		push	bp
		call	SYSUTILS$_$FORMAT$crc784D66F0_$$_READFORMAT$$CHAR
		mov	byte [bp-26],al
		mov	al,byte [bp-26]
		cmp	al,37
		jb	..@j4151
		sub	al,37
		je	..@j4162
		sub	al,31
		je	..@j4152
		dec	al
		je	..@j4154
		dec	al
		je	..@j4155
		dec	al
		je	..@j4156
		sub	al,6
		je	..@j4158
		dec	al
		je	..@j4157
		sub	al,2
		je	..@j4160
		sub	al,3
		je	..@j4159
		sub	al,2
		je	..@j4153
		sub	al,3
		je	..@j4161
		jmp	..@j4151
..@j4152:
		push	bp
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		call	SYSUTILS$_$FORMAT$crc784D66F0_$$_CHECKARG$SMALLINT$BOOLEAN$$BOOLEAN
		test	al,al
		jne	..@j4163
		jmp	..@j4164
..@j4163:
		mov	bx,word [bp+8]
		mov	ax,word [bp-8]
		mov	si,ax
		mov	ax,6
		mul	si
		mov	si,ax
		mov	ax,word [bx+si+2]
		mov	word [bp-54],ax
		mov	ax,word [bx+si+4]
		mov	word [bp-52],ax
		push	word [bp-52]
		push	word [bp-54]
		mov	ax,-1
		push	ax
		lea	ax,[bp-310]
		push	ax
		mov	ax,255
		push	ax
		call	fpc_shortstr_longint
		lea	ax,[bp-14]
		push	ax
		lea	ax,[bp-312]
		push	ax
		lea	ax,[bp-310]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_shortstr_to_ansistr
		push	word [bp-312]
		call	fpc_ansistr_assign
		lea	ax,[bp-14]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		call	SYSTEM_$$_SETCODEPAGE$RAWBYTESTRING$WORD$BOOLEAN
		jmp	..@j4198
..@j4164:
		push	bp
		mov	ax,16
		push	ax
		mov	ax,0
		push	ax
		call	SYSUTILS$_$FORMAT$crc784D66F0_$$_CHECKARG$SMALLINT$BOOLEAN$$BOOLEAN
		test	al,al
		jne	..@j4199
		jmp	..@j4200
..@j4199:
		mov	bx,word [bp+8]
		mov	ax,word [bp-8]
		mov	si,ax
		mov	ax,6
		mul	si
		mov	si,ax
		mov	si,word [bx+si+2]
		lea	di,[bp-58]
		push	ss
		pop	es
		cld
		mov	cx,4
		rep
		movsw
		push	word [bp-52]
		push	word [bp-54]
		push	word [bp-56]
		push	word [bp-58]
		mov	ax,-1
		push	ax
		lea	ax,[bp-568]
		push	ax
		mov	ax,255
		push	ax
		call	fpc_shortstr_int64
		lea	ax,[bp-14]
		push	ax
		lea	ax,[bp-312]
		push	ax
		lea	ax,[bp-568]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_shortstr_to_ansistr
		push	word [bp-312]
		call	fpc_ansistr_assign
		lea	ax,[bp-14]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		call	SYSTEM_$$_SETCODEPAGE$RAWBYTESTRING$WORD$BOOLEAN
		jmp	..@j4234
..@j4200:
		push	bp
		mov	ax,17
		push	ax
		mov	ax,1
		push	ax
		call	SYSUTILS$_$FORMAT$crc784D66F0_$$_CHECKARG$SMALLINT$BOOLEAN$$BOOLEAN
		test	al,al
		jne	..@j4235
		jmp	..@j4236
..@j4235:
		mov	bx,word [bp+8]
		mov	ax,word [bp-8]
		mov	si,ax
		mov	ax,6
		mul	si
		mov	si,ax
		mov	si,word [bx+si+2]
		lea	di,[bp-320]
		push	ss
		pop	es
		cld
		mov	cx,4
		rep
		movsw
		push	word [bp-314]
		push	word [bp-316]
		push	word [bp-318]
		push	word [bp-320]
		mov	ax,-1
		push	ax
		lea	ax,[bp-306]
		push	ax
		mov	ax,255
		push	ax
		call	fpc_shortstr_int64
		lea	ax,[bp-14]
		push	ax
		lea	ax,[bp-312]
		push	ax
		lea	ax,[bp-306]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_shortstr_to_ansistr
		push	word [bp-312]
		call	fpc_ansistr_assign
		lea	ax,[bp-14]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		call	SYSTEM_$$_SETCODEPAGE$RAWBYTESTRING$WORD$BOOLEAN
..@j4236:
..@j4234:
..@j4198:
		mov	dx,word [bp-20]
		mov	si,word [bp-18]
		mov	ax,dx
		mov	bx,si
		mov	cl,15
		sar	bx,cl
		mov	ax,bx
		mov	cx,ax
		mov	di,bx
		xor	cx,dx
		xor	di,si
		sub	cx,ax
		sbb	di,bx
		mov	word [bp-20],cx
		mov	word [bp-18],di
		mov	bx,word [bp-14]
		test	bx,bx
		je	..@j4274
		mov	bx,word [bx-2]
..@j4274:
		mov	ax,bx
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	dx,word [bp-24]
		mov	bx,word [bp-22]
		sub	dx,cx
		sbb	bx,ax
		mov	word [bp-16],dx
		mov	bx,word [bp-14]
		cmp	byte [bx],45
		jne	..@j4275
		jmp	..@j4276
..@j4275:
		lea	ax,[bp-14]
		push	ax
		lea	ax,[bp-50]
		push	ax
		mov	ax,48
		push	ax
		push	word [bp-16]
		call	SYSTEM_$$_STRINGOFCHAR$CHAR$SMALLINT$$ANSISTRING
		push	word [bp-50]
		push	word [bp-14]
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat
		jmp	..@j4291
..@j4276:
		lea	ax,[bp-312]
		push	ax
		mov	ax,48
		push	ax
		mov	ax,word [bp-16]
		inc	ax
		push	ax
		call	SYSTEM_$$_STRINGOFCHAR$CHAR$SMALLINT$$ANSISTRING
		push	word [bp-312]
		lea	ax,[bp-14]
		push	ax
		mov	ax,2
		push	ax
		call	SYSTEM_$$_INSERT$RAWBYTESTRING$RAWBYTESTRING$SMALLINT
..@j4291:
		jmp	..@j4150
..@j4153:
		push	bp
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		call	SYSUTILS$_$FORMAT$crc784D66F0_$$_CHECKARG$SMALLINT$BOOLEAN$$BOOLEAN
		test	al,al
		jne	..@j4304
		jmp	..@j4305
..@j4304:
		mov	bx,word [bp+8]
		mov	ax,word [bp-8]
		mov	si,ax
		mov	ax,6
		mul	si
		mov	si,ax
		mov	ax,word [bx+si+2]
		mov	word [bp-316],ax
		mov	ax,word [bx+si+4]
		mov	word [bp-314],ax
		push	word [bp-314]
		push	word [bp-316]
		mov	ax,-1
		push	ax
		lea	ax,[bp-306]
		push	ax
		mov	ax,255
		push	ax
		call	fpc_shortstr_longword
		lea	ax,[bp-14]
		push	ax
		lea	ax,[bp-312]
		push	ax
		lea	ax,[bp-306]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_shortstr_to_ansistr
		push	word [bp-312]
		call	fpc_ansistr_assign
		lea	ax,[bp-14]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		call	SYSTEM_$$_SETCODEPAGE$RAWBYTESTRING$WORD$BOOLEAN
		jmp	..@j4339
..@j4305:
		push	bp
		mov	ax,16
		push	ax
		mov	ax,0
		push	ax
		call	SYSUTILS$_$FORMAT$crc784D66F0_$$_CHECKARG$SMALLINT$BOOLEAN$$BOOLEAN
		test	al,al
		jne	..@j4340
		jmp	..@j4341
..@j4340:
		mov	bx,word [bp+8]
		mov	ax,word [bp-8]
		mov	si,ax
		mov	ax,6
		mul	si
		mov	si,ax
		mov	si,word [bx+si+2]
		lea	di,[bp-320]
		push	ss
		pop	es
		cld
		mov	cx,4
		rep
		movsw
		push	word [bp-314]
		push	word [bp-316]
		push	word [bp-318]
		push	word [bp-320]
		mov	ax,-1
		push	ax
		lea	ax,[bp-306]
		push	ax
		mov	ax,255
		push	ax
		call	fpc_shortstr_qword
		lea	ax,[bp-14]
		push	ax
		lea	ax,[bp-312]
		push	ax
		lea	ax,[bp-306]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_shortstr_to_ansistr
		push	word [bp-312]
		call	fpc_ansistr_assign
		lea	ax,[bp-14]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		call	SYSTEM_$$_SETCODEPAGE$RAWBYTESTRING$WORD$BOOLEAN
		jmp	..@j4375
..@j4341:
		push	bp
		mov	ax,17
		push	ax
		mov	ax,1
		push	ax
		call	SYSUTILS$_$FORMAT$crc784D66F0_$$_CHECKARG$SMALLINT$BOOLEAN$$BOOLEAN
		test	al,al
		jne	..@j4376
		jmp	..@j4377
..@j4376:
		mov	bx,word [bp+8]
		mov	ax,word [bp-8]
		mov	si,ax
		mov	ax,6
		mul	si
		mov	si,ax
		mov	si,word [bx+si+2]
		lea	di,[bp-320]
		push	ss
		pop	es
		cld
		mov	cx,4
		rep
		movsw
		push	word [bp-314]
		push	word [bp-316]
		push	word [bp-318]
		push	word [bp-320]
		mov	ax,-1
		push	ax
		lea	ax,[bp-306]
		push	ax
		mov	ax,255
		push	ax
		call	fpc_shortstr_qword
		lea	ax,[bp-14]
		push	ax
		lea	ax,[bp-312]
		push	ax
		lea	ax,[bp-306]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_shortstr_to_ansistr
		push	word [bp-312]
		call	fpc_ansistr_assign
		lea	ax,[bp-14]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		call	SYSTEM_$$_SETCODEPAGE$RAWBYTESTRING$WORD$BOOLEAN
..@j4377:
..@j4375:
..@j4339:
		mov	dx,word [bp-20]
		mov	si,word [bp-18]
		mov	ax,dx
		mov	bx,si
		mov	cl,15
		sar	bx,cl
		mov	ax,bx
		mov	cx,ax
		mov	di,bx
		xor	cx,dx
		xor	di,si
		sub	cx,ax
		sbb	di,bx
		mov	word [bp-20],cx
		mov	word [bp-18],di
		mov	bx,word [bp-14]
		test	bx,bx
		je	..@j4415
		mov	bx,word [bx-2]
..@j4415:
		mov	ax,bx
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	dx,word [bp-24]
		mov	bx,word [bp-22]
		sub	dx,cx
		sbb	bx,ax
		mov	word [bp-16],dx
		lea	ax,[bp-14]
		push	ax
		lea	ax,[bp-50]
		push	ax
		mov	ax,48
		push	ax
		push	word [bp-16]
		call	SYSTEM_$$_STRINGOFCHAR$CHAR$SMALLINT$$ANSISTRING
		push	word [bp-50]
		push	word [bp-14]
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat
		jmp	..@j4150
..@j4154:
		push	bp
		mov	ax,12
		push	ax
		mov	ax,0
		push	ax
		call	SYSUTILS$_$FORMAT$crc784D66F0_$$_CHECKARG$SMALLINT$BOOLEAN$$BOOLEAN
		test	al,al
		jne	..@j4430
		jmp	..@j4431
..@j4430:
		lea	ax,[bp-14]
		push	ax
		lea	ax,[bp-50]
		push	ax
		mov	bx,word [bp+8]
		mov	ax,word [bp-8]
		mov	si,ax
		mov	ax,6
		mul	si
		mov	si,ax
		mov	bx,word [bx+si+2]
		push	word [bx+6]
		push	word [bx+4]
		push	word [bx+2]
		push	word [bx]
		mov	ax,0
		push	ax
		mov	ax,1
		push	ax
		push	word [bp-24]
		mov	ax,3
		push	ax
		mov	ax,word [bp+4]
		push	ax
		call	SYSUTILS_$$_FLOATTOSTRF$crc81228EB2
		push	word [bp-50]
		call	fpc_ansistr_assign
		jmp	..@j4454
..@j4431:
		push	bp
		mov	ax,3
		push	ax
		mov	ax,1
		push	ax
		call	SYSUTILS$_$FORMAT$crc784D66F0_$$_CHECKARG$SMALLINT$BOOLEAN$$BOOLEAN
		test	al,al
		jne	..@j4455
		jmp	..@j4456
..@j4455:
		lea	ax,[bp-14]
		push	ax
		lea	ax,[bp-50]
		push	ax
		mov	bx,word [bp+8]
		mov	ax,word [bp-8]
		mov	si,ax
		mov	ax,6
		mul	si
		mov	si,ax
		mov	bx,word [bx+si+2]
		push	word [bx+8]
		push	word [bx+6]
		push	word [bx+4]
		push	word [bx+2]
		push	word [bx]
		mov	ax,0
		push	ax
		mov	ax,1
		push	ax
		push	word [bp-24]
		mov	ax,3
		push	ax
		mov	ax,word [bp+4]
		push	ax
		call	SYSUTILS_$$_FLOATTOSTRF$crcE00706A7
		push	word [bp-50]
		call	fpc_ansistr_assign
..@j4456:
..@j4454:
		jmp	..@j4150
..@j4155:
		push	bp
		mov	ax,12
		push	ax
		mov	ax,0
		push	ax
		call	SYSUTILS$_$FORMAT$crc784D66F0_$$_CHECKARG$SMALLINT$BOOLEAN$$BOOLEAN
		test	al,al
		jne	..@j4479
		jmp	..@j4480
..@j4479:
		lea	ax,[bp-14]
		push	ax
		lea	ax,[bp-50]
		push	ax
		mov	bx,word [bp+8]
		mov	ax,word [bp-8]
		mov	si,ax
		mov	ax,6
		mul	si
		mov	si,ax
		mov	bx,word [bx+si+2]
		push	word [bx+6]
		push	word [bx+4]
		push	word [bx+2]
		push	word [bx]
		mov	ax,0
		push	ax
		mov	ax,2
		push	ax
		mov	ax,9999
		push	ax
		push	word [bp-24]
		mov	ax,word [bp+4]
		push	ax
		call	SYSUTILS_$$_FLOATTOSTRF$crc81228EB2
		push	word [bp-50]
		call	fpc_ansistr_assign
		jmp	..@j4503
..@j4480:
		push	bp
		mov	ax,3
		push	ax
		mov	ax,1
		push	ax
		call	SYSUTILS$_$FORMAT$crc784D66F0_$$_CHECKARG$SMALLINT$BOOLEAN$$BOOLEAN
		test	al,al
		jne	..@j4504
		jmp	..@j4505
..@j4504:
		lea	ax,[bp-14]
		push	ax
		lea	ax,[bp-50]
		push	ax
		mov	bx,word [bp+8]
		mov	ax,word [bp-8]
		mov	si,ax
		mov	ax,6
		mul	si
		mov	si,ax
		mov	bx,word [bx+si+2]
		push	word [bx+8]
		push	word [bx+6]
		push	word [bx+4]
		push	word [bx+2]
		push	word [bx]
		mov	ax,0
		push	ax
		mov	ax,2
		push	ax
		mov	ax,9999
		push	ax
		push	word [bp-24]
		mov	ax,word [bp+4]
		push	ax
		call	SYSUTILS_$$_FLOATTOSTRF$crcE00706A7
		push	word [bp-50]
		call	fpc_ansistr_assign
..@j4505:
..@j4503:
		jmp	..@j4150
..@j4156:
		push	bp
		mov	ax,12
		push	ax
		mov	ax,0
		push	ax
		call	SYSUTILS$_$FORMAT$crc784D66F0_$$_CHECKARG$SMALLINT$BOOLEAN$$BOOLEAN
		test	al,al
		jne	..@j4528
		jmp	..@j4529
..@j4528:
		lea	ax,[bp-14]
		push	ax
		lea	ax,[bp-50]
		push	ax
		mov	bx,word [bp+8]
		mov	ax,word [bp-8]
		mov	si,ax
		mov	ax,6
		mul	si
		mov	si,ax
		mov	bx,word [bx+si+2]
		push	word [bx+6]
		push	word [bx+4]
		push	word [bx+2]
		push	word [bx]
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		push	word [bp-24]
		mov	ax,3
		push	ax
		mov	ax,word [bp+4]
		push	ax
		call	SYSUTILS_$$_FLOATTOSTRF$crc81228EB2
		push	word [bp-50]
		call	fpc_ansistr_assign
		jmp	..@j4552
..@j4529:
		push	bp
		mov	ax,3
		push	ax
		mov	ax,1
		push	ax
		call	SYSUTILS$_$FORMAT$crc784D66F0_$$_CHECKARG$SMALLINT$BOOLEAN$$BOOLEAN
		test	al,al
		jne	..@j4553
		jmp	..@j4554
..@j4553:
		lea	ax,[bp-14]
		push	ax
		lea	ax,[bp-50]
		push	ax
		mov	bx,word [bp+8]
		mov	ax,word [bp-8]
		mov	si,ax
		mov	ax,6
		mul	si
		mov	si,ax
		mov	bx,word [bx+si+2]
		push	word [bx+8]
		push	word [bx+6]
		push	word [bx+4]
		push	word [bx+2]
		push	word [bx]
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		push	word [bp-24]
		mov	ax,3
		push	ax
		mov	ax,word [bp+4]
		push	ax
		call	SYSUTILS_$$_FLOATTOSTRF$crcE00706A7
		push	word [bp-50]
		call	fpc_ansistr_assign
..@j4554:
..@j4552:
		jmp	..@j4150
..@j4157:
		push	bp
		mov	ax,12
		push	ax
		mov	ax,0
		push	ax
		call	SYSUTILS$_$FORMAT$crc784D66F0_$$_CHECKARG$SMALLINT$BOOLEAN$$BOOLEAN
		test	al,al
		jne	..@j4577
		jmp	..@j4578
..@j4577:
		lea	ax,[bp-14]
		push	ax
		lea	ax,[bp-50]
		push	ax
		mov	bx,word [bp+8]
		mov	ax,word [bp-8]
		mov	si,ax
		mov	ax,6
		mul	si
		mov	si,ax
		mov	bx,word [bx+si+2]
		push	word [bx+6]
		push	word [bx+4]
		push	word [bx+2]
		push	word [bx]
		mov	ax,0
		push	ax
		mov	ax,3
		push	ax
		mov	ax,9999
		push	ax
		push	word [bp-24]
		mov	ax,word [bp+4]
		push	ax
		call	SYSUTILS_$$_FLOATTOSTRF$crc81228EB2
		push	word [bp-50]
		call	fpc_ansistr_assign
		jmp	..@j4601
..@j4578:
		push	bp
		mov	ax,3
		push	ax
		mov	ax,1
		push	ax
		call	SYSUTILS$_$FORMAT$crc784D66F0_$$_CHECKARG$SMALLINT$BOOLEAN$$BOOLEAN
		test	al,al
		jne	..@j4602
		jmp	..@j4603
..@j4602:
		lea	ax,[bp-14]
		push	ax
		lea	ax,[bp-50]
		push	ax
		mov	bx,word [bp+8]
		mov	ax,word [bp-8]
		mov	si,ax
		mov	ax,6
		mul	si
		mov	si,ax
		mov	bx,word [bx+si+2]
		push	word [bx+8]
		push	word [bx+6]
		push	word [bx+4]
		push	word [bx+2]
		push	word [bx]
		mov	ax,0
		push	ax
		mov	ax,3
		push	ax
		mov	ax,9999
		push	ax
		push	word [bp-24]
		mov	ax,word [bp+4]
		push	ax
		call	SYSUTILS_$$_FLOATTOSTRF$crcE00706A7
		push	word [bp-50]
		call	fpc_ansistr_assign
..@j4603:
..@j4601:
		jmp	..@j4150
..@j4158:
		push	bp
		mov	ax,3
		push	ax
		mov	ax,0
		push	ax
		call	SYSUTILS$_$FORMAT$crc784D66F0_$$_CHECKARG$SMALLINT$BOOLEAN$$BOOLEAN
		test	al,al
		jne	..@j4626
		jmp	..@j4627
..@j4626:
		lea	ax,[bp-14]
		push	ax
		lea	ax,[bp-50]
		push	ax
		mov	bx,word [bp+8]
		mov	ax,word [bp-8]
		mov	si,ax
		mov	ax,6
		mul	si
		mov	si,ax
		mov	bx,word [bx+si+2]
		push	word [bx+8]
		push	word [bx+6]
		push	word [bx+4]
		push	word [bx+2]
		push	word [bx]
		mov	ax,0
		push	ax
		mov	ax,4
		push	ax
		mov	ax,9999
		push	ax
		push	word [bp-24]
		mov	ax,word [bp+4]
		push	ax
		call	SYSUTILS_$$_FLOATTOSTRF$crcE00706A7
		push	word [bp-50]
		call	fpc_ansistr_assign
		jmp	..@j4650
..@j4627:
		push	bp
		mov	ax,12
		push	ax
		mov	ax,1
		push	ax
		call	SYSUTILS$_$FORMAT$crc784D66F0_$$_CHECKARG$SMALLINT$BOOLEAN$$BOOLEAN
		test	al,al
		jne	..@j4651
		jmp	..@j4652
..@j4651:
		lea	ax,[bp-14]
		push	ax
		lea	ax,[bp-50]
		push	ax
		mov	bx,word [bp+8]
		mov	ax,word [bp-8]
		mov	si,ax
		mov	ax,6
		mul	si
		mov	si,ax
		mov	bx,word [bx+si+2]
		push	word [bx+6]
		push	word [bx+4]
		push	word [bx+2]
		push	word [bx]
		mov	ax,0
		push	ax
		mov	ax,4
		push	ax
		mov	ax,9999
		push	ax
		push	word [bp-24]
		mov	ax,word [bp+4]
		push	ax
		call	SYSUTILS_$$_FLOATTOSTRF$crc81228EB2
		push	word [bp-50]
		call	fpc_ansistr_assign
..@j4652:
..@j4650:
		jmp	..@j4150
..@j4159:
		push	bp
		mov	ax,4
		push	ax
		mov	ax,0
		push	ax
		call	SYSUTILS$_$FORMAT$crc784D66F0_$$_CHECKARG$SMALLINT$BOOLEAN$$BOOLEAN
		test	al,al
		jne	..@j4675
		jmp	..@j4676
..@j4675:
		lea	ax,[bp-12]
		push	ax
		mov	bx,word [bp+8]
		mov	ax,word [bp-8]
		mov	si,ax
		mov	ax,6
		mul	si
		mov	si,ax
		mov	ax,word [bx+si+2]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_shortstr_to_ansistr
		jmp	..@j4689
..@j4676:
		push	bp
		mov	ax,2
		push	ax
		mov	ax,0
		push	ax
		call	SYSUTILS$_$FORMAT$crc784D66F0_$$_CHECKARG$SMALLINT$BOOLEAN$$BOOLEAN
		test	al,al
		jne	..@j4690
		jmp	..@j4691
..@j4690:
		lea	ax,[bp-12]
		push	ax
		mov	bx,word [bp+8]
		mov	ax,word [bp-8]
		mov	si,ax
		mov	ax,6
		mul	si
		mov	si,ax
		mov	al,byte [bx+si+2]
		mov	ah,0
		push	ax
		mov	ax,0
		push	ax
		call	fpc_char_to_ansistr
		jmp	..@j4704
..@j4691:
		push	bp
		mov	ax,6
		push	ax
		mov	ax,0
		push	ax
		call	SYSUTILS$_$FORMAT$crc784D66F0_$$_CHECKARG$SMALLINT$BOOLEAN$$BOOLEAN
		test	al,al
		jne	..@j4705
		jmp	..@j4706
..@j4705:
		lea	ax,[bp-12]
		push	ax
		mov	bx,word [bp+8]
		mov	ax,word [bp-8]
		mov	si,ax
		mov	ax,6
		mul	si
		mov	si,ax
		push	word [bx+si+2]
		mov	ax,0
		push	ax
		call	fpc_pchar_to_ansistr
		jmp	..@j4719
..@j4706:
		push	bp
		mov	ax,10
		push	ax
		mov	ax,0
		push	ax
		call	SYSUTILS$_$FORMAT$crc784D66F0_$$_CHECKARG$SMALLINT$BOOLEAN$$BOOLEAN
		test	al,al
		jne	..@j4720
		jmp	..@j4721
..@j4720:
		lea	ax,[bp-12]
		push	ax
		lea	ax,[bp-570]
		push	ax
		mov	bx,word [bp+8]
		mov	ax,word [bp-8]
		mov	si,ax
		mov	ax,6
		mul	si
		mov	si,ax
		push	word [bx+si+2]
		call	fpc_pwidechar_to_unicodestr
		push	word [bp-570]
		mov	ax,0
		push	ax
		call	fpc_unicodestr_to_ansistr
		jmp	..@j4738
..@j4721:
		push	bp
		mov	ax,9
		push	ax
		mov	ax,0
		push	ax
		call	SYSUTILS$_$FORMAT$crc784D66F0_$$_CHECKARG$SMALLINT$BOOLEAN$$BOOLEAN
		test	al,al
		jne	..@j4739
		jmp	..@j4740
..@j4739:
		lea	ax,[bp-12]
		push	ax
		lea	ax,[bp-570]
		push	ax
		mov	bx,word [bp+8]
		mov	ax,word [bp-8]
		mov	si,ax
		mov	ax,6
		mul	si
		mov	si,ax
		push	word [bx+si+2]
		call	fpc_uchar_to_unicodestr
		push	word [bp-570]
		mov	ax,0
		push	ax
		call	fpc_unicodestr_to_ansistr
		jmp	..@j4757
..@j4740:
		push	bp
		mov	ax,15
		push	ax
		mov	ax,0
		push	ax
		call	SYSUTILS$_$FORMAT$crc784D66F0_$$_CHECKARG$SMALLINT$BOOLEAN$$BOOLEAN
		test	al,al
		jne	..@j4758
		jmp	..@j4759
..@j4758:
		lea	ax,[bp-12]
		push	ax
		mov	bx,word [bp+8]
		mov	ax,word [bp-8]
		mov	si,ax
		mov	ax,6
		mul	si
		mov	si,ax
		push	word [bx+si+2]
		mov	ax,0
		push	ax
		call	fpc_unicodestr_to_ansistr
		jmp	..@j4772
..@j4759:
		push	bp
		mov	ax,11
		push	ax
		mov	ax,0
		push	ax
		call	SYSUTILS$_$FORMAT$crc784D66F0_$$_CHECKARG$SMALLINT$BOOLEAN$$BOOLEAN
		test	al,al
		jne	..@j4773
		jmp	..@j4774
..@j4773:
		lea	ax,[bp-12]
		push	ax
		mov	bx,word [bp+8]
		mov	ax,word [bp-8]
		mov	si,ax
		mov	ax,6
		mul	si
		mov	si,ax
		push	word [bx+si+2]
		call	fpc_ansistr_assign
		jmp	..@j4785
..@j4774:
		push	bp
		mov	ax,18
		push	ax
		mov	ax,0
		push	ax
		call	SYSUTILS$_$FORMAT$crc784D66F0_$$_CHECKARG$SMALLINT$BOOLEAN$$BOOLEAN
		test	al,al
		jne	..@j4786
		jmp	..@j4787
..@j4786:
		lea	ax,[bp-12]
		push	ax
		lea	ax,[bp-50]
		push	ax
		mov	bx,word [bp+8]
		mov	ax,word [bp-8]
		mov	si,ax
		mov	ax,6
		mul	si
		mov	si,ax
		push	word [bx+si+2]
		mov	ax,0
		push	ax
		call	fpc_unicodestr_to_ansistr
		push	word [bp-50]
		call	fpc_ansistr_assign
		jmp	..@j4804
..@j4787:
		push	bp
		mov	ax,13
		push	ax
		mov	ax,1
		push	ax
		call	SYSUTILS$_$FORMAT$crc784D66F0_$$_CHECKARG$SMALLINT$BOOLEAN$$BOOLEAN
		test	al,al
		jne	..@j4805
		jmp	..@j4806
..@j4805:
		lea	ax,[bp-12]
		push	ax
		lea	ax,[bp-50]
		push	ax
		mov	bx,word [bp+8]
		mov	ax,word [bp-8]
		mov	si,ax
		mov	ax,6
		mul	si
		mov	si,ax
		mov	si,word [bx+si+2]
		sub	sp,16
		mov	di,sp
		push	ds
		pop	es
		cld
		mov	cx,8
		rep
		movsw
		call	SYSTEM_$$_assign$VARIANT$$ANSISTRING
		push	word [bp-50]
		call	fpc_ansistr_assign
..@j4806:
..@j4804:
..@j4785:
..@j4772:
..@j4757:
..@j4738:
..@j4719:
..@j4704:
..@j4689:
		mov	bx,word [bp-12]
		test	bx,bx
		je	..@j4823
		mov	bx,word [bx-2]
..@j4823:
		mov	word [bp-16],bx
		mov	dx,word [bp-24]
		mov	ax,word [bp-22]
		cmp	ax,-1
		jne	..@j4826
		cmp	dx,-1
		jne	..@j4826
		jmp	..@j4825
..@j4826:
		mov	ax,word [bp-16]
		cwd
		cmp	dx,word [bp-22]
		jg	..@j4824
		jl	..@j4825
		cmp	ax,word [bp-24]
		ja	..@j4824
		jmp	..@j4825
		jmp	..@j4825
..@j4824:
		mov	ax,word [bp-24]
		mov	word [bp-16],ax
..@j4825:
		lea	ax,[bp-14]
		push	ax
		lea	ax,[bp-50]
		push	ax
		push	word [bp-12]
		mov	ax,1
		push	ax
		push	word [bp-16]
		call	fpc_ansistr_copy
		push	word [bp-50]
		call	fpc_ansistr_assign
		jmp	..@j4150
..@j4160:
		push	bp
		mov	ax,5
		push	ax
		mov	ax,1
		push	ax
		call	SYSUTILS$_$FORMAT$crc784D66F0_$$_CHECKARG$SMALLINT$BOOLEAN$$BOOLEAN
		lea	ax,[bp-14]
		push	ax
		lea	ax,[bp-50]
		push	ax
		lea	ax,[bp-568]
		push	ax
		mov	bx,word [bp+8]
		mov	ax,word [bp-8]
		mov	si,ax
		mov	ax,6
		mul	si
		mov	si,ax
		mov	dx,word [bx+si+2]
		mov	ax,0
		push	ax
		push	dx
		mov	ax,4
		push	ax
		call	SYSTEM_$$_HEXSTR$LONGINT$BYTE$$SHORTSTRING
		lea	ax,[bp-568]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_shortstr_to_ansistr
		push	word [bp-50]
		call	fpc_ansistr_assign
		jmp	..@j4150
..@j4161:
		push	bp
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		call	SYSUTILS$_$FORMAT$crc784D66F0_$$_CHECKARG$SMALLINT$BOOLEAN$$BOOLEAN
		test	al,al
		jne	..@j4863
		jmp	..@j4864
..@j4863:
		mov	bx,word [bp+8]
		mov	ax,word [bp-8]
		mov	si,ax
		mov	ax,6
		mul	si
		mov	si,ax
		mov	di,word [bx+si+2]
		mov	cx,word [bx+si+4]
		mov	ax,0
		mov	dx,0
		mov	word [bp-34],di
		mov	word [bp-32],cx
		mov	word [bp-30],ax
		mov	word [bp-28],dx
		mov	word [bp-16],16
		jmp	..@j4875
..@j4864:
		push	bp
		mov	ax,17
		push	ax
		mov	ax,0
		push	ax
		call	SYSUTILS$_$FORMAT$crc784D66F0_$$_CHECKARG$SMALLINT$BOOLEAN$$BOOLEAN
		test	al,al
		jne	..@j4876
		jmp	..@j4877
..@j4876:
		mov	bx,word [bp+8]
		mov	ax,word [bp-8]
		mov	si,ax
		mov	ax,6
		mul	si
		mov	si,ax
		mov	si,word [bx+si+2]
		lea	di,[bp-34]
		push	ss
		pop	es
		cld
		mov	cx,4
		rep
		movsw
		mov	word [bp-16],31
		jmp	..@j4888
..@j4877:
		push	bp
		mov	ax,16
		push	ax
		mov	ax,1
		push	ax
		call	SYSUTILS$_$FORMAT$crc784D66F0_$$_CHECKARG$SMALLINT$BOOLEAN$$BOOLEAN
		mov	bx,word [bp+8]
		mov	ax,word [bp-8]
		mov	si,ax
		mov	ax,6
		mul	si
		mov	si,ax
		mov	si,word [bx+si+2]
		lea	di,[bp-34]
		push	ss
		pop	es
		cld
		mov	cx,4
		rep
		movsw
		mov	word [bp-16],31
..@j4888:
..@j4875:
		mov	ax,word [bp-16]
		cwd
		cmp	dx,word [bp-22]
		jl	..@j4899
		jg	..@j4900
		cmp	ax,word [bp-24]
		jb	..@j4899
		jmp	..@j4900
		jmp	..@j4900
..@j4899:
		lea	ax,[bp-14]
		push	ax
		lea	ax,[bp-50]
		push	ax
		lea	ax,[bp-568]
		push	ax
		push	word [bp-28]
		push	word [bp-30]
		push	word [bp-32]
		push	word [bp-34]
		mov	al,byte [bp-16]
		mov	ah,0
		push	ax
		call	SYSTEM_$$_HEXSTR$INT64$BYTE$$SHORTSTRING
		lea	ax,[bp-568]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_shortstr_to_ansistr
		push	word [bp-50]
		call	fpc_ansistr_assign
		jmp	..@j4917
..@j4900:
		mov	word [bp-16],1
		jmp	..@j4921
	ALIGN 2
..@j4920:
		inc	word [bp-16]
..@j4921:
		mov	ax,word [bp-16]
		mov	cl,2
		shl	ax,cl
		mov	dx,1
		mov	bx,0
		mov	si,0
		mov	di,0
		mov	cx,ax
		cmp	cx,64
		jl	..@j4924
		xor	dx,dx
		xor	bx,bx
		xor	si,si
		xor	di,di
		jmp	..@j4926
..@j4924:
		test	cx,cx
		je	..@j4926
..@j4925:
		shl	dx,1
		rcl	bx,1
		rcl	si,1
		rcl	di,1
		loop	..@j4925
..@j4926:
		cmp	di,word [bp-28]
		jb	..@j4923
		ja	..@j4922
		cmp	si,word [bp-30]
		jb	..@j4923
		ja	..@j4922
		cmp	bx,word [bp-32]
		jb	..@j4923
		ja	..@j4922
		cmp	dx,word [bp-34]
		jbe	..@j4923
		jmp	..@j4922
		jmp	..@j4922
..@j4923:
		cmp	word [bp-16],16
		jl	..@j4920
		jmp	..@j4922
..@j4922:
		mov	ax,word [bp-16]
		cwd
		cmp	dx,word [bp-22]
		jg	..@j4927
		jl	..@j4928
		cmp	ax,word [bp-24]
		ja	..@j4927
		jmp	..@j4928
		jmp	..@j4928
..@j4927:
		mov	ax,word [bp-16]
		cwd
		mov	word [bp-24],ax
		mov	word [bp-22],dx
..@j4928:
		lea	ax,[bp-14]
		push	ax
		lea	ax,[bp-50]
		push	ax
		lea	ax,[bp-568]
		push	ax
		push	word [bp-28]
		push	word [bp-30]
		push	word [bp-32]
		push	word [bp-34]
		mov	al,byte [bp-24]
		mov	ah,0
		push	ax
		call	SYSTEM_$$_HEXSTR$INT64$BYTE$$SHORTSTRING
		lea	ax,[bp-568]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_shortstr_to_ansistr
		push	word [bp-50]
		call	fpc_ansistr_assign
..@j4917:
		jmp	..@j4150
..@j4162:
		lea	ax,[bp-14]
		push	ax
		mov	ax,word _$SYSUTILS$_Ld625
		push	ax
		call	fpc_ansistr_assign
		jmp	..@j4150
..@j4151:
..@j4150:
		mov	dx,word [bp-20]
		mov	ax,word [bp-18]
		cmp	ax,-1
		jne	..@j4951
		cmp	dx,-1
		jne	..@j4951
		jmp	..@j4952
..@j4951:
		mov	bx,word [bp-14]
		test	bx,bx
		je	..@j4955
		mov	bx,word [bx-2]
..@j4955:
		mov	ax,bx
		cwd
		mov	cx,ax
		mov	ax,dx
		cmp	ax,word [bp-18]
		jl	..@j4953
		jg	..@j4954
		cmp	cx,word [bp-20]
		jb	..@j4953
		jmp	..@j4954
		jmp	..@j4954
..@j4953:
		cmp	byte [bp-25],0
		je	..@j4956
		jmp	..@j4957
..@j4956:
		lea	ax,[bp-14]
		push	ax
		lea	ax,[bp-50]
		push	ax
		lea	ax,[bp-568]
		push	ax
		mov	bx,word [bp-14]
		test	bx,bx
		je	..@j4970
		mov	bx,word [bx-2]
..@j4970:
		mov	ax,bx
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	dx,word [bp-20]
		mov	bx,word [bp-18]
		sub	dx,cx
		sbb	bx,ax
		push	dx
		call	SYSTEM_$$_SPACE$BYTE$$SHORTSTRING
		lea	ax,[bp-568]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_shortstr_to_ansistr
		push	word [bp-50]
		push	word [bp-14]
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat
		jmp	..@j4977
..@j4957:
		lea	ax,[bp-14]
		push	ax
		push	word [bp-14]
		lea	ax,[bp-50]
		push	ax
		lea	ax,[bp-568]
		push	ax
		mov	bx,word [bp-14]
		test	bx,bx
		je	..@j4992
		mov	bx,word [bx-2]
..@j4992:
		mov	ax,bx
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	dx,word [bp-20]
		mov	bx,word [bp-18]
		sub	dx,cx
		sbb	bx,ax
		push	dx
		call	SYSTEM_$$_SPACE$BYTE$$SHORTSTRING
		lea	ax,[bp-568]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_shortstr_to_ansistr
		push	word [bp-50]
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat
..@j4977:
..@j4954:
..@j4952:
		mov	ax,word [bp+12]
		push	ax
		mov	bx,word [bp+12]
		push	word [bx]
		push	word [bp-14]
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat
..@j4145:
		inc	word [bp-2]
		mov	ax,word [bp-2]
		mov	word [bp-4],ax
..@j4120:
		mov	ax,word [bp-2]
		cmp	ax,word [bp-10]
		jle	..@j4119
		jmp	..@j4121
..@j4121:
..@j4104:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-570]
		push	ax
		call	fpc_unicodestr_decr_ref
		lea	ax,[bp-312]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-50]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-12]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-14]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j4105
		call	FPC_RERAISE
..@j4105:
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	fpc_unicodestr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	SYSTEM_$$_SPACE$BYTE$$SHORTSTRING
EXTERN	_$SYSUTILS$_Ld625
EXTERN	SYSTEM_$$_HEXSTR$INT64$BYTE$$SHORTSTRING
EXTERN	SYSTEM_$$_HEXSTR$LONGINT$BYTE$$SHORTSTRING
EXTERN	SYSTEM_$$_assign$VARIANT$$ANSISTRING
EXTERN	fpc_uchar_to_unicodestr
EXTERN	fpc_unicodestr_to_ansistr
EXTERN	fpc_pwidechar_to_unicodestr
EXTERN	fpc_pchar_to_ansistr
EXTERN	fpc_char_to_ansistr
EXTERN	SYSUTILS_$$_FLOATTOSTRF$crcE00706A7
EXTERN	SYSUTILS_$$_FLOATTOSTRF$crc81228EB2
EXTERN	fpc_shortstr_qword
EXTERN	fpc_shortstr_longword
EXTERN	SYSTEM_$$_INSERT$RAWBYTESTRING$RAWBYTESTRING$SMALLINT
EXTERN	SYSTEM_$$_STRINGOFCHAR$CHAR$SMALLINT$$ANSISTRING
EXTERN	fpc_shortstr_int64
EXTERN	SYSTEM_$$_SETCODEPAGE$RAWBYTESTRING$WORD$BOOLEAN
EXTERN	fpc_shortstr_to_ansistr
EXTERN	fpc_shortstr_longint
EXTERN	SYSUTILS$_$FORMAT$crc784D66F0_$$_CHECKARG$SMALLINT$BOOLEAN$$BOOLEAN
EXTERN	SYSUTILS$_$FORMAT$crc784D66F0_$$_READFORMAT$$CHAR
EXTERN	fpc_ansistr_concat
EXTERN	fpc_ansistr_copy
EXTERN	fpc_ansistr_assign
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
