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

SECTION .text
	ALIGN 2
	GLOBAL VIDEO_$$_UPDATESCREEN$BOOLEAN
VIDEO_$$_UPDATESCREEN$BOOLEAN:
		push	bp
		mov	bp,sp
		cmp	word [U_$VIDEO_$$_VIDEOBUF],0
		jne	..@j77
		jmp	..@j76
..@j77:
		cmp	byte [bp+4],0
		jne	..@j75
		jmp	..@j78
..@j78:
		jmp	..@j75
..@j75:
		mov	ax,word [U_$VIDEO_$$_VIDEOBUF]
		push	ax
		push	word [U_$VIDEO_$$_SCREENSEG]
		mov	ax,0
		push	ax
		call	SYSTEM_$$_PTR$WORD$WORD$$FARPOINTER
		push	ax
		push	word [U_$VIDEO_$$_VIDEOBUFSIZE]
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
..@j76:
		mov	sp,bp
		pop	bp
		ret	2
; End asmlist al_procedures
; Begin asmlist al_globals
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
EXTERN	U_$VIDEO_$$_VIDEOBUFSIZE
EXTERN	SYSTEM_$$_PTR$WORD$WORD$$FARPOINTER
EXTERN	U_$VIDEO_$$_SCREENSEG
EXTERN	U_$VIDEO_$$_VIDEOBUF
