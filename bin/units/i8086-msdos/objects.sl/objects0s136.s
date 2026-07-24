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
	GLOBAL OBJECTS_$$_REGISTEROBJECTS
OBJECTS_$$_REGISTEROBJECTS:
		push	bp
		mov	bp,sp
		mov	ax,word TC_$OBJECTS_$$_RCOLLECTION
		push	ax
		call	OBJECTS_$$_REGISTERTYPE$TSTREAMREC
		mov	ax,word TC_$OBJECTS_$$_RSTRINGCOLLECTION
		push	ax
		call	OBJECTS_$$_REGISTERTYPE$TSTREAMREC
		mov	ax,word TC_$OBJECTS_$$_RSTRCOLLECTION
		push	ax
		call	OBJECTS_$$_REGISTERTYPE$TSTREAMREC
		mov	sp,bp
		pop	bp
		ret
EXTERN	TC_$OBJECTS_$$_RSTRCOLLECTION
EXTERN	TC_$OBJECTS_$$_RSTRINGCOLLECTION
EXTERN	OBJECTS_$$_REGISTERTYPE$TSTREAMREC
EXTERN	TC_$OBJECTS_$$_RCOLLECTION
