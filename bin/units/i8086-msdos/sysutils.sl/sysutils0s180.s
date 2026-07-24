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
	GLOBAL SYSUTILS_$$_FLOATTOSTRFINTL$crcBE2DB201
SYSUTILS_$$_FLOATTOSTRFINTL$crcBE2DB201:
		push	bp
		mov	bp,sp
		sub	sp,346
		mov	word [bp-290],0
		mov	ax,1
		push	ax
		lea	ax,[bp-22]
		push	ax
		lea	ax,[bp-16]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j5685
		mov	bx,word [bp+4]
		mov	al,byte [bx+3]
		mov	byte [bp-10],al
		mov	dx,word [bp+14]
		mov	ax,word [bp+16]
		test	ax,ax
		jne	..@j5696
		test	dx,dx
		je	..@j5691
..@j5696:
		test	ax,ax
		jne	..@j5697
		cmp	dx,1
		je	..@j5692
..@j5697:
		test	ax,ax
		jne	..@j5698
		cmp	dx,2
		je	..@j5693
..@j5698:
		test	ax,ax
		jne	..@j5699
		cmp	dx,3
		je	..@j5694
..@j5699:
		test	ax,ax
		jne	..@j5700
		cmp	dx,4
		je	..@j5695
..@j5700:
		jmp	..@j5690
..@j5691:
		mov	dx,word [bp+6]
		mov	ax,word [bp+8]
		test	ax,ax
		jne	..@j5704
		cmp	dx,1
		je	..@j5703
..@j5704:
		jmp	..@j5702
..@j5703:
		cmp	word [bp+12],-1
		je	..@j5705
		jmp	..@j5707
..@j5707:
		cmp	word [bp+12],19
		jg	..@j5705
		jmp	..@j5706
..@j5705:
		mov	word [bp+12],19
..@j5706:
		jmp	..@j5701
..@j5702:
		cmp	word [bp+12],-1
		je	..@j5710
		jmp	..@j5712
..@j5712:
		cmp	word [bp+12],17
		jg	..@j5710
		jmp	..@j5711
..@j5710:
		mov	word [bp+12],17
..@j5711:
..@j5701:
		mov	dx,word [bp+6]
		mov	ax,word [bp+8]
		test	ax,ax
		jne	..@j5720
		cmp	dx,1
		je	..@j5719
..@j5720:
		test	ax,ax
		jne	..@j5721
		cmp	dx,2
		je	..@j5718
..@j5721:
		test	ax,ax
		jne	..@j5722
		cmp	dx,4
		je	..@j5717
..@j5722:
		jmp	..@j5716
..@j5717:
		mov	bx,word [bp+18]
		wait fld	tword [bx]
		wait fstp	qword [bp-32]
		DB	09bh
		wait fld	qword [bp-32]
		sub	sp,10
		mov	bx,sp
		wait fstp	tword [bx]
		DB	09bh
		mov	ax,word [bp+12]
		add	ax,7
		push	ax
		mov	ax,-1
		push	ax
		mov	ax,1
		push	ax
		mov	ax,word [bp+20]
		mov	word [bp-320],ax
		push	word [bp-320]
		call	fpc_ansistr_decr_ref
		push	word [bp-320]
		mov	ax,0
		push	ax
		call	fpc_ansistr_float
		jmp	..@j5715
..@j5718:
		mov	bx,word [bp+18]
		wait fld	tword [bx]
		wait fstp	dword [bp-28]
		DB	09bh
		wait fld	dword [bp-28]
		sub	sp,10
		mov	bx,sp
		wait fstp	tword [bx]
		DB	09bh
		mov	ax,word [bp+12]
		add	ax,6
		push	ax
		mov	ax,-1
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word [bp+20]
		mov	word [bp-292],ax
		push	word [bp-292]
		call	fpc_ansistr_decr_ref
		push	word [bp-292]
		mov	ax,0
		push	ax
		call	fpc_ansistr_float
		jmp	..@j5715
..@j5719:
		mov	ax,word [bp+20]
		mov	word [bp-346],ax
		mov	ax,word [bp+12]
		add	ax,6
		mov	word [bp-26],ax
		mov	ax,word [bp+18]
		mov	word [bp-334],ax
		mov	bx,word [bp-334]
		push	word [bx+6]
		mov	bx,word [bp-334]
		push	word [bx+4]
		mov	bx,word [bp-334]
		push	word [bx+2]
		mov	bx,word [bp-334]
		push	word [bx]
		push	word [bp-26]
		mov	ax,-1
		push	ax
		lea	ax,[bp-288]
		push	ax
		mov	ax,255
		push	ax
		call	fpc_shortstr_currency
		push	word [bp-346]
		lea	ax,[bp-290]
		push	ax
		lea	ax,[bp-288]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_shortstr_to_ansistr
		push	word [bp-290]
		call	fpc_ansistr_assign
		push	word [bp-346]
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		call	SYSTEM_$$_SETCODEPAGE$RAWBYTESTRING$WORD$BOOLEAN
		jmp	..@j5715
..@j5716:
		mov	bx,word [bp+18]
		push	word [bx+8]
		push	word [bx+6]
		push	word [bx+4]
		push	word [bx+2]
		push	word [bx]
		mov	ax,word [bp+12]
		add	ax,8
		push	ax
		mov	ax,-1
		push	ax
		mov	ax,2
		push	ax
		mov	ax,word [bp+20]
		mov	word [bp-298],ax
		push	word [bp-298]
		call	fpc_ansistr_decr_ref
		push	word [bp-298]
		mov	ax,0
		push	ax
		call	fpc_ansistr_float
..@j5715:
		jmp	..@j5793
	ALIGN 2
..@j5792:
		mov	ax,word [bp+20]
		push	ax
		mov	ax,1
		push	ax
		mov	ax,1
		push	ax
		call	SYSTEM_$$_DELETE$RAWBYTESTRING$SMALLINT$SMALLINT
..@j5793:
		mov	bx,word [bp+20]
		mov	bx,word [bx]
		cmp	byte [bx],32
		je	..@j5792
		jmp	..@j5794
..@j5794:
		mov	ax,46
		push	ax
		mov	bx,word [bp+20]
		push	word [bx]
		call	SYSTEM_$$_POS$CHAR$RAWBYTESTRING$$SMALLINT
		mov	word [bp-2],ax
		cmp	word [bp-2],0
		jne	..@j5807
		jmp	..@j5808
..@j5807:
		mov	ax,word [bp+20]
		push	ax
		call	fpc_ansistr_unique
		mov	bx,ax
		mov	si,word [bp-2]
		mov	al,byte [bp-10]
		mov	byte [bx+si-1],al
		jmp	..@j5813
..@j5808:
		jmp	..@j5685
..@j5813:
		mov	ax,69
		push	ax
		mov	bx,word [bp+20]
		push	word [bx]
		call	SYSTEM_$$_POS$CHAR$RAWBYTESTRING$$SMALLINT
		mov	word [bp-4],ax
		cmp	word [bp-4],0
		jg	..@j5820
		jmp	..@j5821
..@j5820:
		mov	ax,word [bp-4]
		add	ax,2
		mov	word [bp-6],ax
		mov	word [bp-8],0
		jmp	..@j5827
	ALIGN 2
..@j5826:
		mov	ax,10
		mul	word [bp-8]
		mov	bx,word [bp+20]
		mov	bx,word [bx]
		mov	si,word [bp-6]
		mov	dl,byte [bx+si-1]
		mov	dh,0
		add	dx,ax
		sub	dx,48
		mov	word [bp-8],dx
		inc	word [bp-6]
..@j5827:
		mov	bx,word [bp+20]
		mov	bx,word [bx]
		test	bx,bx
		je	..@j5831
		mov	bx,word [bx-2]
..@j5831:
		cmp	bx,word [bp-6]
		jge	..@j5826
		jmp	..@j5828
..@j5828:
		mov	bx,word [bp+20]
		mov	bx,word [bx]
		mov	ax,word [bp-4]
		mov	si,ax
		inc	si
		cmp	byte [bx+si-1],45
		je	..@j5832
		jmp	..@j5833
..@j5832:
		mov	ax,word [bp-8]
		neg	ax
		mov	word [bp-8],ax
..@j5833:
		mov	dx,word [bp-2]
		mov	ax,word [bp-8]
		add	ax,dx
		cmp	ax,word [bp-4]
		jl	..@j5838
		jmp	..@j5837
..@j5838:
		cmp	word [bp-8],-6
		jg	..@j5836
		jmp	..@j5837
..@j5836:
		mov	ax,word [bp+20]
		push	ax
		mov	ax,word [bp-4]
		dec	ax
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_setlength
		cmp	word [bp-8],0
		jge	..@j5845
		jmp	..@j5846
..@j5845:
		mov	ax,word [bp-8]
		dec	ax
		mov	word [bp-324],ax
		mov	word [bp-6],0
		mov	ax,word [bp-324]
		cmp	ax,word [bp-6]
		jl	..@j5850
		dec	word [bp-6]
	ALIGN 2
..@j5851:
		inc	word [bp-6]
		mov	ax,word [bp+20]
		push	ax
		call	fpc_ansistr_unique
		mov	word [bp-322],ax
		mov	di,word [bp-2]
		mov	bx,word [bp+20]
		mov	bx,word [bx]
		mov	ax,word [bp-2]
		mov	si,ax
		inc	si
		mov	al,byte [bx+si-1]
		mov	bx,word [bp-322]
		mov	byte [bx+di-1],al
		inc	word [bp-2]
		mov	ax,word [bp-324]
		cmp	ax,word [bp-6]
		jg	..@j5851
..@j5850:
		mov	ax,word [bp+20]
		push	ax
		call	fpc_ansistr_unique
		mov	bx,ax
		mov	si,word [bp-2]
		mov	al,byte [bp-10]
		mov	byte [bx+si-1],al
		mov	word [bp-2],1
		mov	bx,word [bp+20]
		mov	bx,word [bx]
		mov	si,word [bp-2]
		cmp	byte [bx+si-1],45
		je	..@j5862
		jmp	..@j5863
..@j5862:
		inc	word [bp-2]
..@j5863:
		jmp	..@j5865
	ALIGN 2
..@j5864:
		mov	ax,word [bp+20]
		push	ax
		push	word [bp-2]
		mov	ax,1
		push	ax
		call	SYSTEM_$$_DELETE$RAWBYTESTRING$SMALLINT$SMALLINT
..@j5865:
		mov	bx,word [bp+20]
		mov	bx,word [bx]
		mov	si,word [bp-2]
		cmp	byte [bx+si-1],48
		je	..@j5874
		jmp	..@j5866
..@j5874:
		mov	bx,word [bp+20]
		mov	bx,word [bx]
		test	bx,bx
		je	..@j5875
		mov	bx,word [bx-2]
..@j5875:
		cmp	bx,word [bp-2]
		jg	..@j5873
		jmp	..@j5866
..@j5873:
		mov	bx,word [bp+20]
		mov	bx,word [bx]
		mov	ax,word [bp-2]
		mov	si,ax
		inc	si
		mov	al,byte [bx+si-1]
		cmp	al,byte [bp-10]
		jne	..@j5864
		jmp	..@j5866
..@j5866:
		jmp	..@j5876
..@j5846:
		lea	ax,[bp-290]
		push	ax
		lea	ax,[bp-280]
		push	ax
		mov	ax,word _$SYSUTILS$_Ld627
		push	ax
		mov	ax,1
		push	ax
		mov	ax,word [bp-8]
		neg	ax
		push	ax
		call	fpc_shortstr_copy
		lea	ax,[bp-280]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_shortstr_to_ansistr
		push	word [bp-290]
		mov	ax,word [bp+20]
		push	ax
		mov	ax,word [bp-2]
		dec	ax
		push	ax
		call	SYSTEM_$$_INSERT$RAWBYTESTRING$RAWBYTESTRING$SMALLINT
		mov	ax,word [bp+20]
		push	ax
		call	fpc_ansistr_unique
		mov	word [bp-336],ax
		mov	ax,word [bp-2]
		mov	dx,word [bp-8]
		mov	di,ax
		sub	di,dx
		mov	bx,word [bp+20]
		mov	bx,word [bx]
		mov	ax,word [bp-2]
		mov	dx,word [bp-8]
		sub	ax,dx
		mov	si,ax
		dec	si
		mov	al,byte [bx+si-1]
		mov	bx,word [bp-336]
		mov	byte [bx+di-1],al
		mov	ax,word [bp+20]
		push	ax
		call	fpc_ansistr_unique
		mov	bx,ax
		mov	si,word [bp-2]
		mov	al,byte [bp-10]
		mov	byte [bx+si-1],al
		cmp	word [bp-8],-1
		jne	..@j5905
		jmp	..@j5906
..@j5905:
		mov	ax,word [bp+20]
		push	ax
		call	fpc_ansistr_unique
		mov	bx,ax
		mov	ax,word [bp-2]
		mov	dx,word [bp-8]
		sub	ax,dx
		mov	si,ax
		dec	si
		mov	byte [bx+si-1],48
..@j5906:
..@j5876:
		mov	bx,word [bp+20]
		mov	bx,word [bx]
		test	bx,bx
		je	..@j5913
		mov	bx,word [bx-2]
..@j5913:
		mov	word [bp-6],bx
		jmp	..@j5915
	ALIGN 2
..@j5914:
		dec	word [bp-6]
..@j5915:
		cmp	word [bp-6],0
		jg	..@j5917
		jmp	..@j5916
..@j5917:
		mov	bx,word [bp+20]
		mov	bx,word [bx]
		mov	si,word [bp-6]
		cmp	byte [bx+si-1],48
		je	..@j5914
		jmp	..@j5916
..@j5916:
		mov	bx,word [bp+20]
		mov	bx,word [bx]
		mov	si,word [bp-6]
		mov	al,byte [bx+si-1]
		cmp	al,byte [bp-10]
		je	..@j5918
		jmp	..@j5919
..@j5918:
		dec	word [bp-6]
..@j5919:
		cmp	word [bp-6],0
		je	..@j5920
		jmp	..@j5922
..@j5922:
		cmp	word [bp-6],1
		je	..@j5923
		jmp	..@j5921
..@j5923:
		mov	bx,word [bp+20]
		mov	bx,word [bx]
		cmp	byte [bx],45
		je	..@j5920
		jmp	..@j5921
..@j5920:
		mov	ax,word [bp+20]
		push	ax
		mov	ax,word _$SYSUTILS$_Ld628
		push	ax
		call	fpc_ansistr_assign
		jmp	..@j5928
..@j5921:
		mov	ax,word [bp+20]
		push	ax
		push	word [bp-6]
		mov	ax,0
		push	ax
		call	fpc_ansistr_setlength
..@j5928:
		jmp	..@j5935
..@j5837:
		jmp	..@j5937
	ALIGN 2
..@j5936:
		mov	ax,word [bp+20]
		push	ax
		mov	ax,word [bp-4]
		dec	ax
		push	ax
		mov	ax,1
		push	ax
		call	SYSTEM_$$_DELETE$RAWBYTESTRING$SMALLINT$SMALLINT
		dec	word [bp-4]
..@j5937:
		mov	bx,word [bp+20]
		mov	bx,word [bx]
		mov	ax,word [bp-4]
		mov	si,ax
		dec	si
		cmp	byte [bx+si-1],48
		je	..@j5936
		jmp	..@j5938
..@j5938:
		mov	bx,word [bp+20]
		mov	bx,word [bx]
		mov	ax,word [bp-4]
		mov	si,ax
		dec	si
		mov	al,byte [bx+si-1]
		cmp	al,byte [bp-10]
		je	..@j5945
		jmp	..@j5946
..@j5945:
		mov	ax,word [bp+20]
		push	ax
		mov	ax,word [bp-4]
		dec	ax
		push	ax
		mov	ax,1
		push	ax
		call	SYSTEM_$$_DELETE$RAWBYTESTRING$SMALLINT$SMALLINT
		dec	word [bp-4]
..@j5946:
		mov	bx,word [bp+20]
		mov	bx,word [bx]
		mov	ax,word [bp-4]
		mov	si,ax
		inc	si
		cmp	byte [bx+si-1],43
		je	..@j5953
		jmp	..@j5954
..@j5953:
		mov	ax,word [bp+20]
		push	ax
		mov	ax,word [bp-4]
		inc	ax
		push	ax
		mov	ax,1
		push	ax
		call	SYSTEM_$$_DELETE$RAWBYTESTRING$SMALLINT$SMALLINT
		jmp	..@j5961
..@j5954:
		inc	word [bp-4]
..@j5961:
		jmp	..@j5963
	ALIGN 2
..@j5962:
		mov	ax,word [bp+20]
		push	ax
		mov	ax,word [bp-4]
		inc	ax
		push	ax
		mov	ax,1
		push	ax
		call	SYSTEM_$$_DELETE$RAWBYTESTRING$SMALLINT$SMALLINT
..@j5963:
		mov	bx,word [bp+20]
		mov	bx,word [bx]
		mov	ax,word [bp-4]
		mov	si,ax
		inc	si
		cmp	byte [bx+si-1],48
		je	..@j5962
		jmp	..@j5964
..@j5964:
..@j5935:
..@j5821:
		jmp	..@j5689
..@j5692:
		cmp	word [bp+12],-1
		je	..@j5971
		jmp	..@j5973
..@j5973:
		cmp	word [bp+12],17
		jg	..@j5971
		jmp	..@j5972
..@j5971:
		mov	word [bp+12],17
..@j5972:
		mov	ax,word [bp+6]
		mov	dx,word [bp+8]
		test	dx,dx
		jne	..@j5981
		cmp	ax,1
		je	..@j5980
..@j5981:
		test	dx,dx
		jne	..@j5982
		cmp	ax,2
		je	..@j5979
..@j5982:
		test	dx,dx
		jne	..@j5983
		cmp	ax,4
		je	..@j5978
..@j5983:
		jmp	..@j5977
..@j5978:
		mov	bx,word [bp+18]
		wait fld	tword [bx]
		wait fstp	qword [bp-32]
		DB	09bh
		wait fld	qword [bp-32]
		sub	sp,10
		mov	bx,sp
		wait fstp	tword [bx]
		DB	09bh
		mov	ax,word [bp+12]
		add	ax,7
		push	ax
		mov	ax,-1
		push	ax
		mov	ax,1
		push	ax
		mov	ax,word [bp+20]
		mov	word [bp-312],ax
		push	word [bp-312]
		call	fpc_ansistr_decr_ref
		push	word [bp-312]
		mov	ax,0
		push	ax
		call	fpc_ansistr_float
		jmp	..@j5976
..@j5979:
		mov	bx,word [bp+18]
		wait fld	tword [bx]
		wait fstp	dword [bp-28]
		DB	09bh
		wait fld	dword [bp-28]
		sub	sp,10
		mov	bx,sp
		wait fstp	tword [bx]
		DB	09bh
		mov	ax,word [bp+12]
		add	ax,6
		push	ax
		mov	ax,-1
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word [bp+20]
		mov	word [bp-310],ax
		push	word [bp-310]
		call	fpc_ansistr_decr_ref
		push	word [bp-310]
		mov	ax,0
		push	ax
		call	fpc_ansistr_float
		jmp	..@j5976
..@j5980:
		mov	ax,word [bp+20]
		mov	word [bp-344],ax
		mov	ax,word [bp+12]
		add	ax,6
		mov	word [bp-26],ax
		mov	ax,word [bp+18]
		mov	word [bp-332],ax
		mov	bx,word [bp-332]
		push	word [bx+6]
		mov	bx,word [bp-332]
		push	word [bx+4]
		mov	bx,word [bp-332]
		push	word [bx+2]
		mov	bx,word [bp-332]
		push	word [bx]
		push	word [bp-26]
		mov	ax,-1
		push	ax
		lea	ax,[bp-282]
		push	ax
		mov	ax,255
		push	ax
		call	fpc_shortstr_currency
		push	word [bp-344]
		lea	ax,[bp-290]
		push	ax
		lea	ax,[bp-282]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_shortstr_to_ansistr
		push	word [bp-290]
		call	fpc_ansistr_assign
		push	word [bp-344]
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		call	SYSTEM_$$_SETCODEPAGE$RAWBYTESTRING$WORD$BOOLEAN
		jmp	..@j5976
..@j5977:
		mov	bx,word [bp+18]
		push	word [bx+8]
		push	word [bx+6]
		push	word [bx+4]
		push	word [bx+2]
		push	word [bx]
		mov	ax,word [bp+12]
		add	ax,8
		push	ax
		mov	ax,-1
		push	ax
		mov	ax,2
		push	ax
		mov	ax,word [bp+20]
		mov	word [bp-300],ax
		push	word [bp-300]
		call	fpc_ansistr_decr_ref
		push	word [bp-300]
		mov	ax,0
		push	ax
		call	fpc_ansistr_float
..@j5976:
		jmp	..@j6054
	ALIGN 2
..@j6053:
		mov	ax,word [bp+20]
		push	ax
		mov	ax,1
		push	ax
		mov	ax,1
		push	ax
		call	SYSTEM_$$_DELETE$RAWBYTESTRING$SMALLINT$SMALLINT
..@j6054:
		mov	bx,word [bp+20]
		mov	bx,word [bx]
		cmp	byte [bx],32
		je	..@j6053
		jmp	..@j6055
..@j6055:
		mov	bx,word [bp+20]
		mov	bx,word [bx]
		cmp	byte [bx],45
		je	..@j6064
		jmp	..@j6063
..@j6064:
		mov	bx,word [bp+20]
		mov	bx,word [bx]
		cmp	byte [bx+2],46
		je	..@j6062
		jmp	..@j6063
..@j6062:
		mov	ax,word [bp+20]
		push	ax
		call	fpc_ansistr_unique
		mov	bx,ax
		mov	al,byte [bp-10]
		mov	byte [bx+2],al
		jmp	..@j6069
..@j6063:
		mov	bx,word [bp+20]
		mov	bx,word [bx]
		cmp	byte [bx+1],46
		je	..@j6070
		jmp	..@j6071
..@j6070:
		mov	ax,word [bp+20]
		push	ax
		call	fpc_ansistr_unique
		mov	bx,ax
		mov	al,byte [bp-10]
		mov	byte [bx+1],al
..@j6071:
..@j6069:
		mov	ax,69
		push	ax
		mov	bx,word [bp+20]
		push	word [bx]
		call	SYSTEM_$$_POS$CHAR$RAWBYTESTRING$$SMALLINT
		mov	word [bp-2],ax
		cmp	word [bp-2],0
		jne	..@j6082
		jmp	..@j6083
..@j6082:
		add	word [bp-2],2
		cmp	word [bp+10],4
		jg	..@j6084
		jmp	..@j6085
..@j6084:
		mov	word [bp+10],4
..@j6085:
		mov	bx,word [bp+20]
		mov	bx,word [bx]
		test	bx,bx
		je	..@j6090
		mov	bx,word [bx-2]
..@j6090:
		mov	ax,word [bp-2]
		sub	bx,ax
		mov	ax,word [bp+10]
		sub	bx,ax
		inc	bx
		mov	word [bp+10],bx
		cmp	word [bp+10],0
		jl	..@j6091
		jmp	..@j6092
..@j6091:
		lea	ax,[bp-290]
		push	ax
		lea	ax,[bp-280]
		push	ax
		mov	ax,word _$SYSUTILS$_Ld629
		push	ax
		mov	ax,1
		push	ax
		mov	ax,word [bp+10]
		neg	ax
		push	ax
		call	fpc_shortstr_copy
		lea	ax,[bp-280]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_shortstr_to_ansistr
		push	word [bp-290]
		mov	ax,word [bp+20]
		push	ax
		push	word [bp-2]
		call	SYSTEM_$$_INSERT$RAWBYTESTRING$RAWBYTESTRING$SMALLINT
		jmp	..@j6113
..@j6092:
		jmp	..@j6115
	ALIGN 2
..@j6114:
		mov	ax,word [bp+20]
		push	ax
		push	word [bp-2]
		mov	ax,1
		push	ax
		call	SYSTEM_$$_DELETE$RAWBYTESTRING$SMALLINT$SMALLINT
		mov	bx,word [bp+20]
		mov	bx,word [bx]
		test	bx,bx
		je	..@j6125
		mov	bx,word [bx-2]
..@j6125:
		cmp	bx,word [bp-2]
		jl	..@j6123
		jmp	..@j6124
..@j6123:
		mov	ax,word [bp+20]
		push	ax
		mov	ax,word [bp-2]
		sub	ax,2
		push	ax
		mov	ax,2
		push	ax
		call	SYSTEM_$$_DELETE$RAWBYTESTRING$SMALLINT$SMALLINT
		jmp	..@j6116
..@j6124:
		dec	word [bp+10]
..@j6115:
		cmp	word [bp+10],0
		jg	..@j6132
		jmp	..@j6116
..@j6132:
		mov	bx,word [bp+20]
		mov	bx,word [bx]
		mov	si,word [bp-2]
		cmp	byte [bx+si-1],48
		je	..@j6114
		jmp	..@j6116
..@j6116:
..@j6113:
..@j6083:
		jmp	..@j5689
..@j5693:
		cmp	word [bp+10],-1
		je	..@j6133
		jmp	..@j6134
..@j6133:
		mov	word [bp+10],2
		jmp	..@j6137
..@j6134:
		cmp	word [bp+10],18
		jg	..@j6138
		jmp	..@j6139
..@j6138:
		mov	word [bp+10],18
..@j6139:
..@j6137:
		mov	ax,word [bp+6]
		mov	dx,word [bp+8]
		test	dx,dx
		jne	..@j6147
		cmp	ax,1
		je	..@j6146
..@j6147:
		test	dx,dx
		jne	..@j6148
		cmp	ax,2
		je	..@j6145
..@j6148:
		test	dx,dx
		jne	..@j6149
		cmp	ax,4
		je	..@j6144
..@j6149:
		jmp	..@j6143
..@j6144:
		mov	bx,word [bp+18]
		wait fld	tword [bx]
		wait fstp	qword [bp-32]
		DB	09bh
		wait fld	qword [bp-32]
		sub	sp,10
		mov	bx,sp
		wait fstp	tword [bx]
		DB	09bh
		mov	ax,0
		push	ax
		push	word [bp+10]
		mov	ax,1
		push	ax
		mov	ax,word [bp+20]
		mov	word [bp-308],ax
		push	word [bp-308]
		call	fpc_ansistr_decr_ref
		push	word [bp-308]
		mov	ax,0
		push	ax
		call	fpc_ansistr_float
		jmp	..@j6142
..@j6145:
		mov	bx,word [bp+18]
		wait fld	tword [bx]
		wait fstp	dword [bp-28]
		DB	09bh
		wait fld	dword [bp-28]
		sub	sp,10
		mov	bx,sp
		wait fstp	tword [bx]
		DB	09bh
		mov	ax,0
		push	ax
		push	word [bp+10]
		mov	ax,0
		push	ax
		mov	ax,word [bp+20]
		mov	word [bp-294],ax
		push	word [bp-294]
		call	fpc_ansistr_decr_ref
		push	word [bp-294]
		mov	ax,0
		push	ax
		call	fpc_ansistr_float
		jmp	..@j6142
..@j6146:
		mov	ax,word [bp+20]
		mov	word [bp-342],ax
		mov	ax,word [bp+18]
		mov	word [bp-330],ax
		mov	bx,word [bp-330]
		push	word [bx+6]
		mov	bx,word [bp-330]
		push	word [bx+4]
		mov	bx,word [bp-330]
		push	word [bx+2]
		mov	bx,word [bp-330]
		push	word [bx]
		mov	ax,0
		push	ax
		push	word [bp+10]
		lea	ax,[bp-280]
		push	ax
		mov	ax,255
		push	ax
		call	fpc_shortstr_currency
		push	word [bp-342]
		lea	ax,[bp-290]
		push	ax
		lea	ax,[bp-280]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_shortstr_to_ansistr
		push	word [bp-290]
		call	fpc_ansistr_assign
		push	word [bp-342]
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		call	SYSTEM_$$_SETCODEPAGE$RAWBYTESTRING$WORD$BOOLEAN
		jmp	..@j6142
..@j6143:
		mov	bx,word [bp+18]
		push	word [bx+8]
		push	word [bx+6]
		push	word [bx+4]
		push	word [bx+2]
		push	word [bx]
		mov	ax,0
		push	ax
		push	word [bp+10]
		mov	ax,2
		push	ax
		mov	ax,word [bp+20]
		mov	word [bp-302],ax
		push	word [bp-302]
		call	fpc_ansistr_decr_ref
		push	word [bp-302]
		mov	ax,0
		push	ax
		call	fpc_ansistr_float
..@j6142:
		mov	bx,word [bp+20]
		mov	bx,word [bx]
		cmp	byte [bx],32
		je	..@j6217
		jmp	..@j6218
..@j6217:
		mov	ax,word [bp+20]
		push	ax
		mov	ax,1
		push	ax
		mov	ax,1
		push	ax
		call	SYSTEM_$$_DELETE$RAWBYTESTRING$SMALLINT$SMALLINT
..@j6218:
		mov	ax,46
		push	ax
		mov	bx,word [bp+20]
		push	word [bx]
		call	SYSTEM_$$_POS$CHAR$RAWBYTESTRING$$SMALLINT
		mov	word [bp-2],ax
		cmp	word [bp-2],0
		jne	..@j6231
		jmp	..@j6232
..@j6231:
		mov	ax,word [bp+20]
		push	ax
		call	fpc_ansistr_unique
		mov	bx,ax
		mov	si,word [bp-2]
		mov	al,byte [bp-10]
		mov	byte [bx+si-1],al
..@j6232:
		jmp	..@j5689
..@j5694:
		cmp	word [bp+10],-1
		je	..@j6237
		jmp	..@j6238
..@j6237:
		mov	word [bp+10],2
		jmp	..@j6241
..@j6238:
		cmp	word [bp+10],17
		jg	..@j6242
		jmp	..@j6243
..@j6242:
		mov	word [bp+10],17
..@j6243:
..@j6241:
		mov	ax,word [bp+6]
		mov	dx,word [bp+8]
		test	dx,dx
		jne	..@j6251
		cmp	ax,1
		je	..@j6250
..@j6251:
		test	dx,dx
		jne	..@j6252
		cmp	ax,2
		je	..@j6249
..@j6252:
		test	dx,dx
		jne	..@j6253
		cmp	ax,4
		je	..@j6248
..@j6253:
		jmp	..@j6247
..@j6248:
		mov	bx,word [bp+18]
		wait fld	tword [bx]
		wait fstp	qword [bp-32]
		DB	09bh
		wait fld	qword [bp-32]
		sub	sp,10
		mov	bx,sp
		wait fstp	tword [bx]
		DB	09bh
		mov	ax,0
		push	ax
		push	word [bp+10]
		mov	ax,1
		push	ax
		mov	ax,word [bp+20]
		mov	word [bp-314],ax
		push	word [bp-314]
		call	fpc_ansistr_decr_ref
		push	word [bp-314]
		mov	ax,0
		push	ax
		call	fpc_ansistr_float
		jmp	..@j6246
..@j6249:
		mov	bx,word [bp+18]
		wait fld	tword [bx]
		wait fstp	dword [bp-28]
		DB	09bh
		wait fld	dword [bp-28]
		sub	sp,10
		mov	bx,sp
		wait fstp	tword [bx]
		DB	09bh
		mov	ax,0
		push	ax
		push	word [bp+10]
		mov	ax,0
		push	ax
		mov	ax,word [bp+20]
		mov	word [bp-304],ax
		push	word [bp-304]
		call	fpc_ansistr_decr_ref
		push	word [bp-304]
		mov	ax,0
		push	ax
		call	fpc_ansistr_float
		jmp	..@j6246
..@j6250:
		mov	ax,word [bp+20]
		mov	word [bp-340],ax
		mov	ax,word [bp+18]
		mov	word [bp-326],ax
		mov	bx,word [bp-326]
		push	word [bx+6]
		mov	bx,word [bp-326]
		push	word [bx+4]
		mov	bx,word [bp-326]
		push	word [bx+2]
		mov	bx,word [bp-326]
		push	word [bx]
		mov	ax,0
		push	ax
		push	word [bp+10]
		lea	ax,[bp-280]
		push	ax
		mov	ax,255
		push	ax
		call	fpc_shortstr_currency
		push	word [bp-340]
		lea	ax,[bp-290]
		push	ax
		lea	ax,[bp-280]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_shortstr_to_ansistr
		push	word [bp-290]
		call	fpc_ansistr_assign
		push	word [bp-340]
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		call	SYSTEM_$$_SETCODEPAGE$RAWBYTESTRING$WORD$BOOLEAN
		jmp	..@j6246
..@j6247:
		mov	bx,word [bp+18]
		push	word [bx+8]
		push	word [bx+6]
		push	word [bx+4]
		push	word [bx+2]
		push	word [bx]
		mov	ax,0
		push	ax
		push	word [bp+10]
		mov	ax,2
		push	ax
		mov	ax,word [bp+20]
		mov	word [bp-306],ax
		push	word [bp-306]
		call	fpc_ansistr_decr_ref
		push	word [bp-306]
		mov	ax,0
		push	ax
		call	fpc_ansistr_float
..@j6246:
		mov	bx,word [bp+20]
		mov	bx,word [bx]
		cmp	byte [bx],32
		je	..@j6321
		jmp	..@j6322
..@j6321:
		mov	ax,word [bp+20]
		push	ax
		mov	ax,1
		push	ax
		mov	ax,1
		push	ax
		call	SYSTEM_$$_DELETE$RAWBYTESTRING$SMALLINT$SMALLINT
..@j6322:
		mov	ax,46
		push	ax
		mov	bx,word [bp+20]
		push	word [bx]
		call	SYSTEM_$$_POS$CHAR$RAWBYTESTRING$$SMALLINT
		mov	word [bp-2],ax
		cmp	word [bp-2],0
		jne	..@j6335
		jmp	..@j6336
..@j6335:
		mov	ax,word [bp+20]
		push	ax
		call	fpc_ansistr_unique
		mov	bx,ax
		mov	si,word [bp-2]
		mov	al,byte [bp-10]
		mov	byte [bx+si-1],al
		jmp	..@j6341
..@j6336:
		mov	bx,word [bp+20]
		mov	bx,word [bx]
		test	bx,bx
		je	..@j6344
		mov	bx,word [bx-2]
..@j6344:
		inc	bx
		mov	word [bp-2],bx
..@j6341:
		sub	word [bp-2],3
		jmp	..@j6346
	ALIGN 2
..@j6345:
		mov	bx,word [bp+20]
		mov	bx,word [bx]
		mov	ax,word [bp-2]
		mov	si,ax
		dec	si
		cmp	byte [bx+si-1],45
		jne	..@j6350
		jmp	..@j6349
..@j6350:
		mov	bx,word [bp+4]
		cmp	byte [bx+2],0
		jne	..@j6348
		jmp	..@j6349
..@j6348:
		lea	ax,[bp-290]
		push	ax
		mov	bx,word [bp+4]
		mov	al,byte [bx+2]
		mov	ah,0
		push	ax
		mov	ax,0
		push	ax
		call	fpc_char_to_ansistr
		push	word [bp-290]
		mov	ax,word [bp+20]
		push	ax
		push	word [bp-2]
		call	SYSTEM_$$_INSERT$RAWBYTESTRING$RAWBYTESTRING$SMALLINT
..@j6349:
		sub	word [bp-2],3
..@j6346:
		cmp	word [bp-2],1
		jg	..@j6345
		jmp	..@j6347
..@j6347:
		jmp	..@j5689
..@j5695:
		cmp	word [bp+10],-1
		je	..@j6363
		jmp	..@j6364
..@j6363:
		mov	bx,word [bp+4]
		mov	al,byte [bx+4]
		mov	ah,0
		mov	word [bp+10],ax
		jmp	..@j6367
..@j6364:
		cmp	word [bp+10],18
		jg	..@j6368
		jmp	..@j6369
..@j6368:
		mov	word [bp+10],18
..@j6369:
..@j6367:
		mov	ax,word [bp+6]
		mov	dx,word [bp+8]
		test	dx,dx
		jne	..@j6377
		cmp	ax,1
		je	..@j6376
..@j6377:
		test	dx,dx
		jne	..@j6378
		cmp	ax,2
		je	..@j6375
..@j6378:
		test	dx,dx
		jne	..@j6379
		cmp	ax,4
		je	..@j6374
..@j6379:
		jmp	..@j6373
..@j6374:
		mov	bx,word [bp+18]
		wait fld	tword [bx]
		wait fstp	qword [bp-32]
		DB	09bh
		wait fld	qword [bp-32]
		sub	sp,10
		mov	bx,sp
		wait fstp	tword [bx]
		DB	09bh
		mov	ax,0
		push	ax
		push	word [bp+10]
		mov	ax,1
		push	ax
		mov	ax,word [bp+20]
		mov	word [bp-296],ax
		push	word [bp-296]
		call	fpc_ansistr_decr_ref
		push	word [bp-296]
		mov	ax,0
		push	ax
		call	fpc_ansistr_float
		jmp	..@j6372
..@j6375:
		mov	bx,word [bp+18]
		wait fld	tword [bx]
		wait fstp	dword [bp-28]
		DB	09bh
		wait fld	dword [bp-28]
		sub	sp,10
		mov	bx,sp
		wait fstp	tword [bx]
		DB	09bh
		mov	ax,0
		push	ax
		push	word [bp+10]
		mov	ax,0
		push	ax
		mov	ax,word [bp+20]
		mov	word [bp-318],ax
		push	word [bp-318]
		call	fpc_ansistr_decr_ref
		push	word [bp-318]
		mov	ax,0
		push	ax
		call	fpc_ansistr_float
		jmp	..@j6372
..@j6376:
		mov	ax,word [bp+20]
		mov	word [bp-338],ax
		mov	ax,word [bp+18]
		mov	word [bp-328],ax
		mov	bx,word [bp-328]
		push	word [bx+6]
		mov	bx,word [bp-328]
		push	word [bx+4]
		mov	bx,word [bp-328]
		push	word [bx+2]
		mov	bx,word [bp-328]
		push	word [bx]
		mov	ax,0
		push	ax
		push	word [bp+10]
		lea	ax,[bp-280]
		push	ax
		mov	ax,255
		push	ax
		call	fpc_shortstr_currency
		push	word [bp-338]
		lea	ax,[bp-290]
		push	ax
		lea	ax,[bp-280]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_shortstr_to_ansistr
		push	word [bp-290]
		call	fpc_ansistr_assign
		push	word [bp-338]
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		call	SYSTEM_$$_SETCODEPAGE$RAWBYTESTRING$WORD$BOOLEAN
		jmp	..@j6372
..@j6373:
		mov	bx,word [bp+18]
		push	word [bx+8]
		push	word [bx+6]
		push	word [bx+4]
		push	word [bx+2]
		push	word [bx]
		mov	ax,0
		push	ax
		push	word [bp+10]
		mov	ax,2
		push	ax
		mov	ax,word [bp+20]
		mov	word [bp-316],ax
		push	word [bp-316]
		call	fpc_ansistr_decr_ref
		push	word [bp-316]
		mov	ax,0
		push	ax
		call	fpc_ansistr_float
..@j6372:
		mov	bx,word [bp+20]
		mov	bx,word [bx]
		cmp	byte [bx],45
		mov	al,0
		jne	..@j6449
		inc	ax
..@j6449:
		mov	byte [bp-9],al
		cmp	byte [bp-9],0
		jne	..@j6450
		jmp	..@j6451
..@j6450:
		mov	ax,word [bp+20]
		push	ax
		mov	ax,1
		push	ax
		mov	ax,1
		push	ax
		call	SYSTEM_$$_DELETE$RAWBYTESTRING$SMALLINT$SMALLINT
..@j6451:
		mov	ax,46
		push	ax
		mov	bx,word [bp+20]
		push	word [bx]
		call	SYSTEM_$$_POS$CHAR$RAWBYTESTRING$$SMALLINT
		mov	word [bp-2],ax
		cmp	word [bp-2],0
		jne	..@j6464
		jmp	..@j6465
..@j6464:
		mov	ax,word [bp+20]
		push	ax
		call	fpc_ansistr_unique
		mov	bx,ax
		mov	si,word [bp-2]
		mov	al,byte [bp-10]
		mov	byte [bx+si-1],al
		jmp	..@j6470
..@j6465:
		mov	bx,word [bp+20]
		mov	bx,word [bx]
		test	bx,bx
		je	..@j6473
		mov	bx,word [bx-2]
..@j6473:
		inc	bx
		mov	word [bp-2],bx
..@j6470:
		sub	word [bp-2],3
		jmp	..@j6475
	ALIGN 2
..@j6474:
		mov	bx,word [bp+4]
		cmp	byte [bx+2],0
		jne	..@j6477
		jmp	..@j6478
..@j6477:
		lea	ax,[bp-290]
		push	ax
		mov	bx,word [bp+4]
		mov	al,byte [bx+2]
		mov	ah,0
		push	ax
		mov	ax,0
		push	ax
		call	fpc_char_to_ansistr
		push	word [bp-290]
		mov	ax,word [bp+20]
		push	ax
		push	word [bp-2]
		call	SYSTEM_$$_INSERT$RAWBYTESTRING$RAWBYTESTRING$SMALLINT
..@j6478:
		sub	word [bp-2],3
..@j6475:
		cmp	word [bp-2],1
		jg	..@j6474
		jmp	..@j6476
..@j6476:
		mov	bx,word [bp+20]
		mov	bx,word [bx]
		test	bx,bx
		je	..@j6494
		mov	bx,word [bx-2]
..@j6494:
		cmp	bx,1
		jg	..@j6493
		jmp	..@j6492
..@j6493:
		cmp	byte [bp-9],0
		jne	..@j6491
		jmp	..@j6492
..@j6491:
		push	bp
		mov	ax,word [bp+20]
		push	ax
		call	SYSUTILS$_$FLOATTOSTRFINTL$crcBE2DB201_$$_REMOVELEADINGNEGATIVESIGN$ANSISTRING$$BOOLEAN
		test	al,al
		mov	al,0
		jne	..@j6501
		inc	ax
..@j6501:
		mov	byte [bp-9],al
..@j6492:
		cmp	byte [bp-9],0
		je	..@j6502
		jmp	..@j6503
..@j6502:
		mov	bx,word [bp+4]
		mov	al,byte [bx]
		test	al,al
		je	..@j6506
		dec	al
		je	..@j6507
		dec	al
		je	..@j6508
		dec	al
		je	..@j6509
		jmp	..@j6505
..@j6506:
		mov	ax,word [bp+20]
		push	ax
		mov	bx,word [bp+4]
		push	word [bx+8]
		mov	bx,word [bp+20]
		push	word [bx]
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat
		jmp	..@j6504
..@j6507:
		mov	ax,word [bp+20]
		push	ax
		mov	bx,word [bp+20]
		push	word [bx]
		mov	bx,word [bp+4]
		push	word [bx+8]
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat
		jmp	..@j6504
..@j6508:
		mov	ax,word [bp+20]
		push	ax
		mov	bx,word [bp+4]
		mov	ax,word [bx+8]
		mov	word [bp-30],ax
		mov	ax,word _$SYSUTILS$_Ld630
		mov	word [bp-28],ax
		mov	bx,word [bp+20]
		mov	ax,word [bx]
		mov	word [bp-26],ax
		lea	ax,[bp-30]
		push	ax
		mov	ax,2
		push	ax
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat_multi
		jmp	..@j6504
..@j6509:
		mov	ax,word [bp+20]
		push	ax
		mov	bx,word [bp+20]
		mov	ax,word [bx]
		mov	word [bp-30],ax
		mov	ax,word _$SYSUTILS$_Ld630
		mov	word [bp-28],ax
		mov	bx,word [bp+4]
		mov	ax,word [bx+8]
		mov	word [bp-26],ax
		lea	ax,[bp-30]
		push	ax
		mov	ax,2
		push	ax
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat_multi
		jmp	..@j6504
..@j6505:
..@j6504:
		jmp	..@j6542
..@j6503:
		mov	bx,word [bp+4]
		mov	al,byte [bx+1]
		test	al,al
		je	..@j6545
		dec	al
		je	..@j6546
		dec	al
		je	..@j6547
		dec	al
		je	..@j6548
		dec	al
		je	..@j6549
		dec	al
		je	..@j6550
		dec	al
		je	..@j6551
		dec	al
		je	..@j6552
		dec	al
		je	..@j6553
		dec	al
		je	..@j6554
		dec	al
		je	..@j6555
		dec	al
		je	..@j6556
		dec	al
		je	..@j6557
		dec	al
		je	..@j6558
		dec	al
		je	..@j6559
		dec	al
		je	..@j6560
		jmp	..@j6544
..@j6545:
		mov	ax,word [bp+20]
		push	ax
		mov	ax,word _$SYSUTILS$_Ld631
		mov	word [bp-32],ax
		mov	bx,word [bp+4]
		mov	ax,word [bx+8]
		mov	word [bp-30],ax
		mov	bx,word [bp+20]
		mov	ax,word [bx]
		mov	word [bp-28],ax
		mov	ax,word _$SYSUTILS$_Ld632
		mov	word [bp-26],ax
		lea	ax,[bp-32]
		push	ax
		mov	ax,3
		push	ax
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat_multi
		jmp	..@j6543
..@j6546:
		mov	ax,word [bp+20]
		push	ax
		mov	ax,word _$SYSUTILS$_Ld633
		mov	word [bp-30],ax
		mov	bx,word [bp+4]
		mov	ax,word [bx+8]
		mov	word [bp-28],ax
		mov	bx,word [bp+20]
		mov	ax,word [bx]
		mov	word [bp-26],ax
		lea	ax,[bp-30]
		push	ax
		mov	ax,2
		push	ax
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat_multi
		jmp	..@j6543
..@j6547:
		mov	ax,word [bp+20]
		push	ax
		mov	bx,word [bp+4]
		mov	ax,word [bx+8]
		mov	word [bp-30],ax
		mov	ax,word _$SYSUTILS$_Ld633
		mov	word [bp-28],ax
		mov	bx,word [bp+20]
		mov	ax,word [bx]
		mov	word [bp-26],ax
		lea	ax,[bp-30]
		push	ax
		mov	ax,2
		push	ax
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat_multi
		jmp	..@j6543
..@j6548:
		mov	ax,word [bp+20]
		push	ax
		mov	bx,word [bp+4]
		mov	ax,word [bx+8]
		mov	word [bp-30],ax
		mov	bx,word [bp+20]
		mov	ax,word [bx]
		mov	word [bp-28],ax
		mov	ax,word _$SYSUTILS$_Ld633
		mov	word [bp-26],ax
		lea	ax,[bp-30]
		push	ax
		mov	ax,2
		push	ax
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat_multi
		jmp	..@j6543
..@j6549:
		mov	ax,word [bp+20]
		push	ax
		mov	ax,word _$SYSUTILS$_Ld631
		mov	word [bp-32],ax
		mov	bx,word [bp+20]
		mov	ax,word [bx]
		mov	word [bp-30],ax
		mov	bx,word [bp+4]
		mov	ax,word [bx+8]
		mov	word [bp-28],ax
		mov	ax,word _$SYSUTILS$_Ld632
		mov	word [bp-26],ax
		lea	ax,[bp-32]
		push	ax
		mov	ax,3
		push	ax
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat_multi
		jmp	..@j6543
..@j6550:
		mov	ax,word [bp+20]
		push	ax
		mov	ax,word _$SYSUTILS$_Ld633
		mov	word [bp-30],ax
		mov	bx,word [bp+20]
		mov	ax,word [bx]
		mov	word [bp-28],ax
		mov	bx,word [bp+4]
		mov	ax,word [bx+8]
		mov	word [bp-26],ax
		lea	ax,[bp-30]
		push	ax
		mov	ax,2
		push	ax
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat_multi
		jmp	..@j6543
..@j6551:
		mov	ax,word [bp+20]
		push	ax
		mov	bx,word [bp+20]
		mov	ax,word [bx]
		mov	word [bp-30],ax
		mov	ax,word _$SYSUTILS$_Ld633
		mov	word [bp-28],ax
		mov	bx,word [bp+4]
		mov	ax,word [bx+8]
		mov	word [bp-26],ax
		lea	ax,[bp-30]
		push	ax
		mov	ax,2
		push	ax
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat_multi
		jmp	..@j6543
..@j6552:
		mov	ax,word [bp+20]
		push	ax
		mov	bx,word [bp+20]
		mov	ax,word [bx]
		mov	word [bp-30],ax
		mov	bx,word [bp+4]
		mov	ax,word [bx+8]
		mov	word [bp-28],ax
		mov	ax,word _$SYSUTILS$_Ld633
		mov	word [bp-26],ax
		lea	ax,[bp-30]
		push	ax
		mov	ax,2
		push	ax
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat_multi
		jmp	..@j6543
..@j6553:
		mov	ax,word [bp+20]
		push	ax
		mov	ax,word _$SYSUTILS$_Ld633
		mov	word [bp-32],ax
		mov	bx,word [bp+20]
		mov	ax,word [bx]
		mov	word [bp-30],ax
		mov	ax,word _$SYSUTILS$_Ld630
		mov	word [bp-28],ax
		mov	bx,word [bp+4]
		mov	ax,word [bx+8]
		mov	word [bp-26],ax
		lea	ax,[bp-32]
		push	ax
		mov	ax,3
		push	ax
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat_multi
		jmp	..@j6543
..@j6554:
		mov	ax,word [bp+20]
		push	ax
		mov	ax,word _$SYSUTILS$_Ld633
		mov	word [bp-32],ax
		mov	bx,word [bp+4]
		mov	ax,word [bx+8]
		mov	word [bp-30],ax
		mov	ax,word _$SYSUTILS$_Ld630
		mov	word [bp-28],ax
		mov	bx,word [bp+20]
		mov	ax,word [bx]
		mov	word [bp-26],ax
		lea	ax,[bp-32]
		push	ax
		mov	ax,3
		push	ax
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat_multi
		jmp	..@j6543
..@j6555:
		mov	ax,word [bp+20]
		push	ax
		mov	bx,word [bp+20]
		mov	ax,word [bx]
		mov	word [bp-32],ax
		mov	ax,word _$SYSUTILS$_Ld630
		mov	word [bp-30],ax
		mov	bx,word [bp+4]
		mov	ax,word [bx+8]
		mov	word [bp-28],ax
		mov	ax,word _$SYSUTILS$_Ld633
		mov	word [bp-26],ax
		lea	ax,[bp-32]
		push	ax
		mov	ax,3
		push	ax
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat_multi
		jmp	..@j6543
..@j6556:
		mov	ax,word [bp+20]
		push	ax
		mov	bx,word [bp+4]
		mov	ax,word [bx+8]
		mov	word [bp-32],ax
		mov	ax,word _$SYSUTILS$_Ld630
		mov	word [bp-30],ax
		mov	bx,word [bp+20]
		mov	ax,word [bx]
		mov	word [bp-28],ax
		mov	ax,word _$SYSUTILS$_Ld633
		mov	word [bp-26],ax
		lea	ax,[bp-32]
		push	ax
		mov	ax,3
		push	ax
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat_multi
		jmp	..@j6543
..@j6557:
		mov	ax,word [bp+20]
		push	ax
		mov	bx,word [bp+4]
		mov	ax,word [bx+8]
		mov	word [bp-32],ax
		mov	ax,word _$SYSUTILS$_Ld630
		mov	word [bp-30],ax
		mov	ax,word _$SYSUTILS$_Ld633
		mov	word [bp-28],ax
		mov	bx,word [bp+20]
		mov	ax,word [bx]
		mov	word [bp-26],ax
		lea	ax,[bp-32]
		push	ax
		mov	ax,3
		push	ax
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat_multi
		jmp	..@j6543
..@j6558:
		mov	ax,word [bp+20]
		push	ax
		mov	bx,word [bp+20]
		mov	ax,word [bx]
		mov	word [bp-32],ax
		mov	ax,word _$SYSUTILS$_Ld633
		mov	word [bp-30],ax
		mov	ax,word _$SYSUTILS$_Ld630
		mov	word [bp-28],ax
		mov	bx,word [bp+4]
		mov	ax,word [bx+8]
		mov	word [bp-26],ax
		lea	ax,[bp-32]
		push	ax
		mov	ax,3
		push	ax
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat_multi
		jmp	..@j6543
..@j6559:
		mov	ax,word [bp+20]
		push	ax
		mov	ax,word _$SYSUTILS$_Ld631
		mov	word [bp-34],ax
		mov	bx,word [bp+4]
		mov	ax,word [bx+8]
		mov	word [bp-32],ax
		mov	ax,word _$SYSUTILS$_Ld630
		mov	word [bp-30],ax
		mov	bx,word [bp+20]
		mov	ax,word [bx]
		mov	word [bp-28],ax
		mov	ax,word _$SYSUTILS$_Ld632
		mov	word [bp-26],ax
		lea	ax,[bp-34]
		push	ax
		mov	ax,4
		push	ax
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat_multi
		jmp	..@j6543
..@j6560:
		mov	ax,word [bp+20]
		push	ax
		mov	ax,word _$SYSUTILS$_Ld631
		mov	word [bp-34],ax
		mov	bx,word [bp+20]
		mov	ax,word [bx]
		mov	word [bp-32],ax
		mov	ax,word _$SYSUTILS$_Ld630
		mov	word [bp-30],ax
		mov	bx,word [bp+4]
		mov	ax,word [bx+8]
		mov	word [bp-28],ax
		mov	ax,word _$SYSUTILS$_Ld632
		mov	word [bp-26],ax
		lea	ax,[bp-34]
		push	ax
		mov	ax,4
		push	ax
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat_multi
		jmp	..@j6543
..@j6544:
..@j6543:
..@j6542:
		jmp	..@j5689
..@j5690:
..@j5689:
		mov	ax,word [bp+14]
		cmp	ax,4
		je	..@j6693
..@j6693:
		jne	..@j6692
		jmp	..@j6690
..@j6692:
		mov	bx,word [bp+20]
		mov	bx,word [bx]
		test	bx,bx
		je	..@j6694
		mov	bx,word [bx-2]
..@j6694:
		cmp	bx,1
		jg	..@j6691
		jmp	..@j6690
..@j6691:
		mov	bx,word [bp+20]
		mov	bx,word [bx]
		cmp	byte [bx],45
		je	..@j6689
		jmp	..@j6690
..@j6689:
		push	bp
		mov	ax,word [bp+20]
		push	ax
		call	SYSUTILS$_$FLOATTOSTRFINTL$crcBE2DB201_$$_REMOVELEADINGNEGATIVESIGN$ANSISTRING$$BOOLEAN
..@j6690:
..@j5685:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-290]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j5686
		call	FPC_RERAISE
..@j5686:
		mov	sp,bp
		pop	bp
		ret	18
EXTERN	FPC_RERAISE
EXTERN	FPC_POPADDRSTACK
EXTERN	_$SYSUTILS$_Ld633
EXTERN	_$SYSUTILS$_Ld632
EXTERN	_$SYSUTILS$_Ld631
EXTERN	fpc_ansistr_concat_multi
EXTERN	_$SYSUTILS$_Ld630
EXTERN	fpc_ansistr_concat
EXTERN	SYSUTILS$_$FLOATTOSTRFINTL$crcBE2DB201_$$_REMOVELEADINGNEGATIVESIGN$ANSISTRING$$BOOLEAN
EXTERN	fpc_char_to_ansistr
EXTERN	_$SYSUTILS$_Ld629
EXTERN	_$SYSUTILS$_Ld628
EXTERN	SYSTEM_$$_INSERT$RAWBYTESTRING$RAWBYTESTRING$SMALLINT
EXTERN	fpc_shortstr_copy
EXTERN	_$SYSUTILS$_Ld627
EXTERN	fpc_ansistr_setlength
EXTERN	fpc_ansistr_unique
EXTERN	SYSTEM_$$_POS$CHAR$RAWBYTESTRING$$SMALLINT
EXTERN	SYSTEM_$$_DELETE$RAWBYTESTRING$SMALLINT$SMALLINT
EXTERN	SYSTEM_$$_SETCODEPAGE$RAWBYTESTRING$WORD$BOOLEAN
EXTERN	fpc_ansistr_assign
EXTERN	fpc_shortstr_to_ansistr
EXTERN	fpc_shortstr_currency
EXTERN	fpc_ansistr_float
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
