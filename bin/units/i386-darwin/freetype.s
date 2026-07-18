# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_FREETYPE_FTERROR$ANSISTRING$LONGINT
_FREETYPE_FTERROR$ANSISTRING$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-68(%ebp)
	call	Lj4
Lj4:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj5
	movl	$1,(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,-60(%ebp)
	movl	$0,-64(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-52(%ebp)
	movl	$11,-56(%ebp)
	leal	-64(%ebp),%eax
	movl	%eax,4(%esp)
	movl	L_TC_FREETYPE_SERRFREETYPE$non_lazy_ptr-Lj4(%ebx),%eax
	movl	(%eax),%ecx
	movl	L_VMT_FREETYPE_FREETYPEEXCEPTION$non_lazy_ptr-Lj4(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION$stub
La1:
	movl	%ebp,%ecx
	leal	La1-Lj4(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj5:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj6
	call	LFPC_RERAISE$stub
Lj6:
	movl	-68(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FREETYPE_FTCHECK$LONGINT$ANSISTRING$$LONGINT
_FREETYPE_FTCHECK$LONGINT$ANSISTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj20
	movl	-4(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj25
	jmp	Lj26
Lj25:
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FREETYPE_FTERROR$ANSISTRING$LONGINT$stub
Lj26:
Lj20:
	call	LFPC_POPADDRSTACK$stub
	leal	-8(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj21
	call	LFPC_RERAISE$stub
Lj21:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FREETYPE_TMGRFONT_$__CREATE$TFONTMANAGER$ANSISTRING$LONGINT$$TMGRFONT
_FREETYPE_TMGRFONT_$__CREATE$TFONTMANAGER$ANSISTRING$LONGINT$$TMGRFONT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$200,%esp
	movl	%ebx,-184(%ebp)
	movl	%esi,-180(%ebp)
	call	Lj32
Lj32:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	12(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	$0,-136(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj33
	jmp	Lj34
Lj33:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj34:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj39
	jmp	Lj40
Lj39:
	jmp	Lj31
Lj40:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj43
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj47
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	12(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-12(%ebp),%esi
	leal	16(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	12(%ebp),%eax
	movl	%eax,16(%esi)
	movl	-12(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,4(%eax)
	movl	L_VMT_CLASSES_TLIST$non_lazy_ptr-Lj32(%ebx),%edx
	movl	$0,%eax
	call	L_CLASSES_TLIST_$__CREATE$$TLIST$stub
	movl	-12(%ebp),%edx
	movl	%eax,12(%edx)
	movl	-12(%ebp),%eax
	movl	$0,20(%eax)
	leal	-104(%ebp),%ecx
	leal	-128(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-132(%ebp)
	testl	%eax,%eax
	jne	Lj68
	movl	8(%ebp),%eax
	movl	%eax,8(%esp)
	movl	12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj78
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj32(%ebx),%edx
	movl	%edx,%eax
Lj78:
	movl	%eax,4(%esp)
	movl	-12(%ebp),%eax
	leal	8(%eax),%eax
	movl	%eax,12(%esp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,(%esp)
	call	L_FT_New_Face$stub
	movl	%eax,%esi
	leal	-136(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-136(%ebp)
	leal	-136(%ebp),%eax
	movl	%eax,(%esp)
	movl	8(%ebp),%eax
	movl	%eax,-148(%ebp)
	movl	$0,-152(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,-140(%ebp)
	movl	$11,-144(%ebp)
	leal	-152(%ebp),%edx
	movl	L_TC_FREETYPE_SERRLOADFONT$non_lazy_ptr-Lj32(%ebx),%eax
	movl	(%eax),%eax
	movl	$1,%ecx
	call	L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub
	movl	-136(%ebp),%edx
	movl	%esi,%eax
	call	L_FREETYPE_FTCHECK$LONGINT$ANSISTRING$$LONGINT$stub
Lj68:
	call	LFPC_POPADDRSTACK$stub
	movl	-132(%ebp),%eax
	testl	%eax,%eax
	je	Lj70
	leal	-148(%ebp),%ecx
	leal	-176(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-152(%ebp)
	testl	%eax,%eax
	jne	Lj94
	movl	-12(%ebp),%eax
	movl	$0,8(%eax)
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj94:
	call	LFPC_POPADDRSTACK$stub
	movl	-152(%ebp),%eax
	testl	%eax,%eax
	je	Lj93
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj93:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj70
Lj70:
Lj47:
	call	LFPC_POPADDRSTACK$stub
	leal	-136(%ebp),%edx
	movl	%edx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-136(%ebp)
	leal	12(%ebp),%edx
	movl	%edx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj48
	call	LFPC_RERAISE$stub
Lj48:
	movl	-12(%ebp),%edx
	testl	%edx,%edx
	jne	Lj99
	jmp	Lj98
Lj99:
	movl	-8(%ebp),%edx
	testl	%edx,%edx
	jne	Lj97
	jmp	Lj98
Lj97:
	movl	-12(%ebp),%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	movl	%edx,%eax
	call	*68(%ecx)
Lj98:
Lj43:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj45
	leal	-148(%ebp),%ecx
	leal	-176(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-152(%ebp)
	testl	%eax,%eax
	jne	Lj103
	movl	-8(%ebp),%edx
	testl	%edx,%edx
	jne	Lj104
	jmp	Lj105
Lj104:
	movl	-12(%ebp),%ecx
	movl	$-1,%edx
	movl	-12(%ebp),%esi
	movl	(%esi),%esi
	movl	%ecx,%eax
	call	*48(%esi)
Lj105:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj103:
	call	LFPC_POPADDRSTACK$stub
	movl	-152(%ebp),%eax
	testl	%eax,%eax
	je	Lj102
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj102:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj45
Lj45:
Lj31:
	movl	-12(%ebp),%eax
	movl	-184(%ebp),%ebx
	movl	-180(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FREETYPE_TMGRFONT_$__DESTROY
_FREETYPE_TMGRFONT_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj112
	jmp	Lj113
Lj112:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj113:
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj116
	movl	-8(%ebp),%eax
	call	L_FREETYPE_TMGRFONT_$__FREEGLYPHS$stub
Lj116:
	call	LFPC_POPADDRSTACK$stub
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__DESTROY$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj117
	decl	%eax
	testl	%eax,%eax
	je	Lj118
Lj118:
	call	LFPC_RERAISE$stub
Lj117:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj130
	jmp	Lj129
Lj130:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj128
	jmp	Lj129
Lj128:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj129:
	leave
	ret

.text
	.align 4
.globl	_FREETYPE_TMGRFONT_$__FREEGLYPHS
_FREETYPE_TMGRFONT_$__FREEGLYPHS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-28(%ebp)
	movl	%esi,-24(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	decl	%eax
	movl	%eax,-8(%ebp)
	cmpl	$0,-8(%ebp)
	jl	Lj136
	incl	-8(%ebp)
	.align 2
Lj137:
	decl	-8(%ebp)
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	movl	-8(%ebp),%edx
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,%ebx
	movl	8(%ebx),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	decl	%eax
	movl	%eax,-12(%ebp)
	cmpl	$0,-12(%ebp)
	jl	Lj147
	incl	-12(%ebp)
	.align 2
Lj148:
	decl	-12(%ebp)
	movl	-12(%ebp),%edx
	movl	8(%ebx),%eax
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,%esi
	movl	8(%esi),%eax
	movl	%eax,(%esp)
	call	L_FT_Done_Glyph$stub
	movl	-12(%ebp),%edx
	movl	8(%ebx),%eax
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	call	Lfpc_freemem$stub
	cmpl	$0,-12(%ebp)
	jg	Lj148
Lj147:
	movl	8(%ebx),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	movl	-8(%ebp),%edx
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	call	Lfpc_freemem$stub
	cmpl	$0,-8(%ebp)
	jg	Lj137
Lj136:
	movl	-28(%ebp),%ebx
	movl	-24(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FREETYPE_TFONTMANAGER_$__CREATE$$TFONTMANAGER
_FREETYPE_TFONTMANAGER_$__CREATE$$TFONTMANAGER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-96(%ebp)
	call	Lj178
Lj178:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj179
	jmp	Lj180
Lj179:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-8(%ebp)
Lj180:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj185
	jmp	Lj186
Lj185:
	jmp	Lj177
Lj186:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj189
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj193
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	L_VMT_CLASSES_TLIST$non_lazy_ptr-Lj178(%ebx),%edx
	movl	$0,%eax
	call	L_CLASSES_TLIST_$__CREATE$$TLIST$stub
	movl	-8(%ebp),%edx
	movl	%eax,8(%edx)
	movl	L_VMT_CLASSES_TSTRINGLIST$non_lazy_ptr-Lj178(%ebx),%edx
	movl	$0,%eax
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	-8(%ebp),%edx
	movl	%eax,12(%edx)
	movl	-8(%ebp),%eax
	leal	4(%eax),%eax
	movl	%eax,(%esp)
	call	L_FT_Init_FreeType$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj216
	jmp	Lj217
Lj216:
	movl	-8(%ebp),%eax
	movl	$0,4(%eax)
	movl	-12(%ebp),%edx
	movl	L_TC_FREETYPE_SERRINITIALIZING$non_lazy_ptr-Lj178(%ebx),%eax
	movl	(%eax),%eax
	call	L_FREETYPE_FTERROR$ANSISTRING$LONGINT$stub
Lj217:
	movl	L_TC_FREETYPE_DEFAULTSEARCHPATH$non_lazy_ptr-Lj178(%ebx),%eax
	movl	(%eax),%edx
	movl	-8(%ebp),%eax
	call	L_FREETYPE_TFONTMANAGER_$__SETSEARCHPATH$ANSISTRING$stub
	movl	L_TC_FREETYPE_DEFAULTFONTEXTENTION$non_lazy_ptr-Lj178(%ebx),%eax
	movl	(%eax),%edx
	movl	-8(%ebp),%eax
	call	L_FREETYPE_TFONTMANAGER_$__SETEXTENTION$ANSISTRING$stub
	movl	-8(%ebp),%edx
	movl	L_TC_FREETYPE_DEFAULTRESOLUTION$non_lazy_ptr-Lj178(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,20(%edx)
Lj193:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj194
	call	LFPC_RERAISE$stub
Lj194:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj236
	jmp	Lj235
Lj236:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj234
	jmp	Lj235
Lj234:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj235:
Lj189:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj191
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj240
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj241
	jmp	Lj242
Lj241:
	movl	-8(%ebp),%eax
	movl	$-1,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj242:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj240:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj239
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj239:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj191
Lj191:
Lj177:
	movl	-8(%ebp),%eax
	movl	-96(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FREETYPE_TFONTMANAGER_$__DESTROY
_FREETYPE_TFONTMANAGER_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj253
	jmp	Lj254
Lj253:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj254:
	movl	%ebp,%eax
	call	L_FREETYPE_TFONTMANAGER_$_DESTROY_FREEFONTOBJECTS$stub
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj263
	movl	-8(%ebp),%eax
	cmpl	$0,4(%eax)
	jne	Lj267
	jmp	Lj268
Lj267:
	movl	%ebp,%eax
	call	L_FREETYPE_TFONTMANAGER_$_DESTROY_FREELIBRARY$stub
Lj268:
Lj263:
	call	LFPC_POPADDRSTACK$stub
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__DESTROY$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj264
	decl	%eax
	testl	%eax,%eax
	je	Lj265
Lj265:
	call	LFPC_RERAISE$stub
Lj264:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj277
	jmp	Lj276
Lj277:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj275
	jmp	Lj276
Lj275:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj276:
	leave
	ret

.text
	.align 4
.globl	_FREETYPE_TFONTMANAGER_$_DESTROY_FREELIBRARY
_FREETYPE_TFONTMANAGER_$_DESTROY_FREELIBRARY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj252
Lj252:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%eax),%eax
	movl	4(%eax),%eax
	movl	%eax,(%esp)
	call	L_FT_Done_FreeType$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj284
	jmp	Lj285
Lj284:
	movl	-8(%ebp),%edx
	movl	L_TC_FREETYPE_SERRDESTROYING$non_lazy_ptr-Lj252(%ebx),%eax
	movl	(%eax),%eax
	call	L_FREETYPE_FTERROR$ANSISTRING$LONGINT$stub
Lj285:
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FREETYPE_TFONTMANAGER_$_DESTROY_FREEFONTOBJECTS
_FREETYPE_TFONTMANAGER_$_DESTROY_FREEFONTOBJECTS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%eax),%eax
	movl	8(%eax),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	decl	%eax
	movl	%eax,-8(%ebp)
	cmpl	$0,-8(%ebp)
	jl	Lj291
	incl	-8(%ebp)
	.align 2
Lj292:
	decl	-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%eax),%eax
	movl	-8(%ebp),%edx
	call	L_FREETYPE_TFONTMANAGER_$__GETFONT$LONGINT$$TMGRFONT$stub
	movl	%eax,%ebx
	movl	%ebx,%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	cmpl	$0,-8(%ebp)
	jg	Lj292
Lj291:
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FREETYPE_TFONTMANAGER_$__GETSEARCHPATH$$ANSISTRING
_FREETYPE_TFONTMANAGER_$__GETSEARCHPATH$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-80(%ebp)
	movl	%esi,-76(%ebp)
	movl	%edi,-72(%ebp)
	call	Lj304
Lj304:
	popl	%edi
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-68(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj305
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	movl	-4(%ebp),%edx
	movl	12(%edx),%edx
	movl	(%edx),%edx
	call	*128(%edx)
	cmpl	$0,%eax
	jg	Lj308
	jmp	Lj309
Lj308:
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	$0,%edx
	movl	-4(%ebp),%ebx
	movl	12(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*120(%ebx)
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	movl	-4(%ebp),%edx
	movl	12(%edx),%edx
	movl	(%edx),%edx
	call	*128(%edx)
	decl	%eax
	movl	%eax,%ebx
	movl	$1,-12(%ebp)
	cmpl	-12(%ebp),%ebx
	jl	Lj319
	decl	-12(%ebp)
	.align 2
Lj320:
	incl	-12(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-64(%ebp)
	movl	L_$FREETYPE$_Ld39$non_lazy_ptr-Lj304(%edi),%eax
	movl	%eax,-60(%ebp)
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	leal	-68(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%esi
	movl	12(%esi),%esi
	movl	(%esi),%esi
	call	*120(%esi)
	movl	-68(%ebp),%eax
	movl	%eax,-56(%ebp)
	leal	-64(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$2,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	cmpl	-12(%ebp),%ebx
	jg	Lj320
Lj319:
	jmp	Lj335
Lj309:
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,(%ebx)
Lj335:
Lj305:
	call	LFPC_POPADDRSTACK$stub
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj306
	call	LFPC_RERAISE$stub
Lj306:
	movl	-80(%ebp),%ebx
	movl	-76(%ebp),%esi
	movl	-72(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FREETYPE_TFONTMANAGER_$__SETSEARCHPATH$ANSISTRING
_FREETYPE_TFONTMANAGER_$__SETSEARCHPATH$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	$0,-56(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj342
	jmp	Lj346
	.align 2
Lj345:
	movl	-4(%ebp),%edx
	movb	$59,%al
	call	L_SYSTEM_POS$CHAR$ANSISTRING$$LONGINT$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj354
	jmp	Lj355
Lj354:
	movl	-4(%ebp),%edx
	movl	%ebp,%eax
	call	L_FREETYPE_TFONTMANAGER_$_SETSEARCHPATH$ANSISTRING_ADDPATH$ANSISTRING$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-4(%ebp)
	jmp	Lj362
Lj355:
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-56(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%ecx
	decl	%ecx
	movl	-4(%ebp),%eax
	movl	$1,%edx
	call	Lfpc_ansistr_copy$stub
	movl	-56(%ebp),%edx
	movl	%ebp,%eax
	call	L_FREETYPE_TFONTMANAGER_$_SETSEARCHPATH$ANSISTRING_ADDPATH$ANSISTRING$stub
	movl	-12(%ebp),%ecx
	leal	-4(%ebp),%eax
	movl	$1,%edx
	call	L_SYSTEM_DELETE$ANSISTRING$LONGINT$LONGINT$stub
Lj362:
Lj346:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj345
	jmp	Lj347
Lj347:
Lj342:
	call	LFPC_POPADDRSTACK$stub
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj343
	call	LFPC_RERAISE$stub
Lj343:
	leave
	ret

.text
	.align 4
.globl	_FREETYPE_TFONTMANAGER_$_SETSEARCHPATH$ANSISTRING_ADDPATH$ANSISTRING
_FREETYPE_TFONTMANAGER_$_SETSEARCHPATH$ANSISTRING_ADDPATH$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	$0,-52(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj381
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	leal	-52(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SYSUTILS_INCLUDETRAILINGBACKSLASH$ANSISTRING$$ANSISTRING$stub
	movl	-52(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%eax),%eax
	movl	12(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	-8(%ecx),%ecx
	movl	12(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*164(%ecx)
Lj381:
	call	LFPC_POPADDRSTACK$stub
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj382
	call	LFPC_RERAISE$stub
Lj382:
	leave
	ret

.text
	.align 4
.globl	_FREETYPE_TFONTMANAGER_$__SETEXTENTION$ANSISTRING
_FREETYPE_TFONTMANAGER_$__SETEXTENTION$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-56(%ebp)
	movl	%esi,-52(%ebp)
	call	Lj393
Lj393:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj394
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj397
	jmp	Lj398
Lj397:
	movl	-4(%ebp),%eax
	movb	(%eax),%al
	cmpb	$46,%al
	jne	Lj399
	jmp	Lj400
Lj399:
	movl	-8(%ebp),%eax
	leal	16(%eax),%eax
	movl	-4(%ebp),%ecx
	movl	L_$FREETYPE$_Ld41$non_lazy_ptr-Lj393(%ebx),%edx
	call	Lfpc_ansistr_concat$stub
	jmp	Lj407
Lj400:
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%esi
	leal	16(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	%eax,16(%esi)
Lj407:
	jmp	Lj410
Lj398:
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-4(%ebp)
Lj410:
Lj394:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj395
	call	LFPC_RERAISE$stub
Lj395:
	movl	-56(%ebp),%ebx
	movl	-52(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FREETYPE_TFONTMANAGER_$__SEARCHFONT$ANSISTRING$$ANSISTRING
_FREETYPE_TFONTMANAGER_$__SEARCHFONT$ANSISTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-88(%ebp)
	movl	%esi,-84(%ebp)
	call	Lj414
Lj414:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	$0,-16(%ebp)
	movl	$0,-20(%ebp)
	movl	$0,-72(%ebp)
	movl	$0,-68(%ebp)
	leal	-36(%ebp),%ecx
	leal	-60(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj415
	movl	-4(%ebp),%edx
	movb	$46,%al
	call	L_SYSTEM_POS$CHAR$ANSISTRING$$LONGINT$stub
	testl	%eax,%eax
	je	Lj420
	jmp	Lj419
Lj420:
	movl	L_TC_FREETYPE_DEFAULTFONTEXTENTION$non_lazy_ptr-Lj414(%ebx),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj418
	jmp	Lj419
Lj418:
	movl	L_TC_FREETYPE_DEFAULTFONTEXTENTION$non_lazy_ptr-Lj414(%ebx),%eax
	movl	(%eax),%ecx
	movl	-4(%ebp),%edx
	leal	-20(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
	jmp	Lj431
Lj419:
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-20(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	%eax,-20(%ebp)
Lj431:
	movl	-20(%ebp),%eax
	call	L_SYSUTILS_FILEEXISTS$ANSISTRING$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj434
	jmp	Lj435
Lj434:
	movl	-12(%ebp),%edx
	movl	-20(%ebp),%eax
	call	L_SYSUTILS_EXPANDFILENAME$ANSISTRING$$ANSISTRING$stub
	jmp	Lj442
Lj435:
	leal	-16(%ebp),%edx
	movl	-20(%ebp),%eax
	call	L_SYSUTILS_EXTRACTFILEPATH$ANSISTRING$$ANSISTRING$stub
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj447
	jmp	Lj448
Lj447:
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	movl	-8(%ebp),%edx
	movl	12(%edx),%edx
	movl	(%edx),%edx
	call	*128(%edx)
	movl	%eax,-24(%ebp)
	.align 2
Lj453:
	decl	-24(%ebp)
	movl	-24(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj455
	jmp	Lj456
Lj456:
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-72(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	leal	-72(%ebp),%ecx
	movl	-24(%ebp),%edx
	movl	-8(%ebp),%esi
	movl	12(%esi),%esi
	movl	(%esi),%esi
	call	*120(%esi)
	movl	-72(%ebp),%edx
	movl	-20(%ebp),%ecx
	leal	-68(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
	movl	-68(%ebp),%eax
	call	L_SYSUTILS_FILEEXISTS$ANSISTRING$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj455
	jmp	Lj453
Lj455:
	movl	-24(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj471
	jmp	Lj472
Lj471:
	movl	$0,(%esp)
	movl	-20(%ebp),%eax
	movl	%eax,-76(%ebp)
	movl	$11,-80(%ebp)
	leal	-80(%ebp),%eax
	movl	%eax,4(%esp)
	movl	L_TC_FREETYPE_SERRFONTFILENOTFOUND$non_lazy_ptr-Lj414(%ebx),%eax
	movl	(%eax),%ecx
	movl	L_VMT_FREETYPE_FREETYPEEXCEPTION$non_lazy_ptr-Lj414(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION$stub
La2:
	movl	%ebp,%ecx
	leal	La2-Lj414(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
	jmp	Lj483
Lj472:
	leal	-72(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	leal	-72(%ebp),%ecx
	movl	-24(%ebp),%edx
	movl	-8(%ebp),%esi
	movl	12(%esi),%esi
	movl	(%esi),%esi
	call	*120(%esi)
	movl	-72(%ebp),%edx
	movl	-20(%ebp),%ecx
	movl	-12(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
Lj483:
	jmp	Lj496
Lj448:
	movl	$0,(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,-76(%ebp)
	movl	$11,-80(%ebp)
	leal	-80(%ebp),%eax
	movl	%eax,4(%esp)
	movl	L_TC_FREETYPE_SERRFONTFILENOTFOUND$non_lazy_ptr-Lj414(%ebx),%eax
	movl	(%eax),%ecx
	movl	L_VMT_FREETYPE_FREETYPEEXCEPTION$non_lazy_ptr-Lj414(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION$stub
La3:
	movl	%ebp,%ecx
	leal	La3-Lj414(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj496:
Lj442:
Lj415:
	call	LFPC_POPADDRSTACK$stub
	leal	-72(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-16(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-16(%ebp)
	leal	-20(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-20(%ebp)
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj416
	call	LFPC_RERAISE$stub
Lj416:
	movl	-88(%ebp),%ebx
	movl	-84(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FREETYPE_TFONTMANAGER_$__GETFONTID$ANSISTRING$LONGINT$$LONGINT
_FREETYPE_TFONTMANAGER_$__GETFONTID$ANSISTRING$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj521
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	decl	%eax
	movl	%eax,-16(%ebp)
	jmp	Lj529
	.align 2
Lj528:
	decl	-16(%ebp)
Lj529:
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jge	Lj531
	jmp	Lj530
Lj531:
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movl	-8(%ebp),%edx
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	16(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_SYSUTILS_COMPARETEXT$ANSISTRING$ANSISTRING$$LONGINT$stub
	testl	%eax,%eax
	jne	Lj528
	jmp	Lj532
Lj532:
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movl	-8(%ebp),%edx
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	8(%eax),%eax
	movl	-8(%ebp),%edx
	cmpl	4(%eax),%edx
	jne	Lj528
	jmp	Lj530
Lj530:
Lj521:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj522
	call	LFPC_RERAISE$stub
Lj522:
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FREETYPE_TFONTMANAGER_$__CREATEFONT$ANSISTRING$LONGINT$$LONGINT
_FREETYPE_TFONTMANAGER_$__CREATEFONT$ANSISTRING$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-64(%ebp)
	call	Lj546
Lj546:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-60(%ebp)
	testl	%eax,%eax
	jne	Lj547
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-12(%ebp),%ecx
	movl	L_VMT_FREETYPE_TMGRFONT$non_lazy_ptr-Lj546(%ebx),%edx
	movl	$0,%eax
	call	L_FREETYPE_TMGRFONT_$__CREATE$TFONTMANAGER$ANSISTRING$LONGINT$$TMGRFONT$stub
	movl	%eax,-20(%ebp)
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movl	-20(%ebp),%edx
	call	L_CLASSES_TLIST_$__ADD$POINTER$$LONGINT$stub
Lj547:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj548
	call	LFPC_RERAISE$stub
Lj548:
	movl	-16(%ebp),%eax
	movl	-64(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FREETYPE_TFONTMANAGER_$__GETFONT$LONGINT$$TMGRFONT
_FREETYPE_TFONTMANAGER_$__GETFONT$LONGINT$$TMGRFONT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jge	Lj574
	jmp	Lj573
Lj574:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	cmpl	-4(%ebp),%eax
	jg	Lj572
	jmp	Lj573
Lj572:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,-12(%ebp)
	movl	-8(%ebp),%eax
	movl	24(%eax),%eax
	cmpl	-12(%ebp),%eax
	jne	Lj583
	jmp	Lj584
Lj583:
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,28(%edx)
Lj584:
	jmp	Lj587
Lj573:
	movl	$0,-12(%ebp)
Lj587:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FREETYPE_TFONTMANAGER_$__GETSIZE$LONGINT$LONGINT
_FREETYPE_TFONTMANAGER_$__GETSIZE$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$0,28(%eax)
	jne	Lj595
	jmp	Lj592
Lj595:
	movl	-12(%ebp),%eax
	movl	28(%eax),%eax
	movl	4(%eax),%eax
	cmpl	-4(%ebp),%eax
	je	Lj594
	jmp	Lj592
Lj594:
	movl	-12(%ebp),%eax
	movl	28(%eax),%eax
	movl	(%eax),%eax
	cmpl	-8(%ebp),%eax
	je	Lj593
	jmp	Lj592
Lj592:
	movl	-12(%ebp),%eax
	movl	24(%eax),%eax
	movl	12(%eax),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	movl	%eax,-16(%ebp)
	.align 2
Lj600:
	decl	-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj602
	jmp	Lj603
Lj603:
	movl	-12(%ebp),%eax
	movl	24(%eax),%eax
	movl	12(%eax),%eax
	movl	-16(%ebp),%edx
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	4(%eax),%eax
	cmpl	-4(%ebp),%eax
	je	Lj604
	jmp	Lj600
Lj604:
	movl	-12(%ebp),%eax
	movl	24(%eax),%eax
	movl	12(%eax),%eax
	movl	-16(%ebp),%edx
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	-12(%ebp),%edx
	movl	(%eax),%eax
	cmpl	20(%edx),%eax
	je	Lj602
	jmp	Lj600
Lj602:
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj613
	jmp	Lj614
Lj613:
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FREETYPE_TFONTMANAGER_$__CREATESIZE$LONGINT$LONGINT$$PMGRSIZE$stub
	movl	-12(%ebp),%edx
	movl	%eax,28(%edx)
	jmp	Lj623
Lj614:
	movl	-12(%ebp),%eax
	movl	24(%eax),%eax
	movl	12(%eax),%eax
	movl	-16(%ebp),%edx
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	-12(%ebp),%edx
	movl	%eax,28(%edx)
Lj623:
	movl	-12(%ebp),%eax
	movl	24(%eax),%edx
	movl	-12(%ebp),%eax
	movl	28(%eax),%eax
	movl	%eax,20(%edx)
Lj593:
	leave
	ret

.text
	.align 4
.globl	_FREETYPE_TFONTMANAGER_$__CREATESIZE$LONGINT$LONGINT$$PMGRSIZE
_FREETYPE_TFONTMANAGER_$__CREATESIZE$LONGINT$LONGINT$$PMGRSIZE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	call	Lj633
Lj633:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$12,%eax
	call	Lfpc_getmem$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,4(%eax)
	movl	-16(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	%edx,(%eax)
	movl	L_VMT_CLASSES_TLIST$non_lazy_ptr-Lj633(%ebx),%edx
	movl	$0,%eax
	call	L_CLASSES_TLIST_$__CREATE$$TLIST$stub
	movl	-16(%ebp),%edx
	movl	%eax,8(%edx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FREETYPE_TFONTMANAGER_$__SETPIXELSIZE$LONGINT$LONGINT$stub
	movl	-12(%ebp),%eax
	movl	24(%eax),%eax
	movl	12(%eax),%eax
	movl	-16(%ebp),%edx
	call	L_CLASSES_TLIST_$__ADD$POINTER$$LONGINT$stub
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FREETYPE_TFONTMANAGER_$__SETPIXELSIZE$LONGINT$LONGINT
_FREETYPE_TFONTMANAGER_$__SETPIXELSIZE$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$120,%esp
	movl	%ebx,-92(%ebp)
	movl	%esi,-88(%ebp)
	movl	%edi,-84(%ebp)
	call	Lj661
Lj661:
	popl	%edi
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-64(%ebp)
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-60(%ebp)
	testl	%eax,%eax
	jne	Lj664
	movl	-12(%ebp),%eax
	movl	24(%eax),%ebx
	movl	8(%ebx),%eax
	movl	%eax,%esi
	movl	8(%esi),%eax
	andl	$2,%eax
	testl	%eax,%eax
	jne	Lj671
	jmp	Lj672
Lj671:
	movl	%ebp,%eax
	call	L_FREETYPE_TFONTMANAGER_$_SETPIXELSIZE$LONGINT$LONGINT_CHECKSIZE$stub
	movl	-4(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,4(%esp)
	movl	8(%ebx),%eax
	movl	%eax,(%esp)
	call	L_FT_Set_Pixel_Sizes$stub
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	jne	Lj683
	jmp	Lj684
Lj683:
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-64(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,-76(%ebp)
	movl	$0,-80(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,-68(%ebp)
	movl	$0,-72(%ebp)
	leal	-80(%ebp),%edx
	movl	L_TC_FREETYPE_SERRSETPIXELSIZE$non_lazy_ptr-Lj661(%edi),%eax
	movl	(%eax),%eax
	movl	$1,%ecx
	call	L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub
	movl	-64(%ebp),%eax
	movl	-20(%ebp),%edx
	call	L_FREETYPE_FTERROR$ANSISTRING$LONGINT$stub
Lj684:
	jmp	Lj697
Lj672:
	movl	-4(%ebp),%eax
	shll	$6,%eax
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,16(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,12(%esp)
	movl	-16(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-16(%ebp),%eax
	movl	%eax,4(%esp)
	movl	8(%ebx),%eax
	movl	%eax,(%esp)
	call	L_FT_Set_Char_Size$stub
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	jne	Lj712
	jmp	Lj713
Lj712:
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-64(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,-76(%ebp)
	movl	$0,-80(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,-68(%ebp)
	movl	$0,-72(%ebp)
	leal	-80(%ebp),%edx
	movl	L_TC_FREETYPE_SERRSETCHARSIZE$non_lazy_ptr-Lj661(%edi),%eax
	movl	(%eax),%eax
	movl	$1,%ecx
	call	L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub
	movl	-64(%ebp),%eax
	movl	-20(%ebp),%edx
	call	L_FREETYPE_FTERROR$ANSISTRING$LONGINT$stub
Lj713:
Lj697:
Lj664:
	call	LFPC_POPADDRSTACK$stub
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj665
	call	LFPC_RERAISE$stub
Lj665:
	movl	-92(%ebp),%ebx
	movl	-88(%ebp),%esi
	movl	-84(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FREETYPE_TFONTMANAGER_$_SETPIXELSIZE$LONGINT$LONGINT_CHECKSIZE
_FREETYPE_TFONTMANAGER_$_SETPIXELSIZE$LONGINT$LONGINT_CHECKSIZE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-40(%ebp)
	movl	%esi,-36(%ebp)
	call	Lj663
Lj663:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-12(%eax),%eax
	movl	24(%eax),%eax
	movl	8(%eax),%ebx
	movl	28(%ebx),%eax
	movl	%eax,-8(%ebp)
	.align 2
Lj730:
	decl	-8(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj732
	jmp	Lj733
Lj733:
	movl	32(%ebx),%eax
	movl	-8(%ebp),%edx
	movswl	(%eax,%edx,4),%eax
	movl	-4(%ebp),%edx
	cmpl	-4(%edx),%eax
	je	Lj734
	jmp	Lj730
Lj734:
	movl	32(%ebx),%eax
	movl	-8(%ebp),%edx
	movswl	2(%eax,%edx,4),%eax
	movl	-4(%ebp),%edx
	cmpl	-4(%edx),%eax
	je	Lj732
	jmp	Lj730
Lj732:
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jge	Lj735
	jmp	Lj736
Lj735:
	movl	$2,(%esp)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	%eax,-28(%ebp)
	movl	$0,-32(%ebp)
	movl	24(%ebx),%eax
	movl	%eax,-20(%ebp)
	movl	$6,-24(%ebp)
	movl	20(%ebx),%eax
	movl	%eax,-12(%ebp)
	movl	$6,-16(%ebp)
	leal	-32(%ebp),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_FREETYPE_FREETYPEEXCEPTION$non_lazy_ptr-Lj663(%esi),%edx
	movl	L_$FREETYPE$_Ld43$non_lazy_ptr-Lj663(%esi),%ecx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION$stub
La4:
	movl	%ebp,%ecx
	leal	La4-Lj663(%esi),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj736:
	movl	-40(%ebp),%ebx
	movl	-36(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FREETYPE_TFONTMANAGER_$__MAKETRANSFORMATION$REAL$FT_MATRIX
_FREETYPE_TFONTMANAGER_$__MAKETRANSFORMATION$REAL$FT_MATRIX:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	call	Lj748
Lj748:
	popl	%ecx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	fldl	8(%ebp)
	fcos
	movl	L_$FREETYPE$_Ld45$non_lazy_ptr-Lj748(%ecx),%eax
	fldt	(%eax)
	fmulp	%st,%st(1)
	fistpq	-16(%ebp)
	fwait
	movl	-16(%ebp),%eax
	movl	%eax,(%edx)
	fldl	8(%ebp)
	fsin
	fchs
	movl	L_$FREETYPE$_Ld45$non_lazy_ptr-Lj748(%ecx),%eax
	fldt	(%eax)
	fmulp	%st,%st(1)
	fistpq	-16(%ebp)
	fwait
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	%edx,4(%eax)
	movl	-4(%ebp),%edx
	fldl	8(%ebp)
	fsin
	movl	L_$FREETYPE$_Ld45$non_lazy_ptr-Lj748(%ecx),%eax
	fldt	(%eax)
	fmulp	%st,%st(1)
	fistpq	-16(%ebp)
	fwait
	movl	-16(%ebp),%eax
	movl	%eax,8(%edx)
	movl	-4(%ebp),%edx
	fldl	8(%ebp)
	fcos
	movl	L_$FREETYPE$_Ld45$non_lazy_ptr-Lj748(%ecx),%eax
	fldt	(%eax)
	fmulp	%st,%st(1)
	fistpq	-16(%ebp)
	fwait
	movl	-16(%ebp),%eax
	movl	%eax,12(%edx)
	leave
	ret

.text
	.align 4
.globl	_FREETYPE_TFONTMANAGER_$__CREATEGLYPH$CHAR$$PMGRGLYPH
_FREETYPE_TFONTMANAGER_$__CREATEGLYPH$CHAR$$PMGRGLYPH:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-20(%ebp)
	call	Lj758
Lj758:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	$12,%eax
	call	Lfpc_getmem$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movb	$0,%cl
	movl	$4,%edx
	call	L_SYSTEM_FILLBYTE$formal$LONGINT$BYTE$stub
	movl	-12(%ebp),%eax
	movb	-4(%ebp),%dl
	movb	%dl,(%eax)
	movzbl	-4(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-8(%ebp),%eax
	movl	24(%eax),%eax
	movl	8(%eax),%eax
	movl	%eax,(%esp)
	call	L_FT_Get_Char_Index$stub
	movl	-12(%ebp),%edx
	movl	%eax,4(%edx)
	movl	$0,8(%esp)
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	-8(%ebp),%eax
	movl	24(%eax),%eax
	movl	8(%eax),%eax
	movl	%eax,(%esp)
	call	L_FT_Load_Glyph$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj787
	jmp	Lj788
Lj787:
	movl	-16(%ebp),%edx
	movl	L_TC_FREETYPE_SERRLOADINGGLYPH$non_lazy_ptr-Lj758(%ebx),%eax
	movl	(%eax),%eax
	call	L_FREETYPE_FTERROR$ANSISTRING$LONGINT$stub
Lj788:
	movl	-12(%ebp),%eax
	leal	8(%eax),%eax
	movl	%eax,4(%esp)
	movl	-8(%ebp),%eax
	movl	24(%eax),%eax
	movl	8(%eax),%eax
	movl	84(%eax),%eax
	movl	%eax,(%esp)
	call	L_FT_Get_Glyph$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj799
	jmp	Lj800
Lj799:
	movl	-16(%ebp),%edx
	movl	L_TC_FREETYPE_SERRLOADINGGLYPH$non_lazy_ptr-Lj758(%ebx),%eax
	movl	(%eax),%eax
	call	L_FREETYPE_FTERROR$ANSISTRING$LONGINT$stub
Lj800:
	movl	-8(%ebp),%eax
	movl	28(%eax),%eax
	movl	8(%eax),%eax
	movl	-12(%ebp),%edx
	call	L_CLASSES_TLIST_$__ADD$POINTER$$LONGINT$stub
	movl	-12(%ebp),%eax
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FREETYPE_TFONTMANAGER_$__GETGLYPH$CHAR$$PMGRGLYPH
_FREETYPE_TFONTMANAGER_$__GETGLYPH$CHAR$$PMGRGLYPH:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	28(%eax),%ebx
	movl	8(%ebx),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	movl	%eax,-16(%ebp)
	.align 2
Lj817:
	decl	-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj819
	jmp	Lj820
Lj820:
	movl	-16(%ebp),%edx
	movl	8(%ebx),%eax
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movb	(%eax),%al
	cmpb	-4(%ebp),%al
	je	Lj819
	jmp	Lj817
Lj819:
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj825
	jmp	Lj826
Lj825:
	movb	-4(%ebp),%dl
	movl	-8(%ebp),%eax
	call	L_FREETYPE_TFONTMANAGER_$__CREATEGLYPH$CHAR$$PMGRGLYPH$stub
	movl	%eax,-12(%ebp)
	jmp	Lj833
Lj826:
	movl	-16(%ebp),%edx
	movl	8(%ebx),%eax
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,-12(%ebp)
Lj833:
	movl	-12(%ebp),%eax
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FREETYPE_TFONTMANAGER_$__INITMAKESTRING$LONGINT$LONGINT
_FREETYPE_TFONTMANAGER_$__INITMAKESTRING$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	20(%eax),%ecx
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FREETYPE_TFONTMANAGER_$__GETSIZE$LONGINT$LONGINT$stub
	movl	-12(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	24(%eax),%eax
	movl	8(%eax),%eax
	movl	8(%eax),%eax
	andl	$64,%eax
	testl	%eax,%eax
	setneb	36(%edx)
	leave
	ret

.text
	.align 4
.globl	_FREETYPE_TFONTMANAGER_$__MAKESTRING$LONGINT$ANSISTRING$LONGINT$REAL$$TSTRINGBITMAPS
_FREETYPE_TFONTMANAGER_$__MAKESTRING$LONGINT$ANSISTRING$LONGINT$REAL$$TSTRINGBITMAPS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$200,%esp
	movl	%ebx,-172(%ebp)
	movl	%esi,-168(%ebp)
	movl	%edi,-164(%ebp)
	call	Lj851
Lj851:
	popl	-156(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-116(%ebp),%ecx
	leal	-140(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-144(%ebp)
	testl	%eax,%eax
	jne	Lj852
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FREETYPE_TFONTMANAGER_$__GETFONT$LONGINT$$TMGRFONT$stub
	movl	-12(%ebp),%edx
	movl	%eax,24(%edx)
	fldz
	fldl	8(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	je	Lj861
	jmp	Lj863
Lj863:
	movl	-12(%ebp),%eax
	movl	24(%eax),%eax
	movl	8(%eax),%eax
	movl	8(%eax),%eax
	andl	$1,%eax
	testl	%eax,%eax
	je	Lj861
	jmp	Lj862
Lj861:
	movl	16(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FREETYPE_TFONTMANAGER_$__MAKESTRING$LONGINT$ANSISTRING$LONGINT$$TSTRINGBITMAPS$stub
	movl	%eax,-16(%ebp)
	jmp	Lj874
Lj862:
	movl	16(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FREETYPE_TFONTMANAGER_$__INITMAKESTRING$LONGINT$LONGINT$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj883
	movl	-4(%eax),%eax
Lj883:
	movl	%eax,-40(%ebp)
	movl	-40(%ebp),%ecx
	movl	-156(%ebp),%eax
	movl	L_VMT_FREETYPE_TSTRINGBITMAPS$non_lazy_ptr-Lj851(%eax),%edx
	movl	$0,%eax
	call	L_FREETYPE_TSTRINGBITMAPS_$__CREATE$LONGINT$$TSTRINGBITMAPS$stub
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%eax
	movl	32(%eax),%eax
	cmpl	$2,%eax
	je	Lj892
	jmp	Lj893
Lj892:
	movl	-16(%ebp),%eax
	movl	$0,28(%eax)
	jmp	Lj896
Lj893:
	movl	-16(%ebp),%eax
	movl	$1,28(%eax)
Lj896:
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-104(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FREETYPE_TFONTMANAGER_$__MAKETRANSFORMATION$REAL$FT_MATRIX$stub
	movl	$0,-32(%ebp)
	movl	$0,-36(%ebp)
	movl	$0,-72(%ebp)
	movl	$0,-68(%ebp)
	movl	$0,-56(%ebp)
	movl	$0,-52(%ebp)
	movl	-40(%ebp),%eax
	decl	%eax
	movl	%eax,-152(%ebp)
	movl	$0,-44(%ebp)
	movl	-152(%ebp),%eax
	cmpl	-44(%ebp),%eax
	jl	Lj918
	decl	-44(%ebp)
	.align 2
Lj919:
	incl	-44(%ebp)
	movl	-8(%ebp),%edx
	movl	-44(%ebp),%eax
	incl	%eax
	movb	-1(%edx,%eax,1),%dl
	movl	-12(%ebp),%eax
	call	L_FREETYPE_TFONTMANAGER_$__GETGLYPH$CHAR$$PMGRGLYPH$stub
	movl	%eax,-20(%ebp)
	movl	-12(%ebp),%eax
	cmpb	$0,36(%eax)
	jne	Lj929
	jmp	Lj927
Lj929:
	movl	-20(%ebp),%eax
	movl	4(%eax),%eax
	testl	%eax,%eax
	jne	Lj928
	jmp	Lj927
Lj928:
	movl	-32(%ebp),%eax
	testl	%eax,%eax
	jne	Lj926
	jmp	Lj927
Lj926:
	movl	-56(%ebp),%eax
	movl	%eax,-36(%ebp)
	movl	$0,12(%esp)
	leal	-80(%ebp),%eax
	movl	%eax,16(%esp)
	movl	-32(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-20(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,8(%esp)
	movl	-12(%ebp),%eax
	movl	24(%eax),%eax
	movl	8(%eax),%eax
	movl	%eax,(%esp)
	call	L_FT_Get_Kerning$stub
	movl	-156(%ebp),%edx
	movl	L_TC_FREETYPE_SERRKERNING$non_lazy_ptr-Lj851(%edx),%ecx
	movl	(%ecx),%edx
	call	L_FREETYPE_FTCHECK$LONGINT$ANSISTRING$$LONGINT$stub
	movl	-56(%ebp),%edx
	movl	-80(%ebp),%eax
	addl	%eax,%edx
	movl	%edx,-56(%ebp)
Lj927:
	movl	$0,-28(%ebp)
	leal	-28(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-20(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,(%esp)
	call	L_FT_Glyph_Copy$stub
	movl	-156(%ebp),%edx
	movl	L_TC_FREETYPE_SERRMAKINGSTRING1$non_lazy_ptr-Lj851(%edx),%ecx
	movl	(%ecx),%edx
	call	L_FREETYPE_FTCHECK$LONGINT$ANSISTRING$$LONGINT$stub
	movl	$0,4(%esp)
	movl	-28(%ebp),%eax
	movl	%eax,(%esp)
	leal	-56(%ebp),%eax
	movl	%eax,8(%esp)
	call	L_FT_Glyph_Transform$stub
	movl	-156(%ebp),%edx
	movl	L_TC_FREETYPE_SERRMAKINGSTRING2$non_lazy_ptr-Lj851(%edx),%ecx
	movl	(%ecx),%edx
	call	L_FREETYPE_FTCHECK$LONGINT$ANSISTRING$$LONGINT$stub
	movl	-28(%ebp),%edx
	movl	12(%edx),%eax
	movl	%eax,-64(%ebp)
	movl	16(%edx),%eax
	movl	%eax,-60(%ebp)
	movl	$0,8(%esp)
	movl	-28(%ebp),%eax
	movl	%eax,(%esp)
	leal	-104(%ebp),%eax
	movl	%eax,4(%esp)
	call	L_FT_Glyph_Transform$stub
	movl	-156(%ebp),%edx
	movl	L_TC_FREETYPE_SERRMAKINGSTRING3$non_lazy_ptr-Lj851(%edx),%ecx
	movl	(%ecx),%edx
	call	L_FREETYPE_FTCHECK$LONGINT$ANSISTRING$$LONGINT$stub
	movl	$1,12(%esp)
	movl	$0,8(%esp)
	leal	-28(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movl	32(%eax),%eax
	movl	%eax,4(%esp)
	call	L_FT_Glyph_To_Bitmap$stub
	movl	-156(%ebp),%edx
	movl	L_TC_FREETYPE_SERRMAKINGSTRING4$non_lazy_ptr-Lj851(%edx),%ecx
	movl	(%ecx),%edx
	call	L_FREETYPE_FTCHECK$LONGINT$ANSISTRING$$LONGINT$stub
	movl	-28(%ebp),%eax
	movl	%eax,-24(%ebp)
	movl	-44(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_FREETYPE_TSTRINGBITMAPS_$__GETBITMAP$LONGINT$$PFONTBITMAP$stub
	movl	%eax,-148(%ebp)
	movl	-28(%ebp),%eax
	leal	12(%eax),%ecx
	movl	(%ecx),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	andl	$63,%eax
	addl	%eax,%edx
	sarl	$6,%edx
	movl	-148(%ebp),%eax
	movl	%edx,20(%eax)
	movl	4(%ecx),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	andl	$63,%eax
	addl	%eax,%edx
	sarl	$6,%edx
	movl	-148(%ebp),%eax
	movl	%edx,24(%eax)
	movl	-24(%ebp),%eax
	movl	%eax,-160(%ebp)
	movl	-160(%ebp),%eax
	movl	28(%eax),%edx
	movl	-148(%ebp),%eax
	movl	%edx,(%eax)
	movl	-160(%ebp),%eax
	movl	32(%eax),%edx
	movl	-148(%ebp),%eax
	movl	%edx,4(%eax)
	movl	-160(%ebp),%eax
	movl	20(%eax),%edx
	movl	-148(%ebp),%eax
	movl	%edx,12(%eax)
	movl	-160(%ebp),%eax
	movl	24(%eax),%edx
	negl	%edx
	movl	-148(%ebp),%eax
	movl	%edx,16(%eax)
	movl	-160(%ebp),%edx
	movl	40(%edx),%eax
	movl	%eax,-84(%ebp)
	movl	-160(%ebp),%edx
	movl	36(%edx),%eax
	cmpl	$0,%eax
	setlb	-85(%ebp)
	cmpb	$0,-85(%ebp)
	jne	Lj1020
	jmp	Lj1021
Lj1020:
	movl	-160(%ebp),%eax
	movl	36(%eax),%edx
	negl	%edx
	movl	-148(%ebp),%eax
	movl	%edx,8(%eax)
	movl	-148(%ebp),%eax
	movl	8(%eax),%edx
	movl	-148(%ebp),%eax
	movl	(%eax),%ecx
	imull	%ecx,%edx
	movl	-148(%ebp),%ecx
	leal	28(%ecx),%eax
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	movl	-148(%ebp),%edx
	movl	(%edx),%eax
	decl	%eax
	movl	%eax,-48(%ebp)
	cmpl	$0,-48(%ebp)
	jl	Lj1029
	incl	-48(%ebp)
	.align 2
Lj1030:
	decl	-48(%ebp)
	movl	-148(%ebp),%eax
	movl	8(%eax),%ecx
	movl	-148(%ebp),%eax
	movl	28(%eax),%edx
	movl	-148(%ebp),%eax
	movl	(%eax),%ebx
	movl	-48(%ebp),%eax
	subl	%eax,%ebx
	decl	%ebx
	movl	-148(%ebp),%eax
	movl	8(%eax),%esi
	imull	%esi,%ebx
	movl	%ebx,%eax
	leal	(%edx,%eax,1),%edx
	movl	-84(%ebp),%eax
	movl	-48(%ebp),%ebx
	movl	-148(%ebp),%edi
	movl	8(%edi),%esi
	imull	%esi,%ebx
	leal	(%eax,%ebx,1),%eax
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	cmpl	$0,-48(%ebp)
	jg	Lj1030
Lj1029:
	jmp	Lj1037
Lj1021:
	movl	-160(%ebp),%eax
	movl	36(%eax),%edx
	movl	-148(%ebp),%eax
	movl	%edx,8(%eax)
	movl	-148(%ebp),%eax
	movl	8(%eax),%ecx
	movl	-148(%ebp),%edx
	movl	(%edx),%eax
	imull	%eax,%ecx
	movl	%ecx,-48(%ebp)
	movl	-48(%ebp),%edx
	movl	-148(%ebp),%ecx
	leal	28(%ecx),%eax
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	movl	-84(%ebp),%eax
	movl	-48(%ebp),%ecx
	movl	-148(%ebp),%edx
	movl	28(%edx),%ebx
	movl	%ebx,%edx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
Lj1037:
	movl	-28(%ebp),%eax
	leal	12(%eax),%ecx
	movl	(%ecx),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	andl	$1023,%eax
	addl	%eax,%edx
	sarl	$10,%edx
	movl	-72(%ebp),%eax
	addl	%eax,%edx
	movl	%edx,-72(%ebp)
	movl	4(%ecx),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	andl	$1023,%eax
	addl	%eax,%edx
	sarl	$10,%edx
	movl	-68(%ebp),%eax
	addl	%eax,%edx
	movl	%edx,-68(%ebp)
	movl	-64(%ebp),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	andl	$1023,%eax
	addl	%eax,%edx
	sarl	$10,%edx
	movl	-56(%ebp),%eax
	addl	%eax,%edx
	movl	%edx,-56(%ebp)
	movl	-36(%ebp),%eax
	cmpl	-56(%ebp),%eax
	jg	Lj1060
	jmp	Lj1061
Lj1060:
	movl	-36(%ebp),%eax
	movl	%eax,-56(%ebp)
Lj1061:
	movl	-28(%ebp),%eax
	movl	%eax,(%esp)
	call	L_FT_Done_Glyph$stub
	movl	-152(%ebp),%eax
	cmpl	-44(%ebp),%eax
	jg	Lj919
Lj918:
	movl	-8(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-16(%ebp),%ebx
	leal	24(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-8(%ebp),%eax
	movl	%eax,24(%ebx)
	movl	-16(%ebp),%eax
	call	L_FREETYPE_TSTRINGBITMAPS_$__CALCULATEGLOBALS$stub
Lj874:
Lj852:
	call	LFPC_POPADDRSTACK$stub
	leal	-8(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-144(%ebp),%eax
	testl	%eax,%eax
	je	Lj853
	call	LFPC_RERAISE$stub
Lj853:
	movl	-16(%ebp),%eax
	movl	-172(%ebp),%ebx
	movl	-168(%ebp),%esi
	movl	-164(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FREETYPE_TFONTMANAGER_$__MAKESTRING$LONGINT$ANSISTRING$LONGINT$$TSTRINGBITMAPS
_FREETYPE_TFONTMANAGER_$__MAKESTRING$LONGINT$ANSISTRING$LONGINT$$TSTRINGBITMAPS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$168,%esp
	movl	%ebx,-144(%ebp)
	movl	%esi,-140(%ebp)
	movl	%edi,-136(%ebp)
	call	Lj1071
Lj1071:
	popl	-128(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-88(%ebp),%ecx
	leal	-112(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-116(%ebp)
	testl	%eax,%eax
	jne	Lj1072
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FREETYPE_TFONTMANAGER_$__GETFONT$LONGINT$$TMGRFONT$stub
	movl	-12(%ebp),%edx
	movl	%eax,24(%edx)
	movl	8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FREETYPE_TFONTMANAGER_$__INITMAKESTRING$LONGINT$LONGINT$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj1089
	movl	-4(%eax),%eax
Lj1089:
	movl	%eax,-44(%ebp)
	movl	-44(%ebp),%ecx
	movl	-128(%ebp),%eax
	movl	L_VMT_FREETYPE_TSTRINGBITMAPS$non_lazy_ptr-Lj1071(%eax),%edx
	movl	$0,%eax
	call	L_FREETYPE_TSTRINGBITMAPS_$__CREATE$LONGINT$$TSTRINGBITMAPS$stub
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%eax
	movl	32(%eax),%eax
	cmpl	$2,%eax
	je	Lj1098
	jmp	Lj1099
Lj1098:
	movl	-16(%ebp),%eax
	movl	$0,28(%eax)
	jmp	Lj1102
Lj1099:
	movl	-16(%ebp),%eax
	movl	$1,28(%eax)
Lj1102:
	movl	$0,-36(%ebp)
	movl	$0,-40(%ebp)
	movl	$0,-60(%ebp)
	movl	$0,-56(%ebp)
	movl	-44(%ebp),%eax
	decl	%eax
	movl	%eax,-124(%ebp)
	movl	$0,-48(%ebp)
	movl	-124(%ebp),%eax
	cmpl	-48(%ebp),%eax
	jl	Lj1114
	decl	-48(%ebp)
	.align 2
Lj1115:
	incl	-48(%ebp)
	movl	-8(%ebp),%edx
	movl	-48(%ebp),%eax
	incl	%eax
	movb	-1(%edx,%eax,1),%dl
	movl	-12(%ebp),%eax
	call	L_FREETYPE_TFONTMANAGER_$__GETGLYPH$CHAR$$PMGRGLYPH$stub
	movl	%eax,-20(%ebp)
	movl	-12(%ebp),%eax
	cmpb	$0,36(%eax)
	jne	Lj1125
	jmp	Lj1123
Lj1125:
	movl	-20(%ebp),%eax
	movl	4(%eax),%eax
	testl	%eax,%eax
	jne	Lj1124
	jmp	Lj1123
Lj1124:
	movl	-36(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1122
	jmp	Lj1123
Lj1122:
	movl	-60(%ebp),%eax
	movl	%eax,-40(%ebp)
	movl	$0,12(%esp)
	leal	-68(%ebp),%eax
	movl	%eax,16(%esp)
	movl	-36(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-20(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,8(%esp)
	movl	-12(%ebp),%eax
	movl	24(%eax),%eax
	movl	8(%eax),%eax
	movl	%eax,(%esp)
	call	L_FT_Get_Kerning$stub
	movl	%eax,-32(%ebp)
	movl	-32(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1140
	jmp	Lj1141
Lj1140:
	movl	-32(%ebp),%edx
	movl	-128(%ebp),%eax
	movl	L_TC_FREETYPE_SERRKERNING$non_lazy_ptr-Lj1071(%eax),%ecx
	movl	(%ecx),%eax
	call	L_FREETYPE_FTERROR$ANSISTRING$LONGINT$stub
Lj1141:
	movl	-60(%ebp),%edx
	movl	-68(%ebp),%eax
	addl	%eax,%edx
	movl	%edx,-60(%ebp)
Lj1123:
	leal	-28(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-20(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,(%esp)
	call	L_FT_Glyph_Copy$stub
	movl	-128(%ebp),%edx
	movl	L_TC_FREETYPE_SERRMAKINGSTRING1$non_lazy_ptr-Lj1071(%edx),%ecx
	movl	(%ecx),%edx
	call	L_FREETYPE_FTCHECK$LONGINT$ANSISTRING$$LONGINT$stub
	movl	$1,12(%esp)
	leal	-28(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movl	32(%eax),%eax
	movl	%eax,4(%esp)
	leal	-60(%ebp),%eax
	movl	%eax,8(%esp)
	call	L_FT_Glyph_To_Bitmap$stub
	movl	-128(%ebp),%edx
	movl	L_TC_FREETYPE_SERRMAKINGSTRING4$non_lazy_ptr-Lj1071(%edx),%ecx
	movl	(%ecx),%edx
	call	L_FREETYPE_FTCHECK$LONGINT$ANSISTRING$$LONGINT$stub
	movl	-28(%ebp),%eax
	movl	%eax,-24(%ebp)
	movl	-48(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_FREETYPE_TSTRINGBITMAPS_$__GETBITMAP$LONGINT$$PFONTBITMAP$stub
	movl	%eax,-120(%ebp)
	movl	-28(%ebp),%eax
	leal	12(%eax),%ecx
	movl	(%ecx),%edx
	shrl	$6,%edx
	movl	-120(%ebp),%eax
	movl	%edx,20(%eax)
	movl	4(%ecx),%edx
	shrl	$6,%edx
	movl	-120(%ebp),%eax
	movl	%edx,24(%eax)
	movl	-24(%ebp),%eax
	movl	%eax,-132(%ebp)
	movl	-132(%ebp),%eax
	movl	28(%eax),%edx
	movl	-120(%ebp),%eax
	movl	%edx,(%eax)
	movl	-132(%ebp),%eax
	movl	32(%eax),%edx
	movl	-120(%ebp),%eax
	movl	%edx,4(%eax)
	movl	-60(%ebp),%ecx
	shrl	$6,%ecx
	movl	-132(%ebp),%eax
	movl	20(%eax),%edx
	addl	%edx,%ecx
	movl	-120(%ebp),%eax
	movl	%ecx,12(%eax)
	movl	-56(%ebp),%ecx
	shrl	$6,%ecx
	movl	-132(%ebp),%eax
	movl	24(%eax),%edx
	subl	%edx,%ecx
	movl	-120(%ebp),%eax
	movl	%ecx,16(%eax)
	movl	-132(%ebp),%edx
	movl	40(%edx),%eax
	movl	%eax,-72(%ebp)
	movl	-132(%ebp),%edx
	movl	36(%edx),%eax
	cmpl	$0,%eax
	setlb	-73(%ebp)
	cmpb	$0,-73(%ebp)
	jne	Lj1196
	jmp	Lj1197
Lj1196:
	movl	-132(%ebp),%eax
	movl	36(%eax),%edx
	negl	%edx
	movl	-120(%ebp),%eax
	movl	%edx,8(%eax)
	movl	-120(%ebp),%eax
	movl	8(%eax),%edx
	movl	-120(%ebp),%eax
	movl	(%eax),%ecx
	imull	%ecx,%edx
	movl	-120(%ebp),%ecx
	leal	28(%ecx),%eax
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	movl	-120(%ebp),%eax
	movl	(%eax),%edx
	decl	%edx
	movl	%edx,-52(%ebp)
	cmpl	$0,-52(%ebp)
	jl	Lj1205
	incl	-52(%ebp)
	.align 2
Lj1206:
	decl	-52(%ebp)
	movl	-120(%ebp),%eax
	movl	8(%eax),%ecx
	movl	-120(%ebp),%eax
	movl	28(%eax),%edx
	movl	-120(%ebp),%eax
	movl	(%eax),%ebx
	movl	-52(%ebp),%eax
	subl	%eax,%ebx
	decl	%ebx
	movl	-120(%ebp),%eax
	movl	8(%eax),%esi
	imull	%esi,%ebx
	movl	%ebx,%eax
	leal	(%edx,%eax,1),%edx
	movl	-72(%ebp),%eax
	movl	-52(%ebp),%ebx
	movl	-120(%ebp),%edi
	movl	8(%edi),%esi
	imull	%esi,%ebx
	leal	(%eax,%ebx,1),%eax
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	cmpl	$0,-52(%ebp)
	jg	Lj1206
Lj1205:
	jmp	Lj1213
Lj1197:
	movl	-132(%ebp),%eax
	movl	36(%eax),%edx
	movl	-120(%ebp),%eax
	movl	%edx,8(%eax)
	movl	-120(%ebp),%eax
	movl	8(%eax),%ecx
	movl	-120(%ebp),%eax
	movl	(%eax),%edx
	imull	%edx,%ecx
	movl	%ecx,-52(%ebp)
	movl	-52(%ebp),%edx
	movl	-120(%ebp),%ecx
	leal	28(%ecx),%eax
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	movl	-72(%ebp),%eax
	movl	-52(%ebp),%ecx
	movl	-120(%ebp),%edx
	movl	28(%edx),%ebx
	movl	%ebx,%edx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
Lj1213:
	movl	-28(%ebp),%eax
	movl	12(%eax),%eax
	shrl	$11,%eax
	movl	-60(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-60(%ebp)
	movl	-40(%ebp),%eax
	cmpl	-60(%ebp),%eax
	jg	Lj1230
	jmp	Lj1231
Lj1230:
	movl	-40(%ebp),%eax
	movl	%eax,-60(%ebp)
Lj1231:
	movl	-28(%ebp),%eax
	movl	%eax,(%esp)
	call	L_FT_Done_Glyph$stub
	movl	-124(%ebp),%eax
	cmpl	-48(%ebp),%eax
	jg	Lj1115
Lj1114:
	movl	-8(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-16(%ebp),%ebx
	leal	24(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-8(%ebp),%eax
	movl	%eax,24(%ebx)
	movl	-16(%ebp),%eax
	call	L_FREETYPE_TSTRINGBITMAPS_$__CALCULATEGLOBALS$stub
Lj1072:
	call	LFPC_POPADDRSTACK$stub
	leal	-8(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-116(%ebp),%eax
	testl	%eax,%eax
	je	Lj1073
	call	LFPC_RERAISE$stub
Lj1073:
	movl	-16(%ebp),%eax
	movl	-144(%ebp),%ebx
	movl	-140(%ebp),%esi
	movl	-136(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FREETYPE_TFONTMANAGER_$__GETSTRING$LONGINT$ANSISTRING$LONGINT$REAL$$TSTRINGBITMAPS
_FREETYPE_TFONTMANAGER_$__GETSTRING$LONGINT$ANSISTRING$LONGINT$REAL$$TSTRINGBITMAPS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj1242
	movl	-12(%ebp),%eax
	movl	$2,32(%eax)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	16(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FREETYPE_TFONTMANAGER_$__MAKESTRING$LONGINT$ANSISTRING$LONGINT$REAL$$TSTRINGBITMAPS$stub
	movl	%eax,-16(%ebp)
Lj1242:
	call	LFPC_POPADDRSTACK$stub
	leal	-8(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj1243
	call	LFPC_RERAISE$stub
Lj1243:
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FREETYPE_TFONTMANAGER_$__GETSTRINGGRAY$LONGINT$ANSISTRING$LONGINT$REAL$$TSTRINGBITMAPS
_FREETYPE_TFONTMANAGER_$__GETSTRINGGRAY$LONGINT$ANSISTRING$LONGINT$REAL$$TSTRINGBITMAPS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj1261
	movl	-12(%ebp),%eax
	movl	$0,32(%eax)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	16(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FREETYPE_TFONTMANAGER_$__MAKESTRING$LONGINT$ANSISTRING$LONGINT$REAL$$TSTRINGBITMAPS$stub
	movl	%eax,-16(%ebp)
Lj1261:
	call	LFPC_POPADDRSTACK$stub
	leal	-8(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj1262
	call	LFPC_RERAISE$stub
Lj1262:
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FREETYPE_TFONTMANAGER_$__GETSTRING$LONGINT$ANSISTRING$LONGINT$$TSTRINGBITMAPS
_FREETYPE_TFONTMANAGER_$__GETSTRING$LONGINT$ANSISTRING$LONGINT$$TSTRINGBITMAPS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj1280
	movl	-12(%ebp),%eax
	movl	$2,32(%eax)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FREETYPE_TFONTMANAGER_$__MAKESTRING$LONGINT$ANSISTRING$LONGINT$$TSTRINGBITMAPS$stub
	movl	%eax,-16(%ebp)
Lj1280:
	call	LFPC_POPADDRSTACK$stub
	leal	-8(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj1281
	call	LFPC_RERAISE$stub
Lj1281:
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FREETYPE_TFONTMANAGER_$__GETSTRINGGRAY$LONGINT$ANSISTRING$LONGINT$$TSTRINGBITMAPS
_FREETYPE_TFONTMANAGER_$__GETSTRINGGRAY$LONGINT$ANSISTRING$LONGINT$$TSTRINGBITMAPS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj1297
	movl	-12(%ebp),%eax
	movl	$0,32(%eax)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FREETYPE_TFONTMANAGER_$__MAKESTRING$LONGINT$ANSISTRING$LONGINT$$TSTRINGBITMAPS$stub
	movl	%eax,-16(%ebp)
Lj1297:
	call	LFPC_POPADDRSTACK$stub
	leal	-8(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj1298
	call	LFPC_RERAISE$stub
Lj1298:
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FREETYPE_TFONTMANAGER_$__REQUESTFONT$ANSISTRING$$LONGINT
_FREETYPE_TFONTMANAGER_$__REQUESTFONT$ANSISTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj1314
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$0,%ecx
	call	L_FREETYPE_TFONTMANAGER_$__REQUESTFONT$ANSISTRING$LONGINT$$LONGINT$stub
	movl	%eax,-12(%ebp)
Lj1314:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj1315
	call	LFPC_RERAISE$stub
Lj1315:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FREETYPE_TFONTMANAGER_$__REQUESTFONT$ANSISTRING$LONGINT$$LONGINT
_FREETYPE_TFONTMANAGER_$__REQUESTFONT$ANSISTRING$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	$0,-20(%ebp)
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-60(%ebp)
	testl	%eax,%eax
	jne	Lj1327
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj1330
	jmp	Lj1331
Lj1330:
	movl	$-1,-16(%ebp)
	jmp	Lj1334
Lj1331:
	leal	-20(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FREETYPE_TFONTMANAGER_$__SEARCHFONT$ANSISTRING$$ANSISTRING$stub
	movl	-8(%ebp),%ecx
	movl	-20(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FREETYPE_TFONTMANAGER_$__GETFONTID$ANSISTRING$LONGINT$$LONGINT$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj1349
	jmp	Lj1350
Lj1349:
	movl	-8(%ebp),%ecx
	movl	-20(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FREETYPE_TFONTMANAGER_$__CREATEFONT$ANSISTRING$LONGINT$$LONGINT$stub
	movl	%eax,-16(%ebp)
Lj1350:
Lj1334:
Lj1327:
	call	LFPC_POPADDRSTACK$stub
	leal	-20(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-20(%ebp)
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj1328
	call	LFPC_RERAISE$stub
Lj1328:
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FREETYPE_TFONTMANAGER_$__GETFREETYPEFONT$LONGINT$$PFT_FACE
_FREETYPE_TFONTMANAGER_$__GETFREETYPEFONT$LONGINT$$PFT_FACE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FREETYPE_TFONTMANAGER_$__GETFONT$LONGINT$$TMGRFONT$stub
	movl	8(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FREETYPE_TSTRINGBITMAPS_$__GETCOUNT$$LONGINT
_FREETYPE_TSTRINGBITMAPS_$__GETCOUNT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FREETYPE_TSTRINGBITMAPS_$__GETBITMAP$LONGINT$$PFONTBITMAP
_FREETYPE_TSTRINGBITMAPS_$__GETBITMAP$LONGINT$$PFONTBITMAP:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FREETYPE_TSTRINGBITMAPS_$__CREATE$LONGINT$$TSTRINGBITMAPS
_FREETYPE_TSTRINGBITMAPS_$__CREATE$LONGINT$$TSTRINGBITMAPS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$120,%esp
	movl	%ebx,-108(%ebp)
	movl	%esi,-104(%ebp)
	call	Lj1388
Lj1388:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj1389
	jmp	Lj1390
Lj1389:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj1390:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj1395
	jmp	Lj1396
Lj1395:
	jmp	Lj1387
Lj1396:
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-60(%ebp)
	testl	%eax,%eax
	jne	Lj1399
	leal	-72(%ebp),%ecx
	leal	-96(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-100(%ebp)
	testl	%eax,%eax
	jne	Lj1403
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	L_VMT_CLASSES_TLIST$non_lazy_ptr-Lj1388(%ebx),%edx
	movl	$0,%eax
	call	L_CLASSES_TLIST_$__CREATE$$TLIST$stub
	movl	-12(%ebp),%edx
	movl	%eax,4(%edx)
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_CLASSES_TLIST_$__SETCAPACITY$LONGINT$stub
	movl	-4(%ebp),%esi
	decl	%esi
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%esi
	jl	Lj1421
	decl	-16(%ebp)
	.align 2
Lj1422:
	incl	-16(%ebp)
	movl	$32,%eax
	call	Lfpc_getmem$stub
	movl	%eax,-20(%ebp)
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	-20(%ebp),%edx
	call	L_CLASSES_TLIST_$__ADD$POINTER$$LONGINT$stub
	cmpl	-16(%ebp),%esi
	jg	Lj1422
Lj1421:
Lj1403:
	call	LFPC_POPADDRSTACK$stub
	movl	-100(%ebp),%eax
	testl	%eax,%eax
	je	Lj1404
	call	LFPC_RERAISE$stub
Lj1404:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1435
	jmp	Lj1434
Lj1435:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1433
	jmp	Lj1434
Lj1433:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj1434:
Lj1399:
	call	LFPC_POPADDRSTACK$stub
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj1401
	leal	-72(%ebp),%ecx
	leal	-96(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-100(%ebp)
	testl	%eax,%eax
	jne	Lj1439
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1440
	jmp	Lj1441
Lj1440:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj1441:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj1439:
	call	LFPC_POPADDRSTACK$stub
	movl	-100(%ebp),%eax
	testl	%eax,%eax
	je	Lj1438
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj1438:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj1401
Lj1401:
Lj1387:
	movl	-12(%ebp),%eax
	movl	-108(%ebp),%ebx
	movl	-104(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FREETYPE_TSTRINGBITMAPS_$__DESTROY
_FREETYPE_TSTRINGBITMAPS_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj1448
	jmp	Lj1449
Lj1448:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj1449:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	movl	%eax,%ebx
	decl	%ebx
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%ebx
	jl	Lj1453
	decl	-12(%ebp)
	.align 2
Lj1454:
	incl	-12(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-12(%ebp),%edx
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	28(%eax),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
	movl	-16(%ebp),%eax
	call	Lfpc_freemem$stub
	cmpl	-12(%ebp),%ebx
	jg	Lj1454
Lj1453:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1475
	jmp	Lj1474
Lj1475:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1473
	jmp	Lj1474
Lj1473:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj1474:
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FREETYPE_TSTRINGBITMAPS_$__CALCULATEGLOBALS
_FREETYPE_TSTRINGBITMAPS_$__CALCULATEGLOBALS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_FREETYPE_TSTRINGBITMAPS_$__GETCOUNT$$LONGINT$stub
	testl	%eax,%eax
	je	Lj1480
	jmp	Lj1481
Lj1480:
	jmp	Lj1478
Lj1481:
	movl	-4(%ebp),%eax
	movl	$0,%edx
	call	L_FREETYPE_TSTRINGBITMAPS_$__GETBITMAP$LONGINT$$PFONTBITMAP$stub
	movl	-4(%ebp),%edx
	movl	12(%eax),%ecx
	movl	%ecx,8(%edx)
	movl	-4(%ebp),%edx
	movl	16(%eax),%ecx
	movl	(%eax),%ebx
	addl	%ebx,%ecx
	movl	%ecx,12(%edx)
	movl	-4(%ebp),%ecx
	movl	16(%eax),%edx
	movl	%edx,20(%ecx)
	movl	-4(%ebp),%eax
	call	L_FREETYPE_TSTRINGBITMAPS_$__GETCOUNT$$LONGINT$stub
	movl	%eax,%edx
	decl	%edx
	movl	-4(%ebp),%eax
	call	L_FREETYPE_TSTRINGBITMAPS_$__GETBITMAP$LONGINT$$PFONTBITMAP$stub
	movl	-4(%ebp),%ecx
	movl	12(%eax),%ebx
	movl	4(%eax),%edx
	addl	%edx,%ebx
	movl	%ebx,16(%ecx)
	movl	-4(%ebp),%eax
	call	L_FREETYPE_TSTRINGBITMAPS_$__GETCOUNT$$LONGINT$stub
	cmpl	$1,%eax
	jg	Lj1506
	jmp	Lj1507
Lj1506:
	movl	-4(%ebp),%eax
	movl	$1,%edx
	call	L_FREETYPE_TSTRINGBITMAPS_$__GETBITMAP$LONGINT$$PFONTBITMAP$stub
	movl	12(%eax),%edx
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	cmpl	-8(%ebp),%eax
	jg	Lj1518
	jmp	Lj1519
Lj1518:
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	%edx,8(%eax)
Lj1519:
	movl	-4(%ebp),%eax
	call	L_FREETYPE_TSTRINGBITMAPS_$__GETCOUNT$$LONGINT$stub
	movl	%eax,%edx
	subl	$2,%edx
	movl	-4(%ebp),%eax
	call	L_FREETYPE_TSTRINGBITMAPS_$__GETBITMAP$LONGINT$$PFONTBITMAP$stub
	movl	12(%eax),%edx
	movl	4(%eax),%ecx
	addl	%ecx,%edx
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	cmpl	-8(%ebp),%eax
	jl	Lj1532
	jmp	Lj1533
Lj1532:
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	%edx,16(%eax)
Lj1533:
Lj1507:
	movl	-4(%ebp),%eax
	call	L_FREETYPE_TSTRINGBITMAPS_$__GETCOUNT$$LONGINT$stub
	movl	%eax,%ebx
	decl	%ebx
	movl	$1,-8(%ebp)
	cmpl	-8(%ebp),%ebx
	jl	Lj1537
	decl	-8(%ebp)
	.align 2
Lj1538:
	incl	-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FREETYPE_TSTRINGBITMAPS_$__GETBITMAP$LONGINT$$PFONTBITMAP$stub
	movl	-4(%ebp),%ecx
	movl	16(%eax),%esi
	movl	(%eax),%edx
	addl	%edx,%esi
	cmpl	12(%ecx),%esi
	jg	Lj1547
	jmp	Lj1548
Lj1547:
	movl	-4(%ebp),%esi
	movl	16(%eax),%edx
	movl	(%eax),%ecx
	addl	%ecx,%edx
	movl	%edx,12(%esi)
Lj1548:
	movl	-4(%ebp),%edx
	movl	20(%edx),%edx
	cmpl	16(%eax),%edx
	jg	Lj1551
	jmp	Lj1552
Lj1551:
	movl	-4(%ebp),%edx
	movl	16(%eax),%ecx
	movl	%ecx,20(%edx)
Lj1552:
	cmpl	-8(%ebp),%ebx
	jg	Lj1538
Lj1537:
Lj1478:
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FREETYPE_TSTRINGBITMAPS_$__GETBOUNDRECT$TRECT
_FREETYPE_TSTRINGBITMAPS_$__GETBOUNDRECT$TRECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%esi,-16(%ebp)
	movl	%edi,-12(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edi
	leal	8(%eax),%esi
	cld
	movl	$4,%ecx
	rep
	movsl
	movl	-16(%ebp),%esi
	movl	-12(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_INIT$_FREETYPE
_INIT$_FREETYPE:
.reference __FREETYPE_init_implicit
.globl	__FREETYPE_init_implicit
__FREETYPE_init_implicit:
.reference _INIT$_FREETYPE
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	leave
	ret

.text
	.align 4
.globl	_FINALIZE$_FREETYPE
_FINALIZE$_FREETYPE:
.reference __FREETYPE_finalize_implicit
.globl	__FREETYPE_finalize_implicit
__FREETYPE_finalize_implicit:
.reference _FINALIZE$_FREETYPE
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-4(%ebp)
	call	Lj1562
Lj1562:
	popl	%ebx
	movl	L_TC_FREETYPE_SERRERRORSINCLEANUP$non_lazy_ptr-Lj1562(%ebx),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	L_TC_FREETYPE_SERRERRORSINCLEANUP$non_lazy_ptr-Lj1562(%ebx),%eax
	movl	$0,(%eax)
	movl	L_TC_FREETYPE_SERRFONTFILENOTFOUND$non_lazy_ptr-Lj1562(%ebx),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	L_TC_FREETYPE_SERRFONTFILENOTFOUND$non_lazy_ptr-Lj1562(%ebx),%eax
	movl	$0,(%eax)
	movl	L_TC_FREETYPE_SERRFREETYPE$non_lazy_ptr-Lj1562(%ebx),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	L_TC_FREETYPE_SERRFREETYPE$non_lazy_ptr-Lj1562(%ebx),%eax
	movl	$0,(%eax)
	movl	L_TC_FREETYPE_SINITIALIZING$non_lazy_ptr-Lj1562(%ebx),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	L_TC_FREETYPE_SINITIALIZING$non_lazy_ptr-Lj1562(%ebx),%eax
	movl	$0,(%eax)
	movl	L_TC_FREETYPE_SDESTROYING$non_lazy_ptr-Lj1562(%ebx),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	L_TC_FREETYPE_SDESTROYING$non_lazy_ptr-Lj1562(%ebx),%eax
	movl	$0,(%eax)
	movl	L_TC_FREETYPE_SERRERRORINCLEANUP$non_lazy_ptr-Lj1562(%ebx),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	L_TC_FREETYPE_SERRERRORINCLEANUP$non_lazy_ptr-Lj1562(%ebx),%eax
	movl	$0,(%eax)
	movl	L_TC_FREETYPE_SERRSETPIXELSIZE$non_lazy_ptr-Lj1562(%ebx),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	L_TC_FREETYPE_SERRSETPIXELSIZE$non_lazy_ptr-Lj1562(%ebx),%eax
	movl	$0,(%eax)
	movl	L_TC_FREETYPE_SERRSETCHARSIZE$non_lazy_ptr-Lj1562(%ebx),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	L_TC_FREETYPE_SERRSETCHARSIZE$non_lazy_ptr-Lj1562(%ebx),%eax
	movl	$0,(%eax)
	movl	L_TC_FREETYPE_SERRLOADINGGLYPH$non_lazy_ptr-Lj1562(%ebx),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	L_TC_FREETYPE_SERRLOADINGGLYPH$non_lazy_ptr-Lj1562(%ebx),%eax
	movl	$0,(%eax)
	movl	L_TC_FREETYPE_SERRKERNING$non_lazy_ptr-Lj1562(%ebx),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	L_TC_FREETYPE_SERRKERNING$non_lazy_ptr-Lj1562(%ebx),%eax
	movl	$0,(%eax)
	movl	L_TC_FREETYPE_SERRMAKINGSTRING1$non_lazy_ptr-Lj1562(%ebx),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	L_TC_FREETYPE_SERRMAKINGSTRING1$non_lazy_ptr-Lj1562(%ebx),%eax
	movl	$0,(%eax)
	movl	L_TC_FREETYPE_SERRMAKINGSTRING2$non_lazy_ptr-Lj1562(%ebx),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	L_TC_FREETYPE_SERRMAKINGSTRING2$non_lazy_ptr-Lj1562(%ebx),%eax
	movl	$0,(%eax)
	movl	L_TC_FREETYPE_SERRMAKINGSTRING3$non_lazy_ptr-Lj1562(%ebx),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	L_TC_FREETYPE_SERRMAKINGSTRING3$non_lazy_ptr-Lj1562(%ebx),%eax
	movl	$0,(%eax)
	movl	L_TC_FREETYPE_SERRMAKINGSTRING4$non_lazy_ptr-Lj1562(%ebx),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	L_TC_FREETYPE_SERRMAKINGSTRING4$non_lazy_ptr-Lj1562(%ebx),%eax
	movl	$0,(%eax)
	movl	L_TC_FREETYPE_SERRLOADFONT$non_lazy_ptr-Lj1562(%ebx),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	L_TC_FREETYPE_SERRLOADFONT$non_lazy_ptr-Lj1562(%ebx),%eax
	movl	$0,(%eax)
	movl	L_TC_FREETYPE_SERRINITIALIZING$non_lazy_ptr-Lj1562(%ebx),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	L_TC_FREETYPE_SERRINITIALIZING$non_lazy_ptr-Lj1562(%ebx),%eax
	movl	$0,(%eax)
	movl	L_TC_FREETYPE_SERRDESTROYING$non_lazy_ptr-Lj1562(%ebx),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	L_TC_FREETYPE_SERRDESTROYING$non_lazy_ptr-Lj1562(%ebx),%eax
	movl	$0,(%eax)
	movl	L_TC_FREETYPE_DEFAULTFONTEXTENTION$non_lazy_ptr-Lj1562(%ebx),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	L_TC_FREETYPE_DEFAULTFONTEXTENTION$non_lazy_ptr-Lj1562(%ebx),%eax
	movl	$0,(%eax)
	movl	L_TC_FREETYPE_DEFAULTSEARCHPATH$non_lazy_ptr-Lj1562(%ebx),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	L_TC_FREETYPE_DEFAULTSEARCHPATH$non_lazy_ptr-Lj1562(%ebx),%eax
	movl	$0,(%eax)
	movl	-4(%ebp),%ebx
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.const_data
	.align 2
.globl	_$FREETYPE$_Ld46
_$FREETYPE$_Ld46:
	.byte	17
	.ascii	"FreeTypeException"

.const_data
	.align 2
.globl	_VMT_FREETYPE_FREETYPEEXCEPTION
_VMT_FREETYPE_FREETYPEEXCEPTION:
	.long	12,-12
	.long	_VMT_SYSUTILS_EXCEPTION
	.long	_$FREETYPE$_Ld46
	.long	0,0
	.long	_$FREETYPE$_Ld47
	.long	_RTTI_FREETYPE_FREETYPEEXCEPTION
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_SYSTEM_TOBJECT_$__DESTROY
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
	.long	0

.const_data
	.align 2
.globl	_$FREETYPE$_Ld49
_$FREETYPE$_Ld49:
	.byte	14
	.ascii	"TStringBitMaps"

.const_data
	.align 2
.globl	_VMT_FREETYPE_TSTRINGBITMAPS
_VMT_FREETYPE_TSTRINGBITMAPS:
	.long	32,-32
	.long	_VMT_SYSTEM_TOBJECT
	.long	_$FREETYPE$_Ld49
	.long	0,0
	.long	_$FREETYPE$_Ld50
	.long	_RTTI_FREETYPE_TSTRINGBITMAPS
	.long	_INIT_FREETYPE_TSTRINGBITMAPS
	.long	0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_FREETYPE_TSTRINGBITMAPS_$__DESTROY
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
	.long	0

.const_data
	.align 2
.globl	_$FREETYPE$_Ld52
_$FREETYPE$_Ld52:
	.byte	12
	.ascii	"TFontManager"

.const_data
	.align 2
.globl	_VMT_FREETYPE_TFONTMANAGER
_VMT_FREETYPE_TFONTMANAGER:
	.long	40,-40
	.long	_VMT_SYSTEM_TOBJECT
	.long	_$FREETYPE$_Ld52
	.long	0,0
	.long	_$FREETYPE$_Ld53
	.long	_RTTI_FREETYPE_TFONTMANAGER
	.long	_INIT_FREETYPE_TFONTMANAGER
	.long	0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_FREETYPE_TFONTMANAGER_$__DESTROY
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
	.long	0

.const_data
	.align 2
.globl	_$FREETYPE$_Ld55
_$FREETYPE$_Ld55:
	.byte	8
	.ascii	"TMgrFont"

.const_data
	.align 2
.globl	_VMT_FREETYPE_TMGRFONT
_VMT_FREETYPE_TMGRFONT:
	.long	24,-24
	.long	_VMT_SYSTEM_TOBJECT
	.long	_$FREETYPE$_Ld55
	.long	0,0
	.long	_$FREETYPE$_Ld56
	.long	_RTTI_FREETYPE_TMGRFONT
	.long	_INIT_FREETYPE_TMGRFONT
	.long	0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_FREETYPE_TMGRFONT_$__DESTROY
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
	.long	0

.data
	.align 2
.globl	_THREADVARLIST_FREETYPE
_THREADVARLIST_FREETYPE:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const

.const_data
	.align 2
.globl	_$FREETYPE$_Ld2
_$FREETYPE$_Ld2:
	.short	0,1
	.long	0,-1,54
.reference _$FREETYPE$_Ld1
.globl	_$FREETYPE$_Ld1
_$FREETYPE$_Ld1:
.reference _$FREETYPE$_Ld2
	.ascii	"%d errors detected while freeing a Font Manager obj"
	.ascii	"ect\000"

.const_data
	.align 2
.globl	_$FREETYPE$_Ld4
_$FREETYPE$_Ld4:
	.short	0,1
	.long	0,-1,24
.reference _$FREETYPE$_Ld3
.globl	_$FREETYPE$_Ld3
_$FREETYPE$_Ld3:
.reference _$FREETYPE$_Ld4
	.ascii	"Font file \"%s\" not found\000"

.const_data
	.align 2
.globl	_$FREETYPE$_Ld6
_$FREETYPE$_Ld6:
	.short	0,1
	.long	0,-1,17
.reference _$FREETYPE$_Ld5
.globl	_$FREETYPE$_Ld5
_$FREETYPE$_Ld5:
.reference _$FREETYPE$_Ld6
	.ascii	"Error %d while %s\000"

.const_data
	.align 2
.globl	_$FREETYPE$_Ld8
_$FREETYPE$_Ld8:
	.short	0,1
	.long	0,-1,24
.reference _$FREETYPE$_Ld7
.globl	_$FREETYPE$_Ld7
_$FREETYPE$_Ld7:
.reference _$FREETYPE$_Ld8
	.ascii	"initializing font engine\000"

.const_data
	.align 2
.globl	_$FREETYPE$_Ld10
_$FREETYPE$_Ld10:
	.short	0,1
	.long	0,-1,22
.reference _$FREETYPE$_Ld9
.globl	_$FREETYPE$_Ld9
_$FREETYPE$_Ld9:
.reference _$FREETYPE$_Ld10
	.ascii	"destroying font engine\000"

.const_data
	.align 2
.globl	_$FREETYPE$_Ld12
_$FREETYPE$_Ld12:
	.short	0,1
	.long	0,-1,27
.reference _$FREETYPE$_Ld11
.globl	_$FREETYPE$_Ld11
_$FREETYPE$_Ld11:
.reference _$FREETYPE$_Ld12
	.ascii	"freeing Font Manager object\000"

.const_data
	.align 2
.globl	_$FREETYPE$_Ld14
_$FREETYPE$_Ld14:
	.short	0,1
	.long	0,-1,37
.reference _$FREETYPE$_Ld13
.globl	_$FREETYPE$_Ld13
_$FREETYPE$_Ld13:
.reference _$FREETYPE$_Ld14
	.ascii	"setting pixel size %d (resolution %d)\000"

.const_data
	.align 2
.globl	_$FREETYPE$_Ld16
_$FREETYPE$_Ld16:
	.short	0,1
	.long	0,-1,36
.reference _$FREETYPE$_Ld15
.globl	_$FREETYPE$_Ld15
_$FREETYPE$_Ld15:
.reference _$FREETYPE$_Ld16
	.ascii	"setting char size %d (resolution %d)\000"

.const_data
	.align 2
.globl	_$FREETYPE$_Ld18
_$FREETYPE$_Ld18:
	.short	0,1
	.long	0,-1,13
.reference _$FREETYPE$_Ld17
.globl	_$FREETYPE$_Ld17
_$FREETYPE$_Ld17:
.reference _$FREETYPE$_Ld18
	.ascii	"loading glyph\000"

.const_data
	.align 2
.globl	_$FREETYPE$_Ld20
_$FREETYPE$_Ld20:
	.short	0,1
	.long	0,-1,28
.reference _$FREETYPE$_Ld19
.globl	_$FREETYPE$_Ld19
_$FREETYPE$_Ld19:
.reference _$FREETYPE$_Ld20
	.ascii	"determining kerning distance\000"

.const_data
	.align 2
.globl	_$FREETYPE$_Ld22
_$FREETYPE$_Ld22:
	.short	0,1
	.long	0,-1,28
.reference _$FREETYPE$_Ld21
.globl	_$FREETYPE$_Ld21
_$FREETYPE$_Ld21:
.reference _$FREETYPE$_Ld22
	.ascii	"making string bitmaps step 1\000"

.const_data
	.align 2
.globl	_$FREETYPE$_Ld24
_$FREETYPE$_Ld24:
	.short	0,1
	.long	0,-1,28
.reference _$FREETYPE$_Ld23
.globl	_$FREETYPE$_Ld23
_$FREETYPE$_Ld23:
.reference _$FREETYPE$_Ld24
	.ascii	"making string bitmaps step 2\000"

.const_data
	.align 2
.globl	_$FREETYPE$_Ld26
_$FREETYPE$_Ld26:
	.short	0,1
	.long	0,-1,28
.reference _$FREETYPE$_Ld25
.globl	_$FREETYPE$_Ld25
_$FREETYPE$_Ld25:
.reference _$FREETYPE$_Ld26
	.ascii	"making string bitmaps step 3\000"

.const_data
	.align 2
.globl	_$FREETYPE$_Ld28
_$FREETYPE$_Ld28:
	.short	0,1
	.long	0,-1,28
.reference _$FREETYPE$_Ld27
.globl	_$FREETYPE$_Ld27
_$FREETYPE$_Ld27:
.reference _$FREETYPE$_Ld28
	.ascii	"making string bitmaps step 4\000"

.const_data
	.align 2
.globl	_$FREETYPE$_Ld30
_$FREETYPE$_Ld30:
	.short	0,1
	.long	0,-1,28
.reference _$FREETYPE$_Ld29
.globl	_$FREETYPE$_Ld29
_$FREETYPE$_Ld29:
.reference _$FREETYPE$_Ld30
	.ascii	"loading font %d from file %s\000"

.const_data
	.align 2
.globl	_$FREETYPE$_Ld32
_$FREETYPE$_Ld32:
	.short	0,1
	.long	0,-1,21
.reference _$FREETYPE$_Ld31
.globl	_$FREETYPE$_Ld31
_$FREETYPE$_Ld31:
.reference _$FREETYPE$_Ld32
	.ascii	"initializing FreeType\000"

.const_data
	.align 2
.globl	_$FREETYPE$_Ld34
_$FREETYPE$_Ld34:
	.short	0,1
	.long	0,-1,19
.reference _$FREETYPE$_Ld33
.globl	_$FREETYPE$_Ld33
_$FREETYPE$_Ld33:
.reference _$FREETYPE$_Ld34
	.ascii	"finalizing FreeType\000"

.const_data
	.align 2
.globl	_$FREETYPE$_Ld36
_$FREETYPE$_Ld36:
	.short	0,1
	.long	0,-1,4
.reference _$FREETYPE$_Ld35
.globl	_$FREETYPE$_Ld35
_$FREETYPE$_Ld35:
.reference _$FREETYPE$_Ld36
	.ascii	".ttf\000"

.const_data
	.align 2
.globl	_$FREETYPE$_Ld38
_$FREETYPE$_Ld38:
	.short	0,1
	.long	0,-1,15
.reference _$FREETYPE$_Ld37
.globl	_$FREETYPE$_Ld37
_$FREETYPE$_Ld37:
.reference _$FREETYPE$_Ld38
	.ascii	"/Library/Fonts/\000"
# End asmlist al_const
# Begin asmlist al_typedconsts

.data
	.align 2
.globl	_TC_FREETYPE_SERRERRORSINCLEANUP
_TC_FREETYPE_SERRERRORSINCLEANUP:
	.long	_$FREETYPE$_Ld1

.data
	.align 2
.globl	_TC_FREETYPE_SERRFONTFILENOTFOUND
_TC_FREETYPE_SERRFONTFILENOTFOUND:
	.long	_$FREETYPE$_Ld3

.data
	.align 2
.globl	_TC_FREETYPE_SERRFREETYPE
_TC_FREETYPE_SERRFREETYPE:
	.long	_$FREETYPE$_Ld5

.data
	.align 2
.globl	_TC_FREETYPE_SINITIALIZING
_TC_FREETYPE_SINITIALIZING:
	.long	_$FREETYPE$_Ld7

.data
	.align 2
.globl	_TC_FREETYPE_SDESTROYING
_TC_FREETYPE_SDESTROYING:
	.long	_$FREETYPE$_Ld9

.data
	.align 2
.globl	_TC_FREETYPE_SERRERRORINCLEANUP
_TC_FREETYPE_SERRERRORINCLEANUP:
	.long	_$FREETYPE$_Ld11

.data
	.align 2
.globl	_TC_FREETYPE_SERRSETPIXELSIZE
_TC_FREETYPE_SERRSETPIXELSIZE:
	.long	_$FREETYPE$_Ld13

.data
	.align 2
.globl	_TC_FREETYPE_SERRSETCHARSIZE
_TC_FREETYPE_SERRSETCHARSIZE:
	.long	_$FREETYPE$_Ld15

.data
	.align 2
.globl	_TC_FREETYPE_SERRLOADINGGLYPH
_TC_FREETYPE_SERRLOADINGGLYPH:
	.long	_$FREETYPE$_Ld17

.data
	.align 2
.globl	_TC_FREETYPE_SERRKERNING
_TC_FREETYPE_SERRKERNING:
	.long	_$FREETYPE$_Ld19

.data
	.align 2
.globl	_TC_FREETYPE_SERRMAKINGSTRING1
_TC_FREETYPE_SERRMAKINGSTRING1:
	.long	_$FREETYPE$_Ld21

.data
	.align 2
.globl	_TC_FREETYPE_SERRMAKINGSTRING2
_TC_FREETYPE_SERRMAKINGSTRING2:
	.long	_$FREETYPE$_Ld23

.data
	.align 2
.globl	_TC_FREETYPE_SERRMAKINGSTRING3
_TC_FREETYPE_SERRMAKINGSTRING3:
	.long	_$FREETYPE$_Ld25

.data
	.align 2
.globl	_TC_FREETYPE_SERRMAKINGSTRING4
_TC_FREETYPE_SERRMAKINGSTRING4:
	.long	_$FREETYPE$_Ld27

.data
	.align 2
.globl	_TC_FREETYPE_SERRLOADFONT
_TC_FREETYPE_SERRLOADFONT:
	.long	_$FREETYPE$_Ld29

.data
	.align 2
.globl	_TC_FREETYPE_SERRINITIALIZING
_TC_FREETYPE_SERRINITIALIZING:
	.long	_$FREETYPE$_Ld31

.data
	.align 2
.globl	_TC_FREETYPE_SERRDESTROYING
_TC_FREETYPE_SERRDESTROYING:
	.long	_$FREETYPE$_Ld33

.data
	.align 2
.globl	_TC_FREETYPE_DEFAULTFONTEXTENTION
_TC_FREETYPE_DEFAULTFONTEXTENTION:
	.long	_$FREETYPE$_Ld35

.data
	.align 2
.globl	_TC_FREETYPE_DEFAULTSEARCHPATH
_TC_FREETYPE_DEFAULTSEARCHPATH:
	.long	_$FREETYPE$_Ld37

.data
	.align 2
.globl	_TC_FREETYPE_DEFAULTRESOLUTION
_TC_FREETYPE_DEFAULTRESOLUTION:
	.long	97

.const_data
	.align 2
.globl	_$FREETYPE$_Ld40
_$FREETYPE$_Ld40:
	.short	0,1
	.long	0,-1,1
.reference _$FREETYPE$_Ld39
.globl	_$FREETYPE$_Ld39
_$FREETYPE$_Ld39:
.reference _$FREETYPE$_Ld40
	.ascii	";\000"

.const_data
	.align 2
.globl	_$FREETYPE$_Ld42
_$FREETYPE$_Ld42:
	.short	0,1
	.long	0,-1,1
.reference _$FREETYPE$_Ld41
.globl	_$FREETYPE$_Ld41
_$FREETYPE$_Ld41:
.reference _$FREETYPE$_Ld42
	.ascii	".\000"

.const_data
	.align 2
.globl	_$FREETYPE$_Ld44
_$FREETYPE$_Ld44:
	.short	0,1
	.long	0,-1,31
.reference _$FREETYPE$_Ld43
.globl	_$FREETYPE$_Ld43
_$FREETYPE$_Ld43:
.reference _$FREETYPE$_Ld44
	.ascii	"Size %d not available for %s %s\000"

.const
	.align 3
.globl	_$FREETYPE$_Ld45
_$FREETYPE$_Ld45:
	.byte	0,0,0,0,0,0,0,128,15,64
# End asmlist al_typedconsts
# Begin asmlist al_rotypedconsts
# End asmlist al_rotypedconsts
# Begin asmlist al_threadvars
# End asmlist al_threadvars
# Begin asmlist al_imports

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_ANSISTR_INCR_REF$stub:
.indirect_symbol FPC_ANSISTR_INCR_REF
	hlt
	hlt
	hlt
	hlt
	hlt

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

L_SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION$stub:
.indirect_symbol _SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_RAISEEXCEPTION$stub:
.indirect_symbol FPC_RAISEEXCEPTION
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

LFPC_ANSISTR_DECR_REF$stub:
.indirect_symbol FPC_ANSISTR_DECR_REF
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FREETYPE_FTERROR$ANSISTRING$LONGINT$stub:
.indirect_symbol _FREETYPE_FTERROR$ANSISTRING$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub:
.indirect_symbol _SYSTEM_TOBJECT_$__CREATE$$TOBJECT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TLIST_$__CREATE$$TLIST$stub:
.indirect_symbol _CLASSES_TLIST_$__CREATE$$TLIST
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FT_New_Face$stub:
.indirect_symbol _FT_New_Face
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub:
.indirect_symbol _SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FREETYPE_FTCHECK$LONGINT$ANSISTRING$$LONGINT$stub:
.indirect_symbol _FREETYPE_FTCHECK$LONGINT$ANSISTRING$$LONGINT
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

L_FREETYPE_TMGRFONT_$__FREEGLYPHS$stub:
.indirect_symbol _FREETYPE_TMGRFONT_$__FREEGLYPHS
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_TOBJECT_$__FREE$stub:
.indirect_symbol _SYSTEM_TOBJECT_$__FREE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_TOBJECT_$__DESTROY$stub:
.indirect_symbol _SYSTEM_TOBJECT_$__DESTROY
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub:
.indirect_symbol _CLASSES_TLIST_$__GETCOUNT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub:
.indirect_symbol _CLASSES_TLIST_$__GET$LONGINT$$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FT_Done_Glyph$stub:
.indirect_symbol _FT_Done_Glyph
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_freemem$stub:
.indirect_symbol fpc_freemem
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FT_Init_FreeType$stub:
.indirect_symbol _FT_Init_FreeType
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FREETYPE_TFONTMANAGER_$__SETSEARCHPATH$ANSISTRING$stub:
.indirect_symbol _FREETYPE_TFONTMANAGER_$__SETSEARCHPATH$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FREETYPE_TFONTMANAGER_$__SETEXTENTION$ANSISTRING$stub:
.indirect_symbol _FREETYPE_TFONTMANAGER_$__SETEXTENTION$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FREETYPE_TFONTMANAGER_$_DESTROY_FREEFONTOBJECTS$stub:
.indirect_symbol _FREETYPE_TFONTMANAGER_$_DESTROY_FREEFONTOBJECTS
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FREETYPE_TFONTMANAGER_$_DESTROY_FREELIBRARY$stub:
.indirect_symbol _FREETYPE_TFONTMANAGER_$_DESTROY_FREELIBRARY
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FT_Done_FreeType$stub:
.indirect_symbol _FT_Done_FreeType
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FREETYPE_TFONTMANAGER_$__GETFONT$LONGINT$$TMGRFONT$stub:
.indirect_symbol _FREETYPE_TFONTMANAGER_$__GETFONT$LONGINT$$TMGRFONT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_ansistr_concat_multi$stub:
.indirect_symbol fpc_ansistr_concat_multi
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_POS$CHAR$ANSISTRING$$LONGINT$stub:
.indirect_symbol _SYSTEM_POS$CHAR$ANSISTRING$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FREETYPE_TFONTMANAGER_$_SETSEARCHPATH$ANSISTRING_ADDPATH$ANSISTRING$stub:
.indirect_symbol _FREETYPE_TFONTMANAGER_$_SETSEARCHPATH$ANSISTRING_ADDPATH$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_ansistr_copy$stub:
.indirect_symbol fpc_ansistr_copy
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_DELETE$ANSISTRING$LONGINT$LONGINT$stub:
.indirect_symbol _SYSTEM_DELETE$ANSISTRING$LONGINT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_INCLUDETRAILINGBACKSLASH$ANSISTRING$$ANSISTRING$stub:
.indirect_symbol _SYSUTILS_INCLUDETRAILINGBACKSLASH$ANSISTRING$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_ansistr_concat$stub:
.indirect_symbol fpc_ansistr_concat
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_FILEEXISTS$ANSISTRING$$BOOLEAN$stub:
.indirect_symbol _SYSUTILS_FILEEXISTS$ANSISTRING$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_EXPANDFILENAME$ANSISTRING$$ANSISTRING$stub:
.indirect_symbol _SYSUTILS_EXPANDFILENAME$ANSISTRING$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_EXTRACTFILEPATH$ANSISTRING$$ANSISTRING$stub:
.indirect_symbol _SYSUTILS_EXTRACTFILEPATH$ANSISTRING$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_ansistr_decr_ref$stub:
.indirect_symbol fpc_ansistr_decr_ref
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_COMPARETEXT$ANSISTRING$ANSISTRING$$LONGINT$stub:
.indirect_symbol _SYSUTILS_COMPARETEXT$ANSISTRING$ANSISTRING$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FREETYPE_TMGRFONT_$__CREATE$TFONTMANAGER$ANSISTRING$LONGINT$$TMGRFONT$stub:
.indirect_symbol _FREETYPE_TMGRFONT_$__CREATE$TFONTMANAGER$ANSISTRING$LONGINT$$TMGRFONT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TLIST_$__ADD$POINTER$$LONGINT$stub:
.indirect_symbol _CLASSES_TLIST_$__ADD$POINTER$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FREETYPE_TFONTMANAGER_$__CREATESIZE$LONGINT$LONGINT$$PMGRSIZE$stub:
.indirect_symbol _FREETYPE_TFONTMANAGER_$__CREATESIZE$LONGINT$LONGINT$$PMGRSIZE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_getmem$stub:
.indirect_symbol fpc_getmem
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FREETYPE_TFONTMANAGER_$__SETPIXELSIZE$LONGINT$LONGINT$stub:
.indirect_symbol _FREETYPE_TFONTMANAGER_$__SETPIXELSIZE$LONGINT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FREETYPE_TFONTMANAGER_$_SETPIXELSIZE$LONGINT$LONGINT_CHECKSIZE$stub:
.indirect_symbol _FREETYPE_TFONTMANAGER_$_SETPIXELSIZE$LONGINT$LONGINT_CHECKSIZE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FT_Set_Pixel_Sizes$stub:
.indirect_symbol _FT_Set_Pixel_Sizes
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FT_Set_Char_Size$stub:
.indirect_symbol _FT_Set_Char_Size
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_FILLBYTE$formal$LONGINT$BYTE$stub:
.indirect_symbol _SYSTEM_FILLBYTE$formal$LONGINT$BYTE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FT_Get_Char_Index$stub:
.indirect_symbol _FT_Get_Char_Index
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FT_Load_Glyph$stub:
.indirect_symbol _FT_Load_Glyph
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FT_Get_Glyph$stub:
.indirect_symbol _FT_Get_Glyph
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FREETYPE_TFONTMANAGER_$__CREATEGLYPH$CHAR$$PMGRGLYPH$stub:
.indirect_symbol _FREETYPE_TFONTMANAGER_$__CREATEGLYPH$CHAR$$PMGRGLYPH
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FREETYPE_TFONTMANAGER_$__GETSIZE$LONGINT$LONGINT$stub:
.indirect_symbol _FREETYPE_TFONTMANAGER_$__GETSIZE$LONGINT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FREETYPE_TFONTMANAGER_$__MAKESTRING$LONGINT$ANSISTRING$LONGINT$$TSTRINGBITMAPS$stub:
.indirect_symbol _FREETYPE_TFONTMANAGER_$__MAKESTRING$LONGINT$ANSISTRING$LONGINT$$TSTRINGBITMAPS
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FREETYPE_TFONTMANAGER_$__INITMAKESTRING$LONGINT$LONGINT$stub:
.indirect_symbol _FREETYPE_TFONTMANAGER_$__INITMAKESTRING$LONGINT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FREETYPE_TSTRINGBITMAPS_$__CREATE$LONGINT$$TSTRINGBITMAPS$stub:
.indirect_symbol _FREETYPE_TSTRINGBITMAPS_$__CREATE$LONGINT$$TSTRINGBITMAPS
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FREETYPE_TFONTMANAGER_$__MAKETRANSFORMATION$REAL$FT_MATRIX$stub:
.indirect_symbol _FREETYPE_TFONTMANAGER_$__MAKETRANSFORMATION$REAL$FT_MATRIX
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FREETYPE_TFONTMANAGER_$__GETGLYPH$CHAR$$PMGRGLYPH$stub:
.indirect_symbol _FREETYPE_TFONTMANAGER_$__GETGLYPH$CHAR$$PMGRGLYPH
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FT_Get_Kerning$stub:
.indirect_symbol _FT_Get_Kerning
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FT_Glyph_Copy$stub:
.indirect_symbol _FT_Glyph_Copy
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FT_Glyph_Transform$stub:
.indirect_symbol _FT_Glyph_Transform
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FT_Glyph_To_Bitmap$stub:
.indirect_symbol _FT_Glyph_To_Bitmap
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FREETYPE_TSTRINGBITMAPS_$__GETBITMAP$LONGINT$$PFONTBITMAP$stub:
.indirect_symbol _FREETYPE_TSTRINGBITMAPS_$__GETBITMAP$LONGINT$$PFONTBITMAP
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_GETMEM$POINTER$LONGWORD$stub:
.indirect_symbol _SYSTEM_GETMEM$POINTER$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_MOVE$formal$formal$LONGINT$stub:
.indirect_symbol _SYSTEM_MOVE$formal$formal$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FREETYPE_TSTRINGBITMAPS_$__CALCULATEGLOBALS$stub:
.indirect_symbol _FREETYPE_TSTRINGBITMAPS_$__CALCULATEGLOBALS
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FREETYPE_TFONTMANAGER_$__MAKESTRING$LONGINT$ANSISTRING$LONGINT$REAL$$TSTRINGBITMAPS$stub:
.indirect_symbol _FREETYPE_TFONTMANAGER_$__MAKESTRING$LONGINT$ANSISTRING$LONGINT$REAL$$TSTRINGBITMAPS
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FREETYPE_TFONTMANAGER_$__REQUESTFONT$ANSISTRING$LONGINT$$LONGINT$stub:
.indirect_symbol _FREETYPE_TFONTMANAGER_$__REQUESTFONT$ANSISTRING$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FREETYPE_TFONTMANAGER_$__SEARCHFONT$ANSISTRING$$ANSISTRING$stub:
.indirect_symbol _FREETYPE_TFONTMANAGER_$__SEARCHFONT$ANSISTRING$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FREETYPE_TFONTMANAGER_$__GETFONTID$ANSISTRING$LONGINT$$LONGINT$stub:
.indirect_symbol _FREETYPE_TFONTMANAGER_$__GETFONTID$ANSISTRING$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FREETYPE_TFONTMANAGER_$__CREATEFONT$ANSISTRING$LONGINT$$LONGINT$stub:
.indirect_symbol _FREETYPE_TFONTMANAGER_$__CREATEFONT$ANSISTRING$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TLIST_$__SETCAPACITY$LONGINT$stub:
.indirect_symbol _CLASSES_TLIST_$__SETCAPACITY$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub:
.indirect_symbol _SYSTEM_FREEMEM$POINTER$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FREETYPE_TSTRINGBITMAPS_$__GETCOUNT$$LONGINT$stub:
.indirect_symbol _FREETYPE_TSTRINGBITMAPS_$__GETCOUNT$$LONGINT
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
.globl	_$FREETYPE$_Ld47
_$FREETYPE$_Ld47:
	.short	0
	.long	_$FREETYPE$_Ld48
	.align 2
.globl	_$FREETYPE$_Ld48
_$FREETYPE$_Ld48:
	.short	0

.const_data
	.align 2
.globl	_INIT_FREETYPE_FREETYPEEXCEPTION
_INIT_FREETYPE_FREETYPEEXCEPTION:
	.byte	15,17
	.ascii	"FreeTypeException"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FREETYPE_FREETYPEEXCEPTION
_RTTI_FREETYPE_FREETYPEEXCEPTION:
	.byte	15,17
	.ascii	"FreeTypeException"
	.long	_VMT_FREETYPE_FREETYPEEXCEPTION
	.long	_RTTI_SYSUTILS_EXCEPTION
	.short	0
	.byte	8
	.ascii	"freetype"
	.short	0

.const_data
	.align 2
.globl	_INIT_FREETYPE_TBITMAPTYPE
_INIT_FREETYPE_TBITMAPTYPE:
	.byte	3,11
	.ascii	"TBitmapType"
	.byte	5
	.long	0,1,0
	.byte	12
	.ascii	"btBlackWhite"
	.byte	9
	.ascii	"bt256Gray"
	.byte	8
	.ascii	"freetype"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_FREETYPE_TBITMAPTYPE
_RTTI_FREETYPE_TBITMAPTYPE:
	.byte	3,11
	.ascii	"TBitmapType"
	.byte	5
	.long	0,1,0
	.byte	12
	.ascii	"btBlackWhite"
	.byte	9
	.ascii	"bt256Gray"
	.byte	8
	.ascii	"freetype"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_FREETYPE_TBITMAPTYPE_s2o
_RTTI_FREETYPE_TBITMAPTYPE_s2o:
	.long	2,1
	.long	_RTTI_FREETYPE_TBITMAPTYPE+39
	.long	0
	.long	_RTTI_FREETYPE_TBITMAPTYPE+26

.const_data
	.align 2
.globl	_RTTI_FREETYPE_TBITMAPTYPE_o2s
_RTTI_FREETYPE_TBITMAPTYPE_o2s:
	.long	0
	.long	_RTTI_FREETYPE_TBITMAPTYPE+26
	.long	_RTTI_FREETYPE_TBITMAPTYPE+39

.const_data
	.align 2
.globl	_INIT_FREETYPE_TFONTBITMAP
_INIT_FREETYPE_TFONTBITMAP:
	.byte	13,11
	.ascii	"TFontBitmap"
	.long	32,0

.const_data
	.align 2
.globl	_RTTI_FREETYPE_TFONTBITMAP
_RTTI_FREETYPE_TFONTBITMAP:
	.byte	13,11
	.ascii	"TFontBitmap"
	.long	32,8
	.long	_RTTI_SYSTEM_LONGINT
	.long	0
	.long	_RTTI_SYSTEM_LONGINT
	.long	4
	.long	_RTTI_SYSTEM_LONGINT
	.long	8
	.long	_RTTI_SYSTEM_LONGINT
	.long	12
	.long	_RTTI_SYSTEM_LONGINT
	.long	16
	.long	_RTTI_SYSTEM_LONGINT
	.long	20
	.long	_RTTI_SYSTEM_LONGINT
	.long	24
	.long	_RTTI_SYSUTILS_PBYTEARRAY
	.long	28

.const_data
	.align 2
.globl	_INIT_FREETYPE_PFONTBITMAP
_INIT_FREETYPE_PFONTBITMAP:
	.byte	0
	.ascii	"\013PFontBitmap"

.const_data
	.align 2
.globl	_RTTI_FREETYPE_PFONTBITMAP
_RTTI_FREETYPE_PFONTBITMAP:
	.byte	0
	.ascii	"\013PFontBitmap"

.const_data
	.align 2
.globl	_$FREETYPE$_Ld50
_$FREETYPE$_Ld50:
	.short	0
	.long	_$FREETYPE$_Ld51
	.align 2
.globl	_$FREETYPE$_Ld51
_$FREETYPE$_Ld51:
	.short	0

.const_data
	.align 2
.globl	_INIT_FREETYPE_TSTRINGBITMAPS
_INIT_FREETYPE_TSTRINGBITMAPS:
	.byte	15,14
	.ascii	"TStringBitMaps"
	.long	4,1
	.long	_INIT_SYSTEM_ANSISTRING
	.long	24

.const_data
	.align 2
.globl	_RTTI_FREETYPE_TSTRINGBITMAPS
_RTTI_FREETYPE_TSTRINGBITMAPS:
	.byte	15,14
	.ascii	"TStringBitMaps"
	.long	_VMT_FREETYPE_TSTRINGBITMAPS
	.long	_RTTI_SYSTEM_TOBJECT
	.short	0
	.byte	8
	.ascii	"freetype"
	.short	0

.const_data
	.align 2
.globl	_INIT_FREETYPE_DEF110
_INIT_FREETYPE_DEF110:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_FREETYPE_DEF122
_INIT_FREETYPE_DEF122:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_FREETYPE_DEF124
_INIT_FREETYPE_DEF124:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_$FREETYPE$_Ld53
_$FREETYPE$_Ld53:
	.short	0
	.long	_$FREETYPE$_Ld54
	.align 2
.globl	_$FREETYPE$_Ld54
_$FREETYPE$_Ld54:
	.short	0

.const_data
	.align 2
.globl	_INIT_FREETYPE_TFONTMANAGER
_INIT_FREETYPE_TFONTMANAGER:
	.byte	15,12
	.ascii	"TFontManager"
	.long	4,1
	.long	_INIT_SYSTEM_ANSISTRING
	.long	16

.const_data
	.align 2
.globl	_RTTI_FREETYPE_TFONTMANAGER
_RTTI_FREETYPE_TFONTMANAGER:
	.byte	15,12
	.ascii	"TFontManager"
	.long	_VMT_FREETYPE_TFONTMANAGER
	.long	_RTTI_SYSTEM_TOBJECT
	.short	0
	.byte	8
	.ascii	"freetype"
	.short	0

.const_data
	.align 2
.globl	_INIT_FREETYPE_PMGRGLYPH
_INIT_FREETYPE_PMGRGLYPH:
	.byte	0
	.ascii	"\011PMgrGlyph"

.const_data
	.align 2
.globl	_RTTI_FREETYPE_PMGRGLYPH
_RTTI_FREETYPE_PMGRGLYPH:
	.byte	0
	.ascii	"\011PMgrGlyph"

.const_data
	.align 2
.globl	_INIT_FREETYPE_TMGRGLYPH
_INIT_FREETYPE_TMGRGLYPH:
	.byte	13,9
	.ascii	"TMgrGlyph"
	.long	12,0

.const_data
	.align 2
.globl	_RTTI_FREETYPE_TMGRGLYPH
_RTTI_FREETYPE_TMGRGLYPH:
	.byte	13,9
	.ascii	"TMgrGlyph"
	.long	12,3
	.long	_RTTI_SYSTEM_CHAR
	.long	0
	.long	_RTTI_SYSTEM_LONGWORD
	.long	4
	.long	_RTTI_FREETYPEH_PFT_GLYPH
	.long	8

.const_data
	.align 2
.globl	_INIT_FREETYPE_PMGRSIZE
_INIT_FREETYPE_PMGRSIZE:
	.byte	0
	.ascii	"\010PMgrSize"

.const_data
	.align 2
.globl	_RTTI_FREETYPE_PMGRSIZE
_RTTI_FREETYPE_PMGRSIZE:
	.byte	0
	.ascii	"\010PMgrSize"

.const_data
	.align 2
.globl	_INIT_FREETYPE_TMGRSIZE
_INIT_FREETYPE_TMGRSIZE:
	.byte	13,8
	.ascii	"TMgrSize"
	.long	12,0

.const_data
	.align 2
.globl	_RTTI_FREETYPE_TMGRSIZE
_RTTI_FREETYPE_TMGRSIZE:
	.byte	13,8
	.ascii	"TMgrSize"
	.long	12,3
	.long	_RTTI_SYSTEM_LONGINT
	.long	0
	.long	_RTTI_SYSTEM_LONGINT
	.long	4
	.long	_RTTI_CLASSES_TLIST
	.long	8

.const_data
	.align 2
.globl	_$FREETYPE$_Ld56
_$FREETYPE$_Ld56:
	.short	0
	.long	_$FREETYPE$_Ld57
	.align 2
.globl	_$FREETYPE$_Ld57
_$FREETYPE$_Ld57:
	.short	0

.const_data
	.align 2
.globl	_INIT_FREETYPE_TMGRFONT
_INIT_FREETYPE_TMGRFONT:
	.byte	15,8
	.ascii	"TMgrFont"
	.long	4,1
	.long	_INIT_SYSTEM_ANSISTRING
	.long	16

.const_data
	.align 2
.globl	_RTTI_FREETYPE_TMGRFONT
_RTTI_FREETYPE_TMGRFONT:
	.byte	15,8
	.ascii	"TMgrFont"
	.long	_VMT_FREETYPE_TMGRFONT
	.long	_RTTI_SYSTEM_TOBJECT
	.short	0
	.byte	8
	.ascii	"freetype"
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
L_TC_FREETYPE_SERRFREETYPE$non_lazy_ptr:
.indirect_symbol _TC_FREETYPE_SERRFREETYPE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FREETYPE_FREETYPEEXCEPTION$non_lazy_ptr:
.indirect_symbol _VMT_FREETYPE_FREETYPEEXCEPTION
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_CLASSES_TLIST$non_lazy_ptr:
.indirect_symbol _VMT_CLASSES_TLIST
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
LFPC_EMPTYCHAR$non_lazy_ptr:
.indirect_symbol FPC_EMPTYCHAR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_FREETYPE_SERRLOADFONT$non_lazy_ptr:
.indirect_symbol _TC_FREETYPE_SERRLOADFONT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_CLASSES_TSTRINGLIST$non_lazy_ptr:
.indirect_symbol _VMT_CLASSES_TSTRINGLIST
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_FREETYPE_SERRINITIALIZING$non_lazy_ptr:
.indirect_symbol _TC_FREETYPE_SERRINITIALIZING
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_FREETYPE_DEFAULTSEARCHPATH$non_lazy_ptr:
.indirect_symbol _TC_FREETYPE_DEFAULTSEARCHPATH
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_FREETYPE_DEFAULTFONTEXTENTION$non_lazy_ptr:
.indirect_symbol _TC_FREETYPE_DEFAULTFONTEXTENTION
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_FREETYPE_DEFAULTRESOLUTION$non_lazy_ptr:
.indirect_symbol _TC_FREETYPE_DEFAULTRESOLUTION
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_FREETYPE_SERRDESTROYING$non_lazy_ptr:
.indirect_symbol _TC_FREETYPE_SERRDESTROYING
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FREETYPE$_Ld39$non_lazy_ptr:
.indirect_symbol _$FREETYPE$_Ld39
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FREETYPE$_Ld41$non_lazy_ptr:
.indirect_symbol _$FREETYPE$_Ld41
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_FREETYPE_SERRFONTFILENOTFOUND$non_lazy_ptr:
.indirect_symbol _TC_FREETYPE_SERRFONTFILENOTFOUND
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FREETYPE_TMGRFONT$non_lazy_ptr:
.indirect_symbol _VMT_FREETYPE_TMGRFONT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_FREETYPE_SERRSETPIXELSIZE$non_lazy_ptr:
.indirect_symbol _TC_FREETYPE_SERRSETPIXELSIZE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_FREETYPE_SERRSETCHARSIZE$non_lazy_ptr:
.indirect_symbol _TC_FREETYPE_SERRSETCHARSIZE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FREETYPE$_Ld43$non_lazy_ptr:
.indirect_symbol _$FREETYPE$_Ld43
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FREETYPE$_Ld45$non_lazy_ptr:
.indirect_symbol _$FREETYPE$_Ld45
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_FREETYPE_SERRLOADINGGLYPH$non_lazy_ptr:
.indirect_symbol _TC_FREETYPE_SERRLOADINGGLYPH
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FREETYPE_TSTRINGBITMAPS$non_lazy_ptr:
.indirect_symbol _VMT_FREETYPE_TSTRINGBITMAPS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_FREETYPE_SERRKERNING$non_lazy_ptr:
.indirect_symbol _TC_FREETYPE_SERRKERNING
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_FREETYPE_SERRMAKINGSTRING1$non_lazy_ptr:
.indirect_symbol _TC_FREETYPE_SERRMAKINGSTRING1
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_FREETYPE_SERRMAKINGSTRING2$non_lazy_ptr:
.indirect_symbol _TC_FREETYPE_SERRMAKINGSTRING2
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_FREETYPE_SERRMAKINGSTRING3$non_lazy_ptr:
.indirect_symbol _TC_FREETYPE_SERRMAKINGSTRING3
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_FREETYPE_SERRMAKINGSTRING4$non_lazy_ptr:
.indirect_symbol _TC_FREETYPE_SERRMAKINGSTRING4
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_FREETYPE_SERRERRORSINCLEANUP$non_lazy_ptr:
.indirect_symbol _TC_FREETYPE_SERRERRORSINCLEANUP
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_FREETYPE_SINITIALIZING$non_lazy_ptr:
.indirect_symbol _TC_FREETYPE_SINITIALIZING
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_FREETYPE_SDESTROYING$non_lazy_ptr:
.indirect_symbol _TC_FREETYPE_SDESTROYING
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_FREETYPE_SERRERRORINCLEANUP$non_lazy_ptr:
.indirect_symbol _TC_FREETYPE_SERRERRORINCLEANUP
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

