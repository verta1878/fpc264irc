# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_UNIXUTIL_ARRAYSTRINGTOPPCHAR$array_of_ANSISTRING$LONGINT$$PPCHAR
_UNIXUTIL_ARRAYSTRINGTOPPCHAR$array_of_ANSISTRING$LONGINT$$PPCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-36(%ebp)
	movl	%esi,-32(%ebp)
	movl	%edi,-28(%ebp)
	call	Lj4
Lj4:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-12(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj5
	jmp	Lj6
Lj5:
	movl	$0,-16(%ebp)
	jmp	Lj3
Lj6:
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	addl	%eax,%edx
	addl	$2,%edx
	shll	$2,%edx
	leal	-20(%ebp),%eax
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj13
	jmp	Lj14
Lj13:
	movl	$0,-16(%ebp)
	jmp	Lj3
Lj14:
	movl	-12(%ebp),%edx
	movl	$0,-24(%ebp)
	cmpl	-24(%ebp),%edx
	jl	Lj18
	decl	-24(%ebp)
	.align 2
Lj19:
	incl	-24(%ebp)
	movl	-20(%ebp),%ecx
	movl	-24(%ebp),%eax
	movl	-8(%ebp),%esi
	addl	%esi,%eax
	movl	-4(%ebp),%edi
	movl	-24(%ebp),%esi
	movl	(%edi,%esi,4),%esi
	testl	%esi,%esi
	jne	Lj22
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj4(%ebx),%edi
	movl	%edi,%esi
Lj22:
	movl	%esi,(%ecx,%eax,4)
	cmpl	-24(%ebp),%edx
	jg	Lj19
Lj18:
	movl	-20(%ebp),%ecx
	movl	-12(%ebp),%eax
	incl	%eax
	movl	-8(%ebp),%edx
	addl	%edx,%eax
	movl	$0,(%ecx,%eax,4)
	movl	-20(%ebp),%eax
	movl	%eax,-16(%ebp)
Lj3:
	movl	-16(%ebp),%eax
	movl	-36(%ebp),%ebx
	movl	-32(%ebp),%esi
	movl	-28(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_UNIXUTIL_FSPLIT$SHORTSTRING$SHORTSTRING$SHORTSTRING$SHORTSTRING
_UNIXUTIL_FSPLIT$SHORTSTRING$SHORTSTRING$SHORTSTRING$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$296,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-20(%ebp)
	movl	$256,-16(%ebp)
	movl	-4(%ebp),%eax
	movzbl	(%eax),%eax
	movl	%eax,-24(%ebp)
	jmp	Lj36
	.align 2
Lj35:
	movl	-16(%ebp),%eax
	cmpl	$256,%eax
	je	Lj40
	jmp	Lj39
Lj40:
	movl	-4(%ebp),%eax
	movzbl	-24(%ebp),%edx
	movb	(%eax,%edx,1),%al
	cmpb	$46,%al
	je	Lj38
	jmp	Lj39
Lj38:
	movl	-24(%ebp),%eax
	movl	%eax,-16(%ebp)
Lj39:
	movl	-4(%ebp),%eax
	movzbl	-24(%ebp),%edx
	movb	(%eax,%edx,1),%al
	cmpb	$47,%al
	je	Lj43
	jmp	Lj44
Lj43:
	movl	-24(%ebp),%eax
	movl	%eax,-20(%ebp)
Lj44:
	decl	-24(%ebp)
Lj36:
	movl	-24(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj47
	jmp	Lj37
Lj47:
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj35
	jmp	Lj37
Lj37:
	leal	-280(%ebp),%eax
	movl	%eax,(%esp)
	movl	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$255,%ecx
	call	Lfpc_shortstr_copy$stub
	leal	-280(%ebp),%ecx
	movl	8(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_to_shortstr$stub
	leal	-280(%ebp),%eax
	movl	%eax,(%esp)
	movl	-20(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	$1,%edx
	call	Lfpc_shortstr_copy$stub
	leal	-280(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_to_shortstr$stub
	leal	-280(%ebp),%eax
	movl	%eax,(%esp)
	movl	-16(%ebp),%ecx
	movl	-20(%ebp),%eax
	subl	%eax,%ecx
	decl	%ecx
	movl	-20(%ebp),%edx
	incl	%edx
	movl	-4(%ebp),%eax
	call	Lfpc_shortstr_copy$stub
	leal	-280(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_to_shortstr$stub
	leave
	ret

.text
	.align 4
.globl	_UNIXUTIL_DIRNAME$SHORTSTRING$$SHORTSTRING
_UNIXUTIL_DIRNAME$SHORTSTRING$$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$792,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	leal	-776(%ebp),%eax
	movl	%eax,(%esp)
	leal	-520(%ebp),%ecx
	leal	-264(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_UNIXUTIL_FSPLIT$SHORTSTRING$SHORTSTRING$SHORTSTRING$SHORTSTRING$stub
	movzbl	-264(%ebp),%eax
	cmpl	$1,%eax
	jg	Lj100
	jmp	Lj101
Lj100:
	movl	$1,(%esp)
	movzbl	-264(%ebp),%ecx
	leal	-264(%ebp),%eax
	movl	$255,%edx
	call	L_SYSTEM_DELETE$OPENSTRING$LONGINT$LONGINT$stub
Lj101:
	leal	-264(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_to_shortstr$stub
	leave
	ret

.text
	.align 4
.globl	_UNIXUTIL_STRINGTOPPCHAR$SHORTSTRING$SMALLINT$$PPCHAR
_UNIXUTIL_STRINGTOPPCHAR$SHORTSTRING$SMALLINT$$PPCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	call	Lj117
Lj117:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movl	L_$UNIXUTIL$_Ld1$non_lazy_ptr-Lj117(%ebx),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_concat$stub
	movl	-4(%ebp),%eax
	leal	1(%eax),%eax
	movw	-8(%ebp),%dx
	call	L_UNIXUTIL_STRINGTOPPCHAR$PCHAR$SMALLINT$$PPCHAR$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_UNIXUTIL_STRINGTOPPCHAR$ANSISTRING$SMALLINT$$PPCHAR
_UNIXUTIL_STRINGTOPPCHAR$ANSISTRING$SMALLINT$$PPCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	call	Lj133
Lj133:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj138
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj133(%ebx),%edx
	movl	%edx,%eax
Lj138:
	movw	-8(%ebp),%dx
	call	L_UNIXUTIL_STRINGTOPPCHAR$PCHAR$SMALLINT$$PPCHAR$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_UNIXUTIL_STRINGTOPPCHAR$PCHAR$SMALLINT$$PPCHAR
_UNIXUTIL_STRINGTOPPCHAR$PCHAR$SMALLINT$$PPCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-24(%ebp)
	movl	$1,-20(%ebp)
	jmp	Lj148
	.align 2
Lj147:
	jmp	Lj151
	.align 2
Lj150:
	incl	-24(%ebp)
Lj151:
	movl	-24(%ebp),%eax
	movzbl	(%eax),%eax
	subl	$9,%eax
	cmpl	$2,%eax
	jb	Lj153
	cmpl	$23,%eax
	stc
	je	Lj153
	clc
Lj153:
	jc	Lj150
	jmp	Lj152
Lj152:
	incl	-20(%ebp)
	movl	-24(%ebp),%eax
	movb	(%eax),%al
	cmpb	$34,%al
	je	Lj154
	jmp	Lj155
Lj154:
	incl	-24(%ebp)
	jmp	Lj157
	.align 2
Lj156:
	incl	-24(%ebp)
Lj157:
	movl	-24(%ebp),%eax
	movzbl	(%eax),%eax
	cmpl	$0,%eax
	je	Lj159
	cmpl	$34,%eax
	je	Lj159
Lj159:
	je	Lj158
	jmp	Lj156
Lj158:
	movl	-24(%ebp),%eax
	movb	(%eax),%al
	cmpb	$34,%al
	je	Lj160
	jmp	Lj161
Lj160:
	incl	-24(%ebp)
Lj161:
	jmp	Lj162
Lj155:
	jmp	Lj164
	.align 2
Lj163:
	incl	-24(%ebp)
Lj164:
	movl	-24(%ebp),%eax
	movzbl	(%eax),%eax
	cmpl	$0,%eax
	stc
	je	Lj166
	subl	$9,%eax
	cmpl	$2,%eax
	jb	Lj166
	cmpl	$23,%eax
	stc
	je	Lj166
	clc
Lj166:
	jc	Lj165
	jmp	Lj163
Lj165:
Lj162:
Lj148:
	movl	-24(%ebp),%eax
	movb	(%eax),%al
	testb	%al,%al
	jne	Lj147
	jmp	Lj149
Lj149:
	movswl	-8(%ebp),%edx
	movl	-20(%ebp),%eax
	addl	%eax,%edx
	shll	$2,%edx
	leal	-28(%ebp),%eax
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	movl	-28(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-28(%ebp),%eax
	testl	%eax,%eax
	je	Lj173
	jmp	Lj174
Lj173:
	jmp	Lj141
Lj174:
	movswl	-8(%ebp),%eax
	movl	$1,-16(%ebp)
	cmpl	-16(%ebp),%eax
	jl	Lj176
	decl	-16(%ebp)
	.align 2
Lj177:
	incl	-16(%ebp)
	addl	$4,-28(%ebp)
	cmpl	-16(%ebp),%eax
	jg	Lj177
Lj176:
	movl	-4(%ebp),%eax
	movl	%eax,-24(%ebp)
	jmp	Lj181
	.align 2
Lj180:
	jmp	Lj184
	.align 2
Lj183:
	movl	-24(%ebp),%eax
	movb	$0,(%eax)
	incl	-24(%ebp)
Lj184:
	movl	-24(%ebp),%eax
	movzbl	(%eax),%eax
	subl	$9,%eax
	cmpl	$2,%eax
	jb	Lj188
	cmpl	$23,%eax
	stc
	je	Lj188
	clc
Lj188:
	jc	Lj183
	jmp	Lj185
Lj185:
	movl	-24(%ebp),%eax
	movb	(%eax),%al
	cmpb	$34,%al
	je	Lj189
	jmp	Lj190
Lj189:
	incl	-24(%ebp)
	movl	-28(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	%edx,(%eax)
	addl	$4,-28(%ebp)
	movl	-28(%ebp),%eax
	movl	$0,(%eax)
	jmp	Lj196
	.align 2
Lj195:
	incl	-24(%ebp)
Lj196:
	movl	-24(%ebp),%eax
	movzbl	(%eax),%eax
	cmpl	$0,%eax
	je	Lj198
	cmpl	$34,%eax
	je	Lj198
Lj198:
	je	Lj197
	jmp	Lj195
Lj197:
	movl	-24(%ebp),%eax
	movb	(%eax),%al
	cmpb	$34,%al
	je	Lj199
	jmp	Lj200
Lj199:
	movl	-24(%ebp),%eax
	movb	$0,(%eax)
	incl	-24(%ebp)
Lj200:
	jmp	Lj203
Lj190:
	movl	-28(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	%edx,(%eax)
	addl	$4,-28(%ebp)
	movl	-28(%ebp),%eax
	movl	$0,(%eax)
	jmp	Lj209
	.align 2
Lj208:
	incl	-24(%ebp)
Lj209:
	movl	-24(%ebp),%eax
	movzbl	(%eax),%eax
	cmpl	$0,%eax
	stc
	je	Lj211
	subl	$9,%eax
	cmpl	$2,%eax
	jb	Lj211
	cmpl	$23,%eax
	stc
	je	Lj211
	clc
Lj211:
	jc	Lj210
	jmp	Lj208
Lj210:
Lj203:
Lj181:
	movl	-24(%ebp),%eax
	movb	(%eax),%al
	testb	%al,%al
	jne	Lj180
	jmp	Lj182
Lj182:
Lj141:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_UNIXUTIL_BASENAME$SHORTSTRING$SHORTSTRING$$SHORTSTRING
_UNIXUTIL_BASENAME$SHORTSTRING$SHORTSTRING$$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$792,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	leal	-780(%ebp),%eax
	movl	%eax,(%esp)
	leal	-524(%ebp),%ecx
	leal	-268(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_UNIXUTIL_FSPLIT$SHORTSTRING$SHORTSTRING$SHORTSTRING$SHORTSTRING$stub
	leal	-780(%ebp),%edx
	movl	-8(%ebp),%eax
	call	Lfpc_shortstr_compare_equal$stub
	testl	%eax,%eax
	jne	Lj222
	jmp	Lj223
Lj222:
	leal	-780(%ebp),%eax
	movl	%eax,(%esp)
	leal	-524(%ebp),%ecx
	leal	-524(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_concat$stub
Lj223:
	leal	-524(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_to_shortstr$stub
	leave
	ret

.text
	.align 4
.globl	_UNIXUTIL_FNMATCH$SHORTSTRING$SHORTSTRING$$BOOLEAN
_UNIXUTIL_FNMATCH$SHORTSTRING$SHORTSTRING$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movzbl	(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	%ebp,%eax
	movl	$1,%ecx
	movl	$1,%edx
	call	L_UNIXUTIL_FNMATCH$crc05A326C1_DOFNMATCH$LONGINT$LONGINT$$BOOLEAN$stub
	movb	%al,-9(%ebp)
	movb	-9(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_UNIXUTIL_FNMATCH$crc05A326C1_DOFNMATCH$LONGINT$LONGINT$$BOOLEAN
_UNIXUTIL_FNMATCH$crc05A326C1_DOFNMATCH$LONGINT$LONGINT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movb	$1,-14(%ebp)
	jmp	Lj261
	.align 2
Lj260:
	movl	-12(%ebp),%eax
	movl	-4(%eax),%eax
	movzbl	-4(%ebp),%edx
	movb	(%eax,%edx,1),%al
	cmpb	$42,%al
	jb	Lj264
	subb	$42,%al
	je	Lj266
	subb	$21,%al
	je	Lj265
	jmp	Lj264
Lj265:
	movl	-12(%ebp),%eax
	movl	-20(%eax),%eax
	cmpl	-8(%ebp),%eax
	setgeb	-14(%ebp)
	jmp	Lj263
Lj266:
	jmp	Lj270
	.align 2
Lj269:
	incl	-4(%ebp)
	movl	-12(%ebp),%eax
	movl	-16(%eax),%eax
	cmpl	-4(%ebp),%eax
	jl	Lj272
	jmp	Lj273
Lj272:
	jmp	Lj271
Lj273:
	movl	-12(%ebp),%eax
	movl	-4(%eax),%eax
	movzbl	-4(%ebp),%edx
	movb	(%eax,%edx,1),%al
	cmpb	$42,%al
	jb	Lj275
	subb	$42,%al
	je	Lj276
	subb	$21,%al
	je	Lj277
	jmp	Lj275
Lj276:
	jmp	Lj274
Lj277:
	movl	-12(%ebp),%eax
	movl	-20(%eax),%eax
	cmpl	-8(%ebp),%eax
	jl	Lj278
	jmp	Lj279
Lj278:
	movb	$0,-13(%ebp)
	jmp	Lj244
Lj279:
	incl	-8(%ebp)
	jmp	Lj274
Lj275:
	movb	$0,-14(%ebp)
Lj274:
Lj270:
	cmpb	$0,-14(%ebp)
	jne	Lj269
	jmp	Lj271
Lj271:
	movb	$0,-14(%ebp)
	movl	-12(%ebp),%eax
	movl	-16(%eax),%eax
	cmpl	-4(%ebp),%eax
	jge	Lj286
	jmp	Lj287
Lj286:
	.align 2
Lj288:
	jmp	Lj292
	.align 2
Lj291:
	incl	-8(%ebp)
Lj292:
	movl	-12(%ebp),%eax
	movl	-20(%eax),%eax
	cmpl	-8(%ebp),%eax
	jge	Lj294
	jmp	Lj293
Lj294:
	movl	-12(%ebp),%eax
	movl	-8(%eax),%ecx
	movzbl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-4(%eax),%eax
	movzbl	-4(%ebp),%ebx
	movb	(%ecx,%edx,1),%dl
	cmpb	(%eax,%ebx,1),%dl
	jne	Lj291
	jmp	Lj293
Lj293:
	movl	-12(%ebp),%eax
	movl	-20(%eax),%eax
	cmpl	-8(%ebp),%eax
	jg	Lj295
	jmp	Lj296
Lj295:
	movl	-8(%ebp),%ecx
	incl	%ecx
	movl	-4(%ebp),%edx
	incl	%edx
	movl	-12(%ebp),%eax
	call	L_UNIXUTIL_FNMATCH$crc05A326C1_DOFNMATCH$LONGINT$LONGINT$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj297
	jmp	Lj298
Lj297:
	movl	-12(%ebp),%eax
	movl	-16(%eax),%eax
	movl	%eax,-4(%ebp)
	movl	-12(%ebp),%eax
	movl	-20(%eax),%eax
	movl	%eax,-8(%ebp)
	movb	$1,-14(%ebp)
	jmp	Lj290
	jmp	Lj311
Lj298:
	incl	-8(%ebp)
Lj311:
	jmp	Lj312
Lj296:
	movl	-12(%ebp),%eax
	movl	-20(%eax),%eax
	cmpl	-8(%ebp),%eax
	je	Lj313
	jmp	Lj314
Lj313:
	movb	$1,-14(%ebp)
	jmp	Lj290
Lj314:
Lj312:
	movl	-12(%ebp),%eax
	movl	-20(%eax),%eax
	cmpl	-8(%ebp),%eax
	jl	Lj290
	jmp	Lj288
Lj290:
	jmp	Lj317
Lj287:
	movl	-12(%ebp),%eax
	movl	-20(%eax),%eax
	movl	%eax,-8(%ebp)
	movb	$1,-14(%ebp)
Lj317:
	jmp	Lj263
Lj264:
	movl	-12(%ebp),%eax
	movl	-20(%eax),%eax
	cmpl	-8(%ebp),%eax
	jge	Lj324
	jmp	Lj323
Lj324:
	movl	-12(%ebp),%eax
	movl	-4(%eax),%edx
	movzbl	-4(%ebp),%ebx
	movl	-12(%ebp),%eax
	movl	-8(%eax),%eax
	movzbl	-8(%ebp),%ecx
	movb	(%edx,%ebx,1),%dl
	cmpb	(%eax,%ecx,1),%dl
	je	Lj322
	jmp	Lj323
Lj322:
	movb	$1,-14(%ebp)
	jmp	Lj325
Lj323:
	movb	$0,-14(%ebp)
Lj325:
Lj263:
	incl	-4(%ebp)
	incl	-8(%ebp)
Lj261:
	cmpb	$0,-14(%ebp)
	jne	Lj326
	jmp	Lj262
Lj326:
	movl	-12(%ebp),%eax
	movl	-16(%eax),%eax
	cmpl	-4(%ebp),%eax
	jge	Lj260
	jmp	Lj262
Lj262:
	cmpb	$0,-14(%ebp)
	jne	Lj329
	jmp	Lj328
Lj329:
	movl	-12(%ebp),%eax
	movl	-20(%eax),%eax
	cmpl	-8(%ebp),%eax
	jl	Lj327
	jmp	Lj328
Lj327:
	movb	$1,-13(%ebp)
	jmp	Lj330
Lj328:
	movb	$0,-13(%ebp)
Lj330:
Lj244:
	movb	-13(%ebp),%al
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_UNIXUTIL_GETFS$TEXT$$LONGINT
_UNIXUTIL_GETFS$TEXT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$55216,%eax
	je	Lj333
	jmp	Lj334
Lj333:
	movl	$-1,-8(%ebp)
	jmp	Lj331
	jmp	Lj337
Lj334:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-8(%ebp)
Lj337:
Lj331:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_UNIXUTIL_GETFS$file$$LONGINT
_UNIXUTIL_GETFS$file$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$55216,%eax
	je	Lj342
	jmp	Lj343
Lj342:
	movl	$-1,-8(%ebp)
	jmp	Lj340
	jmp	Lj346
Lj343:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-8(%ebp)
Lj346:
Lj340:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_UNIXUTIL_JULIANTOGREGORIAN$LONGINT$WORD$WORD$WORD
_UNIXUTIL_JULIANTOGREGORIAN$LONGINT$WORD$WORD$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	subl	$1721119,%eax
	shll	$2,%eax
	decl	%eax
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%ecx
	movl	$963315389,%eax
	imull	%ecx
	movl	%ecx,%eax
	sarl	$15,%edx
	shrl	$31,%eax
	addl	%eax,%edx
	movl	%edx,-4(%ebp)
	movl	-24(%ebp),%eax
	cltd
	movl	$146097,%ecx
	idivl	%ecx
	orl	$3,%edx
	movl	%edx,-20(%ebp)
	movl	-20(%ebp),%ecx
	movl	$376287347,%eax
	imull	%ecx
	movl	%ecx,%eax
	sarl	$7,%edx
	shrl	$31,%eax
	addl	%eax,%edx
	movl	%edx,-16(%ebp)
	movl	-20(%ebp),%eax
	cltd
	movl	$1461,%ecx
	idivl	%ecx
	addl	$4,%edx
	shrl	$2,%edx
	imull	$5,%edx
	subl	$3,%edx
	movl	%edx,-24(%ebp)
	movl	-24(%ebp),%eax
	cltd
	movl	$153,%ecx
	idivl	%ecx
	movl	%edx,%ecx
	addl	$5,%ecx
	movl	$1717986919,%eax
	imull	%ecx
	movl	%ecx,%eax
	sarl	$1,%edx
	shrl	$31,%eax
	addl	%eax,%edx
	movl	8(%ebp),%eax
	movw	%dx,(%eax)
	movl	-24(%ebp),%ecx
	movl	$-701792041,%eax
	imull	%ecx
	movl	%ecx,%eax
	addl	%eax,%edx
	sarl	$7,%edx
	shrl	$31,%eax
	addl	%eax,%edx
	movl	%edx,-28(%ebp)
	movl	-28(%ebp),%eax
	cmpl	$10,%eax
	jge	Lj365
	jmp	Lj366
Lj365:
	incl	-16(%ebp)
	subl	$12,-28(%ebp)
Lj366:
	addl	$3,-28(%ebp)
	movl	-12(%ebp),%eax
	movw	-28(%ebp),%dx
	movw	%dx,(%eax)
	movl	-4(%ebp),%eax
	imull	$100,%eax
	movl	-16(%ebp),%edx
	addl	%edx,%eax
	movl	-8(%ebp),%edx
	movw	%ax,(%edx)
	leave
	ret

.text
	.align 4
.globl	_UNIXUTIL_EPOCHTOLOCAL$LONGINT$WORD$WORD$WORD$WORD$WORD$WORD
_UNIXUTIL_EPOCHTOLOCAL$LONGINT$WORD$WORD$WORD$WORD$WORD$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	call	Lj372
Lj372:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	L_U_UNIXUTIL_TZSECONDS$non_lazy_ptr-Lj372(%ebx),%eax
	movl	(%eax),%eax
	addl	%eax,-4(%ebp)
	movl	-4(%ebp),%ecx
	movl	$-1037155065,%eax
	imull	%ecx
	movl	%ecx,%eax
	addl	%eax,%edx
	sarl	$16,%edx
	shrl	$31,%eax
	addl	%eax,%edx
	addl	$2440588,%edx
	movl	%edx,-16(%ebp)
	movl	20(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_UNIXUTIL_JULIANTOGREGORIAN$LONGINT$WORD$WORD$WORD$stub
	movl	-4(%ebp),%eax
	cltd
	movl	$86400,%ecx
	idivl	%ecx
	movl	%edx,%eax
	sarl	$31,%edx
	xorl	%edx,%eax
	subl	%edx,%eax
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%ecx
	movl	$-1851608123,%eax
	imull	%ecx
	movl	%ecx,%eax
	addl	%eax,%edx
	sarl	$11,%edx
	shrl	$31,%eax
	addl	%eax,%edx
	movl	16(%ebp),%eax
	movw	%dx,(%eax)
	movl	-4(%ebp),%eax
	cltd
	movl	$3600,%ecx
	idivl	%ecx
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%ecx
	movl	$-2004318071,%eax
	imull	%ecx
	movl	%ecx,%eax
	addl	%eax,%edx
	sarl	$5,%edx
	shrl	$31,%eax
	addl	%eax,%edx
	movl	12(%ebp),%eax
	movw	%dx,(%eax)
	movl	-4(%ebp),%eax
	cltd
	movl	$60,%ecx
	idivl	%ecx
	movl	8(%ebp),%eax
	movw	%dx,(%eax)
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_UNIXUTIL_LOCALTOEPOCH$WORD$WORD$WORD$WORD$WORD$WORD$$LONGINT
_UNIXUTIL_LOCALTOEPOCH$WORD$WORD$WORD$WORD$WORD$WORD$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	call	Lj394
Lj394:
	popl	%ebx
	movw	%ax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movw	%cx,-12(%ebp)
	movzwl	-12(%ebp),%ecx
	movzwl	-8(%ebp),%edx
	movzwl	-4(%ebp),%eax
	call	L_UNIXUTIL_GREGORIANTOJULIAN$LONGINT$LONGINT$LONGINT$$LONGINT$stub
	subl	$2440588,%eax
	imull	$86400,%eax
	movzwl	16(%ebp),%edx
	imull	$3600,%edx
	addl	%edx,%eax
	movzwl	12(%ebp),%edx
	imull	$60,%edx
	addl	%edx,%eax
	movzwl	8(%ebp),%edx
	addl	%edx,%eax
	movl	L_U_UNIXUTIL_TZSECONDS$non_lazy_ptr-Lj394(%ebx),%edx
	movl	(%edx),%edx
	subl	%edx,%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_UNIXUTIL_GREGORIANTOJULIAN$LONGINT$LONGINT$LONGINT$$LONGINT
_UNIXUTIL_GREGORIANTOJULIAN$LONGINT$LONGINT$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$2,%eax
	jle	Lj405
	jmp	Lj406
Lj405:
	decl	-4(%ebp)
	addl	$12,-8(%ebp)
Lj406:
	subl	$3,-8(%ebp)
	movl	-4(%ebp),%ecx
	movl	$1374389535,%eax
	imull	%ecx
	movl	%ecx,%eax
	sarl	$5,%edx
	shrl	$31,%eax
	addl	%eax,%edx
	imull	$146097,%edx
	shrl	$2,%edx
	movl	%edx,-20(%ebp)
	movl	-4(%ebp),%eax
	cltd
	movl	$100,%ecx
	idivl	%ecx
	imull	$1461,%edx
	shrl	$2,%edx
	movl	%edx,-24(%ebp)
	movl	-8(%ebp),%ecx
	imull	$153,%ecx
	addl	$2,%ecx
	movl	$1717986919,%eax
	imull	%ecx
	movl	%ecx,%eax
	sarl	$1,%edx
	shrl	$31,%eax
	addl	%eax,%edx
	movl	-12(%ebp),%eax
	addl	%eax,%edx
	addl	$1721119,%edx
	movl	-24(%ebp),%eax
	addl	%eax,%edx
	movl	-20(%ebp),%eax
	addl	%eax,%edx
	movl	%edx,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals


	.align 2
.globl _U_UNIXUTIL_TZSECONDS
.data
.zerofill __DATA, __common, _U_UNIXUTIL_TZSECONDS, 4,2



.data
	.align 2
.globl	_THREADVARLIST_UNIXUTIL
_THREADVARLIST_UNIXUTIL:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const
# End asmlist al_const
# Begin asmlist al_typedconsts

.const
	.align 2
.globl	_$UNIXUTIL$_Ld1
_$UNIXUTIL$_Ld1:
	.ascii	"\001\000\000"
# End asmlist al_typedconsts
# Begin asmlist al_rotypedconsts
# End asmlist al_rotypedconsts
# Begin asmlist al_threadvars
# End asmlist al_threadvars
# Begin asmlist al_imports

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_GETMEM$POINTER$LONGWORD$stub:
.indirect_symbol _SYSTEM_GETMEM$POINTER$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_shortstr_copy$stub:
.indirect_symbol fpc_shortstr_copy
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_shortstr_to_shortstr$stub:
.indirect_symbol fpc_shortstr_to_shortstr
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_UNIXUTIL_FSPLIT$SHORTSTRING$SHORTSTRING$SHORTSTRING$SHORTSTRING$stub:
.indirect_symbol _UNIXUTIL_FSPLIT$SHORTSTRING$SHORTSTRING$SHORTSTRING$SHORTSTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_DELETE$OPENSTRING$LONGINT$LONGINT$stub:
.indirect_symbol _SYSTEM_DELETE$OPENSTRING$LONGINT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_shortstr_concat$stub:
.indirect_symbol fpc_shortstr_concat
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_UNIXUTIL_STRINGTOPPCHAR$PCHAR$SMALLINT$$PPCHAR$stub:
.indirect_symbol _UNIXUTIL_STRINGTOPPCHAR$PCHAR$SMALLINT$$PPCHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_shortstr_compare_equal$stub:
.indirect_symbol fpc_shortstr_compare_equal
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_UNIXUTIL_FNMATCH$crc05A326C1_DOFNMATCH$LONGINT$LONGINT$$BOOLEAN$stub:
.indirect_symbol _UNIXUTIL_FNMATCH$crc05A326C1_DOFNMATCH$LONGINT$LONGINT$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_UNIXUTIL_JULIANTOGREGORIAN$LONGINT$WORD$WORD$WORD$stub:
.indirect_symbol _UNIXUTIL_JULIANTOGREGORIAN$LONGINT$WORD$WORD$WORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_UNIXUTIL_GREGORIANTOJULIAN$LONGINT$LONGINT$LONGINT$$LONGINT$stub:
.indirect_symbol _UNIXUTIL_GREGORIANTOJULIAN$LONGINT$LONGINT$LONGINT$$LONGINT
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
.globl	_INIT_UNIXUTIL_DEF5
_INIT_UNIXUTIL_DEF5:
	.byte	12
	.ascii	"\012AnsiString"
	.long	4,0
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256
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
LFPC_EMPTYCHAR$non_lazy_ptr:
.indirect_symbol FPC_EMPTYCHAR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$UNIXUTIL$_Ld1$non_lazy_ptr:
.indirect_symbol _$UNIXUTIL$_Ld1
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_UNIXUTIL_TZSECONDS$non_lazy_ptr:
.indirect_symbol _U_UNIXUTIL_TZSECONDS
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

