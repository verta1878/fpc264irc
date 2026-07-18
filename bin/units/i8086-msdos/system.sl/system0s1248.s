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
	GLOBAL SYSTEM_$$_SYSTINYGETMEM$WORD$$POINTER
SYSTEM_$$_SYSTINYGETMEM$WORD$$POINTER:
		push	bp
		mov	bp,sp
		sub	sp,16
		mov	ax,word [bp+4]
		add	ax,2
		mov	word [bp-14],ax
		mov	ax,word [bp-14]
		mov	dx,0
		add	ax,3
		adc	dx,0
		mov	word [bp-16],ax
		mov	ax,word [bp-16]
		and	ax,3
		mov	bx,0
		mov	dx,word [bp-16]
		mov	cx,0
		sub	dx,ax
		sbb	cx,bx
		mov	word [bp-10],dx
		mov	ax,word [TC_$SYSTEM_$$_FREELIST]
		mov	word [bp-4],ax
		mov	word [bp-6],0
		jmp	..@j25865
	ALIGN 2
..@j25864:
		mov	ax,word [bp-4]
		mov	word [bp-6],ax
		mov	bx,word [bp-4]
		mov	ax,word [bx]
		mov	word [bp-4],ax
..@j25865:
		mov	ax,word [bp-4]
		cmp	ax,word [TC_$SYSTEM_$$_HEAPPTR]
		jne	..@j25871
		jmp	..@j25866
..@j25871:
		mov	bx,word [bp-4]
		mov	ax,word [bx+2]
		mov	word [bp-14],ax
		mov	ax,word [bp-14]
		cmp	ax,word [bp-10]
		jb	..@j25864
		jmp	..@j25866
..@j25866:
		mov	ax,word [bp-4]
		cmp	ax,word [TC_$SYSTEM_$$_HEAPPTR]
		jne	..@j25876
		jmp	..@j25877
..@j25876:
		mov	bx,word [bp-4]
		lea	ax,[bx+2]
		mov	word [bp-2],ax
		mov	bx,word [bp-4]
		mov	ax,word [bx+2]
		mov	word [bp-14],ax
		mov	ax,word [bp-14]
		mov	dx,0
		mov	cx,word [bp-10]
		mov	bx,0
		sub	ax,cx
		sbb	dx,bx
		cmp	dx,0
		jg	..@j25880
		jl	..@j25881
		cmp	ax,4
		jae	..@j25880
		jmp	..@j25881
..@j25880:
		mov	bx,word [bp-4]
		mov	ax,word [bx+2]
		mov	word [bp-14],ax
		mov	ax,word [bp-14]
		mov	dx,0
		mov	cx,word [bp-10]
		mov	bx,0
		sub	ax,cx
		sbb	dx,bx
		mov	word [bp-12],ax
		jmp	..@j25892
..@j25881:
		mov	bx,word [bp-4]
		mov	ax,word [bx+2]
		mov	word [bp-14],ax
		mov	ax,word [bp-14]
		mov	word [bp-10],ax
		mov	word [bp-12],0
..@j25892:
		cmp	word [bp-12],0
		ja	..@j25901
		jmp	..@j25902
..@j25901:
		mov	dx,word [bp-4]
		mov	ax,word [bp-10]
		add	ax,dx
		mov	word [bp-8],ax
		mov	si,word [bp-8]
		mov	bx,word [bp-4]
		mov	ax,word [bx]
		mov	word [si],ax
		mov	ax,word [bp-12]
		mov	bx,word [bp-8]
		mov	word [bx+2],ax
		cmp	word [bp-6],0
		je	..@j25911
		jmp	..@j25912
..@j25911:
		mov	ax,word [bp-8]
		mov	word [TC_$SYSTEM_$$_FREELIST],ax
		jmp	..@j25915
..@j25912:
		mov	bx,word [bp-6]
		mov	ax,word [bp-8]
		mov	word [bx],ax
..@j25915:
		jmp	..@j25918
..@j25902:
		cmp	word [bp-6],0
		je	..@j25919
		jmp	..@j25920
..@j25919:
		mov	bx,word [bp-4]
		mov	ax,word [bx]
		mov	word [TC_$SYSTEM_$$_FREELIST],ax
		jmp	..@j25923
..@j25920:
		mov	si,word [bp-6]
		mov	bx,word [bp-4]
		mov	ax,word [bx]
		mov	word [si],ax
..@j25923:
..@j25918:
		mov	bx,word [bp-4]
		mov	ax,word [bp+4]
		mov	word [bx],ax
		jmp	..@j25928
..@j25877:
		mov	ax,word [TC_$SYSTEM_$$_HEAPEND]
		mov	dx,word [TC_$SYSTEM_$$_HEAPPTR]
		sub	ax,dx
		cmp	ax,word [bp-10]
		jb	..@j25929
		jmp	..@j25930
..@j25929:
		cmp	byte [U_$SYSTEM_$$_RETURNNILIFGROWHEAPFAILS],0
		jne	..@j25931
		jmp	..@j25932
..@j25931:
		mov	word [bp-2],0
		jmp	..@j25935
..@j25932:
		mov	ax,0
		push	ax
		mov	ax,203
		push	ax
		call	FPC_HANDLEERROR
..@j25935:
..@j25930:
		mov	bx,word [TC_$SYSTEM_$$_HEAPPTR]
		lea	ax,[bx+2]
		mov	word [bp-2],ax
		mov	bx,word [TC_$SYSTEM_$$_HEAPPTR]
		mov	ax,word [bp+4]
		mov	word [bx],ax
		mov	dx,word [TC_$SYSTEM_$$_HEAPPTR]
		mov	ax,word [bp-10]
		add	ax,dx
		mov	word [TC_$SYSTEM_$$_HEAPPTR],ax
		cmp	word [bp-6],0
		je	..@j25944
		jmp	..@j25945
..@j25944:
		mov	ax,word [TC_$SYSTEM_$$_HEAPPTR]
		mov	word [TC_$SYSTEM_$$_FREELIST],ax
		jmp	..@j25948
..@j25945:
		mov	bx,word [bp-6]
		mov	ax,word [TC_$SYSTEM_$$_HEAPPTR]
		mov	word [bx],ax
..@j25948:
..@j25928:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	FPC_HANDLEERROR
EXTERN	U_$SYSTEM_$$_RETURNNILIFGROWHEAPFAILS
EXTERN	TC_$SYSTEM_$$_HEAPEND
EXTERN	TC_$SYSTEM_$$_HEAPPTR
EXTERN	TC_$SYSTEM_$$_FREELIST
