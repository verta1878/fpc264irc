# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_DBF_DBFFILE_DBFSTRTOFLOAT$PCHAR$LONGINT$$EXTENDED
_DBF_DBFFILE_DBFSTRTOFLOAT$PCHAR$LONGINT$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-56(%ebp)
	call	Lj4
Lj4:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	addl	%edx,%eax
	movb	(%eax),%al
	movb	%al,-49(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	addl	%eax,%edx
	movb	$0,(%edx)
	movl	L_TC_SYSUTILS_DEFAULTFORMATSETTINGS$non_lazy_ptr-Lj4(%ebx),%eax
	movb	3(%eax),%al
	cmpb	$46,%al
	jne	Lj9
	jmp	Lj10
Lj9:
	movl	-4(%ebp),%eax
	movb	$46,%dl
	call	L_SYSUTILS_STRSCAN$PCHAR$CHAR$$PCHAR$stub
	movl	%eax,-28(%ebp)
	movl	-28(%ebp),%eax
	testl	%eax,%eax
	jne	Lj17
	jmp	Lj18
Lj17:
	movl	-28(%ebp),%edx
	movl	L_TC_SYSUTILS_DEFAULTFORMATSETTINGS$non_lazy_ptr-Lj4(%ebx),%eax
	movb	3(%eax),%al
	movb	%al,(%edx)
Lj18:
	jmp	Lj21
Lj10:
	movl	$0,-28(%ebp)
Lj21:
	leal	-48(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$0,%ecx
	call	L_SYSUTILS_TEXTTOFLOAT$PCHAR$formal$TFLOATVALUE$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj24
	jmp	Lj25
Lj24:
	movl	-48(%ebp),%eax
	movl	%eax,-24(%ebp)
	movl	-44(%ebp),%eax
	movl	%eax,-20(%ebp)
	movw	-40(%ebp),%ax
	movw	%ax,-16(%ebp)
	jmp	Lj34
Lj25:
	fldz
	fstpt	-24(%ebp)
Lj34:
	movl	-28(%ebp),%eax
	testl	%eax,%eax
	jne	Lj37
	jmp	Lj38
Lj37:
	movl	-28(%ebp),%eax
	movb	$46,(%eax)
Lj38:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	addl	%eax,%edx
	movb	-49(%ebp),%al
	movb	%al,(%edx)
	fldt	-24(%ebp)
	movl	-56(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_DBFFILE_FLOATTODBFSTR$EXTENDED$LONGINT$LONGINT$PCHAR
_DBF_DBFFILE_FLOATTODBFSTR$EXTENDED$LONGINT$LONGINT$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-52(%ebp)
	call	Lj44
Lj44:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	movl	8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	12(%ebp),%eax
	movl	%eax,8(%esp)
	movl	16(%ebp),%eax
	movl	%eax,12(%esp)
	leal	-37(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	$2,%edx
	call	L_SYSUTILS_FLOATTOTEXT$PCHAR$EXTENDED$TFLOATFORMAT$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,-44(%ebp)
	movl	-44(%ebp),%eax
	cmpl	-4(%ebp),%eax
	jg	Lj57
	jmp	Lj58
Lj57:
	movl	-4(%ebp),%eax
	movl	%eax,-44(%ebp)
Lj58:
	movl	-44(%ebp),%eax
	movb	$0,-37(%ebp,%eax,1)
	movl	L_TC_SYSUTILS_DEFAULTFORMATSETTINGS$non_lazy_ptr-Lj44(%ebx),%eax
	movb	3(%eax),%al
	cmpb	$46,%al
	jne	Lj63
	jmp	Lj64
Lj63:
	leal	-37(%ebp),%eax
	movl	L_TC_SYSUTILS_DEFAULTFORMATSETTINGS$non_lazy_ptr-Lj44(%ebx),%edx
	movb	3(%edx),%dl
	call	L_SYSUTILS_STRSCAN$PCHAR$CHAR$$PCHAR$stub
	movl	%eax,-48(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	jne	Lj71
	jmp	Lj72
Lj71:
	movl	-48(%ebp),%eax
	movb	$46,(%eax)
Lj72:
Lj64:
	movl	-12(%ebp),%eax
	movl	-4(%ebp),%edx
	movb	$32,%cl
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$CHAR$stub
	movl	-12(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	-44(%ebp),%edx
	subl	%edx,%eax
	leal	(%ecx,%eax,1),%edx
	movl	-44(%ebp),%ecx
	leal	-37(%ebp),%eax
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movl	-52(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_DBFFILE_GETINTFROMSTRLENGTH$POINTER$LONGINT$LONGINT$$LONGINT
_DBF_DBFFILE_GETINTFROMSTRLENGTH$POINTER$LONGINT$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$280,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	addl	%edx,%eax
	movb	(%eax),%al
	movb	%al,-17(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	addl	%edx,%eax
	movb	$0,(%eax)
	movl	-4(%ebp),%ecx
	leal	-280(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_pchar_to_shortstr$stub
	leal	-280(%ebp),%edx
	leal	-24(%ebp),%ecx
	movl	$4,%eax
	call	Lfpc_val_sint_shortstr$stub
	movl	%eax,-16(%ebp)
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	jne	Lj107
	jmp	Lj108
Lj107:
	movl	-12(%ebp),%eax
	movl	%eax,-16(%ebp)
Lj108:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	addl	%eax,%edx
	movb	-17(%ebp),%al
	movb	%al,(%edx)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_DBFFILE_TDBFFILE_$__CREATE$$TDBFFILE
_DBF_DBFFILE_TDBFFILE_$__CREATE$$TDBFFILE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-92(%ebp)
	call	Lj114
Lj114:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj115
	jmp	Lj116
Lj115:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-8(%ebp)
Lj116:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj121
	jmp	Lj122
Lj121:
	jmp	Lj113
Lj122:
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj125
	leal	-60(%ebp),%ecx
	leal	-84(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-88(%ebp)
	testl	%eax,%eax
	jne	Lj129
	movl	L_VMT_DBF_FIELDS_TDBFFIELDDEFS$non_lazy_ptr-Lj114(%ebx),%edx
	movl	$0,%ecx
	movl	$0,%eax
	call	L_DBF_FIELDS_TDBFFIELDDEFS_$__CREATE$TPERSISTENT$$TDBFFIELDDEFS$stub
	movl	-8(%ebp),%edx
	movl	%eax,104(%edx)
	movl	L_VMT_CLASSES_TSTRINGLIST$non_lazy_ptr-Lj114(%ebx),%edx
	movl	$0,%eax
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	-8(%ebp),%edx
	movl	%eax,108(%edx)
	movl	L_VMT_CLASSES_TLIST$non_lazy_ptr-Lj114(%ebx),%edx
	movl	$0,%eax
	call	L_CLASSES_TLIST_$__CREATE$$TLIST$stub
	movl	-8(%ebp),%edx
	movl	%eax,112(%edx)
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_DBF_PGFILE_TPAGEDFILE_$__CREATE$$TPAGEDFILE$stub
Lj129:
	call	LFPC_POPADDRSTACK$stub
	movl	-88(%ebp),%eax
	testl	%eax,%eax
	je	Lj130
	call	LFPC_RERAISE$stub
Lj130:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj158
	jmp	Lj157
Lj158:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj156
	jmp	Lj157
Lj156:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj157:
Lj125:
	call	LFPC_POPADDRSTACK$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj127
	leal	-60(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj162
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj163
	jmp	Lj164
Lj163:
	movl	-8(%ebp),%eax
	movl	$-1,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj164:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj162:
	call	LFPC_POPADDRSTACK$stub
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj161
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj161:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj127
Lj127:
Lj113:
	movl	-8(%ebp),%eax
	movl	-92(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_DBFFILE_TDBFFILE_$__DESTROY
_DBF_DBFFILE_TDBFFILE_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj171
	jmp	Lj172
Lj171:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj172:
	movl	-8(%ebp),%eax
	call	L_DBF_DBFFILE_TDBFFILE_$__CLOSE$stub
	movl	-8(%ebp),%eax
	movl	112(%eax),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	movl	%eax,%ebx
	decl	%ebx
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%ebx
	jl	Lj178
	decl	-12(%ebp)
	.align 2
Lj179:
	incl	-12(%ebp)
	movl	-8(%ebp),%eax
	movl	112(%eax),%eax
	movl	-12(%ebp),%edx
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,%esi
	movl	%esi,%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	cmpl	-12(%ebp),%ebx
	jg	Lj179
Lj178:
	movl	-8(%ebp),%eax
	leal	112(%eax),%eax
	call	L_DBF_COMMON_FREEANDNIL$formal$stub
	movl	-8(%ebp),%eax
	leal	108(%eax),%eax
	call	L_DBF_COMMON_FREEANDNIL$formal$stub
	movl	-8(%ebp),%eax
	leal	104(%eax),%eax
	call	L_DBF_COMMON_FREEANDNIL$formal$stub
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_DBF_PGFILE_TPAGEDFILE_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj202
	jmp	Lj201
Lj202:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj200
	jmp	Lj201
Lj200:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj201:
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DBF_DBFFILE_TDBFFILE_$__OPEN
_DBF_DBFFILE_TDBFFILE_$__OPEN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-80(%ebp)
	movl	%esi,-76(%ebp)
	movl	%edi,-72(%ebp)
	call	Lj206
Lj206:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	$0,-8(%ebp)
	movl	$0,-12(%ebp)
	movl	$0,-68(%ebp)
	leal	-36(%ebp),%ecx
	leal	-60(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj211
	movl	-4(%ebp),%eax
	movb	44(%eax),%al
	testb	%al,%al
	je	Lj214
	jmp	Lj215
Lj214:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*128(%edx)
	movb	$0,-22(%ebp)
	movl	-4(%ebp),%eax
	call	L_DBF_PGFILE_TPAGEDFILE_$__FILECREATED$$BOOLEAN$stub
	testb	%al,%al
	je	Lj220
	jmp	Lj221
Lj220:
	movl	-4(%ebp),%eax
	movl	$32,%edx
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*108(%ecx)
	movl	%ebp,%eax
	call	L_DBF_DBFFILE_TDBFFILE_$_OPEN_GETVERSION$stub
	movl	-4(%ebp),%eax
	movl	40(%eax),%eax
	movzwl	10(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*104(%ecx)
	movl	-4(%ebp),%eax
	movl	40(%eax),%eax
	movzwl	8(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*108(%ecx)
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	testl	%eax,%eax
	je	Lj238
	jmp	Lj240
Lj240:
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	testl	%eax,%eax
	je	Lj238
	jmp	Lj239
Lj238:
	movl	-4(%ebp),%eax
	movl	$0,%edx
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*108(%ecx)
	movl	-4(%ebp),%eax
	movl	$0,%edx
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*104(%ecx)
	movl	-4(%ebp),%eax
	movl	$0,%edx
	call	L_DBF_PGFILE_TPAGEDFILE_$__SETRECORDCOUNT$LONGINT$stub
	movl	-4(%ebp),%eax
	movb	$1,160(%eax)
	jmp	Lj211
Lj239:
	movl	-4(%ebp),%eax
	movl	40(%eax),%esi
	movl	-4(%ebp),%eax
	call	L_DBF_PGFILE_TPAGEDFILE_$__GETRECORDCOUNT$$LONGINT$stub
	cmpl	4(%esi),%eax
	jne	Lj255
	jmp	Lj256
Lj255:
	movl	-4(%ebp),%eax
	call	L_DBF_PGFILE_TPAGEDFILE_$__GETRECORDCOUNT$$LONGINT$stub
	movl	-4(%ebp),%edx
	movl	40(%edx),%edx
	movl	%eax,4(%edx)
	movb	$1,-22(%ebp)
Lj256:
	movl	%ebp,%eax
	call	L_DBF_DBFFILE_TDBFFILE_$_OPEN_GETCODEPAGE$stub
	movl	-4(%ebp),%eax
	call	L_DBF_DBFFILE_TDBFFILE_$__CONSTRUCTFIELDDEFS$stub
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-68(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_DBF_DBFFILE_TDBFFILE_$__GETMEMOEXT$$ANSISTRING$stub
	movl	-68(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	56(%eax),%eax
	leal	-8(%ebp),%ecx
	call	L_SYSUTILS_CHANGEFILEEXT$ANSISTRING$ANSISTRING$$ANSISTRING$stub
	movl	-4(%ebp),%eax
	call	L_DBF_DBFFILE_TDBFFILE_$__HASBLOB$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj279
	jmp	Lj280
Lj279:
	movl	-4(%ebp),%eax
	movb	48(%eax),%al
	cmpb	$7,%al
	je	Lj285
	jmp	Lj284
Lj285:
	movl	-8(%ebp),%eax
	call	L_SYSUTILS_FILEEXISTS$ANSISTRING$$BOOLEAN$stub
	testb	%al,%al
	je	Lj283
	jmp	Lj284
Lj283:
	movl	L_VMT_DBF_MEMO_TNULLMEMOFILE$non_lazy_ptr-Lj206(%ebx),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj290
Lj284:
	movl	-4(%ebp),%eax
	movzbl	120(%eax),%eax
	cmpl	$5,%eax
	je	Lj293
	cmpl	$7,%eax
	je	Lj293
Lj293:
	je	Lj291
	jmp	Lj292
Lj291:
	movl	L_VMT_DBF_MEMO_TFOXPROMEMOFILE$non_lazy_ptr-Lj206(%ebx),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj296
Lj292:
	movl	L_VMT_DBF_MEMO_TDBASEMEMOFILE$non_lazy_ptr-Lj206(%ebx),%eax
	movl	%eax,-16(%ebp)
Lj296:
Lj290:
	movl	-4(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	$0,%eax
	call	L_DBF_MEMO_TMEMOFILE_$__CREATE$POINTER$$TMEMOFILE$stub
	movl	-4(%ebp),%edx
	movl	%eax,96(%edx)
	movl	-4(%ebp),%eax
	movl	96(%eax),%eax
	movl	-8(%ebp),%edx
	call	L_DBF_PGFILE_TPAGEDFILE_$__SETFILENAME$ANSISTRING$stub
	movl	-4(%ebp),%eax
	movzbl	48(%eax),%eax
	decl	%eax
	cmpl	$2,%eax
	jb	Lj313
Lj313:
	jc	Lj311
	jmp	Lj312
Lj311:
	movl	-4(%ebp),%eax
	movl	100(%eax),%edx
	movl	-4(%ebp),%eax
	movl	96(%eax),%eax
	call	L_DBF_PGFILE_TPAGEDFILE_$__SETSTREAM$TSTREAM$stub
Lj312:
	movl	-4(%ebp),%eax
	movl	96(%eax),%edx
	movl	-4(%ebp),%eax
	movb	48(%eax),%al
	movb	%al,48(%edx)
	movl	-4(%ebp),%eax
	movl	96(%eax),%eax
	movb	$1,51(%eax)
	movl	-4(%ebp),%eax
	movl	96(%eax),%eax
	movl	$0,100(%eax)
	movl	-4(%ebp),%eax
	movb	120(%eax),%dl
	movl	-4(%ebp),%eax
	movl	96(%eax),%eax
	call	L_DBF_MEMO_TMEMOFILE_$__SETDBFVERSION$TXBASEVERSION$stub
	movl	-4(%ebp),%eax
	movl	96(%eax),%eax
	call	L_DBF_MEMO_TMEMOFILE_$__OPEN$stub
	movl	-4(%ebp),%eax
	movzbl	120(%eax),%eax
	cmpl	$5,%eax
	je	Lj332
	cmpl	$7,%eax
	je	Lj332
Lj332:
	jne	Lj330
	jmp	Lj331
Lj330:
	movl	-4(%ebp),%eax
	movl	40(%eax),%eax
	movb	(%eax),%al
	orb	$128,%al
	movl	-4(%ebp),%edx
	movl	40(%edx),%edx
	movb	%al,(%edx)
	movb	$1,-22(%ebp)
Lj331:
	jmp	Lj337
Lj280:
	movl	-4(%ebp),%eax
	movzbl	120(%eax),%eax
	cmpl	$5,%eax
	je	Lj340
	cmpl	$7,%eax
	je	Lj340
Lj340:
	jne	Lj338
	jmp	Lj339
Lj338:
	movl	-4(%ebp),%eax
	movl	40(%eax),%eax
	movb	(%eax),%al
	andb	$127,%al
	movl	-4(%ebp),%edx
	movl	40(%edx),%edx
	movb	%al,(%edx)
	movb	$1,-22(%ebp)
Lj339:
Lj337:
	movl	-4(%ebp),%eax
	movzbl	120(%eax),%eax
	cmpl	$5,%eax
	je	Lj348
	cmpl	$7,%eax
	je	Lj348
Lj348:
	jne	Lj347
	jmp	Lj346
Lj347:
	movl	-4(%ebp),%eax
	movl	40(%eax),%eax
	movzbl	28(%eax),%eax
	testl	%eax,%eax
	jne	Lj345
	jmp	Lj346
Lj345:
	movl	-4(%ebp),%eax
	movl	56(%eax),%eax
	leal	-12(%ebp),%ecx
	movl	L_$DBF_DBFFILE$_Ld1$non_lazy_ptr-Lj206(%ebx),%edx
	call	L_SYSUTILS_CHANGEFILEEXT$ANSISTRING$ANSISTRING$$ANSISTRING$stub
	movl	-4(%ebp),%eax
	movl	56(%eax),%eax
	testl	%eax,%eax
	jne	Lj357
	jmp	Lj356
Lj357:
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	movl	-4(%ebp),%eax
	movl	56(%eax),%eax
	leal	-68(%ebp),%edx
	call	L_SYSUTILS_UPPERCASE$ANSISTRING$$ANSISTRING$stub
	movl	-68(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	56(%edx),%edx
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	je	Lj355
	jmp	Lj356
Lj355:
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-68(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_SYSUTILS_UPPERCASE$ANSISTRING$$ANSISTRING$stub
	movl	-68(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-12(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-68(%ebp),%eax
	movl	%eax,-12(%ebp)
Lj356:
	movl	-12(%ebp),%eax
	call	L_SYSUTILS_FILEEXISTS$ANSISTRING$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj372
	jmp	Lj374
Lj374:
	movl	-4(%ebp),%eax
	movzbl	48(%eax),%eax
	decl	%eax
	cmpl	$2,%eax
	jb	Lj377
Lj377:
	jc	Lj372
	jmp	Lj373
Lj372:
	movl	-4(%ebp),%ecx
	movl	L_VMT_DBF_IDXFILE_TINDEXFILE$non_lazy_ptr-Lj206(%ebx),%edx
	movl	$0,%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__CREATE$POINTER$$TINDEXFILE$stub
	movl	-4(%ebp),%edx
	movl	%eax,92(%edx)
	movl	-4(%ebp),%eax
	movl	92(%eax),%eax
	movl	-12(%ebp),%edx
	call	L_DBF_PGFILE_TPAGEDFILE_$__SETFILENAME$ANSISTRING$stub
	movl	-4(%ebp),%eax
	movl	92(%eax),%edx
	movl	-4(%ebp),%eax
	movb	48(%eax),%al
	movb	%al,48(%edx)
	movl	-4(%ebp),%eax
	movzbl	48(%eax),%eax
	decl	%eax
	cmpl	$2,%eax
	jb	Lj394
Lj394:
	jc	Lj392
	jmp	Lj393
Lj392:
	movl	-4(%ebp),%eax
	movl	116(%eax),%edx
	movl	-4(%ebp),%eax
	movl	92(%eax),%eax
	call	L_DBF_PGFILE_TPAGEDFILE_$__SETSTREAM$TSTREAM$stub
	movl	-4(%ebp),%eax
	movl	92(%eax),%eax
	movb	$1,51(%eax)
	jmp	Lj401
Lj393:
	movl	-4(%ebp),%eax
	movl	92(%eax),%eax
	movb	$0,51(%eax)
Lj401:
	movl	-4(%ebp),%eax
	movl	92(%eax),%ecx
	movl	-4(%ebp),%edx
	movl	176(%edx),%eax
	movl	%eax,1332(%ecx)
	movl	180(%edx),%eax
	movl	%eax,1336(%ecx)
	movl	-4(%ebp),%eax
	movl	92(%eax),%edx
	movl	-4(%ebp),%eax
	movl	144(%eax),%eax
	movl	%eax,1316(%edx)
	movl	-4(%ebp),%eax
	movl	92(%eax),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__OPEN$stub
	movl	-4(%ebp),%eax
	movl	92(%eax),%eax
	movb	1312(%eax),%al
	testb	%al,%al
	je	Lj410
	jmp	Lj411
Lj410:
	movl	-4(%ebp),%eax
	movl	92(%eax),%edx
	movl	-4(%ebp),%eax
	movl	112(%eax),%eax
	call	L_CLASSES_TLIST_$__ADD$POINTER$$LONGINT$stub
	movl	-4(%ebp),%eax
	movl	108(%eax),%edx
	movl	-4(%ebp),%eax
	movl	92(%eax),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__GETINDEXNAMES$TSTRINGS$stub
	jmp	Lj420
Lj411:
	movl	-4(%ebp),%eax
	leal	92(%eax),%eax
	call	L_DBF_COMMON_FREEANDNIL$formal$stub
Lj420:
	jmp	Lj423
Lj373:
	movb	$1,-21(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,184(%eax)
	jne	Lj426
	jmp	Lj427
Lj426:
	movl	-4(%ebp),%eax
	movl	188(%eax),%eax
	leal	-21(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	184(%ecx),%ecx
	call	*%ecx
Lj427:
	cmpb	$0,-21(%ebp)
	jne	Lj432
	jmp	Lj433
Lj432:
	movl	-4(%ebp),%eax
	movl	40(%eax),%eax
	movb	$0,28(%eax)
	movb	$1,-22(%ebp)
	jmp	Lj438
Lj433:
	movl	-4(%ebp),%eax
	movb	$1,160(%eax)
Lj438:
Lj423:
Lj346:
Lj221:
	cmpb	$0,-22(%ebp)
	jne	Lj441
	jmp	Lj442
Lj441:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*148(%edx)
Lj442:
	movl	-4(%ebp),%eax
	movl	112(%eax),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	movl	%eax,%esi
	decl	%esi
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%esi
	jl	Lj446
	decl	-20(%ebp)
	.align 2
Lj447:
	incl	-20(%ebp)
	movl	-4(%ebp),%eax
	movl	112(%eax),%eax
	movl	-20(%ebp),%edx
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,%edi
	movl	%edi,%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__OPEN$stub
	cmpl	-20(%ebp),%esi
	jg	Lj447
Lj446:
Lj215:
Lj211:
	call	LFPC_POPADDRSTACK$stub
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-8(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-8(%ebp)
	leal	-12(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-12(%ebp)
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj212
	call	LFPC_RERAISE$stub
Lj212:
	movl	-80(%ebp),%ebx
	movl	-76(%ebp),%esi
	movl	-72(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_DBF_DBFFILE_TDBFFILE_$_OPEN_GETCODEPAGE
_DBF_DBFFILE_TDBFFILE_$_OPEN_GETCODEPAGE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-56(%ebp)
	call	Lj210
Lj210:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	$0,-52(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj470
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movb	120(%eax),%al
	cmpb	$6,%al
	jb	Lj474
	subb	$6,%al
	je	Lj475
	jmp	Lj474
Lj475:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	40(%eax),%eax
	addl	$32,%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movb	(%eax),%al
	cmpb	$68,%al
	je	Lj480
	jmp	Lj479
Lj480:
	movl	-8(%ebp),%eax
	movb	1(%eax),%al
	cmpb	$66,%al
	je	Lj478
	jmp	Lj479
Lj478:
	movl	-8(%ebp),%eax
	addl	$2,%eax
	movl	L_$DBF_DBFFILE$_Ld3$non_lazy_ptr-Lj210(%ebx),%edx
	movl	$3,%ecx
	call	L_SYSUTILS_STRLCOMP$PCHAR$PCHAR$LONGINT$$LONGINT$stub
	testl	%eax,%eax
	je	Lj481
	jmp	Lj482
Lj481:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	$1252,140(%eax)
	jmp	Lj491
Lj482:
	movl	-8(%ebp),%eax
	addl	$2,%eax
	movl	L_$DBF_DBFFILE$_Ld4$non_lazy_ptr-Lj210(%ebx),%edx
	movl	$6,%ecx
	call	L_SYSUTILS_STRLCOMP$PCHAR$PCHAR$LONGINT$$LONGINT$stub
	testl	%eax,%eax
	je	Lj492
	jmp	Lj493
Lj492:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	$1255,140(%eax)
	jmp	Lj502
Lj493:
	movl	-8(%ebp),%eax
	addl	$2,%eax
	movl	$0,%ecx
	movl	$3,%edx
	call	L_DBF_DBFFILE_GETINTFROMSTRLENGTH$POINTER$LONGINT$LONGINT$$LONGINT$stub
	movl	-4(%ebp),%edx
	movl	-4(%edx),%edx
	movl	%eax,140(%edx)
	movl	-8(%ebp),%eax
	movb	5(%eax),%al
	cmpb	$48,%al
	jae	Lj513
	jmp	Lj512
Lj513:
	movl	-8(%ebp),%eax
	movb	5(%eax),%al
	cmpb	$57,%al
	jbe	Lj511
	jmp	Lj512
Lj511:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%edx
	movl	$10,%eax
	mull	140(%edx)
	movl	-8(%ebp),%edx
	movzbl	5(%edx),%edx
	addl	%edx,%eax
	subl	$48,%eax
	movl	-4(%ebp),%edx
	movl	-4(%edx),%edx
	movl	%eax,140(%edx)
Lj512:
Lj502:
Lj491:
	jmp	Lj516
Lj479:
	movl	L_$DBF_DBFFILE$_Ld5$non_lazy_ptr-Lj210(%ebx),%edx
	movl	-8(%ebp),%eax
	movl	$3,%ecx
	call	L_SYSUTILS_STRLCOMP$PCHAR$PCHAR$LONGINT$$LONGINT$stub
	testl	%eax,%eax
	je	Lj517
	jmp	Lj518
Lj517:
	movl	-8(%ebp),%eax
	addl	$5,%eax
	movl	L_$DBF_DBFFILE$_Ld3$non_lazy_ptr-Lj210(%ebx),%edx
	movl	$3,%ecx
	call	L_SYSUTILS_STRLCOMP$PCHAR$PCHAR$LONGINT$$LONGINT$stub
	testl	%eax,%eax
	je	Lj525
	jmp	Lj526
Lj525:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	$1252,140(%eax)
	jmp	Lj535
Lj526:
	movl	-8(%ebp),%eax
	addl	$5,%eax
	movl	$0,%ecx
	movl	$3,%edx
	call	L_DBF_DBFFILE_GETINTFROMSTRLENGTH$POINTER$LONGINT$LONGINT$$LONGINT$stub
	movl	-4(%ebp),%edx
	movl	-4(%edx),%edx
	movl	%eax,140(%edx)
Lj535:
	jmp	Lj544
Lj518:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	$0,140(%eax)
Lj544:
Lj516:
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	leal	-52(%ebp),%edx
	call	L_DBF_DBFFILE_TDBFFILE_$__GETLANGUAGESTR$$ANSISTRING$stub
	movl	-52(%ebp),%eax
	call	L_DBF_LANG_GETLANGID_FROM_LANGNAME$ANSISTRING$$BYTE$stub
	movl	-4(%ebp),%edx
	movl	-4(%edx),%edx
	movb	%al,148(%edx)
	jmp	Lj473
Lj474:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	40(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movb	29(%edx),%dl
	movb	%dl,148(%eax)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movzbl	148(%eax),%eax
	movl	L_TC_DBF_LANG_LANGID_TO_CODEPAGE$non_lazy_ptr-Lj210(%ebx),%edx
	movzwl	(%edx,%eax,2),%edx
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	%edx,140(%eax)
Lj473:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	140(%eax),%eax
	movl	%eax,144(%edx)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	144(%eax),%eax
	testl	%eax,%eax
	je	Lj561
	jmp	Lj562
Lj561:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%edx
	movl	L_U_DBF_DBFFILE_DBFGLOBALS$non_lazy_ptr-Lj210(%ebx),%eax
	movl	(%eax),%eax
	movl	12(%eax),%eax
	movl	%eax,144(%edx)
Lj562:
Lj470:
	call	LFPC_POPADDRSTACK$stub
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj471
	call	LFPC_RERAISE$stub
Lj471:
	movl	-56(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_DBFFILE_TDBFFILE_$_OPEN_GETVERSION
_DBF_DBFFILE_TDBFFILE_$_OPEN_GETVERSION:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj208
Lj208:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	40(%eax),%eax
	movb	(%eax),%al
	movb	%al,-5(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movb	$0,120(%eax)
	movb	-5(%ebp),%al
	cmpb	$48,%al
	jb	Lj570
	subb	$48,%al
	subb	$2,%al
	jbe	Lj571
	subb	$195,%al
	je	Lj572
	subb	$6,%al
	je	Lj572
	jmp	Lj570
Lj571:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movb	$7,120(%eax)
	jmp	Lj569
Lj572:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movb	$5,120(%eax)
	jmp	Lj569
Lj570:
Lj569:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movb	120(%eax),%al
	testb	%al,%al
	je	Lj577
	jmp	Lj578
Lj577:
	movb	-5(%ebp),%al
	andb	$7,%al
	cmpb	$2,%al
	jb	Lj580
	subb	$2,%al
	je	Lj583
	decb	%al
	je	Lj581
	decb	%al
	je	Lj582
	decb	%al
	je	Lj583
	jmp	Lj580
Lj581:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	call	L_DBF_DBFFILE_TDBFFILE_$__GETLANGUAGEID$$LONGINT$stub
	testl	%eax,%eax
	je	Lj584
	jmp	Lj585
Lj584:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movb	$2,120(%eax)
	jmp	Lj590
Lj585:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movb	$3,120(%eax)
Lj590:
	jmp	Lj579
Lj582:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movb	$6,120(%eax)
	jmp	Lj579
Lj583:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movb	$5,120(%eax)
	jmp	Lj579
Lj580:
	movl	L_U_DBF_STR_STRING_INVALID_DBF_FILE$non_lazy_ptr-Lj208(%ebx),%eax
	movl	(%eax),%ecx
	movl	L_VMT_DBF_COMMON_EDBFERROR$non_lazy_ptr-Lj208(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La1:
	movl	%ebp,%ecx
	leal	La1-Lj208(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj579:
Lj578:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	104(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movb	120(%eax),%al
	movb	%al,36(%edx)
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_DBFFILE_TDBFFILE_$__CLOSE
_DBF_DBFFILE_TDBFFILE_$__CLOSE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpb	$0,44(%eax)
	jne	Lj607
	jmp	Lj608
Lj607:
	movl	$-1,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	112(%eax),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	movl	%eax,%ebx
	decl	%ebx
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%ebx
	jl	Lj612
	decl	-12(%ebp)
	.align 2
Lj613:
	incl	-12(%ebp)
	movl	-4(%ebp),%eax
	movl	112(%eax),%eax
	movl	-12(%ebp),%edx
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,%esi
	movl	%esi,%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__CLOSE$stub
	movl	-4(%ebp),%eax
	movl	112(%eax),%eax
	movl	-12(%ebp),%edx
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	-4(%ebp),%edx
	cmpl	92(%edx),%eax
	je	Lj624
	jmp	Lj625
Lj624:
	movl	-12(%ebp),%eax
	movl	%eax,-8(%ebp)
Lj625:
	cmpl	-12(%ebp),%ebx
	jg	Lj613
Lj612:
	movl	-4(%ebp),%eax
	leal	96(%eax),%eax
	call	L_DBF_COMMON_FREEANDNIL$formal$stub
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*124(%edx)
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jge	Lj636
	jmp	Lj637
Lj636:
	movl	-4(%ebp),%eax
	movl	112(%eax),%eax
	movl	-8(%ebp),%edx
	call	L_CLASSES_TLIST_$__DELETE$LONGINT$stub
Lj637:
	movl	$0,-12(%ebp)
	jmp	Lj645
	.align 2
Lj644:
	movl	-4(%ebp),%eax
	movl	108(%eax),%eax
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	108(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*132(%ecx)
	movl	-4(%ebp),%edx
	cmpl	92(%edx),%eax
	je	Lj647
	jmp	Lj648
Lj647:
	movl	-4(%ebp),%eax
	movl	108(%eax),%eax
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	108(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*188(%ecx)
	jmp	Lj657
Lj648:
	incl	-12(%ebp)
Lj657:
Lj645:
	movl	-4(%ebp),%eax
	movl	108(%eax),%eax
	movl	-4(%ebp),%edx
	movl	108(%edx),%edx
	movl	(%edx),%edx
	call	*128(%edx)
	cmpl	-12(%ebp),%eax
	jg	Lj644
	jmp	Lj646
Lj646:
	movl	-4(%ebp),%eax
	leal	92(%eax),%eax
	call	L_DBF_COMMON_FREEANDNIL$formal$stub
	movl	-4(%ebp),%eax
	leal	124(%eax),%eax
	call	L_DBF_COMMON_FREEMEMANDNIL$POINTER$stub
	movl	-4(%ebp),%eax
	leal	128(%eax),%eax
	call	L_DBF_COMMON_FREEMEMANDNIL$POINTER$stub
	movl	-4(%ebp),%eax
	movb	$0,148(%eax)
Lj608:
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DBF_DBFFILE_TDBFFILE_$__FINISHCREATE$TDBFFIELDDEFS$LONGINT
_DBF_DBFFILE_TDBFFILE_$__FINISHCREATE$TDBFFIELDDEFS$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$248,%esp
	movl	%ebx,-240(%ebp)
	movl	%esi,-236(%ebp)
	movl	%edi,-232(%ebp)
	call	Lj669
Lj669:
	popl	-228(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-104(%ebp)
	movl	$0,-224(%ebp)
	movl	$0,-220(%ebp)
	movl	$0,-216(%ebp)
	leal	-144(%ebp),%ecx
	leal	-168(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-172(%ebp)
	testl	%eax,%eax
	jne	Lj670
	leal	-184(%ebp),%ecx
	leal	-208(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-212(%ebp)
	testl	%eax,%eax
	jne	Lj673
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_DBF_PGFILE_TPAGEDFILE_$__SETRECORDCOUNT$LONGINT$stub
	movb	$0,-121(%ebp)
	movl	$0,-132(%ebp)
	movl	-12(%ebp),%eax
	movzbl	120(%eax),%eax
	cmpl	$5,%eax
	je	Lj687
	cmpl	$7,%eax
	je	Lj687
Lj687:
	je	Lj685
	jmp	Lj686
Lj685:
	movl	-12(%ebp),%eax
	movzbl	148(%eax),%eax
	testl	%eax,%eax
	je	Lj688
	jmp	Lj689
Lj688:
	call	L_DBF_WTIL_GETUSERDEFAULTLCID$$LONGWORD$stub
	movl	%eax,%edx
	movl	-12(%ebp),%eax
	movzbl	148(%eax),%ecx
	movl	-228(%ebp),%eax
	movl	L_TC_DBF_LANG_LANGID_TO_CODEPAGE$non_lazy_ptr-Lj669(%eax),%ebx
	movzwl	(%ebx,%ecx,2),%eax
	movb	$1,%cl
	call	L_DBF_LANG_CONSTRUCTLANGID$LONGINT$LONGWORD$BOOLEAN$$BYTE$stub
	movl	-12(%ebp),%edx
	movb	%al,148(%edx)
Lj689:
	jmp	Lj698
Lj686:
	movl	-12(%ebp),%eax
	movzbl	148(%eax),%eax
	testl	%eax,%eax
	je	Lj699
	jmp	Lj700
Lj699:
	movl	-12(%ebp),%ecx
	movl	-228(%ebp),%edx
	movl	L_U_DBF_DBFFILE_DBFGLOBALS$non_lazy_ptr-Lj669(%edx),%eax
	movl	(%eax),%eax
	movb	16(%eax),%al
	movb	%al,148(%ecx)
Lj700:
Lj698:
	movl	-12(%ebp),%eax
	movzbl	148(%eax),%eax
	movl	-228(%ebp),%edx
	movl	L_TC_DBF_LANG_LANGID_TO_CODEPAGE$non_lazy_ptr-Lj669(%edx),%ecx
	movzwl	(%ecx,%eax,2),%edx
	movl	-12(%ebp),%eax
	movl	%edx,140(%eax)
	movl	-12(%ebp),%eax
	movzbl	148(%eax),%ecx
	movl	-228(%ebp),%eax
	movl	L_TC_DBF_LANG_LANGID_TO_LOCALE$non_lazy_ptr-Lj669(%eax),%edx
	movl	(%edx,%ecx,4),%eax
	movl	%eax,-128(%ebp)
	movl	-12(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	140(%eax),%eax
	movl	%eax,144(%edx)
	movl	-12(%ebp),%eax
	movb	120(%eax),%al
	cmpb	$6,%al
	je	Lj709
	jmp	Lj710
Lj709:
	movl	-12(%ebp),%eax
	movl	$68,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*108(%ecx)
	movl	-12(%ebp),%eax
	movl	$48,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*104(%ecx)
	movl	-12(%ebp),%eax
	movl	40(%eax),%eax
	movl	-12(%ebp),%edx
	movl	12(%edx),%edx
	movb	$0,%cl
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$CHAR$stub
	movl	-12(%ebp),%eax
	movl	40(%eax),%eax
	movb	$4,(%eax)
	leal	-216(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-216(%ebp)
	leal	-220(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-220(%ebp)
	leal	-220(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movl	140(%eax),%eax
	movl	-128(%ebp),%edx
	movb	$0,%cl
	call	L_DBF_LANG_CONSTRUCTLANGNAME$LONGINT$LONGWORD$BOOLEAN$$ANSISTRING$stub
	movl	-220(%ebp),%eax
	testl	%eax,%eax
	jne	Lj739
	movl	-228(%ebp),%edx
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj669(%edx),%ecx
	movl	%ecx,%eax
Lj739:
	leal	-216(%ebp),%edx
	call	Lfpc_pchar_to_ansistr$stub
	movl	-216(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	40(%eax),%eax
	addl	$32,%eax
	movl	$31,%ecx
	call	L_SYSUTILS_STRPLCOPY$PCHAR$ANSISTRING$LONGWORD$$PCHAR$stub
	leal	-92(%ebp),%eax
	movl	%eax,-96(%ebp)
	jmp	Lj748
Lj710:
	movl	-12(%ebp),%eax
	movl	$32,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*108(%ecx)
	movl	-12(%ebp),%eax
	movl	$32,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*104(%ecx)
	movl	-12(%ebp),%eax
	movl	40(%eax),%eax
	movl	-12(%ebp),%edx
	movl	12(%edx),%edx
	movb	$0,%cl
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$CHAR$stub
	movl	-12(%ebp),%eax
	movb	120(%eax),%al
	cmpb	$5,%al
	jb	Lj764
	subb	$5,%al
	je	Lj765
	subb	$2,%al
	je	Lj766
	jmp	Lj764
Lj765:
	movl	-12(%ebp),%eax
	movl	40(%eax),%eax
	movb	$3,(%eax)
	jmp	Lj763
Lj766:
	movl	-12(%ebp),%eax
	movl	40(%eax),%eax
	movb	$48,(%eax)
	jmp	Lj763
Lj764:
	movl	-12(%ebp),%eax
	movl	40(%eax),%eax
	movb	$3,(%eax)
Lj763:
	movl	-12(%ebp),%eax
	movb	120(%eax),%al
	cmpb	$2,%al
	je	Lj773
	jmp	Lj774
Lj773:
	movl	-12(%ebp),%eax
	movl	40(%eax),%eax
	movb	$0,29(%eax)
	jmp	Lj777
Lj774:
	movl	-12(%ebp),%eax
	movl	40(%eax),%edx
	movl	-12(%ebp),%eax
	movb	148(%eax),%al
	movb	%al,29(%edx)
Lj777:
	leal	-44(%ebp),%eax
	movl	%eax,-96(%ebp)
Lj748:
	movl	-12(%ebp),%eax
	movl	104(%eax),%eax
	call	L_CLASSES_TCOLLECTION_$__CLEAR$stub
	movl	$1,-112(%ebp)
	movl	-4(%ebp),%eax
	call	L_CLASSES_TCOLLECTION_$__GETCOUNT$$LONGINT$stub
	movl	%eax,%edi
	movl	$1,-108(%ebp)
	cmpl	-108(%ebp),%edi
	jl	Lj787
	decl	-108(%ebp)
	.align 2
Lj788:
	incl	-108(%ebp)
	movl	-108(%ebp),%edx
	decl	%edx
	movl	-4(%ebp),%eax
	call	L_DBF_FIELDS_TDBFFIELDDEFS_$__GETITEM$LONGINT$$TDBFFIELDDEF$stub
	movl	%eax,-100(%ebp)
	movl	-12(%ebp),%eax
	cmpb	$0,173(%eax)
	jne	Lj797
	jmp	Lj798
Lj797:
	movl	-100(%ebp),%eax
	movl	32(%eax),%eax
	cmpl	$11,%eax
	je	Lj799
	jmp	Lj800
Lj799:
	movl	-100(%ebp),%eax
	movl	$1,%edx
	call	L_DBF_FIELDS_TDBFFIELDDEF_$__SETFIELDTYPE$TFIELDTYPE$stub
	movl	-100(%ebp),%eax
	movl	$22,%edx
	call	L_DBF_FIELDS_TDBFFIELDDEF_$__SETSIZE$LONGINT$stub
Lj800:
Lj798:
	leal	-216(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-216(%ebp)
	leal	-224(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-224(%ebp)
	movl	-100(%ebp),%ebx
	movl	28(%ebx),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-224(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	28(%ebx),%eax
	movl	%eax,-224(%ebp)
	leal	-216(%ebp),%edx
	movl	-224(%ebp),%eax
	movl	-228(%ebp),%ecx
	movl	L_U_SYSTEM_WIDESTRINGMANAGER$non_lazy_ptr-Lj669(%ecx),%ebx
	movl	32(%ebx),%ecx
	call	*%ecx
	movl	-216(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-100(%ebp),%ebx
	leal	28(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-216(%ebp),%eax
	movl	%eax,28(%ebx)
	movl	-100(%ebp),%edx
	movl	-112(%ebp),%eax
	movl	%eax,80(%edx)
	cmpb	$0,-121(%ebp)
	jne	Lj819
	jmp	Lj821
Lj821:
	movl	-100(%ebp),%eax
	call	L_DBF_FIELDS_TDBFFIELDDEF_$__ISBLOB$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj819
	jmp	Lj820
Lj819:
	movb	$1,-121(%ebp)
	jmp	Lj824
Lj820:
	movb	$0,-121(%ebp)
Lj824:
	movl	-12(%ebp),%eax
	movzbl	120(%eax),%eax
	cmpl	$5,%eax
	je	Lj827
	cmpl	$7,%eax
	je	Lj827
Lj827:
	je	Lj825
	jmp	Lj826
Lj825:
	movl	-100(%ebp),%eax
	movb	44(%eax),%al
	cmpb	$81,%al
	je	Lj828
	jmp	Lj830
Lj830:
	movl	-100(%ebp),%eax
	movb	44(%eax),%al
	cmpb	$86,%al
	je	Lj828
	jmp	Lj829
Lj828:
	movl	-132(%ebp),%eax
	incl	%eax
	movl	%eax,-132(%ebp)
Lj829:
	movl	-100(%ebp),%eax
	movl	92(%eax),%eax
	cmpl	$0,%eax
	jge	Lj833
	jmp	Lj834
Lj833:
	movl	-132(%ebp),%eax
	incl	%eax
	movl	%eax,-132(%ebp)
Lj834:
Lj826:
	movl	-100(%ebp),%eax
	movl	60(%eax),%eax
	movl	%eax,-116(%ebp)
	movl	-100(%ebp),%eax
	movl	64(%eax),%eax
	movl	%eax,-120(%ebp)
	movl	-100(%ebp),%eax
	movb	44(%eax),%al
	cmpb	$67,%al
	je	Lj843
	jmp	Lj842
Lj843:
	movl	-12(%ebp),%eax
	movzbl	120(%eax),%eax
	cmpl	$5,%eax
	je	Lj844
	cmpl	$7,%eax
	je	Lj844
Lj844:
	je	Lj841
	jmp	Lj842
Lj841:
	movl	-116(%ebp),%eax
	shrl	$8,%eax
	movl	%eax,-120(%ebp)
	movl	-116(%ebp),%eax
	andl	$255,%eax
	movl	%eax,-116(%ebp)
Lj842:
	movl	-12(%ebp),%eax
	movb	120(%eax),%al
	cmpb	$6,%al
	je	Lj849
	jmp	Lj850
Lj849:
	leal	-92(%ebp),%eax
	movb	$0,%cl
	movl	$48,%edx
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$CHAR$stub
	movl	-100(%ebp),%eax
	movl	28(%eax),%edx
	leal	-92(%ebp),%eax
	movl	$31,%ecx
	call	L_SYSUTILS_STRPLCOPY$PCHAR$ANSISTRING$LONGWORD$$PCHAR$stub
	movl	-100(%ebp),%eax
	movb	44(%eax),%al
	movb	%al,-60(%ebp)
	movb	-116(%ebp),%al
	movb	%al,-59(%ebp)
	movb	-120(%ebp),%al
	movb	%al,-58(%ebp)
	movl	-100(%ebp),%eax
	movl	84(%eax),%eax
	call	L_DBF_COMMON_SWAPINTLE$LONGWORD$$LONGWORD$stub
	movl	%eax,-50(%ebp)
	jmp	Lj873
Lj850:
	leal	-44(%ebp),%eax
	movb	$0,%cl
	movl	$32,%edx
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$CHAR$stub
	movl	-100(%ebp),%eax
	movl	28(%eax),%edx
	leal	-44(%ebp),%eax
	movl	$10,%ecx
	call	L_SYSUTILS_STRPLCOPY$PCHAR$ANSISTRING$LONGWORD$$PCHAR$stub
	movl	-100(%ebp),%eax
	movb	44(%eax),%al
	movb	%al,-33(%ebp)
	movb	-116(%ebp),%al
	movb	%al,-28(%ebp)
	movb	-120(%ebp),%al
	movb	%al,-27(%ebp)
	movl	-12(%ebp),%eax
	movzbl	120(%eax),%eax
	cmpl	$5,%eax
	je	Lj894
	cmpl	$7,%eax
	je	Lj894
Lj894:
	je	Lj892
	jmp	Lj893
Lj892:
	movl	-112(%ebp),%eax
	call	L_DBF_COMMON_SWAPINTLE$LONGWORD$$LONGWORD$stub
	movl	%eax,-32(%ebp)
Lj893:
	movl	-12(%ebp),%eax
	movzbl	120(%eax),%eax
	cmpl	$0,%eax
	je	Lj901
	cmpl	$5,%eax
	je	Lj901
	cmpl	$7,%eax
	je	Lj901
Lj901:
	je	Lj899
	jmp	Lj900
Lj899:
	movl	-12(%ebp),%eax
	movl	40(%eax),%eax
	movzbl	(%eax),%eax
	subl	$2,%eax
	cmpl	$2,%eax
	jb	Lj905
Lj905:
	jc	Lj904
	jmp	Lj903
Lj904:
	movl	-100(%ebp),%eax
	movzbl	44(%eax),%eax
	movl	-228(%ebp),%ecx
	movl	L_$DBF_DBFFILE$_Ld6$non_lazy_ptr-Lj669(%ecx),%edx
	btl	%eax,(%edx)
	jc	Lj902
	jmp	Lj906
Lj906:
	movl	-132(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj902
	jmp	Lj903
Lj902:
	movl	-12(%ebp),%eax
	movl	40(%eax),%eax
	movb	$48,(%eax)
	movl	-12(%ebp),%eax
	movb	$7,120(%eax)
Lj903:
	movl	-100(%ebp),%eax
	movl	84(%eax),%eax
	call	L_DBF_COMMON_SWAPINTLE$LONGWORD$$LONGWORD$stub
	movb	%al,-25(%ebp)
	movl	-100(%ebp),%eax
	movb	24(%eax),%al
	movb	%al,-21(%ebp)
	movl	-100(%ebp),%eax
	movl	24(%eax),%eax
	testl	%eax,%eax
	jne	Lj917
	jmp	Lj918
Lj917:
	movzbl	-26(%ebp),%eax
	orl	$12,%eax
	movb	%al,-26(%ebp)
Lj918:
	movl	-12(%ebp),%eax
	movl	40(%eax),%eax
	movzbl	(%eax),%eax
	cmpl	$48,%eax
	je	Lj923
	jmp	Lj922
Lj923:
	movl	-100(%ebp),%eax
	movl	24(%eax),%eax
	testl	%eax,%eax
	jne	Lj921
	jmp	Lj922
Lj921:
	movl	-12(%ebp),%eax
	movl	40(%eax),%eax
	movb	$49,(%eax)
	movl	-12(%ebp),%eax
	movb	$7,120(%eax)
Lj922:
	movl	-100(%ebp),%eax
	cmpb	$0,36(%eax)
	jne	Lj928
	jmp	Lj929
Lj928:
	movzbl	-26(%ebp),%eax
	orl	$1,%eax
	movb	%al,-26(%ebp)
Lj929:
Lj900:
Lj873:
	movl	-12(%ebp),%eax
	movl	104(%eax),%eax
	call	L_DBF_FIELDS_TDBFFIELDDEFS_$__ADDFIELDDEF$$TDBFFIELDDEF$stub
	movl	%eax,%esi
	movl	%esi,%ebx
	movl	-100(%ebp),%edx
	movl	%ebx,%eax
	movl	%ebx,%ecx
	movl	(%ecx),%ecx
	call	*112(%ecx)
	movl	-112(%ebp),%eax
	movl	%eax,80(%ebx)
	movl	$0,84(%ebx)
	movl	-96(%ebp),%ecx
	movl	-108(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*144(%ebx)
	movl	-100(%ebp),%eax
	movl	60(%eax),%eax
	addl	%eax,-112(%ebp)
	cmpl	-108(%ebp),%edi
	jg	Lj788
Lj787:
	movl	-12(%ebp),%eax
	movb	120(%eax),%al
	cmpb	$7,%al
	je	Lj954
	jmp	Lj953
Lj954:
	movl	-132(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj952
	jmp	Lj953
Lj952:
	leal	-44(%ebp),%eax
	movb	$0,%cl
	movl	$32,%edx
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$CHAR$stub
	leal	-44(%ebp),%eax
	movl	$10,%ecx
	movl	-228(%ebp),%edx
	movl	L_$DBF_DBFFILE$_Ld7$non_lazy_ptr-Lj669(%edx),%ebx
	movl	%ebx,%edx
	call	L_SYSUTILS_STRPLCOPY$PCHAR$ANSISTRING$LONGWORD$$PCHAR$stub
	movb	$48,-33(%ebp)
	movl	-132(%ebp),%edx
	decl	%edx
	movl	%edx,%eax
	sarl	$31,%eax
	andl	$7,%eax
	addl	%eax,%edx
	sarl	$3,%edx
	incl	%edx
	movb	%dl,-28(%ebp)
	movb	$0,-27(%ebp)
	movl	-112(%ebp),%eax
	call	L_DBF_COMMON_SWAPINTLE$LONGWORD$$LONGWORD$stub
	movl	%eax,-32(%ebp)
	movb	$5,-26(%ebp)
	leal	-44(%ebp),%esi
	movl	-4(%ebp),%eax
	call	L_CLASSES_TCOLLECTION_$__GETCOUNT$$LONGINT$stub
	movl	%eax,%edx
	incl	%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ebx
	movl	%esi,%ecx
	call	*144(%ebx)
	movzbl	-28(%ebp),%eax
	addl	%eax,-112(%ebp)
Lj953:
	movl	-12(%ebp),%eax
	movb	$13,%dl
	call	L_DBF_PGFILE_TPAGEDFILE_$__WRITECHAR$BYTE$stub
	cmpb	$0,-121(%ebp)
	jne	Lj991
	jmp	Lj992
Lj991:
	movl	-12(%ebp),%eax
	movb	120(%eax),%al
	cmpb	$2,%al
	jb	Lj994
	subb	$2,%al
	je	Lj995
	subb	$3,%al
	je	Lj996
	subb	$2,%al
	je	Lj997
	jmp	Lj994
Lj995:
	movl	-12(%ebp),%eax
	movl	40(%eax),%eax
	movb	(%eax),%dl
	orb	$128,%dl
	movl	-12(%ebp),%eax
	movl	40(%eax),%eax
	movb	%dl,(%eax)
	jmp	Lj993
Lj996:
	movl	-12(%ebp),%eax
	movl	40(%eax),%eax
	movzbl	(%eax),%eax
	subl	$2,%eax
	cmpl	$2,%eax
	jb	Lj1002
Lj1002:
	jc	Lj1000
	jmp	Lj1001
Lj1000:
	movl	-12(%ebp),%eax
	movl	40(%eax),%eax
	movb	$245,(%eax)
Lj1001:
	jmp	Lj993
Lj997:
	movl	-12(%ebp),%eax
	movl	40(%eax),%eax
	movzbl	28(%eax),%edx
	orl	$2,%edx
	movl	-12(%ebp),%eax
	movl	40(%eax),%eax
	movb	%dl,28(%eax)
	jmp	Lj993
Lj994:
	movl	-12(%ebp),%eax
	movl	40(%eax),%eax
	movb	(%eax),%dl
	orb	$136,%dl
	movl	-12(%ebp),%eax
	movl	40(%eax),%eax
	movb	%dl,(%eax)
Lj993:
Lj992:
	movl	-12(%ebp),%eax
	movl	40(%eax),%edx
	movw	-112(%ebp),%ax
	movw	%ax,10(%edx)
	movl	-132(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj1011
	jmp	Lj1012
Lj1011:
	movl	-12(%ebp),%ebx
	movl	-12(%ebp),%esi
	movl	-4(%ebp),%eax
	call	L_CLASSES_TCOLLECTION_$__GETCOUNT$$LONGINT$stub
	incl	%eax
	movl	16(%esi),%ecx
	imull	%eax,%ecx
	movl	12(%ebx),%edx
	addl	%ecx,%edx
	incl	%edx
	movl	-12(%ebp),%eax
	movl	40(%eax),%eax
	movw	%dx,8(%eax)
	jmp	Lj1017
Lj1012:
	movl	-12(%ebp),%ebx
	movl	-12(%ebp),%esi
	movl	-4(%ebp),%eax
	call	L_CLASSES_TCOLLECTION_$__GETCOUNT$$LONGINT$stub
	movl	16(%esi),%ecx
	imull	%eax,%ecx
	movl	12(%ebx),%edx
	addl	%ecx,%edx
	incl	%edx
	movl	-12(%ebp),%eax
	movl	40(%eax),%eax
	movw	%dx,8(%eax)
Lj1017:
	movl	-12(%ebp),%eax
	movb	120(%eax),%al
	cmpb	$7,%al
	je	Lj1022
	jmp	Lj1023
Lj1022:
	movl	-12(%ebp),%eax
	movl	40(%eax),%eax
	addw	$263,8(%eax)
Lj1023:
	movl	-12(%ebp),%eax
	call	L_DBF_PGFILE_TPAGEDFILE_$__WRITEHEADER$stub
Lj673:
	call	LFPC_POPADDRSTACK$stub
	movl	-12(%ebp),%eax
	movl	40(%eax),%eax
	movzwl	10(%eax),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*104(%ecx)
	movl	-12(%ebp),%eax
	movl	40(%eax),%eax
	movzwl	8(%eax),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*108(%ecx)
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*148(%edx)
	movl	-212(%ebp),%eax
	testl	%eax,%eax
	je	Lj674
	decl	%eax
	testl	%eax,%eax
	je	Lj675
Lj675:
	call	LFPC_RERAISE$stub
Lj674:
	movl	-12(%ebp),%eax
	call	L_DBF_DBFFILE_TDBFFILE_$__HASBLOB$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj1038
	jmp	Lj1037
Lj1038:
	movl	-12(%ebp),%eax
	movl	96(%eax),%eax
	testl	%eax,%eax
	je	Lj1036
	jmp	Lj1037
Lj1036:
	leal	-224(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-224(%ebp)
	leal	-224(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DBF_DBFFILE_TDBFFILE_$__GETMEMOEXT$$ANSISTRING$stub
	movl	-224(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	56(%eax),%eax
	leal	-104(%ebp),%ecx
	call	L_SYSUTILS_CHANGEFILEEXT$ANSISTRING$ANSISTRING$$ANSISTRING$stub
	movl	-12(%ebp),%eax
	movzbl	120(%eax),%eax
	cmpl	$5,%eax
	je	Lj1053
	cmpl	$7,%eax
	je	Lj1053
Lj1053:
	je	Lj1051
	jmp	Lj1052
Lj1051:
	movl	-12(%ebp),%ecx
	movl	-228(%ebp),%eax
	movl	L_VMT_DBF_MEMO_TFOXPROMEMOFILE$non_lazy_ptr-Lj669(%eax),%edx
	movl	$0,%eax
	call	L_DBF_MEMO_TMEMOFILE_$__CREATE$POINTER$$TMEMOFILE$stub
	movl	-12(%ebp),%edx
	movl	%eax,96(%edx)
	jmp	Lj1062
Lj1052:
	movl	-12(%ebp),%ecx
	movl	-228(%ebp),%eax
	movl	L_VMT_DBF_MEMO_TDBASEMEMOFILE$non_lazy_ptr-Lj669(%eax),%edx
	movl	$0,%eax
	call	L_DBF_MEMO_TMEMOFILE_$__CREATE$POINTER$$TMEMOFILE$stub
	movl	-12(%ebp),%edx
	movl	%eax,96(%edx)
Lj1062:
	movl	-12(%ebp),%eax
	movl	96(%eax),%eax
	movl	-104(%ebp),%edx
	call	L_DBF_PGFILE_TPAGEDFILE_$__SETFILENAME$ANSISTRING$stub
	movl	-12(%ebp),%eax
	movzbl	48(%eax),%eax
	decl	%eax
	cmpl	$2,%eax
	jb	Lj1077
Lj1077:
	jc	Lj1075
	jmp	Lj1076
Lj1075:
	movl	-12(%ebp),%eax
	movl	100(%eax),%edx
	movl	-12(%ebp),%eax
	movl	96(%eax),%eax
	call	L_DBF_PGFILE_TPAGEDFILE_$__SETSTREAM$TSTREAM$stub
Lj1076:
	movl	-12(%ebp),%eax
	movl	96(%eax),%edx
	movl	-12(%ebp),%eax
	movb	48(%eax),%al
	movb	%al,48(%edx)
	movl	-12(%ebp),%eax
	movl	96(%eax),%edx
	movl	-12(%ebp),%eax
	movb	51(%eax),%al
	movb	%al,51(%edx)
	movl	-12(%ebp),%eax
	movl	96(%eax),%eax
	movl	-8(%ebp),%edx
	movl	%edx,100(%eax)
	movl	-12(%ebp),%eax
	movb	120(%eax),%dl
	movl	-12(%ebp),%eax
	movl	96(%eax),%eax
	call	L_DBF_MEMO_TMEMOFILE_$__SETDBFVERSION$TXBASEVERSION$stub
	movl	-12(%ebp),%eax
	movl	96(%eax),%eax
	call	L_DBF_MEMO_TMEMOFILE_$__OPEN$stub
Lj1037:
Lj670:
	call	LFPC_POPADDRSTACK$stub
	leal	-224(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-224(%ebp)
	leal	-220(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-220(%ebp)
	leal	-216(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-216(%ebp)
	leal	-104(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-104(%ebp)
	movl	-172(%ebp),%eax
	testl	%eax,%eax
	je	Lj671
	call	LFPC_RERAISE$stub
Lj671:
	movl	-240(%ebp),%ebx
	movl	-236(%ebp),%esi
	movl	-232(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_DBF_DBFFILE_TDBFFILE_$__HASBLOB$$BOOLEAN
_DBF_DBFFILE_TDBFFILE_$__HASBLOB$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	movl	%eax,-4(%ebp)
	movb	$0,-5(%ebp)
	movl	-4(%ebp),%eax
	movl	104(%eax),%eax
	call	L_CLASSES_TCOLLECTION_$__GETCOUNT$$LONGINT$stub
	movl	%eax,%ebx
	decl	%ebx
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%ebx
	jl	Lj1105
	decl	-12(%ebp)
	.align 2
Lj1106:
	incl	-12(%ebp)
	movl	-4(%ebp),%eax
	movl	104(%eax),%eax
	movl	-12(%ebp),%edx
	call	L_DBF_FIELDS_TDBFFIELDDEFS_$__GETITEM$LONGINT$$TDBFFIELDDEF$stub
	movl	%eax,%esi
	movl	%esi,%eax
	call	L_DBF_FIELDS_TDBFFIELDDEF_$__ISBLOB$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj1109
	jmp	Lj1110
Lj1109:
	movb	$1,-5(%ebp)
	jmp	Lj1105
Lj1110:
	cmpl	-12(%ebp),%ebx
	jg	Lj1106
Lj1105:
	movb	-5(%ebp),%al
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DBF_DBFFILE_TDBFFILE_$__GETMEMOEXT$$ANSISTRING
_DBF_DBFFILE_TDBFFILE_$__GETMEMOEXT$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-64(%ebp)
	movl	%esi,-60(%ebp)
	movl	%edi,-56(%ebp)
	call	Lj1122
Lj1122:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-52(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj1123
	movl	-4(%ebp),%eax
	movb	120(%eax),%al
	cmpb	$5,%al
	jb	Lj1127
	subb	$5,%al
	je	Lj1128
	subb	$2,%al
	je	Lj1128
	jmp	Lj1127
Lj1128:
	movl	L_$DBF_DBFFILE$_Ld9$non_lazy_ptr-Lj1122(%esi),%ebx
	movl	-8(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%ebx,(%edi)
	jmp	Lj1126
Lj1127:
	movl	L_$DBF_DBFFILE$_Ld11$non_lazy_ptr-Lj1122(%esi),%ebx
	movl	-8(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%ebx,(%edi)
Lj1126:
	movl	-4(%ebp),%eax
	movl	56(%eax),%eax
	testl	%eax,%eax
	jne	Lj1135
	jmp	Lj1134
Lj1135:
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-4(%ebp),%eax
	movl	56(%eax),%eax
	leal	-52(%ebp),%edx
	call	L_SYSUTILS_UPPERCASE$ANSISTRING$$ANSISTRING$stub
	movl	-52(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	56(%eax),%eax
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	je	Lj1133
	jmp	Lj1134
Lj1133:
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	leal	-52(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	call	L_SYSUTILS_UPPERCASE$ANSISTRING$$ANSISTRING$stub
	movl	-52(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	movl	%eax,(%ebx)
Lj1134:
Lj1123:
	call	LFPC_POPADDRSTACK$stub
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj1124
	call	LFPC_RERAISE$stub
Lj1124:
	movl	-64(%ebp),%ebx
	movl	-60(%ebp),%esi
	movl	-56(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_DBF_DBFFILE_TDBFFILE_$__ZAP
_DBF_DBFFILE_TDBFFILE_$__ZAP:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$0,%edx
	call	L_DBF_PGFILE_TPAGEDFILE_$__SETRECORDCOUNT$LONGINT$stub
	movl	-4(%ebp),%eax
	call	L_DBF_PGFILE_TPAGEDFILE_$__GETRECORDCOUNT$$LONGINT$stub
	movl	-4(%ebp),%edx
	movl	40(%edx),%edx
	movl	%eax,4(%edx)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*148(%edx)
	movl	-4(%ebp),%eax
	call	L_DBF_DBFFILE_TDBFFILE_$__REGENERATEINDEXES$stub
	leave
	ret

.text
	.align 4
.globl	_DBF_DBFFILE_TDBFFILE_$__WRITEHEADER
_DBF_DBFFILE_TDBFFILE_$__WRITEHEADER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	testl	%eax,%eax
	je	Lj1166
	jmp	Lj1167
Lj1166:
	jmp	Lj1164
Lj1167:
	movl	-4(%ebp),%eax
	movl	40(%eax),%eax
	movl	%eax,-24(%ebp)
	leal	-20(%ebp),%eax
	call	L_DBF_WTIL_GETLOCALTIME$TSYSTEMTIME$stub
	movzwl	-20(%ebp),%eax
	subl	$1900,%eax
	movl	-24(%ebp),%edx
	movb	%al,1(%edx)
	movl	-24(%ebp),%eax
	movb	-18(%ebp),%dl
	movb	%dl,2(%eax)
	movl	-24(%ebp),%eax
	movb	-14(%ebp),%dl
	movb	%dl,3(%eax)
	movl	-4(%ebp),%eax
	call	L_DBF_PGFILE_TPAGEDFILE_$__WRITEHEADER$stub
	movb	$26,-25(%ebp)
	movl	-24(%ebp),%eax
	movl	4(%eax),%edx
	incl	%edx
	movl	-4(%ebp),%eax
	call	L_DBF_PGFILE_TPAGEDFILE_$__CALCPAGEOFFSET$LONGINT$$LONGINT$stub
	movl	%eax,(%esp)
	leal	-25(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$1,%ecx
	call	L_DBF_PGFILE_TPAGEDFILE_$__WRITEBLOCK$POINTER$LONGINT$LONGINT$stub
Lj1164:
	leave
	ret

.text
	.align 4
.globl	_DBF_DBFFILE_TDBFFILE_$__CONSTRUCTFIELDDEFS
_DBF_DBFFILE_TDBFFILE_$__CONSTRUCTFIELDDEFS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$296,%esp
	movl	%ebx,-284(%ebp)
	movl	%esi,-280(%ebp)
	movl	%edi,-276(%ebp)
	call	Lj1195
Lj1195:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	$0,-168(%ebp)
	movl	$0,-264(%ebp)
	movl	$0,-260(%ebp)
	leal	-188(%ebp),%ecx
	leal	-212(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-216(%ebp)
	testl	%eax,%eax
	jne	Lj1196
	movl	-4(%ebp),%eax
	movl	104(%eax),%eax
	call	L_CLASSES_TCOLLECTION_$__CLEAR$stub
	movl	-4(%ebp),%eax
	movb	120(%eax),%al
	cmpb	$6,%al
	je	Lj1201
	jmp	Lj1202
Lj1201:
	movl	$68,-8(%ebp)
	movl	$48,-12(%ebp)
	jmp	Lj1207
Lj1202:
	movl	$32,-8(%ebp)
	movl	$32,-12(%ebp)
Lj1207:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*108(%ecx)
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*104(%ecx)
	movl	-4(%ebp),%eax
	movl	$0,164(%eax)
	movl	-4(%ebp),%eax
	movl	$0,168(%eax)
	movl	-4(%ebp),%eax
	movb	$0,172(%eax)
	movl	-4(%ebp),%eax
	movl	40(%eax),%eax
	movzwl	8(%eax),%eax
	movl	-8(%ebp),%edx
	subl	%edx,%eax
	cltd
	idivl	-12(%ebp)
	movl	%eax,-152(%ebp)
	movl	$1,-20(%ebp)
	movl	$0,-156(%ebp)
	movl	$1,-148(%ebp)
	movl	$0,-176(%ebp)
	movb	$0,-169(%ebp)
	movb	$0,-170(%ebp)
	movb	$0,-171(%ebp)
	leal	-228(%ebp),%ecx
	leal	-252(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-256(%ebp)
	testl	%eax,%eax
	jne	Lj1242
	.align 2
Lj1246:
	movl	-4(%ebp),%eax
	movb	120(%eax),%al
	cmpb	$6,%al
	je	Lj1249
	jmp	Lj1250
Lj1249:
	leal	-100(%ebp),%ecx
	movl	-148(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*140(%ebx)
	leal	-260(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-260(%ebp)
	leal	-264(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-264(%ebp)
	leal	-100(%ebp),%eax
	leal	-264(%ebp),%edx
	call	Lfpc_pchar_to_ansistr$stub
	movl	-264(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-260(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-264(%ebp),%eax
	movl	%eax,-260(%ebp)
	leal	-168(%ebp),%edx
	movl	-260(%ebp),%eax
	movl	L_U_SYSTEM_WIDESTRINGMANAGER$non_lazy_ptr-Lj1195(%esi),%ecx
	movl	32(%ecx),%ecx
	call	*%ecx
	movzbl	-67(%ebp),%eax
	movl	%eax,-140(%ebp)
	movzbl	-66(%ebp),%eax
	movl	%eax,-144(%ebp)
	movb	-68(%ebp),%al
	movb	%al,-161(%ebp)
	movl	-58(%ebp),%eax
	call	L_DBF_COMMON_SWAPINTLE$LONGWORD$$LONGWORD$stub
	movl	%eax,-156(%ebp)
	movb	-161(%ebp),%al
	cmpb	$43,%al
	je	Lj1277
	jmp	Lj1278
Lj1277:
	movl	-4(%ebp),%eax
	movb	$1,172(%eax)
Lj1278:
	jmp	Lj1281
Lj1250:
	leal	-52(%ebp),%ecx
	movl	-148(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*140(%ebx)
	leal	-264(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-264(%ebp)
	leal	-260(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-260(%ebp)
	leal	-52(%ebp),%eax
	leal	-260(%ebp),%edx
	call	Lfpc_pchar_to_ansistr$stub
	movl	-260(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-264(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-260(%ebp),%eax
	movl	%eax,-264(%ebp)
	leal	-168(%ebp),%edx
	movl	-264(%ebp),%eax
	movl	L_U_SYSTEM_WIDESTRINGMANAGER$non_lazy_ptr-Lj1195(%esi),%ecx
	movl	32(%ecx),%ecx
	call	*%ecx
	movzbl	-36(%ebp),%eax
	movl	%eax,-140(%ebp)
	movzbl	-35(%ebp),%eax
	movl	%eax,-144(%ebp)
	movb	-41(%ebp),%al
	movb	%al,-161(%ebp)
	movl	-4(%ebp),%eax
	movb	120(%eax),%al
	cmpb	$7,%al
	je	Lj1306
	jmp	Lj1305
Lj1306:
	movb	-34(%ebp),%al
	andb	$12,%al
	movzbl	%al,%eax
	testl	%eax,%eax
	jne	Lj1304
	jmp	Lj1305
Lj1304:
	movzbl	-33(%ebp),%eax
	movl	%eax,-156(%ebp)
	movl	-4(%ebp),%eax
	movb	$1,172(%eax)
Lj1305:
	movl	-4(%ebp),%eax
	movzbl	120(%eax),%eax
	cmpl	$7,%eax
	je	Lj1315
Lj1315:
	je	Lj1314
	jmp	Lj1312
Lj1314:
	movb	-34(%ebp),%al
	andb	$2,%al
	movzbl	%al,%eax
	testl	%eax,%eax
	jne	Lj1313
	jmp	Lj1312
Lj1313:
	movl	-168(%ebp),%eax
	movl	L_$DBF_DBFFILE$_Ld7$non_lazy_ptr-Lj1195(%esi),%edx
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	jne	Lj1311
	jmp	Lj1312
Lj1311:
	movb	$1,-169(%ebp)
	jmp	Lj1320
Lj1312:
	movb	$0,-169(%ebp)
Lj1320:
	movl	-4(%ebp),%eax
	movzbl	120(%eax),%eax
	cmpl	$7,%eax
	je	Lj1324
Lj1324:
	je	Lj1323
	jmp	Lj1322
Lj1323:
	movb	-34(%ebp),%al
	andb	$1,%al
	movzbl	%al,%eax
	cmpl	$1,%eax
	je	Lj1321
	jmp	Lj1322
Lj1321:
	movb	$1,-170(%ebp)
	jmp	Lj1325
Lj1322:
	movb	$0,-170(%ebp)
Lj1325:
	movl	-4(%ebp),%eax
	movzbl	120(%eax),%eax
	cmpl	$7,%eax
	je	Lj1330
Lj1330:
	je	Lj1329
	jmp	Lj1327
Lj1329:
	movzbl	-161(%ebp),%eax
	cmpl	$81,%eax
	je	Lj1331
	cmpl	$86,%eax
	je	Lj1331
Lj1331:
	je	Lj1328
	jmp	Lj1327
Lj1328:
	movl	-168(%ebp),%eax
	movl	L_$DBF_DBFFILE$_Ld7$non_lazy_ptr-Lj1195(%esi),%edx
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	jne	Lj1326
	jmp	Lj1327
Lj1326:
	movb	$1,-171(%ebp)
	jmp	Lj1336
Lj1327:
	movb	$0,-171(%ebp)
Lj1336:
Lj1281:
	movb	-161(%ebp),%al
	cmpb	$67,%al
	je	Lj1339
	jmp	Lj1338
Lj1339:
	movl	-4(%ebp),%eax
	movzbl	120(%eax),%eax
	cmpl	$5,%eax
	je	Lj1340
	cmpl	$7,%eax
	je	Lj1340
Lj1340:
	je	Lj1337
	jmp	Lj1338
Lj1337:
	movl	-144(%ebp),%eax
	shll	$8,%eax
	movl	-140(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-140(%ebp)
	movl	$0,-144(%ebp)
Lj1338:
	movl	-4(%ebp),%eax
	movl	104(%eax),%eax
	call	L_DBF_FIELDS_TDBFFIELDDEFS_$__ADDFIELDDEF$$TDBFFIELDDEF$stub
	movl	%eax,-136(%ebp)
	movl	-168(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-136(%ebp),%ebx
	leal	28(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-168(%ebp),%eax
	movl	%eax,28(%ebx)
	movl	-136(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	%eax,80(%edx)
	movl	-140(%ebp),%edx
	movl	-136(%ebp),%eax
	call	L_DBF_FIELDS_TDBFFIELDDEF_$__SETSIZE$LONGINT$stub
	movl	-144(%ebp),%edx
	movl	-136(%ebp),%eax
	call	L_DBF_FIELDS_TDBFFIELDDEF_$__SETPRECISION$LONGINT$stub
	movl	-136(%ebp),%eax
	movl	-156(%ebp),%edx
	movl	%edx,84(%eax)
	movb	-161(%ebp),%dl
	movl	-136(%ebp),%eax
	call	L_DBF_FIELDS_TDBFFIELDDEF_$__SETNATIVEFIELDTYPE$CHAR$stub
	movl	-136(%ebp),%eax
	movb	-170(%ebp),%dl
	movb	%dl,36(%eax)
	cmpb	$0,-171(%ebp)
	jne	Lj1369
	jmp	Lj1370
Lj1369:
	movl	-136(%ebp),%edx
	movl	-176(%ebp),%eax
	movl	%eax,40(%edx)
	incl	-176(%ebp)
	jmp	Lj1373
Lj1370:
	movl	-136(%ebp),%eax
	movl	$-1,40(%eax)
Lj1373:
	cmpb	$0,-169(%ebp)
	jne	Lj1376
	jmp	Lj1377
Lj1376:
	movl	-136(%ebp),%edx
	movl	-176(%ebp),%eax
	movl	%eax,92(%edx)
	incl	-176(%ebp)
	jmp	Lj1380
Lj1377:
	movl	-136(%ebp),%eax
	movl	$-1,92(%eax)
Lj1380:
	movl	-168(%ebp),%eax
	testl	%eax,%eax
	je	Lj1386
	movl	-4(%eax),%eax
Lj1386:
	testl	%eax,%eax
	je	Lj1383
	jmp	Lj1385
Lj1385:
	movl	-136(%ebp),%eax
	movl	32(%eax),%eax
	testl	%eax,%eax
	je	Lj1383
	jmp	Lj1384
Lj1383:
	movl	L_U_DBF_STR_STRING_INVALID_DBF_FILE_FIELDERROR$non_lazy_ptr-Lj1195(%esi),%eax
	movl	(%eax),%ecx
	movl	L_VMT_DBF_COMMON_EDBFERROR$non_lazy_ptr-Lj1195(%esi),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La2:
	movl	%ebp,%ecx
	leal	La2-Lj1195(%esi),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj1384:
	movl	-168(%ebp),%eax
	movl	L_$DBF_DBFFILE$_Ld13$non_lazy_ptr-Lj1195(%esi),%edx
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	je	Lj1393
	jmp	Lj1394
Lj1393:
	movl	-4(%ebp),%eax
	movl	-136(%ebp),%edx
	movl	%edx,164(%eax)
	movl	-4(%ebp),%edx
	movl	-140(%ebp),%eax
	subl	$8,%eax
	movl	%eax,136(%edx)
	movl	-4(%ebp),%edx
	movl	L_U_DBF_DBFFILE_DBFGLOBALS$non_lazy_ptr-Lj1195(%esi),%eax
	movl	(%eax),%ecx
	movl	136(%edx),%eax
	cmpl	24(%ecx),%eax
	ja	Lj1403
	jmp	Lj1404
Lj1403:
	movl	-4(%ebp),%edx
	movl	L_U_DBF_DBFFILE_DBFGLOBALS$non_lazy_ptr-Lj1195(%esi),%eax
	movl	(%eax),%eax
	movl	24(%eax),%eax
	movl	%eax,136(%edx)
Lj1404:
	jmp	Lj1407
Lj1394:
	movl	-4(%ebp),%eax
	movb	120(%eax),%al
	cmpb	$7,%al
	je	Lj1410
	jmp	Lj1409
Lj1410:
	leal	-264(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-264(%ebp)
	leal	-264(%ebp),%edx
	movl	-168(%ebp),%eax
	call	L_SYSUTILS_UPPERCASE$ANSISTRING$$ANSISTRING$stub
	movl	-264(%ebp),%eax
	movl	L_$DBF_DBFFILE$_Ld7$non_lazy_ptr-Lj1195(%esi),%edx
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	je	Lj1408
	jmp	Lj1409
Lj1408:
	movl	-4(%ebp),%eax
	movl	-136(%ebp),%edx
	movl	%edx,168(%eax)
Lj1409:
Lj1407:
	movl	-140(%ebp),%eax
	addl	%eax,-20(%ebp)
	incl	-148(%ebp)
	movl	-148(%ebp),%eax
	cmpl	-152(%ebp),%eax
	jg	Lj1248
	jmp	Lj1421
Lj1421:
	movl	-4(%ebp),%eax
	call	L_DBF_PGFILE_TPAGEDFILE_$__READCHAR$$BYTE$stub
	movzbl	%al,%eax
	cmpl	$13,%eax
	je	Lj1248
	jmp	Lj1246
Lj1248:
	movl	-4(%ebp),%eax
	movl	104(%eax),%eax
	call	L_CLASSES_TCOLLECTION_$__GETCOUNT$$LONGINT$stub
	cmpl	$4096,%eax
	jge	Lj1424
	jmp	Lj1425
Lj1424:
	movl	$0,(%esp)
	movl	-4(%ebp),%eax
	movl	104(%eax),%eax
	call	L_CLASSES_TCOLLECTION_$__GETCOUNT$$LONGINT$stub
	movl	%eax,-268(%ebp)
	movl	$0,-272(%ebp)
	leal	-272(%ebp),%eax
	movl	%eax,4(%esp)
	movl	L_U_DBF_STR_STRING_INVALID_FIELD_COUNT$non_lazy_ptr-Lj1195(%esi),%eax
	movl	(%eax),%ecx
	movl	L_VMT_DBF_COMMON_EDBFERROR$non_lazy_ptr-Lj1195(%esi),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION$stub
La3:
	movl	%ebp,%ecx
	leal	La3-Lj1195(%esi),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj1425:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	4(%edx),%edx
	movl	(%edx),%edx
	call	*104(%edx)
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	movb	120(%eax),%al
	cmpb	$6,%al
	je	Lj1446
	jmp	Lj1445
Lj1446:
	movl	-4(%ebp),%eax
	movl	40(%eax),%eax
	movzwl	8(%eax),%eax
	movl	-16(%ebp),%edx
	addl	$16,%edx
	cmpl	%edx,%eax
	jg	Lj1444
	jmp	Lj1445
Lj1444:
	movl	-16(%ebp),%eax
	movl	%eax,(%esp)
	leal	-116(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$16,%ecx
	call	L_DBF_PGFILE_TPAGEDFILE_$__READBLOCK$POINTER$LONGINT$LONGINT$$LONGINT$stub
	movzwl	-114(%ebp),%edx
	movl	-16(%ebp),%eax
	addl	%edx,%eax
	movl	%eax,-20(%ebp)
	movzwl	-116(%ebp),%eax
	decl	%eax
	movl	%eax,%ebx
	movl	$0,-148(%ebp)
	cmpl	-148(%ebp),%ebx
	jl	Lj1458
	decl	-148(%ebp)
	.align 2
Lj1459:
	incl	-148(%ebp)
	movl	-148(%ebp),%edx
	imull	$15,%edx
	movl	-20(%ebp),%eax
	addl	%eax,%edx
	movl	%edx,(%esp)
	leal	-132(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$15,%ecx
	call	L_DBF_PGFILE_TPAGEDFILE_$__READBLOCK$POINTER$LONGINT$LONGINT$$LONGINT$stub
	movzwl	-130(%ebp),%eax
	testl	%eax,%eax
	je	Lj1468
	jmp	Lj1469
Lj1468:
	jmp	Lj1470
Lj1469:
	movzwl	-130(%ebp),%edi
	movl	-4(%ebp),%eax
	movl	104(%eax),%eax
	call	L_CLASSES_TCOLLECTION_$__GETCOUNT$$LONGINT$stub
	cmpl	%eax,%edi
	jle	Lj1471
	jmp	Lj1472
Lj1471:
	movzwl	-130(%ebp),%edx
	decl	%edx
	movl	-4(%ebp),%eax
	movl	104(%eax),%eax
	call	L_DBF_FIELDS_TDBFFIELDDEFS_$__GETITEM$LONGINT$$TDBFFIELDDEF$stub
	movl	%eax,-136(%ebp)
	movl	-136(%ebp),%eax
	call	L_DBF_FIELDS_TDBFFIELDDEF_$__ALLOCBUFFERS$stub
	movl	$0,-160(%ebp)
	movb	-128(%ebp),%al
	cmpb	$1,%al
	jb	Lj1486
	decb	%al
	je	Lj1487
	decb	%al
	je	Lj1489
	decb	%al
	je	Lj1490
	decb	%al
	je	Lj1488
	jmp	Lj1486
Lj1487:
	movl	-136(%ebp),%eax
	movb	$1,88(%eax)
	jmp	Lj1485
Lj1488:
	movl	-136(%ebp),%eax
	movl	48(%eax),%eax
	movl	%eax,-160(%ebp)
	movl	-136(%ebp),%eax
	movb	$1,68(%eax)
	jmp	Lj1485
Lj1489:
	movl	-136(%ebp),%eax
	movl	52(%eax),%eax
	movl	%eax,-160(%ebp)
	movl	-136(%ebp),%eax
	movb	$1,69(%eax)
	jmp	Lj1485
Lj1490:
	movl	-136(%ebp),%eax
	movl	56(%eax),%eax
	movl	%eax,-160(%ebp)
	movl	-136(%ebp),%eax
	movb	$1,70(%eax)
	jmp	Lj1485
Lj1486:
Lj1485:
	movl	-160(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1505
	jmp	Lj1506
Lj1505:
	movzwl	-121(%ebp),%eax
	movl	-16(%ebp),%edx
	addl	%eax,%edx
	movl	%edx,(%esp)
	movzwl	-119(%ebp),%ecx
	movl	-160(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_DBF_PGFILE_TPAGEDFILE_$__READBLOCK$POINTER$LONGINT$LONGINT$$LONGINT$stub
Lj1506:
Lj1472:
Lj1470:
	cmpl	-148(%ebp),%ebx
	jg	Lj1459
Lj1458:
Lj1445:
Lj1242:
	call	LFPC_POPADDRSTACK$stub
	movl	-4(%ebp),%eax
	movl	40(%eax),%eax
	movzwl	8(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*108(%ecx)
	movl	-4(%ebp),%eax
	movl	40(%eax),%eax
	movzwl	10(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*104(%ecx)
	movl	-256(%ebp),%eax
	testl	%eax,%eax
	je	Lj1243
	decl	%eax
	testl	%eax,%eax
	je	Lj1244
Lj1244:
	call	LFPC_RERAISE$stub
Lj1243:
Lj1196:
	call	LFPC_POPADDRSTACK$stub
	leal	-264(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-264(%ebp)
	leal	-260(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-260(%ebp)
	leal	-168(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-168(%ebp)
	movl	-216(%ebp),%eax
	testl	%eax,%eax
	je	Lj1197
	call	LFPC_RERAISE$stub
Lj1197:
	movl	-284(%ebp),%ebx
	movl	-280(%ebp),%esi
	movl	-276(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_DBF_DBFFILE_TDBFFILE_$__GETLANGUAGEID$$LONGINT
_DBF_DBFFILE_TDBFFILE_$__GETLANGUAGEID$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	40(%eax),%eax
	movzbl	29(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_DBFFILE_TDBFFILE_$__GETLANGUAGESTR$$ANSISTRING
_DBF_DBFFILE_TDBFFILE_$__GETLANGUAGESTR$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movb	120(%eax),%al
	cmpb	$6,%al
	jae	Lj1535
	jmp	Lj1536
Lj1535:
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	40(%eax),%eax
	addl	$32,%eax
	movb	$0,%cl
	movl	$31,%edx
	call	Lfpc_chararray_to_ansistr$stub
Lj1536:
	leave
	ret

.text
	.align 4
.globl	_DBF_DBFFILE_TDBFFILE_$__ISNULLFLAGSET$POINTER$TDBFFIELDDEF$TNULLFIELDFLAG$$BOOLEAN
_DBF_DBFFILE_TDBFFILE_$__ISNULLFLAGSET$POINTER$TDBFFIELDDEF$TNULLFIELDFLAG$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movb	8(%ebp),%al
	testb	%al,%al
	je	Lj1549
	decb	%al
	je	Lj1550
	jmp	Lj1548
Lj1549:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	92(%eax),%eax
	cmpl	$0,%eax
	jl	Lj1551
	jmp	Lj1553
Lj1553:
	movl	-12(%ebp),%eax
	movl	168(%eax),%eax
	testl	%eax,%eax
	je	Lj1551
	jmp	Lj1552
Lj1551:
	movb	$0,-13(%ebp)
	jmp	Lj1556
Lj1552:
	movl	-12(%ebp),%eax
	movl	168(%eax),%eax
	movl	80(%eax),%edx
	movl	-4(%ebp),%eax
	addl	%eax,%edx
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	92(%eax),%eax
	shrl	$3,%eax
	addl	%eax,%edx
	movl	%edx,-20(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	92(%eax),%ecx
	andl	$7,%ecx
	movl	$1,%eax
	shll	%cl,%eax
	movl	-20(%ebp),%edx
	movzbl	(%edx),%edx
	andl	%edx,%eax
	testl	%eax,%eax
	setneb	-13(%ebp)
Lj1556:
	jmp	Lj1547
Lj1550:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	40(%eax),%eax
	cmpl	$0,%eax
	jl	Lj1561
	jmp	Lj1563
Lj1563:
	movl	-12(%ebp),%eax
	movl	168(%eax),%eax
	testl	%eax,%eax
	je	Lj1561
	jmp	Lj1562
Lj1561:
	movb	$0,-13(%ebp)
	jmp	Lj1566
Lj1562:
	movl	-12(%ebp),%eax
	movl	168(%eax),%eax
	movl	80(%eax),%edx
	movl	-4(%ebp),%eax
	addl	%eax,%edx
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	40(%eax),%eax
	shrl	$3,%eax
	addl	%eax,%edx
	movl	%edx,-20(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	40(%eax),%ecx
	andl	$7,%ecx
	movl	$1,%eax
	shll	%cl,%eax
	movl	-20(%ebp),%edx
	movzbl	(%edx),%edx
	andl	%edx,%eax
	testl	%eax,%eax
	setneb	-13(%ebp)
Lj1566:
	jmp	Lj1547
Lj1548:
Lj1547:
	movb	-13(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_DBF_DBFFILE_TDBFFILE_$__FASTPACKTABLE
_DBF_DBFFILE_TDBFFILE_$__FASTPACKTABLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-64(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	cmpl	$1,%eax
	jl	Lj1577
	jmp	Lj1578
Lj1577:
	jmp	Lj1571
Lj1578:
	movl	-4(%ebp),%eax
	movl	16(%eax),%edx
	leal	-20(%ebp),%eax
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	movl	-4(%ebp),%eax
	movl	16(%eax),%edx
	leal	-16(%ebp),%eax
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-60(%ebp)
	testl	%eax,%eax
	jne	Lj1587
	movl	$1,-8(%ebp)
	movl	-4(%ebp),%eax
	call	L_DBF_PGFILE_TPAGEDFILE_$__GETRECORDCOUNT$$LONGINT$stub
	movl	%eax,-12(%ebp)
	jmp	Lj1598
	.align 2
Lj1597:
	movl	%ebp,%eax
	call	L_DBF_DBFFILE_TDBFFILE_$_FASTPACKTABLE_FINDLASTNORMAL$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj1600
	jmp	Lj1601
Lj1600:
	movl	-20(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*144(%ebx)
	movl	-20(%ebp),%eax
	movb	$42,(%eax)
	movl	-20(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*144(%ebx)
	jmp	Lj1618
Lj1601:
	decl	-8(%ebp)
	jmp	Lj1599
Lj1618:
Lj1598:
	movl	%ebp,%eax
	call	L_DBF_DBFFILE_TDBFFILE_$_FASTPACKTABLE_FINDFIRSTDEL$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj1597
	jmp	Lj1599
Lj1599:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_DBF_PGFILE_TPAGEDFILE_$__SETRECORDCOUNT$LONGINT$stub
	movl	-4(%ebp),%eax
	call	L_DBF_DBFFILE_TDBFFILE_$__REGENERATEINDEXES$stub
Lj1587:
	call	LFPC_POPADDRSTACK$stub
	movl	-20(%ebp),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
	movl	-16(%ebp),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj1588
	decl	%eax
	testl	%eax,%eax
	je	Lj1589
Lj1589:
	call	LFPC_RERAISE$stub
Lj1588:
Lj1571:
	movl	-64(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_DBFFILE_TDBFFILE_$_FASTPACKTABLE_FINDLASTNORMAL$$BOOLEAN
_DBF_DBFFILE_TDBFFILE_$_FASTPACKTABLE_FINDLASTNORMAL$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-4(%ebp)
	jmp	Lj1632
	.align 2
Lj1631:
	movl	-4(%ebp),%eax
	movl	-20(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	-12(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-4(%ebp),%ebx
	movl	-4(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*140(%ebx)
	movl	-4(%ebp),%eax
	movl	-20(%eax),%eax
	movb	(%eax),%al
	cmpb	$32,%al
	je	Lj1640
	jmp	Lj1641
Lj1640:
	movb	$1,-5(%ebp)
	jmp	Lj1575
Lj1641:
	movl	-4(%ebp),%eax
	decl	-12(%eax)
Lj1632:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	-12(%eax),%eax
	cmpl	-8(%edx),%eax
	jge	Lj1631
	jmp	Lj1633
Lj1633:
	movb	$0,-5(%ebp)
Lj1575:
	movb	-5(%ebp),%al
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_DBFFILE_TDBFFILE_$_FASTPACKTABLE_FINDFIRSTDEL$$BOOLEAN
_DBF_DBFFILE_TDBFFILE_$_FASTPACKTABLE_FINDFIRSTDEL$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-4(%ebp)
	jmp	Lj1647
	.align 2
Lj1646:
	movl	-4(%ebp),%eax
	movl	-16(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	-8(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-4(%ebp),%ebx
	movl	-4(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*140(%ebx)
	movl	-4(%ebp),%eax
	movl	-16(%eax),%eax
	movb	(%eax),%al
	cmpb	$32,%al
	jne	Lj1655
	jmp	Lj1656
Lj1655:
	movb	$1,-5(%ebp)
	jmp	Lj1573
Lj1656:
	movl	-4(%ebp),%eax
	incl	-8(%eax)
Lj1647:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	-8(%eax),%eax
	cmpl	-12(%edx),%eax
	jle	Lj1646
	jmp	Lj1648
Lj1648:
	movb	$0,-5(%ebp)
Lj1573:
	movb	-5(%ebp),%al
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_DBFFILE_TDBFFILE_$__RENAME$ANSISTRING$TSTRINGS$BOOLEAN
_DBF_DBFFILE_TDBFFILE_$__RENAME$ANSISTRING$TSTRINGS$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$136,%esp
	movl	%ebx,-136(%ebp)
	movl	%esi,-132(%ebp)
	movl	%edi,-128(%ebp)
	call	Lj1662
Lj1662:
	popl	-124(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	$0,-24(%ebp)
	movl	$0,-120(%ebp)
	movl	$0,-116(%ebp)
	movl	$0,-112(%ebp)
	leal	-40(%ebp),%ecx
	leal	-64(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-68(%ebp)
	testl	%eax,%eax
	jne	Lj1663
	movl	-124(%ebp),%eax
	movl	L_VMT_CLASSES_TSTRINGLIST$non_lazy_ptr-Lj1662(%eax),%edx
	movl	$0,%eax
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	%eax,-16(%ebp)
	leal	-80(%ebp),%ecx
	leal	-104(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-108(%ebp)
	testl	%eax,%eax
	jne	Lj1672
	movl	-12(%ebp),%eax
	movl	112(%eax),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	decl	%eax
	movl	%eax,%esi
	movl	$0,-28(%ebp)
	cmpl	-28(%ebp),%esi
	jl	Lj1677
	decl	-28(%ebp)
	.align 2
Lj1678:
	incl	-28(%ebp)
	movl	-12(%ebp),%eax
	movl	112(%eax),%eax
	movl	-28(%ebp),%edx
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	movl	56(%eax),%edx
	movl	-16(%ebp),%eax
	movl	-16(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*164(%ecx)
	leal	-112(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-112(%ebp)
	leal	-112(%ebp),%ecx
	movl	-28(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*120(%ebx)
	movl	-112(%ebp),%edx
	movl	-20(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__PREPARERENAME$ANSISTRING$stub
	cmpl	-28(%ebp),%esi
	jg	Lj1678
Lj1677:
	movl	-12(%ebp),%eax
	call	L_DBF_DBFFILE_TDBFFILE_$__CLOSE$stub
	cmpb	$0,8(%ebp)
	jne	Lj1703
	jmp	Lj1704
Lj1703:
	movl	-4(%ebp),%eax
	call	L_SYSUTILS_DELETEFILE$ANSISTRING$$BOOLEAN$stub
	leal	-112(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-112(%ebp)
	leal	-116(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-116(%ebp)
	leal	-116(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DBF_DBFFILE_TDBFFILE_$__GETMEMOEXT$$ANSISTRING$stub
	movl	-116(%ebp),%edx
	leal	-112(%ebp),%ecx
	movl	-4(%ebp),%eax
	call	L_SYSUTILS_CHANGEFILEEXT$ANSISTRING$ANSISTRING$$ANSISTRING$stub
	movl	-112(%ebp),%eax
	call	L_SYSUTILS_DELETEFILE$ANSISTRING$$BOOLEAN$stub
	jmp	Lj1719
Lj1704:
	movl	$0,-28(%ebp)
	leal	-28(%ebp),%ecx
	leal	-24(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_DBF_COMMON_FINDNEXTNAME$ANSISTRING$ANSISTRING$LONGINT$stub
	movl	-24(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SYSUTILS_RENAMEFILE$ANSISTRING$ANSISTRING$$BOOLEAN$stub
	leal	-116(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-116(%ebp)
	leal	-112(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-112(%ebp)
	leal	-112(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DBF_DBFFILE_TDBFFILE_$__GETMEMOEXT$$ANSISTRING$stub
	movl	-112(%ebp),%edx
	leal	-116(%ebp),%ecx
	movl	-24(%ebp),%eax
	call	L_SYSUTILS_CHANGEFILEEXT$ANSISTRING$ANSISTRING$$ANSISTRING$stub
	movl	-116(%ebp),%ebx
	leal	-112(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-112(%ebp)
	leal	-120(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-120(%ebp)
	leal	-120(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DBF_DBFFILE_TDBFFILE_$__GETMEMOEXT$$ANSISTRING$stub
	movl	-120(%ebp),%edx
	leal	-112(%ebp),%ecx
	movl	-4(%ebp),%eax
	call	L_SYSUTILS_CHANGEFILEEXT$ANSISTRING$ANSISTRING$$ANSISTRING$stub
	movl	-112(%ebp),%eax
	movl	%ebx,%edx
	call	L_SYSUTILS_RENAMEFILE$ANSISTRING$ANSISTRING$$BOOLEAN$stub
Lj1719:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*128(%edx)
	decl	%eax
	movl	%eax,%esi
	movl	$0,-28(%ebp)
	cmpl	-28(%ebp),%esi
	jl	Lj1757
	decl	-28(%ebp)
	.align 2
Lj1758:
	incl	-28(%ebp)
	leal	-120(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-120(%ebp)
	leal	-120(%ebp),%ecx
	movl	-28(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*120(%ebx)
	movl	-120(%ebp),%eax
	call	L_SYSUTILS_DELETEFILE$ANSISTRING$$BOOLEAN$stub
	cmpl	-28(%ebp),%esi
	jg	Lj1758
Lj1757:
	movl	-12(%ebp),%eax
	movl	56(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_SYSUTILS_RENAMEFILE$ANSISTRING$ANSISTRING$$BOOLEAN$stub
	leal	-120(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-120(%ebp)
	leal	-116(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-116(%ebp)
	leal	-116(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DBF_DBFFILE_TDBFFILE_$__GETMEMOEXT$$ANSISTRING$stub
	movl	-116(%ebp),%edx
	leal	-120(%ebp),%ecx
	movl	-4(%ebp),%eax
	call	L_SYSUTILS_CHANGEFILEEXT$ANSISTRING$ANSISTRING$$ANSISTRING$stub
	movl	-120(%ebp),%ebx
	leal	-116(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-116(%ebp)
	leal	-112(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-112(%ebp)
	leal	-112(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DBF_DBFFILE_TDBFFILE_$__GETMEMOEXT$$ANSISTRING$stub
	movl	-112(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	56(%eax),%eax
	leal	-116(%ebp),%ecx
	call	L_SYSUTILS_CHANGEFILEEXT$ANSISTRING$ANSISTRING$$ANSISTRING$stub
	movl	-116(%ebp),%eax
	movl	%ebx,%edx
	call	L_SYSUTILS_RENAMEFILE$ANSISTRING$ANSISTRING$$BOOLEAN$stub
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*128(%edx)
	decl	%eax
	movl	%eax,%edi
	movl	$0,-28(%ebp)
	cmpl	-28(%ebp),%edi
	jl	Lj1798
	decl	-28(%ebp)
	.align 2
Lj1799:
	incl	-28(%ebp)
	leal	-120(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-120(%ebp)
	leal	-120(%ebp),%ecx
	movl	-28(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*120(%ebx)
	movl	-120(%ebp),%esi
	leal	-116(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-116(%ebp)
	leal	-116(%ebp),%ecx
	movl	-28(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	-16(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*120(%ebx)
	movl	-116(%ebp),%eax
	movl	%esi,%edx
	call	L_SYSUTILS_RENAMEFILE$ANSISTRING$ANSISTRING$$BOOLEAN$stub
	cmpl	-28(%ebp),%edi
	jg	Lj1799
Lj1798:
Lj1672:
	call	LFPC_POPADDRSTACK$stub
	movl	-16(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-108(%ebp),%eax
	testl	%eax,%eax
	je	Lj1673
	decl	%eax
	testl	%eax,%eax
	je	Lj1674
Lj1674:
	call	LFPC_RERAISE$stub
Lj1673:
Lj1663:
	call	LFPC_POPADDRSTACK$stub
	leal	-120(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-120(%ebp)
	leal	-116(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-116(%ebp)
	leal	-112(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-112(%ebp)
	leal	-24(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-24(%ebp)
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-68(%ebp),%eax
	testl	%eax,%eax
	je	Lj1664
	call	LFPC_RERAISE$stub
Lj1664:
	movl	-136(%ebp),%ebx
	movl	-132(%ebp),%esi
	movl	-128(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_DBF_DBFFILE_TDBFFILE_$__RESTRUCTURETABLE$TDBFFIELDDEFS$BOOLEAN
_DBF_DBFFILE_TDBFFILE_$__RESTRUCTURETABLE$TDBFFIELDDEFS$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$216,%esp
	movl	%ebx,-204(%ebp)
	movl	%esi,-200(%ebp)
	movl	%edi,-196(%ebp)
	call	Lj1827
Lj1827:
	popl	-192(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movb	%cl,-8(%ebp)
	movl	$0,-44(%ebp)
	movl	$0,-48(%ebp)
	movl	$0,-148(%ebp)
	leal	-108(%ebp),%ecx
	leal	-132(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-136(%ebp)
	testl	%eax,%eax
	jne	Lj1828
	movl	-12(%ebp),%eax
	movl	16(%eax),%eax
	cmpl	$1,%eax
	jl	Lj1831
	jmp	Lj1833
Lj1833:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj1834
	jmp	Lj1832
Lj1834:
	movb	-8(%ebp),%al
	testb	%al,%al
	je	Lj1831
	jmp	Lj1832
Lj1831:
	jmp	Lj1828
Lj1832:
	movl	-12(%ebp),%eax
	call	L_DBF_PGFILE_TPAGEDFILE_$__CHECKEXCLUSIVEACCESS$stub
	movl	$0,-56(%ebp)
	movl	-12(%ebp),%eax
	movl	56(%eax),%eax
	leal	-56(%ebp),%ecx
	leal	-48(%ebp),%edx
	call	L_DBF_COMMON_FINDNEXTNAME$ANSISTRING$ANSISTRING$LONGINT$stub
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj1845
	jmp	Lj1846
Lj1845:
	movl	-12(%ebp),%eax
	movl	104(%eax),%eax
	movl	%eax,-28(%ebp)
	jmp	Lj1849
Lj1846:
	movl	-4(%ebp),%eax
	movl	%eax,-28(%ebp)
	movl	-4(%ebp),%eax
	call	L_CLASSES_TCOLLECTION_$__GETCOUNT$$LONGINT$stub
	movl	%eax,%esi
	decl	%esi
	movl	$0,-52(%ebp)
	cmpl	-52(%ebp),%esi
	jl	Lj1853
	decl	-52(%ebp)
	.align 2
Lj1854:
	incl	-52(%ebp)
	movl	-52(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_DBF_FIELDS_TDBFFIELDDEFS_$__GETITEM$LONGINT$$TDBFFIELDDEF$stub
	movl	76(%eax),%eax
	movl	%eax,-60(%ebp)
	movl	-60(%ebp),%eax
	cmpl	$0,%eax
	jge	Lj1865
	jmp	Lj1864
Lj1865:
	movl	-12(%ebp),%eax
	movl	104(%eax),%eax
	call	L_CLASSES_TCOLLECTION_$__GETCOUNT$$LONGINT$stub
	cmpl	-60(%ebp),%eax
	jg	Lj1863
	jmp	Lj1864
Lj1863:
	movl	-52(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_DBF_FIELDS_TDBFFIELDDEFS_$__GETITEM$LONGINT$$TDBFFIELDDEF$stub
	movl	%eax,%ebx
	movl	-12(%ebp),%eax
	movl	104(%eax),%eax
	movl	-60(%ebp),%edx
	call	L_DBF_FIELDS_TDBFFIELDDEFS_$__GETITEM$LONGINT$$TDBFFIELDDEF$stub
	movl	84(%eax),%eax
	movl	%eax,84(%ebx)
Lj1864:
	cmpl	-52(%ebp),%esi
	jg	Lj1854
Lj1853:
Lj1849:
	movl	-192(%ebp),%eax
	movl	L_VMT_DBF_DBFFILE_TDBFFILE$non_lazy_ptr-Lj1827(%eax),%edx
	movl	$0,%eax
	call	L_DBF_DBFFILE_TDBFFILE_$__CREATE$$TDBFFILE$stub
	movl	%eax,-16(%ebp)
	movl	-48(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_DBF_PGFILE_TPAGEDFILE_$__SETFILENAME$ANSISTRING$stub
	movl	-16(%ebp),%eax
	movb	$1,51(%eax)
	movl	-16(%ebp),%eax
	movb	$3,48(%eax)
	movl	-16(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	184(%edx),%eax
	movl	%eax,184(%ecx)
	movl	188(%edx),%eax
	movl	%eax,188(%ecx)
	movl	-16(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	176(%eax),%edx
	movl	%edx,176(%ecx)
	movl	180(%eax),%eax
	movl	%eax,180(%ecx)
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	movb	120(%eax),%al
	movb	%al,120(%edx)
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	movb	148(%eax),%al
	movb	%al,148(%edx)
	movl	-16(%ebp),%eax
	call	L_DBF_DBFFILE_TDBFFILE_$__OPEN$stub
	movl	-12(%ebp),%eax
	movl	96(%eax),%eax
	testl	%eax,%eax
	jne	Lj1902
	jmp	Lj1903
Lj1902:
	movl	-12(%ebp),%eax
	movl	96(%eax),%eax
	movl	16(%eax),%ecx
	movl	-28(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_DBF_DBFFILE_TDBFFILE_$__FINISHCREATE$TDBFFIELDDEFS$LONGINT$stub
	jmp	Lj1910
Lj1903:
	movl	-16(%ebp),%eax
	movzbl	120(%eax),%eax
	cmpl	$5,%eax
	je	Lj1913
	cmpl	$7,%eax
	je	Lj1913
Lj1913:
	je	Lj1911
	jmp	Lj1912
Lj1911:
	movl	-28(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	$64,%ecx
	call	L_DBF_DBFFILE_TDBFFILE_$__FINISHCREATE$TDBFFIELDDEFS$LONGINT$stub
	jmp	Lj1920
Lj1912:
	movl	-28(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	$512,%ecx
	call	L_DBF_DBFFILE_TDBFFILE_$__FINISHCREATE$TDBFFIELDDEFS$LONGINT$stub
Lj1920:
Lj1910:
	movl	-28(%ebp),%eax
	call	L_CLASSES_TCOLLECTION_$__GETCOUNT$$LONGINT$stub
	movl	%eax,%edx
	imull	$12,%edx
	leal	-92(%ebp),%eax
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	movl	-28(%ebp),%eax
	call	L_CLASSES_TCOLLECTION_$__GETCOUNT$$LONGINT$stub
	decl	%eax
	movl	%eax,%ebx
	movl	$0,-60(%ebp)
	cmpl	-60(%ebp),%ebx
	jl	Lj1934
	decl	-60(%ebp)
	.align 2
Lj1935:
	incl	-60(%ebp)
	movl	-60(%ebp),%edx
	movl	-28(%ebp),%eax
	call	L_DBF_FIELDS_TDBFFIELDDEFS_$__GETITEM$LONGINT$$TDBFFIELDDEF$stub
	movl	%eax,-32(%ebp)
	movl	-32(%ebp),%eax
	movl	76(%eax),%eax
	cmpl	$0,%eax
	jge	Lj1944
	jmp	Lj1945
Lj1944:
	movl	-32(%ebp),%eax
	movl	76(%eax),%edx
	movl	-12(%ebp),%eax
	movl	104(%eax),%eax
	call	L_DBF_FIELDS_TDBFFIELDDEFS_$__GETITEM$LONGINT$$TDBFFIELDDEF$stub
	movl	%eax,-36(%ebp)
	movl	-32(%ebp),%eax
	movzbl	44(%eax),%eax
	cmpl	$70,%eax
	je	Lj1954
	cmpl	$78,%eax
	je	Lj1954
Lj1954:
	je	Lj1952
	jmp	Lj1953
Lj1952:
	movl	-32(%ebp),%eax
	movl	64(%eax),%eax
	movl	%eax,-140(%ebp)
	movl	-36(%ebp),%eax
	movl	64(%eax),%eax
	movl	%eax,-144(%ebp)
	movl	-144(%ebp),%eax
	cmpl	-140(%ebp),%eax
	jl	Lj1961
	jmp	Lj1962
Lj1961:
	movl	-144(%ebp),%edx
	jmp	Lj1965
Lj1962:
	movl	-140(%ebp),%edx
Lj1965:
	movl	-32(%ebp),%eax
	movl	-32(%ebp),%ecx
	movl	60(%eax),%esi
	movl	64(%ecx),%eax
	subl	%eax,%esi
	movl	%esi,-140(%ebp)
	movl	-36(%ebp),%eax
	movl	-36(%ebp),%esi
	movl	60(%eax),%ecx
	movl	64(%esi),%eax
	subl	%eax,%ecx
	movl	%ecx,-144(%ebp)
	movl	-144(%ebp),%eax
	cmpl	-140(%ebp),%eax
	jl	Lj1972
	jmp	Lj1973
Lj1972:
	movl	-144(%ebp),%eax
	jmp	Lj1976
Lj1973:
	movl	-140(%ebp),%eax
Lj1976:
	addl	%eax,%edx
	movl	%edx,-64(%ebp)
	movl	-36(%ebp),%eax
	movzbl	44(%eax),%eax
	cmpl	$70,%eax
	je	Lj1984
	cmpl	$78,%eax
	je	Lj1984
Lj1984:
	je	Lj1983
	jmp	Lj1982
Lj1983:
	movl	-36(%ebp),%eax
	movl	64(%eax),%eax
	cmpl	$0,%eax
	jg	Lj1981
	jmp	Lj1982
Lj1981:
	movb	$1,%dl
	jmp	Lj1985
Lj1982:
	movb	$0,%dl
Lj1985:
	movl	-32(%ebp),%eax
	movl	64(%eax),%eax
	cmpl	$0,%eax
	setgb	%al
	xorb	%al,%dl
	testb	%dl,%dl
	jne	Lj1979
	jmp	Lj1980
Lj1979:
	decl	-64(%ebp)
Lj1980:
	movl	-64(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj1986
	jmp	Lj1987
Lj1986:
	movl	$0,-64(%ebp)
Lj1987:
	movl	-36(%ebp),%eax
	movl	-36(%ebp),%edx
	movl	60(%eax),%ecx
	movl	64(%edx),%eax
	subl	%eax,%ecx
	movl	-32(%ebp),%eax
	movl	-32(%ebp),%esi
	movl	60(%eax),%edx
	movl	64(%esi),%eax
	subl	%eax,%edx
	subl	%edx,%ecx
	movl	%ecx,-76(%ebp)
	movl	-76(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj1992
	jmp	Lj1993
Lj1992:
	movl	-76(%ebp),%eax
	negl	%eax
	movl	%eax,-80(%ebp)
	movl	$0,-76(%ebp)
	jmp	Lj1998
Lj1993:
	movl	$0,-80(%ebp)
Lj1998:
	jmp	Lj2001
Lj1953:
	movl	-32(%ebp),%eax
	movl	60(%eax),%eax
	movl	%eax,-140(%ebp)
	movl	-36(%ebp),%eax
	movl	60(%eax),%eax
	movl	%eax,-144(%ebp)
	movl	-144(%ebp),%eax
	cmpl	-140(%ebp),%eax
	jl	Lj2008
	jmp	Lj2009
Lj2008:
	movl	-144(%ebp),%eax
	jmp	Lj2012
Lj2009:
	movl	-140(%ebp),%eax
Lj2012:
	movl	%eax,-64(%ebp)
	movl	$0,-76(%ebp)
	movl	$0,-80(%ebp)
Lj2001:
	movl	-92(%ebp),%edx
	movl	-60(%ebp),%eax
	imull	$12,%eax
	leal	(%edx,%eax),%edx
	movl	-64(%ebp),%eax
	movl	%eax,8(%edx)
	movl	-36(%ebp),%eax
	movl	80(%eax),%ecx
	movl	-76(%ebp),%eax
	addl	%eax,%ecx
	movl	%ecx,(%edx)
	movl	-32(%ebp),%eax
	movl	80(%eax),%eax
	movl	-80(%ebp),%ecx
	addl	%ecx,%eax
	movl	%eax,4(%edx)
Lj1945:
	cmpl	-60(%ebp),%ebx
	jg	Lj1935
Lj1934:
	movl	-192(%ebp),%eax
	movl	L_VMT_DBF_IDXFILE_TDBFINDEXDEF$non_lazy_ptr-Lj1827(%eax),%edx
	movl	$0,%ecx
	movl	$0,%eax
	movl	-192(%ebp),%esi
	movl	L_VMT_DBF_IDXFILE_TDBFINDEXDEF$non_lazy_ptr-Lj1827(%esi),%ebx
	call	*136(%ebx)
	movl	%eax,-20(%ebp)
	movl	-12(%ebp),%eax
	movl	108(%eax),%eax
	movl	-12(%ebp),%edx
	movl	108(%edx),%edx
	movl	(%edx),%edx
	call	*128(%edx)
	decl	%eax
	movl	%eax,%esi
	movl	$0,-52(%ebp)
	cmpl	-52(%ebp),%esi
	jl	Lj2036
	decl	-52(%ebp)
	.align 2
Lj2037:
	incl	-52(%ebp)
	leal	-148(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-148(%ebp)
	movl	-12(%ebp),%eax
	movl	108(%eax),%eax
	leal	-148(%ebp),%ecx
	movl	-52(%ebp),%edx
	movl	-12(%ebp),%ebx
	movl	108(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*120(%ebx)
	movl	-148(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-44(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-148(%ebp),%eax
	movl	%eax,-44(%ebp)
	movl	-12(%ebp),%eax
	movl	108(%eax),%eax
	movl	-52(%ebp),%edx
	movl	-12(%ebp),%ecx
	movl	108(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*132(%ecx)
	movl	%eax,-24(%ebp)
	movl	-20(%ebp),%ecx
	movl	-44(%ebp),%edx
	movl	-24(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__GETINDEXINFO$ANSISTRING$TDBFINDEXDEF$stub
	leal	-148(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-148(%ebp)
	leal	-148(%ebp),%edx
	movl	-44(%ebp),%eax
	call	L_SYSUTILS_EXTRACTFILEEXT$ANSISTRING$$ANSISTRING$stub
	movl	-148(%ebp),%eax
	testl	%eax,%eax
	je	Lj2066
	movl	-4(%eax),%eax
Lj2066:
	cmpl	$0,%eax
	jg	Lj2060
	jmp	Lj2061
Lj2060:
	movl	$0,-56(%ebp)
	leal	-56(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	-44(%ebp),%eax
	call	L_DBF_COMMON_FINDNEXTNAME$ANSISTRING$ANSISTRING$LONGINT$stub
Lj2061:
	movb	$1,4(%esp)
	movl	-20(%ebp),%eax
	movl	32(%eax),%eax
	movl	%eax,(%esp)
	movl	-20(%ebp),%eax
	movl	28(%eax),%ecx
	movl	-44(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_DBF_DBFFILE_TDBFFILE_$__OPENINDEX$ANSISTRING$ANSISTRING$BOOLEAN$TINDEXOPTIONS$stub
	cmpl	-52(%ebp),%esi
	jg	Lj2037
Lj2036:
	movl	-20(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-12(%ebp),%eax
	movl	16(%eax),%edx
	leal	-84(%ebp),%eax
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	movl	-192(%ebp),%eax
	movl	L_VMT_CLASSES_TMEMORYSTREAM$non_lazy_ptr-Lj1827(%eax),%edx
	movl	$0,%eax
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	%eax,-96(%ebp)
	movl	-192(%ebp),%eax
	movl	L_VMT_CLASSES_TSTRINGLIST$non_lazy_ptr-Lj1827(%eax),%edx
	movl	$0,%eax
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	%eax,-40(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj2103
	jmp	Lj2104
Lj2103:
	movl	-84(%ebp),%eax
	movl	%eax,-88(%ebp)
	jmp	Lj2107
Lj2104:
	movl	-16(%ebp),%eax
	movl	16(%eax),%edx
	leal	-88(%ebp),%eax
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
Lj2107:
	leal	-160(%ebp),%ecx
	leal	-184(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-140(%ebp)
	testl	%eax,%eax
	jne	Lj2112
	movl	$1,-72(%ebp)
	movl	-12(%ebp),%eax
	call	L_DBF_PGFILE_TPAGEDFILE_$__GETRECORDCOUNT$$LONGINT$stub
	movl	%eax,-188(%ebp)
	movl	$1,-56(%ebp)
	movl	-188(%ebp),%eax
	cmpl	-56(%ebp),%eax
	jl	Lj2119
	decl	-56(%ebp)
	.align 2
Lj2120:
	incl	-56(%ebp)
	movl	-84(%ebp),%ecx
	movl	-56(%ebp),%edx
	movl	-12(%ebp),%esi
	movl	-12(%ebp),%eax
	movl	(%eax),%ebx
	movl	%esi,%eax
	call	*140(%ebx)
	movl	-84(%ebp),%eax
	movb	(%eax),%al
	cmpb	$42,%al
	jne	Lj2129
	jmp	Lj2131
Lj2131:
	movb	-8(%ebp),%al
	testb	%al,%al
	je	Lj2129
	jmp	Lj2130
Lj2129:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2132
	jmp	Lj2133
Lj2132:
	movl	-88(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_DBF_DBFFILE_TDBFFILE_$__INITRECORD$PCHAR$stub
	movl	-88(%ebp),%edx
	movl	-84(%ebp),%eax
	movb	(%eax),%al
	movb	%al,(%edx)
Lj2133:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2140
	jmp	Lj2142
Lj2142:
	movl	-12(%ebp),%eax
	movl	96(%eax),%eax
	testl	%eax,%eax
	jne	Lj2140
	jmp	Lj2141
Lj2140:
	movl	-28(%ebp),%eax
	call	L_CLASSES_TCOLLECTION_$__GETCOUNT$$LONGINT$stub
	decl	%eax
	movl	%eax,%edi
	movl	$0,-60(%ebp)
	cmpl	-60(%ebp),%edi
	jl	Lj2144
	decl	-60(%ebp)
	.align 2
Lj2145:
	incl	-60(%ebp)
	movl	-60(%ebp),%edx
	movl	-28(%ebp),%eax
	call	L_DBF_FIELDS_TDBFFIELDDEFS_$__GETITEM$LONGINT$$TDBFFIELDDEF$stub
	movl	%eax,-32(%ebp)
	movl	-32(%ebp),%eax
	call	L_DBF_FIELDS_TDBFFIELDDEF_$__ISBLOB$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj2156
	jmp	Lj2155
Lj2156:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj2154
	jmp	Lj2159
Lj2159:
	movl	-32(%ebp),%eax
	movl	76(%eax),%eax
	cmpl	$0,%eax
	jge	Lj2154
	jmp	Lj2155
Lj2154:
	movb	$0,(%esp)
	movl	-84(%ebp),%eax
	movl	%eax,8(%esp)
	leal	-68(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-60(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	$3,%ecx
	call	L_DBF_DBFFILE_TDBFFILE_$__GETFIELDDATA$LONGINT$TFIELDTYPE$POINTER$POINTER$BOOLEAN$$BOOLEAN$stub
	movl	-68(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj2172
	jmp	Lj2173
Lj2172:
	movl	-96(%ebp),%eax
	call	L_CLASSES_TMEMORYSTREAM_$__CLEAR$stub
	movl	-12(%ebp),%eax
	movl	96(%eax),%eax
	movl	-96(%ebp),%ecx
	movl	-68(%ebp),%edx
	call	L_DBF_MEMO_TMEMOFILE_$__READMEMO$LONGINT$TSTREAM$stub
	movl	$0,4(%esp)
	movl	$0,(%esp)
	movl	-96(%ebp),%eax
	movl	-96(%ebp),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movl	-96(%ebp),%eax
	movl	%eax,(%esp)
	movl	-16(%ebp),%eax
	movl	96(%eax),%eax
	leal	-68(%ebp),%edx
	movl	$0,%ecx
	call	L_DBF_MEMO_TMEMOFILE_$__WRITEMEMO$LONGINT$LONGINT$TSTREAM$stub
Lj2173:
	movb	$0,(%esp)
	movl	-88(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-68(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-60(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	$3,%ecx
	call	L_DBF_DBFFILE_TDBFFILE_$__SETFIELDDATA$LONGINT$TFIELDTYPE$POINTER$POINTER$BOOLEAN$stub
	jmp	Lj2206
Lj2155:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2209
	jmp	Lj2208
Lj2209:
	movl	-32(%ebp),%eax
	movl	76(%eax),%eax
	cmpl	$0,%eax
	jge	Lj2207
	jmp	Lj2208
Lj2207:
	movl	-92(%ebp),%edx
	movl	-60(%ebp),%eax
	imull	$12,%eax
	leal	(%edx,%eax),%eax
	movl	%eax,%esi
	movl	8(%esi),%ecx
	movl	-88(%ebp),%edx
	movl	4(%esi),%eax
	leal	(%edx,%eax,1),%edx
	movl	-84(%ebp),%ebx
	movl	(%esi),%eax
	leal	(%ebx,%eax,1),%eax
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
Lj2208:
Lj2206:
	cmpl	-60(%ebp),%edi
	jg	Lj2145
Lj2144:
Lj2141:
	movl	-88(%ebp),%ecx
	movl	-72(%ebp),%edx
	movl	-16(%ebp),%esi
	movl	-16(%ebp),%eax
	movl	(%eax),%ebx
	movl	%esi,%eax
	call	*144(%ebx)
	movl	-16(%ebp),%eax
	movl	112(%eax),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	decl	%eax
	movl	%eax,%ebx
	movl	$0,-52(%ebp)
	cmpl	-52(%ebp),%ebx
	jl	Lj2225
	decl	-52(%ebp)
	.align 2
Lj2226:
	incl	-52(%ebp)
	movl	-16(%ebp),%eax
	movl	112(%eax),%eax
	movl	-52(%ebp),%edx
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,%esi
	movl	-88(%ebp),%ecx
	movl	-72(%ebp),%edx
	movl	%esi,%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__INSERT$LONGINT$PCHAR$$BOOLEAN$stub
	cmpl	-52(%ebp),%ebx
	jg	Lj2226
Lj2225:
	incl	-72(%ebp)
Lj2130:
	movl	-188(%ebp),%eax
	cmpl	-56(%ebp),%eax
	jg	Lj2120
Lj2119:
	movl	-12(%ebp),%eax
	movl	112(%eax),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	movl	%eax,%ebx
	decl	%ebx
	movl	$0,-52(%ebp)
	cmpl	-52(%ebp),%ebx
	jl	Lj2242
	decl	-52(%ebp)
	.align 2
Lj2243:
	incl	-52(%ebp)
	movl	-12(%ebp),%eax
	movl	112(%eax),%eax
	movl	-52(%ebp),%edx
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	56(%eax),%edx
	movl	-40(%ebp),%eax
	movl	-40(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*164(%ecx)
	cmpl	-52(%ebp),%ebx
	jg	Lj2243
Lj2242:
	movl	-12(%ebp),%eax
	call	L_DBF_DBFFILE_TDBFFILE_$__CLOSE$stub
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	seteb	%al
	movb	%al,(%esp)
	movl	-12(%ebp),%eax
	movl	56(%eax),%edx
	movl	-40(%ebp),%ecx
	movl	-16(%ebp),%eax
	call	L_DBF_DBFFILE_TDBFFILE_$__RENAME$ANSISTRING$TSTRINGS$BOOLEAN$stub
	movl	-12(%ebp),%eax
	call	L_DBF_DBFFILE_TDBFFILE_$__OPEN$stub
	movl	-72(%ebp),%edx
	decl	%edx
	movl	-12(%ebp),%eax
	call	L_DBF_PGFILE_TPAGEDFILE_$__SETRECORDCOUNT$LONGINT$stub
	movl	-12(%ebp),%eax
	call	L_DBF_PGFILE_TPAGEDFILE_$__GETRECORDCOUNT$$LONGINT$stub
	movl	-12(%ebp),%edx
	movl	40(%edx),%edx
	movl	%eax,4(%edx)
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*148(%edx)
Lj2112:
	call	LFPC_POPADDRSTACK$stub
	leal	-16(%ebp),%eax
	call	L_DBF_COMMON_FREEANDNIL$formal$stub
	leal	-40(%ebp),%eax
	call	L_DBF_COMMON_FREEANDNIL$formal$stub
	movl	-84(%ebp),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
	leal	-96(%ebp),%eax
	call	L_DBF_COMMON_FREEANDNIL$formal$stub
	movl	-92(%ebp),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2286
	jmp	Lj2287
Lj2286:
	movl	-88(%ebp),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
Lj2287:
	movl	-140(%ebp),%eax
	testl	%eax,%eax
	je	Lj2113
	decl	%eax
	testl	%eax,%eax
	je	Lj2114
Lj2114:
	call	LFPC_RERAISE$stub
Lj2113:
Lj1828:
	call	LFPC_POPADDRSTACK$stub
	leal	-148(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-148(%ebp)
	leal	-44(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-44(%ebp)
	leal	-48(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-48(%ebp)
	movl	-136(%ebp),%eax
	testl	%eax,%eax
	je	Lj1829
	call	LFPC_RERAISE$stub
Lj1829:
	movl	-204(%ebp),%ebx
	movl	-200(%ebp),%esi
	movl	-196(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_DBF_DBFFILE_TDBFFILE_$__REGENERATEINDEXES
_DBF_DBFFILE_TDBFFILE_$__REGENERATEINDEXES:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	call	Lj2303
Lj2303:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	112(%eax),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	movl	%eax,%ebx
	decl	%ebx
	movl	$0,-8(%ebp)
	cmpl	-8(%ebp),%ebx
	jl	Lj2305
	decl	-8(%ebp)
	.align 2
Lj2306:
	incl	-8(%ebp)
	movl	-4(%ebp),%eax
	movl	112(%eax),%eax
	movl	-8(%ebp),%edx
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,%edx
	movl	L_TC_SYSUTILS_EMPTYSTR$non_lazy_ptr-Lj2303(%esi),%eax
	movl	(%eax),%ecx
	movl	-4(%ebp),%eax
	call	L_DBF_DBFFILE_TDBFFILE_$__PACKINDEX$TINDEXFILE$ANSISTRING$stub
	cmpl	-8(%ebp),%ebx
	jg	Lj2306
Lj2305:
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DBF_DBFFILE_TDBFFILE_$__GETFIELDINFO$ANSISTRING$$TDBFFIELDDEF
_DBF_DBFFILE_TDBFFILE_$__GETFIELDINFO$ANSISTRING$$TDBFFIELDDEF:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-72(%ebp)
	movl	%esi,-68(%ebp)
	call	Lj2320
Lj2320:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	$0,-64(%ebp)
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-60(%ebp)
	testl	%eax,%eax
	jne	Lj2321
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-64(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	L_U_SYSTEM_WIDESTRINGMANAGER$non_lazy_ptr-Lj2320(%ebx),%ecx
	movl	32(%ecx),%ecx
	call	*%ecx
	movl	-64(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-64(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	104(%eax),%eax
	call	L_CLASSES_TCOLLECTION_$__GETCOUNT$$LONGINT$stub
	movl	%eax,%esi
	decl	%esi
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%esi
	jl	Lj2331
	decl	-16(%ebp)
	.align 2
Lj2332:
	incl	-16(%ebp)
	movl	-8(%ebp),%eax
	movl	104(%eax),%eax
	movl	-16(%ebp),%edx
	call	L_DBF_FIELDS_TDBFFIELDDEFS_$__GETITEM$LONGINT$$TDBFFIELDDEF$stub
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	movl	28(%eax),%eax
	movl	-4(%ebp),%edx
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	je	Lj2341
	jmp	Lj2342
Lj2341:
	movl	-20(%ebp),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj2321
Lj2342:
	cmpl	-16(%ebp),%esi
	jg	Lj2332
Lj2331:
	movl	$0,-12(%ebp)
Lj2321:
	call	LFPC_POPADDRSTACK$stub
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj2322
	call	LFPC_RERAISE$stub
Lj2322:
	movl	-12(%ebp),%eax
	movl	-72(%ebp),%ebx
	movl	-68(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DBF_DBFFILE_TDBFFILE_$__GETFIELDDATA$LONGINT$TFIELDTYPE$POINTER$POINTER$BOOLEAN$$BOOLEAN
_DBF_DBFFILE_TDBFFILE_$__GETFIELDDATA$LONGINT$TFIELDTYPE$POINTER$POINTER$BOOLEAN$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	104(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_DBF_FIELDS_TDBFFIELDDEFS_$__GETITEM$LONGINT$$TDBFFIELDDEF$stub
	movl	%eax,-20(%ebp)
	movb	8(%ebp),%al
	movb	%al,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	16(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-8(%ebp),%ecx
	movl	-20(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DBF_DBFFILE_TDBFFILE_$__GETFIELDDATAFROMDEF$crc77AF605D$stub
	movb	%al,-13(%ebp)
	movb	-13(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_DBF_DBFFILE_TDBFFILE_$__GETFIELDDATAFROMDEF$crc77AF605D
_DBF_DBFFILE_TDBFFILE_$__GETFIELDDATAFROMDEF$crc77AF605D:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$168,%esp
	movl	%ebx,-160(%ebp)
	movl	%esi,-156(%ebp)
	call	Lj2374
Lj2374:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	16(%ebp),%eax
	testl	%eax,%eax
	je	Lj2381
	jmp	Lj2382
Lj2381:
	movb	$0,-13(%ebp)
	jmp	Lj2373
Lj2382:
	movl	-12(%ebp),%eax
	movl	168(%eax),%eax
	testl	%eax,%eax
	jne	Lj2388
	jmp	Lj2386
Lj2388:
	movl	12(%ebp),%eax
	testl	%eax,%eax
	je	Lj2387
	jmp	Lj2386
Lj2387:
	movl	-4(%ebp),%eax
	movl	92(%eax),%eax
	cmpl	$0,%eax
	jge	Lj2385
	jmp	Lj2386
Lj2385:
	movb	$0,(%esp)
	leal	-4(%ebp),%ecx
	movl	16(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DBF_DBFFILE_TDBFFILE_$__ISNULLFLAGSET$POINTER$TDBFFIELDDEF$TNULLFIELDFLAG$$BOOLEAN$stub
	testb	%al,%al
	seteb	-13(%ebp)
	jmp	Lj2373
Lj2386:
	movl	-4(%ebp),%eax
	movl	80(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-4(%ebp),%eax
	movl	60(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	16(%ebp),%eax
	movl	%eax,-72(%ebp)
	movl	16(%ebp),%edx
	movl	-20(%ebp),%eax
	addl	%eax,%edx
	movl	%edx,16(%ebp)
	movb	$0,-65(%ebp)
	movb	$1,-13(%ebp)
	movl	-4(%ebp),%eax
	movb	44(%eax),%al
	cmpb	$43,%al
	jb	Lj2412
	subb	$43,%al
	je	Lj2413
	subb	$5,%al
	je	Lj2421
	subb	$16,%al
	je	Lj2415
	subb	$2,%al
	je	Lj2418
	subb	$7,%al
	je	Lj2413
	subb	$4,%al
	je	Lj2419
	subb	$2,%al
	je	Lj2414
	subb	$2,%al
	je	Lj2420
	subb	$3,%al
	je	Lj2416
	subb	$2,%al
	je	Lj2420
	subb	$3,%al
	je	Lj2417
	jmp	Lj2412
Lj2413:
	movl	-12(%ebp),%eax
	movzbl	120(%eax),%eax
	cmpl	$5,%eax
	je	Lj2424
	cmpl	$7,%eax
	je	Lj2424
Lj2424:
	jne	Lj2422
	jmp	Lj2423
Lj2422:
	movl	16(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	setneb	-13(%ebp)
	cmpb	$0,-13(%ebp)
	jne	Lj2429
	jmp	Lj2428
Lj2429:
	movl	12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2427
	jmp	Lj2428
Lj2427:
	movl	16(%ebp),%eax
	movl	(%eax),%eax
	call	L_DBF_COMMON_SWAPINTBE$LONGWORD$$LONGWORD$stub
	movl	12(%ebp),%edx
	movl	%eax,(%edx)
	cmpb	$0,-13(%ebp)
	jne	Lj2434
	jmp	Lj2435
Lj2434:
	movl	12(%ebp),%eax
	movl	(%eax),%edx
	xorl	$-2147483648,%edx
	movl	12(%ebp),%eax
	movl	%edx,(%eax)
Lj2435:
Lj2428:
	jmp	Lj2438
Lj2423:
	movb	$1,-13(%ebp)
	movl	12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2441
	jmp	Lj2442
Lj2441:
	movl	16(%ebp),%eax
	movl	(%eax),%eax
	call	L_DBF_COMMON_SWAPINTLE$LONGWORD$$LONGWORD$stub
	movl	12(%ebp),%edx
	movl	%eax,(%edx)
Lj2442:
Lj2438:
	jmp	Lj2411
Lj2414:
	movl	16(%ebp),%eax
	movl	(%eax),%edx
	movl	4(%eax),%eax
	cmpl	$0,%eax
	jne	Lj2447
	cmpl	$0,%edx
	jne	Lj2447
	jmp	Lj2448
Lj2447:
	movb	$1,-13(%ebp)
	jmp	Lj2449
Lj2448:
	movb	$0,-13(%ebp)
Lj2449:
	cmpb	$0,-13(%ebp)
	jne	Lj2452
	jmp	Lj2451
Lj2452:
	movl	12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2450
	jmp	Lj2451
Lj2450:
	movl	12(%ebp),%edx
	movl	16(%ebp),%eax
	call	L_DBF_COMMON_SWAPINT64BE$POINTER$POINTER$stub
	movl	12(%ebp),%eax
	movl	(%eax),%edx
	movl	4(%eax),%eax
	cmpl	$0,%eax
	jg	Lj2457
	jl	Lj2458
	cmpl	$0,%edx
	ja	Lj2457
	jmp	Lj2458
Lj2457:
	movl	12(%ebp),%eax
	movl	(%eax),%ecx
	movl	4(%eax),%edx
	notl	%edx
	notl	%ecx
	movl	12(%ebp),%eax
	movl	%ecx,(%eax)
	movl	%edx,4(%eax)
	jmp	Lj2461
Lj2458:
	movl	12(%ebp),%edx
	movl	12(%ebp),%ecx
	movl	L_$DBF_DBFFILE$_Ld15$non_lazy_ptr-Lj2374(%ebx),%eax
	fldl	(%eax)
	fldl	(%ecx)
	fmulp	%st,%st(1)
	fstpl	(%edx)
Lj2461:
Lj2451:
	jmp	Lj2411
Lj2415:
	movl	16(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj2466
	jmp	Lj2465
Lj2466:
	movl	16(%ebp),%eax
	addl	$4,%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj2464
	jmp	Lj2465
Lj2464:
	movb	$1,-13(%ebp)
	jmp	Lj2467
Lj2465:
	movb	$0,-13(%ebp)
Lj2467:
	cmpb	$0,-13(%ebp)
	jne	Lj2470
	jmp	Lj2469
Lj2470:
	movl	12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2468
	jmp	Lj2469
Lj2468:
	movl	12(%ebp),%edx
	movl	16(%ebp),%eax
	call	L_DBF_COMMON_SWAPINT64BE$POINTER$POINTER$stub
	movl	-12(%ebp),%eax
	movb	174(%eax),%al
	cmpb	$1,%al
	je	Lj2475
	jmp	Lj2476
Lj2475:
	movl	12(%ebp),%eax
	movl	(%eax),%edx
	movl	%edx,(%esp)
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	call	L_DBF_COMMON_BDETIMESTAMPTODATETIME$DOUBLE$$TDATETIME$stub
	fstpl	-56(%ebp)
	jmp	Lj2481
Lj2476:
	movl	12(%ebp),%eax
	movl	(%eax),%edx
	movl	%edx,-56(%ebp)
	movl	4(%eax),%eax
	movl	%eax,-52(%ebp)
Lj2481:
	movl	%ebp,%eax
	call	L_DBF_DBFFILE_TDBFFILE_$_GETFIELDDATAFROMDEF$crc77AF605D_SAVEDATETODST$stub
Lj2469:
	jmp	Lj2411
Lj2416:
	movl	16(%ebp),%eax
	movl	(%eax),%edx
	movl	4(%eax),%eax
	cmpl	$0,%eax
	jne	Lj2486
	cmpl	$0,%edx
	jne	Lj2486
	jmp	Lj2487
Lj2486:
	movb	$1,-13(%ebp)
	jmp	Lj2488
Lj2487:
	movb	$0,-13(%ebp)
Lj2488:
	cmpb	$0,-13(%ebp)
	jne	Lj2491
	jmp	Lj2490
Lj2491:
	movl	12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2489
	jmp	Lj2490
Lj2489:
	movl	16(%ebp),%eax
	movl	(%eax),%eax
	call	L_DBF_COMMON_SWAPINTLE$LONGWORD$$LONGWORD$stub
	subl	$1721425,%eax
	movl	%eax,-60(%ebp)
	movl	16(%ebp),%eax
	addl	$4,%eax
	movl	(%eax),%eax
	call	L_DBF_COMMON_SWAPINTLE$LONGWORD$$LONGWORD$stub
	movl	%eax,-64(%ebp)
	leal	-64(%ebp),%eax
	call	L_SYSUTILS_TIMESTAMPTODATETIME$TTIMESTAMP$$TDATETIME$stub
	fstpl	-56(%ebp)
	movl	%ebp,%eax
	call	L_DBF_DBFFILE_TDBFFILE_$_GETFIELDDATAFROMDEF$crc77AF605D_SAVEDATETODST$stub
Lj2490:
	jmp	Lj2411
Lj2417:
	movb	$1,-13(%ebp)
	movl	12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2508
	jmp	Lj2509
Lj2508:
	movl	16(%ebp),%eax
	movl	(%eax),%eax
	call	L_DBF_COMMON_SWAPINTLE$LONGWORD$$LONGWORD$stub
	movl	$0,%edx
	movl	12(%ebp),%ecx
	movl	%eax,(%ecx)
	movl	%edx,4(%ecx)
	movl	-8(%ebp),%eax
	cmpl	$7,%eax
	je	Lj2514
	jmp	Lj2515
Lj2514:
	movl	12(%ebp),%eax
	fildq	(%eax)
	movl	L_$DBF_DBFFILE$_Ld16$non_lazy_ptr-Lj2374(%ebx),%eax
	flds	(%eax)
	fdivrp	%st,%st(1)
	movl	12(%ebp),%eax
	fstpl	(%eax)
Lj2515:
Lj2509:
	jmp	Lj2411
Lj2418:
	movl	-12(%ebp),%eax
	movzbl	120(%eax),%eax
	cmpl	$5,%eax
	je	Lj2520
	cmpl	$7,%eax
	je	Lj2520
Lj2520:
	je	Lj2518
	jmp	Lj2519
Lj2518:
	movl	16(%ebp),%eax
	movl	(%eax),%edx
	movl	4(%eax),%eax
	cmpl	$0,%eax
	jne	Lj2521
	cmpl	$0,%edx
	jne	Lj2521
	jmp	Lj2522
Lj2521:
	movb	$1,-13(%ebp)
	jmp	Lj2523
Lj2522:
	movb	$0,-13(%ebp)
Lj2523:
	cmpb	$0,-13(%ebp)
	jne	Lj2526
	jmp	Lj2525
Lj2526:
	movl	12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2524
	jmp	Lj2525
Lj2524:
	movl	12(%ebp),%edx
	movl	16(%ebp),%eax
	call	L_DBF_COMMON_SWAPINT64LE$POINTER$POINTER$stub
	movl	12(%ebp),%ecx
	movl	12(%ebp),%edx
	movl	(%edx),%eax
	movl	%eax,(%ecx)
	movl	4(%edx),%eax
	movl	%eax,4(%ecx)
Lj2525:
	jmp	Lj2533
Lj2519:
	movb	$1,-65(%ebp)
Lj2533:
	jmp	Lj2411
Lj2419:
	movl	-24(%ebp),%eax
	cmpl	$4,%eax
	je	Lj2536
	jmp	Lj2537
Lj2536:
	movl	16(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	setneb	-13(%ebp)
	movl	12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2540
	jmp	Lj2541
Lj2540:
	movl	16(%ebp),%eax
	movl	(%eax),%eax
	call	L_DBF_COMMON_SWAPINTLE$LONGWORD$$LONGWORD$stub
	movl	12(%ebp),%edx
	movl	%eax,(%edx)
Lj2541:
	jmp	Lj2546
Lj2537:
	movb	$1,-65(%ebp)
Lj2546:
	jmp	Lj2411
Lj2420:
	movl	-12(%ebp),%eax
	movzbl	120(%eax),%eax
	cmpl	$7,%eax
	je	Lj2551
Lj2551:
	je	Lj2549
	jmp	Lj2550
Lj2549:
	movb	$1,-13(%ebp)
	movl	12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2554
	jmp	Lj2555
Lj2554:
	movl	12(%ebp),%eax
	movl	-24(%ebp),%edx
	movb	$0,%cl
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$BYTE$stub
	movb	$1,(%esp)
	leal	-4(%ebp),%ecx
	movl	-72(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DBF_DBFFILE_TDBFFILE_$__ISNULLFLAGSET$POINTER$TDBFFIELDDEF$TNULLFIELDFLAG$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj2562
	jmp	Lj2563
Lj2562:
	movl	16(%ebp),%eax
	movl	-24(%ebp),%edx
	addl	%edx,%eax
	decl	%eax
	movzbl	(%eax),%eax
	movl	%eax,-24(%ebp)
Lj2563:
	movb	$0,(%esp)
	leal	-4(%ebp),%ecx
	movl	-72(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DBF_DBFFILE_TDBFFILE_$__ISNULLFLAGSET$POINTER$TDBFFIELDDEF$TNULLFIELDFLAG$$BOOLEAN$stub
	testb	%al,%al
	je	Lj2574
	jmp	Lj2575
Lj2574:
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	cmpl	$13,%eax
	je	Lj2584
	jmp	Lj2585
Lj2584:
	movl	12(%ebp),%eax
	movw	-24(%ebp),%dx
	movw	%dx,(%eax)
	movl	12(%ebp),%edx
	addl	$2,%edx
	movl	16(%ebp),%eax
	movl	-24(%ebp),%ecx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	jmp	Lj2594
Lj2585:
	movl	12(%ebp),%edx
	movl	16(%ebp),%eax
	movl	-24(%ebp),%ecx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
Lj2594:
	jmp	Lj2601
Lj2575:
	movb	$0,-13(%ebp)
Lj2601:
Lj2555:
Lj2550:
	jmp	Lj2411
Lj2421:
	movl	12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2604
	jmp	Lj2605
Lj2604:
	movl	12(%ebp),%eax
	movl	-24(%ebp),%edx
	movb	$0,%cl
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$BYTE$stub
	movl	12(%ebp),%edx
	movl	16(%ebp),%eax
	movl	-24(%ebp),%ecx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movb	$1,-13(%ebp)
Lj2605:
	jmp	Lj2411
Lj2412:
	movb	$1,-65(%ebp)
Lj2411:
	cmpb	$0,-65(%ebp)
	jne	Lj2622
	jmp	Lj2623
Lj2622:
	jmp	Lj2625
	.align 2
Lj2624:
	decl	-24(%ebp)
Lj2625:
	movl	-24(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj2627
	jmp	Lj2626
Lj2627:
	movl	16(%ebp),%eax
	movl	-24(%ebp),%edx
	addl	%edx,%eax
	decl	%eax
	movb	(%eax),%al
	cmpb	$32,%al
	je	Lj2624
	jmp	Lj2626
Lj2626:
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	jne	Lj2628
	jmp	Lj2629
Lj2628:
	jmp	Lj2631
	.align 2
Lj2630:
	incl	16(%ebp)
	decl	-24(%ebp)
Lj2631:
	movl	-24(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj2633
	jmp	Lj2632
Lj2633:
	movl	16(%ebp),%eax
	movb	(%eax),%al
	cmpb	$32,%al
	je	Lj2630
	jmp	Lj2632
Lj2632:
Lj2629:
	movl	-24(%ebp),%eax
	cmpl	$0,%eax
	setgb	-13(%ebp)
	cmpb	$0,-13(%ebp)
	jne	Lj2638
	jmp	Lj2637
Lj2638:
	movl	12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2636
	jmp	Lj2637
Lj2636:
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	jb	Lj2640
	decl	%eax
	je	Lj2647
	decl	%eax
	je	Lj2642
	decl	%eax
	je	Lj2644
	subl	$2,%eax
	je	Lj2641
	decl	%eax
	jb	Lj2640
	subl	$1,%eax
	jbe	Lj2645
	subl	$2,%eax
	je	Lj2646
	subl	$2,%eax
	je	Lj2646
	subl	$14,%eax
	je	Lj2643
	jmp	Lj2640
Lj2641:
	movl	16(%ebp),%eax
	movb	(%eax),%al
	cmpb	$84,%al
	je	Lj2648
	jmp	Lj2650
Lj2650:
	movl	16(%ebp),%eax
	movb	(%eax),%al
	cmpb	$116,%al
	je	Lj2648
	jmp	Lj2649
Lj2648:
	movl	12(%ebp),%eax
	movw	$1,(%eax)
	jmp	Lj2653
Lj2649:
	movl	12(%ebp),%eax
	movw	$0,(%eax)
Lj2653:
	jmp	Lj2639
Lj2642:
	movl	-24(%ebp),%edx
	movl	16(%ebp),%eax
	movl	$0,%ecx
	call	L_DBF_DBFFILE_GETINTFROMSTRLENGTH$POINTER$LONGINT$LONGINT$$LONGINT$stub
	movl	12(%ebp),%edx
	movw	%ax,(%edx)
	jmp	Lj2639
Lj2643:
	movl	$0,4(%esp)
	movl	$0,(%esp)
	movl	-24(%ebp),%ecx
	movl	16(%ebp),%edx
	movl	%ebp,%eax
	call	L_DBF_DBFFILE_TDBFFILE_$_GETFIELDDATAFROMDEF$crc77AF605D_GETINT64FROMSTRLENGTH$crcEFF9B288$stub
	movl	12(%ebp),%ecx
	movl	%eax,(%ecx)
	movl	%edx,4(%ecx)
	jmp	Lj2639
Lj2644:
	movl	-24(%ebp),%edx
	movl	16(%ebp),%eax
	movl	$0,%ecx
	call	L_DBF_DBFFILE_GETINTFROMSTRLENGTH$POINTER$LONGINT$LONGINT$$LONGINT$stub
	movl	12(%ebp),%edx
	movl	%eax,(%edx)
	jmp	Lj2639
Lj2645:
	movl	-24(%ebp),%edx
	movl	16(%ebp),%eax
	call	L_DBF_DBFFILE_DBFSTRTOFLOAT$PCHAR$LONGINT$$EXTENDED$stub
	movl	12(%ebp),%eax
	fstpl	(%eax)
	jmp	Lj2639
Lj2646:
	movl	16(%ebp),%eax
	movl	$1,%ecx
	movl	$4,%edx
	call	L_DBF_DBFFILE_GETINTFROMSTRLENGTH$POINTER$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,-36(%ebp)
	movl	16(%ebp),%eax
	addl	$4,%eax
	movl	$1,%ecx
	movl	$2,%edx
	call	L_DBF_DBFFILE_GETINTFROMSTRLENGTH$POINTER$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,-32(%ebp)
	movl	16(%ebp),%eax
	addl	$6,%eax
	movl	$1,%ecx
	movl	$2,%edx
	call	L_DBF_DBFFILE_GETINTFROMSTRLENGTH$POINTER$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,-28(%ebp)
	movl	-36(%ebp),%eax
	cmpl	$100,%eax
	jl	Lj2715
	jmp	Lj2713
Lj2715:
	movl	16(%ebp),%eax
	movb	(%eax),%al
	cmpb	$32,%al
	je	Lj2714
	jmp	Lj2713
Lj2714:
	movl	16(%ebp),%eax
	movb	1(%eax),%al
	cmpb	$32,%al
	je	Lj2712
	jmp	Lj2713
Lj2712:
	leal	-36(%ebp),%edx
	movl	%ebp,%eax
	call	L_DBF_DBFFILE_TDBFFILE_$_GETFIELDDATAFROMDEF$crc77AF605D_CORRECTYEAR$LONGINT$stub
Lj2713:
	leal	-84(%ebp),%ecx
	leal	-108(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-112(%ebp)
	testl	%eax,%eax
	jne	Lj2722
	movw	-28(%ebp),%cx
	movw	-32(%ebp),%dx
	movw	-36(%ebp),%ax
	call	L_SYSUTILS_ENCODEDATE$WORD$WORD$WORD$$TDATETIME$stub
	fstpl	-56(%ebp)
Lj2722:
	call	LFPC_POPADDRSTACK$stub
	movl	-112(%ebp),%eax
	testl	%eax,%eax
	je	Lj2724
	leal	-124(%ebp),%ecx
	leal	-148(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-152(%ebp)
	testl	%eax,%eax
	jne	Lj2735
	fldz
	fstpl	-56(%ebp)
Lj2735:
	call	LFPC_POPADDRSTACK$stub
	movl	-152(%ebp),%eax
	testl	%eax,%eax
	je	Lj2734
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj2734:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj2724
Lj2724:
	movl	-4(%ebp),%edx
	movl	32(%edx),%edx
	cmpl	$11,%edx
	je	Lj2740
	jmp	Lj2739
Lj2740:
	movl	-8(%ebp),%edx
	cmpl	$11,%edx
	je	Lj2738
	jmp	Lj2739
Lj2738:
	movl	16(%ebp),%esi
	addl	$8,%esi
	movl	$1,%ecx
	movl	$2,%edx
	movl	%esi,%eax
	call	L_DBF_DBFFILE_GETINTFROMSTRLENGTH$POINTER$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,%edx
	movl	%edx,-40(%ebp)
	movl	16(%ebp),%esi
	addl	$10,%esi
	movl	$1,%ecx
	movl	$2,%edx
	movl	%esi,%eax
	call	L_DBF_DBFFILE_GETINTFROMSTRLENGTH$POINTER$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,%edx
	movl	%edx,-44(%ebp)
	movl	16(%ebp),%esi
	addl	$12,%esi
	movl	$1,%ecx
	movl	$2,%edx
	movl	%esi,%eax
	call	L_DBF_DBFFILE_GETINTFROMSTRLENGTH$POINTER$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,%edx
	movl	%edx,-48(%ebp)
	leal	-84(%ebp),%ecx
	leal	-152(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-88(%ebp)
	testl	%eax,%eax
	jne	Lj2767
	movw	$0,(%esp)
	movw	-48(%ebp),%cx
	movw	-44(%ebp),%dx
	movw	-40(%ebp),%si
	movw	%si,%ax
	call	L_SYSUTILS_ENCODETIME$WORD$WORD$WORD$WORD$$TDATETIME$stub
	fldl	-56(%ebp)
	faddp	%st,%st(1)
	fstpl	-56(%ebp)
Lj2767:
	call	LFPC_POPADDRSTACK$stub
	movl	-88(%ebp),%eax
	testl	%eax,%eax
	je	Lj2769
	leal	-100(%ebp),%ecx
	leal	-128(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-104(%ebp)
	testl	%eax,%eax
	jne	Lj2782
	fldz
	fstpl	-56(%ebp)
Lj2782:
	call	LFPC_POPADDRSTACK$stub
	movl	-104(%ebp),%eax
	testl	%eax,%eax
	je	Lj2781
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj2781:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj2769
Lj2769:
Lj2739:
	movl	%ebp,%edx
	movl	%edx,%eax
	call	L_DBF_DBFFILE_TDBFFILE_$_GETFIELDDATAFROMDEF$crc77AF605D_SAVEDATETODST$stub
	jmp	Lj2639
Lj2647:
	movl	-24(%ebp),%ecx
	movl	16(%ebp),%edx
	movl	12(%ebp),%esi
	movl	%esi,%eax
	call	L_SYSUTILS_STRLCOPY$PCHAR$PCHAR$LONGINT$$PCHAR$stub
	jmp	Lj2639
Lj2640:
Lj2639:
	jmp	Lj2793
Lj2637:
	movl	-8(%ebp),%edx
	cmpl	$1,%edx
	jb	Lj2795
	decl	%edx
	je	Lj2796
	jmp	Lj2795
Lj2796:
	movl	12(%ebp),%edx
	testl	%edx,%edx
	jne	Lj2797
	jmp	Lj2798
Lj2797:
	movl	12(%ebp),%edx
	movb	$0,(%edx)
Lj2798:
	jmp	Lj2794
Lj2795:
Lj2794:
Lj2793:
Lj2623:
Lj2373:
	movb	-13(%ebp),%al
	movl	-160(%ebp),%ebx
	movl	-156(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DBF_DBFFILE_TDBFFILE_$_GETFIELDDATAFROMDEF$crc77AF605D_SAVEDATETODST
_DBF_DBFFILE_TDBFFILE_$_GETFIELDDATAFROMDEF$crc77AF605D_SAVEDATETODST:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movb	8(%eax),%al
	testb	%al,%al
	je	Lj2801
	jmp	Lj2802
Lj2801:
	movl	-4(%ebp),%eax
	movl	12(%eax),%ecx
	movl	-4(%ebp),%edx
	movl	-56(%edx),%eax
	movl	%eax,(%ecx)
	movl	-52(%edx),%eax
	movl	%eax,4(%ecx)
	jmp	Lj2805
Lj2802:
	movl	-4(%ebp),%eax
	movl	-8(%eax),%eax
	cmpl	$11,%eax
	je	Lj2806
	jmp	Lj2807
Lj2806:
	movl	-4(%ebp),%eax
	movl	12(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	-56(%eax),%edx
	movl	%edx,(%ecx)
	movl	-52(%eax),%eax
	movl	%eax,4(%ecx)
	jmp	Lj2810
Lj2807:
	movl	-4(%ebp),%edx
	movl	-56(%edx),%eax
	movl	%eax,(%esp)
	movl	-52(%edx),%eax
	movl	%eax,4(%esp)
	call	L_SYSUTILS_DATETIMETOTIMESTAMP$TDATETIME$$TTIMESTAMP$stub
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	12(%eax),%edx
	movl	-8(%ebp),%eax
	movl	%eax,(%edx)
Lj2810:
Lj2805:
	leave
	ret

.text
	.align 4
.globl	_DBF_DBFFILE_TDBFFILE_$_GETFIELDDATAFROMDEF$crc77AF605D_CORRECTYEAR$LONGINT
_DBF_DBFFILE_TDBFFILE_$_GETFIELDDATAFROMDEF$crc77AF605D_CORRECTYEAR$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	cmpl	$100,%eax
	jge	Lj2815
	jmp	Lj2816
Lj2815:
	jmp	Lj2377
Lj2816:
	movl	-8(%ebp),%edx
	movl	-56(%edx),%eax
	movl	%eax,(%esp)
	movl	-52(%edx),%eax
	movl	%eax,4(%esp)
	leal	-10(%ebp),%ecx
	leal	-12(%ebp),%edx
	leal	-14(%ebp),%eax
	call	L_SYSUTILS_DECODEDATE$TDATETIME$WORD$WORD$WORD$stub
	movzwl	-14(%ebp),%eax
	movw	%ax,-16(%ebp)
	movzwl	-16(%ebp),%ecx
	movl	$1374389535,%eax
	imull	%ecx
	movl	%ecx,%eax
	sarl	$5,%edx
	shrl	$31,%eax
	addl	%eax,%edx
	imull	$100,%edx
	movl	-4(%ebp),%eax
	addl	%edx,(%eax)
	jmp	Lj2828
	movl	-4(%ebp),%edx
	movzwl	-16(%ebp),%eax
	cmpl	(%edx),%eax
	jg	Lj2827
	jmp	Lj2828
Lj2827:
	movl	-4(%ebp),%eax
	addl	$100,(%eax)
Lj2828:
Lj2377:
	leave
	ret

.text
	.align 4
.globl	_DBF_DBFFILE_TDBFFILE_$_GETFIELDDATAFROMDEF$crc77AF605D_GETINT64FROMSTRLENGTH$crcEFF9B288
_DBF_DBFFILE_TDBFFILE_$_GETFIELDDATAFROMDEF$crc77AF605D_GETINT64FROMSTRLENGTH$crcEFF9B288:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$296,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	addl	%edx,%eax
	movb	(%eax),%al
	movb	%al,-21(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	addl	%eax,%edx
	movb	$0,(%edx)
	movl	-4(%ebp),%ecx
	leal	-284(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_pchar_to_shortstr$stub
	leal	-284(%ebp),%eax
	leal	-28(%ebp),%edx
	call	Lfpc_val_int64_shortstr$stub
	movl	%eax,-20(%ebp)
	movl	%edx,-16(%ebp)
	movl	-28(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2846
	jmp	Lj2847
Lj2846:
	movl	8(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,-16(%ebp)
Lj2847:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	addl	%eax,%edx
	movb	-21(%ebp),%al
	movb	%al,(%edx)
	movl	-16(%ebp),%edx
	movl	-20(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_DBFFILE_TDBFFILE_$__UPDATENULLFIELD$POINTER$TDBFFIELDDEF$TUPDATENULLFIELD$TNULLFIELDFLAG
_DBF_DBFFILE_TDBFFILE_$__UPDATENULLFIELD$POINTER$TDBFFIELDDEF$TUPDATENULLFIELD$TNULLFIELDFLAG:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movb	8(%ebp),%al
	testb	%al,%al
	je	Lj2856
	decb	%al
	je	Lj2857
	jmp	Lj2855
Lj2856:
	movl	-12(%ebp),%eax
	movl	168(%eax),%eax
	movl	80(%eax),%edx
	movl	-4(%ebp),%eax
	addl	%eax,%edx
	movl	-8(%ebp),%eax
	movl	92(%eax),%eax
	shrl	$3,%eax
	addl	%eax,%edx
	movl	%edx,-16(%ebp)
	movl	-8(%ebp),%eax
	movl	92(%eax),%ecx
	andl	$7,%ecx
	movl	$1,%eax
	shll	%cl,%eax
	movb	%al,-17(%ebp)
	jmp	Lj2854
Lj2857:
	movl	-12(%ebp),%eax
	movl	168(%eax),%eax
	movl	80(%eax),%edx
	movl	-4(%ebp),%eax
	addl	%eax,%edx
	movl	-8(%ebp),%eax
	movl	40(%eax),%eax
	shrl	$3,%eax
	addl	%eax,%edx
	movl	%edx,-16(%ebp)
	movl	-8(%ebp),%eax
	movl	40(%eax),%ecx
	andl	$7,%ecx
	movl	$1,%eax
	shll	%cl,%eax
	movb	%al,-17(%ebp)
	jmp	Lj2854
Lj2855:
Lj2854:
	movb	12(%ebp),%al
	cmpb	$1,%al
	je	Lj2866
	jmp	Lj2867
Lj2866:
	movl	-16(%ebp),%eax
	movb	(%eax),%dl
	movb	-17(%ebp),%al
	orb	%al,%dl
	movl	-16(%ebp),%eax
	movb	%dl,(%eax)
	jmp	Lj2870
Lj2867:
	movl	-16(%ebp),%eax
	movb	-17(%ebp),%cl
	notb	%cl
	movb	(%eax),%dl
	andb	%cl,%dl
	movl	-16(%ebp),%eax
	movb	%dl,(%eax)
Lj2870:
	leave
	ret

.text
	.align 4
.globl	_DBF_DBFFILE_TDBFFILE_$__SETFIELDDATA$LONGINT$TFIELDTYPE$POINTER$POINTER$BOOLEAN
_DBF_DBFFILE_TDBFFILE_$__SETFIELDDATA$LONGINT$TFIELDTYPE$POINTER$POINTER$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-92(%ebp)
	call	Lj2874
Lj2874:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	104(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_DBF_FIELDS_TDBFFIELDDEFS_$__GETITEM$LONGINT$$TDBFFIELDDEF$stub
	movl	%eax,-28(%ebp)
	movl	-28(%ebp),%eax
	movl	60(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-28(%ebp),%eax
	movl	64(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-28(%ebp),%eax
	movl	80(%eax),%edx
	movl	12(%ebp),%eax
	addl	%eax,%edx
	movl	%edx,12(%ebp)
	movl	-12(%ebp),%eax
	movl	168(%eax),%eax
	testl	%eax,%eax
	jne	Lj2893
	jmp	Lj2892
Lj2893:
	movl	-28(%ebp),%eax
	movl	92(%eax),%eax
	cmpl	$0,%eax
	jge	Lj2891
	jmp	Lj2892
Lj2891:
	movb	$0,(%esp)
	movl	16(%ebp),%eax
	testl	%eax,%eax
	seteb	%al
	movzbl	%al,%eax
	movl	L_TC_DBF_DBFFILE_TDBFFILE_$_SETFIELDDATA$crcD3565DC4_SRCNILTOUPDATENULLFIELD$non_lazy_ptr-Lj2874(%ebx),%edx
	movb	(%edx,%eax,1),%al
	movb	%al,4(%esp)
	movl	-28(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DBF_DBFFILE_TDBFFILE_$__UPDATENULLFIELD$POINTER$TDBFFIELDDEF$TUPDATENULLFIELD$TNULLFIELDFLAG$stub
Lj2892:
	movb	$0,-69(%ebp)
	movl	-28(%ebp),%eax
	movb	44(%eax),%al
	cmpb	$43,%al
	jb	Lj2907
	subb	$43,%al
	je	Lj2908
	subb	$21,%al
	je	Lj2910
	subb	$2,%al
	je	Lj2913
	subb	$7,%al
	je	Lj2908
	subb	$4,%al
	je	Lj2914
	subb	$2,%al
	je	Lj2909
	subb	$2,%al
	je	Lj2915
	subb	$3,%al
	je	Lj2911
	subb	$2,%al
	je	Lj2916
	subb	$3,%al
	je	Lj2912
	jmp	Lj2907
Lj2908:
	movl	-12(%ebp),%eax
	movzbl	120(%eax),%eax
	cmpl	$5,%eax
	je	Lj2919
	cmpl	$7,%eax
	je	Lj2919
Lj2919:
	jne	Lj2917
	jmp	Lj2918
Lj2917:
	movl	16(%ebp),%eax
	testl	%eax,%eax
	je	Lj2920
	jmp	Lj2921
Lj2920:
	movl	$0,-36(%ebp)
	jmp	Lj2924
Lj2921:
	movl	16(%ebp),%eax
	movl	(%eax),%eax
	xorl	$-2147483648,%eax
	movl	%eax,-36(%ebp)
Lj2924:
	movl	-36(%ebp),%eax
	call	L_DBF_COMMON_SWAPINTBE$LONGWORD$$LONGWORD$stub
	movl	12(%ebp),%edx
	movl	%eax,(%edx)
	jmp	Lj2931
Lj2918:
	movl	16(%ebp),%eax
	testl	%eax,%eax
	je	Lj2932
	jmp	Lj2933
Lj2932:
	movl	12(%ebp),%eax
	movl	$0,(%eax)
	jmp	Lj2936
Lj2933:
	movl	16(%ebp),%eax
	movl	(%eax),%eax
	call	L_DBF_COMMON_SWAPINTLE$LONGWORD$$LONGWORD$stub
	movl	12(%ebp),%edx
	movl	%eax,(%edx)
Lj2936:
Lj2931:
	jmp	Lj2906
Lj2909:
	movl	16(%ebp),%eax
	testl	%eax,%eax
	je	Lj2941
	jmp	Lj2942
Lj2941:
	movl	12(%ebp),%eax
	movl	$0,(%eax)
	movl	$0,4(%eax)
	jmp	Lj2945
Lj2942:
	movl	16(%ebp),%eax
	fldz
	fldl	(%eax)
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj2946
	jmp	Lj2947
Lj2946:
	movl	12(%ebp),%ecx
	movl	16(%ebp),%eax
	movl	(%eax),%edx
	movl	4(%eax),%eax
	notl	%eax
	notl	%edx
	movl	%edx,(%ecx)
	movl	%eax,4(%ecx)
	jmp	Lj2950
Lj2947:
	movl	12(%ebp),%ecx
	movl	16(%ebp),%eax
	movl	L_$DBF_DBFFILE$_Ld15$non_lazy_ptr-Lj2874(%ebx),%edx
	fldl	(%edx)
	fldl	(%eax)
	fmulp	%st,%st(1)
	fstpl	(%ecx)
Lj2950:
	movl	12(%ebp),%edx
	movl	12(%ebp),%eax
	call	L_DBF_COMMON_SWAPINT64BE$POINTER$POINTER$stub
Lj2945:
	jmp	Lj2906
Lj2910:
	movl	16(%ebp),%eax
	testl	%eax,%eax
	je	Lj2957
	jmp	Lj2958
Lj2957:
	movl	12(%ebp),%eax
	movl	$0,(%eax)
	movl	$0,4(%eax)
	jmp	Lj2961
Lj2958:
	movl	%ebp,%eax
	call	L_DBF_DBFFILE_TDBFFILE_$_SETFIELDDATA$crcD3565DC4_LOADDATEFROMSRC$stub
	movl	-12(%ebp),%eax
	movb	174(%eax),%al
	cmpb	$1,%al
	je	Lj2964
	jmp	Lj2965
Lj2964:
	movl	-60(%ebp),%eax
	movl	%eax,(%esp)
	movl	-56(%ebp),%eax
	movl	%eax,4(%esp)
	call	L_DBF_COMMON_DATETIMETOBDETIMESTAMP$TDATETIME$$DOUBLE$stub
	fstpl	-60(%ebp)
Lj2965:
	leal	-60(%ebp),%eax
	movl	12(%ebp),%edx
	call	L_DBF_COMMON_SWAPINT64BE$POINTER$POINTER$stub
Lj2961:
	jmp	Lj2906
Lj2911:
	movl	16(%ebp),%eax
	testl	%eax,%eax
	je	Lj2974
	jmp	Lj2975
Lj2974:
	movl	12(%ebp),%eax
	movl	$0,(%eax)
	movl	$0,4(%eax)
	jmp	Lj2978
Lj2975:
	movl	%ebp,%eax
	call	L_DBF_DBFFILE_TDBFFILE_$_SETFIELDDATA$crcD3565DC4_LOADDATEFROMSRC$stub
	movl	-60(%ebp),%eax
	movl	%eax,(%esp)
	movl	-56(%ebp),%eax
	movl	%eax,4(%esp)
	call	L_SYSUTILS_DATETIMETOTIMESTAMP$TDATETIME$$TTIMESTAMP$stub
	movl	%eax,-80(%ebp)
	movl	%edx,-76(%ebp)
	movl	-80(%ebp),%eax
	movl	%eax,-68(%ebp)
	movl	-76(%ebp),%eax
	movl	%eax,-64(%ebp)
	movl	-64(%ebp),%eax
	addl	$1721425,%eax
	call	L_DBF_COMMON_SWAPINTLE$LONGWORD$$LONGWORD$stub
	movl	12(%ebp),%edx
	movl	%eax,(%edx)
	movl	-68(%ebp),%eax
	call	L_DBF_COMMON_SWAPINTLE$LONGWORD$$LONGWORD$stub
	movl	12(%ebp),%edx
	addl	$4,%edx
	movl	%eax,(%edx)
Lj2978:
	jmp	Lj2906
Lj2912:
	movl	16(%ebp),%eax
	testl	%eax,%eax
	je	Lj2993
	jmp	Lj2994
Lj2993:
	movl	12(%ebp),%eax
	movl	$0,(%eax)
	movl	$0,4(%eax)
	jmp	Lj2997
Lj2994:
	movl	-8(%ebp),%eax
	cmpl	$7,%eax
	jb	Lj2999
	subl	$7,%eax
	je	Lj3000
	decl	%eax
	je	Lj3001
	jmp	Lj2999
Lj3000:
	movl	12(%ebp),%ecx
	fnstcw	-76(%ebp)
	fnstcw	-74(%ebp)
	orw	$3840,-76(%ebp)
	movl	16(%ebp),%edx
	movl	L_$DBF_DBFFILE$_Ld17$non_lazy_ptr-Lj2874(%ebx),%eax
	fldl	(%eax)
	fldl	(%edx)
	fmulp	%st,%st(1)
	fldcw	-76(%ebp)
	fistpq	-88(%ebp)
	fldcw	-74(%ebp)
	fwait
	movl	-88(%ebp),%eax
	movl	%eax,(%ecx)
	movl	-84(%ebp),%eax
	movl	%eax,4(%ecx)
	jmp	Lj2998
Lj3001:
	movl	12(%ebp),%ecx
	movl	16(%ebp),%edx
	movl	(%edx),%eax
	movl	%eax,(%ecx)
	movl	4(%edx),%eax
	movl	%eax,4(%ecx)
	jmp	Lj2998
Lj2999:
Lj2998:
	movl	12(%ebp),%edx
	movl	12(%ebp),%eax
	call	L_DBF_COMMON_SWAPINT64LE$POINTER$POINTER$stub
Lj2997:
	jmp	Lj2906
Lj2913:
	movl	-12(%ebp),%eax
	movzbl	120(%eax),%eax
	cmpl	$5,%eax
	je	Lj3012
	cmpl	$7,%eax
	je	Lj3012
Lj3012:
	je	Lj3010
	jmp	Lj3011
Lj3010:
	movl	16(%ebp),%eax
	testl	%eax,%eax
	je	Lj3013
	jmp	Lj3014
Lj3013:
	movl	12(%ebp),%eax
	fldz
	fstpl	(%eax)
	jmp	Lj3017
Lj3014:
	movl	12(%ebp),%edx
	movl	16(%ebp),%eax
	call	L_DBF_COMMON_SWAPINT64LE$POINTER$POINTER$stub
Lj3017:
	jmp	Lj3022
Lj3011:
	movb	$1,-69(%ebp)
Lj3022:
	jmp	Lj2906
Lj2914:
	movl	-20(%ebp),%eax
	cmpl	$4,%eax
	je	Lj3025
	jmp	Lj3026
Lj3025:
	movl	16(%ebp),%eax
	testl	%eax,%eax
	je	Lj3027
	jmp	Lj3028
Lj3027:
	movl	12(%ebp),%eax
	movl	$0,(%eax)
	jmp	Lj3031
Lj3028:
	movl	16(%ebp),%eax
	movl	(%eax),%eax
	call	L_DBF_COMMON_SWAPINTLE$LONGWORD$$LONGWORD$stub
	movl	12(%ebp),%edx
	movl	%eax,(%edx)
Lj3031:
	jmp	Lj3036
Lj3026:
	movb	$1,-69(%ebp)
Lj3036:
	jmp	Lj2906
Lj2915:
	movl	16(%ebp),%eax
	movzwl	(%eax),%eax
	movl	%eax,-32(%ebp)
	movl	-32(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jg	Lj3041
	jmp	Lj3042
Lj3041:
	movl	-20(%ebp),%eax
	movl	%eax,-32(%ebp)
Lj3042:
	movl	-32(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jl	Lj3045
	jmp	Lj3046
Lj3045:
	movl	-28(%ebp),%eax
	movl	60(%eax),%edx
	movl	12(%ebp),%eax
	addl	%eax,%edx
	decl	%edx
	movb	-32(%ebp),%al
	movb	%al,(%edx)
	movb	$1,(%esp)
	movb	$1,4(%esp)
	movl	-28(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DBF_DBFFILE_TDBFFILE_$__UPDATENULLFIELD$POINTER$TDBFFIELDDEF$TUPDATENULLFIELD$TNULLFIELDFLAG$stub
	jmp	Lj3059
Lj3046:
	movb	$1,(%esp)
	movb	$0,4(%esp)
	movl	-28(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DBF_DBFFILE_TDBFFILE_$__UPDATENULLFIELD$POINTER$TDBFFIELDDEF$TUPDATENULLFIELD$TNULLFIELDFLAG$stub
Lj3059:
	movl	16(%ebp),%eax
	addl	$2,%eax
	movl	12(%ebp),%edx
	movl	-32(%ebp),%ecx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movl	-32(%ebp),%eax
	cmpl	-20(%ebp),%eax
	je	Lj3076
	jmp	Lj3077
Lj3076:
	movl	12(%ebp),%eax
	movl	-32(%ebp),%edx
	addl	%edx,%eax
	movl	-20(%ebp),%edx
	movl	-32(%ebp),%ecx
	subl	%ecx,%edx
	movb	$32,%cl
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$CHAR$stub
	jmp	Lj3084
Lj3077:
	movl	-20(%ebp),%edx
	movl	-32(%ebp),%eax
	subl	%eax,%edx
	decl	%edx
	movl	12(%ebp),%eax
	movl	-32(%ebp),%ecx
	addl	%ecx,%eax
	movb	$32,%cl
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$CHAR$stub
Lj3084:
	jmp	Lj2906
Lj2916:
	movl	16(%ebp),%eax
	call	LFPC_PCHAR_LENGTH$stub
	movl	%eax,-32(%ebp)
	movl	-32(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jg	Lj3095
	jmp	Lj3096
Lj3095:
	movl	-20(%ebp),%eax
	movl	%eax,-32(%ebp)
Lj3096:
	movl	-32(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jl	Lj3099
	jmp	Lj3100
Lj3099:
	movl	-28(%ebp),%eax
	movl	60(%eax),%edx
	movl	12(%ebp),%eax
	addl	%eax,%edx
	decl	%edx
	movb	-32(%ebp),%al
	movb	%al,(%edx)
	movb	$1,(%esp)
	movb	$1,4(%esp)
	movl	-28(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DBF_DBFFILE_TDBFFILE_$__UPDATENULLFIELD$POINTER$TDBFFIELDDEF$TUPDATENULLFIELD$TNULLFIELDFLAG$stub
	jmp	Lj3113
Lj3100:
	movb	$1,(%esp)
	movb	$0,4(%esp)
	movl	-28(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DBF_DBFFILE_TDBFFILE_$__UPDATENULLFIELD$POINTER$TDBFFIELDDEF$TUPDATENULLFIELD$TNULLFIELDFLAG$stub
Lj3113:
	movl	12(%ebp),%edx
	movl	16(%ebp),%eax
	movl	-32(%ebp),%ecx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movl	-32(%ebp),%eax
	cmpl	-20(%ebp),%eax
	je	Lj3130
	jmp	Lj3131
Lj3130:
	movl	12(%ebp),%eax
	movl	-32(%ebp),%edx
	addl	%edx,%eax
	movl	-20(%ebp),%edx
	movl	-32(%ebp),%ecx
	subl	%ecx,%edx
	movb	$32,%cl
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$CHAR$stub
	jmp	Lj3138
Lj3131:
	movl	-20(%ebp),%edx
	movl	-32(%ebp),%eax
	subl	%eax,%edx
	decl	%edx
	movl	12(%ebp),%eax
	movl	-32(%ebp),%ecx
	addl	%ecx,%eax
	movb	$32,%cl
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$CHAR$stub
Lj3138:
	jmp	Lj2906
Lj2907:
	movb	$1,-69(%ebp)
Lj2906:
	cmpb	$0,-69(%ebp)
	jne	Lj3147
	jmp	Lj3148
Lj3147:
	movl	16(%ebp),%eax
	testl	%eax,%eax
	je	Lj3149
	jmp	Lj3150
Lj3149:
	movl	12(%ebp),%eax
	movl	-20(%ebp),%edx
	movb	$32,%cl
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$CHAR$stub
	jmp	Lj3157
Lj3150:
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	jb	Lj3159
	decl	%eax
	je	Lj3166
	decl	%eax
	je	Lj3161
	decl	%eax
	je	Lj3164
	subl	$2,%eax
	je	Lj3160
	decl	%eax
	jb	Lj3159
	subl	$1,%eax
	jbe	Lj3163
	subl	$2,%eax
	je	Lj3165
	subl	$2,%eax
	je	Lj3165
	subl	$14,%eax
	je	Lj3162
	jmp	Lj3159
Lj3160:
	movl	16(%ebp),%eax
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj3167
	jmp	Lj3168
Lj3167:
	movl	12(%ebp),%eax
	movb	$84,(%eax)
	jmp	Lj3171
Lj3168:
	movl	12(%ebp),%eax
	movb	$70,(%eax)
Lj3171:
	jmp	Lj3158
Lj3161:
	movb	$32,(%esp)
	movl	16(%ebp),%eax
	movswl	(%eax),%eax
	movl	12(%ebp),%ecx
	movl	-20(%ebp),%edx
	call	L_DBF_PRSSUPP_GETSTRFROMINT_WIDTH$LONGINT$LONGINT$PCHAR$CHAR$stub
	jmp	Lj3158
Lj3162:
	movl	16(%ebp),%edx
	movl	4(%edx),%eax
	movl	%eax,4(%esp)
	movl	(%edx),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%edx
	movl	-20(%ebp),%eax
	movb	$32,%cl
	call	L_DBF_PRSSUPP_GETSTRFROMINT64_WIDTH$INT64$LONGINT$PCHAR$CHAR$stub
	jmp	Lj3158
Lj3163:
	movl	16(%ebp),%eax
	fldl	(%eax)
	fstpt	(%esp)
	movl	12(%ebp),%ecx
	movl	-24(%ebp),%edx
	movl	-20(%ebp),%eax
	call	L_DBF_DBFFILE_FLOATTODBFSTR$EXTENDED$LONGINT$LONGINT$PCHAR$stub
	jmp	Lj3158
Lj3164:
	movl	-28(%ebp),%eax
	call	L_DBF_FIELDS_TDBFFIELDDEF_$__ISBLOB$$BOOLEAN$stub
	movzbl	%al,%eax
	movl	L_TC_DBF_DBFFILE_TDBFFILE_$_SETFIELDDATA$crcD3565DC4_ISBLOBFIELDTOPADCHAR$non_lazy_ptr-Lj2874(%ebx),%edx
	movb	(%edx,%eax,1),%al
	movb	%al,(%esp)
	movl	16(%ebp),%eax
	movl	(%eax),%eax
	movl	12(%ebp),%ecx
	movl	-20(%ebp),%edx
	call	L_DBF_PRSSUPP_GETSTRFROMINT_WIDTH$LONGINT$LONGINT$PCHAR$CHAR$stub
	jmp	Lj3158
Lj3165:
	movl	%ebp,%eax
	call	L_DBF_DBFFILE_TDBFFILE_$_SETFIELDDATA$crcD3565DC4_LOADDATEFROMSRC$stub
	movl	-60(%ebp),%eax
	movl	%eax,(%esp)
	movl	-56(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-42(%ebp),%ecx
	leal	-40(%ebp),%edx
	leal	-38(%ebp),%eax
	call	L_SYSUTILS_DECODEDATE$TDATETIME$WORD$WORD$WORD$stub
	movb	$48,(%esp)
	movl	12(%ebp),%ecx
	movzwl	-38(%ebp),%eax
	movl	$4,%edx
	call	L_DBF_PRSSUPP_GETSTRFROMINT_WIDTH$LONGINT$LONGINT$PCHAR$CHAR$stub
	movb	$48,(%esp)
	movl	12(%ebp),%ecx
	addl	$4,%ecx
	movzwl	-40(%ebp),%eax
	movl	$2,%edx
	call	L_DBF_PRSSUPP_GETSTRFROMINT_WIDTH$LONGINT$LONGINT$PCHAR$CHAR$stub
	movb	$48,(%esp)
	movl	12(%ebp),%ecx
	addl	$6,%ecx
	movzwl	-42(%ebp),%eax
	movl	$2,%edx
	call	L_DBF_PRSSUPP_GETSTRFROMINT_WIDTH$LONGINT$LONGINT$PCHAR$CHAR$stub
	movl	-8(%ebp),%eax
	cmpl	$11,%eax
	je	Lj3242
	jmp	Lj3243
Lj3242:
	leal	-50(%ebp),%eax
	movl	%eax,(%esp)
	movl	-60(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-56(%ebp),%eax
	movl	%eax,8(%esp)
	leal	-48(%ebp),%ecx
	leal	-46(%ebp),%edx
	leal	-44(%ebp),%eax
	call	L_SYSUTILS_DECODETIME$TDATETIME$WORD$WORD$WORD$WORD$stub
	movb	$48,(%esp)
	movl	12(%ebp),%ecx
	addl	$8,%ecx
	movzwl	-44(%ebp),%eax
	movl	$2,%edx
	call	L_DBF_PRSSUPP_GETSTRFROMINT_WIDTH$LONGINT$LONGINT$PCHAR$CHAR$stub
	movb	$48,(%esp)
	movl	12(%ebp),%ecx
	addl	$10,%ecx
	movzwl	-46(%ebp),%eax
	movl	$2,%edx
	call	L_DBF_PRSSUPP_GETSTRFROMINT_WIDTH$LONGINT$LONGINT$PCHAR$CHAR$stub
	movb	$48,(%esp)
	movl	12(%ebp),%ecx
	addl	$12,%ecx
	movzwl	-48(%ebp),%eax
	movl	$2,%edx
	call	L_DBF_PRSSUPP_GETSTRFROMINT_WIDTH$LONGINT$LONGINT$PCHAR$CHAR$stub
Lj3243:
	jmp	Lj3158
Lj3166:
	movl	16(%ebp),%eax
	call	LFPC_PCHAR_LENGTH$stub
	movl	%eax,-32(%ebp)
	movl	-32(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jg	Lj3282
	jmp	Lj3283
Lj3282:
	movl	-20(%ebp),%eax
	movl	%eax,-32(%ebp)
Lj3283:
	movl	12(%ebp),%edx
	movl	16(%ebp),%eax
	movl	-32(%ebp),%ecx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movl	12(%ebp),%eax
	movl	-32(%ebp),%edx
	addl	%edx,%eax
	movl	-20(%ebp),%edx
	movl	-32(%ebp),%ecx
	subl	%ecx,%edx
	movb	$32,%cl
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$CHAR$stub
	jmp	Lj3158
Lj3159:
Lj3158:
Lj3157:
Lj3148:
	movl	-92(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_DBFFILE_TDBFFILE_$_SETFIELDDATA$crcD3565DC4_LOADDATEFROMSRC
_DBF_DBFFILE_TDBFFILE_$_SETFIELDDATA$crcD3565DC4_LOADDATEFROMSRC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movb	8(%eax),%al
	testb	%al,%al
	je	Lj3298
	jmp	Lj3299
Lj3298:
	movl	-4(%ebp),%eax
	movl	16(%eax),%edx
	movl	-4(%ebp),%ecx
	movl	(%edx),%eax
	movl	%eax,-60(%ecx)
	movl	4(%edx),%eax
	movl	%eax,-56(%ecx)
	jmp	Lj3302
Lj3299:
	movl	-4(%ebp),%eax
	movl	-8(%eax),%eax
	cmpl	$11,%eax
	je	Lj3303
	jmp	Lj3304
Lj3303:
	movl	-4(%ebp),%eax
	movl	16(%eax),%edx
	movl	-4(%ebp),%ecx
	movl	(%edx),%eax
	movl	%eax,-60(%ecx)
	movl	4(%edx),%eax
	movl	%eax,-56(%ecx)
	jmp	Lj3307
Lj3304:
	movl	-4(%ebp),%eax
	movl	$0,-68(%eax)
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movl	-4(%ebp),%edx
	movl	(%eax),%eax
	movl	%eax,-64(%edx)
	movl	-4(%ebp),%eax
	leal	-68(%eax),%eax
	call	L_SYSUTILS_TIMESTAMPTODATETIME$TTIMESTAMP$$TDATETIME$stub
	movl	-4(%ebp),%eax
	fstpl	-60(%eax)
Lj3307:
Lj3302:
	leave
	ret

.text
	.align 4
.globl	_DBF_DBFFILE_TDBFFILE_$__INITDEFAULTBUFFER
_DBF_DBFFILE_TDBFFILE_$__INITDEFAULTBUFFER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-28(%ebp)
	movl	%esi,-24(%ebp)
	movl	%edi,-20(%ebp)
	call	Lj3317
Lj3317:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	40(%eax),%eax
	movzwl	10(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%edx
	incl	%edx
	movl	-4(%ebp),%eax
	leal	128(%eax),%eax
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	movl	-4(%ebp),%eax
	movl	128(%eax),%eax
	movl	-8(%ebp),%edx
	movb	$32,%cl
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$CHAR$stub
	movl	-4(%ebp),%eax
	movl	168(%eax),%eax
	testl	%eax,%eax
	jne	Lj3330
	jmp	Lj3331
Lj3330:
	movl	-4(%ebp),%eax
	movl	168(%eax),%eax
	movl	-4(%ebp),%edx
	movl	80(%eax),%eax
	movl	128(%edx),%edx
	addl	%edx,%eax
	movl	-4(%ebp),%edx
	movl	168(%edx),%edx
	movl	60(%edx),%edx
	movb	$255,%cl
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$BYTE$stub
Lj3331:
	movl	-4(%ebp),%eax
	movl	104(%eax),%eax
	call	L_CLASSES_TCOLLECTION_$__GETCOUNT$$LONGINT$stub
	decl	%eax
	movl	%eax,%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj3339
	decl	-16(%ebp)
	.align 2
Lj3340:
	incl	-16(%ebp)
	movl	-4(%ebp),%eax
	movl	104(%eax),%eax
	movl	-16(%ebp),%edx
	call	L_DBF_FIELDS_TDBFFIELDDEFS_$__GETITEM$LONGINT$$TDBFFIELDDEF$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movzbl	44(%eax),%eax
	movl	L_$DBF_DBFFILE$_Ld18$non_lazy_ptr-Lj3317(%esi),%edx
	btl	%eax,(%edx)
	jc	Lj3349
	jmp	Lj3351
Lj3351:
	movl	-12(%ebp),%eax
	movb	44(%eax),%al
	cmpb	$77,%al
	je	Lj3352
	jmp	Lj3350
Lj3352:
	movl	-12(%ebp),%eax
	movl	60(%eax),%eax
	cmpl	$4,%eax
	je	Lj3349
	jmp	Lj3350
Lj3349:
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	128(%eax),%eax
	movl	80(%edx),%edx
	addl	%edx,%eax
	movl	-12(%ebp),%edx
	movl	60(%edx),%edx
	movb	$0,%cl
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$BYTE$stub
Lj3350:
	movl	-12(%ebp),%eax
	cmpb	$0,68(%eax)
	jne	Lj3359
	jmp	Lj3360
Lj3359:
	movl	-4(%ebp),%eax
	movl	128(%eax),%edx
	movl	-12(%ebp),%eax
	movl	80(%eax),%eax
	leal	(%edx,%eax,1),%edx
	movl	-12(%ebp),%eax
	movl	48(%eax),%eax
	movl	-12(%ebp),%ecx
	movl	60(%ecx),%ecx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movl	-4(%ebp),%eax
	movl	168(%eax),%eax
	testl	%eax,%eax
	jne	Lj3367
	jmp	Lj3368
Lj3367:
	movb	$0,(%esp)
	movb	$0,4(%esp)
	movl	-4(%ebp),%eax
	movl	128(%eax),%edx
	movl	-12(%ebp),%ecx
	movl	-4(%ebp),%eax
	call	L_DBF_DBFFILE_TDBFFILE_$__UPDATENULLFIELD$POINTER$TDBFFIELDDEF$TUPDATENULLFIELD$TNULLFIELDFLAG$stub
Lj3368:
	movl	-12(%ebp),%eax
	movl	40(%eax),%eax
	cmpl	$0,%eax
	jge	Lj3379
	jmp	Lj3380
Lj3379:
	movl	-4(%ebp),%eax
	movl	128(%eax),%eax
	call	LFPC_PCHAR_LENGTH$stub
	movl	-12(%ebp),%edx
	cmpl	60(%edx),%eax
	jge	Lj3381
	jmp	Lj3382
Lj3381:
	movb	$1,(%esp)
	movb	$0,4(%esp)
	movl	-4(%ebp),%eax
	movl	128(%eax),%edx
	movl	-12(%ebp),%ecx
	movl	-4(%ebp),%eax
	call	L_DBF_DBFFILE_TDBFFILE_$__UPDATENULLFIELD$POINTER$TDBFFIELDDEF$TUPDATENULLFIELD$TNULLFIELDFLAG$stub
	jmp	Lj3395
Lj3382:
	movb	$1,(%esp)
	movb	$1,4(%esp)
	movl	-4(%ebp),%eax
	movl	128(%eax),%edx
	movl	-12(%ebp),%ecx
	movl	-4(%ebp),%eax
	call	L_DBF_DBFFILE_TDBFFILE_$__UPDATENULLFIELD$POINTER$TDBFFIELDDEF$TUPDATENULLFIELD$TNULLFIELDFLAG$stub
	movl	-4(%ebp),%eax
	movl	128(%eax),%eax
	call	LFPC_PCHAR_LENGTH$stub
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%edi
	movl	128(%edx),%ecx
	movl	60(%edi),%edx
	addl	%edx,%ecx
	movb	%al,(%ecx)
Lj3395:
Lj3380:
Lj3360:
	cmpl	-16(%ebp),%ebx
	jg	Lj3340
Lj3339:
	movl	-28(%ebp),%ebx
	movl	-24(%ebp),%esi
	movl	-20(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_DBF_DBFFILE_TDBFFILE_$__INITRECORD$PCHAR
_DBF_DBFFILE_TDBFFILE_$__INITRECORD$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	128(%eax),%eax
	testl	%eax,%eax
	je	Lj3412
	jmp	Lj3413
Lj3412:
	movl	-8(%ebp),%eax
	call	L_DBF_DBFFILE_TDBFFILE_$__INITDEFAULTBUFFER$stub
Lj3413:
	movl	-8(%ebp),%eax
	movl	128(%eax),%eax
	movl	-8(%ebp),%edx
	movl	16(%edx),%ecx
	movl	-4(%ebp),%edx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	leave
	ret

.text
	.align 4
.globl	_DBF_DBFFILE_TDBFFILE_$__APPLYAUTOINCTOBUFFER$PCHAR
_DBF_DBFFILE_TDBFFILE_$__APPLYAUTOINCTOBUFFER$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-28(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpb	$0,172(%eax)
	jne	Lj3424
	jmp	Lj3425
Lj3424:
	movl	-8(%ebp),%eax
	cmpb	$0,52(%eax)
	jne	Lj3426
	jmp	Lj3427
Lj3426:
	movl	-8(%ebp),%eax
	movb	$1,%cl
	movl	$0,%edx
	call	L_DBF_PGFILE_TPAGEDFILE_$__LOCKPAGE$LONGINT$BOOLEAN$$BOOLEAN$stub
Lj3427:
	movl	-8(%ebp),%eax
	movl	104(%eax),%eax
	call	L_CLASSES_TCOLLECTION_$__GETCOUNT$$LONGINT$stub
	movl	%eax,%ebx
	decl	%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jb	Lj3435
	decl	-16(%ebp)
	.align 2
Lj3436:
	incl	-16(%ebp)
	movl	-8(%ebp),%eax
	movl	104(%eax),%eax
	movl	-16(%ebp),%edx
	call	L_DBF_FIELDS_TDBFFIELDDEFS_$__GETITEM$LONGINT$$TDBFFIELDDEF$stub
	movl	%eax,-12(%ebp)
	movl	-8(%ebp),%eax
	movb	120(%eax),%al
	cmpb	$6,%al
	je	Lj3447
	jmp	Lj3446
Lj3447:
	movl	-12(%ebp),%eax
	movb	44(%eax),%al
	cmpb	$43,%al
	je	Lj3445
	jmp	Lj3446
Lj3445:
	movl	$48,%eax
	mull	-16(%ebp)
	addl	$110,%eax
	movl	%eax,-24(%ebp)
	movl	-8(%ebp),%eax
	cmpb	$0,52(%eax)
	jne	Lj3450
	jmp	Lj3451
Lj3450:
	movl	-24(%ebp),%eax
	movl	%eax,(%esp)
	leal	-20(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$4,%ecx
	call	L_DBF_PGFILE_TPAGEDFILE_$__READBLOCK$POINTER$LONGINT$LONGINT$$LONGINT$stub
	movl	-20(%ebp),%eax
	call	L_DBF_COMMON_SWAPINTLE$LONGWORD$$LONGWORD$stub
	movl	%eax,-20(%ebp)
	jmp	Lj3464
Lj3451:
	movl	-12(%ebp),%eax
	movl	84(%eax),%eax
	movl	%eax,-20(%ebp)
Lj3464:
	movl	-20(%ebp),%eax
	orl	$-2147483648,%eax
	call	L_DBF_COMMON_SWAPINTBE$LONGWORD$$LONGWORD$stub
	movl	-12(%ebp),%edx
	movl	80(%edx),%ecx
	movl	-4(%ebp),%edx
	addl	%edx,%ecx
	movl	%eax,(%ecx)
	incl	-20(%ebp)
	movl	-12(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	%edx,84(%eax)
	movl	-20(%ebp),%eax
	call	L_DBF_COMMON_SWAPINTLE$LONGWORD$$LONGWORD$stub
	movl	-8(%ebp),%edx
	movl	40(%edx),%edx
	movl	-24(%ebp),%ecx
	addl	%ecx,%edx
	movl	%eax,(%edx)
	jmp	Lj3477
Lj3446:
	movl	-8(%ebp),%eax
	movb	120(%eax),%al
	cmpb	$7,%al
	je	Lj3480
	jmp	Lj3479
Lj3480:
	movl	-12(%ebp),%eax
	movl	24(%eax),%eax
	testl	%eax,%eax
	jne	Lj3478
	jmp	Lj3479
Lj3478:
	movl	-12(%ebp),%eax
	movl	84(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	call	L_DBF_COMMON_SWAPINTBE$LONGWORD$$LONGWORD$stub
	movl	-12(%ebp),%edx
	movl	80(%edx),%edx
	movl	-4(%ebp),%ecx
	addl	%ecx,%edx
	movl	%eax,(%edx)
	movl	-12(%ebp),%eax
	movl	24(%eax),%eax
	movl	-20(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-20(%ebp)
	movl	-12(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	%eax,84(%edx)
Lj3479:
Lj3477:
	cmpl	-16(%ebp),%ebx
	ja	Lj3436
Lj3435:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*148(%edx)
	movl	-8(%ebp),%eax
	cmpb	$0,52(%eax)
	jne	Lj3493
	jmp	Lj3494
Lj3493:
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_DBF_PGFILE_TPAGEDFILE_$__UNLOCKPAGE$LONGINT$stub
Lj3494:
Lj3425:
	movl	-28(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_DBFFILE_TDBFFILE_$__TRYEXCLUSIVE
_DBF_DBFFILE_TDBFFILE_$__TRYEXCLUSIVE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_DBF_PGFILE_TPAGEDFILE_$__TRYEXCLUSIVE$stub
	movl	-4(%ebp),%eax
	movzbl	48(%eax),%eax
	decl	%eax
	cmpl	$4,%eax
	jb	Lj3505
Lj3505:
	jc	Lj3503
	jmp	Lj3504
Lj3503:
	movl	-4(%ebp),%eax
	movl	112(%eax),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	movl	%eax,%ebx
	decl	%ebx
	movl	$0,-8(%ebp)
	cmpl	-8(%ebp),%ebx
	jl	Lj3507
	decl	-8(%ebp)
	.align 2
Lj3508:
	incl	-8(%ebp)
	movl	-4(%ebp),%eax
	movl	112(%eax),%eax
	movl	-8(%ebp),%edx
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,%esi
	movl	%esi,%eax
	movl	%esi,%edx
	movl	(%edx),%edx
	call	*132(%edx)
	cmpl	-8(%ebp),%ebx
	jg	Lj3508
Lj3507:
	movl	-4(%ebp),%eax
	movl	96(%eax),%eax
	testl	%eax,%eax
	jne	Lj3519
	jmp	Lj3520
Lj3519:
	movl	-4(%ebp),%eax
	movl	96(%eax),%eax
	movl	-4(%ebp),%edx
	movl	96(%edx),%edx
	movl	(%edx),%edx
	call	*132(%edx)
Lj3520:
Lj3504:
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DBF_DBFFILE_TDBFFILE_$__ENDEXCLUSIVE
_DBF_DBFFILE_TDBFFILE_$__ENDEXCLUSIVE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	112(%eax),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	movl	%eax,%ebx
	decl	%ebx
	movl	$0,-8(%ebp)
	cmpl	-8(%ebp),%ebx
	jl	Lj3526
	decl	-8(%ebp)
	.align 2
Lj3527:
	incl	-8(%ebp)
	movl	-4(%ebp),%eax
	movl	112(%eax),%eax
	movl	-8(%ebp),%edx
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,%esi
	movl	%esi,%eax
	movl	%esi,%edx
	movl	(%edx),%edx
	call	*136(%edx)
	cmpl	-8(%ebp),%ebx
	jg	Lj3527
Lj3526:
	movl	-4(%ebp),%eax
	movl	96(%eax),%eax
	testl	%eax,%eax
	jne	Lj3538
	jmp	Lj3539
Lj3538:
	movl	-4(%ebp),%eax
	movl	96(%eax),%eax
	movl	-4(%ebp),%edx
	movl	96(%edx),%edx
	movl	(%edx),%edx
	call	*136(%edx)
Lj3539:
	movl	-4(%ebp),%eax
	call	L_DBF_PGFILE_TPAGEDFILE_$__ENDEXCLUSIVE$stub
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DBF_DBFFILE_TDBFFILE_$__OPENINDEX$ANSISTRING$ANSISTRING$BOOLEAN$TINDEXOPTIONS
_DBF_DBFFILE_TDBFFILE_$__OPENINDEX$ANSISTRING$ANSISTRING$BOOLEAN$TINDEXOPTIONS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$216,%esp
	movl	%ebx,-208(%ebp)
	movl	%esi,-204(%ebp)
	call	Lj3545
Lj3545:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	$0,-20(%ebp)
	movl	$0,-76(%ebp)
	leal	-44(%ebp),%ecx
	leal	-68(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-72(%ebp)
	testl	%eax,%eax
	jne	Lj3546
	movl	$-1,-28(%ebp)
	movl	$-1,-32(%ebp)
	movb	$0,-21(%ebp)
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DBF_DBFFILE_TDBFFILE_$__GETINDEXBYNAME$ANSISTRING$$TINDEXFILE$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj3564
	jmp	Lj3562
Lj3564:
	movl	-12(%ebp),%eax
	movl	92(%eax),%eax
	cmpl	-16(%ebp),%eax
	je	Lj3563
	jmp	Lj3562
Lj3563:
	cmpb	$0,12(%ebp)
	jne	Lj3561
	jmp	Lj3562
Lj3561:
	movl	-12(%ebp),%eax
	movl	92(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_DBF_IDXFILE_TINDEXFILE_$__DELETEINDEX$ANSISTRING$stub
	movl	$0,-16(%ebp)
Lj3562:
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj3573
	jmp	Lj3572
Lj3573:
	movl	L_TC_SYSUTILS_EMPTYSTR$non_lazy_ptr-Lj3545(%ebx),%eax
	movl	(%eax),%edx
	movl	-4(%ebp),%eax
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	jne	Lj3571
	jmp	Lj3572
Lj3571:
	leal	-76(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-76(%ebp)
	leal	-76(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SYSUTILS_EXTRACTFILEEXT$ANSISTRING$$ANSISTRING$stub
	movl	-76(%ebp),%eax
	testl	%eax,%eax
	je	Lj3584
	movl	-4(%eax),%eax
Lj3584:
	testl	%eax,%eax
	je	Lj3578
	jmp	Lj3579
Lj3578:
	movl	-12(%ebp),%eax
	movl	92(%eax),%eax
	testl	%eax,%eax
	jne	Lj3585
	jmp	Lj3586
Lj3585:
	movl	L_TC_SYSUTILS_EMPTYSTR$non_lazy_ptr-Lj3545(%ebx),%edx
	movl	(%edx),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-20(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	L_TC_SYSUTILS_EMPTYSTR$non_lazy_ptr-Lj3545(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-12(%ebp),%eax
	movl	92(%eax),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj3591
Lj3586:
	movl	-12(%ebp),%eax
	movl	56(%eax),%eax
	leal	-20(%ebp),%ecx
	movl	L_$DBF_DBFFILE$_Ld1$non_lazy_ptr-Lj3545(%ebx),%edx
	call	L_SYSUTILS_CHANGEFILEEXT$ANSISTRING$ANSISTRING$$ANSISTRING$stub
	movb	$1,-21(%ebp)
Lj3591:
	jmp	Lj3600
Lj3579:
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-20(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	%eax,-20(%ebp)
Lj3600:
	movl	L_TC_SYSUTILS_EMPTYSTR$non_lazy_ptr-Lj3545(%ebx),%eax
	movl	(%eax),%edx
	movl	-20(%ebp),%eax
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	jne	Lj3603
	jmp	Lj3604
Lj3603:
	movl	-12(%ebp),%ecx
	movl	L_VMT_DBF_IDXFILE_TINDEXFILE$non_lazy_ptr-Lj3545(%ebx),%edx
	movl	$0,%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__CREATE$POINTER$$TINDEXFILE$stub
	movl	%eax,-16(%ebp)
	movl	-20(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_DBF_PGFILE_TPAGEDFILE_$__SETFILENAME$ANSISTRING$stub
	movzbl	12(%ebp),%eax
	imull	$7,%eax
	movl	-12(%ebp),%edx
	movzbl	48(%edx),%ecx
	movl	-16(%ebp),%esi
	movl	L_TC_DBF_DBFFILE_TDBFFILE_$_OPENINDEX$crc1FB9AA30_INDEXOPENMODE$non_lazy_ptr-Lj3545(%ebx),%edx
	leal	(%eax,%edx),%edx
	movb	-1(%edx,%ecx,1),%al
	movb	%al,48(%esi)
	movl	-16(%ebp),%edx
	cmpb	$0,12(%ebp)
	jne	Lj3623
	jmp	Lj3625
Lj3625:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj3626
	movl	-4(%eax),%eax
Lj3626:
	cmpl	$0,%eax
	jg	Lj3623
	jmp	Lj3624
Lj3623:
	movb	$1,51(%edx)
	jmp	Lj3627
Lj3624:
	movb	$0,51(%edx)
Lj3627:
	movl	-12(%ebp),%eax
	movzbl	48(%eax),%eax
	decl	%eax
	cmpl	$2,%eax
	jb	Lj3630
Lj3630:
	jc	Lj3628
	jmp	Lj3629
Lj3628:
	movl	-12(%ebp),%eax
	movl	116(%eax),%eax
	testl	%eax,%eax
	je	Lj3631
	jmp	Lj3632
Lj3631:
	movl	L_VMT_CLASSES_TMEMORYSTREAM$non_lazy_ptr-Lj3545(%ebx),%edx
	movl	$0,%eax
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	-12(%ebp),%edx
	movl	%eax,116(%edx)
Lj3632:
	movl	-12(%ebp),%eax
	movl	116(%eax),%edx
	movl	-16(%ebp),%eax
	call	L_DBF_PGFILE_TPAGEDFILE_$__SETSTREAM$TSTREAM$stub
Lj3629:
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	144(%eax),%eax
	movl	%eax,1316(%edx)
	movl	-16(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	176(%eax),%edx
	movl	%edx,1332(%ecx)
	movl	180(%eax),%eax
	movl	%eax,1336(%ecx)
	movl	-16(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__OPEN$stub
	movl	-16(%ebp),%eax
	movb	1312(%eax),%al
	testb	%al,%al
	je	Lj3649
	jmp	Lj3650
Lj3649:
	movl	-16(%ebp),%eax
	call	L_DBF_PGFILE_TPAGEDFILE_$__FILECREATED$$BOOLEAN$stub
	movb	%al,12(%ebp)
	cmpb	$0,12(%ebp)
	jne	Lj3657
	jmp	Lj3656
Lj3657:
	movl	L_TC_SYSUTILS_EMPTYSTR$non_lazy_ptr-Lj3545(%ebx),%eax
	movl	(%eax),%edx
	movl	-8(%ebp),%eax
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	je	Lj3655
	jmp	Lj3656
Lj3655:
	leal	-16(%ebp),%eax
	call	L_DBF_COMMON_FREEANDNIL$formal$stub
	movb	$0,12(%ebp)
	movb	$0,-21(%ebp)
	jmp	Lj3668
Lj3656:
	movl	-12(%ebp),%eax
	movl	112(%eax),%eax
	movl	-16(%ebp),%edx
	call	L_CLASSES_TLIST_$__ADD$POINTER$$LONGINT$stub
	movl	%eax,-28(%ebp)
Lj3668:
	cmpb	$0,-21(%ebp)
	jne	Lj3675
	jmp	Lj3676
Lj3675:
	movl	-12(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	%eax,92(%edx)
Lj3676:
	jmp	Lj3679
Lj3650:
	leal	-16(%ebp),%eax
	call	L_DBF_COMMON_FREEANDNIL$formal$stub
Lj3679:
Lj3604:
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj3682
	jmp	Lj3683
Lj3682:
	movl	-12(%ebp),%eax
	movl	108(%eax),%eax
	movl	-16(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%esi
	movl	108(%esi),%esi
	movl	(%esi),%esi
	call	*168(%esi)
	movl	%eax,-32(%ebp)
Lj3683:
Lj3572:
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj3692
	jmp	Lj3693
Lj3692:
	movb	12(%ebp),%al
	testb	%al,%al
	je	Lj3694
	jmp	Lj3695
Lj3694:
	movl	-12(%ebp),%eax
	movl	92(%eax),%eax
	cmpl	-16(%ebp),%eax
	je	Lj3696
	jmp	Lj3697
Lj3696:
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__INDEXOF$ANSISTRING$$LONGINT$stub
	cmpl	$0,%eax
	setlb	12(%ebp)
Lj3697:
Lj3695:
	cmpb	$0,12(%ebp)
	jne	Lj3704
	jmp	Lj3705
Lj3704:
	movl	-12(%ebp),%eax
	call	L_DBF_PGFILE_TPAGEDFILE_$__ISSHAREDACCESS$$BOOLEAN$stub
	movb	%al,-22(%ebp)
	cmpb	$0,-22(%ebp)
	jne	Lj3710
	jmp	Lj3711
Lj3710:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*132(%edx)
Lj3711:
	leal	-76(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-76(%ebp)
	leal	-76(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	L_U_SYSTEM_WIDESTRINGMANAGER$non_lazy_ptr-Lj3545(%ebx),%ecx
	movl	32(%ecx),%ecx
	call	*%ecx
	movl	-76(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-8(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-76(%ebp),%eax
	movl	%eax,-8(%ebp)
	leal	-88(%ebp),%ecx
	leal	-112(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-116(%ebp)
	testl	%eax,%eax
	jne	Lj3720
	leal	-128(%ebp),%ecx
	leal	-152(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-156(%ebp)
	testl	%eax,%eax
	jne	Lj3726
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__CREATEINDEX$ANSISTRING$ANSISTRING$TINDEXOPTIONS$stub
	movl	-4(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DBF_DBFFILE_TDBFFILE_$__PACKINDEX$TINDEXFILE$ANSISTRING$stub
	movl	-12(%ebp),%eax
	movb	48(%eax),%al
	cmpb	$7,%al
	je	Lj3744
	jmp	Lj3745
Lj3744:
	movl	-16(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	(%edx),%edx
	call	*124(%edx)
	movl	-16(%ebp),%eax
	movb	$7,48(%eax)
	movl	-16(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	(%edx),%edx
	call	*128(%edx)
Lj3745:
	movl	-12(%ebp),%eax
	movl	40(%eax),%eax
	movb	$1,28(%eax)
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*148(%edx)
Lj3726:
	call	LFPC_POPADDRSTACK$stub
	movl	-156(%ebp),%eax
	testl	%eax,%eax
	je	Lj3728
	movl	L_VMT_DBF_COMMON_EDBFERROR$non_lazy_ptr-Lj3545(%ebx),%edx
	movl	%edx,%eax
	call	LFPC_CATCHES$stub
	testl	%eax,%eax
	je	Lj3756
	movl	%eax,-160(%ebp)
	leal	-172(%ebp),%ecx
	leal	-196(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-200(%ebp)
	testl	%eax,%eax
	jne	Lj3757
	movl	-28(%ebp),%eax
	cmpl	$0,%eax
	jge	Lj3759
	jmp	Lj3760
Lj3759:
	movl	-12(%ebp),%eax
	movl	112(%eax),%eax
	movl	-28(%ebp),%edx
	call	L_CLASSES_TLIST_$__DELETE$LONGINT$stub
Lj3760:
	movl	-32(%ebp),%eax
	cmpl	$0,%eax
	jge	Lj3765
	jmp	Lj3766
Lj3765:
	movl	-12(%ebp),%eax
	movl	108(%eax),%eax
	movl	-32(%ebp),%edx
	movl	-12(%ebp),%ecx
	movl	108(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*188(%ecx)
Lj3766:
	movl	-28(%ebp),%eax
	cmpl	$0,%eax
	jge	Lj3771
	jmp	Lj3772
Lj3771:
	movl	-16(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__CLOSE$stub
	movl	-20(%ebp),%eax
	call	L_SYSUTILS_DELETEFILE$ANSISTRING$$BOOLEAN$stub
	movl	-12(%ebp),%eax
	movl	92(%eax),%eax
	cmpl	-16(%ebp),%eax
	je	Lj3777
	jmp	Lj3778
Lj3777:
	movl	-12(%ebp),%eax
	movl	$0,92(%eax)
Lj3778:
	movl	-16(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
Lj3772:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj3757:
	call	LFPC_POPADDRSTACK$stub
	movl	-200(%ebp),%eax
	testl	%eax,%eax
	je	Lj3783
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj3783:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj3728
Lj3756:
	call	LFPC_RERAISE$stub
Lj3728:
Lj3720:
	call	LFPC_POPADDRSTACK$stub
	cmpb	$0,-22(%ebp)
	jne	Lj3784
	jmp	Lj3785
Lj3784:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*136(%edx)
Lj3785:
	movl	-116(%ebp),%eax
	testl	%eax,%eax
	je	Lj3721
	decl	%eax
	testl	%eax,%eax
	je	Lj3722
Lj3722:
	call	LFPC_RERAISE$stub
Lj3721:
Lj3705:
Lj3693:
Lj3546:
	call	LFPC_POPADDRSTACK$stub
	leal	-76(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-76(%ebp)
	leal	-20(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-20(%ebp)
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	leal	-8(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-72(%ebp),%eax
	testl	%eax,%eax
	je	Lj3547
	call	LFPC_RERAISE$stub
Lj3547:
	movl	-208(%ebp),%ebx
	movl	-204(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DBF_DBFFILE_TDBFFILE_$__PACKINDEX$TINDEXFILE$ANSISTRING
_DBF_DBFFILE_TDBFFILE_$__PACKINDEX$TINDEXFILE$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$200,%esp
	movl	%ebx,-200(%ebp)
	movl	%esi,-196(%ebp)
	call	Lj3795
Lj3795:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	$0,-20(%ebp)
	leal	-40(%ebp),%ecx
	leal	-64(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-68(%ebp)
	testl	%eax,%eax
	jne	Lj3796
	movl	-4(%ebp),%eax
	movb	1283(%eax),%al
	movb	%al,-13(%ebp)
	movl	-4(%ebp),%esi
	movl	92(%esi),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-20(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	92(%esi),%eax
	movl	%eax,-20(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj3805
	movl	-4(%eax),%eax
Lj3805:
	cmpl	$0,%eax
	jg	Lj3803
	jmp	Lj3804
Lj3803:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__SETINDEXNAME$ANSISTRING$stub
	movl	-4(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__CLEARINDEX$stub
	movl	-4(%ebp),%eax
	movb	$1,%dl
	call	L_DBF_IDXFILE_TINDEXFILE_$__SETUPDATEMODE$TINDEXUPDATEMODE$stub
	jmp	Lj3816
Lj3804:
	movl	L_TC_SYSUTILS_EMPTYSTR$non_lazy_ptr-Lj3795(%ebx),%eax
	movl	(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__SETINDEXNAME$ANSISTRING$stub
	movl	-4(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__CLEAR$stub
	movl	-4(%ebp),%eax
	movb	$0,%dl
	call	L_DBF_IDXFILE_TINDEXFILE_$__SETUPDATEMODE$TINDEXUPDATEMODE$stub
Lj3816:
	movl	$1,-24(%ebp)
	movl	-12(%ebp),%eax
	call	L_DBF_PGFILE_TPAGEDFILE_$__GETRECORDCOUNT$$LONGINT$stub
	movl	%eax,-28(%ebp)
	leal	-80(%ebp),%ecx
	leal	-104(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-108(%ebp)
	testl	%eax,%eax
	jne	Lj3833
	leal	-120(%ebp),%ecx
	leal	-144(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-148(%ebp)
	testl	%eax,%eax
	jne	Lj3839
	jmp	Lj3844
	.align 2
Lj3843:
	movl	-12(%ebp),%eax
	movl	124(%eax),%ecx
	movl	-24(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%esi
	movl	(%esi),%esi
	call	*140(%esi)
	movl	-12(%ebp),%eax
	movl	124(%eax),%ecx
	movl	-24(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__INSERT$LONGINT$PCHAR$$BOOLEAN$stub
	incl	-24(%ebp)
Lj3844:
	movl	-24(%ebp),%eax
	cmpl	-28(%ebp),%eax
	jle	Lj3843
	jmp	Lj3845
Lj3845:
Lj3839:
	call	LFPC_POPADDRSTACK$stub
	movl	-148(%ebp),%eax
	testl	%eax,%eax
	je	Lj3841
	movl	L_VMT_DBF_COMMON_EDBFERROR$non_lazy_ptr-Lj3795(%ebx),%edx
	movl	%edx,%eax
	call	LFPC_CATCHES$stub
	testl	%eax,%eax
	je	Lj3858
	movl	%eax,-152(%ebp)
	leal	-164(%ebp),%ecx
	leal	-188(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-192(%ebp)
	testl	%eax,%eax
	jne	Lj3859
	movl	-4(%ebp),%eax
	movl	92(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__DELETEINDEX$ANSISTRING$stub
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj3859:
	call	LFPC_POPADDRSTACK$stub
	movl	-192(%ebp),%eax
	testl	%eax,%eax
	je	Lj3865
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj3865:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj3841
Lj3858:
	call	LFPC_RERAISE$stub
Lj3841:
Lj3833:
	call	LFPC_POPADDRSTACK$stub
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*152(%edx)
	movb	-13(%ebp),%dl
	movl	-4(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__SETUPDATEMODE$TINDEXUPDATEMODE$stub
	movl	-20(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__SETINDEXNAME$ANSISTRING$stub
	movl	-108(%ebp),%eax
	testl	%eax,%eax
	je	Lj3834
	decl	%eax
	testl	%eax,%eax
	je	Lj3835
Lj3835:
	call	LFPC_RERAISE$stub
Lj3834:
Lj3796:
	call	LFPC_POPADDRSTACK$stub
	leal	-20(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-20(%ebp)
	leal	-8(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-68(%ebp),%eax
	testl	%eax,%eax
	je	Lj3797
	call	LFPC_RERAISE$stub
Lj3797:
	movl	-200(%ebp),%ebx
	movl	-196(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DBF_DBFFILE_TDBFFILE_$__REPAGEINDEX$ANSISTRING
_DBF_DBFFILE_TDBFFILE_$__REPAGEINDEX$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-56(%ebp)
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
	jne	Lj3884
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj3889
	movl	-4(%eax),%eax
Lj3889:
	testl	%eax,%eax
	je	Lj3887
	jmp	Lj3888
Lj3887:
	movl	-8(%ebp),%eax
	movl	92(%eax),%eax
	testl	%eax,%eax
	jne	Lj3890
	jmp	Lj3891
Lj3890:
	movl	-8(%ebp),%eax
	movl	92(%eax),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__REPAGEFILE$stub
Lj3891:
	jmp	Lj3894
Lj3888:
	movl	-8(%ebp),%eax
	movl	108(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	108(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*200(%ecx)
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jge	Lj3901
	jmp	Lj3902
Lj3901:
	movl	-8(%ebp),%eax
	movl	108(%eax),%eax
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	108(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*132(%ecx)
	movl	%eax,%ebx
	movl	%ebx,%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__REPAGEFILE$stub
Lj3902:
Lj3894:
Lj3884:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj3885
	call	LFPC_RERAISE$stub
Lj3885:
	movl	-56(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_DBFFILE_TDBFFILE_$__COMPACTINDEX$ANSISTRING
_DBF_DBFFILE_TDBFFILE_$__COMPACTINDEX$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-56(%ebp)
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
	jne	Lj3913
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj3918
	movl	-4(%eax),%eax
Lj3918:
	testl	%eax,%eax
	je	Lj3916
	jmp	Lj3917
Lj3916:
	movl	-8(%ebp),%eax
	movl	92(%eax),%eax
	testl	%eax,%eax
	jne	Lj3919
	jmp	Lj3920
Lj3919:
	movl	-8(%ebp),%eax
	movl	92(%eax),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__COMPACTFILE$stub
Lj3920:
	jmp	Lj3923
Lj3917:
	movl	-8(%ebp),%eax
	movl	108(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	108(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*200(%ecx)
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jge	Lj3930
	jmp	Lj3931
Lj3930:
	movl	-8(%ebp),%eax
	movl	108(%eax),%eax
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	108(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*132(%ecx)
	movl	%eax,%ebx
	movl	%ebx,%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__COMPACTFILE$stub
Lj3931:
Lj3923:
Lj3913:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj3914
	call	LFPC_RERAISE$stub
Lj3914:
	movl	-56(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_DBFFILE_TDBFFILE_$__CLOSEINDEX$ANSISTRING
_DBF_DBFFILE_TDBFFILE_$__CLOSEINDEX$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj3942
	movl	-8(%ebp),%eax
	movl	108(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	108(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*200(%ecx)
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jge	Lj3951
	jmp	Lj3952
Lj3951:
	movl	-8(%ebp),%eax
	movl	108(%eax),%eax
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	108(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*132(%ecx)
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%eax
	movl	92(%eax),%eax
	cmpl	-16(%ebp),%eax
	jne	Lj3959
	jmp	Lj3960
Lj3959:
	movl	-16(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-8(%ebp),%eax
	movl	112(%eax),%eax
	movl	-16(%ebp),%edx
	call	L_CLASSES_TLIST_$__REMOVE$POINTER$$LONGINT$stub
	movl	-8(%ebp),%eax
	movl	108(%eax),%eax
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	108(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*188(%ecx)
	movl	-8(%ebp),%eax
	movl	156(%eax),%eax
	cmpl	-12(%ebp),%eax
	je	Lj3971
	jmp	Lj3972
Lj3971:
	movl	-8(%ebp),%eax
	movl	$-1,156(%eax)
Lj3972:
Lj3960:
Lj3952:
Lj3942:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj3943
	call	LFPC_RERAISE$stub
Lj3943:
	leave
	ret

.text
	.align 4
.globl	_DBF_DBFFILE_TDBFFILE_$__DELETEINDEX$ANSISTRING$$BOOLEAN
_DBF_DBFFILE_TDBFFILE_$__DELETEINDEX$ANSISTRING$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-68(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,-24(%ebp)
	leal	-36(%ebp),%ecx
	leal	-60(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj3977
	movl	-8(%ebp),%eax
	movl	108(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	108(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*200(%ecx)
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	setgeb	-9(%ebp)
	cmpb	$0,-9(%ebp)
	jne	Lj3988
	jmp	Lj3989
Lj3988:
	movl	-8(%ebp),%eax
	movl	108(%eax),%eax
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	108(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*132(%ecx)
	movl	%eax,-20(%ebp)
	movl	-8(%ebp),%eax
	movl	92(%eax),%eax
	cmpl	-20(%ebp),%eax
	je	Lj3996
	jmp	Lj3997
Lj3996:
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__DELETEINDEX$ANSISTRING$stub
	movl	-8(%ebp),%eax
	movl	108(%eax),%eax
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	108(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*188(%ecx)
	movl	-8(%ebp),%eax
	movl	92(%eax),%edx
	movl	-8(%ebp),%eax
	movl	108(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	108(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*208(%ecx)
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	$-1,%eax
	je	Lj4012
	jmp	Lj4013
Lj4012:
	movl	-8(%ebp),%eax
	movl	92(%eax),%edx
	movl	-8(%ebp),%eax
	movl	112(%eax),%eax
	call	L_CLASSES_TLIST_$__INDEXOF$POINTER$$LONGINT$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jge	Lj4020
	jmp	Lj4021
Lj4020:
	movl	-8(%ebp),%eax
	movl	112(%eax),%eax
	movl	-16(%ebp),%edx
	call	L_CLASSES_TLIST_$__DELETE$LONGINT$stub
Lj4021:
	movl	-8(%ebp),%eax
	movl	92(%eax),%ebx
	movl	56(%ebx),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-24(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	56(%ebx),%eax
	movl	%eax,-24(%ebp)
	movl	-8(%ebp),%eax
	leal	92(%eax),%eax
	call	L_DBF_COMMON_FREEANDNIL$formal$stub
	movl	-24(%ebp),%eax
	call	L_SYSUTILS_DELETEFILE$ANSISTRING$$BOOLEAN$stub
	movl	-8(%ebp),%eax
	movl	40(%eax),%eax
	movb	$0,28(%eax)
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*148(%edx)
Lj4013:
	jmp	Lj4036
Lj3997:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_DBF_DBFFILE_TDBFFILE_$__CLOSEINDEX$ANSISTRING$stub
	movl	-4(%ebp),%eax
	call	L_SYSUTILS_DELETEFILE$ANSISTRING$$BOOLEAN$stub
Lj4036:
Lj3989:
Lj3977:
	call	LFPC_POPADDRSTACK$stub
	leal	-24(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-24(%ebp)
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj3978
	call	LFPC_RERAISE$stub
Lj3978:
	movb	-9(%ebp),%al
	movl	-68(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_DBFFILE_TDBFFILE_$__INSERT$PCHAR$$LONGINT
_DBF_DBFFILE_TDBFFILE_$__INSERT$PCHAR$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-32(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,-12(%ebp)
	movl	-8(%ebp),%eax
	call	L_DBF_PGFILE_TPAGEDFILE_$__GETRECORDCOUNT$$LONGINT$stub
	incl	%eax
	movl	%eax,-16(%ebp)
	jmp	Lj4060
	.align 2
Lj4059:
	incl	-16(%ebp)
Lj4060:
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	movb	$0,%cl
	call	L_DBF_PGFILE_TPAGEDFILE_$__LOCKPAGE$LONGINT$BOOLEAN$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj4061
	jmp	Lj4059
Lj4061:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_DBF_DBFFILE_TDBFFILE_$__APPLYAUTOINCTOBUFFER$PCHAR$stub
	movb	$0,-25(%ebp)
	movl	$0,-24(%ebp)
	jmp	Lj4077
	.align 2
Lj4076:
	movl	-8(%ebp),%eax
	movl	112(%eax),%eax
	movl	-24(%ebp),%edx
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,-20(%ebp)
	movl	-4(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	-20(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__INSERT$LONGINT$PCHAR$$BOOLEAN$stub
	testb	%al,%al
	je	Lj4085
	jmp	Lj4086
Lj4085:
	movb	$1,-25(%ebp)
Lj4086:
	movl	-20(%ebp),%eax
	cmpb	$0,89(%eax)
	jne	Lj4095
	jmp	Lj4096
Lj4095:
	movb	$2,-25(%ebp)
Lj4096:
	movb	-25(%ebp),%al
	testb	%al,%al
	jne	Lj4099
	jmp	Lj4100
Lj4099:
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_DBF_PGFILE_TPAGEDFILE_$__UNLOCKPAGE$LONGINT$stub
	movl	-24(%ebp),%edx
	movl	%ebp,%eax
	movb	$2,%cl
	call	L_DBF_DBFFILE_TDBFFILE_$_INSERT$PCHAR$$LONGINT_ROLLBACKINDEXESANDRAISE$LONGINT$TERRORCONTEXT$stub
Lj4100:
	incl	-24(%ebp)
Lj4077:
	movl	-8(%ebp),%eax
	movl	112(%eax),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	cmpl	-24(%ebp),%eax
	jg	Lj4076
	jmp	Lj4078
Lj4078:
	movl	-8(%ebp),%eax
	movb	$1,%cl
	movl	$0,%edx
	call	L_DBF_PGFILE_TPAGEDFILE_$__LOCKPAGE$LONGINT$BOOLEAN$$BOOLEAN$stub
	movl	-8(%ebp),%eax
	call	L_DBF_PGFILE_TPAGEDFILE_$__READHEADER$stub
	movl	-8(%ebp),%eax
	movl	40(%eax),%eax
	incl	4(%eax)
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*148(%edx)
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_DBF_PGFILE_TPAGEDFILE_$__UNLOCKPAGE$LONGINT$stub
	movl	-8(%ebp),%eax
	cmpb	$0,89(%eax)
	jne	Lj4127
	jmp	Lj4128
Lj4127:
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_DBF_PGFILE_TPAGEDFILE_$__UNLOCKPAGE$LONGINT$stub
	movl	-8(%ebp),%eax
	movl	112(%eax),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	movl	%eax,%edx
	movl	%ebp,%eax
	movb	$3,%cl
	call	L_DBF_DBFFILE_TDBFFILE_$_INSERT$PCHAR$$LONGINT_ROLLBACKINDEXESANDRAISE$LONGINT$TERRORCONTEXT$stub
Lj4128:
	movl	-8(%ebp),%eax
	movl	164(%eax),%eax
	testl	%eax,%eax
	jne	Lj4141
	jmp	Lj4142
Lj4141:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_DBF_DBFFILE_TDBFFILE_$__WRITELOCKINFO$PCHAR$stub
Lj4142:
	movl	-4(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*144(%ebx)
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_DBF_PGFILE_TPAGEDFILE_$__UNLOCKPAGE$LONGINT$stub
	movl	-8(%ebp),%eax
	cmpb	$0,89(%eax)
	jne	Lj4157
	jmp	Lj4158
Lj4157:
	movl	-8(%ebp),%eax
	movb	$1,%cl
	movl	$0,%edx
	call	L_DBF_PGFILE_TPAGEDFILE_$__LOCKPAGE$LONGINT$BOOLEAN$$BOOLEAN$stub
	movl	-8(%ebp),%eax
	call	L_DBF_PGFILE_TPAGEDFILE_$__READHEADER$stub
	movl	-8(%ebp),%eax
	movl	40(%eax),%eax
	decl	4(%eax)
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*148(%edx)
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_DBF_PGFILE_TPAGEDFILE_$__UNLOCKPAGE$LONGINT$stub
	movl	-8(%ebp),%eax
	movl	112(%eax),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	movl	%eax,%edx
	movl	%ebp,%eax
	movb	$3,%cl
	call	L_DBF_DBFFILE_TDBFFILE_$_INSERT$PCHAR$$LONGINT_ROLLBACKINDEXESANDRAISE$LONGINT$TERRORCONTEXT$stub
	jmp	Lj4181
Lj4158:
	movl	-16(%ebp),%eax
	movl	%eax,-12(%ebp)
Lj4181:
	movl	-12(%ebp),%eax
	movl	-32(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_DBFFILE_TDBFFILE_$_INSERT$PCHAR$$LONGINT_ROLLBACKINDEXESANDRAISE$LONGINT$TERRORCONTEXT
_DBF_DBFFILE_TDBFFILE_$_INSERT$PCHAR$$LONGINT_ROLLBACKINDEXESANDRAISE$LONGINT$TERRORCONTEXT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-68(%ebp)
	movl	%esi,-64(%ebp)
	call	Lj4052
Lj4052:
	popl	%esi
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movb	%cl,-8(%ebp)
	movl	$0,-16(%ebp)
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-60(%ebp)
	testl	%eax,%eax
	jne	Lj4184
	movl	-4(%ebp),%ebx
	decl	%ebx
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%ebx
	jl	Lj4188
	decl	-20(%ebp)
	.align 2
Lj4189:
	incl	-20(%ebp)
	movl	-12(%ebp),%eax
	movl	-8(%eax),%eax
	movl	112(%eax),%eax
	movl	-20(%ebp),%edx
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	-12(%ebp),%edx
	movl	%eax,-20(%edx)
	movl	-12(%ebp),%eax
	movl	-4(%eax),%ecx
	movl	-12(%ebp),%eax
	movl	-16(%eax),%edx
	movl	-12(%ebp),%eax
	movl	-20(%eax),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__DELETE$LONGINT$PCHAR$stub
	cmpl	-20(%ebp),%ebx
	jg	Lj4189
Lj4188:
	movl	-12(%ebp),%eax
	movl	-8(%eax),%eax
	call	L_DBF_PGFILE_TPAGEDFILE_$__RESETERROR$stub
	movb	-8(%ebp),%al
	cmpb	$1,%al
	jb	Lj4205
	decb	%al
	je	Lj4206
	decb	%al
	je	Lj4207
	decb	%al
	je	Lj4208
	jmp	Lj4205
Lj4206:
	movl	-12(%ebp),%eax
	movl	-8(%eax),%eax
	movl	112(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,%ebx
	movl	%ebx,%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__INSERTERROR$stub
	jmp	Lj4184
	jmp	Lj4204
Lj4207:
	movl	L_U_DBF_STR_STRING_WRITE_INDEX_ERROR$non_lazy_ptr-Lj4052(%esi),%edx
	movl	(%edx),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-16(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	L_U_DBF_STR_STRING_WRITE_INDEX_ERROR$non_lazy_ptr-Lj4052(%esi),%eax
	movl	(%eax),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj4204
Lj4208:
	movl	L_U_DBF_STR_STRING_WRITE_ERROR$non_lazy_ptr-Lj4052(%esi),%edx
	movl	(%edx),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-16(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	L_U_DBF_STR_STRING_WRITE_ERROR$non_lazy_ptr-Lj4052(%esi),%eax
	movl	(%eax),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj4204
Lj4205:
Lj4204:
	movl	-16(%ebp),%ecx
	movl	L_VMT_DBF_COMMON_EDBFWRITEERROR$non_lazy_ptr-Lj4052(%esi),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La4:
	movl	%ebp,%ecx
	leal	La4-Lj4052(%esi),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj4184:
	call	LFPC_POPADDRSTACK$stub
	leal	-16(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-16(%ebp)
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj4185
	call	LFPC_RERAISE$stub
Lj4185:
	movl	-68(%ebp),%ebx
	movl	-64(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DBF_DBFFILE_TDBFFILE_$__WRITELOCKINFO$PCHAR
_DBF_DBFFILE_TDBFFILE_$__WRITELOCKINFO$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-32(%ebp)
	call	Lj4234
Lj4234:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	164(%eax),%eax
	movl	80(%eax),%eax
	movl	%eax,-28(%ebp)
	movl	-4(%ebp),%eax
	movl	-28(%ebp),%edx
	addl	%edx,%eax
	incw	(%eax)
	call	L_SYSUTILS_NOW$$TDATETIME$stub
	fstpl	(%esp)
	leal	-14(%ebp),%ecx
	leal	-12(%ebp),%edx
	leal	-10(%ebp),%eax
	call	L_SYSUTILS_DECODEDATE$TDATETIME$WORD$WORD$WORD$stub
	leal	-22(%ebp),%eax
	movl	%eax,(%esp)
	call	L_SYSUTILS_NOW$$TDATETIME$stub
	fstpl	4(%esp)
	leal	-20(%ebp),%ecx
	leal	-18(%ebp),%edx
	leal	-16(%ebp),%eax
	call	L_SYSUTILS_DECODETIME$TDATETIME$WORD$WORD$WORD$WORD$stub
	movl	-4(%ebp),%ecx
	movl	-28(%ebp),%eax
	addl	$2,%eax
	movb	-16(%ebp),%dl
	movb	%dl,(%ecx,%eax,1)
	movl	-4(%ebp),%ecx
	movl	-28(%ebp),%eax
	addl	$3,%eax
	movb	-18(%ebp),%dl
	movb	%dl,(%ecx,%eax,1)
	movl	-4(%ebp),%ecx
	movl	-28(%ebp),%eax
	addl	$4,%eax
	movb	-20(%ebp),%dl
	movb	%dl,(%ecx,%eax,1)
	movl	-4(%ebp),%ecx
	movl	-28(%ebp),%eax
	addl	$5,%eax
	movzwl	-10(%ebp),%edx
	subl	$1900,%edx
	movb	%dl,(%ecx,%eax,1)
	movl	-4(%ebp),%ecx
	movl	-28(%ebp),%eax
	addl	$6,%eax
	movb	-12(%ebp),%dl
	movb	%dl,(%ecx,%eax,1)
	movl	-4(%ebp),%ecx
	movl	-28(%ebp),%eax
	addl	$7,%eax
	movb	-14(%ebp),%dl
	movb	%dl,(%ecx,%eax,1)
	movl	-8(%ebp),%eax
	movl	164(%eax),%eax
	movl	60(%eax),%edx
	subl	$8,%edx
	movl	-4(%ebp),%ecx
	movl	-28(%ebp),%eax
	addl	$8,%eax
	leal	(%ecx,%eax,1),%eax
	movb	$32,%cl
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$CHAR$stub
	movl	-4(%ebp),%edx
	movl	-28(%ebp),%eax
	addl	$8,%eax
	leal	(%edx,%eax,1),%edx
	movl	-8(%ebp),%eax
	movl	136(%eax),%ecx
	movl	L_U_DBF_DBFFILE_DBFGLOBALS$non_lazy_ptr-Lj4234(%ebx),%eax
	movl	(%eax),%eax
	movl	20(%eax),%eax
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movl	-32(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_DBFFILE_TDBFFILE_$__LOCKRECORD$LONGINT$PCHAR
_DBF_DBFFILE_TDBFFILE_$__LOCKRECORD$LONGINT$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	call	Lj4280
Lj4280:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movb	$0,%cl
	call	L_DBF_PGFILE_TPAGEDFILE_$__LOCKPAGE$LONGINT$BOOLEAN$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj4281
	jmp	Lj4282
Lj4281:
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%esi
	movl	(%esi),%esi
	call	*140(%esi)
	movl	-12(%ebp),%eax
	movl	124(%eax),%edx
	movl	-12(%ebp),%eax
	movl	16(%eax),%ecx
	movl	-8(%ebp),%eax
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movl	-12(%ebp),%eax
	movl	164(%eax),%eax
	testl	%eax,%eax
	jne	Lj4301
	jmp	Lj4302
Lj4301:
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DBF_DBFFILE_TDBFFILE_$__WRITELOCKINFO$PCHAR$stub
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%esi
	movl	(%esi),%esi
	call	*144(%esi)
Lj4302:
	jmp	Lj4313
Lj4282:
	movl	L_U_DBF_STR_STRING_RECORD_LOCKED$non_lazy_ptr-Lj4280(%ebx),%eax
	movl	(%eax),%ecx
	movl	L_VMT_DBF_COMMON_EDBFERROR$non_lazy_ptr-Lj4280(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La5:
	movl	%ebp,%ecx
	leal	La5-Lj4280(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj4313:
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DBF_DBFFILE_TDBFFILE_$__UNLOCKRECORD$LONGINT$PCHAR
_DBF_DBFFILE_TDBFFILE_$__UNLOCKRECORD$LONGINT$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-28(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-16(%ebp)
	jmp	Lj4325
	.align 2
Lj4324:
	movl	-12(%ebp),%eax
	movl	112(%eax),%eax
	movl	-16(%ebp),%edx
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,-20(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movl	124(%eax),%ecx
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__UPDATE$LONGINT$PCHAR$PCHAR$$BOOLEAN$stub
	testb	%al,%al
	je	Lj4333
	jmp	Lj4334
Lj4333:
	movl	-20(%ebp),%eax
	movl	%eax,-24(%ebp)
	jmp	Lj4346
	.align 2
Lj4345:
	decl	-16(%ebp)
	movl	-12(%ebp),%eax
	movl	112(%eax),%eax
	movl	-16(%ebp),%edx
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,-20(%ebp)
	movl	-12(%ebp),%eax
	movl	124(%eax),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__UPDATE$LONGINT$PCHAR$PCHAR$$BOOLEAN$stub
Lj4346:
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj4345
	jmp	Lj4347
Lj4347:
	movl	-24(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__INSERTERROR$stub
Lj4334:
	incl	-16(%ebp)
Lj4325:
	movl	-12(%ebp),%eax
	movl	112(%eax),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	cmpl	-16(%ebp),%eax
	jg	Lj4324
	jmp	Lj4326
Lj4326:
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*144(%ebx)
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DBF_PGFILE_TPAGEDFILE_$__UNLOCKPAGE$LONGINT$stub
	movl	-28(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_DBFFILE_TDBFFILE_$__RECORDDELETED$LONGINT$PCHAR
_DBF_DBFFILE_TDBFFILE_$__RECORDDELETED$LONGINT$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	112(%eax),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	movl	%eax,%ebx
	decl	%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj4379
	decl	-16(%ebp)
	.align 2
Lj4380:
	incl	-16(%ebp)
	movl	-12(%ebp),%eax
	movl	112(%eax),%eax
	movl	-16(%ebp),%edx
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,-20(%ebp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__RECORDDELETED$LONGINT$PCHAR$stub
	cmpl	-16(%ebp),%ebx
	jg	Lj4380
Lj4379:
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_DBFFILE_TDBFFILE_$__RECORDRECALLED$LONGINT$PCHAR
_DBF_DBFFILE_TDBFFILE_$__RECORDRECALLED$LONGINT$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-16(%ebp)
	jmp	Lj4400
	.align 2
Lj4399:
	movl	-12(%ebp),%eax
	movl	112(%eax),%eax
	movl	-16(%ebp),%edx
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,-20(%ebp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__RECORDRECALLED$LONGINT$PCHAR$$BOOLEAN$stub
	testb	%al,%al
	je	Lj4408
	jmp	Lj4409
Lj4408:
	movl	-20(%ebp),%eax
	movl	%eax,-24(%ebp)
	jmp	Lj4419
	.align 2
Lj4418:
	decl	-16(%ebp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__RECORDDELETED$LONGINT$PCHAR$stub
Lj4419:
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj4418
	jmp	Lj4420
Lj4420:
	movl	-24(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__INSERTERROR$stub
Lj4409:
	incl	-16(%ebp)
Lj4400:
	movl	-12(%ebp),%eax
	movl	112(%eax),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	cmpl	-16(%ebp),%eax
	jg	Lj4399
	jmp	Lj4401
Lj4401:
	leave
	ret

.text
	.align 4
.globl	_DBF_DBFFILE_TDBFFILE_$__SETRECORDSIZE$LONGINT
_DBF_DBFFILE_TDBFFILE_$__SETRECORDSIZE$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	16(%eax),%eax
	cmpl	-4(%ebp),%eax
	jne	Lj4433
	jmp	Lj4434
Lj4433:
	movl	-8(%ebp),%eax
	movl	124(%eax),%eax
	testl	%eax,%eax
	jne	Lj4435
	jmp	Lj4436
Lj4435:
	movl	-8(%ebp),%eax
	leal	124(%eax),%eax
	call	L_DBF_COMMON_FREEMEMANDNIL$POINTER$stub
Lj4436:
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj4439
	jmp	Lj4440
Lj4439:
	movl	-8(%ebp),%eax
	leal	124(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
Lj4440:
Lj4434:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_DBF_PGFILE_TPAGEDFILE_$__SETRECORDSIZE$LONGINT$stub
	leave
	ret

.text
	.align 4
.globl	_DBF_DBFFILE_TDBFFILE_$__GETINDEXBYNAME$ANSISTRING$$TINDEXFILE
_DBF_DBFFILE_TDBFFILE_$__GETINDEXBYNAME$ANSISTRING$$TINDEXFILE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj4451
	movl	-8(%ebp),%eax
	movl	108(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	108(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*200(%ecx)
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jge	Lj4460
	jmp	Lj4461
Lj4460:
	movl	-8(%ebp),%eax
	movl	108(%eax),%eax
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	108(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*132(%ecx)
	movl	%eax,-12(%ebp)
	jmp	Lj4468
Lj4461:
	movl	$0,-12(%ebp)
Lj4468:
Lj4451:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj4452
	call	LFPC_RERAISE$stub
Lj4452:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_DBFFILE_TDBFCURSOR_$__CREATE$TDBFFILE$$TDBFCURSOR
_DBF_DBFFILE_TDBFCURSOR_$__CREATE$TDBFFILE$$TDBFCURSOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj4473
	jmp	Lj4474
Lj4473:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj4474:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj4479
	jmp	Lj4480
Lj4479:
	jmp	Lj4471
Lj4480:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj4483
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj4487
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_DBF_CURSOR_TVIRTUALCURSOR_$__CREATE$TPAGEDFILE$$TVIRTUALCURSOR$stub
Lj4487:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj4488
	call	LFPC_RERAISE$stub
Lj4488:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj4498
	jmp	Lj4497
Lj4498:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj4496
	jmp	Lj4497
Lj4496:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj4497:
Lj4483:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj4485
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj4502
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj4503
	jmp	Lj4504
Lj4503:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj4504:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj4502:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj4501
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj4501:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj4485
Lj4485:
Lj4471:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_DBFFILE_TDBFCURSOR_$__NEXT$$BOOLEAN
_DBF_DBFFILE_TDBFCURSOR_$__NEXT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	call	L_DBF_PGFILE_TPAGEDFILE_$__ISRECORDPRESENT$LONGINT$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj4511
	jmp	Lj4512
Lj4511:
	movl	-4(%ebp),%eax
	incl	8(%eax)
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	call	L_DBF_PGFILE_TPAGEDFILE_$__ISRECORDPRESENT$LONGINT$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	jmp	Lj4523
Lj4512:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	36(%eax),%eax
	incl	%eax
	movl	-4(%ebp),%edx
	movl	%eax,8(%edx)
	movb	$0,-5(%ebp)
Lj4523:
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_DBF_DBFFILE_TDBFCURSOR_$__PREV$$BOOLEAN
_DBF_DBFFILE_TDBFCURSOR_$__PREV$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	cmpl	$0,%eax
	jg	Lj4530
	jmp	Lj4531
Lj4530:
	movl	-4(%ebp),%eax
	decl	8(%eax)
	jmp	Lj4532
Lj4531:
	movl	-4(%ebp),%eax
	movl	$0,8(%eax)
Lj4532:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	cmpl	$0,%eax
	setgb	-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_DBF_DBFFILE_TDBFCURSOR_$__FIRST
_DBF_DBFFILE_TDBFCURSOR_$__FIRST:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$0,8(%eax)
	leave
	ret

.text
	.align 4
.globl	_DBF_DBFFILE_TDBFCURSOR_$__LAST
_DBF_DBFFILE_TDBFCURSOR_$__LAST:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	call	L_DBF_PGFILE_TPAGEDFILE_$__GETRECORDCOUNT$$LONGINT$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj4547
	jmp	Lj4548
Lj4547:
	movl	-4(%ebp),%eax
	movl	$0,8(%eax)
	jmp	Lj4551
Lj4548:
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	incl	%edx
	movl	%edx,8(%eax)
Lj4551:
	leave
	ret

.text
	.align 4
.globl	_DBF_DBFFILE_TDBFCURSOR_$__GETPHYSICALRECNO$$LONGINT
_DBF_DBFFILE_TDBFCURSOR_$__GETPHYSICALRECNO$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_DBFFILE_TDBFCURSOR_$__SETPHYSICALRECNO$LONGINT
_DBF_DBFFILE_TDBFCURSOR_$__SETPHYSICALRECNO$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,8(%eax)
	leave
	ret

.text
	.align 4
.globl	_DBF_DBFFILE_TDBFCURSOR_$__GETSEQUENTIALRECORDCOUNT$$LONGINT
_DBF_DBFFILE_TDBFCURSOR_$__GETSEQUENTIALRECORDCOUNT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	call	L_DBF_PGFILE_TPAGEDFILE_$__GETRECORDCOUNT$$LONGINT$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_DBFFILE_TDBFCURSOR_$__GETSEQUENTIALRECNO$$LONGINT
_DBF_DBFFILE_TDBFCURSOR_$__GETSEQUENTIALRECNO$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_DBFFILE_TDBFCURSOR_$__SETSEQUENTIALRECNO$LONGINT
_DBF_DBFFILE_TDBFCURSOR_$__SETSEQUENTIALRECNO$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,8(%eax)
	leave
	ret

.text
	.align 4
.globl	_DBF_DBFFILE_CODEPAGESPROC$PCHAR$$LONGWORD
_DBF_DBFFILE_CODEPAGESPROC$PCHAR$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	call	Lj4577
Lj4577:
	popl	%ebx
	movl	8(%ebp),%eax
	call	LFPC_PCHAR_LENGTH$stub
	movl	%eax,%edx
	movl	8(%ebp),%eax
	movl	$-1,%ecx
	call	L_DBF_DBFFILE_GETINTFROMSTRLENGTH$POINTER$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,%edx
	movl	L_U_DBF_DBFFILE_TEMPCODEPAGELIST$non_lazy_ptr-Lj4577(%ebx),%eax
	movl	(%eax),%eax
	call	L_CLASSES_TLIST_$__ADD$POINTER$$LONGINT$stub
	movl	$1,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_DBFFILE_TDBFGLOBALS_$__CREATE$$TDBFGLOBALS
_DBF_DBFFILE_TDBFGLOBALS_$__CREATE$$TDBFGLOBALS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-92(%ebp)
	call	Lj4593
Lj4593:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj4594
	jmp	Lj4595
Lj4594:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-8(%ebp)
Lj4595:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj4600
	jmp	Lj4601
Lj4600:
	jmp	Lj4592
Lj4601:
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj4604
	leal	-60(%ebp),%ecx
	leal	-84(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-88(%ebp)
	testl	%eax,%eax
	jne	Lj4608
	movl	L_VMT_CLASSES_TLIST$non_lazy_ptr-Lj4593(%ebx),%edx
	movl	$0,%eax
	call	L_CLASSES_TLIST_$__CREATE$$TLIST$stub
	movl	-8(%ebp),%edx
	movl	%eax,4(%edx)
	call	L_DBF_WTIL_GETACP$$LONGWORD$stub
	movl	-8(%ebp),%edx
	movl	%eax,12(%edx)
	call	L_DBF_WTIL_GETACP$$LONGWORD$stub
	movl	%eax,%edx
	movl	-8(%ebp),%eax
	call	L_DBF_DBFFILE_TDBFGLOBALS_$__SETDEFAULTCREATECODEPAGE$LONGINT$stub
	movl	-8(%ebp),%eax
	movb	$1,8(%eax)
	movl	-8(%ebp),%eax
	movl	4(%eax),%edx
	movl	L_U_DBF_DBFFILE_TEMPCODEPAGELIST$non_lazy_ptr-Lj4593(%ebx),%eax
	movl	%edx,(%eax)
	movl	L_DBF_DBFFILE_CODEPAGESPROC$PCHAR$$LONGWORD$non_lazy_ptr-Lj4593(%ebx),%eax
	movl	$1,%edx
	call	L_DBF_WTIL_ENUMSYSTEMCODEPAGES$POINTER$LONGWORD$$LONGBOOL$stub
	movl	L_U_DBF_DBFFILE_TEMPCODEPAGELIST$non_lazy_ptr-Lj4593(%ebx),%eax
	movl	$0,(%eax)
	movl	-8(%ebp),%eax
	call	L_DBF_DBFFILE_TDBFGLOBALS_$__INITUSERNAME$stub
Lj4608:
	call	LFPC_POPADDRSTACK$stub
	movl	-88(%ebp),%eax
	testl	%eax,%eax
	je	Lj4609
	call	LFPC_RERAISE$stub
Lj4609:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj4637
	jmp	Lj4636
Lj4637:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj4635
	jmp	Lj4636
Lj4635:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj4636:
Lj4604:
	call	LFPC_POPADDRSTACK$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj4606
	leal	-60(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj4641
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj4642
	jmp	Lj4643
Lj4642:
	movl	-8(%ebp),%eax
	movl	$-1,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj4643:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj4641:
	call	LFPC_POPADDRSTACK$stub
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj4640
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj4640:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj4606
Lj4606:
Lj4592:
	movl	-8(%ebp),%eax
	movl	-92(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_DBFFILE_TDBFGLOBALS_$__INITUSERNAME
_DBF_DBFFILE_TDBFGLOBALS_$__INITUSERNAME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$1336,%esp
	movl	%ebx,-1332(%ebp)
	movl	%eax,-4(%ebp)
	movl	$0,-1328(%ebp)
	leal	-1296(%ebp),%ecx
	leal	-1320(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-1324(%ebp)
	testl	%eax,%eax
	jne	Lj4650
	leal	-1284(%ebp),%eax
	call	L_BASEUNIX_FPUNAME$UTSNAME$$LONGINT$stub
	leal	-1328(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-1328(%ebp)
	leal	-1328(%ebp),%eax
	movl	%eax,(%esp)
	leal	-260(%ebp),%eax
	movb	$1,%cl
	movl	$255,%edx
	call	Lfpc_chararray_to_ansistr$stub
	movl	-1328(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-4(%ebp),%ebx
	leal	20(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-1328(%ebp),%eax
	movl	%eax,20(%ebx)
	movl	-4(%ebp),%eax
	movl	20(%eax),%edx
	testl	%edx,%edx
	je	Lj4667
	movl	-4(%edx),%edx
Lj4667:
	movl	-4(%ebp),%eax
	movl	%edx,24(%eax)
Lj4650:
	call	LFPC_POPADDRSTACK$stub
	leal	-1328(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-1328(%ebp)
	movl	-1324(%ebp),%eax
	testl	%eax,%eax
	je	Lj4651
	call	LFPC_RERAISE$stub
Lj4651:
	movl	-1332(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_DBFFILE_TDBFGLOBALS_$__DESTROY
_DBF_DBFFILE_TDBFGLOBALS_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj4670
	jmp	Lj4671
Lj4670:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj4671:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj4678
	jmp	Lj4677
Lj4678:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj4676
	jmp	Lj4677
Lj4676:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj4677:
	leave
	ret

.text
	.align 4
.globl	_DBF_DBFFILE_TDBFGLOBALS_$__GETDEFAULTCREATECODEPAGE$$LONGINT
_DBF_DBFFILE_TDBFGLOBALS_$__GETDEFAULTCREATECODEPAGE$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	Lj4682
Lj4682:
	popl	%ecx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movzbl	16(%eax),%edx
	movl	L_TC_DBF_LANG_LANGID_TO_CODEPAGE$non_lazy_ptr-Lj4682(%ecx),%eax
	movzwl	(%eax,%edx,2),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_DBFFILE_TDBFGLOBALS_$__SETDEFAULTCREATECODEPAGE$LONGINT
_DBF_DBFFILE_TDBFGLOBALS_$__SETDEFAULTCREATECODEPAGE$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	call	L_DBF_WTIL_GETUSERDEFAULTLCID$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	movb	$0,%cl
	call	L_DBF_LANG_CONSTRUCTLANGID$LONGINT$LONGWORD$BOOLEAN$$BYTE$stub
	movl	-8(%ebp),%edx
	movb	%al,16(%edx)
	leave
	ret

.text
	.align 4
.globl	_DBF_DBFFILE_TDBFGLOBALS_$__CODEPAGEINSTALLED$LONGINT$$BOOLEAN
_DBF_DBFFILE_TDBFGLOBALS_$__CODEPAGEINSTALLED$LONGINT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_CLASSES_TLIST_$__INDEXOF$POINTER$$LONGINT$stub
	cmpl	$0,%eax
	setgeb	-9(%ebp)
	movb	-9(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_FINALIZE$_DBF_DBFFILE
_FINALIZE$_DBF_DBFFILE:
.reference __DBF_DBFFILE_finalize
.globl	__DBF_DBFFILE_finalize
__DBF_DBFFILE_finalize:
.reference _FINALIZE$_DBF_DBFFILE
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-4(%ebp)
	call	Lj4704
Lj4704:
	popl	%ebx
	movl	L_U_DBF_DBFFILE_DBFGLOBALS$non_lazy_ptr-Lj4704(%ebx),%eax
	call	L_DBF_COMMON_FREEANDNIL$formal$stub
	movl	-4(%ebp),%ebx
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals


	.align 2
.globl _U_DBF_DBFFILE_DBFGLOBALS
.data
.zerofill __DATA, __common, _U_DBF_DBFFILE_DBFGLOBALS, 4,2




	.align 2
.globl _U_DBF_DBFFILE_TEMPCODEPAGELIST
.data
.zerofill __DATA, __common, _U_DBF_DBFFILE_TEMPCODEPAGELIST, 4,2



.const_data
	.align 2
.globl	_$DBF_DBFFILE$_Ld19
_$DBF_DBFFILE$_Ld19:
	.byte	11
	.ascii	"TDbfGlobals"

.const_data
	.align 2
.globl	_VMT_DBF_DBFFILE_TDBFGLOBALS
_VMT_DBF_DBFFILE_TDBFGLOBALS:
	.long	28,-28
	.long	_VMT_SYSTEM_TOBJECT
	.long	_$DBF_DBFFILE$_Ld19
	.long	0,0
	.long	_$DBF_DBFFILE$_Ld20
	.long	_RTTI_DBF_DBFFILE_TDBFGLOBALS
	.long	_INIT_DBF_DBFFILE_TDBFGLOBALS
	.long	0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_DBF_DBFFILE_TDBFGLOBALS_$__DESTROY
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
.globl	_$DBF_DBFFILE$_Ld22
_$DBF_DBFFILE$_Ld22:
	.byte	8
	.ascii	"TDbfFile"

.const_data
	.align 2
.globl	_VMT_DBF_DBFFILE_TDBFFILE
_VMT_DBF_DBFFILE_TDBFFILE:
	.long	192,-192
	.long	_VMT_DBF_PGFILE_TPAGEDFILE
	.long	_$DBF_DBFFILE$_Ld22
	.long	0,0
	.long	_$DBF_DBFFILE$_Ld23
	.long	_RTTI_DBF_DBFFILE_TDBFFILE
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_DBF_DBFFILE_TDBFFILE_$__DESTROY
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
	.long	_DBF_PGFILE_TPAGEDFILE_$__SETHEADEROFFSET$LONGINT
	.long	_DBF_DBFFILE_TDBFFILE_$__SETRECORDSIZE$LONGINT
	.long	_DBF_PGFILE_TPAGEDFILE_$__SETHEADERSIZE$LONGINT
	.long	_DBF_PGFILE_TPAGEDFILE_$__SETPAGEOFFSETBYHEADER$BOOLEAN
	.long	_DBF_PGFILE_TPAGEDFILE_$__LOCKSECTION$LONGWORD$LONGWORD$BOOLEAN$$BOOLEAN
	.long	_DBF_PGFILE_TPAGEDFILE_$__UNLOCKSECTION$LONGWORD$LONGWORD$$BOOLEAN
	.long	_DBF_PGFILE_TPAGEDFILE_$__CLOSEFILE
	.long	_DBF_PGFILE_TPAGEDFILE_$__OPENFILE
	.long	_DBF_DBFFILE_TDBFFILE_$__TRYEXCLUSIVE
	.long	_DBF_DBFFILE_TDBFFILE_$__ENDEXCLUSIVE
	.long	_DBF_PGFILE_TPAGEDFILE_$__READRECORD$LONGINT$POINTER$$LONGINT
	.long	_DBF_PGFILE_TPAGEDFILE_$__WRITERECORD$LONGINT$POINTER
	.long	_DBF_DBFFILE_TDBFFILE_$__WRITEHEADER
	.long	_DBF_PGFILE_TPAGEDFILE_$__FLUSH
	.long	0

.const_data
	.align 2
.globl	_$DBF_DBFFILE$_Ld25
_$DBF_DBFFILE$_Ld25:
	.byte	10
	.ascii	"TDbfCursor"

.const_data
	.align 2
.globl	_VMT_DBF_DBFFILE_TDBFCURSOR
_VMT_DBF_DBFFILE_TDBFCURSOR:
	.long	12,-12
	.long	_VMT_DBF_CURSOR_TVIRTUALCURSOR
	.long	_$DBF_DBFFILE$_Ld25
	.long	0,0
	.long	_$DBF_DBFFILE$_Ld26
	.long	_RTTI_DBF_DBFFILE_TDBFCURSOR
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_DBF_CURSOR_TVIRTUALCURSOR_$__DESTROY
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
	.long	_DBF_DBFFILE_TDBFCURSOR_$__GETPHYSICALRECNO$$LONGINT
	.long	_DBF_DBFFILE_TDBFCURSOR_$__GETSEQUENTIALRECNO$$LONGINT
	.long	_DBF_DBFFILE_TDBFCURSOR_$__GETSEQUENTIALRECORDCOUNT$$LONGINT
	.long	_DBF_DBFFILE_TDBFCURSOR_$__SETPHYSICALRECNO$LONGINT
	.long	_DBF_DBFFILE_TDBFCURSOR_$__SETSEQUENTIALRECNO$LONGINT
	.long	_DBF_DBFFILE_TDBFCURSOR_$__NEXT$$BOOLEAN
	.long	_DBF_DBFFILE_TDBFCURSOR_$__PREV$$BOOLEAN
	.long	_DBF_DBFFILE_TDBFCURSOR_$__FIRST
	.long	_DBF_DBFFILE_TDBFCURSOR_$__LAST
	.long	0

.data
	.align 2
.globl	_THREADVARLIST_DBF_DBFFILE
_THREADVARLIST_DBF_DBFFILE:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const
# End asmlist al_const
# Begin asmlist al_typedconsts

.const_data
	.align 2
.globl	_$DBF_DBFFILE$_Ld2
_$DBF_DBFFILE$_Ld2:
	.short	0,1
	.long	0,-1,4
.reference _$DBF_DBFFILE$_Ld1
.globl	_$DBF_DBFFILE$_Ld1
_$DBF_DBFFILE$_Ld1:
.reference _$DBF_DBFFILE$_Ld2
	.ascii	".mdx\000"

.const
	.align 2
.globl	_$DBF_DBFFILE$_Ld3
_$DBF_DBFFILE$_Ld3:
	.ascii	"WIN\000"

.const
	.align 2
.globl	_$DBF_DBFFILE$_Ld4
_$DBF_DBFFILE$_Ld4:
	.ascii	"HEBREW\000"

.const
	.align 2
.globl	_$DBF_DBFFILE$_Ld5
_$DBF_DBFFILE$_Ld5:
	.ascii	"FOX\000"

.const
	.align 3
.globl	_$DBF_DBFFILE$_Ld6
_$DBF_DBFFILE$_Ld6:
	.byte	0,0,0,0,0,8,1,0,0,128,82,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0

.const_data
	.align 2
.globl	_$DBF_DBFFILE$_Ld8
_$DBF_DBFFILE$_Ld8:
	.short	0,1
	.long	0,-1,10
.reference _$DBF_DBFFILE$_Ld7
.globl	_$DBF_DBFFILE$_Ld7
_$DBF_DBFFILE$_Ld7:
.reference _$DBF_DBFFILE$_Ld8
	.ascii	"_NULLFLAGS\000"

.const_data
	.align 2
.globl	_$DBF_DBFFILE$_Ld10
_$DBF_DBFFILE$_Ld10:
	.short	0,1
	.long	0,-1,4
.reference _$DBF_DBFFILE$_Ld9
.globl	_$DBF_DBFFILE$_Ld9
_$DBF_DBFFILE$_Ld9:
.reference _$DBF_DBFFILE$_Ld10
	.ascii	".fpt\000"

.const_data
	.align 2
.globl	_$DBF_DBFFILE$_Ld12
_$DBF_DBFFILE$_Ld12:
	.short	0,1
	.long	0,-1,4
.reference _$DBF_DBFFILE$_Ld11
.globl	_$DBF_DBFFILE$_Ld11
_$DBF_DBFFILE$_Ld11:
.reference _$DBF_DBFFILE$_Ld12
	.ascii	".dbt\000"

.const_data
	.align 2
.globl	_$DBF_DBFFILE$_Ld14
_$DBF_DBFFILE$_Ld14:
	.short	0,1
	.long	0,-1,10
.reference _$DBF_DBFFILE$_Ld13
.globl	_$DBF_DBFFILE$_Ld13
_$DBF_DBFFILE$_Ld13:
.reference _$DBF_DBFFILE$_Ld14
	.ascii	"_DBASELOCK\000"

.const
	.align 2
.globl	_$DBF_DBFFILE$_Ld15
_$DBF_DBFFILE$_Ld15:
	.byte	0,0,0,0,0,0,240,191

.const
	.align 2
.globl	_$DBF_DBFFILE$_Ld16
_$DBF_DBFFILE$_Ld16:
	.byte	0,64,28,70

.data
.globl	_TC_DBF_DBFFILE_TDBFFILE_$_SETFIELDDATA$crcD3565DC4_ISBLOBFIELDTOPADCHAR
_TC_DBF_DBFFILE_TDBFFILE_$_SETFIELDDATA$crcD3565DC4_ISBLOBFIELDTOPADCHAR:
	.byte	32,48

.data
.globl	_TC_DBF_DBFFILE_TDBFFILE_$_SETFIELDDATA$crcD3565DC4_SRCNILTOUPDATENULLFIELD
_TC_DBF_DBFFILE_TDBFFILE_$_SETFIELDDATA$crcD3565DC4_SRCNILTOUPDATENULLFIELD:
	.byte	0,1

.const
	.align 2
.globl	_$DBF_DBFFILE$_Ld17
_$DBF_DBFFILE$_Ld17:
	.byte	0,0,0,0,0,136,195,64

.const
	.align 3
.globl	_$DBF_DBFFILE$_Ld18
_$DBF_DBFFILE$_Ld18:
	.byte	0,0,0,0,0,8,1,0,1,130,128,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0

.data
.globl	_TC_DBF_DBFFILE_TDBFFILE_$_OPENINDEX$crc1FB9AA30_INDEXOPENMODE
_TC_DBF_DBFFILE_TDBFFILE_$_OPENINDEX$crc1FB9AA30_INDEXOPENMODE:
	.byte	1,1,4,4,6,6,7,1,1,3,3,5,5,7
# End asmlist al_typedconsts
# Begin asmlist al_rotypedconsts
# End asmlist al_rotypedconsts
# Begin asmlist al_threadvars
# End asmlist al_threadvars
# Begin asmlist al_imports

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_STRSCAN$PCHAR$CHAR$$PCHAR$stub:
.indirect_symbol _SYSUTILS_STRSCAN$PCHAR$CHAR$$PCHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_TEXTTOFLOAT$PCHAR$formal$TFLOATVALUE$$BOOLEAN$stub:
.indirect_symbol _SYSUTILS_TEXTTOFLOAT$PCHAR$formal$TFLOATVALUE$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_FLOATTOTEXT$PCHAR$EXTENDED$TFLOATFORMAT$LONGINT$LONGINT$$LONGINT$stub:
.indirect_symbol _SYSUTILS_FLOATTOTEXT$PCHAR$EXTENDED$TFLOATFORMAT$LONGINT$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_FILLCHAR$formal$LONGINT$CHAR$stub:
.indirect_symbol _SYSTEM_FILLCHAR$formal$LONGINT$CHAR
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

Lfpc_pchar_to_shortstr$stub:
.indirect_symbol fpc_pchar_to_shortstr
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_val_sint_shortstr$stub:
.indirect_symbol fpc_val_sint_shortstr
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

L_DBF_FIELDS_TDBFFIELDDEFS_$__CREATE$TPERSISTENT$$TDBFFIELDDEFS$stub:
.indirect_symbol _DBF_FIELDS_TDBFFIELDDEFS_$__CREATE$TPERSISTENT$$TDBFFIELDDEFS
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

L_DBF_PGFILE_TPAGEDFILE_$__CREATE$$TPAGEDFILE$stub:
.indirect_symbol _DBF_PGFILE_TPAGEDFILE_$__CREATE$$TPAGEDFILE
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

L_DBF_DBFFILE_TDBFFILE_$__CLOSE$stub:
.indirect_symbol _DBF_DBFFILE_TDBFFILE_$__CLOSE
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

L_SYSTEM_TOBJECT_$__FREE$stub:
.indirect_symbol _SYSTEM_TOBJECT_$__FREE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_COMMON_FREEANDNIL$formal$stub:
.indirect_symbol _DBF_COMMON_FREEANDNIL$formal
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PGFILE_TPAGEDFILE_$__DESTROY$stub:
.indirect_symbol _DBF_PGFILE_TPAGEDFILE_$__DESTROY
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PGFILE_TPAGEDFILE_$__FILECREATED$$BOOLEAN$stub:
.indirect_symbol _DBF_PGFILE_TPAGEDFILE_$__FILECREATED$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_DBFFILE_TDBFFILE_$_OPEN_GETVERSION$stub:
.indirect_symbol _DBF_DBFFILE_TDBFFILE_$_OPEN_GETVERSION
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PGFILE_TPAGEDFILE_$__SETRECORDCOUNT$LONGINT$stub:
.indirect_symbol _DBF_PGFILE_TPAGEDFILE_$__SETRECORDCOUNT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PGFILE_TPAGEDFILE_$__GETRECORDCOUNT$$LONGINT$stub:
.indirect_symbol _DBF_PGFILE_TPAGEDFILE_$__GETRECORDCOUNT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_DBFFILE_TDBFFILE_$_OPEN_GETCODEPAGE$stub:
.indirect_symbol _DBF_DBFFILE_TDBFFILE_$_OPEN_GETCODEPAGE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_DBFFILE_TDBFFILE_$__CONSTRUCTFIELDDEFS$stub:
.indirect_symbol _DBF_DBFFILE_TDBFFILE_$__CONSTRUCTFIELDDEFS
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

L_DBF_DBFFILE_TDBFFILE_$__GETMEMOEXT$$ANSISTRING$stub:
.indirect_symbol _DBF_DBFFILE_TDBFFILE_$__GETMEMOEXT$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_CHANGEFILEEXT$ANSISTRING$ANSISTRING$$ANSISTRING$stub:
.indirect_symbol _SYSUTILS_CHANGEFILEEXT$ANSISTRING$ANSISTRING$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_DBFFILE_TDBFFILE_$__HASBLOB$$BOOLEAN$stub:
.indirect_symbol _DBF_DBFFILE_TDBFFILE_$__HASBLOB$$BOOLEAN
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

L_DBF_MEMO_TMEMOFILE_$__CREATE$POINTER$$TMEMOFILE$stub:
.indirect_symbol _DBF_MEMO_TMEMOFILE_$__CREATE$POINTER$$TMEMOFILE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PGFILE_TPAGEDFILE_$__SETFILENAME$ANSISTRING$stub:
.indirect_symbol _DBF_PGFILE_TPAGEDFILE_$__SETFILENAME$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PGFILE_TPAGEDFILE_$__SETSTREAM$TSTREAM$stub:
.indirect_symbol _DBF_PGFILE_TPAGEDFILE_$__SETSTREAM$TSTREAM
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_MEMO_TMEMOFILE_$__SETDBFVERSION$TXBASEVERSION$stub:
.indirect_symbol _DBF_MEMO_TMEMOFILE_$__SETDBFVERSION$TXBASEVERSION
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_MEMO_TMEMOFILE_$__OPEN$stub:
.indirect_symbol _DBF_MEMO_TMEMOFILE_$__OPEN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_UPPERCASE$ANSISTRING$$ANSISTRING$stub:
.indirect_symbol _SYSUTILS_UPPERCASE$ANSISTRING$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_ansistr_compare_equal$stub:
.indirect_symbol fpc_ansistr_compare_equal
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_ANSISTR_INCR_REF$stub:
.indirect_symbol FPC_ANSISTR_INCR_REF
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXFILE_$__CREATE$POINTER$$TINDEXFILE$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXFILE_$__CREATE$POINTER$$TINDEXFILE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXFILE_$__OPEN$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXFILE_$__OPEN
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

L_DBF_IDXFILE_TINDEXFILE_$__GETINDEXNAMES$TSTRINGS$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXFILE_$__GETINDEXNAMES$TSTRINGS
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

L_SYSUTILS_STRLCOMP$PCHAR$PCHAR$LONGINT$$LONGINT$stub:
.indirect_symbol _SYSUTILS_STRLCOMP$PCHAR$PCHAR$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_DBFFILE_GETINTFROMSTRLENGTH$POINTER$LONGINT$LONGINT$$LONGINT$stub:
.indirect_symbol _DBF_DBFFILE_GETINTFROMSTRLENGTH$POINTER$LONGINT$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_DBFFILE_TDBFFILE_$__GETLANGUAGESTR$$ANSISTRING$stub:
.indirect_symbol _DBF_DBFFILE_TDBFFILE_$__GETLANGUAGESTR$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_LANG_GETLANGID_FROM_LANGNAME$ANSISTRING$$BYTE$stub:
.indirect_symbol _DBF_LANG_GETLANGID_FROM_LANGNAME$ANSISTRING$$BYTE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_DBFFILE_TDBFFILE_$__GETLANGUAGEID$$LONGINT$stub:
.indirect_symbol _DBF_DBFFILE_TDBFFILE_$__GETLANGUAGEID$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub:
.indirect_symbol _SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION
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

L_DBF_IDXFILE_TINDEXFILE_$__CLOSE$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXFILE_$__CLOSE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TLIST_$__DELETE$LONGINT$stub:
.indirect_symbol _CLASSES_TLIST_$__DELETE$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_COMMON_FREEMEMANDNIL$POINTER$stub:
.indirect_symbol _DBF_COMMON_FREEMEMANDNIL$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_WTIL_GETUSERDEFAULTLCID$$LONGWORD$stub:
.indirect_symbol _DBF_WTIL_GETUSERDEFAULTLCID$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_LANG_CONSTRUCTLANGID$LONGINT$LONGWORD$BOOLEAN$$BYTE$stub:
.indirect_symbol _DBF_LANG_CONSTRUCTLANGID$LONGINT$LONGWORD$BOOLEAN$$BYTE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_LANG_CONSTRUCTLANGNAME$LONGINT$LONGWORD$BOOLEAN$$ANSISTRING$stub:
.indirect_symbol _DBF_LANG_CONSTRUCTLANGNAME$LONGINT$LONGWORD$BOOLEAN$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_pchar_to_ansistr$stub:
.indirect_symbol fpc_pchar_to_ansistr
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_STRPLCOPY$PCHAR$ANSISTRING$LONGWORD$$PCHAR$stub:
.indirect_symbol _SYSUTILS_STRPLCOPY$PCHAR$ANSISTRING$LONGWORD$$PCHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TCOLLECTION_$__CLEAR$stub:
.indirect_symbol _CLASSES_TCOLLECTION_$__CLEAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TCOLLECTION_$__GETCOUNT$$LONGINT$stub:
.indirect_symbol _CLASSES_TCOLLECTION_$__GETCOUNT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_FIELDS_TDBFFIELDDEFS_$__GETITEM$LONGINT$$TDBFFIELDDEF$stub:
.indirect_symbol _DBF_FIELDS_TDBFFIELDDEFS_$__GETITEM$LONGINT$$TDBFFIELDDEF
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_FIELDS_TDBFFIELDDEF_$__SETFIELDTYPE$TFIELDTYPE$stub:
.indirect_symbol _DBF_FIELDS_TDBFFIELDDEF_$__SETFIELDTYPE$TFIELDTYPE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_FIELDS_TDBFFIELDDEF_$__SETSIZE$LONGINT$stub:
.indirect_symbol _DBF_FIELDS_TDBFFIELDDEF_$__SETSIZE$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_FIELDS_TDBFFIELDDEF_$__ISBLOB$$BOOLEAN$stub:
.indirect_symbol _DBF_FIELDS_TDBFFIELDDEF_$__ISBLOB$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_COMMON_SWAPINTLE$LONGWORD$$LONGWORD$stub:
.indirect_symbol _DBF_COMMON_SWAPINTLE$LONGWORD$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_FIELDS_TDBFFIELDDEFS_$__ADDFIELDDEF$$TDBFFIELDDEF$stub:
.indirect_symbol _DBF_FIELDS_TDBFFIELDDEFS_$__ADDFIELDDEF$$TDBFFIELDDEF
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PGFILE_TPAGEDFILE_$__WRITECHAR$BYTE$stub:
.indirect_symbol _DBF_PGFILE_TPAGEDFILE_$__WRITECHAR$BYTE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PGFILE_TPAGEDFILE_$__WRITEHEADER$stub:
.indirect_symbol _DBF_PGFILE_TPAGEDFILE_$__WRITEHEADER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_DBFFILE_TDBFFILE_$__REGENERATEINDEXES$stub:
.indirect_symbol _DBF_DBFFILE_TDBFFILE_$__REGENERATEINDEXES
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_WTIL_GETLOCALTIME$TSYSTEMTIME$stub:
.indirect_symbol _DBF_WTIL_GETLOCALTIME$TSYSTEMTIME
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PGFILE_TPAGEDFILE_$__CALCPAGEOFFSET$LONGINT$$LONGINT$stub:
.indirect_symbol _DBF_PGFILE_TPAGEDFILE_$__CALCPAGEOFFSET$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PGFILE_TPAGEDFILE_$__WRITEBLOCK$POINTER$LONGINT$LONGINT$stub:
.indirect_symbol _DBF_PGFILE_TPAGEDFILE_$__WRITEBLOCK$POINTER$LONGINT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_FIELDS_TDBFFIELDDEF_$__SETPRECISION$LONGINT$stub:
.indirect_symbol _DBF_FIELDS_TDBFFIELDDEF_$__SETPRECISION$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_FIELDS_TDBFFIELDDEF_$__SETNATIVEFIELDTYPE$CHAR$stub:
.indirect_symbol _DBF_FIELDS_TDBFFIELDDEF_$__SETNATIVEFIELDTYPE$CHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PGFILE_TPAGEDFILE_$__READCHAR$$BYTE$stub:
.indirect_symbol _DBF_PGFILE_TPAGEDFILE_$__READCHAR$$BYTE
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

L_DBF_PGFILE_TPAGEDFILE_$__READBLOCK$POINTER$LONGINT$LONGINT$$LONGINT$stub:
.indirect_symbol _DBF_PGFILE_TPAGEDFILE_$__READBLOCK$POINTER$LONGINT$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_FIELDS_TDBFFIELDDEF_$__ALLOCBUFFERS$stub:
.indirect_symbol _DBF_FIELDS_TDBFFIELDDEF_$__ALLOCBUFFERS
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_chararray_to_ansistr$stub:
.indirect_symbol fpc_chararray_to_ansistr
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

L_DBF_DBFFILE_TDBFFILE_$_FASTPACKTABLE_FINDLASTNORMAL$$BOOLEAN$stub:
.indirect_symbol _DBF_DBFFILE_TDBFFILE_$_FASTPACKTABLE_FINDLASTNORMAL$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_DBFFILE_TDBFFILE_$_FASTPACKTABLE_FINDFIRSTDEL$$BOOLEAN$stub:
.indirect_symbol _DBF_DBFFILE_TDBFFILE_$_FASTPACKTABLE_FINDFIRSTDEL$$BOOLEAN
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

L_DBF_IDXFILE_TINDEXFILE_$__PREPARERENAME$ANSISTRING$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXFILE_$__PREPARERENAME$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_DELETEFILE$ANSISTRING$$BOOLEAN$stub:
.indirect_symbol _SYSUTILS_DELETEFILE$ANSISTRING$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_COMMON_FINDNEXTNAME$ANSISTRING$ANSISTRING$LONGINT$stub:
.indirect_symbol _DBF_COMMON_FINDNEXTNAME$ANSISTRING$ANSISTRING$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_RENAMEFILE$ANSISTRING$ANSISTRING$$BOOLEAN$stub:
.indirect_symbol _SYSUTILS_RENAMEFILE$ANSISTRING$ANSISTRING$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PGFILE_TPAGEDFILE_$__CHECKEXCLUSIVEACCESS$stub:
.indirect_symbol _DBF_PGFILE_TPAGEDFILE_$__CHECKEXCLUSIVEACCESS
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_DBFFILE_TDBFFILE_$__CREATE$$TDBFFILE$stub:
.indirect_symbol _DBF_DBFFILE_TDBFFILE_$__CREATE$$TDBFFILE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_DBFFILE_TDBFFILE_$__OPEN$stub:
.indirect_symbol _DBF_DBFFILE_TDBFFILE_$__OPEN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_DBFFILE_TDBFFILE_$__FINISHCREATE$TDBFFIELDDEFS$LONGINT$stub:
.indirect_symbol _DBF_DBFFILE_TDBFFILE_$__FINISHCREATE$TDBFFIELDDEFS$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXFILE_$__GETINDEXINFO$ANSISTRING$TDBFINDEXDEF$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXFILE_$__GETINDEXINFO$ANSISTRING$TDBFINDEXDEF
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_EXTRACTFILEEXT$ANSISTRING$$ANSISTRING$stub:
.indirect_symbol _SYSUTILS_EXTRACTFILEEXT$ANSISTRING$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_DBFFILE_TDBFFILE_$__OPENINDEX$ANSISTRING$ANSISTRING$BOOLEAN$TINDEXOPTIONS$stub:
.indirect_symbol _DBF_DBFFILE_TDBFFILE_$__OPENINDEX$ANSISTRING$ANSISTRING$BOOLEAN$TINDEXOPTIONS
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_DBFFILE_TDBFFILE_$__INITRECORD$PCHAR$stub:
.indirect_symbol _DBF_DBFFILE_TDBFFILE_$__INITRECORD$PCHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_DBFFILE_TDBFFILE_$__GETFIELDDATA$LONGINT$TFIELDTYPE$POINTER$POINTER$BOOLEAN$$BOOLEAN$stub:
.indirect_symbol _DBF_DBFFILE_TDBFFILE_$__GETFIELDDATA$LONGINT$TFIELDTYPE$POINTER$POINTER$BOOLEAN$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TMEMORYSTREAM_$__CLEAR$stub:
.indirect_symbol _CLASSES_TMEMORYSTREAM_$__CLEAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_MEMO_TMEMOFILE_$__READMEMO$LONGINT$TSTREAM$stub:
.indirect_symbol _DBF_MEMO_TMEMOFILE_$__READMEMO$LONGINT$TSTREAM
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_MEMO_TMEMOFILE_$__WRITEMEMO$LONGINT$LONGINT$TSTREAM$stub:
.indirect_symbol _DBF_MEMO_TMEMOFILE_$__WRITEMEMO$LONGINT$LONGINT$TSTREAM
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_DBFFILE_TDBFFILE_$__SETFIELDDATA$LONGINT$TFIELDTYPE$POINTER$POINTER$BOOLEAN$stub:
.indirect_symbol _DBF_DBFFILE_TDBFFILE_$__SETFIELDDATA$LONGINT$TFIELDTYPE$POINTER$POINTER$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXFILE_$__INSERT$LONGINT$PCHAR$$BOOLEAN$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXFILE_$__INSERT$LONGINT$PCHAR$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_DBFFILE_TDBFFILE_$__RENAME$ANSISTRING$TSTRINGS$BOOLEAN$stub:
.indirect_symbol _DBF_DBFFILE_TDBFFILE_$__RENAME$ANSISTRING$TSTRINGS$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_DBFFILE_TDBFFILE_$__PACKINDEX$TINDEXFILE$ANSISTRING$stub:
.indirect_symbol _DBF_DBFFILE_TDBFFILE_$__PACKINDEX$TINDEXFILE$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_DBFFILE_TDBFFILE_$__GETFIELDDATAFROMDEF$crc77AF605D$stub:
.indirect_symbol _DBF_DBFFILE_TDBFFILE_$__GETFIELDDATAFROMDEF$crc77AF605D
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_DBFFILE_TDBFFILE_$__ISNULLFLAGSET$POINTER$TDBFFIELDDEF$TNULLFIELDFLAG$$BOOLEAN$stub:
.indirect_symbol _DBF_DBFFILE_TDBFFILE_$__ISNULLFLAGSET$POINTER$TDBFFIELDDEF$TNULLFIELDFLAG$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_COMMON_SWAPINTBE$LONGWORD$$LONGWORD$stub:
.indirect_symbol _DBF_COMMON_SWAPINTBE$LONGWORD$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_COMMON_SWAPINT64BE$POINTER$POINTER$stub:
.indirect_symbol _DBF_COMMON_SWAPINT64BE$POINTER$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_COMMON_BDETIMESTAMPTODATETIME$DOUBLE$$TDATETIME$stub:
.indirect_symbol _DBF_COMMON_BDETIMESTAMPTODATETIME$DOUBLE$$TDATETIME
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_DBFFILE_TDBFFILE_$_GETFIELDDATAFROMDEF$crc77AF605D_SAVEDATETODST$stub:
.indirect_symbol _DBF_DBFFILE_TDBFFILE_$_GETFIELDDATAFROMDEF$crc77AF605D_SAVEDATETODST
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_TIMESTAMPTODATETIME$TTIMESTAMP$$TDATETIME$stub:
.indirect_symbol _SYSUTILS_TIMESTAMPTODATETIME$TTIMESTAMP$$TDATETIME
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_COMMON_SWAPINT64LE$POINTER$POINTER$stub:
.indirect_symbol _DBF_COMMON_SWAPINT64LE$POINTER$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_FILLCHAR$formal$LONGINT$BYTE$stub:
.indirect_symbol _SYSTEM_FILLCHAR$formal$LONGINT$BYTE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_DBFFILE_TDBFFILE_$_GETFIELDDATAFROMDEF$crc77AF605D_GETINT64FROMSTRLENGTH$crcEFF9B288$stub:
.indirect_symbol _DBF_DBFFILE_TDBFFILE_$_GETFIELDDATAFROMDEF$crc77AF605D_GETINT64FROMSTRLENGTH$crcEFF9B288
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_DBFFILE_DBFSTRTOFLOAT$PCHAR$LONGINT$$EXTENDED$stub:
.indirect_symbol _DBF_DBFFILE_DBFSTRTOFLOAT$PCHAR$LONGINT$$EXTENDED
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_DBFFILE_TDBFFILE_$_GETFIELDDATAFROMDEF$crc77AF605D_CORRECTYEAR$LONGINT$stub:
.indirect_symbol _DBF_DBFFILE_TDBFFILE_$_GETFIELDDATAFROMDEF$crc77AF605D_CORRECTYEAR$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_ENCODEDATE$WORD$WORD$WORD$$TDATETIME$stub:
.indirect_symbol _SYSUTILS_ENCODEDATE$WORD$WORD$WORD$$TDATETIME
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_ENCODETIME$WORD$WORD$WORD$WORD$$TDATETIME$stub:
.indirect_symbol _SYSUTILS_ENCODETIME$WORD$WORD$WORD$WORD$$TDATETIME
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_STRLCOPY$PCHAR$PCHAR$LONGINT$$PCHAR$stub:
.indirect_symbol _SYSUTILS_STRLCOPY$PCHAR$PCHAR$LONGINT$$PCHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_DATETIMETOTIMESTAMP$TDATETIME$$TTIMESTAMP$stub:
.indirect_symbol _SYSUTILS_DATETIMETOTIMESTAMP$TDATETIME$$TTIMESTAMP
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_DECODEDATE$TDATETIME$WORD$WORD$WORD$stub:
.indirect_symbol _SYSUTILS_DECODEDATE$TDATETIME$WORD$WORD$WORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_val_int64_shortstr$stub:
.indirect_symbol fpc_val_int64_shortstr
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_DBFFILE_TDBFFILE_$__UPDATENULLFIELD$POINTER$TDBFFIELDDEF$TUPDATENULLFIELD$TNULLFIELDFLAG$stub:
.indirect_symbol _DBF_DBFFILE_TDBFFILE_$__UPDATENULLFIELD$POINTER$TDBFFIELDDEF$TUPDATENULLFIELD$TNULLFIELDFLAG
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_DBFFILE_TDBFFILE_$_SETFIELDDATA$crcD3565DC4_LOADDATEFROMSRC$stub:
.indirect_symbol _DBF_DBFFILE_TDBFFILE_$_SETFIELDDATA$crcD3565DC4_LOADDATEFROMSRC
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_COMMON_DATETIMETOBDETIMESTAMP$TDATETIME$$DOUBLE$stub:
.indirect_symbol _DBF_COMMON_DATETIMETOBDETIMESTAMP$TDATETIME$$DOUBLE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_PCHAR_LENGTH$stub:
.indirect_symbol FPC_PCHAR_LENGTH
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PRSSUPP_GETSTRFROMINT_WIDTH$LONGINT$LONGINT$PCHAR$CHAR$stub:
.indirect_symbol _DBF_PRSSUPP_GETSTRFROMINT_WIDTH$LONGINT$LONGINT$PCHAR$CHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PRSSUPP_GETSTRFROMINT64_WIDTH$INT64$LONGINT$PCHAR$CHAR$stub:
.indirect_symbol _DBF_PRSSUPP_GETSTRFROMINT64_WIDTH$INT64$LONGINT$PCHAR$CHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_DBFFILE_FLOATTODBFSTR$EXTENDED$LONGINT$LONGINT$PCHAR$stub:
.indirect_symbol _DBF_DBFFILE_FLOATTODBFSTR$EXTENDED$LONGINT$LONGINT$PCHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_DECODETIME$TDATETIME$WORD$WORD$WORD$WORD$stub:
.indirect_symbol _SYSUTILS_DECODETIME$TDATETIME$WORD$WORD$WORD$WORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_DBFFILE_TDBFFILE_$__INITDEFAULTBUFFER$stub:
.indirect_symbol _DBF_DBFFILE_TDBFFILE_$__INITDEFAULTBUFFER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PGFILE_TPAGEDFILE_$__LOCKPAGE$LONGINT$BOOLEAN$$BOOLEAN$stub:
.indirect_symbol _DBF_PGFILE_TPAGEDFILE_$__LOCKPAGE$LONGINT$BOOLEAN$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PGFILE_TPAGEDFILE_$__UNLOCKPAGE$LONGINT$stub:
.indirect_symbol _DBF_PGFILE_TPAGEDFILE_$__UNLOCKPAGE$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PGFILE_TPAGEDFILE_$__TRYEXCLUSIVE$stub:
.indirect_symbol _DBF_PGFILE_TPAGEDFILE_$__TRYEXCLUSIVE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PGFILE_TPAGEDFILE_$__ENDEXCLUSIVE$stub:
.indirect_symbol _DBF_PGFILE_TPAGEDFILE_$__ENDEXCLUSIVE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_DBFFILE_TDBFFILE_$__GETINDEXBYNAME$ANSISTRING$$TINDEXFILE$stub:
.indirect_symbol _DBF_DBFFILE_TDBFFILE_$__GETINDEXBYNAME$ANSISTRING$$TINDEXFILE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXFILE_$__DELETEINDEX$ANSISTRING$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXFILE_$__DELETEINDEX$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXFILE_$__INDEXOF$ANSISTRING$$LONGINT$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXFILE_$__INDEXOF$ANSISTRING$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PGFILE_TPAGEDFILE_$__ISSHAREDACCESS$$BOOLEAN$stub:
.indirect_symbol _DBF_PGFILE_TPAGEDFILE_$__ISSHAREDACCESS$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXFILE_$__CREATEINDEX$ANSISTRING$ANSISTRING$TINDEXOPTIONS$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXFILE_$__CREATEINDEX$ANSISTRING$ANSISTRING$TINDEXOPTIONS
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_CATCHES$stub:
.indirect_symbol FPC_CATCHES
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXFILE_$__SETINDEXNAME$ANSISTRING$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXFILE_$__SETINDEXNAME$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXFILE_$__CLEARINDEX$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXFILE_$__CLEARINDEX
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXFILE_$__SETUPDATEMODE$TINDEXUPDATEMODE$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXFILE_$__SETUPDATEMODE$TINDEXUPDATEMODE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXFILE_$__CLEAR$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXFILE_$__CLEAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXFILE_$__REPAGEFILE$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXFILE_$__REPAGEFILE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXFILE_$__COMPACTFILE$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXFILE_$__COMPACTFILE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TLIST_$__REMOVE$POINTER$$LONGINT$stub:
.indirect_symbol _CLASSES_TLIST_$__REMOVE$POINTER$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TLIST_$__INDEXOF$POINTER$$LONGINT$stub:
.indirect_symbol _CLASSES_TLIST_$__INDEXOF$POINTER$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_DBFFILE_TDBFFILE_$__CLOSEINDEX$ANSISTRING$stub:
.indirect_symbol _DBF_DBFFILE_TDBFFILE_$__CLOSEINDEX$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_DBFFILE_TDBFFILE_$__APPLYAUTOINCTOBUFFER$PCHAR$stub:
.indirect_symbol _DBF_DBFFILE_TDBFFILE_$__APPLYAUTOINCTOBUFFER$PCHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_DBFFILE_TDBFFILE_$_INSERT$PCHAR$$LONGINT_ROLLBACKINDEXESANDRAISE$LONGINT$TERRORCONTEXT$stub:
.indirect_symbol _DBF_DBFFILE_TDBFFILE_$_INSERT$PCHAR$$LONGINT_ROLLBACKINDEXESANDRAISE$LONGINT$TERRORCONTEXT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PGFILE_TPAGEDFILE_$__READHEADER$stub:
.indirect_symbol _DBF_PGFILE_TPAGEDFILE_$__READHEADER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_DBFFILE_TDBFFILE_$__WRITELOCKINFO$PCHAR$stub:
.indirect_symbol _DBF_DBFFILE_TDBFFILE_$__WRITELOCKINFO$PCHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXFILE_$__DELETE$LONGINT$PCHAR$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXFILE_$__DELETE$LONGINT$PCHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PGFILE_TPAGEDFILE_$__RESETERROR$stub:
.indirect_symbol _DBF_PGFILE_TPAGEDFILE_$__RESETERROR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXFILE_$__INSERTERROR$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXFILE_$__INSERTERROR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_NOW$$TDATETIME$stub:
.indirect_symbol _SYSUTILS_NOW$$TDATETIME
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXFILE_$__UPDATE$LONGINT$PCHAR$PCHAR$$BOOLEAN$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXFILE_$__UPDATE$LONGINT$PCHAR$PCHAR$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXFILE_$__RECORDDELETED$LONGINT$PCHAR$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXFILE_$__RECORDDELETED$LONGINT$PCHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXFILE_$__RECORDRECALLED$LONGINT$PCHAR$$BOOLEAN$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXFILE_$__RECORDRECALLED$LONGINT$PCHAR$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PGFILE_TPAGEDFILE_$__SETRECORDSIZE$LONGINT$stub:
.indirect_symbol _DBF_PGFILE_TPAGEDFILE_$__SETRECORDSIZE$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_CURSOR_TVIRTUALCURSOR_$__CREATE$TPAGEDFILE$$TVIRTUALCURSOR$stub:
.indirect_symbol _DBF_CURSOR_TVIRTUALCURSOR_$__CREATE$TPAGEDFILE$$TVIRTUALCURSOR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PGFILE_TPAGEDFILE_$__ISRECORDPRESENT$LONGINT$$BOOLEAN$stub:
.indirect_symbol _DBF_PGFILE_TPAGEDFILE_$__ISRECORDPRESENT$LONGINT$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_WTIL_GETACP$$LONGWORD$stub:
.indirect_symbol _DBF_WTIL_GETACP$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_DBFFILE_TDBFGLOBALS_$__SETDEFAULTCREATECODEPAGE$LONGINT$stub:
.indirect_symbol _DBF_DBFFILE_TDBFGLOBALS_$__SETDEFAULTCREATECODEPAGE$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_WTIL_ENUMSYSTEMCODEPAGES$POINTER$LONGWORD$$LONGBOOL$stub:
.indirect_symbol _DBF_WTIL_ENUMSYSTEMCODEPAGES$POINTER$LONGWORD$$LONGBOOL
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_DBFFILE_TDBFGLOBALS_$__INITUSERNAME$stub:
.indirect_symbol _DBF_DBFFILE_TDBFGLOBALS_$__INITUSERNAME
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_BASEUNIX_FPUNAME$UTSNAME$$LONGINT$stub:
.indirect_symbol _BASEUNIX_FPUNAME$UTSNAME$$LONGINT
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
.globl	_INIT_DBF_DBFFILE_TDBFINDEXMISSINGEVENT
_INIT_DBF_DBFFILE_TDBFINDEXMISSINGEVENT:
	.byte	6,21
	.ascii	"TDbfIndexMissingEvent"
	.byte	0,1,1,10
	.ascii	"DeleteLink"
	.ascii	"\007Boolean"
	.byte	0
	.long	_RTTI_SYSTEM_BOOLEAN

.const_data
	.align 2
.globl	_RTTI_DBF_DBFFILE_TDBFINDEXMISSINGEVENT
_RTTI_DBF_DBFFILE_TDBFINDEXMISSINGEVENT:
	.byte	6,21
	.ascii	"TDbfIndexMissingEvent"
	.byte	0,1,1,10
	.ascii	"DeleteLink"
	.ascii	"\007Boolean"
	.byte	0
	.long	_RTTI_SYSTEM_BOOLEAN

.const_data
	.align 2
.globl	_INIT_DBF_DBFFILE_TUPDATENULLFIELD
_INIT_DBF_DBFFILE_TUPDATENULLFIELD:
	.byte	3,16
	.ascii	"TUpdateNullField"
	.byte	1
	.long	0,1,0
	.byte	8
	.ascii	"unfClear"
	.byte	6
	.ascii	"unfSet"
	.byte	11
	.ascii	"dbf_dbffile"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_DBF_DBFFILE_TUPDATENULLFIELD
_RTTI_DBF_DBFFILE_TUPDATENULLFIELD:
	.byte	3,16
	.ascii	"TUpdateNullField"
	.byte	1
	.long	0,1,0
	.byte	8
	.ascii	"unfClear"
	.byte	6
	.ascii	"unfSet"
	.byte	11
	.ascii	"dbf_dbffile"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_DBF_DBFFILE_TUPDATENULLFIELD_s2o
_RTTI_DBF_DBFFILE_TUPDATENULLFIELD_s2o:
	.long	2,0
	.long	_RTTI_DBF_DBFFILE_TUPDATENULLFIELD+31
	.long	1
	.long	_RTTI_DBF_DBFFILE_TUPDATENULLFIELD+40

.const_data
	.align 2
.globl	_RTTI_DBF_DBFFILE_TUPDATENULLFIELD_o2s
_RTTI_DBF_DBFFILE_TUPDATENULLFIELD_o2s:
	.long	0
	.long	_RTTI_DBF_DBFFILE_TUPDATENULLFIELD+31
	.long	_RTTI_DBF_DBFFILE_TUPDATENULLFIELD+40

.const_data
	.align 2
.globl	_INIT_DBF_DBFFILE_TNULLFIELDFLAG
_INIT_DBF_DBFFILE_TNULLFIELDFLAG:
	.byte	3,14
	.ascii	"TNullFieldFlag"
	.byte	1
	.long	0,1,0
	.byte	10
	.ascii	"nfNullFlag"
	.byte	15
	.ascii	"nfVarlengthFlag"
	.byte	11
	.ascii	"dbf_dbffile"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_DBF_DBFFILE_TNULLFIELDFLAG
_RTTI_DBF_DBFFILE_TNULLFIELDFLAG:
	.byte	3,14
	.ascii	"TNullFieldFlag"
	.byte	1
	.long	0,1,0
	.byte	10
	.ascii	"nfNullFlag"
	.byte	15
	.ascii	"nfVarlengthFlag"
	.byte	11
	.ascii	"dbf_dbffile"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_DBF_DBFFILE_TNULLFIELDFLAG_s2o
_RTTI_DBF_DBFFILE_TNULLFIELDFLAG_s2o:
	.long	2,0
	.long	_RTTI_DBF_DBFFILE_TNULLFIELDFLAG+29
	.long	1
	.long	_RTTI_DBF_DBFFILE_TNULLFIELDFLAG+40

.const_data
	.align 2
.globl	_RTTI_DBF_DBFFILE_TNULLFIELDFLAG_o2s
_RTTI_DBF_DBFFILE_TNULLFIELDFLAG_o2s:
	.long	0
	.long	_RTTI_DBF_DBFFILE_TNULLFIELDFLAG+29
	.long	_RTTI_DBF_DBFFILE_TNULLFIELDFLAG+40

.const_data
	.align 2
.globl	_$DBF_DBFFILE$_Ld20
_$DBF_DBFFILE$_Ld20:
	.short	0
	.long	_$DBF_DBFFILE$_Ld21
	.align 2
.globl	_$DBF_DBFFILE$_Ld21
_$DBF_DBFFILE$_Ld21:
	.short	0

.const_data
	.align 2
.globl	_INIT_DBF_DBFFILE_TDBFGLOBALS
_INIT_DBF_DBFFILE_TDBFGLOBALS:
	.byte	15,11
	.ascii	"TDbfGlobals"
	.long	4,1
	.long	_INIT_SYSTEM_ANSISTRING
	.long	20

.const_data
	.align 2
.globl	_RTTI_DBF_DBFFILE_TDBFGLOBALS
_RTTI_DBF_DBFFILE_TDBFGLOBALS:
	.byte	15,11
	.ascii	"TDbfGlobals"
	.long	_VMT_DBF_DBFFILE_TDBFGLOBALS
	.long	_RTTI_SYSTEM_TOBJECT
	.short	0
	.byte	11
	.ascii	"dbf_dbffile"
	.short	0

.const_data
	.align 2
.globl	_$DBF_DBFFILE$_Ld23
_$DBF_DBFFILE$_Ld23:
	.short	0
	.long	_$DBF_DBFFILE$_Ld24
	.align 2
.globl	_$DBF_DBFFILE$_Ld24
_$DBF_DBFFILE$_Ld24:
	.short	0

.const_data
	.align 2
.globl	_INIT_DBF_DBFFILE_TDBFFILE
_INIT_DBF_DBFFILE_TDBFFILE:
	.byte	15,8
	.ascii	"TDbfFile"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_DBF_DBFFILE_TDBFFILE
_RTTI_DBF_DBFFILE_TDBFFILE:
	.byte	15,8
	.ascii	"TDbfFile"
	.long	_VMT_DBF_DBFFILE_TDBFFILE
	.long	_RTTI_DBF_PGFILE_TPAGEDFILE
	.short	0
	.byte	11
	.ascii	"dbf_dbffile"
	.short	0

.const_data
	.align 2
.globl	_$DBF_DBFFILE$_Ld26
_$DBF_DBFFILE$_Ld26:
	.short	0
	.long	_$DBF_DBFFILE$_Ld27
	.align 2
.globl	_$DBF_DBFFILE$_Ld27
_$DBF_DBFFILE$_Ld27:
	.short	0

.const_data
	.align 2
.globl	_INIT_DBF_DBFFILE_TDBFCURSOR
_INIT_DBF_DBFFILE_TDBFCURSOR:
	.byte	15,10
	.ascii	"TDbfCursor"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_DBF_DBFFILE_TDBFCURSOR
_RTTI_DBF_DBFFILE_TDBFCURSOR:
	.byte	15,10
	.ascii	"TDbfCursor"
	.long	_VMT_DBF_DBFFILE_TDBFCURSOR
	.long	_RTTI_DBF_CURSOR_TVIRTUALCURSOR
	.short	0
	.byte	11
	.ascii	"dbf_dbffile"
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
L_TC_SYSUTILS_DEFAULTFORMATSETTINGS$non_lazy_ptr:
.indirect_symbol _TC_SYSUTILS_DEFAULTFORMATSETTINGS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_DBF_FIELDS_TDBFFIELDDEFS$non_lazy_ptr:
.indirect_symbol _VMT_DBF_FIELDS_TDBFFIELDDEFS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_CLASSES_TSTRINGLIST$non_lazy_ptr:
.indirect_symbol _VMT_CLASSES_TSTRINGLIST
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_CLASSES_TLIST$non_lazy_ptr:
.indirect_symbol _VMT_CLASSES_TLIST
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_DBF_MEMO_TNULLMEMOFILE$non_lazy_ptr:
.indirect_symbol _VMT_DBF_MEMO_TNULLMEMOFILE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_DBF_MEMO_TFOXPROMEMOFILE$non_lazy_ptr:
.indirect_symbol _VMT_DBF_MEMO_TFOXPROMEMOFILE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_DBF_MEMO_TDBASEMEMOFILE$non_lazy_ptr:
.indirect_symbol _VMT_DBF_MEMO_TDBASEMEMOFILE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DBF_DBFFILE$_Ld1$non_lazy_ptr:
.indirect_symbol _$DBF_DBFFILE$_Ld1
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_DBF_IDXFILE_TINDEXFILE$non_lazy_ptr:
.indirect_symbol _VMT_DBF_IDXFILE_TINDEXFILE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DBF_DBFFILE$_Ld3$non_lazy_ptr:
.indirect_symbol _$DBF_DBFFILE$_Ld3
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DBF_DBFFILE$_Ld4$non_lazy_ptr:
.indirect_symbol _$DBF_DBFFILE$_Ld4
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DBF_DBFFILE$_Ld5$non_lazy_ptr:
.indirect_symbol _$DBF_DBFFILE$_Ld5
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_DBF_LANG_LANGID_TO_CODEPAGE$non_lazy_ptr:
.indirect_symbol _TC_DBF_LANG_LANGID_TO_CODEPAGE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_DBF_DBFFILE_DBFGLOBALS$non_lazy_ptr:
.indirect_symbol _U_DBF_DBFFILE_DBFGLOBALS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_DBF_STR_STRING_INVALID_DBF_FILE$non_lazy_ptr:
.indirect_symbol _U_DBF_STR_STRING_INVALID_DBF_FILE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_DBF_COMMON_EDBFERROR$non_lazy_ptr:
.indirect_symbol _VMT_DBF_COMMON_EDBFERROR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_DBF_LANG_LANGID_TO_LOCALE$non_lazy_ptr:
.indirect_symbol _TC_DBF_LANG_LANGID_TO_LOCALE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
LFPC_EMPTYCHAR$non_lazy_ptr:
.indirect_symbol FPC_EMPTYCHAR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_SYSTEM_WIDESTRINGMANAGER$non_lazy_ptr:
.indirect_symbol _U_SYSTEM_WIDESTRINGMANAGER
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DBF_DBFFILE$_Ld6$non_lazy_ptr:
.indirect_symbol _$DBF_DBFFILE$_Ld6
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DBF_DBFFILE$_Ld7$non_lazy_ptr:
.indirect_symbol _$DBF_DBFFILE$_Ld7
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DBF_DBFFILE$_Ld9$non_lazy_ptr:
.indirect_symbol _$DBF_DBFFILE$_Ld9
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DBF_DBFFILE$_Ld11$non_lazy_ptr:
.indirect_symbol _$DBF_DBFFILE$_Ld11
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_DBF_STR_STRING_INVALID_DBF_FILE_FIELDERROR$non_lazy_ptr:
.indirect_symbol _U_DBF_STR_STRING_INVALID_DBF_FILE_FIELDERROR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DBF_DBFFILE$_Ld13$non_lazy_ptr:
.indirect_symbol _$DBF_DBFFILE$_Ld13
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_DBF_STR_STRING_INVALID_FIELD_COUNT$non_lazy_ptr:
.indirect_symbol _U_DBF_STR_STRING_INVALID_FIELD_COUNT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_DBF_DBFFILE_TDBFFILE$non_lazy_ptr:
.indirect_symbol _VMT_DBF_DBFFILE_TDBFFILE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_DBF_IDXFILE_TDBFINDEXDEF$non_lazy_ptr:
.indirect_symbol _VMT_DBF_IDXFILE_TDBFINDEXDEF
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_CLASSES_TMEMORYSTREAM$non_lazy_ptr:
.indirect_symbol _VMT_CLASSES_TMEMORYSTREAM
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_SYSUTILS_EMPTYSTR$non_lazy_ptr:
.indirect_symbol _TC_SYSUTILS_EMPTYSTR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DBF_DBFFILE$_Ld15$non_lazy_ptr:
.indirect_symbol _$DBF_DBFFILE$_Ld15
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DBF_DBFFILE$_Ld16$non_lazy_ptr:
.indirect_symbol _$DBF_DBFFILE$_Ld16
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_DBF_DBFFILE_TDBFFILE_$_SETFIELDDATA$crcD3565DC4_SRCNILTOUPDATENULLFIELD$non_lazy_ptr:
.indirect_symbol _TC_DBF_DBFFILE_TDBFFILE_$_SETFIELDDATA$crcD3565DC4_SRCNILTOUPDATENULLFIELD
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DBF_DBFFILE$_Ld17$non_lazy_ptr:
.indirect_symbol _$DBF_DBFFILE$_Ld17
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_DBF_DBFFILE_TDBFFILE_$_SETFIELDDATA$crcD3565DC4_ISBLOBFIELDTOPADCHAR$non_lazy_ptr:
.indirect_symbol _TC_DBF_DBFFILE_TDBFFILE_$_SETFIELDDATA$crcD3565DC4_ISBLOBFIELDTOPADCHAR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DBF_DBFFILE$_Ld18$non_lazy_ptr:
.indirect_symbol _$DBF_DBFFILE$_Ld18
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_DBF_DBFFILE_TDBFFILE_$_OPENINDEX$crc1FB9AA30_INDEXOPENMODE$non_lazy_ptr:
.indirect_symbol _TC_DBF_DBFFILE_TDBFFILE_$_OPENINDEX$crc1FB9AA30_INDEXOPENMODE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_DBF_STR_STRING_WRITE_INDEX_ERROR$non_lazy_ptr:
.indirect_symbol _U_DBF_STR_STRING_WRITE_INDEX_ERROR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_DBF_STR_STRING_WRITE_ERROR$non_lazy_ptr:
.indirect_symbol _U_DBF_STR_STRING_WRITE_ERROR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_DBF_COMMON_EDBFWRITEERROR$non_lazy_ptr:
.indirect_symbol _VMT_DBF_COMMON_EDBFWRITEERROR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_DBF_STR_STRING_RECORD_LOCKED$non_lazy_ptr:
.indirect_symbol _U_DBF_STR_STRING_RECORD_LOCKED
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_DBF_DBFFILE_TEMPCODEPAGELIST$non_lazy_ptr:
.indirect_symbol _U_DBF_DBFFILE_TEMPCODEPAGELIST
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_DBFFILE_CODEPAGESPROC$PCHAR$$LONGWORD$non_lazy_ptr:
.indirect_symbol _DBF_DBFFILE_CODEPAGESPROC$PCHAR$$LONGWORD
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

