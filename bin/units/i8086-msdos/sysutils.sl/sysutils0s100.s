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
	GLOBAL SYSUTILS_$$_GENERICANSISTRICOMP$PCHAR$PCHAR$$SMALLINT
SYSUTILS_$$_GENERICANSISTRICOMP$PCHAR$PCHAR$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	word [bp-2],0
		cmp	word [bp+6],0
		je	..@j3071
		jmp	..@j3072
..@j3071:
		cmp	word [bp+4],0
		je	..@j3073
		jmp	..@j3074
..@j3073:
		jmp	..@j3067
..@j3074:
		mov	word [bp-2],-1
		jmp	..@j3067
..@j3072:
		cmp	word [bp+4],0
		je	..@j3077
		jmp	..@j3078
..@j3077:
		mov	word [bp-2],1
		jmp	..@j3067
..@j3078:
		jmp	..@j3082
	ALIGN 2
..@j3081:
		mov	bx,word [bp+6]
		mov	bl,byte [bx]
		mov	bh,0
		mov	al,byte [U_$SYSUTILS_$$_LOWERCASETABLE+bx]
		mov	ah,0
		mov	bx,word [bp+4]
		mov	bl,byte [bx]
		mov	bh,0
		mov	dl,byte [U_$SYSUTILS_$$_LOWERCASETABLE+bx]
		mov	dh,0
		sub	ax,dx
		mov	word [bp-2],ax
		inc	word [bp+6]
		inc	word [bp+4]
..@j3082:
		cmp	word [bp-2],0
		je	..@j3087
		jmp	..@j3083
..@j3087:
		mov	bx,word [bp+6]
		cmp	byte [bx],0
		jne	..@j3086
		jmp	..@j3083
..@j3086:
		mov	bx,word [bp+4]
		cmp	byte [bx],0
		jne	..@j3081
		jmp	..@j3083
..@j3083:
		cmp	word [bp-2],0
		je	..@j3090
		jmp	..@j3089
..@j3090:
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		mov	al,byte [bx]
		cmp	al,byte [si]
		jne	..@j3088
		jmp	..@j3089
..@j3088:
		mov	bx,word [bp+6]
		cmp	byte [bx],0
		je	..@j3091
		jmp	..@j3092
..@j3091:
		mov	word [bp-2],-1
		jmp	..@j3095
..@j3092:
		mov	word [bp-2],1
..@j3095:
..@j3089:
..@j3067:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	U_$SYSUTILS_$$_LOWERCASETABLE
