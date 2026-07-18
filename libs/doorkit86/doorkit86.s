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

EXTERN	FPC_INTR
EXTERN	fpc_shortstr_to_shortstr
EXTERN	fpc_get_output
EXTERN	fpc_write_text_shortstr
EXTERN	FPC_IOCHECK
EXTERN	fpc_write_end
EXTERN	fpc_shortstr_concat
EXTERN	fpc_shortstr_concat_multi
EXTERN	SYSTEM_$$_DELETE$OPENSTRING$SMALLINT$SMALLINT
EXTERN	SYSTEM_$$_ASSIGN$TEXT$SHORTSTRING
EXTERN	SYSTEM_$$_RESET$TEXT
EXTERN	SYSTEM_$$_IORESULT$$WORD
EXTERN	fpc_read_text_shortstr
EXTERN	fpc_readln_end
EXTERN	fpc_val_uint_shortstr
EXTERN	SYSTEM_$$_EOF$TEXT$$BOOLEAN
EXTERN	SYSTEM_$$_CLOSE$TEXT
EXTERN	fpc_shortstr_longint
; Begin asmlist al_procedures

SECTION .text
	ALIGN 2
	GLOBAL DOORKIT86_$$_FOSSILINIT$WORD$$BOOLEAN
DOORKIT86_$$_FOSSILINIT$WORD$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,22
		mov	byte [bp-21],4
		mov	ax,word [bp+4]
		mov	word [bp-16],ax
		mov	ax,20
		push	ax
		lea	ax,[bp-22]
		push	ax
		call	FPC_INTR
		cmp	word [bp-22],6484
		mov	al,0
		jne	..@j15
		inc	ax
..@j15:
		mov	byte [bp-1],al
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	2

SECTION .text
	ALIGN 2
	GLOBAL DOORKIT86_$$_FOSSILCLOSE$WORD
DOORKIT86_$$_FOSSILCLOSE$WORD:
		push	bp
		mov	bp,sp
		sub	sp,20
		mov	byte [bp-19],5
		mov	ax,word [bp+4]
		mov	word [bp-14],ax
		mov	ax,20
		push	ax
		lea	ax,[bp-20]
		push	ax
		call	FPC_INTR
		mov	sp,bp
		pop	bp
		ret	2

SECTION .text
	ALIGN 2
	GLOBAL DOORKIT86_$$_FOSSILSTATUS$WORD$$WORD
DOORKIT86_$$_FOSSILSTATUS$WORD$$WORD:
		push	bp
		mov	bp,sp
		sub	sp,22
		mov	byte [bp-21],3
		mov	ax,word [bp+4]
		mov	word [bp-16],ax
		mov	ax,20
		push	ax
		lea	ax,[bp-22]
		push	ax
		call	FPC_INTR
		mov	ax,word [bp-22]
		mov	word [bp-2],ax
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2

SECTION .text
	ALIGN 2
	GLOBAL DOORKIT86_$$_FOSSILREAD$WORD$$CHAR
DOORKIT86_$$_FOSSILREAD$WORD$$CHAR:
		push	bp
		mov	bp,sp
		sub	sp,22
		mov	byte [bp-21],2
		mov	ax,word [bp+4]
		mov	word [bp-16],ax
		mov	ax,20
		push	ax
		lea	ax,[bp-22]
		push	ax
		call	FPC_INTR
		mov	al,byte [bp-22]
		mov	byte [bp-1],al
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	2

SECTION .text
	ALIGN 2
	GLOBAL DOORKIT86_$$_FOSSILWRITE$WORD$CHAR
DOORKIT86_$$_FOSSILWRITE$WORD$CHAR:
		push	bp
		mov	bp,sp
		sub	sp,20
		mov	byte [bp-19],1
		mov	al,byte [bp+4]
		mov	byte [bp-20],al
		mov	ax,word [bp+6]
		mov	word [bp-14],ax
		mov	ax,20
		push	ax
		lea	ax,[bp-20]
		push	ax
		call	FPC_INTR
		mov	sp,bp
		pop	bp
		ret	4

SECTION .text
	ALIGN 2
	GLOBAL DOORKIT86_$$_FOSSILWRITESTR$WORD$SHORTSTRING
DOORKIT86_$$_FOSSILWRITESTR$WORD$SHORTSTRING:
		push	bp
		mov	bp,sp
		sub	sp,262
		mov	dx,word [bp+4]
		lea	ax,[bp-257]
		push	ax
		mov	ax,255
		push	ax
		push	dx
		call	fpc_shortstr_to_shortstr
		mov	al,byte [bp-257]
		mov	byte [bp-262],al
		mov	byte [bp-1],1
		mov	al,byte [bp-262]
		cmp	al,byte [bp-1]
		jb	..@j67
		dec	byte [bp-1]
	ALIGN 2
..@j68:
		inc	byte [bp-1]
		push	word [bp+6]
		mov	al,byte [bp-1]
		mov	byte [bp-260],al
		mov	byte [bp-259],0
		mov	si,word [bp-260]
		mov	al,byte [bp+si-257]
		mov	ah,0
		push	ax
		call	DOORKIT86_$$_FOSSILWRITE$WORD$CHAR
		mov	al,byte [bp-262]
		cmp	al,byte [bp-1]
		ja	..@j68
..@j67:
		mov	sp,bp
		pop	bp
		ret	4

SECTION .text
	ALIGN 2
	GLOBAL DOORKIT86_$$_BIOSKEYPRESSED$$BOOLEAN
DOORKIT86_$$_BIOSKEYPRESSED$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,22
		mov	byte [bp-21],1
		mov	ax,22
		push	ax
		lea	ax,[bp-22]
		push	ax
		call	FPC_INTR
		mov	ax,word [bp-4]
		and	ax,64
		test	ax,ax
		mov	al,0
		jne	..@j83
		inc	ax
..@j83:
		mov	byte [bp-1],al
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret

SECTION .text
	ALIGN 2
	GLOBAL DOORKIT86_$$_BIOSREADKEY$$CHAR
DOORKIT86_$$_BIOSREADKEY$$CHAR:
		push	bp
		mov	bp,sp
		sub	sp,22
		mov	byte [bp-21],0
		mov	ax,22
		push	ax
		lea	ax,[bp-22]
		push	ax
		call	FPC_INTR
		mov	al,byte [bp-22]
		mov	byte [bp-1],al
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret

SECTION .text
	ALIGN 2
	GLOBAL DOORKIT86_$$_DOORWRITE$SHORTSTRING
DOORKIT86_$$_DOORWRITE$SHORTSTRING:
		push	bp
		mov	bp,sp
		sub	sp,262
		mov	dx,word [bp+4]
		lea	ax,[bp-257]
		push	ax
		mov	ax,255
		push	ax
		push	dx
		call	fpc_shortstr_to_shortstr
		call	fpc_get_output
		mov	dx,0
		push	dx
		mov	dx,0
		push	dx
		mov	word [bp-262],ax
		push	word [bp-262]
		lea	ax,[bp-257]
		push	ax
		call	fpc_write_text_shortstr
		call	FPC_IOCHECK
		mov	ax,word [bp-262]
		mov	word [bp-260],ax
		push	word [bp-260]
		call	fpc_write_end
		call	FPC_IOCHECK
		cmp	byte [U_$DOORKIT86_$$_DOORFOSSIL],0
		jne	..@j108
		jmp	..@j107
..@j108:
		cmp	byte [U_$DOORKIT86_$$_DOORLOCALMODE],0
		je	..@j106
		jmp	..@j107
..@j106:
		push	word [U_$DOORKIT86_$$_DOORCOMPORT]
		lea	ax,[bp-257]
		push	ax
		call	DOORKIT86_$$_FOSSILWRITESTR$WORD$SHORTSTRING
..@j107:
		mov	sp,bp
		pop	bp
		ret	2

SECTION .text
	ALIGN 2
	GLOBAL DOORKIT86_$$_DOORWRITELN$SHORTSTRING
DOORKIT86_$$_DOORWRITELN$SHORTSTRING:
		push	bp
		mov	bp,sp
		sub	sp,512
		mov	dx,word [bp+4]
		lea	ax,[bp-256]
		push	ax
		mov	ax,255
		push	ax
		push	dx
		call	fpc_shortstr_to_shortstr
		lea	ax,[bp-512]
		push	ax
		mov	ax,255
		push	ax
		lea	ax,[bp-256]
		push	ax
		mov	ax,word _$DOORKIT86$_Ld1
		push	ax
		call	fpc_shortstr_concat
		lea	ax,[bp-512]
		push	ax
		call	DOORKIT86_$$_DOORWRITE$SHORTSTRING
		mov	sp,bp
		pop	bp
		ret	2

SECTION .text
	ALIGN 2
	GLOBAL DOORKIT86_$$_DOORANSICOLOR$BYTE$BYTE
DOORKIT86_$$_DOORANSICOLOR$BYTE$BYTE:
		push	bp
		mov	bp,sp
		sub	sp,520
		cmp	byte [bp+6],7
		mov	al,0
		jbe	..@j129
		inc	ax
..@j129:
		mov	byte [bp-257],al
		cmp	byte [bp-257],0
		jne	..@j130
		jmp	..@j131
..@j130:
		mov	al,byte [bp+6]
		mov	ah,0
		sub	ax,8
		mov	byte [bp+6],al
..@j131:
		lea	ax,[bp-256]
		push	ax
		mov	ax,255
		push	ax
		mov	ax,word _$DOORKIT86$_Ld2
		push	ax
		call	fpc_shortstr_to_shortstr
		cmp	byte [bp-257],0
		jne	..@j140
		jmp	..@j141
..@j140:
		lea	ax,[bp-256]
		push	ax
		mov	ax,255
		push	ax
		lea	ax,[bp-256]
		push	ax
		mov	ax,word _$DOORKIT86$_Ld3
		push	ax
		call	fpc_shortstr_concat
		jmp	..@j150
..@j141:
		lea	ax,[bp-256]
		push	ax
		mov	ax,255
		push	ax
		lea	ax,[bp-256]
		push	ax
		mov	ax,word _$DOORKIT86$_Ld4
		push	ax
		call	fpc_shortstr_concat
..@j150:
		lea	ax,[bp-256]
		push	ax
		mov	ax,255
		push	ax
		lea	ax,[bp-256]
		mov	word [bp-264],ax
		mov	ax,word _$DOORKIT86$_Ld5
		mov	word [bp-262],ax
		mov	al,byte [bp+6]
		mov	ah,0
		add	ax,48
		mov	ah,0
		mov	cl,8
		shl	ax,cl
		mov	dx,0
		or	ax,1
		mov	word [bp-520],ax
		lea	ax,[bp-520]
		mov	word [bp-260],ax
		lea	ax,[bp-264]
		push	ax
		mov	ax,2
		push	ax
		call	fpc_shortstr_concat_multi
		cmp	byte [bp+4],0
		ja	..@j167
		jmp	..@j168
..@j167:
		lea	ax,[bp-256]
		push	ax
		mov	ax,255
		push	ax
		lea	ax,[bp-256]
		mov	word [bp-264],ax
		mov	ax,word _$DOORKIT86$_Ld6
		mov	word [bp-262],ax
		mov	al,byte [bp+4]
		mov	ah,0
		add	ax,48
		mov	ah,0
		mov	cl,8
		shl	ax,cl
		mov	dx,0
		or	ax,1
		mov	word [bp-520],ax
		lea	ax,[bp-520]
		mov	word [bp-260],ax
		lea	ax,[bp-264]
		push	ax
		mov	ax,2
		push	ax
		call	fpc_shortstr_concat_multi
..@j168:
		lea	ax,[bp-256]
		push	ax
		mov	ax,255
		push	ax
		lea	ax,[bp-256]
		push	ax
		mov	ax,word _$DOORKIT86$_Ld7
		push	ax
		call	fpc_shortstr_concat
		lea	ax,[bp-256]
		push	ax
		call	DOORKIT86_$$_DOORWRITE$SHORTSTRING
		mov	sp,bp
		pop	bp
		ret	4

SECTION .text
	ALIGN 2
	GLOBAL DOORKIT86_$$_DOORANSIGOTOXY$BYTE$BYTE
DOORKIT86_$$_DOORANSIGOTOXY$BYTE$BYTE:
		push	bp
		mov	bp,sp
		sub	sp,778
		lea	ax,[bp-256]
		push	ax
		mov	ax,255
		push	ax
		mov	ax,word _$DOORKIT86$_Ld2
		mov	word [bp-266],ax
		lea	ax,[bp-522]
		push	ax
		mov	ax,0
		mov	dl,byte [bp+4]
		mov	dh,0
		push	ax
		push	dx
		call	DOORKIT86_$$_INTTOSTR$LONGINT$$SHORTSTRING
		lea	ax,[bp-522]
		mov	word [bp-264],ax
		mov	ax,word _$DOORKIT86$_Ld8
		mov	word [bp-262],ax
		lea	ax,[bp-778]
		push	ax
		mov	ax,0
		mov	dl,byte [bp+6]
		mov	dh,0
		push	ax
		push	dx
		call	DOORKIT86_$$_INTTOSTR$LONGINT$$SHORTSTRING
		lea	ax,[bp-778]
		mov	word [bp-260],ax
		mov	ax,word _$DOORKIT86$_Ld9
		mov	word [bp-258],ax
		lea	ax,[bp-266]
		push	ax
		mov	ax,4
		push	ax
		call	fpc_shortstr_concat_multi
		lea	ax,[bp-256]
		push	ax
		call	DOORKIT86_$$_DOORWRITE$SHORTSTRING
		mov	sp,bp
		pop	bp
		ret	4

SECTION .text
	ALIGN 2
	GLOBAL DOORKIT86_$$_DOORANSICLRSCR
DOORKIT86_$$_DOORANSICLRSCR:
		push	bp
		mov	bp,sp
		mov	ax,word _$DOORKIT86$_Ld10
		push	ax
		call	DOORKIT86_$$_DOORWRITE$SHORTSTRING
		mov	sp,bp
		pop	bp
		ret

SECTION .text
	ALIGN 2
	GLOBAL DOORKIT86_$$_DOORKEYPRESSED$$BOOLEAN
DOORKIT86_$$_DOORKEYPRESSED$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,2
		call	DOORKIT86_$$_BIOSKEYPRESSED$$BOOLEAN
		test	al,al
		jne	..@j213
		jmp	..@j214
..@j213:
		mov	byte [bp-1],1
		jmp	..@j211
..@j214:
		cmp	byte [U_$DOORKIT86_$$_DOORFOSSIL],0
		jne	..@j219
		jmp	..@j218
..@j219:
		cmp	byte [U_$DOORKIT86_$$_DOORLOCALMODE],0
		je	..@j217
		jmp	..@j218
..@j217:
		push	word [U_$DOORKIT86_$$_DOORCOMPORT]
		call	DOORKIT86_$$_FOSSILSTATUS$WORD$$WORD
		and	ax,256
		test	ax,ax
		mov	al,0
		je	..@j224
		inc	ax
..@j224:
		mov	byte [bp-1],al
		jmp	..@j211
..@j218:
		mov	byte [bp-1],0
..@j211:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret

SECTION .text
	ALIGN 2
	GLOBAL DOORKIT86_$$_DOORREADKEY$$CHAR
DOORKIT86_$$_DOORREADKEY$$CHAR:
		push	bp
		mov	bp,sp
		sub	sp,2
		jmp	..@j230
	ALIGN 2
..@j229:
..@j230:
		call	DOORKIT86_$$_DOORKEYPRESSED$$BOOLEAN
		test	al,al
		jne	..@j231
		jmp	..@j229
..@j231:
		call	DOORKIT86_$$_BIOSKEYPRESSED$$BOOLEAN
		test	al,al
		jne	..@j232
		jmp	..@j233
..@j232:
		call	DOORKIT86_$$_BIOSREADKEY$$CHAR
		mov	byte [bp-1],al
		jmp	..@j236
..@j233:
		push	word [U_$DOORKIT86_$$_DOORCOMPORT]
		call	DOORKIT86_$$_FOSSILREAD$WORD$$CHAR
		mov	byte [bp-1],al
..@j236:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret

SECTION .text
	ALIGN 2
	GLOBAL DOORKIT86_$$_DOORINPUTLINE$BYTE$$SHORTSTRING
DOORKIT86_$$_DOORINPUTLINE$BYTE$$SHORTSTRING:
		push	bp
		mov	bp,sp
		sub	sp,514
		mov	byte [bp-256],0
	ALIGN 2
..@j245:
		call	DOORKIT86_$$_DOORREADKEY$$CHAR
		mov	byte [bp-257],al
		mov	al,byte [bp-257]
		cmp	al,8
		jb	..@j251
		sub	al,8
		je	..@j253
		sub	al,5
		je	..@j252
		sub	al,14
		je	..@j254
		jmp	..@j251
..@j252:
		mov	ax,word _$DOORKIT86$_Ld11
		push	ax
		call	DOORKIT86_$$_DOORWRITELN$SHORTSTRING
		jmp	..@j247
		jmp	..@j250
..@j253:
		cmp	byte [bp-256],0
		ja	..@j257
		jmp	..@j258
..@j257:
		lea	ax,[bp-256]
		push	ax
		mov	ax,255
		push	ax
		mov	al,byte [bp-256]
		mov	ah,0
		push	ax
		mov	ax,1
		push	ax
		call	SYSTEM_$$_DELETE$OPENSTRING$SMALLINT$SMALLINT
		mov	ax,word _$DOORKIT86$_Ld12
		push	ax
		call	DOORKIT86_$$_DOORWRITE$SHORTSTRING
..@j258:
		jmp	..@j250
..@j254:
		jmp	..@j250
..@j251:
		mov	al,byte [bp-256]
		cmp	al,byte [bp+4]
		jb	..@j269
		jmp	..@j270
..@j269:
		lea	ax,[bp-256]
		push	ax
		mov	ax,255
		push	ax
		lea	ax,[bp-256]
		push	ax
		mov	al,byte [bp-257]
		mov	ah,0
		mov	cl,8
		shl	ax,cl
		mov	dx,0
		or	ax,1
		mov	word [bp-513],ax
		lea	ax,[bp-513]
		push	ax
		call	fpc_shortstr_concat
		mov	al,byte [bp-257]
		mov	ah,0
		mov	cl,8
		shl	ax,cl
		mov	dx,0
		or	ax,1
		mov	word [bp-513],ax
		lea	ax,[bp-513]
		push	ax
		call	DOORKIT86_$$_DOORWRITE$SHORTSTRING
..@j270:
..@j250:
		jmp	..@j245
..@j247:
		mov	ax,word [bp+6]
		push	ax
		mov	ax,255
		push	ax
		lea	ax,[bp-256]
		push	ax
		call	fpc_shortstr_to_shortstr
		mov	sp,bp
		pop	bp
		ret	4

SECTION .text
	ALIGN 2
	GLOBAL DOORKIT86_$$_DOORINIT$SHORTSTRING$$BOOLEAN
DOORKIT86_$$_DOORINIT$SHORTSTRING$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,1346
		mov	dx,word [bp+4]
		lea	ax,[bp-1346]
		push	ax
		mov	ax,255
		push	ax
		push	dx
		call	fpc_shortstr_to_shortstr
		mov	ax,word U_$DOORKIT86_$$_DOORUSERNAME
		push	ax
		mov	ax,255
		push	ax
		mov	ax,word _$DOORKIT86$_Ld13
		push	ax
		call	fpc_shortstr_to_shortstr
		mov	ax,word U_$DOORKIT86_$$_DOORBBSNAME
		push	ax
		mov	ax,255
		push	ax
		mov	ax,word _$DOORKIT86$_Ld14
		push	ax
		call	fpc_shortstr_to_shortstr
		mov	word [U_$DOORKIT86_$$_DOORCOMPORT],0
		mov	word [U_$DOORKIT86_$$_DOORTIMELEFT],60
		mov	byte [U_$DOORKIT86_$$_DOORLOCALMODE],1
		mov	byte [U_$DOORKIT86_$$_DOORFOSSIL],0
		mov	byte [bp-1],0
		lea	ax,[bp-832]
		push	ax
		lea	ax,[bp-1346]
		push	ax
		call	SYSTEM_$$_ASSIGN$TEXT$SHORTSTRING
		lea	ax,[bp-832]
		push	ax
		call	SYSTEM_$$_RESET$TEXT
		call	SYSTEM_$$_IORESULT$$WORD
		test	ax,ax
		jne	..@j317
		jmp	..@j318
..@j317:
		mov	byte [U_$DOORKIT86_$$_DOORLOCALMODE],1
		mov	byte [bp-1],1
		jmp	..@j287
..@j318:
		mov	word [bp-1090],0
		jmp	..@j326
	ALIGN 2
..@j325:
		lea	ax,[bp-832]
		push	ax
		lea	ax,[bp-1088]
		push	ax
		mov	ax,255
		push	ax
		call	fpc_read_text_shortstr
		lea	ax,[bp-832]
		push	ax
		call	fpc_readln_end
		inc	word [bp-1090]
		mov	ax,word [bp-1090]
		cmp	ax,1
		jl	..@j337
		dec	ax
		je	..@j338
		sub	ax,6
		je	..@j339
		sub	ax,11
		je	..@j341
		sub	ax,17
		je	..@j340
		jmp	..@j337
..@j338:
		cmp	byte [bp-1088],4
		jae	..@j344
		jmp	..@j343
..@j344:
		cmp	byte [bp-1087],67
		je	..@j342
		jmp	..@j343
..@j342:
		mov	al,byte [bp-1084]
		mov	ah,0
		sub	ax,49
		mov	word [U_$DOORKIT86_$$_DOORCOMPORT],ax
		mov	byte [U_$DOORKIT86_$$_DOORLOCALMODE],0
..@j343:
		jmp	..@j336
..@j339:
		mov	ax,word U_$DOORKIT86_$$_DOORUSERNAME
		push	ax
		mov	ax,255
		push	ax
		lea	ax,[bp-1088]
		push	ax
		call	fpc_shortstr_to_shortstr
		jmp	..@j336
..@j340:
		mov	ax,word U_$DOORKIT86_$$_DOORBBSNAME
		push	ax
		mov	ax,255
		push	ax
		lea	ax,[bp-1088]
		push	ax
		call	fpc_shortstr_to_shortstr
		jmp	..@j336
..@j341:
		lea	ax,[bp-1088]
		push	ax
		lea	ax,[bp-1090]
		push	ax
		call	fpc_val_uint_shortstr
		mov	word [U_$DOORKIT86_$$_DOORTIMELEFT],ax
		cmp	word [bp-1090],0
		jne	..@j367
		jmp	..@j368
..@j367:
		mov	word [U_$DOORKIT86_$$_DOORTIMELEFT],60
..@j368:
		jmp	..@j336
..@j337:
..@j336:
..@j326:
		lea	ax,[bp-832]
		push	ax
		call	SYSTEM_$$_EOF$TEXT$$BOOLEAN
		test	al,al
		jne	..@j327
		jmp	..@j325
..@j327:
		lea	ax,[bp-832]
		push	ax
		call	SYSTEM_$$_CLOSE$TEXT
		cmp	byte [U_$DOORKIT86_$$_DOORLOCALMODE],0
		je	..@j375
		jmp	..@j376
..@j375:
		push	word [U_$DOORKIT86_$$_DOORCOMPORT]
		call	DOORKIT86_$$_FOSSILINIT$WORD$$BOOLEAN
		mov	byte [U_$DOORKIT86_$$_DOORFOSSIL],al
..@j376:
		mov	byte [bp-1],1
..@j287:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	2

SECTION .text
	ALIGN 2
	GLOBAL DOORKIT86_$$_DOORCLOSE
DOORKIT86_$$_DOORCLOSE:
		push	bp
		mov	bp,sp
		cmp	byte [U_$DOORKIT86_$$_DOORFOSSIL],0
		jne	..@j385
		jmp	..@j386
..@j385:
		push	word [U_$DOORKIT86_$$_DOORCOMPORT]
		call	DOORKIT86_$$_FOSSILCLOSE$WORD
..@j386:
		mov	sp,bp
		pop	bp
		ret

SECTION .text
	ALIGN 2
	GLOBAL DOORKIT86_$$_INTTOSTR$LONGINT$$SHORTSTRING
DOORKIT86_$$_INTTOSTR$LONGINT$$SHORTSTRING:
		push	bp
		mov	bp,sp
		sub	sp,256
		push	word [bp+6]
		push	word [bp+4]
		mov	ax,-1
		push	ax
		lea	ax,[bp-256]
		push	ax
		mov	ax,255
		push	ax
		call	fpc_shortstr_longint
		mov	ax,word [bp+8]
		push	ax
		mov	ax,255
		push	ax
		lea	ax,[bp-256]
		push	ax
		call	fpc_shortstr_to_shortstr
		mov	sp,bp
		pop	bp
		ret	6

SECTION .text
	ALIGN 2
	GLOBAL DOORKIT86_$$_PADRIGHT$SHORTSTRING$BYTE$$SHORTSTRING
DOORKIT86_$$_PADRIGHT$SHORTSTRING$BYTE$$SHORTSTRING:
		push	bp
		mov	bp,sp
		sub	sp,256
		mov	dx,word [bp+6]
		lea	ax,[bp-256]
		push	ax
		mov	ax,255
		push	ax
		push	dx
		call	fpc_shortstr_to_shortstr
		jmp	..@j408
	ALIGN 2
..@j407:
		lea	ax,[bp-256]
		push	ax
		mov	ax,255
		push	ax
		lea	ax,[bp-256]
		push	ax
		mov	ax,word _$DOORKIT86$_Ld15
		push	ax
		call	fpc_shortstr_concat
..@j408:
		mov	al,byte [bp-256]
		cmp	al,byte [bp+4]
		jb	..@j407
		jmp	..@j409
..@j409:
		mov	ax,word [bp+8]
		push	ax
		mov	ax,255
		push	ax
		lea	ax,[bp-256]
		push	ax
		call	fpc_shortstr_to_shortstr
		mov	sp,bp
		pop	bp
		ret	6
; End asmlist al_procedures
; Begin asmlist al_globals

SECTION .bss
	GLOBAL U_$DOORKIT86_$$_DOORUSERNAME
U_$DOORKIT86_$$_DOORUSERNAME:	RESB	256

SECTION .bss
	GLOBAL U_$DOORKIT86_$$_DOORBBSNAME
U_$DOORKIT86_$$_DOORBBSNAME:	RESB	256

SECTION .bss
	ALIGNB 2
	GLOBAL U_$DOORKIT86_$$_DOORCOMPORT
U_$DOORKIT86_$$_DOORCOMPORT:	RESB	2

SECTION .bss
	ALIGNB 2
	GLOBAL U_$DOORKIT86_$$_DOORTIMELEFT
U_$DOORKIT86_$$_DOORTIMELEFT:	RESB	2

SECTION .bss
	GLOBAL U_$DOORKIT86_$$_DOORLOCALMODE
U_$DOORKIT86_$$_DOORLOCALMODE:	RESB	1

SECTION .bss
	GLOBAL U_$DOORKIT86_$$_DOORFOSSIL
U_$DOORKIT86_$$_DOORFOSSIL:	RESB	1
; End asmlist al_globals
; Begin asmlist al_typedconsts

SECTION .rodata
	ALIGN 2
_$DOORKIT86$_Ld1:
		DB	2,13,10,0

SECTION .rodata
	ALIGN 2
_$DOORKIT86$_Ld2:
		DB	2,27,"[",0

SECTION .rodata
	ALIGN 2
_$DOORKIT86$_Ld3:
		DB	1,"1",0

SECTION .rodata
	ALIGN 2
_$DOORKIT86$_Ld4:
		DB	1,"0",0

SECTION .rodata
	ALIGN 2
_$DOORKIT86$_Ld5:
		DB	2,";3",0

SECTION .rodata
	ALIGN 2
_$DOORKIT86$_Ld6:
		DB	2,";4",0

SECTION .rodata
	ALIGN 2
_$DOORKIT86$_Ld7:
		DB	1,"m",0

SECTION .rodata
	ALIGN 2
_$DOORKIT86$_Ld8:
		DB	1,";",0

SECTION .rodata
	ALIGN 2
_$DOORKIT86$_Ld9:
		DB	1,"H",0

SECTION .rodata
	ALIGN 2
_$DOORKIT86$_Ld10:
		DB	10,27,"[2J",27,"[1;1H",0

SECTION .rodata
	ALIGN 2
_$DOORKIT86$_Ld11:
		DB	0,0

SECTION .rodata
	ALIGN 2
_$DOORKIT86$_Ld12:
		DB	3,8," ",8,0

SECTION .rodata
	ALIGN 2
_$DOORKIT86$_Ld13:
		DB	5,"Sysop",0

SECTION .rodata
	ALIGN 2
_$DOORKIT86$_Ld14:
		DB	9,"Local BBS",0

SECTION .rodata
	ALIGN 2
_$DOORKIT86$_Ld15:
		DB	1," ",0
; End asmlist al_typedconsts

