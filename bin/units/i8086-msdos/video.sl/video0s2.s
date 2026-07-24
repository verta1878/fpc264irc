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
	GLOBAL VIDEO_$$_INITVIDEO
VIDEO_$$_INITVIDEO:
		push	bp
		mov	bp,sp
		sub	sp,20
		mov	byte [bp-19],15
		mov	ax,16
		push	ax
		lea	ax,[bp-20]
		push	ax
		call	FPC_INTR
		mov	al,byte [bp-20]
		mov	byte [U_$VIDEO_$$_OLDMODE],al
		mov	al,byte [bp-19]
		mov	ah,0
		mov	word [U_$VIDEO_$$_SCREENWIDTH],ax
		mov	word [U_$VIDEO_$$_SCREENHEIGHT],25
		mov	word [U_$VIDEO_$$_SCREENSEG],-18432
		mov	ax,word [U_$VIDEO_$$_SCREENHEIGHT]
		mul	word [U_$VIDEO_$$_SCREENWIDTH]
		shl	ax,1
		mov	word [U_$VIDEO_$$_VIDEOBUFSIZE],ax
		mov	ax,word U_$VIDEO_$$_VIDEOBUF
		push	ax
		push	word [U_$VIDEO_$$_VIDEOBUFSIZE]
		call	SYSTEM_$$_GETMEM$POINTER$WORD
		mov	ax,word [U_$VIDEO_$$_VIDEOBUF]
		push	ax
		push	word [U_$VIDEO_$$_VIDEOBUFSIZE]
		mov	ax,0
		push	ax
		call	SYSTEM_$$_FILLCHAR$formal$SMALLINT$BYTE
		mov	sp,bp
		pop	bp
		ret
EXTERN	SYSTEM_$$_FILLCHAR$formal$SMALLINT$BYTE
EXTERN	SYSTEM_$$_GETMEM$POINTER$WORD
EXTERN	U_$VIDEO_$$_VIDEOBUF
EXTERN	U_$VIDEO_$$_VIDEOBUFSIZE
EXTERN	U_$VIDEO_$$_SCREENSEG
EXTERN	U_$VIDEO_$$_SCREENHEIGHT
EXTERN	U_$VIDEO_$$_SCREENWIDTH
EXTERN	U_$VIDEO_$$_OLDMODE
EXTERN	FPC_INTR
