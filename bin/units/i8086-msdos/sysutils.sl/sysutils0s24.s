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
	GLOBAL SYSUTILS_$$_FEXPAND$RAWBYTESTRING$$RAWBYTESTRING
SYSUTILS_$$_FEXPAND$RAWBYTESTRING$$RAWBYTESTRING:
		push	bp
		mov	bp,sp
		sub	sp,564
		mov	word [bp-8],0
		mov	word [bp-10],0
		mov	word [bp-12],0
		mov	word [bp-14],0
		mov	word [bp-50],0
		mov	word [bp-40],0
		mov	word [bp-38],0
		mov	ax,1
		push	ax
		lea	ax,[bp-34]
		push	ax
		lea	ax,[bp-28]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j605
		mov	byte [bp-5],0
		cmp	byte [TC_$SYSTEM_$$_FILENAMECASEPRESERVING],0
		jne	..@j609
		jmp	..@j610
..@j609:
		lea	ax,[bp-10]
		push	ax
		lea	ax,[bp-38]
		push	ax
		push	word [bp+4]
		call	SYSTEM_$$_TOSINGLEBYTEFILESYSTEMENCODEDFILENAME$RAWBYTESTRING$$RAWBYTESTRING
		push	word [bp-38]
		call	fpc_ansistr_assign
		jmp	..@j619
..@j610:
		lea	ax,[bp-10]
		push	ax
		lea	ax,[bp-38]
		push	ax
		lea	ax,[bp-40]
		push	ax
		push	word [bp+4]
		call	SYSTEM_$$_TOSINGLEBYTEFILESYSTEMENCODEDFILENAME$RAWBYTESTRING$$RAWBYTESTRING
		push	word [bp-40]
		call	SYSTEM_$$_UPCASE$ANSISTRING$$ANSISTRING
		push	word [bp-38]
		call	fpc_ansistr_assign
..@j619:
		mov	word [bp-4],3
		mov	word [bp-2],0
		mov	bx,word [bp-10]
		test	bx,bx
		je	..@j639
		mov	bx,word [bx-2]
..@j639:
		cmp	bx,1
		jg	..@j638
		jmp	..@j635
..@j638:
		mov	bx,word [bp-10]
		mov	al,byte [bx]
		mov	byte [bp-41],al
		mov	al,byte [bp-41]
		mov	ah,0
		sub	ax,65
		cmp	ax,26
		jb	..@j644
		sub	ax,32
		cmp	ax,26
		jb	..@j644
..@j644:
		mov	al,0
		jnc	..@j645
		inc	ax
..@j645:
		test	al,al
		jne	..@j637
		jmp	..@j635
..@j637:
		mov	bx,word [bp-10]
		cmp	byte [bx+1],58
		je	..@j636
		jmp	..@j635
..@j636:
		jmp	..@j634
..@j634:
		mov	bx,word [bp-10]
		mov	al,byte [bx]
		mov	byte [bp-41],al
		mov	al,byte [bp-41]
		mov	ah,0
		sub	ax,97
		cmp	ax,26
		jb	..@j652
..@j652:
		mov	al,0
		jnc	..@j653
		inc	ax
..@j653:
		test	al,al
		jne	..@j646
		jmp	..@j647
..@j646:
		lea	ax,[bp-10]
		push	ax
		call	fpc_ansistr_unique
		mov	bx,ax
		mov	si,word [bp-10]
		mov	al,byte [si]
		mov	ah,0
		and	ax,-33
		mov	byte [bx],al
..@j647:
		mov	bx,word [bp-10]
		mov	al,byte [bx]
		mov	ah,0
		sub	ax,65
		inc	ax
		push	ax
		lea	ax,[bp-8]
		push	ax
		call	SYSUTILS_$$_GETDIRIO$BYTE$RAWBYTESTRING
		mov	bx,word [bp-10]
		test	bx,bx
		je	..@j664
		mov	bx,word [bx-2]
..@j664:
		mov	ax,bx
		cwd
		mov	cx,ax
		mov	bx,dx
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		sub	ax,1
		sbb	dx,0
		cmp	bx,dx
		jne	..@j663
		cmp	cx,ax
		jne	..@j663
		jmp	..@j662
..@j662:
		lea	ax,[bp-10]
		push	ax
		push	word [bp-8]
		call	fpc_ansistr_assign
		jmp	..@j669
..@j663:
		mov	bx,word [bp-10]
		mov	si,word [bp-4]
		cmp	byte [bx+si-1],92
		jne	..@j670
		jmp	..@j671
..@j670:
		mov	bx,word [bp-10]
		mov	al,byte [bx]
		mov	ah,0
		push	ax
		call	SYSTEM_$$_UPCASE$CHAR$$CHAR
		mov	byte [bp-564],al
		mov	bx,word [bp-8]
		mov	al,byte [bx]
		mov	ah,0
		push	ax
		call	SYSTEM_$$_UPCASE$CHAR$$CHAR
		cmp	byte [bp-564],al
		je	..@j672
		jmp	..@j673
..@j672:
		mov	bx,word [bp-8]
		mov	si,word [bp-8]
		test	si,si
		je	..@j680
		mov	si,word [si-2]
..@j680:
		cmp	byte [bx+si-1],92
		je	..@j678
		jmp	..@j679
..@j678:
		lea	ax,[bp-8]
		push	ax
		mov	bx,word [bp-8]
		test	bx,bx
		je	..@j685
		mov	bx,word [bx-2]
..@j685:
		dec	bx
		push	bx
		mov	ax,0
		push	ax
		call	fpc_ansistr_setlength
..@j679:
		lea	ax,[bp-14]
		push	ax
		push	word [bp-8]
		call	fpc_ansistr_assign
		lea	ax,[bp-14]
		push	ax
		mov	bx,word [bp-14]
		test	bx,bx
		je	..@j696
		mov	bx,word [bx-2]
..@j696:
		inc	bx
		push	bx
		mov	ax,0
		push	ax
		call	fpc_ansistr_setlength
		lea	ax,[bp-14]
		push	ax
		call	fpc_ansistr_unique
		mov	bx,ax
		mov	si,word [bp-14]
		test	si,si
		je	..@j703
		mov	si,word [si-2]
..@j703:
		mov	byte [bx+si-1],92
		lea	ax,[bp-10]
		push	ax
		push	word [bp-14]
		lea	ax,[bp-38]
		push	ax
		push	word [bp-10]
		push	word [bp-4]
		mov	bx,word [bp-10]
		test	bx,bx
		je	..@j718
		mov	bx,word [bx-2]
..@j718:
		mov	ax,bx
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	dx,word [bp-4]
		mov	bx,word [bp-2]
		sub	cx,dx
		sbb	ax,bx
		add	cx,1
		adc	ax,0
		push	cx
		call	fpc_ansistr_copy
		push	word [bp-38]
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat
		jmp	..@j721
..@j673:
		lea	ax,[bp-14]
		push	ax
		mov	ax,word _$SYSUTILS$_Ld615
		push	ax
		call	fpc_ansistr_assign
		lea	ax,[bp-14]
		push	ax
		push	word [U_$SYSTEM_$$_DEFAULTFILESYSTEMCODEPAGE]
		mov	ax,0
		push	ax
		call	SYSTEM_$$_SETCODEPAGE$RAWBYTESTRING$WORD$BOOLEAN
		lea	ax,[bp-10]
		push	ax
		lea	ax,[bp-38]
		push	ax
		push	word [bp-10]
		mov	ax,1
		push	ax
		mov	ax,1
		push	ax
		call	fpc_ansistr_copy
		mov	ax,word [bp-38]
		mov	word [bp-48],ax
		mov	ax,word [bp-14]
		mov	word [bp-46],ax
		lea	ax,[bp-50]
		push	ax
		push	word [bp-10]
		push	word [bp-4]
		mov	bx,word [bp-10]
		test	bx,bx
		je	..@j752
		mov	bx,word [bx-2]
..@j752:
		mov	ax,bx
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	dx,word [bp-4]
		mov	bx,word [bp-2]
		sub	cx,dx
		sbb	ax,bx
		add	cx,1
		adc	ax,0
		push	cx
		call	fpc_ansistr_copy
		mov	ax,word [bp-50]
		mov	word [bp-44],ax
		lea	ax,[bp-48]
		push	ax
		mov	ax,2
		push	ax
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat_multi
..@j721:
..@j671:
..@j669:
		jmp	..@j757
..@j635:
		mov	ax,0
		push	ax
		lea	ax,[bp-8]
		push	ax
		call	SYSUTILS_$$_GETDIRIO$BYTE$RAWBYTESTRING
		mov	bx,word [bp-10]
		test	bx,bx
		je	..@j765
		mov	bx,word [bx-2]
..@j765:
		cmp	bx,0
		jg	..@j764
		jmp	..@j763
..@j764:
		mov	bx,word [bp-10]
		cmp	byte [bx],92
		je	..@j762
		jmp	..@j763
..@j762:
		mov	bx,word [bp-10]
		test	bx,bx
		je	..@j770
		mov	bx,word [bx-2]
..@j770:
		cmp	bx,1
		jg	..@j769
		jmp	..@j767
..@j769:
		mov	bx,word [bp-10]
		cmp	byte [bx+1],92
		je	..@j768
		jmp	..@j767
..@j768:
		cmp	byte [U_$SYSTEM_$$_LFNSUPPORT],0
		jne	..@j766
		jmp	..@j767
..@j766:
		mov	word [bp-4],3
		mov	word [bp-2],0
		jmp	..@j774
	ALIGN 2
..@j773:
		add	word [bp-4],1
		adc	word [bp-2],0
..@j774:
		mov	bx,word [bp-10]
		test	bx,bx
		je	..@j777
		mov	bx,word [bx-2]
..@j777:
		mov	ax,bx
		cwd
		mov	cx,ax
		mov	ax,dx
		cmp	ax,word [bp-2]
		jg	..@j776
		jl	..@j775
		cmp	cx,word [bp-4]
		jae	..@j776
		jmp	..@j775
		jmp	..@j775
..@j776:
		mov	bx,word [bp-10]
		mov	si,word [bp-4]
		cmp	byte [bx+si-1],92
		jne	..@j773
		jmp	..@j775
..@j775:
		mov	bx,word [bp-10]
		test	bx,bx
		je	..@j780
		mov	bx,word [bx-2]
..@j780:
		mov	ax,bx
		cwd
		mov	cx,ax
		mov	ax,dx
		cmp	ax,word [bp-2]
		jl	..@j778
		jg	..@j779
		cmp	cx,word [bp-4]
		jb	..@j778
		jmp	..@j779
		jmp	..@j779
..@j778:
		mov	bx,word [bp-10]
		test	bx,bx
		je	..@j783
		mov	bx,word [bx-2]
..@j783:
		cmp	bx,2
		je	..@j781
		jmp	..@j782
..@j781:
		mov	word [bp-4],2
		mov	word [bp-2],0
		jmp	..@j786
..@j782:
		lea	ax,[bp-10]
		push	ax
		mov	bx,word [bp-10]
		test	bx,bx
		je	..@j791
		mov	bx,word [bx-2]
..@j791:
		inc	bx
		push	bx
		mov	ax,0
		push	ax
		call	fpc_ansistr_setlength
		lea	ax,[bp-10]
		push	ax
		call	fpc_ansistr_unique
		mov	bx,ax
		mov	si,word [bp-10]
		test	si,si
		je	..@j798
		mov	si,word [si-2]
..@j798:
		mov	byte [bx+si-1],92
..@j786:
		jmp	..@j799
..@j779:
		mov	bx,word [bp-10]
		test	bx,bx
		je	..@j802
		mov	bx,word [bx-2]
..@j802:
		mov	ax,bx
		cwd
		mov	cx,ax
		mov	ax,dx
		cmp	ax,word [bp-2]
		jg	..@j800
		jl	..@j801
		cmp	cx,word [bp-4]
		ja	..@j800
		jmp	..@j801
		jmp	..@j801
..@j800:
		mov	byte [bp-5],1
	ALIGN 2
..@j805:
		add	word [bp-4],1
		adc	word [bp-2],0
		mov	bx,word [bp-10]
		test	bx,bx
		je	..@j809
		mov	bx,word [bx-2]
..@j809:
		mov	ax,bx
		cwd
		mov	cx,ax
		mov	ax,dx
		cmp	ax,word [bp-2]
		jl	..@j807
		jg	..@j808
		cmp	cx,word [bp-4]
		jb	..@j807
		jmp	..@j808
		jmp	..@j808
..@j808:
		mov	bx,word [bp-10]
		mov	si,word [bp-4]
		cmp	byte [bx+si-1],92
		je	..@j807
		jmp	..@j805
..@j807:
..@j801:
..@j799:
		jmp	..@j810
..@j767:
		lea	ax,[bp-14]
		push	ax
		lea	ax,[bp-50]
		push	ax
		lea	ax,[bp-306]
		push	ax
		mov	ax,255
		push	ax
		mov	bx,word [bp-8]
		mov	dl,byte [bx]
		mov	dh,0
		mov	cl,8
		shl	dx,cl
		mov	ax,0
		or	dx,1
		mov	word [bp-562],dx
		lea	ax,[bp-562]
		push	ax
		mov	ax,word _$SYSUTILS$_Ld616
		push	ax
		call	fpc_shortstr_concat
		lea	ax,[bp-306]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_shortstr_to_ansistr
		push	word [bp-50]
		call	fpc_ansistr_assign
		lea	ax,[bp-14]
		push	ax
		push	word [U_$SYSTEM_$$_DEFAULTFILESYSTEMCODEPAGE]
		mov	ax,0
		push	ax
		call	SYSTEM_$$_SETCODEPAGE$RAWBYTESTRING$WORD$BOOLEAN
		lea	ax,[bp-10]
		push	ax
		push	word [bp-14]
		push	word [bp-10]
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat
..@j810:
		jmp	..@j843
..@j763:
		mov	bx,word [bp-8]
		test	bx,bx
		je	..@j846
		mov	bx,word [bx-2]
..@j846:
		mov	ax,bx
		cwd
		mov	cx,ax
		mov	ax,dx
		cmp	ax,word [bp-2]
		jne	..@j845
		cmp	cx,word [bp-4]
		jne	..@j845
		jmp	..@j844
		jmp	..@j845
..@j844:
		lea	ax,[bp-10]
		push	ax
		push	word [bp-8]
		push	word [bp-10]
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat
		jmp	..@j855
..@j845:
		mov	bx,word [bp-10]
		test	bx,bx
		je	..@j858
		mov	bx,word [bx-2]
..@j858:
		test	bx,bx
		je	..@j856
		jmp	..@j857
..@j856:
		lea	ax,[bp-10]
		push	ax
		push	word [bp-8]
		call	fpc_ansistr_assign
		lea	ax,[bp-10]
		push	ax
		mov	bx,word [bp-10]
		test	bx,bx
		je	..@j867
		mov	bx,word [bx-2]
..@j867:
		inc	bx
		push	bx
		mov	ax,0
		push	ax
		call	fpc_ansistr_setlength
		lea	ax,[bp-10]
		push	ax
		call	fpc_ansistr_unique
		mov	bx,ax
		mov	si,word [bp-10]
		test	si,si
		je	..@j874
		mov	si,word [si-2]
..@j874:
		mov	byte [bx+si-1],92
		jmp	..@j875
..@j857:
		lea	ax,[bp-14]
		push	ax
		push	word [bp-8]
		call	fpc_ansistr_assign
		lea	ax,[bp-14]
		push	ax
		mov	bx,word [bp-14]
		test	bx,bx
		je	..@j884
		mov	bx,word [bx-2]
..@j884:
		inc	bx
		push	bx
		mov	ax,0
		push	ax
		call	fpc_ansistr_setlength
		lea	ax,[bp-14]
		push	ax
		call	fpc_ansistr_unique
		mov	bx,ax
		mov	si,word [bp-14]
		test	si,si
		je	..@j891
		mov	si,word [si-2]
..@j891:
		mov	byte [bx+si-1],92
		lea	ax,[bp-10]
		push	ax
		push	word [bp-14]
		push	word [bp-10]
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat
..@j875:
..@j855:
..@j843:
..@j757:
		lea	ax,[bp-12]
		push	ax
		lea	ax,[bp-50]
		push	ax
		push	word [bp-10]
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		add	ax,1
		adc	dx,0
		push	ax
		mov	bx,word [bp-10]
		test	bx,bx
		je	..@j912
		mov	bx,word [bx-2]
..@j912:
		mov	ax,bx
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	dx,word [bp-4]
		mov	bx,word [bp-2]
		sub	cx,dx
		sbb	ax,bx
		push	cx
		call	fpc_ansistr_copy
		push	word [bp-50]
		call	fpc_ansistr_assign
		mov	ax,word _$SYSUTILS$_Ld617
		push	ax
		push	word [bp-12]
		call	SYSTEM_$$_POS$RAWBYTESTRING$RAWBYTESTRING$$SMALLINT
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-18],cx
		mov	word [bp-16],ax
		jmp	..@j920
	ALIGN 2
..@j919:
		lea	ax,[bp-12]
		push	ax
		push	word [bp-18]
		mov	ax,2
		push	ax
		call	SYSTEM_$$_DELETE$RAWBYTESTRING$SMALLINT$SMALLINT
		mov	ax,word _$SYSUTILS$_Ld617
		push	ax
		push	word [bp-12]
		call	SYSTEM_$$_POS$RAWBYTESTRING$RAWBYTESTRING$$SMALLINT
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-18],cx
		mov	word [bp-16],ax
..@j920:
		mov	ax,word [bp-18]
		mov	dx,word [bp-16]
		cmp	dx,0
		jne	..@j919
		cmp	ax,0
		jne	..@j919
		jmp	..@j921
..@j921:
		mov	ax,word _$SYSUTILS$_Ld618
		push	ax
		push	word [bp-12]
		call	SYSTEM_$$_POS$RAWBYTESTRING$RAWBYTESTRING$$SMALLINT
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-18],cx
		mov	word [bp-16],ax
		jmp	..@j941
	ALIGN 2
..@j940:
		mov	ax,word [bp-18]
		mov	dx,word [bp-16]
		sub	ax,1
		sbb	dx,0
		mov	word [bp-22],ax
		mov	word [bp-20],dx
		jmp	..@j946
	ALIGN 2
..@j945:
		sub	word [bp-22],1
		sbb	word [bp-20],0
..@j946:
		mov	ax,word [bp-22]
		mov	dx,word [bp-20]
		cmp	dx,0
		jg	..@j948
		jl	..@j947
		cmp	ax,0
		ja	..@j948
		jmp	..@j947
..@j948:
		mov	bx,word [bp-12]
		mov	si,word [bp-22]
		cmp	byte [bx+si-1],92
		jne	..@j945
		jmp	..@j947
..@j947:
		lea	ax,[bp-12]
		push	ax
		mov	ax,word [bp-22]
		mov	dx,word [bp-20]
		add	ax,1
		adc	dx,0
		push	ax
		mov	ax,word [bp-18]
		mov	dx,word [bp-16]
		mov	bx,word [bp-22]
		mov	cx,word [bp-20]
		sub	ax,bx
		sbb	dx,cx
		add	ax,3
		adc	dx,0
		push	ax
		call	SYSTEM_$$_DELETE$RAWBYTESTRING$SMALLINT$SMALLINT
		mov	ax,word _$SYSUTILS$_Ld618
		push	ax
		push	word [bp-12]
		call	SYSTEM_$$_POS$RAWBYTESTRING$RAWBYTESTRING$$SMALLINT
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-18],cx
		mov	word [bp-16],ax
..@j941:
		mov	ax,word [bp-18]
		mov	dx,word [bp-16]
		cmp	dx,0
		jne	..@j940
		cmp	ax,0
		jne	..@j940
		jmp	..@j942
..@j942:
		mov	ax,word _$SYSUTILS$_Ld619
		push	ax
		push	word [bp-12]
		call	SYSTEM_$$_POS$RAWBYTESTRING$RAWBYTESTRING$$SMALLINT
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-18],cx
		mov	word [bp-16],ax
		mov	ax,word [bp-18]
		mov	dx,word [bp-16]
		cmp	dx,0
		jne	..@j969
		cmp	ax,0
		jne	..@j969
		jmp	..@j968
..@j969:
		mov	bx,word [bp-12]
		test	bx,bx
		je	..@j970
		mov	bx,word [bx-2]
..@j970:
		mov	ax,bx
		sub	ax,2
		cwd
		mov	cx,ax
		mov	ax,dx
		cmp	ax,word [bp-16]
		jne	..@j968
		cmp	cx,word [bp-18]
		jne	..@j968
		jmp	..@j967
		jmp	..@j968
..@j967:
		mov	ax,word [bp-18]
		mov	dx,word [bp-16]
		sub	ax,1
		sbb	dx,0
		mov	word [bp-22],ax
		mov	word [bp-20],dx
		jmp	..@j974
	ALIGN 2
..@j973:
		sub	word [bp-22],1
		sbb	word [bp-20],0
..@j974:
		mov	ax,word [bp-22]
		mov	dx,word [bp-20]
		cmp	dx,0
		jg	..@j976
		jl	..@j975
		cmp	ax,0
		ja	..@j976
		jmp	..@j975
..@j976:
		mov	bx,word [bp-12]
		mov	si,word [bp-22]
		cmp	byte [bx+si-1],92
		jne	..@j973
		jmp	..@j975
..@j975:
		mov	dx,word [bp-22]
		mov	ax,word [bp-20]
		cmp	ax,0
		jne	..@j978
		cmp	dx,0
		jne	..@j978
		jmp	..@j977
..@j977:
		lea	ax,[bp-12]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_assign
		jmp	..@j983
..@j978:
		lea	ax,[bp-12]
		push	ax
		mov	ax,word [bp-22]
		mov	dx,word [bp-20]
		add	ax,1
		adc	dx,0
		push	ax
		mov	ax,word [bp-18]
		mov	dx,word [bp-16]
		mov	bx,word [bp-22]
		mov	cx,word [bp-20]
		sub	ax,bx
		sbb	dx,cx
		add	ax,2
		adc	dx,0
		push	ax
		call	SYSTEM_$$_DELETE$RAWBYTESTRING$SMALLINT$SMALLINT
..@j983:
..@j968:
		mov	bx,word [bp-12]
		test	bx,bx
		je	..@j992
		mov	bx,word [bx-2]
..@j992:
		cmp	bx,1
		je	..@j990
		jmp	..@j991
..@j990:
		mov	bx,word [bp-12]
		cmp	byte [bx],46
		je	..@j993
		jmp	..@j994
..@j993:
		lea	ax,[bp-12]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_assign
..@j994:
		jmp	..@j999
..@j991:
		mov	bx,word [bp-12]
		test	bx,bx
		je	..@j1004
		mov	bx,word [bx-2]
..@j1004:
		test	bx,bx
		jne	..@j1003
		jmp	..@j1001
..@j1003:
		mov	bx,word [bp-12]
		mov	si,word [bp-12]
		test	si,si
		je	..@j1005
		mov	si,word [si-2]
..@j1005:
		cmp	byte [bx+si-1],46
		je	..@j1002
		jmp	..@j1001
..@j1002:
		mov	bx,word [bp-12]
		mov	si,word [bp-12]
		test	si,si
		je	..@j1006
		mov	si,word [si-2]
..@j1006:
		dec	si
		cmp	byte [bx+si-1],92
		je	..@j1000
		jmp	..@j1001
..@j1000:
		lea	ax,[bp-12]
		push	ax
		mov	bx,word [bp-12]
		test	bx,bx
		je	..@j1011
		mov	bx,word [bx-2]
..@j1011:
		dec	bx
		push	bx
		mov	ax,2
		push	ax
		call	SYSTEM_$$_DELETE$RAWBYTESTRING$SMALLINT$SMALLINT
..@j1001:
..@j999:
		jmp	..@j1015
	ALIGN 2
..@j1014:
		lea	ax,[bp-12]
		push	ax
		mov	ax,1
		push	ax
		mov	ax,2
		push	ax
		call	SYSTEM_$$_DELETE$RAWBYTESTRING$SMALLINT$SMALLINT
..@j1015:
		mov	bx,word [bp-12]
		test	bx,bx
		je	..@j1025
		mov	bx,word [bx-2]
..@j1025:
		cmp	bx,2
		jge	..@j1024
		jmp	..@j1016
..@j1024:
		mov	bx,word [bp-12]
		cmp	byte [bx],46
		je	..@j1023
		jmp	..@j1016
..@j1023:
		mov	bx,word [bp-12]
		cmp	byte [bx+1],92
		je	..@j1014
		jmp	..@j1016
..@j1016:
		jmp	..@j1027
	ALIGN 2
..@j1026:
		lea	ax,[bp-12]
		push	ax
		mov	ax,1
		push	ax
		mov	ax,3
		push	ax
		call	SYSTEM_$$_DELETE$RAWBYTESTRING$SMALLINT$SMALLINT
..@j1027:
		mov	bx,word [bp-12]
		test	bx,bx
		je	..@j1038
		mov	bx,word [bx-2]
..@j1038:
		cmp	bx,3
		jge	..@j1037
		jmp	..@j1028
..@j1037:
		mov	bx,word [bp-12]
		cmp	byte [bx],46
		je	..@j1036
		jmp	..@j1028
..@j1036:
		mov	bx,word [bp-12]
		cmp	byte [bx+1],46
		je	..@j1035
		jmp	..@j1028
..@j1035:
		mov	bx,word [bp-12]
		cmp	byte [bx+2],92
		je	..@j1026
		jmp	..@j1028
..@j1028:
		mov	bx,word [bp-12]
		test	bx,bx
		je	..@j1042
		mov	bx,word [bx-2]
..@j1042:
		cmp	bx,1
		je	..@j1041
		jmp	..@j1040
..@j1041:
		mov	bx,word [bp-12]
		cmp	byte [bx],46
		je	..@j1039
		jmp	..@j1040
..@j1039:
		lea	ax,[bp-12]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_assign
..@j1040:
		mov	bx,word [bp-12]
		test	bx,bx
		je	..@j1051
		mov	bx,word [bx-2]
..@j1051:
		cmp	bx,2
		je	..@j1050
		jmp	..@j1048
..@j1050:
		mov	bx,word [bp-12]
		cmp	byte [bx],46
		je	..@j1049
		jmp	..@j1048
..@j1049:
		mov	bx,word [bp-12]
		cmp	byte [bx+1],46
		je	..@j1047
		jmp	..@j1048
..@j1047:
		lea	ax,[bp-12]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_assign
..@j1048:
		mov	bx,word [bp-12]
		test	bx,bx
		je	..@j1058
		mov	bx,word [bx-2]
..@j1058:
		test	bx,bx
		je	..@j1056
		jmp	..@j1057
..@j1056:
		lea	ax,[bp-10]
		push	ax
		lea	ax,[bp-50]
		push	ax
		push	word [bp-10]
		mov	ax,1
		push	ax
		push	word [bp-4]
		call	fpc_ansistr_copy
		push	word [bp-50]
		call	fpc_ansistr_assign
		mov	bx,word [bp-10]
		mov	si,word [bp-4]
		cmp	byte [bx+si-1],92
		jne	..@j1071
		jmp	..@j1072
..@j1071:
		lea	ax,[bp-10]
		push	ax
		mov	bx,word [bp-10]
		test	bx,bx
		je	..@j1077
		mov	bx,word [bx-2]
..@j1077:
		inc	bx
		push	bx
		mov	ax,0
		push	ax
		call	fpc_ansistr_setlength
		lea	ax,[bp-10]
		push	ax
		call	fpc_ansistr_unique
		mov	bx,ax
		mov	si,word [bp-10]
		test	si,si
		je	..@j1084
		mov	si,word [si-2]
..@j1084:
		mov	byte [bx+si-1],92
..@j1072:
		jmp	..@j1085
..@j1057:
		lea	ax,[bp-10]
		push	ax
		lea	ax,[bp-50]
		push	ax
		push	word [bp-10]
		mov	ax,1
		push	ax
		push	word [bp-4]
		call	fpc_ansistr_copy
		push	word [bp-50]
		push	word [bp-12]
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat
..@j1085:
		mov	bx,word [bp-10]
		mov	si,word [bp-10]
		test	si,si
		je	..@j1107
		mov	si,word [si-2]
..@j1107:
		cmp	byte [bx+si-1],92
		je	..@j1106
		jmp	..@j1103
..@j1106:
		mov	bx,word [bp-10]
		test	bx,bx
		je	..@j1109
		mov	bx,word [bx-2]
..@j1109:
		mov	ax,bx
		cwd
		mov	cx,ax
		mov	ax,dx
		cmp	ax,word [bp-2]
		jg	..@j1105
		jl	..@j1108
		cmp	cx,word [bp-4]
		ja	..@j1105
		jmp	..@j1108
		jmp	..@j1108
..@j1108:
		cmp	byte [bp-5],0
		jne	..@j1110
		jmp	..@j1103
..@j1110:
		mov	bx,word [bp-10]
		test	bx,bx
		je	..@j1111
		mov	bx,word [bx-2]
..@j1111:
		mov	ax,bx
		cwd
		mov	cx,ax
		mov	ax,dx
		cmp	ax,word [bp-2]
		jne	..@j1103
		cmp	cx,word [bp-4]
		jne	..@j1103
		jmp	..@j1105
		jmp	..@j1103
..@j1105:
		mov	bx,word [bp+4]
		test	bx,bx
		je	..@j1112
		mov	bx,word [bx-2]
..@j1112:
		test	bx,bx
		jne	..@j1104
		jmp	..@j1103
..@j1104:
		mov	bx,word [bp+4]
		mov	si,word [bp+4]
		test	si,si
		je	..@j1113
		mov	si,word [si-2]
..@j1113:
		cmp	byte [bx+si-1],92
		jne	..@j1102
		jmp	..@j1103
..@j1102:
		lea	ax,[bp-10]
		push	ax
		mov	bx,word [bp-10]
		test	bx,bx
		je	..@j1118
		mov	bx,word [bx-2]
..@j1118:
		push	bx
		mov	ax,1
		push	ax
		call	SYSTEM_$$_DELETE$RAWBYTESTRING$SMALLINT$SMALLINT
..@j1103:
		lea	ax,[bp-10]
		push	ax
		push	word [U_$SYSTEM_$$_DEFAULTRTLFILESYSTEMCODEPAGE]
		mov	ax,1
		push	ax
		call	SYSTEM_$$_SETCODEPAGE$RAWBYTESTRING$WORD$BOOLEAN
		mov	ax,word [bp+6]
		push	ax
		push	word [bp-10]
		call	fpc_ansistr_assign
..@j605:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-50]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-40]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-38]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-8]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-10]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-12]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-14]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j606
		call	FPC_RERAISE
..@j606:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	U_$SYSTEM_$$_DEFAULTRTLFILESYSTEMCODEPAGE
EXTERN	_$SYSUTILS$_Ld619
EXTERN	_$SYSUTILS$_Ld618
EXTERN	SYSTEM_$$_DELETE$RAWBYTESTRING$SMALLINT$SMALLINT
EXTERN	SYSTEM_$$_POS$RAWBYTESTRING$RAWBYTESTRING$$SMALLINT
EXTERN	_$SYSUTILS$_Ld617
EXTERN	fpc_shortstr_to_ansistr
EXTERN	fpc_shortstr_concat
EXTERN	_$SYSUTILS$_Ld616
EXTERN	U_$SYSTEM_$$_LFNSUPPORT
EXTERN	fpc_ansistr_concat_multi
EXTERN	SYSTEM_$$_SETCODEPAGE$RAWBYTESTRING$WORD$BOOLEAN
EXTERN	U_$SYSTEM_$$_DEFAULTFILESYSTEMCODEPAGE
EXTERN	_$SYSUTILS$_Ld615
EXTERN	fpc_ansistr_concat
EXTERN	fpc_ansistr_copy
EXTERN	fpc_ansistr_setlength
EXTERN	SYSTEM_$$_UPCASE$CHAR$$CHAR
EXTERN	SYSUTILS_$$_GETDIRIO$BYTE$RAWBYTESTRING
EXTERN	fpc_ansistr_unique
EXTERN	SYSTEM_$$_UPCASE$ANSISTRING$$ANSISTRING
EXTERN	fpc_ansistr_assign
EXTERN	SYSTEM_$$_TOSINGLEBYTEFILESYSTEMENCODEDFILENAME$RAWBYTESTRING$$RAWBYTESTRING
EXTERN	TC_$SYSTEM_$$_FILENAMECASEPRESERVING
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
