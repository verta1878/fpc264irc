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
	GLOBAL MD5_$$_MD4TRANSFORM$TMDCONTEXT$POINTER
MD5_$$_MD4TRANSFORM$TMDCONTEXT$POINTER:
		push	bp
		mov	bp,sp
		sub	sp,80
		push	word [bp+4]
		lea	ax,[bp-80]
		push	ax
		mov	ax,64
		push	ax
		call	MD5_$$_INVERT$POINTER$POINTER$WORD
		mov	bx,word [bp+6]
		mov	ax,word [bx+8]
		mov	word [bp-4],ax
		mov	ax,word [bx+10]
		mov	word [bp-2],ax
		mov	bx,word [bp+6]
		mov	ax,word [bx+12]
		mov	word [bp-8],ax
		mov	ax,word [bx+14]
		mov	word [bp-6],ax
		mov	bx,word [bp+6]
		mov	ax,word [bx+16]
		mov	word [bp-12],ax
		mov	ax,word [bx+18]
		mov	word [bp-10],ax
		mov	bx,word [bp+6]
		mov	ax,word [bx+20]
		mov	word [bp-16],ax
		mov	ax,word [bx+22]
		mov	word [bp-14],ax
		push	bp
		lea	ax,[bp-4]
		push	ax
		push	word [bp-6]
		push	word [bp-8]
		push	word [bp-10]
		push	word [bp-12]
		push	word [bp-14]
		push	word [bp-16]
		push	word [bp-78]
		push	word [bp-80]
		mov	ax,3
		push	ax
		call	MD5$_$MD4TRANSFORM$TMDCONTEXT$POINTER_$$_R1$LONGWORD$LONGWORD$LONGWORD$LONGWORD$LONGWORD$BYTE
		push	bp
		lea	ax,[bp-16]
		push	ax
		push	word [bp-2]
		push	word [bp-4]
		push	word [bp-6]
		push	word [bp-8]
		push	word [bp-10]
		push	word [bp-12]
		push	word [bp-74]
		push	word [bp-76]
		mov	ax,7
		push	ax
		call	MD5$_$MD4TRANSFORM$TMDCONTEXT$POINTER_$$_R1$LONGWORD$LONGWORD$LONGWORD$LONGWORD$LONGWORD$BYTE
		push	bp
		lea	ax,[bp-12]
		push	ax
		push	word [bp-14]
		push	word [bp-16]
		push	word [bp-2]
		push	word [bp-4]
		push	word [bp-6]
		push	word [bp-8]
		push	word [bp-70]
		push	word [bp-72]
		mov	ax,11
		push	ax
		call	MD5$_$MD4TRANSFORM$TMDCONTEXT$POINTER_$$_R1$LONGWORD$LONGWORD$LONGWORD$LONGWORD$LONGWORD$BYTE
		push	bp
		lea	ax,[bp-8]
		push	ax
		push	word [bp-10]
		push	word [bp-12]
		push	word [bp-14]
		push	word [bp-16]
		push	word [bp-2]
		push	word [bp-4]
		push	word [bp-66]
		push	word [bp-68]
		mov	ax,19
		push	ax
		call	MD5$_$MD4TRANSFORM$TMDCONTEXT$POINTER_$$_R1$LONGWORD$LONGWORD$LONGWORD$LONGWORD$LONGWORD$BYTE
		push	bp
		lea	ax,[bp-4]
		push	ax
		push	word [bp-6]
		push	word [bp-8]
		push	word [bp-10]
		push	word [bp-12]
		push	word [bp-14]
		push	word [bp-16]
		push	word [bp-62]
		push	word [bp-64]
		mov	ax,3
		push	ax
		call	MD5$_$MD4TRANSFORM$TMDCONTEXT$POINTER_$$_R1$LONGWORD$LONGWORD$LONGWORD$LONGWORD$LONGWORD$BYTE
		push	bp
		lea	ax,[bp-16]
		push	ax
		push	word [bp-2]
		push	word [bp-4]
		push	word [bp-6]
		push	word [bp-8]
		push	word [bp-10]
		push	word [bp-12]
		push	word [bp-58]
		push	word [bp-60]
		mov	ax,7
		push	ax
		call	MD5$_$MD4TRANSFORM$TMDCONTEXT$POINTER_$$_R1$LONGWORD$LONGWORD$LONGWORD$LONGWORD$LONGWORD$BYTE
		push	bp
		lea	ax,[bp-12]
		push	ax
		push	word [bp-14]
		push	word [bp-16]
		push	word [bp-2]
		push	word [bp-4]
		push	word [bp-6]
		push	word [bp-8]
		push	word [bp-54]
		push	word [bp-56]
		mov	ax,11
		push	ax
		call	MD5$_$MD4TRANSFORM$TMDCONTEXT$POINTER_$$_R1$LONGWORD$LONGWORD$LONGWORD$LONGWORD$LONGWORD$BYTE
		push	bp
		lea	ax,[bp-8]
		push	ax
		push	word [bp-10]
		push	word [bp-12]
		push	word [bp-14]
		push	word [bp-16]
		push	word [bp-2]
		push	word [bp-4]
		push	word [bp-50]
		push	word [bp-52]
		mov	ax,19
		push	ax
		call	MD5$_$MD4TRANSFORM$TMDCONTEXT$POINTER_$$_R1$LONGWORD$LONGWORD$LONGWORD$LONGWORD$LONGWORD$BYTE
		push	bp
		lea	ax,[bp-4]
		push	ax
		push	word [bp-6]
		push	word [bp-8]
		push	word [bp-10]
		push	word [bp-12]
		push	word [bp-14]
		push	word [bp-16]
		push	word [bp-46]
		push	word [bp-48]
		mov	ax,3
		push	ax
		call	MD5$_$MD4TRANSFORM$TMDCONTEXT$POINTER_$$_R1$LONGWORD$LONGWORD$LONGWORD$LONGWORD$LONGWORD$BYTE
		push	bp
		lea	ax,[bp-16]
		push	ax
		push	word [bp-2]
		push	word [bp-4]
		push	word [bp-6]
		push	word [bp-8]
		push	word [bp-10]
		push	word [bp-12]
		push	word [bp-42]
		push	word [bp-44]
		mov	ax,7
		push	ax
		call	MD5$_$MD4TRANSFORM$TMDCONTEXT$POINTER_$$_R1$LONGWORD$LONGWORD$LONGWORD$LONGWORD$LONGWORD$BYTE
		push	bp
		lea	ax,[bp-12]
		push	ax
		push	word [bp-14]
		push	word [bp-16]
		push	word [bp-2]
		push	word [bp-4]
		push	word [bp-6]
		push	word [bp-8]
		push	word [bp-38]
		push	word [bp-40]
		mov	ax,11
		push	ax
		call	MD5$_$MD4TRANSFORM$TMDCONTEXT$POINTER_$$_R1$LONGWORD$LONGWORD$LONGWORD$LONGWORD$LONGWORD$BYTE
		push	bp
		lea	ax,[bp-8]
		push	ax
		push	word [bp-10]
		push	word [bp-12]
		push	word [bp-14]
		push	word [bp-16]
		push	word [bp-2]
		push	word [bp-4]
		push	word [bp-34]
		push	word [bp-36]
		mov	ax,19
		push	ax
		call	MD5$_$MD4TRANSFORM$TMDCONTEXT$POINTER_$$_R1$LONGWORD$LONGWORD$LONGWORD$LONGWORD$LONGWORD$BYTE
		push	bp
		lea	ax,[bp-4]
		push	ax
		push	word [bp-6]
		push	word [bp-8]
		push	word [bp-10]
		push	word [bp-12]
		push	word [bp-14]
		push	word [bp-16]
		push	word [bp-30]
		push	word [bp-32]
		mov	ax,3
		push	ax
		call	MD5$_$MD4TRANSFORM$TMDCONTEXT$POINTER_$$_R1$LONGWORD$LONGWORD$LONGWORD$LONGWORD$LONGWORD$BYTE
		push	bp
		lea	ax,[bp-16]
		push	ax
		push	word [bp-2]
		push	word [bp-4]
		push	word [bp-6]
		push	word [bp-8]
		push	word [bp-10]
		push	word [bp-12]
		push	word [bp-26]
		push	word [bp-28]
		mov	ax,7
		push	ax
		call	MD5$_$MD4TRANSFORM$TMDCONTEXT$POINTER_$$_R1$LONGWORD$LONGWORD$LONGWORD$LONGWORD$LONGWORD$BYTE
		push	bp
		lea	ax,[bp-12]
		push	ax
		push	word [bp-14]
		push	word [bp-16]
		push	word [bp-2]
		push	word [bp-4]
		push	word [bp-6]
		push	word [bp-8]
		push	word [bp-22]
		push	word [bp-24]
		mov	ax,11
		push	ax
		call	MD5$_$MD4TRANSFORM$TMDCONTEXT$POINTER_$$_R1$LONGWORD$LONGWORD$LONGWORD$LONGWORD$LONGWORD$BYTE
		push	bp
		lea	ax,[bp-8]
		push	ax
		push	word [bp-10]
		push	word [bp-12]
		push	word [bp-14]
		push	word [bp-16]
		push	word [bp-2]
		push	word [bp-4]
		push	word [bp-18]
		push	word [bp-20]
		mov	ax,19
		push	ax
		call	MD5$_$MD4TRANSFORM$TMDCONTEXT$POINTER_$$_R1$LONGWORD$LONGWORD$LONGWORD$LONGWORD$LONGWORD$BYTE
		push	bp
		lea	ax,[bp-4]
		push	ax
		push	word [bp-6]
		push	word [bp-8]
		push	word [bp-10]
		push	word [bp-12]
		push	word [bp-14]
		push	word [bp-16]
		push	word [bp-78]
		push	word [bp-80]
		mov	ax,3
		push	ax
		call	MD5$_$MD4TRANSFORM$TMDCONTEXT$POINTER_$$_R2$LONGWORD$LONGWORD$LONGWORD$LONGWORD$LONGWORD$BYTE
		push	bp
		lea	ax,[bp-16]
		push	ax
		push	word [bp-2]
		push	word [bp-4]
		push	word [bp-6]
		push	word [bp-8]
		push	word [bp-10]
		push	word [bp-12]
		push	word [bp-62]
		push	word [bp-64]
		mov	ax,5
		push	ax
		call	MD5$_$MD4TRANSFORM$TMDCONTEXT$POINTER_$$_R2$LONGWORD$LONGWORD$LONGWORD$LONGWORD$LONGWORD$BYTE
		push	bp
		lea	ax,[bp-12]
		push	ax
		push	word [bp-14]
		push	word [bp-16]
		push	word [bp-2]
		push	word [bp-4]
		push	word [bp-6]
		push	word [bp-8]
		push	word [bp-46]
		push	word [bp-48]
		mov	ax,9
		push	ax
		call	MD5$_$MD4TRANSFORM$TMDCONTEXT$POINTER_$$_R2$LONGWORD$LONGWORD$LONGWORD$LONGWORD$LONGWORD$BYTE
		push	bp
		lea	ax,[bp-8]
		push	ax
		push	word [bp-10]
		push	word [bp-12]
		push	word [bp-14]
		push	word [bp-16]
		push	word [bp-2]
		push	word [bp-4]
		push	word [bp-30]
		push	word [bp-32]
		mov	ax,13
		push	ax
		call	MD5$_$MD4TRANSFORM$TMDCONTEXT$POINTER_$$_R2$LONGWORD$LONGWORD$LONGWORD$LONGWORD$LONGWORD$BYTE
		push	bp
		lea	ax,[bp-4]
		push	ax
		push	word [bp-6]
		push	word [bp-8]
		push	word [bp-10]
		push	word [bp-12]
		push	word [bp-14]
		push	word [bp-16]
		push	word [bp-74]
		push	word [bp-76]
		mov	ax,3
		push	ax
		call	MD5$_$MD4TRANSFORM$TMDCONTEXT$POINTER_$$_R2$LONGWORD$LONGWORD$LONGWORD$LONGWORD$LONGWORD$BYTE
		push	bp
		lea	ax,[bp-16]
		push	ax
		push	word [bp-2]
		push	word [bp-4]
		push	word [bp-6]
		push	word [bp-8]
		push	word [bp-10]
		push	word [bp-12]
		push	word [bp-58]
		push	word [bp-60]
		mov	ax,5
		push	ax
		call	MD5$_$MD4TRANSFORM$TMDCONTEXT$POINTER_$$_R2$LONGWORD$LONGWORD$LONGWORD$LONGWORD$LONGWORD$BYTE
		push	bp
		lea	ax,[bp-12]
		push	ax
		push	word [bp-14]
		push	word [bp-16]
		push	word [bp-2]
		push	word [bp-4]
		push	word [bp-6]
		push	word [bp-8]
		push	word [bp-42]
		push	word [bp-44]
		mov	ax,9
		push	ax
		call	MD5$_$MD4TRANSFORM$TMDCONTEXT$POINTER_$$_R2$LONGWORD$LONGWORD$LONGWORD$LONGWORD$LONGWORD$BYTE
		push	bp
		lea	ax,[bp-8]
		push	ax
		push	word [bp-10]
		push	word [bp-12]
		push	word [bp-14]
		push	word [bp-16]
		push	word [bp-2]
		push	word [bp-4]
		push	word [bp-26]
		push	word [bp-28]
		mov	ax,13
		push	ax
		call	MD5$_$MD4TRANSFORM$TMDCONTEXT$POINTER_$$_R2$LONGWORD$LONGWORD$LONGWORD$LONGWORD$LONGWORD$BYTE
		push	bp
		lea	ax,[bp-4]
		push	ax
		push	word [bp-6]
		push	word [bp-8]
		push	word [bp-10]
		push	word [bp-12]
		push	word [bp-14]
		push	word [bp-16]
		push	word [bp-70]
		push	word [bp-72]
		mov	ax,3
		push	ax
		call	MD5$_$MD4TRANSFORM$TMDCONTEXT$POINTER_$$_R2$LONGWORD$LONGWORD$LONGWORD$LONGWORD$LONGWORD$BYTE
		push	bp
		lea	ax,[bp-16]
		push	ax
		push	word [bp-2]
		push	word [bp-4]
		push	word [bp-6]
		push	word [bp-8]
		push	word [bp-10]
		push	word [bp-12]
		push	word [bp-54]
		push	word [bp-56]
		mov	ax,5
		push	ax
		call	MD5$_$MD4TRANSFORM$TMDCONTEXT$POINTER_$$_R2$LONGWORD$LONGWORD$LONGWORD$LONGWORD$LONGWORD$BYTE
		push	bp
		lea	ax,[bp-12]
		push	ax
		push	word [bp-14]
		push	word [bp-16]
		push	word [bp-2]
		push	word [bp-4]
		push	word [bp-6]
		push	word [bp-8]
		push	word [bp-38]
		push	word [bp-40]
		mov	ax,9
		push	ax
		call	MD5$_$MD4TRANSFORM$TMDCONTEXT$POINTER_$$_R2$LONGWORD$LONGWORD$LONGWORD$LONGWORD$LONGWORD$BYTE
		push	bp
		lea	ax,[bp-8]
		push	ax
		push	word [bp-10]
		push	word [bp-12]
		push	word [bp-14]
		push	word [bp-16]
		push	word [bp-2]
		push	word [bp-4]
		push	word [bp-22]
		push	word [bp-24]
		mov	ax,13
		push	ax
		call	MD5$_$MD4TRANSFORM$TMDCONTEXT$POINTER_$$_R2$LONGWORD$LONGWORD$LONGWORD$LONGWORD$LONGWORD$BYTE
		push	bp
		lea	ax,[bp-4]
		push	ax
		push	word [bp-6]
		push	word [bp-8]
		push	word [bp-10]
		push	word [bp-12]
		push	word [bp-14]
		push	word [bp-16]
		push	word [bp-66]
		push	word [bp-68]
		mov	ax,3
		push	ax
		call	MD5$_$MD4TRANSFORM$TMDCONTEXT$POINTER_$$_R2$LONGWORD$LONGWORD$LONGWORD$LONGWORD$LONGWORD$BYTE
		push	bp
		lea	ax,[bp-16]
		push	ax
		push	word [bp-2]
		push	word [bp-4]
		push	word [bp-6]
		push	word [bp-8]
		push	word [bp-10]
		push	word [bp-12]
		push	word [bp-50]
		push	word [bp-52]
		mov	ax,5
		push	ax
		call	MD5$_$MD4TRANSFORM$TMDCONTEXT$POINTER_$$_R2$LONGWORD$LONGWORD$LONGWORD$LONGWORD$LONGWORD$BYTE
		push	bp
		lea	ax,[bp-12]
		push	ax
		push	word [bp-14]
		push	word [bp-16]
		push	word [bp-2]
		push	word [bp-4]
		push	word [bp-6]
		push	word [bp-8]
		push	word [bp-34]
		push	word [bp-36]
		mov	ax,9
		push	ax
		call	MD5$_$MD4TRANSFORM$TMDCONTEXT$POINTER_$$_R2$LONGWORD$LONGWORD$LONGWORD$LONGWORD$LONGWORD$BYTE
		push	bp
		lea	ax,[bp-8]
		push	ax
		push	word [bp-10]
		push	word [bp-12]
		push	word [bp-14]
		push	word [bp-16]
		push	word [bp-2]
		push	word [bp-4]
		push	word [bp-18]
		push	word [bp-20]
		mov	ax,13
		push	ax
		call	MD5$_$MD4TRANSFORM$TMDCONTEXT$POINTER_$$_R2$LONGWORD$LONGWORD$LONGWORD$LONGWORD$LONGWORD$BYTE
		push	bp
		lea	ax,[bp-4]
		push	ax
		push	word [bp-6]
		push	word [bp-8]
		push	word [bp-10]
		push	word [bp-12]
		push	word [bp-14]
		push	word [bp-16]
		push	word [bp-78]
		push	word [bp-80]
		mov	ax,3
		push	ax
		call	MD5$_$MD4TRANSFORM$TMDCONTEXT$POINTER_$$_R3$LONGWORD$LONGWORD$LONGWORD$LONGWORD$LONGWORD$BYTE
		push	bp
		lea	ax,[bp-16]
		push	ax
		push	word [bp-2]
		push	word [bp-4]
		push	word [bp-6]
		push	word [bp-8]
		push	word [bp-10]
		push	word [bp-12]
		push	word [bp-46]
		push	word [bp-48]
		mov	ax,9
		push	ax
		call	MD5$_$MD4TRANSFORM$TMDCONTEXT$POINTER_$$_R3$LONGWORD$LONGWORD$LONGWORD$LONGWORD$LONGWORD$BYTE
		push	bp
		lea	ax,[bp-12]
		push	ax
		push	word [bp-14]
		push	word [bp-16]
		push	word [bp-2]
		push	word [bp-4]
		push	word [bp-6]
		push	word [bp-8]
		push	word [bp-62]
		push	word [bp-64]
		mov	ax,11
		push	ax
		call	MD5$_$MD4TRANSFORM$TMDCONTEXT$POINTER_$$_R3$LONGWORD$LONGWORD$LONGWORD$LONGWORD$LONGWORD$BYTE
		push	bp
		lea	ax,[bp-8]
		push	ax
		push	word [bp-10]
		push	word [bp-12]
		push	word [bp-14]
		push	word [bp-16]
		push	word [bp-2]
		push	word [bp-4]
		push	word [bp-30]
		push	word [bp-32]
		mov	ax,15
		push	ax
		call	MD5$_$MD4TRANSFORM$TMDCONTEXT$POINTER_$$_R3$LONGWORD$LONGWORD$LONGWORD$LONGWORD$LONGWORD$BYTE
		push	bp
		lea	ax,[bp-4]
		push	ax
		push	word [bp-6]
		push	word [bp-8]
		push	word [bp-10]
		push	word [bp-12]
		push	word [bp-14]
		push	word [bp-16]
		push	word [bp-70]
		push	word [bp-72]
		mov	ax,3
		push	ax
		call	MD5$_$MD4TRANSFORM$TMDCONTEXT$POINTER_$$_R3$LONGWORD$LONGWORD$LONGWORD$LONGWORD$LONGWORD$BYTE
		push	bp
		lea	ax,[bp-16]
		push	ax
		push	word [bp-2]
		push	word [bp-4]
		push	word [bp-6]
		push	word [bp-8]
		push	word [bp-10]
		push	word [bp-12]
		push	word [bp-38]
		push	word [bp-40]
		mov	ax,9
		push	ax
		call	MD5$_$MD4TRANSFORM$TMDCONTEXT$POINTER_$$_R3$LONGWORD$LONGWORD$LONGWORD$LONGWORD$LONGWORD$BYTE
		push	bp
		lea	ax,[bp-12]
		push	ax
		push	word [bp-14]
		push	word [bp-16]
		push	word [bp-2]
		push	word [bp-4]
		push	word [bp-6]
		push	word [bp-8]
		push	word [bp-54]
		push	word [bp-56]
		mov	ax,11
		push	ax
		call	MD5$_$MD4TRANSFORM$TMDCONTEXT$POINTER_$$_R3$LONGWORD$LONGWORD$LONGWORD$LONGWORD$LONGWORD$BYTE
		push	bp
		lea	ax,[bp-8]
		push	ax
		push	word [bp-10]
		push	word [bp-12]
		push	word [bp-14]
		push	word [bp-16]
		push	word [bp-2]
		push	word [bp-4]
		push	word [bp-22]
		push	word [bp-24]
		mov	ax,15
		push	ax
		call	MD5$_$MD4TRANSFORM$TMDCONTEXT$POINTER_$$_R3$LONGWORD$LONGWORD$LONGWORD$LONGWORD$LONGWORD$BYTE
		push	bp
		lea	ax,[bp-4]
		push	ax
		push	word [bp-6]
		push	word [bp-8]
		push	word [bp-10]
		push	word [bp-12]
		push	word [bp-14]
		push	word [bp-16]
		push	word [bp-74]
		push	word [bp-76]
		mov	ax,3
		push	ax
		call	MD5$_$MD4TRANSFORM$TMDCONTEXT$POINTER_$$_R3$LONGWORD$LONGWORD$LONGWORD$LONGWORD$LONGWORD$BYTE
		push	bp
		lea	ax,[bp-16]
		push	ax
		push	word [bp-2]
		push	word [bp-4]
		push	word [bp-6]
		push	word [bp-8]
		push	word [bp-10]
		push	word [bp-12]
		push	word [bp-42]
		push	word [bp-44]
		mov	ax,9
		push	ax
		call	MD5$_$MD4TRANSFORM$TMDCONTEXT$POINTER_$$_R3$LONGWORD$LONGWORD$LONGWORD$LONGWORD$LONGWORD$BYTE
		push	bp
		lea	ax,[bp-12]
		push	ax
		push	word [bp-14]
		push	word [bp-16]
		push	word [bp-2]
		push	word [bp-4]
		push	word [bp-6]
		push	word [bp-8]
		push	word [bp-58]
		push	word [bp-60]
		mov	ax,11
		push	ax
		call	MD5$_$MD4TRANSFORM$TMDCONTEXT$POINTER_$$_R3$LONGWORD$LONGWORD$LONGWORD$LONGWORD$LONGWORD$BYTE
		push	bp
		lea	ax,[bp-8]
		push	ax
		push	word [bp-10]
		push	word [bp-12]
		push	word [bp-14]
		push	word [bp-16]
		push	word [bp-2]
		push	word [bp-4]
		push	word [bp-26]
		push	word [bp-28]
		mov	ax,15
		push	ax
		call	MD5$_$MD4TRANSFORM$TMDCONTEXT$POINTER_$$_R3$LONGWORD$LONGWORD$LONGWORD$LONGWORD$LONGWORD$BYTE
		push	bp
		lea	ax,[bp-4]
		push	ax
		push	word [bp-6]
		push	word [bp-8]
		push	word [bp-10]
		push	word [bp-12]
		push	word [bp-14]
		push	word [bp-16]
		push	word [bp-66]
		push	word [bp-68]
		mov	ax,3
		push	ax
		call	MD5$_$MD4TRANSFORM$TMDCONTEXT$POINTER_$$_R3$LONGWORD$LONGWORD$LONGWORD$LONGWORD$LONGWORD$BYTE
		push	bp
		lea	ax,[bp-16]
		push	ax
		push	word [bp-2]
		push	word [bp-4]
		push	word [bp-6]
		push	word [bp-8]
		push	word [bp-10]
		push	word [bp-12]
		push	word [bp-34]
		push	word [bp-36]
		mov	ax,9
		push	ax
		call	MD5$_$MD4TRANSFORM$TMDCONTEXT$POINTER_$$_R3$LONGWORD$LONGWORD$LONGWORD$LONGWORD$LONGWORD$BYTE
		push	bp
		lea	ax,[bp-12]
		push	ax
		push	word [bp-14]
		push	word [bp-16]
		push	word [bp-2]
		push	word [bp-4]
		push	word [bp-6]
		push	word [bp-8]
		push	word [bp-50]
		push	word [bp-52]
		mov	ax,11
		push	ax
		call	MD5$_$MD4TRANSFORM$TMDCONTEXT$POINTER_$$_R3$LONGWORD$LONGWORD$LONGWORD$LONGWORD$LONGWORD$BYTE
		push	bp
		lea	ax,[bp-8]
		push	ax
		push	word [bp-10]
		push	word [bp-12]
		push	word [bp-14]
		push	word [bp-16]
		push	word [bp-2]
		push	word [bp-4]
		push	word [bp-18]
		push	word [bp-20]
		mov	ax,15
		push	ax
		call	MD5$_$MD4TRANSFORM$TMDCONTEXT$POINTER_$$_R3$LONGWORD$LONGWORD$LONGWORD$LONGWORD$LONGWORD$BYTE
		mov	bx,word [bp+6]
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		add	word [bx+8],ax
		adc	word [bx+10],dx
		mov	bx,word [bp+6]
		mov	ax,word [bp-8]
		mov	dx,word [bp-6]
		add	word [bx+12],ax
		adc	word [bx+14],dx
		mov	bx,word [bp+6]
		mov	ax,word [bp-12]
		mov	dx,word [bp-10]
		add	word [bx+16],ax
		adc	word [bx+18],dx
		mov	bx,word [bp+6]
		mov	ax,word [bp-16]
		mov	dx,word [bp-14]
		add	word [bx+20],ax
		adc	word [bx+22],dx
		mov	bx,word [bp+6]
		add	word [bx+96],64
		adc	word [bx+98],0
		adc	word [bx+100],0
		adc	word [bx+102],0
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	MD5$_$MD4TRANSFORM$TMDCONTEXT$POINTER_$$_R3$LONGWORD$LONGWORD$LONGWORD$LONGWORD$LONGWORD$BYTE
EXTERN	MD5$_$MD4TRANSFORM$TMDCONTEXT$POINTER_$$_R2$LONGWORD$LONGWORD$LONGWORD$LONGWORD$LONGWORD$BYTE
EXTERN	MD5$_$MD4TRANSFORM$TMDCONTEXT$POINTER_$$_R1$LONGWORD$LONGWORD$LONGWORD$LONGWORD$LONGWORD$BYTE
EXTERN	MD5_$$_INVERT$POINTER$POINTER$WORD
