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

EXTERN	SYSTEM_$$_PARAMCOUNT$$LONGINT
EXTERN	SYSTEM_$$_PARAMSTR$LONGINT$$SHORTSTRING
EXTERN	DOORKIT86_$$_DOORINIT$SHORTSTRING
EXTERN	DOORKIT86_$$_DOORCOLOR$TANSICOLOR$TANSICOLOR
EXTERN	DOORKIT86_$$_DOORWRITELN$SHORTSTRING
EXTERN	U_$DOORKIT86_$$_DOORUSER
EXTERN	fpc_shortstr_to_shortstr
EXTERN	fpc_shortstr_concat_multi
EXTERN	DOORKIT86_$$_INTTOSTR$LONGINT$$SHORTSTRING
EXTERN	U_$DOORKIT86_$$_FOSSILOK
EXTERN	FPC_MSDOS
EXTERN	DOORKIT86_$$_DOORINPUT$SHORTSTRING$BYTE$SMALLINT$$SHORTSTRING
EXTERN	fpc_shortstr_compare_equal
EXTERN	fpc_val_sint_shortstr
EXTERN	fpc_shortstr_concat
EXTERN	DOORKIT86_$$_DOORPAUSE
EXTERN	DOORKIT86_$$_DOORSHUTDOWN
EXTERN	FPC_INITIALIZEUNITS
EXTERN	FPC_DO_EXIT
EXTERN	INIT$_$SYSTEM
EXTERN	THREADVARLIST_$SYSTEM
EXTERN	THREADVARLIST_$DOS
; Begin asmlist al_procedures

SECTION text
	ALIGN 2
	GLOBAL PASCALMAIN
PASCALMAIN:
	GLOBAL _main
_main:
		push	bp
		mov	bp,sp
		sub	sp,518
		call	FPC_INITIALIZEUNITS
		call	SYSTEM_$$_PARAMCOUNT$$LONGINT
		cmp	dx,0
		jg	..@j3
		jl	..@j4
		cmp	ax,0
		ja	..@j3
		jmp	..@j4
..@j3:
		lea	ax,[bp-256]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,1
		push	ax
		call	SYSTEM_$$_PARAMSTR$LONGINT$$SHORTSTRING
		lea	ax,[bp-256]
		push	ax
		call	DOORKIT86_$$_DOORINIT$SHORTSTRING
		jmp	..@j11
..@j4:
		mov	ax,word _$DOORDEMO$_Ld1
		push	ax
		call	DOORKIT86_$$_DOORINIT$SHORTSTRING
..@j11:
		mov	ax,0
		push	ax
		mov	ax,11
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		call	DOORKIT86_$$_DOORCOLOR$TANSICOLOR$TANSICOLOR
		mov	ax,word _$DOORDEMO$_Ld2
		push	ax
		call	DOORKIT86_$$_DOORWRITELN$SHORTSTRING
		mov	ax,word _$DOORDEMO$_Ld3
		push	ax
		call	DOORKIT86_$$_DOORWRITELN$SHORTSTRING
		mov	ax,word _$DOORDEMO$_Ld4
		push	ax
		call	DOORKIT86_$$_DOORWRITELN$SHORTSTRING
		mov	ax,word _$DOORDEMO$_Ld2
		push	ax
		call	DOORKIT86_$$_DOORWRITELN$SHORTSTRING
		mov	ax,0
		push	ax
		mov	ax,7
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		call	DOORKIT86_$$_DOORCOLOR$TANSICOLOR$TANSICOLOR
		mov	ax,word _$DOORDEMO$_Ld1
		push	ax
		call	DOORKIT86_$$_DOORWRITELN$SHORTSTRING
		cmp	byte [U_$DOORKIT86_$$_DOORUSER],0
		jne	..@j32
		jmp	..@j33
..@j32:
		lea	ax,[bp-256]
		push	ax
		mov	ax,255
		push	ax
		mov	ax,word _$DOORDEMO$_Ld5
		mov	word [bp-262],ax
		lea	ax,[bp-518]
		push	ax
		mov	ax,255
		push	ax
		mov	ax,word U_$DOORKIT86_$$_DOORUSER
		push	ax
		call	fpc_shortstr_to_shortstr
		lea	ax,[bp-518]
		mov	word [bp-260],ax
		mov	ax,word _$DOORDEMO$_Ld6
		mov	word [bp-258],ax
		lea	ax,[bp-262]
		push	ax
		mov	ax,2
		push	ax
		call	fpc_shortstr_concat_multi
		lea	ax,[bp-256]
		push	ax
		call	DOORKIT86_$$_DOORWRITELN$SHORTSTRING
		jmp	..@j50
..@j33:
		mov	ax,word _$DOORDEMO$_Ld7
		push	ax
		call	DOORKIT86_$$_DOORWRITELN$SHORTSTRING
..@j50:
		lea	ax,[bp-256]
		push	ax
		mov	ax,255
		push	ax
		mov	ax,word _$DOORDEMO$_Ld8
		mov	word [bp-262],ax
		lea	ax,[bp-518]
		push	ax
		mov	ax,word [U_$DOORKIT86_$$_DOORUSER+108]
		cwd
		push	dx
		push	ax
		call	DOORKIT86_$$_INTTOSTR$LONGINT$$SHORTSTRING
		lea	ax,[bp-518]
		mov	word [bp-260],ax
		mov	ax,word _$DOORDEMO$_Ld9
		mov	word [bp-258],ax
		lea	ax,[bp-262]
		push	ax
		mov	ax,2
		push	ax
		call	fpc_shortstr_concat_multi
		lea	ax,[bp-256]
		push	ax
		call	DOORKIT86_$$_DOORWRITELN$SHORTSTRING
		cmp	byte [U_$DOORKIT86_$$_FOSSILOK],0
		jne	..@j67
		jmp	..@j68
..@j67:
		mov	ax,word _$DOORDEMO$_Ld10
		push	ax
		call	DOORKIT86_$$_DOORWRITELN$SHORTSTRING
		jmp	..@j71
..@j68:
		mov	ax,word _$DOORDEMO$_Ld11
		push	ax
		call	DOORKIT86_$$_DOORWRITELN$SHORTSTRING
..@j71:
		mov	ax,word _$DOORDEMO$_Ld1
		push	ax
		call	DOORKIT86_$$_DOORWRITELN$SHORTSTRING
		mov	ax,0
		push	ax
		mov	ax,14
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		call	DOORKIT86_$$_DOORCOLOR$TANSICOLOR$TANSICOLOR
		mov	ax,word _$DOORDEMO$_Ld12
		push	ax
		call	DOORKIT86_$$_DOORWRITELN$SHORTSTRING
		mov	ax,0
		push	ax
		mov	ax,7
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		call	DOORKIT86_$$_DOORCOLOR$TANSICOLOR$TANSICOLOR
		mov	byte [U_$P$DOORDEMO_$$_R+1],44
		mov	ax,word U_$P$DOORDEMO_$$_R
		push	ax
		call	FPC_MSDOS
		mov	al,byte [U_$P$DOORDEMO_$$_R+6]
		mov	ah,0
		cwd
		mov	cx,10
		idiv	cx
		inc	dx
		mov	word [U_$P$DOORDEMO_$$_TARGET],dx
		mov	word [U_$P$DOORDEMO_$$_SCORE],0
		mov	ax,word _$DOORDEMO$_Ld13
		push	ax
		call	DOORKIT86_$$_DOORWRITELN$SHORTSTRING
	ALIGN 2
..@j96:
		mov	ax,word U_$P$DOORDEMO_$$_CHOICE
		push	ax
		mov	ax,255
		push	ax
		lea	ax,[bp-256]
		push	ax
		mov	ax,word _$DOORDEMO$_Ld14
		push	ax
		mov	ax,2
		push	ax
		mov	ax,60
		push	ax
		call	DOORKIT86_$$_DOORINPUT$SHORTSTRING$BYTE$SMALLINT$$SHORTSTRING
		lea	ax,[bp-256]
		push	ax
		call	fpc_shortstr_to_shortstr
		mov	ax,word U_$P$DOORDEMO_$$_CHOICE
		push	ax
		mov	ax,word _$DOORDEMO$_Ld15
		push	ax
		call	fpc_shortstr_compare_equal
		cmp	dx,0
		jne	..@j115
		cmp	ax,0
		jne	..@j115
		jmp	..@j113
..@j115:
		mov	ax,word U_$P$DOORDEMO_$$_CHOICE
		push	ax
		mov	ax,word _$DOORDEMO$_Ld16
		push	ax
		call	fpc_shortstr_compare_equal
		cmp	dx,0
		jne	..@j114
		cmp	ax,0
		jne	..@j114
		jmp	..@j113
..@j113:
		jmp	..@j98
..@j114:
		mov	ax,2
		push	ax
		mov	ax,word U_$P$DOORDEMO_$$_CHOICE
		push	ax
		lea	ax,[bp-2]
		push	ax
		call	fpc_val_sint_shortstr
		mov	word [U_$P$DOORDEMO_$$_GUESS],ax
		inc	word [U_$P$DOORDEMO_$$_SCORE]
		mov	ax,word [U_$P$DOORDEMO_$$_GUESS]
		cmp	ax,word [U_$P$DOORDEMO_$$_TARGET]
		je	..@j132
		jmp	..@j133
..@j132:
		mov	ax,0
		push	ax
		mov	ax,10
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		call	DOORKIT86_$$_DOORCOLOR$TANSICOLOR$TANSICOLOR
		lea	ax,[bp-256]
		push	ax
		mov	ax,255
		push	ax
		mov	ax,word _$DOORDEMO$_Ld17
		mov	word [bp-262],ax
		lea	ax,[bp-518]
		push	ax
		mov	ax,word [U_$P$DOORDEMO_$$_SCORE]
		cwd
		push	dx
		push	ax
		call	DOORKIT86_$$_INTTOSTR$LONGINT$$SHORTSTRING
		lea	ax,[bp-518]
		mov	word [bp-260],ax
		mov	ax,word _$DOORDEMO$_Ld18
		mov	word [bp-258],ax
		lea	ax,[bp-262]
		push	ax
		mov	ax,2
		push	ax
		call	fpc_shortstr_concat_multi
		lea	ax,[bp-256]
		push	ax
		call	DOORKIT86_$$_DOORWRITELN$SHORTSTRING
		mov	ax,0
		push	ax
		mov	ax,7
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		call	DOORKIT86_$$_DOORCOLOR$TANSICOLOR$TANSICOLOR
		jmp	..@j98
		jmp	..@j156
..@j133:
		mov	ax,word [U_$P$DOORDEMO_$$_GUESS]
		cmp	ax,word [U_$P$DOORDEMO_$$_TARGET]
		jl	..@j157
		jmp	..@j158
..@j157:
		mov	ax,word _$DOORDEMO$_Ld19
		push	ax
		call	DOORKIT86_$$_DOORWRITELN$SHORTSTRING
		jmp	..@j161
..@j158:
		mov	ax,word _$DOORDEMO$_Ld20
		push	ax
		call	DOORKIT86_$$_DOORWRITELN$SHORTSTRING
..@j161:
..@j156:
		cmp	word [U_$P$DOORDEMO_$$_SCORE],10
		jge	..@j98
		jmp	..@j96
..@j98:
		cmp	word [U_$P$DOORDEMO_$$_SCORE],10
		jge	..@j164
		jmp	..@j165
..@j164:
		lea	ax,[bp-256]
		push	ax
		mov	ax,255
		push	ax
		mov	ax,word _$DOORDEMO$_Ld21
		push	ax
		lea	ax,[bp-512]
		push	ax
		mov	ax,word [U_$P$DOORDEMO_$$_TARGET]
		cwd
		push	dx
		push	ax
		call	DOORKIT86_$$_INTTOSTR$LONGINT$$SHORTSTRING
		lea	ax,[bp-512]
		push	ax
		call	fpc_shortstr_concat
		lea	ax,[bp-256]
		push	ax
		call	DOORKIT86_$$_DOORWRITELN$SHORTSTRING
..@j165:
		mov	ax,word _$DOORDEMO$_Ld1
		push	ax
		call	DOORKIT86_$$_DOORWRITELN$SHORTSTRING
		call	DOORKIT86_$$_DOORPAUSE
		call	DOORKIT86_$$_DOORSHUTDOWN
		call	FPC_DO_EXIT
		mov	sp,bp
		pop	bp
		ret
; End asmlist al_procedures
; Begin asmlist al_globals

SECTION bss
U_$P$DOORDEMO_$$_CHOICE:	RESB	256

SECTION bss
	ALIGNB 2
U_$P$DOORDEMO_$$_SCORE:	RESB	2

SECTION bss
	ALIGNB 2
U_$P$DOORDEMO_$$_R:	RESB	20

SECTION bss
	ALIGNB 2
U_$P$DOORDEMO_$$_GUESS:	RESB	2

SECTION bss
	ALIGNB 2
U_$P$DOORDEMO_$$_TARGET:	RESB	2

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
_$DOORDEMO$_Ld1:
		DB	0,0

SECTION rodata
	ALIGN 2
_$DOORDEMO$_Ld2:
		DB	"'=======================================",0

SECTION rodata
	ALIGN 2
_$DOORDEMO$_Ld3:
		DB	27,"   DOORKIT86 DEMO DOOR v1.0",0

SECTION rodata
	ALIGN 2
_$DOORDEMO$_Ld4:
		DB	"    Built with FPC 2.6.4irc i8086",0

SECTION rodata
	ALIGN 2
_$DOORDEMO$_Ld5:
		DB	9,"Welcome, ",0

SECTION rodata
	ALIGN 2
_$DOORDEMO$_Ld6:
		DB	1,"!",0

SECTION rodata
	ALIGN 2
_$DOORDEMO$_Ld7:
		DB	20,"Welcome, Local User!",0

SECTION rodata
	ALIGN 2
_$DOORDEMO$_Ld8:
		DB	16,"Time remaining: ",0

SECTION rodata
	ALIGN 2
_$DOORDEMO$_Ld9:
		DB	4," min",0

SECTION rodata
	ALIGN 2
_$DOORDEMO$_Ld10:
		DB	14,"FOSSIL: active",0

SECTION rodata
	ALIGN 2
_$DOORDEMO$_Ld11:
		DB	23,"Mode: Local (no FOSSIL)",0

SECTION rodata
	ALIGN 2
_$DOORDEMO$_Ld12:
		DB	28,"--- Number Guessing Game ---",0

SECTION rodata
	ALIGN 2
_$DOORDEMO$_Ld13:
		DB	31,"I am thinking of a number 1-10.",0

SECTION rodata
	ALIGN 2
_$DOORDEMO$_Ld14:
		DB	24,"Your guess (Q to quit): ",0

SECTION rodata
	ALIGN 2
_$DOORDEMO$_Ld15:
		DB	1,"Q",0

SECTION rodata
	ALIGN 2
_$DOORDEMO$_Ld16:
		DB	1,"q",0

SECTION rodata
	ALIGN 2
_$DOORDEMO$_Ld17:
		DB	23,"Correct! You got it in ",0

SECTION rodata
	ALIGN 2
_$DOORDEMO$_Ld18:
		DB	7," tries!",0

SECTION rodata
	ALIGN 2
_$DOORDEMO$_Ld19:
		DB	7,"Higher!",0

SECTION rodata
	ALIGN 2
_$DOORDEMO$_Ld20:
		DB	6,"Lower!",0

SECTION rodata
	ALIGN 2
_$DOORDEMO$_Ld21:
		DB	23,"Out of guesses! It was ",0
; End asmlist al_typedconsts

