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
	GLOBAL SYSUTILS$_$FLOATTOTEXTFMT$crc533E3309_$$_FLOATTOSTR
SYSUTILS$_$FLOATTOTEXTFMT$crc533E3309_$$_FLOATTOSTR:
		push	bp
		mov	bp,sp
		sub	sp,300
		mov	bx,word [bp+4]
		cmp	word [bx-58],0
		je	..@j7746
		jmp	..@j7747
..@j7746:
		mov	bx,word [bp+4]
		mov	si,word [bp+4]
		mov	dx,word [bx-64]
		mov	ax,word [si-62]
		add	ax,dx
		mov	word [bp-10],ax
		mov	bx,word [bp+4]
		mov	si,word [bp+4]
		mov	dx,word [bx-68]
		mov	ax,word [si-66]
		add	ax,dx
		mov	dx,word [bp-10]
		add	dx,ax
		mov	word [bp-8],dx
		cmp	word [bp-10],0
		je	..@j7752
		jmp	..@j7753
..@j7752:
		mov	bx,word [bp+4]
		push	word [bx+16]
		push	word [bx+14]
		push	word [bx+12]
		push	word [bx+10]
		push	word [bx+8]
		push	word [bp-8]
		mov	ax,0
		push	ax
		mov	ax,2
		push	ax
		mov	bx,word [bp+4]
		lea	ax,[bx-43]
		push	ax
		mov	ax,40
		push	ax
		call	fpc_shortstr_float
		jmp	..@j7766
..@j7753:
		mov	bx,word [bp+4]
		wait fldz
		wait fld	tword [bx+8]
		wait fcompp
		fstsw	[bp-16]
		mov	ah,byte [bp-15]
		sahf
		jp	..@j7769
		jae	..@j7767
..@j7769:
		jmp	..@j7768
..@j7767:
		mov	bx,word [bp+4]
		push	word [bx+16]
		push	word [bx+14]
		push	word [bx+12]
		push	word [bx+10]
		push	word [bx+8]
		mov	ax,word [bp-8]
		inc	ax
		push	ax
		push	word [bp-10]
		mov	ax,2
		push	ax
		mov	bx,word [bp+4]
		lea	ax,[bx-43]
		push	ax
		mov	ax,40
		push	ax
		call	fpc_shortstr_float
		jmp	..@j7782
..@j7768:
		mov	bx,word [bp+4]
		push	word [bx+16]
		push	word [bx+14]
		push	word [bx+12]
		push	word [bx+10]
		push	word [bx+8]
		mov	ax,word [bp-8]
		add	ax,2
		push	ax
		push	word [bp-10]
		mov	ax,2
		push	ax
		mov	bx,word [bp+4]
		lea	ax,[bx-43]
		push	ax
		mov	ax,40
		push	ax
		call	fpc_shortstr_float
..@j7782:
..@j7766:
		mov	bx,word [bp+4]
		mov	al,byte [bx-43]
		mov	ah,0
		mov	word [bp-14],ax
		cmp	word [bp-10],0
		je	..@j7797
		jmp	..@j7798
..@j7797:
		mov	ax,word [bp-14]
		inc	ax
		mov	word [bp-12],ax
		jmp	..@j7801
..@j7798:
		mov	ax,word [bp-14]
		mov	dx,word [bp-10]
		sub	ax,dx
		mov	word [bp-12],ax
..@j7801:
		mov	bx,word [bp+4]
		wait fld	tword [bx+8]
		wait fabs
		wait fld1
		wait fcompp
		fstsw	[bp-16]
		mov	ah,byte [bp-15]
		sahf
		jp	..@j7807
		ja	..@j7806
..@j7807:
		jmp	..@j7805
..@j7806:
		mov	bx,word [bp+4]
		cmp	word [bx-66],0
		je	..@j7804
		jmp	..@j7805
..@j7804:
		mov	bx,word [bp+4]
		cmp	word [bx-68],0
		je	..@j7808
		jmp	..@j7809
..@j7808:
		mov	bx,word [bp+4]
		lea	ax,[bx-43]
		push	ax
		mov	ax,40
		push	ax
		mov	ax,word [bp-12]
		dec	ax
		push	ax
		mov	ax,1
		push	ax
		call	SYSTEM_$$_DELETE$OPENSTRING$SMALLINT$SMALLINT
		jmp	..@j7818
..@j7809:
		mov	bx,word [bp+4]
		mov	ax,word [bp-12]
		dec	ax
		mov	byte [bp-300],al
		mov	byte [bp-299],0
		mov	si,word [bp-300]
		mov	byte [bx+si-43],32
..@j7818:
..@j7805:
		mov	ax,word [bp-14]
		mov	word [bp-2],ax
		mov	bx,word [bp+4]
		mov	dx,word [bx-64]
		mov	ax,word [bp-12]
		add	ax,dx
		mov	word [bp-4],ax
		jmp	..@j7826
	ALIGN 2
..@j7825:
		mov	bx,word [bp+4]
		mov	al,byte [bp-2]
		mov	byte [bp-278],al
		mov	byte [bp-277],0
		mov	si,word [bp-278]
		mov	byte [bx+si-43],32
		dec	word [bp-2]
..@j7826:
		mov	ax,word [bp-2]
		cmp	ax,word [bp-4]
		jg	..@j7830
		jmp	..@j7827
..@j7830:
		mov	bx,word [bp+4]
		mov	al,byte [bp-2]
		mov	byte [bp-298],al
		mov	byte [bp-297],0
		mov	si,word [bp-298]
		cmp	byte [bx+si-43],48
		je	..@j7825
		jmp	..@j7827
..@j7827:
		mov	ax,word [bp-12]
		cmp	ax,word [bp-14]
		jl	..@j7833
		jmp	..@j7832
..@j7833:
		mov	bx,word [bp+4]
		mov	ax,word [bp-12]
		inc	ax
		mov	byte [bp-284],al
		mov	byte [bp-283],0
		mov	si,word [bp-284]
		cmp	byte [bx+si-43],32
		je	..@j7831
		jmp	..@j7832
..@j7831:
		mov	bx,word [bp+4]
		mov	al,byte [bp-12]
		mov	byte [bp-282],al
		mov	byte [bp-281],0
		mov	si,word [bp-282]
		mov	byte [bx+si-43],32
..@j7832:
		mov	bx,word [bp+4]
		mov	dx,word [bx-66]
		mov	ax,word [bp-12]
		sub	ax,dx
		mov	word [bp-2],ax
		mov	word [bp-4],0
		jmp	..@j7841
	ALIGN 2
..@j7840:
		mov	bx,word [bp+4]
		mov	al,byte [bp-2]
		mov	byte [bp-280],al
		mov	byte [bp-279],0
		mov	si,word [bp-280]
		cmp	byte [bx+si-43],45
		je	..@j7843
		jmp	..@j7844
..@j7843:
		mov	ax,word [bp-2]
		mov	word [bp-4],ax
..@j7844:
		mov	bx,word [bp+4]
		mov	al,byte [bp-2]
		mov	byte [bp-274],al
		mov	byte [bp-273],0
		mov	si,word [bp-274]
		mov	byte [bx+si-43],48
		inc	word [bp-2]
..@j7841:
		mov	ax,word [bp-2]
		cmp	ax,word [bp-12]
		jl	..@j7849
		jmp	..@j7842
..@j7849:
		mov	bx,word [bp+4]
		mov	al,byte [bp-2]
		mov	byte [bp-288],al
		mov	byte [bp-287],0
		mov	si,word [bp-288]
		mov	al,byte [bx+si-43]
		mov	ah,0
		cmp	ax,32
		je	..@j7850
		cmp	ax,45
		je	..@j7850
..@j7850:
		je	..@j7840
		jmp	..@j7842
..@j7842:
		cmp	word [bp-4],0
		jne	..@j7851
		jmp	..@j7852
..@j7851:
		mov	bx,word [bp+4]
		mov	byte [bx-42],45
..@j7852:
		mov	bx,word [bp+4]
		cmp	byte [bx-42],45
		je	..@j7855
		jmp	..@j7856
..@j7855:
		mov	word [bp-2],1
		jmp	..@j7860
	ALIGN 2
..@j7859:
		inc	word [bp-2]
..@j7860:
		mov	bx,word [bp+4]
		mov	al,byte [bx-43]
		mov	ah,0
		cmp	ax,word [bp-2]
		jge	..@j7862
		jmp	..@j7861
..@j7862:
		mov	bx,word [bp+4]
		mov	al,byte [bp-2]
		mov	byte [bp-290],al
		mov	byte [bp-289],0
		mov	si,word [bp-290]
		mov	al,byte [bx+si-43]
		mov	ah,0
		sub	ax,49
		cmp	ax,9
		jb	..@j7863
..@j7863:
		jnc	..@j7859
		jmp	..@j7861
..@j7861:
		mov	bx,word [bp+4]
		mov	al,byte [bx-43]
		mov	ah,0
		cmp	ax,word [bp-2]
		jl	..@j7864
		jmp	..@j7865
..@j7864:
		mov	bx,word [bp+4]
		lea	ax,[bx-43]
		push	ax
		mov	ax,40
		push	ax
		lea	ax,[bp-272]
		push	ax
		mov	bx,word [bp+4]
		lea	ax,[bx-43]
		push	ax
		mov	ax,2
		push	ax
		mov	bx,word [bp+4]
		mov	al,byte [bx-43]
		mov	ah,0
		push	ax
		call	fpc_shortstr_copy
		lea	ax,[bp-272]
		push	ax
		call	fpc_shortstr_to_shortstr
		dec	word [bp-12]
..@j7865:
..@j7856:
		mov	word [bp-6],0
		jmp	..@j7882
..@j7747:
		mov	bx,word [bp+4]
		mov	si,word [bp+4]
		mov	dx,word [bx-68]
		mov	ax,word [si-66]
		add	ax,dx
		test	ax,ax
		je	..@j7883
		jmp	..@j7884
..@j7883:
		mov	bx,word [bp+4]
		mov	word [bx-68],1
..@j7884:
		mov	bx,word [bp+4]
		mov	si,word [bp+4]
		mov	dx,word [bx-64]
		mov	ax,word [si-62]
		add	ax,dx
		mov	word [bp-10],ax
		mov	bx,word [bp+4]
		mov	si,word [bp+4]
		mov	ax,word [bx-68]
		mov	dx,word [si-66]
		add	dx,ax
		mov	ax,word [bp-10]
		add	ax,dx
		mov	word [bp-8],ax
		mov	bx,word [bp+4]
		push	word [bx+16]
		push	word [bx+14]
		push	word [bx+12]
		push	word [bx+10]
		push	word [bx+8]
		mov	ax,word [bp-8]
		add	ax,8
		push	ax
		mov	ax,-1
		push	ax
		mov	ax,2
		push	ax
		mov	bx,word [bp+4]
		lea	ax,[bx-43]
		push	ax
		mov	ax,40
		push	ax
		call	fpc_shortstr_float
		mov	ax,69
		push	ax
		mov	bx,word [bp+4]
		lea	ax,[bx-43]
		push	ax
		call	SYSTEM_$$_POS$CHAR$SHORTSTRING$$SMALLINT
		mov	word [bp-2],ax
		mov	ax,2
		push	ax
		lea	ax,[bp-270]
		push	ax
		mov	bx,word [bp+4]
		lea	ax,[bx-43]
		push	ax
		mov	ax,word [bp-2]
		inc	ax
		push	ax
		mov	ax,255
		push	ax
		call	fpc_shortstr_copy
		lea	ax,[bp-270]
		push	ax
		lea	ax,[bp-4]
		push	ax
		call	fpc_val_sint_shortstr
		mov	word [bp-6],ax
		mov	bx,word [bp+4]
		mov	si,word [bp+4]
		mov	ax,word [bx-68]
		mov	dx,word [si-66]
		add	dx,ax
		mov	ax,word [bp-6]
		inc	ax
		sub	ax,dx
		mov	word [bp-6],ax
		mov	bx,word [bp+4]
		lea	ax,[bx-43]
		push	ax
		mov	ax,40
		push	ax
		push	word [bp-2]
		mov	ax,255
		push	ax
		call	SYSTEM_$$_DELETE$OPENSTRING$SMALLINT$SMALLINT
		cmp	word [bp-10],0
		je	..@j7937
		jmp	..@j7936
..@j7937:
		mov	bx,word [bp+4]
		mov	si,word [bp+4]
		mov	dx,word [bx-68]
		mov	ax,word [si-66]
		add	ax,dx
		cmp	ax,1
		jle	..@j7935
		jmp	..@j7936
..@j7935:
		mov	bx,word [bp+4]
		cmp	byte [bx-39],53
		jae	..@j7938
		jmp	..@j7939
..@j7938:
		mov	bx,word [bp+4]
		inc	byte [bx-41]
		mov	bx,word [bp+4]
		cmp	byte [bx-41],57
		ja	..@j7940
		jmp	..@j7941
..@j7940:
		mov	bx,word [bp+4]
		mov	byte [bx-41],49
		inc	word [bp-6]
..@j7941:
..@j7939:
		mov	bx,word [bp+4]
		lea	ax,[bx-43]
		push	ax
		mov	ax,40
		push	ax
		mov	ax,3
		push	ax
		mov	ax,2
		push	ax
		call	SYSTEM_$$_DELETE$OPENSTRING$SMALLINT$SMALLINT
		mov	bx,word [bp+4]
		mov	al,byte [bx-43]
		mov	ah,0
		inc	ax
		mov	word [bp-12],ax
		jmp	..@j7954
..@j7936:
		mov	bx,word [bp+4]
		lea	ax,[bx-43]
		push	ax
		mov	ax,40
		push	ax
		mov	ax,3
		push	ax
		mov	ax,1
		push	ax
		call	SYSTEM_$$_DELETE$OPENSTRING$SMALLINT$SMALLINT
		mov	bx,word [bp+4]
		mov	ax,word [bx-68]
		add	ax,2
		mov	bx,word [bp+4]
		mov	dx,word [bx-66]
		add	dx,ax
		mov	word [bp-12],dx
		cmp	word [bp-10],0
		jne	..@j7965
		jmp	..@j7966
..@j7965:
		mov	ax,46
		push	ax
		mov	bx,word [bp+4]
		lea	ax,[bx-43]
		push	ax
		mov	ax,40
		push	ax
		push	word [bp-12]
		call	SYSTEM_$$_INSERT$CHAR$OPENSTRING$SMALLINT
..@j7966:
..@j7954:
		mov	bx,word [bp+4]
		mov	al,byte [bx-43]
		mov	ah,0
		mov	word [bp-2],ax
		mov	bx,word [bp+4]
		mov	dx,word [bx-64]
		mov	ax,word [bp-12]
		add	ax,dx
		mov	word [bp-4],ax
		jmp	..@j7980
	ALIGN 2
..@j7979:
		mov	bx,word [bp+4]
		mov	al,byte [bp-2]
		mov	byte [bp-276],al
		mov	byte [bp-275],0
		mov	si,word [bp-276]
		mov	byte [bx+si-43],32
		dec	word [bp-2]
..@j7980:
		mov	ax,word [bp-2]
		cmp	ax,word [bp-4]
		jg	..@j7984
		jmp	..@j7981
..@j7984:
		mov	bx,word [bp+4]
		mov	al,byte [bp-2]
		mov	byte [bp-294],al
		mov	byte [bp-293],0
		mov	si,word [bp-294]
		cmp	byte [bx+si-43],48
		je	..@j7979
		jmp	..@j7981
..@j7981:
		mov	bx,word [bp+4]
		mov	al,byte [bx-43]
		mov	ah,0
		cmp	ax,word [bp-12]
		jg	..@j7987
		jmp	..@j7986
..@j7987:
		mov	bx,word [bp+4]
		mov	ax,word [bp-12]
		inc	ax
		mov	byte [bp-292],al
		mov	byte [bp-291],0
		mov	si,word [bp-292]
		cmp	byte [bx+si-43],32
		je	..@j7985
		jmp	..@j7986
..@j7985:
		mov	bx,word [bp+4]
		mov	al,byte [bp-12]
		mov	byte [bp-296],al
		mov	byte [bp-295],0
		mov	si,word [bp-296]
		mov	byte [bx+si-43],32
..@j7986:
		mov	bx,word [bp+4]
		cmp	byte [bx-42],32
		je	..@j7990
		jmp	..@j7991
..@j7990:
		mov	bx,word [bp+4]
		lea	ax,[bx-43]
		push	ax
		mov	ax,40
		push	ax
		mov	ax,1
		push	ax
		mov	ax,1
		push	ax
		call	SYSTEM_$$_DELETE$OPENSTRING$SMALLINT$SMALLINT
		dec	word [bp-12]
..@j7991:
		mov	ax,word [bp-6]
		cwd
		mov	di,ax
		mov	si,dx
		mov	cl,15
		sar	si,cl
		mov	di,si
		mov	cx,di
		mov	bx,si
		xor	cx,ax
		xor	bx,dx
		sub	cx,di
		sbb	bx,si
		push	bx
		push	cx
		mov	ax,-1
		push	ax
		mov	bx,word [bp+4]
		lea	ax,[bx-52]
		push	ax
		mov	ax,8
		push	ax
		call	fpc_shortstr_longint
		jmp	..@j8009
	ALIGN 2
..@j8008:
		mov	ax,48
		push	ax
		mov	bx,word [bp+4]
		lea	ax,[bx-52]
		push	ax
		mov	ax,8
		push	ax
		mov	ax,1
		push	ax
		call	SYSTEM_$$_INSERT$CHAR$OPENSTRING$SMALLINT
..@j8009:
		mov	bx,word [bp+4]
		mov	al,byte [bx-52]
		mov	ah,0
		mov	bx,word [bp+4]
		cmp	ax,word [bx-60]
		jl	..@j8008
		jmp	..@j8010
..@j8010:
		cmp	word [bp-6],0
		jge	..@j8019
		jmp	..@j8020
..@j8019:
		mov	bx,word [bp+4]
		mov	ax,word [bx-58]
		cmp	ax,1
		je	..@j8023
		cmp	ax,3
		je	..@j8023
..@j8023:
		je	..@j8021
		jmp	..@j8022
..@j8021:
		mov	ax,43
		push	ax
		mov	bx,word [bp+4]
		lea	ax,[bx-52]
		push	ax
		mov	ax,8
		push	ax
		mov	ax,1
		push	ax
		call	SYSTEM_$$_INSERT$CHAR$OPENSTRING$SMALLINT
..@j8022:
		jmp	..@j8032
..@j8020:
		mov	ax,45
		push	ax
		mov	bx,word [bp+4]
		lea	ax,[bx-52]
		push	ax
		mov	ax,8
		push	ax
		mov	ax,1
		push	ax
		call	SYSTEM_$$_INSERT$CHAR$OPENSTRING$SMALLINT
..@j8032:
		mov	bx,word [bp+4]
		cmp	word [bx-58],3
		jl	..@j8041
		jmp	..@j8042
..@j8041:
		mov	ax,69
		push	ax
		mov	bx,word [bp+4]
		lea	ax,[bx-52]
		push	ax
		mov	ax,8
		push	ax
		mov	ax,1
		push	ax
		call	SYSTEM_$$_INSERT$CHAR$OPENSTRING$SMALLINT
		jmp	..@j8051
..@j8042:
		mov	ax,101
		push	ax
		mov	bx,word [bp+4]
		lea	ax,[bx-52]
		push	ax
		mov	ax,8
		push	ax
		mov	ax,1
		push	ax
		call	SYSTEM_$$_INSERT$CHAR$OPENSTRING$SMALLINT
..@j8051:
..@j7882:
		mov	ax,word [bp-12]
		sub	ax,2
		mov	bx,word [bp+4]
		mov	word [bx-76],ax
		mov	word [bp-2],1
		jmp	..@j8065
	ALIGN 2
..@j8064:
		mov	bx,word [bp+4]
		dec	word [bx-76]
		inc	word [bp-2]
..@j8065:
		mov	bx,word [bp+4]
		mov	al,byte [bx-43]
		mov	ah,0
		cmp	ax,word [bp-2]
		jge	..@j8067
		jmp	..@j8066
..@j8067:
		mov	bx,word [bp+4]
		mov	al,byte [bp-2]
		mov	byte [bp-286],al
		mov	byte [bp-285],0
		mov	si,word [bp-286]
		mov	al,byte [bx+si-43]
		mov	ah,0
		cmp	ax,32
		je	..@j8068
		cmp	ax,45
		je	..@j8068
..@j8068:
		je	..@j8064
		jmp	..@j8066
..@j8066:
		mov	bx,word [bp+4]
		mov	si,word [bp+4]
		mov	dx,word [bx-68]
		mov	ax,word [si-66]
		add	ax,dx
		mov	dx,word [bp-12]
		dec	dx
		sub	dx,ax
		mov	bx,word [bp+4]
		mov	word [bx-72],dx
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	fpc_shortstr_longint
EXTERN	SYSTEM_$$_INSERT$CHAR$OPENSTRING$SMALLINT
EXTERN	fpc_val_sint_shortstr
EXTERN	SYSTEM_$$_POS$CHAR$SHORTSTRING$$SMALLINT
EXTERN	fpc_shortstr_to_shortstr
EXTERN	fpc_shortstr_copy
EXTERN	SYSTEM_$$_DELETE$OPENSTRING$SMALLINT$SMALLINT
EXTERN	fpc_shortstr_float
