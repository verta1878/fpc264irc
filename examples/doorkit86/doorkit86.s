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

EXTERN	fpc_get_output
EXTERN	fpc_write_text_shortstr
EXTERN	FPC_IOCHECK
EXTERN	fpc_write_text_uint
EXTERN	fpc_write_text_char
EXTERN	fpc_write_end
EXTERN	FPC_INTR
EXTERN	fpc_shortstr_to_shortstr
EXTERN	SYSTEM_$$_ASSIGN$TEXT$SHORTSTRING
EXTERN	SYSTEM_$$_RESET$TEXT
EXTERN	SYSTEM_$$_IORESULT$$WORD
EXTERN	fpc_read_text_shortstr
EXTERN	fpc_readln_end
EXTERN	fpc_val_longint_shortstr
EXTERN	fpc_val_uint_shortstr
EXTERN	SYSTEM_$$_CLOSE$TEXT
EXTERN	fpc_shortstr_concat
EXTERN	fpc_writeln_end
EXTERN	fpc_shortstr_concat_multi
EXTERN	DOS_$$_DOSVERSION$$WORD
EXTERN	DOS_$$_GETDATE$WORD$WORD$WORD$WORD
EXTERN	DOS_$$_GETTIME$WORD$WORD$WORD$WORD
EXTERN	SYSTEM_$$_REWRITE$TEXT
EXTERN	FPC_INITIALIZEUNITS
EXTERN	FPC_DO_EXIT
EXTERN	INIT$_$SYSTEM
EXTERN	THREADVARLIST_$SYSTEM
EXTERN	THREADVARLIST_$DOS
; Begin asmlist al_procedures

SECTION text
	ALIGN 2
	GLOBAL P$DOORKIT86_$$_ANSICOLOR$BYTE$BYTE
P$DOORKIT86_$$_ANSICOLOR$BYTE$BYTE:
		push	bp
		mov	bp,sp
		sub	sp,12
		call	fpc_get_output
		mov	dx,0
		push	dx
		mov	dx,0
		push	dx
		mov	word [bp-12],ax
		push	word [bp-12]
		mov	ax,word _$DOORKIT86$_Ld1
		push	ax
		call	fpc_write_text_shortstr
		call	FPC_IOCHECK
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word [bp-12]
		mov	word [bp-10],ax
		push	word [bp-10]
		mov	al,byte [bp+6]
		mov	ah,0
		push	ax
		call	fpc_write_text_uint
		call	FPC_IOCHECK
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word [bp-10]
		mov	word [bp-8],ax
		push	word [bp-8]
		mov	ax,59
		push	ax
		call	fpc_write_text_char
		call	FPC_IOCHECK
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word [bp-8]
		mov	word [bp-6],ax
		push	word [bp-6]
		mov	al,byte [bp+4]
		mov	ah,0
		push	ax
		call	fpc_write_text_uint
		call	FPC_IOCHECK
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word [bp-6]
		mov	word [bp-4],ax
		push	word [bp-4]
		mov	ax,109
		push	ax
		call	fpc_write_text_char
		call	FPC_IOCHECK
		mov	ax,word [bp-4]
		mov	word [bp-2],ax
		push	word [bp-2]
		call	fpc_write_end
		call	FPC_IOCHECK
		mov	sp,bp
		pop	bp
		ret	4

SECTION text
	ALIGN 2
	GLOBAL P$DOORKIT86_$$_ANSICLS
P$DOORKIT86_$$_ANSICLS:
		push	bp
		mov	bp,sp
		sub	sp,4
		call	fpc_get_output
		mov	dx,0
		push	dx
		mov	dx,0
		push	dx
		mov	word [bp-4],ax
		push	word [bp-4]
		mov	ax,word _$DOORKIT86$_Ld2
		push	ax
		call	fpc_write_text_shortstr
		call	FPC_IOCHECK
		mov	ax,word [bp-4]
		mov	word [bp-2],ax
		push	word [bp-2]
		call	fpc_write_end
		call	FPC_IOCHECK
		mov	sp,bp
		pop	bp
		ret

SECTION text
	ALIGN 2
	GLOBAL P$DOORKIT86_$$_ANSIXY$BYTE$BYTE
P$DOORKIT86_$$_ANSIXY$BYTE$BYTE:
		push	bp
		mov	bp,sp
		sub	sp,12
		call	fpc_get_output
		mov	dx,0
		push	dx
		mov	dx,0
		push	dx
		mov	word [bp-12],ax
		push	word [bp-12]
		mov	ax,word _$DOORKIT86$_Ld1
		push	ax
		call	fpc_write_text_shortstr
		call	FPC_IOCHECK
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word [bp-12]
		mov	word [bp-10],ax
		push	word [bp-10]
		mov	al,byte [bp+4]
		mov	ah,0
		push	ax
		call	fpc_write_text_uint
		call	FPC_IOCHECK
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word [bp-10]
		mov	word [bp-8],ax
		push	word [bp-8]
		mov	ax,59
		push	ax
		call	fpc_write_text_char
		call	FPC_IOCHECK
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word [bp-8]
		mov	word [bp-6],ax
		push	word [bp-6]
		mov	al,byte [bp+6]
		mov	ah,0
		push	ax
		call	fpc_write_text_uint
		call	FPC_IOCHECK
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word [bp-6]
		mov	word [bp-4],ax
		push	word [bp-4]
		mov	ax,72
		push	ax
		call	fpc_write_text_char
		call	FPC_IOCHECK
		mov	ax,word [bp-4]
		mov	word [bp-2],ax
		push	word [bp-2]
		call	fpc_write_end
		call	FPC_IOCHECK
		mov	sp,bp
		pop	bp
		ret	4

SECTION text
	ALIGN 2
	GLOBAL P$DOORKIT86_$$_FOSSILINIT$BYTE$$BOOLEAN
P$DOORKIT86_$$_FOSSILINIT$BYTE$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,22
		mov	byte [bp-21],4
		mov	al,byte [bp+4]
		mov	ah,0
		mov	word [bp-16],ax
		mov	ax,20
		push	ax
		lea	ax,[bp-22]
		push	ax
		call	FPC_INTR
		cmp	word [bp-22],6484
		mov	al,0
		jne	..@j99
		inc	ax
..@j99:
		mov	byte [bp-1],al
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	2

SECTION text
	ALIGN 2
	GLOBAL P$DOORKIT86_$$_FOSSILDEINIT$BYTE
P$DOORKIT86_$$_FOSSILDEINIT$BYTE:
		push	bp
		mov	bp,sp
		sub	sp,20
		mov	byte [bp-19],5
		mov	al,byte [bp+4]
		mov	ah,0
		mov	word [bp-14],ax
		mov	ax,20
		push	ax
		lea	ax,[bp-20]
		push	ax
		call	FPC_INTR
		mov	sp,bp
		pop	bp
		ret	2

SECTION text
	ALIGN 2
	GLOBAL P$DOORKIT86_$$_FOSSILWRITECHAR$BYTE$CHAR
P$DOORKIT86_$$_FOSSILWRITECHAR$BYTE$CHAR:
		push	bp
		mov	bp,sp
		sub	sp,20
		mov	byte [bp-19],1
		mov	al,byte [bp+4]
		mov	byte [bp-20],al
		mov	al,byte [bp+6]
		mov	ah,0
		mov	word [bp-14],ax
		mov	ax,20
		push	ax
		lea	ax,[bp-20]
		push	ax
		call	FPC_INTR
		mov	sp,bp
		pop	bp
		ret	4

SECTION text
	ALIGN 2
	GLOBAL P$DOORKIT86_$$_FOSSILREADCHAR$BYTE$$CHAR
P$DOORKIT86_$$_FOSSILREADCHAR$BYTE$$CHAR:
		push	bp
		mov	bp,sp
		sub	sp,22
		mov	byte [bp-21],2
		mov	al,byte [bp+4]
		mov	ah,0
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

SECTION text
	ALIGN 2
	GLOBAL P$DOORKIT86_$$_FOSSILCHARREADY$BYTE$$BOOLEAN
P$DOORKIT86_$$_FOSSILCHARREADY$BYTE$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,22
		mov	byte [bp-21],3
		mov	al,byte [bp+4]
		mov	ah,0
		mov	word [bp-16],ax
		mov	ax,20
		push	ax
		lea	ax,[bp-22]
		push	ax
		call	FPC_INTR
		mov	al,byte [bp-21]
		mov	ah,0
		and	ax,1
		test	ax,ax
		mov	al,0
		je	..@j146
		inc	ax
..@j146:
		mov	byte [bp-1],al
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	2

SECTION text
	ALIGN 2
	GLOBAL P$DOORKIT86_$$_FOSSILWRITESTR$BYTE$SHORTSTRING
P$DOORKIT86_$$_FOSSILWRITESTR$BYTE$SHORTSTRING:
		push	bp
		mov	bp,sp
		sub	sp,6
		mov	bx,word [bp+4]
		mov	al,byte [bx]
		mov	ah,0
		mov	word [bp-6],ax
		mov	word [bp-2],1
		mov	ax,word [bp-6]
		cmp	ax,word [bp-2]
		jl	..@j152
		dec	word [bp-2]
	ALIGN 2
..@j153:
		inc	word [bp-2]
		mov	al,byte [bp+6]
		mov	ah,0
		push	ax
		mov	bx,word [bp+4]
		mov	al,byte [bp-2]
		mov	byte [bp-4],al
		mov	byte [bp-3],0
		mov	si,word [bp-4]
		mov	al,byte [bx+si]
		mov	ah,0
		push	ax
		call	P$DOORKIT86_$$_FOSSILWRITECHAR$BYTE$CHAR
		mov	ax,word [bp-6]
		cmp	ax,word [bp-2]
		jg	..@j153
..@j152:
		mov	sp,bp
		pop	bp
		ret	4

SECTION text
	ALIGN 2
	GLOBAL P$DOORKIT86_$$_PARSEDROPFILE$SHORTSTRING$TDROPINFO$$BOOLEAN
P$DOORKIT86_$$_PARSEDROPFILE$SHORTSTRING$TDROPINFO$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,1090
		mov	byte [bp-1],0
		mov	bx,word [bp+4]
		mov	byte [bx+44],1
		mov	bx,word [bp+4]
		lea	ax,[bx+5]
		push	ax
		mov	ax,35
		push	ax
		mov	ax,word _$DOORKIT86$_Ld3
		push	ax
		call	fpc_shortstr_to_shortstr
		mov	bx,word [bp+4]
		mov	word [bx+41],60
		mov	bx,word [bp+4]
		mov	byte [bx+43],1
		mov	bx,word [bp+4]
		mov	byte [bx],0
		mov	bx,word [bp+4]
		mov	word [bx+1],0
		mov	word [bx+3],0
		lea	ax,[bp-832]
		push	ax
		mov	ax,word [bp+6]
		push	ax
		call	SYSTEM_$$_ASSIGN$TEXT$SHORTSTRING
		lea	ax,[bp-832]
		push	ax
		call	SYSTEM_$$_RESET$TEXT
		call	SYSTEM_$$_IORESULT$$WORD
		test	ax,ax
		jne	..@j184
		jmp	..@j185
..@j184:
		jmp	..@j158
..@j185:
		lea	ax,[bp-832]
		push	ax
		lea	ax,[bp-1088]
		push	ax
		mov	ax,255
		push	ax
		call	fpc_read_text_shortstr
		call	FPC_IOCHECK
		lea	ax,[bp-832]
		push	ax
		call	fpc_readln_end
		call	FPC_IOCHECK
		cmp	byte [bp-1088],4
		jae	..@j197
		jmp	..@j195
..@j197:
		cmp	byte [bp-1084],49
		jae	..@j196
		jmp	..@j195
..@j196:
		cmp	byte [bp-1084],52
		jbe	..@j194
		jmp	..@j195
..@j194:
		mov	al,byte [bp-1084]
		mov	ah,0
		sub	ax,49
		mov	bx,word [bp+4]
		mov	byte [bx],al
		mov	bx,word [bp+4]
		mov	byte [bx+44],0
..@j195:
		lea	ax,[bp-832]
		push	ax
		lea	ax,[bp-1088]
		push	ax
		mov	ax,255
		push	ax
		call	fpc_read_text_shortstr
		call	FPC_IOCHECK
		lea	ax,[bp-832]
		push	ax
		call	fpc_readln_end
		call	FPC_IOCHECK
		lea	ax,[bp-1088]
		push	ax
		lea	ax,[bp-1090]
		push	ax
		call	fpc_val_longint_shortstr
		mov	bx,word [bp+4]
		mov	word [bx+1],ax
		mov	word [bx+3],dx
		lea	ax,[bp-832]
		push	ax
		lea	ax,[bp-1088]
		push	ax
		mov	ax,255
		push	ax
		call	fpc_read_text_shortstr
		call	FPC_IOCHECK
		lea	ax,[bp-832]
		push	ax
		call	fpc_readln_end
		call	FPC_IOCHECK
		lea	ax,[bp-832]
		push	ax
		lea	ax,[bp-1088]
		push	ax
		mov	ax,255
		push	ax
		call	fpc_read_text_shortstr
		call	FPC_IOCHECK
		lea	ax,[bp-832]
		push	ax
		call	fpc_readln_end
		call	FPC_IOCHECK
		lea	ax,[bp-832]
		push	ax
		lea	ax,[bp-1088]
		push	ax
		mov	ax,255
		push	ax
		call	fpc_read_text_shortstr
		call	FPC_IOCHECK
		lea	ax,[bp-832]
		push	ax
		call	fpc_readln_end
		call	FPC_IOCHECK
		lea	ax,[bp-832]
		push	ax
		lea	ax,[bp-1088]
		push	ax
		mov	ax,255
		push	ax
		call	fpc_read_text_shortstr
		call	FPC_IOCHECK
		lea	ax,[bp-832]
		push	ax
		call	fpc_readln_end
		call	FPC_IOCHECK
		lea	ax,[bp-832]
		push	ax
		mov	bx,word [bp+4]
		lea	ax,[bx+5]
		push	ax
		mov	ax,35
		push	ax
		call	fpc_read_text_shortstr
		call	FPC_IOCHECK
		lea	ax,[bp-832]
		push	ax
		call	fpc_readln_end
		call	FPC_IOCHECK
		lea	ax,[bp-832]
		push	ax
		lea	ax,[bp-1088]
		push	ax
		mov	ax,255
		push	ax
		call	fpc_read_text_shortstr
		call	FPC_IOCHECK
		lea	ax,[bp-832]
		push	ax
		call	fpc_readln_end
		call	FPC_IOCHECK
		lea	ax,[bp-832]
		push	ax
		lea	ax,[bp-1088]
		push	ax
		mov	ax,255
		push	ax
		call	fpc_read_text_shortstr
		call	FPC_IOCHECK
		lea	ax,[bp-832]
		push	ax
		call	fpc_readln_end
		call	FPC_IOCHECK
		lea	ax,[bp-832]
		push	ax
		lea	ax,[bp-1088]
		push	ax
		mov	ax,255
		push	ax
		call	fpc_read_text_shortstr
		call	FPC_IOCHECK
		lea	ax,[bp-832]
		push	ax
		call	fpc_readln_end
		call	FPC_IOCHECK
		lea	ax,[bp-832]
		push	ax
		lea	ax,[bp-1088]
		push	ax
		mov	ax,255
		push	ax
		call	fpc_read_text_shortstr
		call	FPC_IOCHECK
		lea	ax,[bp-832]
		push	ax
		call	fpc_readln_end
		call	FPC_IOCHECK
		lea	ax,[bp-832]
		push	ax
		lea	ax,[bp-1088]
		push	ax
		mov	ax,255
		push	ax
		call	fpc_read_text_shortstr
		call	FPC_IOCHECK
		lea	ax,[bp-832]
		push	ax
		call	fpc_readln_end
		call	FPC_IOCHECK
		lea	ax,[bp-832]
		push	ax
		lea	ax,[bp-1088]
		push	ax
		mov	ax,255
		push	ax
		call	fpc_read_text_shortstr
		call	FPC_IOCHECK
		lea	ax,[bp-832]
		push	ax
		call	fpc_readln_end
		call	FPC_IOCHECK
		lea	ax,[bp-832]
		push	ax
		lea	ax,[bp-1088]
		push	ax
		mov	ax,255
		push	ax
		call	fpc_read_text_shortstr
		call	FPC_IOCHECK
		lea	ax,[bp-832]
		push	ax
		call	fpc_readln_end
		call	FPC_IOCHECK
		lea	ax,[bp-832]
		push	ax
		lea	ax,[bp-1088]
		push	ax
		mov	ax,255
		push	ax
		call	fpc_read_text_shortstr
		call	FPC_IOCHECK
		lea	ax,[bp-832]
		push	ax
		call	fpc_readln_end
		call	FPC_IOCHECK
		lea	ax,[bp-832]
		push	ax
		lea	ax,[bp-1088]
		push	ax
		mov	ax,255
		push	ax
		call	fpc_read_text_shortstr
		call	FPC_IOCHECK
		lea	ax,[bp-832]
		push	ax
		call	fpc_readln_end
		call	FPC_IOCHECK
		lea	ax,[bp-832]
		push	ax
		lea	ax,[bp-1088]
		push	ax
		mov	ax,255
		push	ax
		call	fpc_read_text_shortstr
		call	FPC_IOCHECK
		lea	ax,[bp-832]
		push	ax
		call	fpc_readln_end
		call	FPC_IOCHECK
		lea	ax,[bp-832]
		push	ax
		lea	ax,[bp-1088]
		push	ax
		mov	ax,255
		push	ax
		call	fpc_read_text_shortstr
		call	FPC_IOCHECK
		lea	ax,[bp-832]
		push	ax
		call	fpc_readln_end
		call	FPC_IOCHECK
		lea	ax,[bp-832]
		push	ax
		lea	ax,[bp-1088]
		push	ax
		mov	ax,255
		push	ax
		call	fpc_read_text_shortstr
		call	FPC_IOCHECK
		lea	ax,[bp-832]
		push	ax
		call	fpc_readln_end
		call	FPC_IOCHECK
		lea	ax,[bp-1088]
		push	ax
		lea	ax,[bp-1090]
		push	ax
		call	fpc_val_uint_shortstr
		mov	bx,word [bp+4]
		mov	word [bx+41],ax
		lea	ax,[bp-832]
		push	ax
		call	SYSTEM_$$_CLOSE$TEXT
		call	FPC_IOCHECK
		mov	byte [bp-1],1
..@j158:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	4

SECTION text
	ALIGN 2
	GLOBAL P$DOORKIT86_$$_DOORWRITE$SHORTSTRING
P$DOORKIT86_$$_DOORWRITE$SHORTSTRING:
		push	bp
		mov	bp,sp
		sub	sp,4
		call	fpc_get_output
		mov	dx,0
		push	dx
		mov	dx,0
		push	dx
		mov	word [bp-4],ax
		push	word [bp-4]
		mov	ax,word [bp+4]
		push	ax
		call	fpc_write_text_shortstr
		call	FPC_IOCHECK
		mov	ax,word [bp-4]
		mov	word [bp-2],ax
		push	word [bp-2]
		call	fpc_write_end
		call	FPC_IOCHECK
		cmp	byte [U_$P$DOORKIT86_$$_ISLOCAL],0
		je	..@j374
		jmp	..@j375
..@j374:
		mov	al,byte [U_$P$DOORKIT86_$$_DROP]
		mov	ah,0
		push	ax
		mov	ax,word [bp+4]
		push	ax
		call	P$DOORKIT86_$$_FOSSILWRITESTR$BYTE$SHORTSTRING
..@j375:
		mov	sp,bp
		pop	bp
		ret	2

SECTION text
	ALIGN 2
	GLOBAL P$DOORKIT86_$$_DOORWRITELN$SHORTSTRING
P$DOORKIT86_$$_DOORWRITELN$SHORTSTRING:
		push	bp
		mov	bp,sp
		sub	sp,256
		lea	ax,[bp-256]
		push	ax
		mov	ax,255
		push	ax
		mov	ax,word [bp+4]
		push	ax
		mov	ax,word _$DOORKIT86$_Ld4
		push	ax
		call	fpc_shortstr_concat
		lea	ax,[bp-256]
		push	ax
		call	P$DOORKIT86_$$_DOORWRITE$SHORTSTRING
		mov	sp,bp
		pop	bp
		ret	2

SECTION text
	ALIGN 2
	GLOBAL PASCALMAIN
PASCALMAIN:
	GLOBAL _main
_main:
		push	bp
		mov	bp,sp
		sub	sp,2056
		call	FPC_INITIALIZEUNITS
		mov	ax,word _$DOORKIT86$_Ld5
		push	ax
		mov	ax,word U_$P$DOORKIT86_$$_DROP
		push	ax
		call	P$DOORKIT86_$$_PARSEDROPFILE$SHORTSTRING$TDROPINFO$$BOOLEAN
		mov	al,byte [U_$P$DOORKIT86_$$_DROP+44]
		mov	byte [U_$P$DOORKIT86_$$_ISLOCAL],al
		cmp	byte [U_$P$DOORKIT86_$$_ISLOCAL],0
		je	..@j398
		jmp	..@j399
..@j398:
		mov	al,byte [U_$P$DOORKIT86_$$_DROP]
		mov	ah,0
		push	ax
		call	P$DOORKIT86_$$_FOSSILINIT$BYTE$$BOOLEAN
		mov	byte [U_$P$DOORKIT86_$$_HASFOSSIL],al
		cmp	byte [U_$P$DOORKIT86_$$_HASFOSSIL],0
		je	..@j404
		jmp	..@j405
..@j404:
		call	fpc_get_output
		mov	word [bp-2056],ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		push	word [bp-2056]
		mov	ax,word _$DOORKIT86$_Ld6
		push	ax
		call	fpc_write_text_shortstr
		call	FPC_IOCHECK
		push	word [bp-2056]
		call	fpc_writeln_end
		call	FPC_IOCHECK
		mov	byte [U_$P$DOORKIT86_$$_ISLOCAL],1
..@j405:
..@j399:
		call	P$DOORKIT86_$$_ANSICLS
		mov	ax,1
		push	ax
		mov	ax,37
		push	ax
		call	P$DOORKIT86_$$_ANSICOLOR$BYTE$BYTE
		mov	ax,word _$DOORKIT86$_Ld7
		push	ax
		call	P$DOORKIT86_$$_DOORWRITELN$SHORTSTRING
		mov	ax,word _$DOORKIT86$_Ld8
		push	ax
		call	P$DOORKIT86_$$_DOORWRITELN$SHORTSTRING
		mov	ax,1
		push	ax
		mov	ax,33
		push	ax
		call	P$DOORKIT86_$$_ANSICOLOR$BYTE$BYTE
		mov	ax,word _$DOORKIT86$_Ld9
		push	ax
		call	P$DOORKIT86_$$_DOORWRITE$SHORTSTRING
		mov	ax,word _$DOORKIT86$_Ld10
		push	ax
		call	P$DOORKIT86_$$_DOORWRITELN$SHORTSTRING
		mov	ax,1
		push	ax
		mov	ax,37
		push	ax
		call	P$DOORKIT86_$$_ANSICOLOR$BYTE$BYTE
		mov	ax,word _$DOORKIT86$_Ld11
		push	ax
		call	P$DOORKIT86_$$_DOORWRITELN$SHORTSTRING
		mov	ax,word _$DOORKIT86$_Ld8
		push	ax
		call	P$DOORKIT86_$$_DOORWRITELN$SHORTSTRING
		mov	ax,word _$DOORKIT86$_Ld12
		push	ax
		call	P$DOORKIT86_$$_DOORWRITELN$SHORTSTRING
		mov	ax,0
		push	ax
		mov	ax,37
		push	ax
		call	P$DOORKIT86_$$_ANSICOLOR$BYTE$BYTE
		mov	ax,word _$DOORKIT86$_Ld13
		push	ax
		call	P$DOORKIT86_$$_DOORWRITELN$SHORTSTRING
		lea	ax,[bp-256]
		push	ax
		mov	ax,255
		push	ax
		mov	ax,word _$DOORKIT86$_Ld14
		mov	word [bp-262],ax
		lea	ax,[bp-518]
		push	ax
		mov	ax,255
		push	ax
		mov	ax,word U_$P$DOORKIT86_$$_DROP+5
		push	ax
		call	fpc_shortstr_to_shortstr
		lea	ax,[bp-518]
		mov	word [bp-260],ax
		mov	ax,word _$DOORKIT86$_Ld15
		mov	word [bp-258],ax
		lea	ax,[bp-262]
		push	ax
		mov	ax,2
		push	ax
		call	fpc_shortstr_concat_multi
		lea	ax,[bp-256]
		push	ax
		call	P$DOORKIT86_$$_DOORWRITELN$SHORTSTRING
		lea	ax,[bp-256]
		push	ax
		mov	ax,255
		push	ax
		mov	ax,word _$DOORKIT86$_Ld16
		mov	word [bp-264],ax
		mov	dx,word [U_$P$DOORKIT86_$$_DROP+41]
		mov	ax,-13107
		mul	dx
		mov	cl,3
		shr	dx,cl
		add	dx,48
		mov	dh,0
		mov	cl,8
		shl	dx,cl
		mov	ax,0
		or	dx,1
		mov	word [bp-774],dx
		lea	ax,[bp-774]
		mov	word [bp-262],ax
		mov	ax,word [U_$P$DOORKIT86_$$_DROP+41]
		xor	dx,dx
		mov	cx,10
		div	cx
		add	dx,48
		mov	dh,0
		mov	cl,8
		shl	dx,cl
		mov	ax,0
		or	dx,1
		mov	word [bp-1030],dx
		lea	ax,[bp-1030]
		mov	word [bp-260],ax
		mov	ax,word _$DOORKIT86$_Ld17
		mov	word [bp-258],ax
		lea	ax,[bp-264]
		push	ax
		mov	ax,3
		push	ax
		call	fpc_shortstr_concat_multi
		lea	ax,[bp-256]
		push	ax
		call	P$DOORKIT86_$$_DOORWRITELN$SHORTSTRING
		mov	ax,word _$DOORKIT86$_Ld13
		push	ax
		call	P$DOORKIT86_$$_DOORWRITELN$SHORTSTRING
		mov	ax,1
		push	ax
		mov	ax,36
		push	ax
		call	P$DOORKIT86_$$_ANSICOLOR$BYTE$BYTE
		mov	ax,word _$DOORKIT86$_Ld18
		push	ax
		call	P$DOORKIT86_$$_DOORWRITELN$SHORTSTRING
		mov	ax,0
		push	ax
		mov	ax,37
		push	ax
		call	P$DOORKIT86_$$_ANSICOLOR$BYTE$BYTE
		lea	ax,[bp-256]
		push	ax
		mov	ax,255
		push	ax
		mov	ax,word _$DOORKIT86$_Ld19
		mov	word [bp-264],ax
		call	DOS_$$_DOSVERSION$$WORD
		mov	ah,0
		add	ax,48
		mov	ah,0
		mov	cl,8
		shl	ax,cl
		mov	dx,0
		or	ax,1
		mov	word [bp-520],ax
		lea	ax,[bp-520]
		mov	word [bp-262],ax
		mov	ax,word _$DOORKIT86$_Ld20
		mov	word [bp-260],ax
		call	DOS_$$_DOSVERSION$$WORD
		mov	cl,8
		shr	ax,cl
		mov	ah,0
		add	ax,48
		mov	ah,0
		mov	cl,8
		shl	ax,cl
		mov	dx,0
		or	ax,1
		mov	word [bp-776],ax
		lea	ax,[bp-776]
		mov	word [bp-258],ax
		lea	ax,[bp-264]
		push	ax
		mov	ax,3
		push	ax
		call	fpc_shortstr_concat_multi
		lea	ax,[bp-256]
		push	ax
		call	P$DOORKIT86_$$_DOORWRITELN$SHORTSTRING
		mov	ax,word U_$P$DOORKIT86_$$_Y
		push	ax
		mov	ax,word U_$P$DOORKIT86_$$_M
		push	ax
		mov	ax,word U_$P$DOORKIT86_$$_D
		push	ax
		mov	ax,word U_$P$DOORKIT86_$$_DOW
		push	ax
		call	DOS_$$_GETDATE$WORD$WORD$WORD$WORD
		lea	ax,[bp-256]
		push	ax
		mov	ax,255
		push	ax
		mov	ax,word _$DOORKIT86$_Ld21
		mov	word [bp-274],ax
		mov	dx,word [U_$P$DOORKIT86_$$_M]
		mov	ax,-13107
		mul	dx
		mov	cl,3
		shr	dx,cl
		add	dx,48
		mov	dh,0
		mov	cl,8
		shl	dx,cl
		mov	ax,0
		or	dx,1
		mov	word [bp-530],dx
		lea	ax,[bp-530]
		mov	word [bp-272],ax
		mov	ax,word [U_$P$DOORKIT86_$$_M]
		xor	dx,dx
		mov	cx,10
		div	cx
		add	dx,48
		mov	dh,0
		mov	cl,8
		shl	dx,cl
		mov	ax,0
		or	dx,1
		mov	word [bp-786],dx
		lea	ax,[bp-786]
		mov	word [bp-270],ax
		mov	ax,word _$DOORKIT86$_Ld22
		mov	word [bp-268],ax
		mov	dx,word [U_$P$DOORKIT86_$$_D]
		mov	ax,-13107
		mul	dx
		mov	cl,3
		shr	dx,cl
		add	dx,48
		mov	dh,0
		mov	cl,8
		shl	dx,cl
		mov	ax,0
		or	dx,1
		mov	word [bp-1286],dx
		lea	ax,[bp-1286]
		mov	word [bp-266],ax
		mov	ax,word [U_$P$DOORKIT86_$$_D]
		xor	dx,dx
		mov	cx,10
		div	cx
		add	dx,48
		mov	dh,0
		mov	cl,8
		shl	dx,cl
		mov	ax,0
		or	dx,1
		mov	word [bp-1542],dx
		lea	ax,[bp-1542]
		mov	word [bp-264],ax
		mov	ax,word _$DOORKIT86$_Ld22
		mov	word [bp-262],ax
		mov	ax,word [U_$P$DOORKIT86_$$_Y]
		xor	dx,dx
		mov	cx,100
		div	cx
		mov	ax,-13107
		mul	dx
		mov	cl,3
		shr	dx,cl
		add	dx,48
		mov	dh,0
		mov	cl,8
		shl	dx,cl
		mov	ax,0
		or	dx,1
		mov	word [bp-1798],dx
		lea	ax,[bp-1798]
		mov	word [bp-260],ax
		mov	ax,word [U_$P$DOORKIT86_$$_Y]
		xor	dx,dx
		mov	cx,100
		div	cx
		mov	ax,dx
		xor	dx,dx
		mov	cx,10
		div	cx
		add	dx,48
		mov	dh,0
		mov	cl,8
		shl	dx,cl
		mov	ax,0
		or	dx,1
		mov	word [bp-2054],dx
		lea	ax,[bp-2054]
		mov	word [bp-258],ax
		lea	ax,[bp-274]
		push	ax
		mov	ax,8
		push	ax
		call	fpc_shortstr_concat_multi
		lea	ax,[bp-256]
		push	ax
		call	P$DOORKIT86_$$_DOORWRITELN$SHORTSTRING
		mov	ax,word U_$P$DOORKIT86_$$_H
		push	ax
		mov	ax,word U_$P$DOORKIT86_$$_MI
		push	ax
		mov	ax,word U_$P$DOORKIT86_$$_SEC
		push	ax
		mov	ax,word U_$P$DOORKIT86_$$_S100
		push	ax
		call	DOS_$$_GETTIME$WORD$WORD$WORD$WORD
		lea	ax,[bp-256]
		push	ax
		mov	ax,255
		push	ax
		mov	ax,word _$DOORKIT86$_Ld23
		mov	word [bp-268],ax
		mov	dx,word [U_$P$DOORKIT86_$$_H]
		mov	ax,-13107
		mul	dx
		mov	cl,3
		shr	dx,cl
		add	dx,48
		mov	dh,0
		mov	cl,8
		shl	dx,cl
		mov	ax,0
		or	dx,1
		mov	word [bp-524],dx
		lea	ax,[bp-524]
		mov	word [bp-266],ax
		mov	ax,word [U_$P$DOORKIT86_$$_H]
		xor	dx,dx
		mov	cx,10
		div	cx
		add	dx,48
		mov	dh,0
		mov	cl,8
		shl	dx,cl
		mov	ax,0
		or	dx,1
		mov	word [bp-780],dx
		lea	ax,[bp-780]
		mov	word [bp-264],ax
		mov	ax,word _$DOORKIT86$_Ld24
		mov	word [bp-262],ax
		mov	dx,word [U_$P$DOORKIT86_$$_MI]
		mov	ax,-13107
		mul	dx
		mov	cl,3
		shr	dx,cl
		add	dx,48
		mov	dh,0
		mov	cl,8
		shl	dx,cl
		mov	ax,0
		or	dx,1
		mov	word [bp-1036],dx
		lea	ax,[bp-1036]
		mov	word [bp-260],ax
		mov	ax,word [U_$P$DOORKIT86_$$_MI]
		xor	dx,dx
		mov	cx,10
		div	cx
		add	dx,48
		mov	dh,0
		mov	cl,8
		shl	dx,cl
		mov	ax,0
		or	dx,1
		mov	word [bp-1292],dx
		lea	ax,[bp-1292]
		mov	word [bp-258],ax
		lea	ax,[bp-268]
		push	ax
		mov	ax,5
		push	ax
		call	fpc_shortstr_concat_multi
		lea	ax,[bp-256]
		push	ax
		call	P$DOORKIT86_$$_DOORWRITELN$SHORTSTRING
		cmp	byte [U_$P$DOORKIT86_$$_ISLOCAL],0
		jne	..@j534
		jmp	..@j535
..@j534:
		mov	ax,word _$DOORKIT86$_Ld25
		push	ax
		call	P$DOORKIT86_$$_DOORWRITELN$SHORTSTRING
		jmp	..@j538
..@j535:
		lea	ax,[bp-256]
		push	ax
		mov	ax,255
		push	ax
		mov	ax,word _$DOORKIT86$_Ld26
		mov	word [bp-262],ax
		mov	dl,byte [U_$P$DOORKIT86_$$_DROP]
		mov	dh,0
		add	dx,49
		mov	dh,0
		mov	cl,8
		shl	dx,cl
		mov	ax,0
		or	dx,1
		mov	word [bp-518],dx
		lea	ax,[bp-518]
		mov	word [bp-260],ax
		mov	ax,word _$DOORKIT86$_Ld27
		mov	word [bp-258],ax
		lea	ax,[bp-262]
		push	ax
		mov	ax,2
		push	ax
		call	fpc_shortstr_concat_multi
		lea	ax,[bp-256]
		push	ax
		call	P$DOORKIT86_$$_DOORWRITELN$SHORTSTRING
..@j538:
		mov	ax,word _$DOORKIT86$_Ld13
		push	ax
		call	P$DOORKIT86_$$_DOORWRITELN$SHORTSTRING
		mov	ax,1
		push	ax
		mov	ax,33
		push	ax
		call	P$DOORKIT86_$$_ANSICOLOR$BYTE$BYTE
		mov	ax,word _$DOORKIT86$_Ld28
		push	ax
		call	P$DOORKIT86_$$_DOORWRITELN$SHORTSTRING
		mov	ax,0
		push	ax
		mov	ax,37
		push	ax
		call	P$DOORKIT86_$$_ANSICOLOR$BYTE$BYTE
		mov	ax,word _$DOORKIT86$_Ld29
		push	ax
		call	P$DOORKIT86_$$_DOORWRITELN$SHORTSTRING
		mov	ax,word _$DOORKIT86$_Ld30
		push	ax
		call	P$DOORKIT86_$$_DOORWRITELN$SHORTSTRING
		mov	ax,word _$DOORKIT86$_Ld13
		push	ax
		call	P$DOORKIT86_$$_DOORWRITELN$SHORTSTRING
		mov	ax,word _$DOORKIT86$_Ld31
		push	ax
		call	P$DOORKIT86_$$_DOORWRITE$SHORTSTRING
		mov	byte [U_$P$DOORKIT86_$$_CHOICE],70
		mov	dl,byte [U_$P$DOORKIT86_$$_CHOICE]
		mov	dh,0
		mov	cl,8
		shl	dx,cl
		mov	ax,0
		or	dx,1
		mov	word [bp-256],dx
		lea	ax,[bp-256]
		push	ax
		call	P$DOORKIT86_$$_DOORWRITELN$SHORTSTRING
		cmp	byte [U_$P$DOORKIT86_$$_CHOICE],70
		je	..@j573
		jmp	..@j575
..@j575:
		cmp	byte [U_$P$DOORKIT86_$$_CHOICE],102
		je	..@j573
		jmp	..@j574
..@j573:
		mov	ax,word U_$P$DOORKIT86_$$_LOGF
		push	ax
		mov	ax,word _$DOORKIT86$_Ld32
		push	ax
		call	SYSTEM_$$_ASSIGN$TEXT$SHORTSTRING
		mov	ax,word U_$P$DOORKIT86_$$_LOGF
		push	ax
		call	SYSTEM_$$_REWRITE$TEXT
		call	FPC_IOCHECK
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word U_$P$DOORKIT86_$$_LOGF
		push	ax
		mov	ax,word _$DOORKIT86$_Ld33
		push	ax
		call	fpc_write_text_shortstr
		call	FPC_IOCHECK
		mov	ax,word U_$P$DOORKIT86_$$_LOGF
		push	ax
		call	fpc_writeln_end
		call	FPC_IOCHECK
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word U_$P$DOORKIT86_$$_LOGF
		push	ax
		lea	ax,[bp-256]
		push	ax
		mov	ax,255
		push	ax
		mov	ax,word _$DOORKIT86$_Ld34
		push	ax
		mov	ax,word U_$P$DOORKIT86_$$_DROP+5
		push	ax
		call	fpc_shortstr_concat
		lea	ax,[bp-256]
		push	ax
		call	fpc_write_text_shortstr
		call	FPC_IOCHECK
		mov	ax,word U_$P$DOORKIT86_$$_LOGF
		push	ax
		call	fpc_writeln_end
		call	FPC_IOCHECK
		mov	ax,word U_$P$DOORKIT86_$$_Y
		push	ax
		mov	ax,word U_$P$DOORKIT86_$$_M
		push	ax
		mov	ax,word U_$P$DOORKIT86_$$_D
		push	ax
		mov	ax,word U_$P$DOORKIT86_$$_DOW
		push	ax
		call	DOS_$$_GETDATE$WORD$WORD$WORD$WORD
		mov	ax,word U_$P$DOORKIT86_$$_H
		push	ax
		mov	ax,word U_$P$DOORKIT86_$$_MI
		push	ax
		mov	ax,word U_$P$DOORKIT86_$$_SEC
		push	ax
		mov	ax,word U_$P$DOORKIT86_$$_S100
		push	ax
		call	DOS_$$_GETTIME$WORD$WORD$WORD$WORD
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word U_$P$DOORKIT86_$$_LOGF
		push	ax
		mov	ax,word _$DOORKIT86$_Ld21
		push	ax
		call	fpc_write_text_shortstr
		call	FPC_IOCHECK
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word U_$P$DOORKIT86_$$_LOGF
		push	ax
		push	word [U_$P$DOORKIT86_$$_Y]
		call	fpc_write_text_uint
		call	FPC_IOCHECK
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word U_$P$DOORKIT86_$$_LOGF
		push	ax
		mov	ax,45
		push	ax
		call	fpc_write_text_char
		call	FPC_IOCHECK
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word U_$P$DOORKIT86_$$_LOGF
		push	ax
		push	word [U_$P$DOORKIT86_$$_M]
		call	fpc_write_text_uint
		call	FPC_IOCHECK
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word U_$P$DOORKIT86_$$_LOGF
		push	ax
		mov	ax,45
		push	ax
		call	fpc_write_text_char
		call	FPC_IOCHECK
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word U_$P$DOORKIT86_$$_LOGF
		push	ax
		push	word [U_$P$DOORKIT86_$$_D]
		call	fpc_write_text_uint
		call	FPC_IOCHECK
		mov	ax,word U_$P$DOORKIT86_$$_LOGF
		push	ax
		call	fpc_writeln_end
		call	FPC_IOCHECK
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word U_$P$DOORKIT86_$$_LOGF
		push	ax
		mov	ax,word _$DOORKIT86$_Ld23
		push	ax
		call	fpc_write_text_shortstr
		call	FPC_IOCHECK
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word U_$P$DOORKIT86_$$_LOGF
		push	ax
		push	word [U_$P$DOORKIT86_$$_H]
		call	fpc_write_text_uint
		call	FPC_IOCHECK
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word U_$P$DOORKIT86_$$_LOGF
		push	ax
		mov	ax,58
		push	ax
		call	fpc_write_text_char
		call	FPC_IOCHECK
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word U_$P$DOORKIT86_$$_LOGF
		push	ax
		push	word [U_$P$DOORKIT86_$$_MI]
		call	fpc_write_text_uint
		call	FPC_IOCHECK
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word U_$P$DOORKIT86_$$_LOGF
		push	ax
		mov	ax,58
		push	ax
		call	fpc_write_text_char
		call	FPC_IOCHECK
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word U_$P$DOORKIT86_$$_LOGF
		push	ax
		push	word [U_$P$DOORKIT86_$$_SEC]
		call	fpc_write_text_uint
		call	FPC_IOCHECK
		mov	ax,word U_$P$DOORKIT86_$$_LOGF
		push	ax
		call	fpc_writeln_end
		call	FPC_IOCHECK
		mov	ax,word U_$P$DOORKIT86_$$_LOGF
		push	ax
		call	SYSTEM_$$_CLOSE$TEXT
		call	FPC_IOCHECK
		mov	ax,word _$DOORKIT86$_Ld35
		push	ax
		call	P$DOORKIT86_$$_DOORWRITELN$SHORTSTRING
..@j574:
		mov	ax,word _$DOORKIT86$_Ld13
		push	ax
		call	P$DOORKIT86_$$_DOORWRITELN$SHORTSTRING
		mov	ax,word _$DOORKIT86$_Ld36
		push	ax
		call	P$DOORKIT86_$$_DOORWRITELN$SHORTSTRING
		cmp	byte [U_$P$DOORKIT86_$$_ISLOCAL],0
		je	..@j708
		jmp	..@j707
..@j708:
		cmp	byte [U_$P$DOORKIT86_$$_HASFOSSIL],0
		jne	..@j706
		jmp	..@j707
..@j706:
		mov	al,byte [U_$P$DOORKIT86_$$_DROP]
		mov	ah,0
		push	ax
		call	P$DOORKIT86_$$_FOSSILDEINIT$BYTE
..@j707:
		call	FPC_DO_EXIT
		mov	sp,bp
		pop	bp
		ret
; End asmlist al_procedures
; Begin asmlist al_globals

SECTION bss
U_$P$DOORKIT86_$$_DROP:	RESB	45

SECTION bss
U_$P$DOORKIT86_$$_ISLOCAL:	RESB	1

SECTION bss
	ALIGNB 2
U_$P$DOORKIT86_$$_Y:	RESB	2

SECTION bss
	ALIGNB 2
U_$P$DOORKIT86_$$_M:	RESB	2

SECTION bss
	ALIGNB 2
U_$P$DOORKIT86_$$_D:	RESB	2

SECTION bss
	ALIGNB 2
U_$P$DOORKIT86_$$_DOW:	RESB	2

SECTION bss
	ALIGNB 2
U_$P$DOORKIT86_$$_H:	RESB	2

SECTION bss
	ALIGNB 2
U_$P$DOORKIT86_$$_MI:	RESB	2

SECTION bss
	ALIGNB 2
U_$P$DOORKIT86_$$_SEC:	RESB	2

SECTION bss
	ALIGNB 2
U_$P$DOORKIT86_$$_S100:	RESB	2

SECTION bss
U_$P$DOORKIT86_$$_HASFOSSIL:	RESB	1

SECTION bss
U_$P$DOORKIT86_$$_CHOICE:	RESB	1

SECTION bss
	ALIGNB 2
U_$P$DOORKIT86_$$_LOGF:	RESB	830

SECTION data
	ALIGN 2
	GLOBAL INITFINAL
INITFINAL	DW	1,0,INIT$_$SYSTEM,0

SECTION data
	ALIGN 2
	GLOBAL FPC_THREADVARTABLES
FPC_THREADVARTABLES	DD	2
	DW	THREADVARLIST_$SYSTEM,THREADVARLIST_$DOS

SECTION data
	ALIGN 2
	GLOBAL FPC_RESOURCESTRINGTABLES
FPC_RESOURCESTRINGTABLES	DW	0

SECTION data
	ALIGN 2
	GLOBAL FPC_WIDEINITTABLES
FPC_WIDEINITTABLES	DW	0

SECTION data
	ALIGN 2
	GLOBAL FPC_RESSTRINITTABLES
FPC_RESSTRINITTABLES	DW	0

SECTION fpc
	ALIGN 2
		DB	"FPC 3.0.4 [2026/07/17] for i8086 - MSDOS"

SECTION data
	ALIGN 2
	GLOBAL __stklen
__stklen	DW	4096

SECTION data
	ALIGN 2
	GLOBAL __heapsize
__heapsize	DW	0

SECTION data
	GLOBAL __fpc_valgrind
__fpc_valgrind	DB	0

SECTION .stack
	ALIGN 16
	GLOBAL ___stack
___stack:
___stackblock0:	RESB	4096
	GLOBAL ___stacktop
___stacktop:

SECTION .heap
	ALIGN 16
	GLOBAL ___heap
___heap:
	GLOBAL ___heaptop
___heaptop:

SECTION data
	ALIGN 2
	GLOBAL __fpc_stackplusmaxheap_in_para
__fpc_stackplusmaxheap_in_para	DW	4096
; End asmlist al_globals
; Begin asmlist al_typedconsts

SECTION rodata
	ALIGN 2
_$DOORKIT86$_Ld1:
		DB	2,27,"[",0

SECTION rodata
	ALIGN 2
_$DOORKIT86$_Ld2:
		DB	10,27,"[2J",27,"[1;1H",0

SECTION rodata
	ALIGN 2
_$DOORKIT86$_Ld3:
		DB	10,"Local User",0

SECTION rodata
	ALIGN 2
_$DOORKIT86$_Ld4:
		DB	2,13,10,0

SECTION rodata
	ALIGN 2
_$DOORKIT86$_Ld5:
		DB	8,"DOOR.SYS",0

SECTION rodata
	ALIGN 2
_$DOORKIT86$_Ld6:
		DB	"2FOSSIL driver not found ",226,128,148," running in local mode.",0

SECTION rodata
	ALIGN 2
_$DOORKIT86$_Ld7:
		DB	132,226,149,148,226,149,144,226,149,144,226,149,144,226,149,144,226,149,144,226,149,144,226,149,144,226,149,144,226,149,144,226,149,144,226,149,144,226,149,144,226,149,144,226,149,144,226,149,144,226,149,144,226,149,144,226,149,144,226,149,144,226,149,144
		DB	226,149,144,226,149,144,226,149,144,226,149,144,226,149,144,226,149,144,226,149,144,226,149,144,226,149,144,226,149,144,226,149,144,226,149,144,226,149,144,226,149,144,226,149,144,226,149,144,226,149,144,226,149,144,226,149,144,226,149,144,226,149,144,226
		DB	149,144,226,149,151,0

SECTION rodata
	ALIGN 2
_$DOORKIT86$_Ld8:
		DB	"0",226,149,145,"                                          ",226,149,145,0

SECTION rodata
	ALIGN 2
_$DOORKIT86$_Ld9:
		DB	21,226,149,145,"    doorkit86 v1.0",0

SECTION rodata
	ALIGN 2
_$DOORKIT86$_Ld10:
		DB	29,"                          ",226,149,145,0

SECTION rodata
	ALIGN 2
_$DOORKIT86$_Ld11:
		DB	"0",226,149,145,"    FPC 2.6.4irc i8086 DOS Door Kit       ",226,149,145,0

SECTION rodata
	ALIGN 2
_$DOORKIT86$_Ld12:
		DB	132,226,149,154,226,149,144,226,149,144,226,149,144,226,149,144,226,149,144,226,149,144,226,149,144,226,149,144,226,149,144,226,149,144,226,149,144,226,149,144,226,149,144,226,149,144,226,149,144,226,149,144,226,149,144,226,149,144,226,149,144,226,149,144
		DB	226,149,144,226,149,144,226,149,144,226,149,144,226,149,144,226,149,144,226,149,144,226,149,144,226,149,144,226,149,144,226,149,144,226,149,144,226,149,144,226,149,144,226,149,144,226,149,144,226,149,144,226,149,144,226,149,144,226,149,144,226,149,144,226
		DB	149,144,226,149,157,0

SECTION rodata
	ALIGN 2
_$DOORKIT86$_Ld13:
		DB	0,0

SECTION rodata
	ALIGN 2
_$DOORKIT86$_Ld14:
		DB	7,"Hello, ",0

SECTION rodata
	ALIGN 2
_$DOORKIT86$_Ld15:
		DB	1,"!",0

SECTION rodata
	ALIGN 2
_$DOORKIT86$_Ld16:
		DB	16,"Time remaining: ",0

SECTION rodata
	ALIGN 2
_$DOORKIT86$_Ld17:
		DB	8," minutes",0

SECTION rodata
	ALIGN 2
_$DOORKIT86$_Ld18:
		DB	25,226,148,128,226,148,128," System Info ",226,148,128,226,148,128,0

SECTION rodata
	ALIGN 2
_$DOORKIT86$_Ld19:
		DB	13,"DOS version: ",0

SECTION rodata
	ALIGN 2
_$DOORKIT86$_Ld20:
		DB	1,".",0

SECTION rodata
	ALIGN 2
_$DOORKIT86$_Ld21:
		DB	6,"Date: ",0

SECTION rodata
	ALIGN 2
_$DOORKIT86$_Ld22:
		DB	1,"/",0

SECTION rodata
	ALIGN 2
_$DOORKIT86$_Ld23:
		DB	6,"Time: ",0

SECTION rodata
	ALIGN 2
_$DOORKIT86$_Ld24:
		DB	1,":",0

SECTION rodata
	ALIGN 2
_$DOORKIT86$_Ld25:
		DB	11,"Mode: LOCAL",0

SECTION rodata
	ALIGN 2
_$DOORKIT86$_Ld26:
		DB	17,"Mode: REMOTE (COM",0

SECTION rodata
	ALIGN 2
_$DOORKIT86$_Ld27:
		DB	1,")",0

SECTION rodata
	ALIGN 2
_$DOORKIT86$_Ld28:
		DB	18,226,148,128,226,148,128," Menu ",226,148,128,226,148,128,0

SECTION rodata
	ALIGN 2
_$DOORKIT86$_Ld29:
		DB	16,"[F] Write a file",0

SECTION rodata
	ALIGN 2
_$DOORKIT86$_Ld30:
		DB	8,"[Q] Quit",0

SECTION rodata
	ALIGN 2
_$DOORKIT86$_Ld31:
		DB	8,"Choice: ",0

SECTION rodata
	ALIGN 2
_$DOORKIT86$_Ld32:
		DB	11,"DOORKIT.LOG",0

SECTION rodata
	ALIGN 2
_$DOORKIT86$_Ld33:
		DB	24,"doorkit86 v1.0 was here!",0

SECTION rodata
	ALIGN 2
_$DOORKIT86$_Ld34:
		DB	6,"User: ",0

SECTION rodata
	ALIGN 2
_$DOORKIT86$_Ld35:
		DB	17,"Wrote DOORKIT.LOG",0

SECTION rodata
	ALIGN 2
_$DOORKIT86$_Ld36:
		DB	28,"Thanks for trying doorkit86!",0
; End asmlist al_typedconsts

