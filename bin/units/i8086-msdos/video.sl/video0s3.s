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
	GLOBAL VIDEO_$$_DONEVIDEO
VIDEO_$$_DONEVIDEO:
		push	bp
		mov	bp,sp
		cmp	word [U_$VIDEO_$$_VIDEOBUF],0
		jne	..@j33
		jmp	..@j34
..@j33:
		push	word [U_$VIDEO_$$_VIDEOBUF]
		push	word [U_$VIDEO_$$_VIDEOBUFSIZE]
		call	SYSTEM_$$_FREEMEM$POINTER$WORD
..@j34:
		mov	word [U_$VIDEO_$$_VIDEOBUF],0
		mov	sp,bp
		pop	bp
		ret
EXTERN	SYSTEM_$$_FREEMEM$POINTER$WORD
EXTERN	U_$VIDEO_$$_VIDEOBUFSIZE
EXTERN	U_$VIDEO_$$_VIDEOBUF
