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
EXTERN	DOORKIT86_$$_FOSSILINIT$WORD$$BOOLEAN
EXTERN	SYSTEM_$$_CLOSE$TEXT
EXTERN	SYSTEM_$$_EOF$TEXT$$BOOLEAN
EXTERN	fpc_val_uint_shortstr
EXTERN	fpc_readln_end
EXTERN	fpc_read_text_shortstr
EXTERN	SYSTEM_$$_IORESULT$$WORD
EXTERN	SYSTEM_$$_RESET$TEXT
EXTERN	SYSTEM_$$_ASSIGN$TEXT$SHORTSTRING
EXTERN	U_$DOORKIT86_$$_DOORFOSSIL
EXTERN	U_$DOORKIT86_$$_DOORLOCALMODE
EXTERN	U_$DOORKIT86_$$_DOORTIMELEFT
EXTERN	U_$DOORKIT86_$$_DOORCOMPORT
EXTERN	_$DOORKIT86$_Ld14
EXTERN	U_$DOORKIT86_$$_DOORBBSNAME
EXTERN	_$DOORKIT86$_Ld13
EXTERN	U_$DOORKIT86_$$_DOORUSERNAME
EXTERN	fpc_shortstr_to_shortstr
