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
	GLOBAL SYSTEM_$$_IGNORESPACES$TEXT$$BOOLEAN
SYSTEM_$$_IGNORESPACES$TEXT$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,258
		mov	byte [bp-257],0
		mov	byte [bp-1],0
		mov	bx,word [bp+4]
		mov	si,word [bp+4]
		mov	ax,word [bx+10]
		cmp	ax,word [si+12]
		jge	..@j22803
		jmp	..@j22804
..@j22803:
		jmp	..@j22797
..@j22804:
		cmp	byte [TC_$SYSTEM_$$_CTRLZMARKSEOF],0
		jne	..@j22807
		jmp	..@j22806
..@j22807:
		mov	bx,word [bp+4]
		mov	bx,word [bx+14]
		mov	si,word [bp+4]
		mov	si,word [si+10]
		cmp	byte [bx+si],26
		je	..@j22805
		jmp	..@j22806
..@j22805:
		jmp	..@j22797
..@j22806:
		jmp	..@j22809
	ALIGN 2
..@j22808:
		mov	ax,word [bp+4]
		push	ax
		lea	ax,[bp-257]
		push	ax
		mov	ax,255
		push	ax
		call	SYSTEM_$$_NEXTCHAR$TEXT$OPENSTRING$$BOOLEAN
		test	al,al
		je	..@j22811
		jmp	..@j22812
..@j22811:
		jmp	..@j22797
..@j22812:
		mov	bx,word [bp+4]
		mov	si,word [bp+4]
		mov	ax,word [bx+10]
		cmp	ax,word [si+12]
		jge	..@j22819
		jmp	..@j22820
..@j22819:
		jmp	..@j22810
..@j22820:
		cmp	byte [TC_$SYSTEM_$$_CTRLZMARKSEOF],0
		jne	..@j22823
		jmp	..@j22822
..@j22823:
		mov	bx,word [bp+4]
		mov	bx,word [bx+14]
		mov	si,word [bp+4]
		mov	si,word [si+10]
		cmp	byte [bx+si],26
		je	..@j22821
		jmp	..@j22822
..@j22821:
		jmp	..@j22810
..@j22822:
..@j22809:
		mov	bx,word [bp+4]
		mov	bx,word [bx+14]
		mov	si,word [bp+4]
		mov	si,word [si+10]
		cmp	byte [bx+si],32
		jbe	..@j22808
		jmp	..@j22810
..@j22810:
		mov	byte [bp-1],1
..@j22797:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	SYSTEM_$$_NEXTCHAR$TEXT$OPENSTRING$$BOOLEAN
EXTERN	TC_$SYSTEM_$$_CTRLZMARKSEOF
