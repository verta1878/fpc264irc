# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_FPIMGCANV_TFPIMAGECANVAS_$__CREATE$TFPCUSTOMIMAGE$$TFPIMAGECANVAS
_FPIMGCANV_TFPIMAGECANVAS_$__CREATE$TFPCUSTOMIMAGE$$TFPIMAGECANVAS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj5
	jmp	Lj6
Lj5:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj6:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj11
	jmp	Lj12
Lj11:
	jmp	Lj3
Lj12:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj15
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj19
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_FPPIXLCANV_TFPPIXELCANVAS_$__CREATE$$TFPPIXELCANVAS$stub
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	%eax,68(%edx)
Lj19:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj20
	call	LFPC_RERAISE$stub
Lj20:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj30
	jmp	Lj29
Lj30:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj28
	jmp	Lj29
Lj28:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj29:
Lj15:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj17
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj34
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj35
	jmp	Lj36
Lj35:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj36:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj34:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj33
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj33:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj17
Lj17:
Lj3:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPIMGCANV_TFPIMAGECANVAS_$__DESTROY
_FPIMGCANV_TFPIMAGECANVAS_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj43
	jmp	Lj44
Lj43:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj44:
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj53
	jmp	Lj52
Lj53:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj51
	jmp	Lj52
Lj51:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj52:
	leave
	ret

.text
	.align 4
.globl	_FPIMGCANV_TFPIMAGECANVAS_$__SETCOLOR$LONGINT$LONGINT$TFPCOLOR
_FPIMGCANV_TFPIMAGECANVAS_$__SETCOLOR$LONGINT$LONGINT$TFPCOLOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jge	Lj62
	jmp	Lj59
Lj62:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*176(%edx)
	cmpl	-4(%ebp),%eax
	jg	Lj61
	jmp	Lj59
Lj61:
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jge	Lj60
	jmp	Lj59
Lj60:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*168(%edx)
	cmpl	-8(%ebp),%eax
	jg	Lj58
	jmp	Lj59
Lj58:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*188(%edx)
	testb	%al,%al
	je	Lj67
	jmp	Lj69
Lj69:
	leal	-28(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*180(%ecx)
	leal	-28(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_CLIPPING_POINTINSIDE$LONGINT$LONGINT$TRECT$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj67
	jmp	Lj68
Lj67:
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movl	68(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__SETCOLOR$LONGINT$LONGINT$TFPCOLOR$stub
Lj68:
Lj59:
	leave
	ret

.text
	.align 4
.globl	_FPIMGCANV_TFPIMAGECANVAS_$__GETCOLOR$LONGINT$LONGINT$$TFPCOLOR
_FPIMGCANV_TFPIMAGECANVAS_$__GETCOLOR$LONGINT$LONGINT$$TFPCOLOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-32(%ebp)
	call	Lj91
Lj91:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jge	Lj96
	jmp	Lj93
Lj96:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*176(%edx)
	cmpl	-4(%ebp),%eax
	jg	Lj95
	jmp	Lj93
Lj95:
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jge	Lj94
	jmp	Lj93
Lj94:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*168(%edx)
	cmpl	-8(%ebp),%eax
	jg	Lj92
	jmp	Lj93
Lj92:
	movl	-12(%ebp),%eax
	movl	68(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__GETCOLOR$LONGINT$LONGINT$$TFPCOLOR$stub
	movl	%eax,-28(%ebp)
	movl	%edx,-24(%ebp)
	movl	-28(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	-24(%ebp),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj109
Lj93:
	movl	L_TC_FPIMAGE_COLTRANSPARENT$non_lazy_ptr-Lj91(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	L_TC_FPIMAGE_COLTRANSPARENT$non_lazy_ptr-Lj91(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,-16(%ebp)
Lj109:
	movl	-20(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	-32(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPIMGCANV_TFPIMAGECANVAS_$__SETHEIGHT$LONGINT
_FPIMGCANV_TFPIMAGECANVAS_$__SETHEIGHT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	68(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__SETHEIGHT$LONGINT$stub
	leave
	ret

.text
	.align 4
.globl	_FPIMGCANV_TFPIMAGECANVAS_$__GETHEIGHT$$LONGINT
_FPIMGCANV_TFPIMAGECANVAS_$__GETHEIGHT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	68(%eax),%eax
	movl	28(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPIMGCANV_TFPIMAGECANVAS_$__SETWIDTH$LONGINT
_FPIMGCANV_TFPIMAGECANVAS_$__SETWIDTH$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	68(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__SETWIDTH$LONGINT$stub
	leave
	ret

.text
	.align 4
.globl	_FPIMGCANV_TFPIMAGECANVAS_$__GETWIDTH$$LONGINT
_FPIMGCANV_TFPIMAGECANVAS_$__GETWIDTH$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	68(%eax),%eax
	movl	32(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.const_data
	.align 2
.globl	_$FPIMGCANV$_Ld1
_$FPIMGCANV$_Ld1:
	.byte	14
	.ascii	"TFPImageCanvas"

.const_data
	.align 2
.globl	_VMT_FPIMGCANV_TFPIMAGECANVAS
_VMT_FPIMGCANV_TFPIMAGECANVAS:
	.long	72,-72
	.long	_VMT_FPPIXLCANV_TFPPIXELCANVAS
	.long	_$FPIMGCANV$_Ld1
	.long	0,0
	.long	_$FPIMGCANV$_Ld2
	.long	_RTTI_FPIMGCANV_TFPIMAGECANVAS
	.long	0,0,0,0
	.long	_FPIMGCANV_TFPIMAGECANVAS_$__DESTROY
	.long	_SYSTEM_TOBJECT_$__NEWINSTANCE$$TOBJECT
	.long	_SYSTEM_TOBJECT_$__FREEINSTANCE
	.long	_SYSTEM_TOBJECT_$__SAFECALLEXCEPTION$TOBJECT$POINTER$$HRESULT
	.long	_SYSTEM_TOBJECT_$__DEFAULTHANDLER$formal
	.long	_SYSTEM_TOBJECT_$__AFTERCONSTRUCTION
	.long	_SYSTEM_TOBJECT_$__BEFOREDESTRUCTION
	.long	_SYSTEM_TOBJECT_$__DEFAULTHANDLERSTR$formal
	.long	_SYSTEM_TOBJECT_$__DISPATCH$formal
	.long	_SYSTEM_TOBJECT_$__DISPATCHSTR$formal
	.long	_SYSTEM_TOBJECT_$__EQUALS$TOBJECT$$BOOLEAN
	.long	_SYSTEM_TOBJECT_$__GETHASHCODE$$LONGINT
	.long	_SYSTEM_TOBJECT_$__TOSTRING$$ANSISTRING
	.long	_CLASSES_TPERSISTENT_$__ASSIGNTO$TPERSISTENT
	.long	_CLASSES_TPERSISTENT_$__DEFINEPROPERTIES$TFILER
	.long	_CLASSES_TPERSISTENT_$__GETOWNER$$TPERSISTENT
	.long	_CLASSES_TPERSISTENT_$__ASSIGN$TPERSISTENT
	.long	_CLASSES_TPERSISTENT_$__GETNAMEPATH$$ANSISTRING
	.long	_FPPIXLCANV_TFPPIXELCANVAS_$__DOCREATEDEFAULTFONT$$TFPCUSTOMFONT
	.long	_FPPIXLCANV_TFPPIXELCANVAS_$__DOCREATEDEFAULTPEN$$TFPCUSTOMPEN
	.long	_FPPIXLCANV_TFPPIXELCANVAS_$__DOCREATEDEFAULTBRUSH$$TFPCUSTOMBRUSH
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__SETFONT$TFPCUSTOMFONT
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__SETBRUSH$TFPCUSTOMBRUSH
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__SETPEN$TFPCUSTOMPEN
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__DOALLOWFONT$TFPCUSTOMFONT$$BOOLEAN
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__DOALLOWPEN$TFPCUSTOMPEN$$BOOLEAN
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__DOALLOWBRUSH$TFPCUSTOMBRUSH$$BOOLEAN
	.long	_FPIMGCANV_TFPIMAGECANVAS_$__SETCOLOR$LONGINT$LONGINT$TFPCOLOR
	.long	_FPIMGCANV_TFPIMAGECANVAS_$__GETCOLOR$LONGINT$LONGINT$$TFPCOLOR
	.long	_FPIMGCANV_TFPIMAGECANVAS_$__SETHEIGHT$LONGINT
	.long	_FPIMGCANV_TFPIMAGECANVAS_$__GETHEIGHT$$LONGINT
	.long	_FPIMGCANV_TFPIMAGECANVAS_$__SETWIDTH$LONGINT
	.long	_FPIMGCANV_TFPIMAGECANVAS_$__GETWIDTH$$LONGINT
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__GETCLIPRECT$$TRECT
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__SETCLIPRECT$TRECT
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__GETCLIPPING$$BOOLEAN
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__SETCLIPPING$BOOLEAN
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__SETPENPOS$TPOINT
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__DOLOCKCANVAS
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__DOUNLOCKCANVAS
	.long	_FPPIXLCANV_TFPPIXELCANVAS_$__DOTEXTOUT$LONGINT$LONGINT$ANSISTRING
	.long	_FPPIXLCANV_TFPPIXELCANVAS_$__DOGETTEXTSIZE$ANSISTRING$LONGINT$LONGINT
	.long	_FPPIXLCANV_TFPPIXELCANVAS_$__DOGETTEXTHEIGHT$ANSISTRING$$LONGINT
	.long	_FPPIXLCANV_TFPPIXELCANVAS_$__DOGETTEXTWIDTH$ANSISTRING$$LONGINT
	.long	_FPPIXLCANV_TFPPIXELCANVAS_$__DORECTANGLE$TRECT
	.long	_FPPIXLCANV_TFPPIXELCANVAS_$__DORECTANGLEFILL$TRECT
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__DORECTANGLEANDFILL$TRECT
	.long	_FPPIXLCANV_TFPPIXELCANVAS_$__DOELLIPSEFILL$TRECT
	.long	_FPPIXLCANV_TFPPIXELCANVAS_$__DOELLIPSE$TRECT
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__DOELLIPSEANDFILL$TRECT
	.long	_FPPIXLCANV_TFPPIXELCANVAS_$__DOPOLYGONFILL$array_of_TPOINT
	.long	_FPPIXLCANV_TFPPIXELCANVAS_$__DOPOLYGON$array_of_TPOINT
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__DOPOLYGONANDFILL$array_of_TPOINT
	.long	_FPPIXLCANV_TFPPIXELCANVAS_$__DOPOLYLINE$array_of_TPOINT
	.long	_FPPIXLCANV_TFPPIXELCANVAS_$__DOFLOODFILL$LONGINT$LONGINT
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__DOMOVETO$LONGINT$LONGINT
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__DOLINETO$LONGINT$LONGINT
	.long	_FPPIXLCANV_TFPPIXELCANVAS_$__DOLINE$LONGINT$LONGINT$LONGINT$LONGINT
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__DORADIALPIE$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__DOPOLYBEZIER$PPOINT$LONGINT$BOOLEAN$BOOLEAN
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__CHECKHELPER$TFPCANVASHELPER
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__TEXTOUT$LONGINT$LONGINT$ANSISTRING
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__TEXTEXTENT$ANSISTRING$$TSIZE
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__TEXTHEIGHT$ANSISTRING$$LONGINT
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__TEXTWIDTH$ANSISTRING$$LONGINT
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__ARC$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__ARC$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__ELLIPSE$TRECT
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__ELLIPSE$LONGINT$LONGINT$LONGINT$LONGINT
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__POLYGON$array_of_TPOINT
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__POLYLINE$array_of_TPOINT
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__RADIALPIE$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__POLYBEZIER$PPOINT$LONGINT$BOOLEAN$BOOLEAN
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__POLYBEZIER$array_of_TPOINT$BOOLEAN$BOOLEAN
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__RECTANGLE$TRECT
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__RECTANGLE$LONGINT$LONGINT$LONGINT$LONGINT
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__FILLRECT$TRECT
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__FILLRECT$LONGINT$LONGINT$LONGINT$LONGINT
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__FLOODFILL$LONGINT$LONGINT
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__ERASE
	.long	0

.data
	.align 2
.globl	_THREADVARLIST_FPIMGCANV
_THREADVARLIST_FPIMGCANV:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const
# End asmlist al_const
# Begin asmlist al_typedconsts
# End asmlist al_typedconsts
# Begin asmlist al_rotypedconsts
# End asmlist al_rotypedconsts
# Begin asmlist al_threadvars
# End asmlist al_threadvars
# Begin asmlist al_imports

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_PUSHEXCEPTADDR$stub:
.indirect_symbol FPC_PUSHEXCEPTADDR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_SETJMP$stub:
.indirect_symbol FPC_SETJMP
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPPIXLCANV_TFPPIXELCANVAS_$__CREATE$$TFPPIXELCANVAS$stub:
.indirect_symbol _FPPIXLCANV_TFPPIXELCANVAS_$__CREATE$$TFPPIXELCANVAS
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_POPADDRSTACK$stub:
.indirect_symbol FPC_POPADDRSTACK
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_RERAISE$stub:
.indirect_symbol FPC_RERAISE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_POPSECONDOBJECTSTACK$stub:
.indirect_symbol FPC_POPSECONDOBJECTSTACK
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_DESTROYEXCEPTION$stub:
.indirect_symbol FPC_DESTROYEXCEPTION
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_POPOBJECTSTACK$stub:
.indirect_symbol FPC_POPOBJECTSTACK
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPCANVAS_TFPCUSTOMCANVAS_$__DESTROY$stub:
.indirect_symbol _FPCANVAS_TFPCUSTOMCANVAS_$__DESTROY
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLIPPING_POINTINSIDE$LONGINT$LONGINT$TRECT$$BOOLEAN$stub:
.indirect_symbol _CLIPPING_POINTINSIDE$LONGINT$LONGINT$TRECT$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPIMAGE_TFPCUSTOMIMAGE_$__SETCOLOR$LONGINT$LONGINT$TFPCOLOR$stub:
.indirect_symbol _FPIMAGE_TFPCUSTOMIMAGE_$__SETCOLOR$LONGINT$LONGINT$TFPCOLOR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPIMAGE_TFPCUSTOMIMAGE_$__GETCOLOR$LONGINT$LONGINT$$TFPCOLOR$stub:
.indirect_symbol _FPIMAGE_TFPCUSTOMIMAGE_$__GETCOLOR$LONGINT$LONGINT$$TFPCOLOR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPIMAGE_TFPCUSTOMIMAGE_$__SETHEIGHT$LONGINT$stub:
.indirect_symbol _FPIMAGE_TFPCUSTOMIMAGE_$__SETHEIGHT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPIMAGE_TFPCUSTOMIMAGE_$__SETWIDTH$LONGINT$stub:
.indirect_symbol _FPIMAGE_TFPCUSTOMIMAGE_$__SETWIDTH$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt
# End asmlist al_imports
# Begin asmlist al_exports
# End asmlist al_exports
# Begin asmlist al_resources
# End asmlist al_resources
# Begin asmlist al_rtti

.const_data
	.align 2
.globl	_$FPIMGCANV$_Ld2
_$FPIMGCANV$_Ld2:
	.short	0
	.long	_$FPIMGCANV$_Ld3
	.align 2
.globl	_$FPIMGCANV$_Ld3
_$FPIMGCANV$_Ld3:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPIMGCANV_TFPIMAGECANVAS
_INIT_FPIMGCANV_TFPIMAGECANVAS:
	.byte	15,14
	.ascii	"TFPImageCanvas"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPIMGCANV_TFPIMAGECANVAS
_RTTI_FPIMGCANV_TFPIMAGECANVAS:
	.byte	15,14
	.ascii	"TFPImageCanvas"
	.long	_VMT_FPIMGCANV_TFPIMAGECANVAS
	.long	_RTTI_FPPIXLCANV_TFPPIXELCANVAS
	.short	0
	.byte	9
	.ascii	"FPImgCanv"
	.short	0
# End asmlist al_rtti
# Begin asmlist al_dwarf_frame
# End asmlist al_dwarf_frame
# Begin asmlist al_dwarf_info
# End asmlist al_dwarf_info
# Begin asmlist al_dwarf_abbrev
# End asmlist al_dwarf_abbrev
# Begin asmlist al_dwarf_line
# End asmlist al_dwarf_line
# Begin asmlist al_picdata

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_FPIMAGE_COLTRANSPARENT$non_lazy_ptr:
.indirect_symbol _TC_FPIMAGE_COLTRANSPARENT
	.long	0
# End asmlist al_picdata
# Begin asmlist al_resourcestrings
# End asmlist al_resourcestrings
# Begin asmlist al_objc_data
# End asmlist al_objc_data
# Begin asmlist al_objc_pools
# End asmlist al_objc_pools
# Begin asmlist al_end
# End asmlist al_end
	.subsections_via_symbols

