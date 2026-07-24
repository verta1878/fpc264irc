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
	GLOBAL fpc_dynarray_setlength
fpc_dynarray_setlength:
	GLOBAL FPC_DYNARR_SETLENGTH
FPC_DYNARR_SETLENGTH:
		push	bp
		mov	bp,sp
		sub	sp,24
		mov	bx,word [bp+4]
		cmp	word [bx],0
		jl	..@j13865
		jmp	..@j13866
..@j13865:
		mov	ax,0
		push	ax
		mov	ax,201
		push	ax
		call	SYSTEM_$$_GET_PC_ADDR$$NEARPOINTER
		push	ax
		push	bp
		call	SYSTEM_$$_HANDLEERRORADDRFRAMEIND$LONGINT$NEARPOINTER$POINTER
..@j13866:
		mov	ax,word [bp+8]
		add	ax,2
		mov	bx,word [bp+8]
		mov	dl,byte [bx+1]
		mov	dh,0
		add	dx,ax
		mov	word [bp-20],dx
		mov	ax,word [bp-20]
		mov	word [bp-12],ax
		mov	bx,word [bp-12]
		mov	ax,word [bx]
		mov	word [bp-16],ax
		mov	bx,word [bp-12]
		mov	ax,word [bx+2]
		mov	word [bp-18],ax
		mov	bx,word [bp+4]
		mov	ax,word [bp-16]
		mul	word [bx]
		add	ax,4
		mov	word [bp-6],ax
		mov	byte [bp-13],0
		mov	bx,word [bp+10]
		cmp	word [bx],0
		je	..@j13887
		jmp	..@j13888
..@j13887:
		mov	bx,word [bp+4]
		cmp	word [bx],0
		je	..@j13889
		jmp	..@j13890
..@j13889:
		jmp	..@j13863
..@j13890:
		lea	ax,[bp-10]
		push	ax
		push	word [bp-6]
		call	SYSTEM_$$_GETMEM$POINTER$WORD
		mov	ax,word [bp-10]
		push	ax
		push	word [bp-6]
		mov	ax,0
		push	ax
		call	SYSTEM_$$_FILLCHAR$formal$SMALLINT$BYTE
		mov	byte [bp-13],1
		jmp	..@j13903
..@j13888:
		mov	bx,word [bp+4]
		cmp	word [bx],0
		je	..@j13904
		jmp	..@j13905
..@j13904:
		mov	ax,word [bp+10]
		push	ax
		push	word [bp+8]
		call	FPC_DYNARRAY_CLEAR
		jmp	..@j13863
..@j13905:
		mov	bx,word [bp+10]
		mov	ax,word [bx]
		sub	ax,4
		mov	word [bp-8],ax
		mov	ax,word [bp-8]
		mov	word [bp-10],ax
		mov	bx,word [bp-8]
		cmp	word [bx],1
		jne	..@j13914
		jmp	..@j13915
..@j13914:
		mov	byte [bp-13],1
		lea	ax,[bp-10]
		push	ax
		push	word [bp-6]
		call	SYSTEM_$$_GETMEM$POINTER$WORD
		mov	ax,word [bp-10]
		push	ax
		push	word [bp-6]
		mov	ax,0
		push	ax
		call	SYSTEM_$$_FILLCHAR$formal$SMALLINT$BYTE
		mov	bx,word [bp-8]
		mov	si,word [bp+4]
		mov	ax,word [bx+2]
		cmp	ax,word [si]
		jl	..@j13928
		jmp	..@j13929
..@j13928:
		mov	bx,word [bp-8]
		mov	ax,word [bx+2]
		inc	ax
		mov	word [bp-4],ax
		jmp	..@j13932
..@j13929:
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		mov	word [bp-4],ax
..@j13932:
		mov	bx,word [bp+10]
		mov	ax,word [bx]
		push	ax
		mov	bx,word [bp-10]
		lea	ax,[bx+4]
		push	ax
		mov	ax,word [bp-4]
		mul	word [bp-16]
		push	ax
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
		mov	ax,word [bp-4]
		dec	ax
		mov	word [bp-22],ax
		mov	word [bp-2],0
		mov	ax,word [bp-22]
		cmp	ax,word [bp-2]
		jl	..@j13944
		dec	word [bp-2]
	ALIGN 2
..@j13945:
		inc	word [bp-2]
		mov	ax,word [bp-2]
		mul	word [bp-16]
		mov	dx,word [bp-10]
		add	dx,4
		add	dx,ax
		push	dx
		push	word [bp-18]
		call	FPC_ADDREF
		mov	ax,word [bp-22]
		cmp	ax,word [bp-2]
		jg	..@j13945
..@j13944:
		mov	ax,word [bp+10]
		push	ax
		push	word [bp+8]
		call	FPC_DYNARRAY_CLEAR
		jmp	..@j13954
..@j13915:
		mov	bx,word [bp-8]
		mov	ax,word [bx+2]
		inc	ax
		mov	bx,word [bp+4]
		cmp	ax,word [bx]
		jne	..@j13955
		jmp	..@j13956
..@j13955:
		cmp	word [bp-6],4
		jl	..@j13957
		jmp	..@j13959
..@j13959:
		cmp	word [bp-16],0
		jg	..@j13960
		jmp	..@j13958
..@j13960:
		mov	ax,word [bp-6]
		cmp	ax,word [bp-16]
		jl	..@j13957
		jmp	..@j13958
..@j13957:
		mov	ax,0
		push	ax
		mov	ax,201
		push	ax
		call	SYSTEM_$$_GET_PC_ADDR$$NEARPOINTER
		push	ax
		push	bp
		call	SYSTEM_$$_HANDLEERRORADDRFRAMEIND$LONGINT$NEARPOINTER$POINTER
..@j13958:
		mov	bx,word [bp-8]
		cmp	word [bx],1
		je	..@j13967
		jmp	..@j13968
..@j13967:
		mov	bx,word [bp-8]
		mov	ax,word [bx+2]
		inc	ax
		mov	bx,word [bp+4]
		cmp	ax,word [bx]
		jg	..@j13969
		jmp	..@j13970
..@j13969:
		mov	bx,word [bp+4]
		mov	ax,word [bp-16]
		mul	word [bx]
		mov	dx,word [bp-8]
		add	dx,4
		add	dx,ax
		push	dx
		push	word [bp-18]
		mov	bx,word [bp-8]
		mov	si,word [bp+4]
		mov	ax,word [bx+2]
		mov	dx,word [si]
		sub	ax,dx
		inc	ax
		push	ax
		call	FPC_FINALIZE_ARRAY
		lea	ax,[bp-8]
		push	ax
		push	word [bp-6]
		call	SYSTEM_$$_REALLOCMEM$POINTER$WORD$$POINTER
		jmp	..@j13981
..@j13970:
		mov	bx,word [bp-8]
		mov	ax,word [bx+2]
		inc	ax
		mov	bx,word [bp+4]
		cmp	ax,word [bx]
		jl	..@j13982
		jmp	..@j13983
..@j13982:
		lea	ax,[bp-8]
		push	ax
		push	word [bp-6]
		call	SYSTEM_$$_REALLOCMEM$POINTER$WORD$$POINTER
		mov	bx,word [bp-8]
		mov	dx,word [bx+2]
		inc	dx
		mov	ax,word [bp-16]
		mul	dx
		mov	dx,word [bp-8]
		add	dx,4
		add	dx,ax
		push	dx
		mov	bx,word [bp-8]
		mov	si,word [bp+4]
		mov	ax,word [bx+2]
		mov	dx,word [si]
		sub	dx,ax
		dec	dx
		mov	ax,word [bp-16]
		mul	dx
		push	ax
		mov	ax,0
		push	ax
		call	SYSTEM_$$_FILLCHAR$formal$SMALLINT$BYTE
..@j13983:
..@j13981:
		mov	ax,word [bp-8]
		mov	word [bp-10],ax
		mov	byte [bp-13],1
..@j13968:
..@j13956:
..@j13954:
..@j13903:
		cmp	word [bp+6],1
		jg	..@j13998
		jmp	..@j13999
..@j13998:
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		dec	ax
		mov	word [bp-24],ax
		mov	word [bp-2],0
		mov	ax,word [bp-24]
		cmp	ax,word [bp-2]
		jl	..@j14003
		dec	word [bp-2]
	ALIGN 2
..@j14004:
		inc	word [bp-2]
		mov	ax,word [bp-16]
		mul	word [bp-2]
		mov	dx,word [bp-10]
		add	dx,4
		add	dx,ax
		push	dx
		push	word [bp-18]
		mov	ax,word [bp+6]
		dec	ax
		push	ax
		mov	bx,word [bp+4]
		lea	ax,[bx+2]
		push	ax
		call	FPC_DYNARR_SETLENGTH
		mov	ax,word [bp-24]
		cmp	ax,word [bp-2]
		jg	..@j14004
..@j14003:
..@j13999:
		cmp	byte [bp-13],0
		jne	..@j14013
		jmp	..@j14014
..@j14013:
		mov	ax,word [bp-10]
		add	ax,4
		mov	bx,word [bp+10]
		mov	word [bx],ax
		mov	bx,word [bp-10]
		mov	word [bx],1
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		dec	ax
		mov	bx,word [bp-10]
		mov	word [bx+2],ax
..@j14014:
..@j13863:
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	SYSTEM_$$_REALLOCMEM$POINTER$WORD$$POINTER
EXTERN	FPC_FINALIZE_ARRAY
EXTERN	FPC_ADDREF
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
EXTERN	FPC_DYNARRAY_CLEAR
EXTERN	SYSTEM_$$_FILLCHAR$formal$SMALLINT$BYTE
EXTERN	SYSTEM_$$_GETMEM$POINTER$WORD
EXTERN	SYSTEM_$$_HANDLEERRORADDRFRAMEIND$LONGINT$NEARPOINTER$POINTER
EXTERN	SYSTEM_$$_GET_PC_ADDR$$NEARPOINTER
