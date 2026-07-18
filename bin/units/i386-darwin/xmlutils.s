# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_XMLUTILS_XML11NAMEPAGES$$PBYTEARRAY
_XMLUTILS_XML11NAMEPAGES$$PBYTEARRAY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	call	Lj4
Lj4:
	popl	%ebx
	movl	L_TC_XMLUTILS_XML11PG$non_lazy_ptr-Lj4(%ebx),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj5
	jmp	Lj6
Lj5:
	leal	-12(%ebp),%eax
	movl	$512,%edx
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	movl	$0,-8(%ebp)
	decl	-8(%ebp)
	.align 2
Lj13:
	incl	-8(%ebp)
	movzbl	-8(%ebp),%eax
	movl	L_TC_XMLUTILS_XML11HIGHPAGES$non_lazy_ptr-Lj4(%ebx),%edx
	btl	%eax,(%edx)
	setcb	%al
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%ecx
	movb	%al,(%edx,%ecx,1)
	cmpl	$255,-8(%ebp)
	jl	Lj13
	movl	-12(%ebp),%eax
	movb	$2,(%eax)
	movl	-12(%ebp),%eax
	movb	$44,3(%eax)
	movl	-12(%ebp),%eax
	movb	$42,32(%eax)
	movl	-12(%ebp),%eax
	movb	$43,33(%eax)
	movl	-12(%ebp),%eax
	movb	$41,47(%eax)
	movl	-12(%ebp),%eax
	movb	$45,48(%eax)
	movl	-12(%ebp),%eax
	movb	$40,253(%eax)
	movl	-12(%ebp),%eax
	movb	$48,255(%eax)
	movl	-12(%ebp),%eax
	leal	256(%eax),%edx
	movl	-12(%ebp),%eax
	movl	$256,%ecx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movl	-12(%ebp),%eax
	movb	$25,256(%eax)
	movl	-12(%ebp),%eax
	movb	$46,259(%eax)
	movl	-12(%ebp),%eax
	movb	$47,288(%eax)
	movl	-12(%ebp),%eax
	movl	L_TC_XMLUTILS_XML11PG$non_lazy_ptr-Lj4(%ebx),%edx
	movl	%eax,(%edx)
Lj6:
	movl	L_TC_XMLUTILS_XML11PG$non_lazy_ptr-Lj4(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_XMLUTILS_ISXML11CHAR$PWIDECHAR$LONGINT$$BOOLEAN
_XMLUTILS_ISXML11CHAR$PWIDECHAR$LONGINT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movw	(%edx,%eax,2),%ax
	cmpw	$55296,%ax
	jae	Lj54
	jmp	Lj53
Lj54:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movw	(%edx,%eax,2),%ax
	cmpw	$56191,%ax
	jbe	Lj52
	jmp	Lj53
Lj52:
	movl	-8(%ebp),%eax
	incl	(%eax)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movw	(%edx,%eax,2),%ax
	cmpw	$56320,%ax
	jae	Lj57
	jmp	Lj56
Lj57:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movw	(%edx,%eax,2),%ax
	cmpw	$57343,%ax
	jbe	Lj55
	jmp	Lj56
Lj55:
	movb	$1,-9(%ebp)
	jmp	Lj58
Lj56:
	movb	$0,-9(%ebp)
Lj58:
	jmp	Lj59
Lj53:
	movb	$0,-9(%ebp)
Lj59:
	movb	-9(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_XMLUTILS_ISXML11CHAR$WIDESTRING$LONGINT$$BOOLEAN
_XMLUTILS_ISXML11CHAR$WIDESTRING$LONGINT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movw	-2(%edx,%eax,2),%ax
	cmpw	$55296,%ax
	jae	Lj66
	jmp	Lj65
Lj66:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movw	-2(%edx,%eax,2),%ax
	cmpw	$56191,%ax
	jbe	Lj64
	jmp	Lj65
Lj64:
	movl	-8(%ebp),%eax
	incl	(%eax)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movw	-2(%edx,%eax,2),%ax
	cmpw	$56320,%ax
	jae	Lj69
	jmp	Lj68
Lj69:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movw	-2(%edx,%eax,2),%ax
	cmpw	$57343,%ax
	jbe	Lj67
	jmp	Lj68
Lj67:
	movb	$1,-9(%ebp)
	jmp	Lj70
Lj68:
	movb	$0,-9(%ebp)
Lj70:
	jmp	Lj71
Lj65:
	movb	$0,-9(%ebp)
Lj71:
	movb	-9(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_XMLUTILS_ISXMLNAME$WIDESTRING$BOOLEAN$$BOOLEAN
_XMLUTILS_ISXMLNAME$WIDESTRING$BOOLEAN$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	call	Lj75
Lj75:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movb	%dl,-8(%ebp)
	movl	-4(%ebp),%edx
	testl	%edx,%edx
	je	Lj80
	movl	-4(%edx),%edx
	shrl	$1,%edx
Lj80:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj83
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj75(%ebx),%ecx
	movl	%ecx,%eax
Lj83:
	movb	-8(%ebp),%cl
	call	L_XMLUTILS_ISXMLNAME$PWIDECHAR$LONGINT$BOOLEAN$$BOOLEAN$stub
	movb	%al,-9(%ebp)
	movb	-9(%ebp),%al
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_XMLUTILS_ISXMLNAME$PWIDECHAR$LONGINT$BOOLEAN$$BOOLEAN
_XMLUTILS_ISXMLNAME$PWIDECHAR$LONGINT$BOOLEAN$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-28(%ebp)
	call	Lj87
Lj87:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movb	%cl,-12(%ebp)
	movb	$0,-13(%ebp)
	cmpb	$0,-12(%ebp)
	jne	Lj90
	jmp	Lj91
Lj90:
	call	L_XMLUTILS_XML11NAMEPAGES$$PBYTEARRAY$stub
	movl	%eax,-20(%ebp)
	jmp	Lj94
Lj91:
	movl	L_TC_XMLUTILS_NAMEPAGES$non_lazy_ptr-Lj87(%ebx),%eax
	movl	%eax,-20(%ebp)
Lj94:
	movl	$0,-24(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj99
	jmp	Lj101
Lj101:
	movl	-20(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-24(%ebp),%ecx
	movzwl	(%eax,%ecx,2),%eax
	shrl	$8,%eax
	movzbl	%al,%eax
	movzbl	(%edx,%eax,1),%eax
	shll	$5,%eax
	movl	-4(%ebp),%ecx
	movl	-24(%ebp),%edx
	movzbl	(%ecx,%edx,2),%ecx
	movl	L_TC_XMLUTILS_NAMINGBITMAP$non_lazy_ptr-Lj87(%ebx),%edx
	btl	%ecx,(%edx,%eax)
	jc	Lj100
	jmp	Lj103
Lj103:
	movl	-4(%ebp),%edx
	movl	-24(%ebp),%eax
	movw	(%edx,%eax,2),%ax
	cmpw	$58,%ax
	je	Lj100
	jmp	Lj102
Lj102:
	cmpb	$0,-12(%ebp)
	jne	Lj104
	jmp	Lj99
Lj104:
	leal	-24(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_XMLUTILS_ISXML11CHAR$PWIDECHAR$LONGINT$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj100
	jmp	Lj99
Lj99:
	jmp	Lj86
Lj100:
	incl	-24(%ebp)
	jmp	Lj110
	.align 2
Lj109:
	movl	-20(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-24(%ebp),%ecx
	movzwl	(%eax,%ecx,2),%eax
	shrl	$8,%eax
	movzbl	%al,%eax
	addl	$256,%eax
	movzbl	(%edx,%eax,1),%eax
	shll	$5,%eax
	movl	-4(%ebp),%ecx
	movl	-24(%ebp),%edx
	movzbl	(%ecx,%edx,2),%edx
	movl	L_TC_XMLUTILS_NAMINGBITMAP$non_lazy_ptr-Lj87(%ebx),%ecx
	btl	%edx,(%ecx,%eax)
	jc	Lj113
	jmp	Lj115
Lj115:
	movl	-4(%ebp),%edx
	movl	-24(%ebp),%eax
	movw	(%edx,%eax,2),%ax
	cmpw	$58,%ax
	je	Lj113
	jmp	Lj114
Lj114:
	cmpb	$0,-12(%ebp)
	jne	Lj116
	jmp	Lj112
Lj116:
	leal	-24(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_XMLUTILS_ISXML11CHAR$PWIDECHAR$LONGINT$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj113
	jmp	Lj112
Lj112:
	jmp	Lj86
Lj113:
	incl	-24(%ebp)
Lj110:
	movl	-24(%ebp),%eax
	cmpl	-8(%ebp),%eax
	jl	Lj109
	jmp	Lj111
Lj111:
	movb	$1,-13(%ebp)
Lj86:
	movb	-13(%ebp),%al
	movl	-28(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_XMLUTILS_ISXMLNAMES$WIDESTRING$BOOLEAN$$BOOLEAN
_XMLUTILS_ISXMLNAMES$WIDESTRING$BOOLEAN$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-28(%ebp)
	call	Lj124
Lj124:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movb	%dl,-8(%ebp)
	cmpb	$0,-8(%ebp)
	jne	Lj125
	jmp	Lj126
Lj125:
	call	L_XMLUTILS_XML11NAMEPAGES$$PBYTEARRAY$stub
	movl	%eax,-16(%ebp)
	jmp	Lj129
Lj126:
	movl	L_TC_XMLUTILS_NAMEPAGES$non_lazy_ptr-Lj124(%ebx),%eax
	movl	%eax,-16(%ebp)
Lj129:
	movb	$0,-9(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj134
	jmp	Lj135
Lj134:
	jmp	Lj123
Lj135:
	movl	$1,-20(%ebp)
	movl	$0,-24(%ebp)
	jmp	Lj141
	.align 2
Lj140:
	movl	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%ecx
	movzwl	-2(%eax,%ecx,2),%eax
	shrl	$8,%eax
	movzbl	%al,%eax
	movl	-24(%ebp),%ecx
	addl	%ecx,%eax
	movzbl	(%edx,%eax,1),%eax
	shll	$5,%eax
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%ecx
	movzbl	-2(%edx,%ecx,2),%edx
	movl	L_TC_XMLUTILS_NAMINGBITMAP$non_lazy_ptr-Lj124(%ebx),%ecx
	btl	%edx,(%ecx,%eax)
	jc	Lj144
	jmp	Lj146
Lj146:
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	movw	-2(%edx,%eax,2),%ax
	cmpw	$58,%ax
	je	Lj144
	jmp	Lj145
Lj145:
	cmpb	$0,-8(%ebp)
	jne	Lj147
	jmp	Lj143
Lj147:
	leal	-20(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_XMLUTILS_ISXML11CHAR$WIDESTRING$LONGINT$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj144
	jmp	Lj143
Lj143:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj155
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj155:
	cmpl	-20(%ebp),%eax
	je	Lj152
	jmp	Lj154
Lj154:
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%edx
	movw	-2(%eax,%edx,2),%ax
	cmpw	$32,%ax
	jne	Lj152
	jmp	Lj153
Lj152:
	jmp	Lj123
Lj153:
	movl	$0,-24(%ebp)
	incl	-20(%ebp)
	jmp	Lj141
Lj144:
	movl	$256,-24(%ebp)
	incl	-20(%ebp)
Lj141:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj160
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj160:
	cmpl	-20(%ebp),%eax
	jge	Lj140
	jmp	Lj142
Lj142:
	movb	$1,-9(%ebp)
Lj123:
	movb	-9(%ebp),%al
	movl	-28(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_XMLUTILS_ISXMLNMTOKEN$WIDESTRING$BOOLEAN$$BOOLEAN
_XMLUTILS_ISXMLNMTOKEN$WIDESTRING$BOOLEAN$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	call	Lj164
Lj164:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movb	%dl,-8(%ebp)
	cmpb	$0,-8(%ebp)
	jne	Lj165
	jmp	Lj166
Lj165:
	call	L_XMLUTILS_XML11NAMEPAGES$$PBYTEARRAY$stub
	movl	%eax,-20(%ebp)
	jmp	Lj169
Lj166:
	movl	L_TC_XMLUTILS_NAMEPAGES$non_lazy_ptr-Lj164(%ebx),%eax
	movl	%eax,-20(%ebp)
Lj169:
	movb	$0,-9(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj174
	jmp	Lj175
Lj174:
	jmp	Lj163
Lj175:
	movl	$1,-16(%ebp)
	jmp	Lj179
	.align 2
Lj178:
	movl	-20(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%ecx
	movzwl	-2(%eax,%ecx,2),%eax
	shrl	$8,%eax
	movzbl	%al,%eax
	addl	$256,%eax
	movzbl	(%edx,%eax,1),%eax
	shll	$5,%eax
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%ecx
	movzbl	-2(%edx,%ecx,2),%edx
	movl	L_TC_XMLUTILS_NAMINGBITMAP$non_lazy_ptr-Lj164(%ebx),%ecx
	btl	%edx,(%ecx,%eax)
	jc	Lj182
	jmp	Lj184
Lj184:
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%edx
	movw	-2(%eax,%edx,2),%ax
	cmpw	$58,%ax
	je	Lj182
	jmp	Lj183
Lj183:
	cmpb	$0,-8(%ebp)
	jne	Lj185
	jmp	Lj181
Lj185:
	leal	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_XMLUTILS_ISXML11CHAR$WIDESTRING$LONGINT$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj182
	jmp	Lj181
Lj181:
	jmp	Lj163
Lj182:
	incl	-16(%ebp)
Lj179:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj190
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj190:
	cmpl	-16(%ebp),%eax
	jge	Lj178
	jmp	Lj180
Lj180:
	movb	$1,-9(%ebp)
Lj163:
	movb	-9(%ebp),%al
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_XMLUTILS_ISXMLNMTOKENS$WIDESTRING$BOOLEAN$$BOOLEAN
_XMLUTILS_ISXMLNMTOKENS$WIDESTRING$BOOLEAN$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	call	Lj194
Lj194:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movb	%dl,-8(%ebp)
	cmpb	$0,-8(%ebp)
	jne	Lj195
	jmp	Lj196
Lj195:
	call	L_XMLUTILS_XML11NAMEPAGES$$PBYTEARRAY$stub
	movl	%eax,-20(%ebp)
	jmp	Lj199
Lj196:
	movl	L_TC_XMLUTILS_NAMEPAGES$non_lazy_ptr-Lj194(%ebx),%eax
	movl	%eax,-20(%ebp)
Lj199:
	movl	$1,-16(%ebp)
	movb	$0,-9(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj206
	jmp	Lj207
Lj206:
	jmp	Lj193
Lj207:
	jmp	Lj209
	.align 2
Lj208:
	movl	-20(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%ecx
	movzwl	-2(%eax,%ecx,2),%eax
	shrl	$8,%eax
	movzbl	%al,%eax
	addl	$256,%eax
	movzbl	(%edx,%eax,1),%eax
	shll	$5,%eax
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%ecx
	movzbl	-2(%edx,%ecx,2),%edx
	movl	L_TC_XMLUTILS_NAMINGBITMAP$non_lazy_ptr-Lj194(%ebx),%ecx
	btl	%edx,(%ecx,%eax)
	jc	Lj212
	jmp	Lj214
Lj214:
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%edx
	movw	-2(%eax,%edx,2),%ax
	cmpw	$58,%ax
	je	Lj212
	jmp	Lj213
Lj213:
	cmpb	$0,-8(%ebp)
	jne	Lj215
	jmp	Lj211
Lj215:
	leal	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_XMLUTILS_ISXML11CHAR$WIDESTRING$LONGINT$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj212
	jmp	Lj211
Lj211:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj223
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj223:
	cmpl	-16(%ebp),%eax
	je	Lj220
	jmp	Lj222
Lj222:
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%edx
	movw	-2(%eax,%edx,2),%ax
	cmpw	$32,%ax
	jne	Lj220
	jmp	Lj221
Lj220:
	jmp	Lj193
Lj221:
Lj212:
	incl	-16(%ebp)
Lj209:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj224
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj224:
	cmpl	-16(%ebp),%eax
	jge	Lj208
	jmp	Lj210
Lj210:
	movb	$1,-9(%ebp)
Lj193:
	movb	-9(%ebp),%al
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_XMLUTILS_ISVALIDXMLENCODING$WIDESTRING$$BOOLEAN
_XMLUTILS_ISVALIDXMLENCODING$WIDESTRING$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movb	$0,-5(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj231
	jmp	Lj234
Lj234:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	cmpw	$255,%ax
	ja	Lj231
	jmp	Lj233
Lj233:
	movl	-4(%ebp),%eax
	movzbl	(%eax),%eax
	subl	$65,%eax
	cmpl	$26,%eax
	jb	Lj235
	subl	$32,%eax
	cmpl	$26,%eax
	jb	Lj235
Lj235:
	jnc	Lj231
	jmp	Lj232
Lj231:
	jmp	Lj227
Lj232:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj239
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj239:
	movl	$2,-12(%ebp)
	cmpl	-12(%ebp),%eax
	jl	Lj237
	decl	-12(%ebp)
	.align 2
Lj238:
	incl	-12(%ebp)
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%edx
	movw	-2(%ecx,%edx,2),%dx
	cmpw	$255,%dx
	ja	Lj240
	jmp	Lj242
Lj242:
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%ecx
	movzbl	-2(%edx,%ecx,2),%edx
	subl	$45,%edx
	cmpl	$2,%edx
	jb	Lj243
	subl	$3,%edx
	cmpl	$10,%edx
	jb	Lj243
	subl	$17,%edx
	cmpl	$26,%edx
	jb	Lj243
	cmpl	$30,%edx
	stc
	je	Lj243
	subl	$32,%edx
	cmpl	$26,%edx
	jb	Lj243
Lj243:
	jnc	Lj240
	jmp	Lj241
Lj240:
	jmp	Lj227
Lj241:
	cmpl	-12(%ebp),%eax
	jg	Lj238
Lj237:
	movb	$1,-5(%ebp)
Lj227:
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_XMLUTILS_NORMALIZESPACES$WIDESTRING
_XMLUTILS_NORMALIZESPACES$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-60(%ebp)
	movl	%eax,-4(%ebp)
	movl	$0,-56(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj248
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj253
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj253:
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj256
	jmp	Lj255
Lj256:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movw	(%eax),%ax
	cmpw	$32,%ax
	je	Lj254
	jmp	Lj257
Lj257:
	movl	-4(%ebp),%eax
	movl	(%eax),%edx
	movl	-8(%ebp),%eax
	movw	-2(%edx,%eax,2),%ax
	cmpw	$32,%ax
	je	Lj254
	jmp	Lj255
Lj254:
	leal	-56(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-56(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	L_SYSUTILS_TRIM$WIDESTRING$$WIDESTRING$stub
	movl	-56(%ebp),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	movl	-4(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	-56(%ebp),%eax
	movl	%eax,(%ebx)
Lj255:
	movl	$1,-8(%ebp)
	jmp	Lj267
	.align 2
Lj266:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	-8(%ebp),%edx
	movw	-2(%eax,%edx,2),%ax
	cmpw	$32,%ax
	je	Lj269
	jmp	Lj270
Lj269:
	movl	-8(%ebp),%eax
	incl	%eax
	movl	%eax,-12(%ebp)
	jmp	Lj274
	.align 2
Lj273:
	incl	-12(%ebp)
Lj274:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj277
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj277:
	cmpl	-12(%ebp),%eax
	jge	Lj276
	jmp	Lj275
Lj276:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	-12(%ebp),%edx
	movw	-2(%eax,%edx,2),%ax
	cmpw	$32,%ax
	je	Lj273
	jmp	Lj275
Lj275:
	movl	-12(%ebp),%eax
	movl	-8(%ebp),%edx
	subl	%edx,%eax
	cmpl	$1,%eax
	jg	Lj278
	jmp	Lj279
Lj278:
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%eax
	subl	%eax,%ecx
	decl	%ecx
	movl	-8(%ebp),%edx
	incl	%edx
	movl	-4(%ebp),%eax
	call	L_SYSTEM_DELETE$UNICODESTRING$LONGINT$LONGINT$stub
Lj279:
Lj270:
	incl	-8(%ebp)
Lj267:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj286
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj286:
	cmpl	-8(%ebp),%eax
	jg	Lj266
	jmp	Lj268
Lj268:
Lj248:
	call	LFPC_POPADDRSTACK$stub
	leal	-56(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj249
	call	LFPC_RERAISE$stub
Lj249:
	movl	-60(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_XMLUTILS_ISXMLWHITESPACE$WIDECHAR$$BOOLEAN
_XMLUTILS_ISXMLWHITESPACE$WIDECHAR$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movw	%ax,-4(%ebp)
	movw	-4(%ebp),%ax
	cmpw	$32,%ax
	je	Lj289
	jmp	Lj293
Lj293:
	movw	-4(%ebp),%ax
	cmpw	$9,%ax
	je	Lj289
	jmp	Lj292
Lj292:
	movw	-4(%ebp),%ax
	cmpw	$10,%ax
	je	Lj289
	jmp	Lj291
Lj291:
	movw	-4(%ebp),%ax
	cmpw	$13,%ax
	je	Lj289
	jmp	Lj290
Lj289:
	movb	$1,-5(%ebp)
	jmp	Lj294
Lj290:
	movb	$0,-5(%ebp)
Lj294:
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_XMLUTILS_WSTRLICOMP$PWIDECHAR$PWIDECHAR$LONGINT$$LONGINT
_XMLUTILS_WSTRLICOMP$PWIDECHAR$PWIDECHAR$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-20(%ebp)
	movl	$0,-16(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj301
	jmp	Lj302
Lj301:
	jmp	Lj295
Lj302:
	.align 2
Lj303:
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	movw	(%edx,%eax,2),%ax
	movw	%ax,-22(%ebp)
	movl	-8(%ebp),%eax
	movl	-20(%ebp),%edx
	movw	(%eax,%edx,2),%ax
	movw	%ax,-24(%ebp)
	movzwl	-22(%ebp),%eax
	testl	%eax,%eax
	je	Lj310
	jmp	Lj312
Lj312:
	movzwl	-24(%ebp),%eax
	testl	%eax,%eax
	je	Lj310
	jmp	Lj311
Lj310:
	jmp	Lj305
Lj311:
	movw	-22(%ebp),%ax
	cmpw	-24(%ebp),%ax
	jne	Lj313
	jmp	Lj314
Lj313:
	movzwl	-22(%ebp),%eax
	subl	$97,%eax
	cmpl	$26,%eax
	jb	Lj317
Lj317:
	jc	Lj315
	jmp	Lj316
Lj315:
	subw	$32,-22(%ebp)
Lj316:
	movzwl	-24(%ebp),%eax
	subl	$97,%eax
	cmpl	$26,%eax
	jb	Lj320
Lj320:
	jc	Lj318
	jmp	Lj319
Lj318:
	subw	$32,-24(%ebp)
Lj319:
	movw	-22(%ebp),%ax
	cmpw	-24(%ebp),%ax
	jne	Lj321
	jmp	Lj322
Lj321:
	jmp	Lj305
Lj322:
Lj314:
	incl	-20(%ebp)
	movl	-20(%ebp),%eax
	cmpl	-12(%ebp),%eax
	jge	Lj305
	jmp	Lj303
Lj305:
	movzwl	-22(%ebp),%eax
	movzwl	-24(%ebp),%edx
	subl	%edx,%eax
	movl	%eax,-16(%ebp)
Lj295:
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_XMLUTILS_WSTRLOWER$WIDESTRING
_XMLUTILS_WSTRLOWER$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%ebx
	testl	%ebx,%ebx
	je	Lj330
	movl	-4(%ebx),%ebx
	shrl	$1,%ebx
Lj330:
	movl	$1,-8(%ebp)
	cmpl	-8(%ebp),%ebx
	jl	Lj328
	decl	-8(%ebp)
	.align 2
Lj329:
	incl	-8(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%edx
	movl	-8(%ebp),%eax
	movw	-2(%edx,%eax,2),%ax
	cmpw	$65,%ax
	jae	Lj333
	jmp	Lj332
Lj333:
	movl	-4(%ebp),%eax
	movl	(%eax),%edx
	movl	-8(%ebp),%eax
	movw	-2(%edx,%eax,2),%ax
	cmpw	$90,%ax
	jbe	Lj331
	jmp	Lj332
Lj331:
	movl	-4(%ebp),%eax
	call	Lfpc_unicodestr_unique$stub
	movl	-8(%ebp),%edx
	addw	$32,-2(%eax,%edx,2)
Lj332:
	cmpl	-8(%ebp),%ebx
	jg	Lj329
Lj328:
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_XMLUTILS_HASH$LONGWORD$PWIDECHAR$LONGINT$$LONGWORD
_XMLUTILS_HASH$LONGWORD$PWIDECHAR$LONGINT$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj341
	.align 2
Lj340:
	movl	$1000003,%eax
	mull	-16(%ebp)
	movl	-8(%ebp),%edx
	movzwl	(%edx),%edx
	xorl	%edx,%eax
	movl	%eax,-16(%ebp)
	addl	$2,-8(%ebp)
	decl	-12(%ebp)
Lj341:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj340
	jmp	Lj342
Lj342:
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_XMLUTILS_KEYCOMPARE$WIDESTRING$POINTER$LONGINT$$BOOLEAN
_XMLUTILS_KEYCOMPARE$WIDESTRING$POINTER$LONGINT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj350
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj350:
	cmpl	-12(%ebp),%eax
	je	Lj349
	jmp	Lj348
Lj349:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%ecx
	call	L_SYSTEM_COMPAREWORD$formal$formal$LONGINT$$LONGINT$stub
	testl	%eax,%eax
	je	Lj347
	jmp	Lj348
Lj347:
	movb	$1,-13(%ebp)
	jmp	Lj357
Lj348:
	movb	$0,-13(%ebp)
Lj357:
	movb	-13(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_XMLUTILS_THASHTABLE_$__CREATE$LONGINT$BOOLEAN$$THASHTABLE
_XMLUTILS_THASHTABLE_$__CREATE$LONGINT$BOOLEAN$$THASHTABLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj360
	jmp	Lj361
Lj360:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj361:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj366
	jmp	Lj367
Lj366:
	jmp	Lj358
Lj367:
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj370
	leal	-68(%ebp),%ecx
	leal	-92(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-96(%ebp)
	testl	%eax,%eax
	jne	Lj374
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	-12(%ebp),%eax
	movb	8(%ebp),%dl
	movb	%dl,16(%eax)
	movl	$256,-16(%ebp)
	jmp	Lj386
	.align 2
Lj385:
	movl	-16(%ebp),%eax
	shll	$1,%eax
	movl	%eax,-16(%ebp)
Lj386:
	movl	-16(%ebp),%eax
	cmpl	-4(%ebp),%eax
	jl	Lj385
	jmp	Lj387
Lj387:
	movl	-12(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	%edx,8(%eax)
	movl	-16(%ebp),%eax
	shll	$2,%eax
	call	L_SYSTEM_ALLOCMEM$LONGWORD$$POINTER$stub
	movl	-12(%ebp),%edx
	movl	%eax,12(%edx)
Lj374:
	call	LFPC_POPADDRSTACK$stub
	movl	-96(%ebp),%eax
	testl	%eax,%eax
	je	Lj375
	call	LFPC_RERAISE$stub
Lj375:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj398
	jmp	Lj397
Lj398:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj396
	jmp	Lj397
Lj396:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj397:
Lj370:
	call	LFPC_POPADDRSTACK$stub
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj372
	leal	-68(%ebp),%ecx
	leal	-96(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-72(%ebp)
	testl	%eax,%eax
	jne	Lj402
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj403
	jmp	Lj404
Lj403:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj404:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj402:
	call	LFPC_POPADDRSTACK$stub
	movl	-72(%ebp),%eax
	testl	%eax,%eax
	je	Lj401
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj401:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj372
Lj372:
Lj358:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_XMLUTILS_THASHTABLE_$__DESTROY
_XMLUTILS_THASHTABLE_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj411
	jmp	Lj412
Lj411:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj412:
	movl	-8(%ebp),%eax
	call	L_XMLUTILS_THASHTABLE_$__CLEAR$stub
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj425
	jmp	Lj424
Lj425:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj423
	jmp	Lj424
Lj423:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj424:
	leave
	ret

.text
	.align 4
.globl	_XMLUTILS_THASHTABLE_$__CLEAR
_XMLUTILS_THASHTABLE_$__CLEAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	call	Lj429
Lj429:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%ebx
	decl	%ebx
	movl	$0,-8(%ebp)
	cmpl	-8(%ebp),%ebx
	jl	Lj431
	decl	-8(%ebp)
	.align 2
Lj432:
	incl	-8(%ebp)
	movl	-4(%ebp),%eax
	movl	12(%eax),%edx
	movl	-8(%ebp),%eax
	movl	(%edx,%eax,4),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj436
	.align 2
Lj435:
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	cmpb	$0,16(%eax)
	jne	Lj440
	jmp	Lj441
Lj440:
	movl	-12(%ebp),%eax
	movl	12(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
Lj441:
	movl	L_INIT_XMLUTILS_THASHITEM$non_lazy_ptr-Lj429(%esi),%edx
	movl	-12(%ebp),%eax
	call	Lfpc_finalize$stub
	movl	-12(%ebp),%eax
	call	Lfpc_freemem$stub
	movl	-16(%ebp),%eax
	movl	%eax,-12(%ebp)
Lj436:
	cmpl	$0,-12(%ebp)
	jne	Lj435
	jmp	Lj437
Lj437:
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	movl	-8(%ebp),%edx
	movl	$0,(%eax,%edx,4)
	cmpl	-8(%ebp),%ebx
	jg	Lj432
Lj431:
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_XMLUTILS_THASHTABLE_$__FIND$PWIDECHAR$LONGINT$$PHASHITEM
_XMLUTILS_THASHTABLE_$__FIND$PWIDECHAR$LONGINT$$PHASHITEM:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movb	$0,(%esp)
	leal	-17(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_XMLUTILS_THASHTABLE_$__LOOKUP$PWIDECHAR$LONGINT$BOOLEAN$BOOLEAN$$PHASHITEM$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_XMLUTILS_THASHTABLE_$__FINDORADD$PWIDECHAR$LONGINT$BOOLEAN$$PHASHITEM
_XMLUTILS_THASHTABLE_$__FINDORADD$PWIDECHAR$LONGINT$BOOLEAN$$PHASHITEM:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movb	$1,(%esp)
	movl	8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_XMLUTILS_THASHTABLE_$__LOOKUP$PWIDECHAR$LONGINT$BOOLEAN$BOOLEAN$$PHASHITEM$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_XMLUTILS_THASHTABLE_$__FINDORADD$PWIDECHAR$LONGINT$$PHASHITEM
_XMLUTILS_THASHTABLE_$__FINDORADD$PWIDECHAR$LONGINT$$PHASHITEM:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movb	$1,(%esp)
	leal	-17(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_XMLUTILS_THASHTABLE_$__LOOKUP$PWIDECHAR$LONGINT$BOOLEAN$BOOLEAN$$PHASHITEM$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_XMLUTILS_THASHTABLE_$__GET$PWIDECHAR$LONGINT$$TOBJECT
_XMLUTILS_THASHTABLE_$__GET$PWIDECHAR$LONGINT$$TOBJECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movb	$0,(%esp)
	leal	-21(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_XMLUTILS_THASHTABLE_$__LOOKUP$PWIDECHAR$LONGINT$BOOLEAN$BOOLEAN$$PHASHITEM$stub
	movl	%eax,-20(%ebp)
	cmpl	$0,-20(%ebp)
	jne	Lj510
	jmp	Lj511
Lj510:
	movl	-20(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj514
Lj511:
	movl	$0,-16(%ebp)
Lj514:
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_XMLUTILS_THASHTABLE_$__LOOKUP$PWIDECHAR$LONGINT$BOOLEAN$BOOLEAN$$PHASHITEM
_XMLUTILS_THASHTABLE_$__LOOKUP$PWIDECHAR$LONGINT$BOOLEAN$BOOLEAN$$PHASHITEM:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-32(%ebp)
	movl	%esi,-28(%ebp)
	call	Lj518
Lj518:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	$0,%eax
	call	L_XMLUTILS_HASH$LONGWORD$PWIDECHAR$LONGINT$$LONGWORD$stub
	movl	%eax,-24(%ebp)
	movl	-12(%ebp),%eax
	movl	12(%eax),%ecx
	movl	-12(%ebp),%esi
	movl	-24(%ebp),%eax
	xorl	%edx,%edx
	divl	8(%esi)
	leal	(%ecx,%edx,4),%eax
	movl	%eax,-20(%ebp)
	jmp	Lj530
	.align 2
Lj529:
	movl	-20(%ebp),%eax
	movl	(%eax),%eax
	leal	8(%eax),%eax
	movl	%eax,-20(%ebp)
Lj530:
	movl	-20(%ebp),%eax
	cmpl	$0,(%eax)
	jne	Lj534
	jmp	Lj531
Lj534:
	movl	-20(%ebp),%eax
	movl	(%eax),%eax
	movl	4(%eax),%eax
	cmpl	-24(%ebp),%eax
	je	Lj535
	jmp	Lj529
Lj535:
	movl	-20(%ebp),%eax
	movl	(%eax),%eax
	movl	(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	call	L_XMLUTILS_KEYCOMPARE$WIDESTRING$POINTER$LONGINT$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj531
	jmp	Lj529
Lj531:
	movl	12(%ebp),%edx
	movl	-20(%ebp),%eax
	cmpl	$0,(%eax)
	jne	Lj542
	jmp	Lj543
Lj542:
	movb	$1,(%edx)
	jmp	Lj544
Lj543:
	movb	$0,(%edx)
Lj544:
	movl	12(%ebp),%eax
	cmpb	$0,(%eax)
	jne	Lj545
	jmp	Lj547
Lj547:
	movb	8(%ebp),%al
	testb	%al,%al
	je	Lj545
	jmp	Lj546
Lj545:
	movl	-20(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj517
Lj546:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	4(%eax),%eax
	cmpl	8(%edx),%eax
	ja	Lj550
	jmp	Lj551
Lj550:
	movl	-12(%ebp),%eax
	movl	8(%eax),%edx
	shll	$1,%edx
	movl	-12(%ebp),%eax
	call	L_XMLUTILS_THASHTABLE_$__RESIZE$LONGWORD$stub
	movb	8(%ebp),%al
	movb	%al,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_XMLUTILS_THASHTABLE_$__LOOKUP$PWIDECHAR$LONGINT$BOOLEAN$BOOLEAN$$PHASHITEM$stub
	movl	%eax,-16(%ebp)
	jmp	Lj568
Lj551:
	movl	$16,%eax
	call	Lfpc_getmem$stub
	movl	%eax,%esi
	movl	L_INIT_XMLUTILS_THASHITEM$non_lazy_ptr-Lj518(%ebx),%edx
	movl	%esi,%eax
	call	Lfpc_initialize$stub
	movl	%esi,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	-8(%ebp),%edx
	call	Lfpc_unicodestr_setlength$stub
	movl	-8(%ebp),%ecx
	shll	$1,%ecx
	movl	-16(%ebp),%eax
	movl	(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movl	-16(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	%edx,4(%eax)
	movl	-16(%ebp),%eax
	movl	$0,12(%eax)
	movl	-16(%ebp),%eax
	movl	$0,8(%eax)
	movl	-12(%ebp),%eax
	incl	4(%eax)
	movl	-20(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	%edx,(%eax)
Lj568:
Lj517:
	movl	-16(%ebp),%eax
	movl	-32(%ebp),%ebx
	movl	-28(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_XMLUTILS_THASHTABLE_$__RESIZE$LONGWORD
_XMLUTILS_THASHTABLE_$__RESIZE$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-32(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	shll	$2,%eax
	call	L_SYSTEM_ALLOCMEM$LONGWORD$$POINTER$stub
	movl	%eax,-12(%ebp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%ecx
	decl	%ecx
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%ecx
	jl	Lj604
	decl	-20(%ebp)
	.align 2
Lj605:
	incl	-20(%ebp)
	movl	-8(%ebp),%eax
	movl	12(%eax),%edx
	movl	-20(%ebp),%eax
	movl	(%edx,%eax,4),%eax
	movl	%eax,-24(%ebp)
	jmp	Lj609
	.align 2
Lj608:
	movl	-12(%ebp),%ebx
	movl	-24(%ebp),%eax
	movl	4(%eax),%eax
	xorl	%edx,%edx
	divl	-4(%ebp)
	leal	(%ebx,%edx,4),%eax
	movl	%eax,-16(%ebp)
	movl	-24(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-28(%ebp)
	movl	-24(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,8(%edx)
	movl	-16(%ebp),%edx
	movl	-24(%ebp),%eax
	movl	%eax,(%edx)
	movl	-28(%ebp),%eax
	movl	%eax,-24(%ebp)
Lj609:
	cmpl	$0,-24(%ebp)
	jne	Lj608
	jmp	Lj610
Lj610:
	cmpl	-20(%ebp),%ecx
	jg	Lj605
Lj604:
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,8(%eax)
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	%edx,12(%eax)
	movl	-32(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_XMLUTILS_THASHTABLE_$__REMOVE$PHASHITEM$$BOOLEAN
_XMLUTILS_THASHTABLE_$__REMOVE$PHASHITEM$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	call	Lj628
Lj628:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	12(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%esi
	movl	4(%eax),%eax
	xorl	%edx,%edx
	divl	8(%esi)
	leal	(%ecx,%edx,4),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj632
	.align 2
Lj631:
	movl	-16(%ebp),%eax
	movl	(%eax),%eax
	cmpl	-4(%ebp),%eax
	je	Lj634
	jmp	Lj635
Lj634:
	movl	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,(%edx)
	movl	-8(%ebp),%eax
	cmpb	$0,16(%eax)
	jne	Lj638
	jmp	Lj639
Lj638:
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
Lj639:
	movl	L_INIT_XMLUTILS_THASHITEM$non_lazy_ptr-Lj628(%ebx),%edx
	movl	-4(%ebp),%eax
	call	Lfpc_finalize$stub
	movl	-4(%ebp),%eax
	call	Lfpc_freemem$stub
	movl	-8(%ebp),%eax
	decl	4(%eax)
	movb	$1,-9(%ebp)
	jmp	Lj627
Lj635:
	movl	-16(%ebp),%eax
	movl	(%eax),%eax
	leal	8(%eax),%eax
	movl	%eax,-16(%ebp)
Lj632:
	movl	-16(%ebp),%eax
	cmpl	$0,(%eax)
	jne	Lj631
	jmp	Lj633
Lj633:
	movb	$0,-9(%ebp)
Lj627:
	movb	-9(%ebp),%al
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_XMLUTILS_THASHTABLE_$__REMOVEDATA$TOBJECT$$BOOLEAN
_XMLUTILS_THASHTABLE_$__REMOVEDATA$TOBJECT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-32(%ebp)
	movl	%esi,-28(%ebp)
	call	Lj655
Lj655:
	popl	%esi
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%ebx
	decl	%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj657
	decl	-16(%ebp)
	.align 2
Lj658:
	incl	-16(%ebp)
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	movl	-16(%ebp),%edx
	leal	(%eax,%edx,4),%eax
	movl	%eax,-20(%ebp)
	jmp	Lj662
	.align 2
Lj661:
	movl	-20(%ebp),%eax
	movl	(%eax),%eax
	movl	12(%eax),%eax
	cmpl	-4(%ebp),%eax
	je	Lj664
	jmp	Lj665
Lj664:
	movl	-20(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	-20(%ebp),%edx
	movl	-24(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,(%edx)
	movl	L_INIT_XMLUTILS_THASHITEM$non_lazy_ptr-Lj655(%esi),%edx
	movl	-24(%ebp),%eax
	call	Lfpc_finalize$stub
	movl	-24(%ebp),%eax
	call	Lfpc_freemem$stub
	movl	-8(%ebp),%eax
	decl	4(%eax)
	movb	$1,-9(%ebp)
	jmp	Lj654
Lj665:
	movl	-20(%ebp),%eax
	movl	(%eax),%eax
	leal	8(%eax),%eax
	movl	%eax,-20(%ebp)
Lj662:
	movl	-20(%ebp),%eax
	cmpl	$0,(%eax)
	jne	Lj661
	jmp	Lj663
Lj663:
	cmpl	-16(%ebp),%ebx
	jg	Lj658
Lj657:
	movb	$0,-9(%ebp)
Lj654:
	movb	-9(%ebp),%al
	movl	-32(%ebp),%ebx
	movl	-28(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_XMLUTILS_THASHTABLE_$__FOREACH$THASHFOREACH$POINTER
_XMLUTILS_THASHTABLE_$__FOREACH$THASHFOREACH$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	8(%eax),%ebx
	decl	%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj685
	decl	-16(%ebp)
	.align 2
Lj686:
	incl	-16(%ebp)
	movl	-12(%ebp),%eax
	movl	12(%eax),%edx
	movl	-16(%ebp),%eax
	movl	(%edx,%eax,4),%eax
	movl	%eax,-20(%ebp)
	jmp	Lj690
	.align 2
Lj689:
	movl	-8(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	-4(%ebp),%ecx
	call	*%ecx
	testb	%al,%al
	je	Lj692
	jmp	Lj693
Lj692:
	jmp	Lj682
Lj693:
	movl	-20(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-20(%ebp)
Lj690:
	cmpl	$0,-20(%ebp)
	jne	Lj689
	jmp	Lj691
Lj691:
	cmpl	-16(%ebp),%ebx
	jg	Lj686
Lj685:
Lj682:
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_XMLUTILS_TDBLHASHARRAY_$__DESTROY
_XMLUTILS_TDBLHASHARRAY_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj702
	jmp	Lj703
Lj702:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj703:
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj714
	jmp	Lj713
Lj714:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj712
	jmp	Lj713
Lj712:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj713:
	leave
	ret

.text
	.align 4
.globl	_XMLUTILS_TDBLHASHARRAY_$__INIT$LONGINT
_XMLUTILS_TDBLHASHARRAY_$__INIT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	shll	$1,%eax
	movl	-8(%ebp),%edx
	movl	4(%edx),%ecx
	shrl	%cl,%eax
	testl	%eax,%eax
	jne	Lj719
	jmp	Lj720
Lj719:
	movl	-8(%ebp),%eax
	movl	$3,4(%eax)
	jmp	Lj724
	.align 2
Lj723:
	movl	-8(%ebp),%eax
	incl	4(%eax)
Lj724:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	4(%edx),%ecx
	shrl	%cl,%eax
	testl	%eax,%eax
	jne	Lj723
	jmp	Lj725
Lj725:
	movl	-8(%ebp),%eax
	movl	$1,%edx
	movl	4(%eax),%ecx
	shll	%cl,%edx
	imull	$20,%edx
	movl	-8(%ebp),%eax
	leal	12(%eax),%eax
	call	L_SYSTEM_REALLOCMEM$POINTER$LONGWORD$$POINTER$stub
	movl	-8(%ebp),%eax
	movl	$0,8(%eax)
Lj720:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	testl	%eax,%eax
	je	Lj732
	jmp	Lj733
Lj732:
	movl	-8(%ebp),%eax
	movl	$-1,8(%eax)
	movl	-8(%ebp),%edx
	movl	$1,%eax
	movl	4(%edx),%ecx
	shll	%cl,%eax
	decl	%eax
	movl	%eax,-12(%ebp)
	cmpl	$0,-12(%ebp)
	jl	Lj737
	incl	-12(%ebp)
	.align 2
Lj738:
	decl	-12(%ebp)
	movl	-8(%ebp),%eax
	movl	12(%eax),%ecx
	movl	-12(%ebp),%eax
	imull	$20,%eax
	movl	-8(%ebp),%edx
	movl	8(%edx),%edx
	movl	%edx,(%ecx,%eax)
	cmpl	$0,-12(%ebp)
	jg	Lj738
Lj737:
Lj733:
	movl	-8(%ebp),%eax
	decl	8(%eax)
	leave
	ret

.text
	.align 4
.globl	_XMLUTILS_TDBLHASHARRAY_$__LOCATE$PWIDESTRING$PWIDECHAR$LONGINT$$BOOLEAN
_XMLUTILS_TDBLHASHARRAY_$__LOCATE$PWIDESTRING$PWIDECHAR$LONGINT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-40(%ebp)
	call	Lj742
Lj742:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%ecx
	testl	%ecx,%ecx
	je	Lj747
	movl	-4(%ecx),%ecx
	shrl	$1,%ecx
Lj747:
	movl	-4(%ebp),%eax
	movl	(%eax),%edx
	testl	%edx,%edx
	jne	Lj750
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj742(%ebx),%eax
	movl	%eax,%edx
Lj750:
	movl	$0,%eax
	call	L_XMLUTILS_HASH$LONGWORD$PWIDECHAR$LONGINT$$LONGWORD$stub
	movl	%eax,-28(%ebp)
	movl	8(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-28(%ebp),%eax
	call	L_XMLUTILS_HASH$LONGWORD$PWIDECHAR$LONGINT$$LONGWORD$stub
	movl	%eax,-28(%ebp)
	movl	-12(%ebp),%edx
	movl	$1,%eax
	movl	4(%edx),%ecx
	shll	%cl,%eax
	decl	%eax
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	notl	%eax
	movl	-28(%ebp),%edx
	andl	%edx,%eax
	movl	-12(%ebp),%edx
	movl	4(%edx),%ecx
	decl	%ecx
	shrl	%cl,%eax
	movl	-20(%ebp),%edx
	shrl	$2,%edx
	andl	%edx,%eax
	orl	$1,%eax
	movb	%al,-14(%ebp)
	movl	-28(%ebp),%edx
	movl	-20(%ebp),%eax
	andl	%eax,%edx
	movl	%edx,-24(%ebp)
	movb	$1,-13(%ebp)
	jmp	Lj770
	.align 2
Lj769:
	movl	-12(%ebp),%eax
	movl	12(%eax),%edx
	movl	-24(%ebp),%eax
	imull	$20,%eax
	movl	4(%edx,%eax),%eax
	cmpl	-28(%ebp),%eax
	je	Lj776
	jmp	Lj773
Lj776:
	movl	-12(%ebp),%eax
	movl	12(%eax),%edx
	movl	-24(%ebp),%eax
	imull	$20,%eax
	movl	8(%edx,%eax),%eax
	movl	(%eax),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	Lfpc_unicodestr_compare_equal$stub
	testl	%eax,%eax
	je	Lj775
	jmp	Lj773
Lj775:
	movl	-12(%ebp),%eax
	movl	12(%eax),%edx
	movl	-24(%ebp),%eax
	imull	$20,%eax
	movl	16(%edx,%eax),%eax
	cmpl	8(%ebp),%eax
	je	Lj774
	jmp	Lj773
Lj774:
	movl	8(%ebp),%eax
	shll	$1,%eax
	movl	%eax,-32(%ebp)
	movl	-12(%ebp),%eax
	movl	12(%eax),%edx
	movl	-24(%ebp),%eax
	imull	$20,%eax
	movl	12(%edx,%eax),%eax
	movl	%eax,-36(%ebp)
	movl	-8(%ebp),%edx
	movl	-32(%ebp),%ecx
	movl	-36(%ebp),%eax
	call	L_SYSTEM_COMPAREBYTE$formal$formal$LONGINT$$LONGINT$stub
	testl	%eax,%eax
	seteb	%al
	testb	%al,%al
	jne	Lj772
	jmp	Lj773
Lj772:
	jmp	Lj741
Lj773:
	movzbl	-14(%ebp),%eax
	cmpl	-24(%ebp),%eax
	jg	Lj793
	jmp	Lj794
Lj793:
	movl	-12(%ebp),%edx
	movl	$1,%eax
	movl	4(%edx),%ecx
	shll	%cl,%eax
	movzbl	-14(%ebp),%edx
	subl	%edx,%eax
	addl	%eax,-24(%ebp)
	jmp	Lj795
Lj794:
	movzbl	-14(%ebp),%eax
	subl	%eax,-24(%ebp)
Lj795:
Lj770:
	movl	-12(%ebp),%eax
	movl	12(%eax),%edx
	movl	-24(%ebp),%eax
	imull	$20,%eax
	movl	-12(%ebp),%ecx
	movl	(%edx,%eax),%eax
	cmpl	8(%ecx),%eax
	je	Lj769
	jmp	Lj771
Lj771:
	movl	-12(%ebp),%eax
	movl	12(%eax),%edx
	movl	-24(%ebp),%eax
	imull	$20,%eax
	leal	(%edx,%eax),%eax
	movl	-12(%ebp),%edx
	movl	8(%edx),%edx
	movl	%edx,(%eax)
	movl	-28(%ebp),%edx
	movl	%edx,4(%eax)
	movl	-4(%ebp),%edx
	movl	%edx,8(%eax)
	movl	-8(%ebp),%edx
	movl	%edx,12(%eax)
	movl	8(%ebp),%edx
	movl	%edx,16(%eax)
	movb	$0,-13(%ebp)
Lj741:
	movb	-13(%ebp),%al
	movl	-40(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_XMLUTILS_TNSSUPPORT_$__CREATE$$TNSSUPPORT
_XMLUTILS_TNSSUPPORT_$__CREATE$$TNSSUPPORT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-100(%ebp)
	call	Lj811
Lj811:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj812
	jmp	Lj813
Lj812:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-8(%ebp)
Lj813:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj818
	jmp	Lj819
Lj818:
	jmp	Lj810
Lj819:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj822
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj826
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movb	$0,(%esp)
	movl	L_VMT_XMLUTILS_THASHTABLE$non_lazy_ptr-Lj811(%ebx),%edx
	movl	$16,%ecx
	movl	$0,%eax
	call	L_XMLUTILS_THASHTABLE_$__CREATE$LONGINT$BOOLEAN$$THASHTABLE$stub
	movl	-8(%ebp),%edx
	movl	%eax,24(%edx)
	movl	L_VMT_CLASSES_TFPLIST$non_lazy_ptr-Lj811(%ebx),%edx
	movl	$0,%eax
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	-8(%ebp),%edx
	movl	%eax,16(%edx)
	movl	$16,-96(%ebp)
	leal	-96(%ebp),%eax
	movl	%eax,(%esp)
	movl	L_INIT_XMLUTILS_DEF53$non_lazy_ptr-Lj811(%ebx),%edx
	movl	-8(%ebp),%eax
	leal	20(%eax),%eax
	movl	$1,%ecx
	call	Lfpc_dynarray_setlength$stub
	leal	-12(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movl	L_$XMLUTILS$_Ld5$non_lazy_ptr-Lj811(%ebx),%ecx
	movl	L_$XMLUTILS$_Ld7$non_lazy_ptr-Lj811(%ebx),%edx
	call	L_XMLUTILS_TNSSUPPORT_$__DEFINEBINDING$WIDESTRING$WIDESTRING$TBINDING$stub
Lj826:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj827
	call	LFPC_RERAISE$stub
Lj827:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj869
	jmp	Lj868
Lj869:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj867
	jmp	Lj868
Lj867:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj868:
Lj822:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj824
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj873
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj874
	jmp	Lj875
Lj874:
	movl	-8(%ebp),%eax
	movl	$-1,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj875:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj873:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj872
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj872:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj824
Lj824:
Lj810:
	movl	-8(%ebp),%eax
	movl	-100(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_XMLUTILS_TNSSUPPORT_$__DESTROY
_XMLUTILS_TNSSUPPORT_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj882
	jmp	Lj883
Lj882:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj883:
	movl	-8(%ebp),%eax
	movl	16(%eax),%eax
	movl	8(%eax),%eax
	decl	%eax
	movl	%eax,-12(%ebp)
	cmpl	$0,-12(%ebp)
	jl	Lj887
	incl	-12(%ebp)
	.align 2
Lj888:
	decl	-12(%ebp)
	movl	-8(%ebp),%eax
	movl	16(%eax),%eax
	movl	4(%eax),%eax
	movl	-12(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	cmpl	$0,-12(%ebp)
	jg	Lj888
Lj887:
	movl	-8(%ebp),%eax
	movl	16(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-8(%ebp),%eax
	movl	24(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj901
	jmp	Lj900
Lj901:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj899
	jmp	Lj900
Lj899:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj900:
	leave
	ret

.text
	.align 4
.globl	_XMLUTILS_TNSSUPPORT_$__BINDPREFIX$WIDESTRING$PHASHITEM$$TBINDING
_XMLUTILS_TNSSUPPORT_$__BINDPREFIX$WIDESTRING$PHASHITEM$$TBINDING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	call	Lj905
Lj905:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,-16(%ebp)
	cmpl	$0,-16(%ebp)
	jne	Lj908
	jmp	Lj909
Lj908:
	movl	-12(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,12(%edx)
	jmp	Lj912
Lj909:
	movl	L_VMT_XMLUTILS_TBINDING$non_lazy_ptr-Lj905(%ebx),%edx
	movl	$0,%eax
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%eax
	movl	16(%eax),%eax
	movl	-16(%ebp),%edx
	call	L_CLASSES_TFPLIST_$__ADD$POINTER$$LONGINT$stub
Lj912:
	movl	-12(%ebp),%eax
	movl	20(%eax),%edx
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	-16(%ebp),%ecx
	movl	(%edx,%eax,4),%eax
	movl	%eax,8(%ecx)
	movl	-12(%ebp),%eax
	movl	20(%eax),%ecx
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	-16(%ebp),%edx
	movl	%edx,(%ecx,%eax,4)
	movl	-4(%ebp),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	movl	-16(%ebp),%esi
	leal	4(%esi),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	%eax,4(%esi)
	movl	-16(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	%edx,16(%eax)
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,12(%edx)
	movl	-8(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	%edx,12(%eax)
	movl	-16(%ebp),%eax
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_XMLUTILS_TNSSUPPORT_$__DEFAULTNSBINDING$$TBINDING
_XMLUTILS_TNSSUPPORT_$__DEFAULTNSBINDING$$TBINDING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	40(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_XMLUTILS_TNSSUPPORT_$__DEFINEBINDING$WIDESTRING$WIDESTRING$TBINDING
_XMLUTILS_TNSSUPPORT_$__DEFINEBINDING$WIDESTRING$WIDESTRING$TBINDING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	call	Lj940
Lj940:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	leal	28(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj945
	jmp	Lj944
Lj945:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj943
	jmp	Lj944
Lj943:
	movl	-12(%ebp),%eax
	movl	24(%eax),%eax
	movl	-4(%ebp),%ecx
	testl	%ecx,%ecx
	je	Lj952
	movl	-4(%ecx),%ecx
	shrl	$1,%ecx
Lj952:
	movl	-4(%ebp),%edx
	testl	%edx,%edx
	jne	Lj955
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj940(%ebx),%esi
	movl	%esi,%edx
Lj955:
	call	L_XMLUTILS_THASHTABLE_$__FINDORADD$PWIDECHAR$LONGINT$$PHASHITEM$stub
	movl	%eax,-16(%ebp)
Lj944:
	movl	-16(%ebp),%eax
	movl	12(%eax),%eax
	testl	%eax,%eax
	je	Lj956
	jmp	Lj958
Lj958:
	movl	-16(%ebp),%eax
	movl	12(%eax),%eax
	movl	4(%eax),%eax
	movl	-8(%ebp),%edx
	call	Lfpc_unicodestr_compare_equal$stub
	testl	%eax,%eax
	jne	Lj956
	jmp	Lj957
Lj956:
	movl	-16(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_XMLUTILS_TNSSUPPORT_$__BINDPREFIX$WIDESTRING$PHASHITEM$$TBINDING$stub
	movl	8(%ebp),%edx
	movl	%eax,(%edx)
	jmp	Lj971
Lj957:
	movl	8(%ebp),%eax
	movl	$0,(%eax)
Lj971:
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_XMLUTILS_TNSSUPPORT_$__CHECKATTRIBUTE$WIDESTRING$WIDESTRING$TBINDING$$TATTRIBUTEACTION
_XMLUTILS_TNSSUPPORT_$__CHECKATTRIBUTE$WIDESTRING$WIDESTRING$TBINDING$$TATTRIBUTEACTION:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-104(%ebp)
	movl	%esi,-100(%ebp)
	call	Lj975
Lj975:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	8(%ebp),%eax
	movl	$0,(%eax)
	movl	$0,-20(%ebp)
	movl	$0,-16(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj982
	jmp	Lj983
Lj982:
	movl	-12(%ebp),%eax
	movl	24(%eax),%eax
	movl	-4(%ebp),%ecx
	testl	%ecx,%ecx
	je	Lj990
	movl	-4(%ecx),%ecx
	shrl	$1,%ecx
Lj990:
	movl	-4(%ebp),%edx
	testl	%edx,%edx
	jne	Lj993
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj975(%ebx),%esi
	movl	%esi,%edx
Lj993:
	call	L_XMLUTILS_THASHTABLE_$__FINDORADD$PWIDECHAR$LONGINT$$PHASHITEM$stub
	movl	%eax,-20(%ebp)
	jmp	Lj994
Lj983:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj995
	jmp	Lj996
Lj995:
	jmp	Lj974
Lj996:
Lj994:
	cmpl	$0,-20(%ebp)
	jne	Lj1000
	jmp	Lj998
Lj1000:
	movl	-20(%ebp),%eax
	cmpl	$0,12(%eax)
	jne	Lj999
	jmp	Lj998
Lj999:
	movl	-20(%ebp),%eax
	movl	12(%eax),%eax
	movl	4(%eax),%eax
	movl	-8(%ebp),%edx
	call	Lfpc_unicodestr_compare_equal$stub
	testl	%eax,%eax
	je	Lj997
	jmp	Lj998
Lj997:
	jmp	Lj974
Lj998:
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-24(%ebp)
	cmpl	$0,-24(%ebp)
	jl	Lj1006
	incl	-24(%ebp)
	.align 2
Lj1007:
	decl	-24(%ebp)
	movl	-12(%ebp),%eax
	movl	20(%eax),%edx
	movl	-24(%ebp),%eax
	movl	(%edx,%eax,4),%eax
	movl	%eax,-28(%ebp)
	jmp	Lj1011
	.align 2
Lj1010:
	movl	-28(%ebp),%eax
	movl	4(%eax),%eax
	movl	-8(%ebp),%edx
	call	Lfpc_unicodestr_compare_equal$stub
	testl	%eax,%eax
	je	Lj1015
	jmp	Lj1014
Lj1015:
	movl	-12(%ebp),%eax
	leal	28(%eax),%edx
	movl	-28(%ebp),%eax
	cmpl	16(%eax),%edx
	jne	Lj1013
	jmp	Lj1014
Lj1013:
	movl	8(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	%edx,(%eax)
	movl	$1,-16(%ebp)
	jmp	Lj974
Lj1014:
	movl	-28(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-28(%ebp)
Lj1011:
	cmpl	$0,-28(%ebp)
	jne	Lj1010
	jmp	Lj1012
Lj1012:
	cmpl	$0,-24(%ebp)
	jg	Lj1007
Lj1006:
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj1026
	jmp	Lj1028
Lj1028:
	movl	-20(%ebp),%eax
	cmpl	$0,12(%eax)
	jne	Lj1026
	jmp	Lj1027
Lj1026:
	.align 2
Lj1029:
	movl	-12(%ebp),%eax
	incl	8(%eax)
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-24(%ebp)
	leal	-30(%ebp),%eax
	movl	%eax,-96(%ebp)
	jmp	Lj1037
	.align 2
Lj1036:
	movl	-24(%ebp),%eax
	cltd
	movl	$10,%ecx
	idivl	%ecx
	addl	$48,%edx
	movl	-96(%ebp),%eax
	movw	%dx,(%eax)
	subl	$2,-96(%ebp)
	movl	-24(%ebp),%ecx
	movl	$1717986919,%eax
	imull	%ecx
	movl	%ecx,%eax
	sarl	$2,%edx
	shrl	$31,%eax
	addl	%eax,%edx
	movl	%edx,-24(%ebp)
Lj1037:
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1036
	jmp	Lj1038
Lj1038:
	movl	-96(%ebp),%eax
	movw	$83,(%eax)
	subl	$2,-96(%ebp)
	movl	-96(%ebp),%eax
	movw	$78,(%eax)
	leal	-30(%ebp),%ecx
	movl	-96(%ebp),%eax
	subl	%eax,%ecx
	movl	%ecx,%eax
	sarl	$31,%eax
	andl	$1,%eax
	addl	%eax,%ecx
	sarl	$1,%ecx
	incl	%ecx
	movl	-12(%ebp),%eax
	movl	24(%eax),%eax
	movl	-96(%ebp),%edx
	call	L_XMLUTILS_THASHTABLE_$__FINDORADD$PWIDECHAR$LONGINT$$PHASHITEM$stub
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	movl	12(%eax),%eax
	testl	%eax,%eax
	je	Lj1031
	jmp	Lj1029
Lj1031:
Lj1027:
	movl	-20(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_XMLUTILS_TNSSUPPORT_$__BINDPREFIX$WIDESTRING$PHASHITEM$$TBINDING$stub
	movl	8(%ebp),%edx
	movl	%eax,(%edx)
	movl	$2,-16(%ebp)
Lj974:
	movl	-16(%ebp),%eax
	movl	-104(%ebp),%ebx
	movl	-100(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_XMLUTILS_TNSSUPPORT_$__ISPREFIXBOUND$PWIDECHAR$LONGINT$PHASHITEM$$BOOLEAN
_XMLUTILS_TNSSUPPORT_$__ISPREFIXBOUND$PWIDECHAR$LONGINT$PHASHITEM$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	24(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	call	L_XMLUTILS_THASHTABLE_$__FINDORADD$PWIDECHAR$LONGINT$$PHASHITEM$stub
	movl	8(%ebp),%edx
	movl	%eax,(%edx)
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	cmpl	$0,12(%eax)
	jne	Lj1077
	jmp	Lj1076
Lj1077:
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	movl	12(%eax),%eax
	movl	4(%eax),%eax
	testl	%eax,%eax
	jne	Lj1075
	jmp	Lj1076
Lj1075:
	movb	$1,-13(%ebp)
	jmp	Lj1078
Lj1076:
	movb	$0,-13(%ebp)
Lj1078:
	movb	-13(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_XMLUTILS_TNSSUPPORT_$__GETPREFIX$PWIDECHAR$LONGINT$$PHASHITEM
_XMLUTILS_TNSSUPPORT_$__GETPREFIX$PWIDECHAR$LONGINT$$PHASHITEM:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	cmpl	$0,-4(%ebp)
	jne	Lj1083
	jmp	Lj1082
Lj1083:
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj1081
	jmp	Lj1082
Lj1081:
	movl	-12(%ebp),%eax
	movl	24(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	call	L_XMLUTILS_THASHTABLE_$__FINDORADD$PWIDECHAR$LONGINT$$PHASHITEM$stub
	movl	%eax,-16(%ebp)
	jmp	Lj1092
Lj1082:
	movl	-12(%ebp),%eax
	leal	28(%eax),%eax
	movl	%eax,-16(%ebp)
Lj1092:
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_XMLUTILS_TNSSUPPORT_$__STARTELEMENT
_XMLUTILS_TNSSUPPORT_$__STARTELEMENT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	call	Lj1096
Lj1096:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	incl	4(%eax)
	movl	-4(%ebp),%ebx
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	call	Lfpc_dynarray_length$stub
	cmpl	4(%ebx),%eax
	jle	Lj1097
	jmp	Lj1098
Lj1097:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	shll	$1,%eax
	movl	%eax,-8(%ebp)
	leal	-8(%ebp),%eax
	movl	%eax,(%esp)
	movl	L_INIT_XMLUTILS_DEF53$non_lazy_ptr-Lj1096(%esi),%edx
	movl	-4(%ebp),%eax
	leal	20(%eax),%eax
	movl	$1,%ecx
	call	Lfpc_dynarray_setlength$stub
Lj1098:
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_XMLUTILS_TNSSUPPORT_$__ENDELEMENT
_XMLUTILS_TNSSUPPORT_$__ENDELEMENT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	20(%eax),%edx
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	(%edx,%eax,4),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj1116
	.align 2
Lj1115:
	movl	-12(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,8(%edx)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	%eax,12(%edx)
	movl	-8(%ebp),%eax
	movl	16(%eax),%edx
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,12(%edx)
Lj1116:
	cmpl	$0,-12(%ebp)
	jne	Lj1115
	jmp	Lj1117
Lj1117:
	movl	-4(%ebp),%eax
	movl	20(%eax),%edx
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	$0,(%edx,%eax,4)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$0,%eax
	jg	Lj1130
	jmp	Lj1131
Lj1130:
	movl	-4(%ebp),%eax
	decl	4(%eax)
Lj1131:
	leave
	ret

.text
	.align 4
.globl	_XMLUTILS_BUFALLOCATE$TWIDECHARBUF$LONGINT
_XMLUTILS_BUFALLOCATE$TWIDECHARBUF$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	%edx,8(%eax)
	movl	-4(%ebp),%eax
	movl	$0,4(%eax)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	shll	$1,%eax
	call	L_SYSTEM_ALLOCMEM$LONGWORD$$POINTER$stub
	movl	-4(%ebp),%edx
	movl	%eax,(%edx)
	leave
	ret

.text
	.align 4
.globl	_XMLUTILS_BUFAPPEND$TWIDECHARBUF$WIDECHAR
_XMLUTILS_BUFAPPEND$TWIDECHARBUF$WIDECHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	4(%eax),%eax
	cmpl	8(%edx),%eax
	jge	Lj1144
	jmp	Lj1145
Lj1144:
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	shll	$1,%edx
	shll	$1,%edx
	movl	-4(%ebp),%eax
	call	L_SYSTEM_REALLOCMEM$POINTER$LONGWORD$$POINTER$stub
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	shll	$1,%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	leal	(%ecx,%eax,2),%eax
	movb	$0,%cl
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$BYTE$stub
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	shll	$1,%eax
	movl	-4(%ebp),%edx
	movl	%eax,8(%edx)
Lj1145:
	movl	-4(%ebp),%eax
	movl	(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movw	-8(%ebp),%dx
	movw	%dx,(%ecx,%eax,2)
	movl	-4(%ebp),%eax
	incl	4(%eax)
	leave
	ret

.text
	.align 4
.globl	_XMLUTILS_BUFAPPENDCHUNK$TWIDECHARBUF$PWIDECHAR$PWIDECHAR
_XMLUTILS_BUFAPPENDCHUNK$TWIDECHARBUF$PWIDECHAR$PWIDECHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	-8(%ebp),%edx
	subl	%edx,%eax
	movl	%eax,%edx
	sarl	$31,%edx
	andl	$1,%edx
	addl	%edx,%eax
	sarl	$1,%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jle	Lj1164
	jmp	Lj1165
Lj1164:
	jmp	Lj1160
Lj1165:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	8(%eax),%edx
	movl	4(%ecx),%eax
	subl	%eax,%edx
	cmpl	-16(%ebp),%edx
	jle	Lj1166
	jmp	Lj1167
Lj1166:
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	4(%edx),%edx
	addl	%edx,%eax
	shll	$1,%eax
	movl	-4(%ebp),%edx
	movl	%eax,8(%edx)
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	shll	$1,%edx
	movl	-4(%ebp),%eax
	call	L_SYSTEM_REALLOCMEM$POINTER$LONGWORD$$POINTER$stub
Lj1167:
	movl	-16(%ebp),%ecx
	shll	$1,%ecx
	movl	-4(%ebp),%eax
	movl	(%eax),%edx
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	leal	(%edx,%eax,2),%edx
	movl	-8(%ebp),%eax
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%eax
	addl	%eax,4(%edx)
Lj1160:
	leave
	ret

.text
	.align 4
.globl	_XMLUTILS_BUFEQUALS$TWIDECHARBUF$WIDESTRING$$BOOLEAN
_XMLUTILS_BUFEQUALS$TWIDECHARBUF$WIDESTRING$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	testl	%edx,%edx
	je	Lj1185
	movl	-4(%edx),%edx
	shrl	$1,%edx
Lj1185:
	movl	-4(%ebp),%eax
	cmpl	4(%eax),%edx
	je	Lj1184
	jmp	Lj1183
Lj1184:
	movl	-4(%ebp),%eax
	movl	4(%eax),%ecx
	shll	$1,%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	L_SYSUTILS_COMPAREMEM$POINTER$POINTER$LONGWORD$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj1182
	jmp	Lj1183
Lj1182:
	movb	$1,-9(%ebp)
	jmp	Lj1192
Lj1183:
	movb	$0,-9(%ebp)
Lj1192:
	movb	-9(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_XMLUTILS_BUFNORMALIZE$TWIDECHARBUF$BOOLEAN
_XMLUTILS_BUFNORMALIZE$TWIDECHARBUF$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-12(%ebp)
	movl	$0,-16(%ebp)
	jmp	Lj1200
	.align 2
Lj1199:
	incl	-16(%ebp)
Lj1200:
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%edx
	cmpl	4(%eax),%edx
	jl	Lj1202
	jmp	Lj1201
Lj1202:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	-16(%ebp),%edx
	movw	(%eax,%edx,2),%ax
	cmpw	$32,%ax
	je	Lj1199
	jmp	Lj1201
Lj1201:
	jmp	Lj1204
	.align 2
Lj1203:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	-16(%ebp),%edx
	movw	(%eax,%edx,2),%ax
	cmpw	$32,%ax
	je	Lj1206
	jmp	Lj1207
Lj1206:
	movl	-4(%ebp),%eax
	movl	(%eax),%edx
	movl	-12(%ebp),%eax
	decl	%eax
	movw	(%edx,%eax,2),%ax
	cmpw	$32,%ax
	jne	Lj1208
	jmp	Lj1209
Lj1208:
	movl	-4(%ebp),%eax
	movl	(%eax),%edx
	movl	-12(%ebp),%eax
	movw	$32,(%edx,%eax,2)
	incl	-12(%ebp)
Lj1209:
	jmp	Lj1212
Lj1207:
	movl	-4(%ebp),%eax
	movl	(%eax),%ebx
	movl	-12(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	-16(%ebp),%edx
	movw	(%eax,%edx,2),%ax
	movw	%ax,(%ebx,%ecx,2)
	incl	-12(%ebp)
Lj1212:
	incl	-16(%ebp)
Lj1204:
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%edx
	cmpl	4(%eax),%edx
	jl	Lj1203
	jmp	Lj1205
Lj1205:
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj1217
	jmp	Lj1216
Lj1217:
	movl	-4(%ebp),%eax
	movl	(%eax),%edx
	movl	-12(%ebp),%eax
	decl	%eax
	movw	(%edx,%eax,2),%ax
	cmpw	$32,%ax
	je	Lj1215
	jmp	Lj1216
Lj1215:
	decl	-12(%ebp)
Lj1216:
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%ecx
	cmpl	4(%edx),%ecx
	setneb	(%eax)
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	%eax,4(%edx)
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_XMLUTILS_DECODE_UCS2$POINTER$PCHAR$LONGWORD$PWIDECHAR$LONGWORD$$LONGINT
_XMLUTILS_DECODE_UCS2$POINTER$PCHAR$LONGWORD$PWIDECHAR$LONGWORD$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	24(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	16(%ebp),%eax
	movl	(%eax),%eax
	shrl	$1,%eax
	cmpl	-8(%ebp),%eax
	jb	Lj1226
	jmp	Lj1227
Lj1226:
	movl	16(%ebp),%eax
	movl	(%eax),%eax
	shrl	$1,%eax
	movl	%eax,-8(%ebp)
Lj1227:
	movl	-8(%ebp),%ecx
	shll	$1,%ecx
	movl	20(%ebp),%edx
	movl	12(%ebp),%eax
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movl	-8(%ebp),%eax
	shll	$1,%eax
	movl	16(%ebp),%edx
	subl	%eax,(%edx)
	movl	24(%ebp),%edx
	movl	-8(%ebp),%eax
	subl	%eax,(%edx)
	movl	-8(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_XMLUTILS_DECODE_UCS2_SWAPPED$POINTER$PCHAR$LONGWORD$PWIDECHAR$LONGWORD$$LONGINT
_XMLUTILS_DECODE_UCS2_SWAPPED$POINTER$PCHAR$LONGWORD$PWIDECHAR$LONGWORD$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	24(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	16(%ebp),%eax
	movl	(%eax),%eax
	shrl	$1,%eax
	cmpl	-12(%ebp),%eax
	jb	Lj1242
	jmp	Lj1243
Lj1242:
	movl	16(%ebp),%eax
	movl	(%eax),%eax
	shrl	$1,%eax
	movl	%eax,-12(%ebp)
Lj1243:
	movl	12(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%eax
	decl	%eax
	movl	$0,-8(%ebp)
	cmpl	-8(%ebp),%eax
	jl	Lj1249
	decl	-8(%ebp)
	.align 2
Lj1250:
	incl	-8(%ebp)
	movl	-16(%ebp),%edx
	movzbl	(%edx),%edx
	shll	$8,%edx
	movl	-16(%ebp),%ecx
	movzbl	1(%ecx),%ecx
	orl	%ecx,%edx
	movl	20(%ebp),%ecx
	movl	-8(%ebp),%ebx
	movw	%dx,(%ecx,%ebx,2)
	addl	$2,-16(%ebp)
	cmpl	-8(%ebp),%eax
	jg	Lj1250
Lj1249:
	movl	-12(%ebp),%eax
	shll	$1,%eax
	movl	16(%ebp),%edx
	subl	%eax,(%edx)
	movl	24(%ebp),%edx
	movl	-12(%ebp),%eax
	subl	%eax,(%edx)
	movl	-12(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_XMLUTILS_DECODE_8859_1$POINTER$PCHAR$LONGWORD$PWIDECHAR$LONGWORD$$LONGINT
_XMLUTILS_DECODE_8859_1$POINTER$PCHAR$LONGWORD$PWIDECHAR$LONGWORD$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	movl	24(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	16(%ebp),%eax
	movl	-12(%ebp),%edx
	cmpl	(%eax),%edx
	ja	Lj1259
	jmp	Lj1260
Lj1259:
	movl	16(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-12(%ebp)
Lj1260:
	movl	-12(%ebp),%eax
	decl	%eax
	movl	$0,-8(%ebp)
	cmpl	-8(%ebp),%eax
	jl	Lj1264
	decl	-8(%ebp)
	.align 2
Lj1265:
	incl	-8(%ebp)
	movl	20(%ebp),%ebx
	movl	-8(%ebp),%esi
	movl	12(%ebp),%edx
	movl	-8(%ebp),%ecx
	movzbw	(%edx,%ecx,1),%dx
	movw	%dx,(%ebx,%esi,2)
	cmpl	-8(%ebp),%eax
	jg	Lj1265
Lj1264:
	movl	16(%ebp),%edx
	movl	-12(%ebp),%eax
	subl	%eax,(%edx)
	movl	24(%ebp),%edx
	movl	-12(%ebp),%eax
	subl	%eax,(%edx)
	movl	-12(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_XMLUTILS_DECODE_UTF8$POINTER$PCHAR$LONGWORD$PWIDECHAR$LONGWORD$$LONGINT
_XMLUTILS_DECODE_UTF8$POINTER$PCHAR$LONGWORD$PWIDECHAR$LONGWORD$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	call	Lj1271
Lj1271:
	popl	%edx
	movl	$0,-4(%ebp)
	movl	24(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj1277
	.align 2
Lj1276:
	movl	$1,-16(%ebp)
	movl	12(%ebp),%eax
	movzbl	(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	cmpl	$128,%eax
	jb	Lj1283
	jmp	Lj1284
Lj1283:
	movl	20(%ebp),%eax
	movw	-20(%ebp),%cx
	movw	%cx,(%eax)
	jmp	Lj1287
Lj1284:
	movl	-20(%ebp),%eax
	cmpl	$194,%eax
	jb	Lj1288
	jmp	Lj1289
Lj1288:
	movl	$-1,-4(%ebp)
	jmp	Lj1278
Lj1289:
	incl	-16(%ebp)
	movl	-20(%ebp),%eax
	cmpl	$223,%eax
	ja	Lj1292
	jmp	Lj1293
Lj1292:
	incl	-16(%ebp)
	movl	-20(%ebp),%eax
	cmpl	$239,%eax
	ja	Lj1294
	jmp	Lj1295
Lj1294:
	incl	-16(%ebp)
	movl	-20(%ebp),%eax
	cmpl	$247,%eax
	ja	Lj1296
	jmp	Lj1297
Lj1296:
	movl	$-1,-4(%ebp)
	jmp	Lj1278
Lj1297:
Lj1295:
Lj1293:
	movl	16(%ebp),%eax
	movl	(%eax),%eax
	cmpl	-16(%ebp),%eax
	jb	Lj1300
	jmp	Lj1301
Lj1300:
	jmp	Lj1278
Lj1301:
	movl	$1,-12(%ebp)
	jmp	Lj1305
	.align 2
Lj1304:
	movl	12(%ebp),%eax
	movl	-12(%ebp),%ecx
	movzbl	(%eax,%ecx,1),%eax
	subl	$128,%eax
	cmpl	$64,%eax
	jb	Lj1309
Lj1309:
	jc	Lj1307
	jmp	Lj1308
Lj1307:
	movl	12(%ebp),%ecx
	movl	-12(%ebp),%eax
	movzbl	(%ecx,%eax,1),%ecx
	andl	$63,%ecx
	movl	-20(%ebp),%eax
	shll	$6,%eax
	orl	%eax,%ecx
	movl	%ecx,-20(%ebp)
	jmp	Lj1312
Lj1308:
	movl	$-1,-4(%ebp)
	jmp	Lj1306
Lj1312:
	incl	-12(%ebp)
Lj1305:
	movl	-12(%ebp),%eax
	cmpl	-16(%ebp),%eax
	jb	Lj1304
	jmp	Lj1306
Lj1306:
	movl	-16(%ebp),%ecx
	movl	L_TC_XMLUTILS_DECODE_UTF8$crc6B7AC184_MAXCODE$non_lazy_ptr-Lj1271(%edx),%eax
	movl	-4(%eax,%ecx,4),%ecx
	movl	-20(%ebp),%eax
	andl	%eax,%ecx
	movl	%ecx,-20(%ebp)
	movl	-16(%ebp),%eax
	decl	%eax
	movl	L_TC_XMLUTILS_DECODE_UTF8$crc6B7AC184_MAXCODE$non_lazy_ptr-Lj1271(%edx),%ecx
	movl	-4(%ecx,%eax,4),%eax
	cmpl	-20(%ebp),%eax
	jae	Lj1317
	jmp	Lj1318
Lj1317:
	movl	$-1,-4(%ebp)
	jmp	Lj1278
Lj1318:
	movl	-20(%ebp),%eax
	subl	$55295,%eax
	jbe	Lj1323
	subl	$2049,%eax
	jb	Lj1322
	subl	$8191,%eax
	jbe	Lj1323
	decl	%eax
	subl	$1048575,%eax
	jbe	Lj1324
	jmp	Lj1322
Lj1323:
	movl	20(%ebp),%ecx
	movw	-20(%ebp),%ax
	movw	%ax,(%ecx)
	jmp	Lj1321
Lj1324:
	movl	-8(%ebp),%eax
	cmpl	$2,%eax
	jb	Lj1327
	jmp	Lj1328
Lj1327:
	jmp	Lj1278
Lj1328:
	movl	-20(%ebp),%eax
	shrl	$10,%eax
	addl	$55232,%eax
	movl	20(%ebp),%ecx
	movw	%ax,(%ecx)
	movl	-20(%ebp),%eax
	andl	$1023,%eax
	xorl	$56320,%eax
	movl	20(%ebp),%ecx
	movw	%ax,2(%ecx)
	addl	$2,20(%ebp)
	decl	-8(%ebp)
	jmp	Lj1321
Lj1322:
	movl	$-1,-4(%ebp)
	jmp	Lj1278
Lj1321:
Lj1287:
	addl	$2,20(%ebp)
	movl	-16(%ebp),%eax
	addl	%eax,12(%ebp)
	movl	16(%ebp),%ecx
	movl	-16(%ebp),%eax
	subl	%eax,(%ecx)
	decl	-8(%ebp)
Lj1277:
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	ja	Lj1335
	jmp	Lj1278
Lj1335:
	movl	16(%ebp),%eax
	movl	(%eax),%eax
	cmpl	$0,%eax
	ja	Lj1276
	jmp	Lj1278
Lj1278:
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jge	Lj1336
	jmp	Lj1337
Lj1336:
	movl	24(%ebp),%eax
	movl	(%eax),%eax
	movl	-8(%ebp),%ecx
	subl	%ecx,%eax
	movl	%eax,-4(%ebp)
Lj1337:
	movl	24(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	%ecx,(%eax)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_INIT$_XMLUTILS
_INIT$_XMLUTILS:
.reference __XMLUTILS_init_implicit
.globl	__XMLUTILS_init_implicit
__XMLUTILS_init_implicit:
.reference _INIT$_XMLUTILS
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	leave
	ret

.text
	.align 4
.globl	_FINALIZE$_XMLUTILS
_FINALIZE$_XMLUTILS:
.reference __XMLUTILS_finalize
.globl	__XMLUTILS_finalize
__XMLUTILS_finalize:
.reference _FINALIZE$_XMLUTILS
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-4(%ebp)
	call	Lj1345
Lj1345:
	popl	%ebx
	movl	L_TC_XMLUTILS_XML11PG$non_lazy_ptr-Lj1345(%ebx),%eax
	cmpl	$0,(%eax)
	jne	Lj1346
	jmp	Lj1347
Lj1346:
	movl	L_TC_XMLUTILS_XML11PG$non_lazy_ptr-Lj1345(%ebx),%eax
	movl	(%eax),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
Lj1347:
	movl	L_INIT_XMLUTILS_DEF13$non_lazy_ptr-Lj1345(%ebx),%edx
	movl	L_TC_XMLUTILS_XMLVERSIONSTR$non_lazy_ptr-Lj1345(%ebx),%eax
	call	Lfpc_finalize$stub
	movl	-4(%ebp),%ebx
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.const_data
	.align 2
.globl	_$XMLUTILS$_Ld9
_$XMLUTILS$_Ld9:
	.byte	10
	.ascii	"THashTable"

.const_data
	.align 2
.globl	_VMT_XMLUTILS_THASHTABLE
_VMT_XMLUTILS_THASHTABLE:
	.long	20,-20
	.long	_VMT_SYSTEM_TOBJECT
	.long	_$XMLUTILS$_Ld9
	.long	0,0
	.long	_$XMLUTILS$_Ld10
	.long	_RTTI_XMLUTILS_THASHTABLE
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_XMLUTILS_THASHTABLE_$__DESTROY
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
.globl	_$XMLUTILS$_Ld12
_$XMLUTILS$_Ld12:
	.byte	13
	.ascii	"TDblHashArray"

.const_data
	.align 2
.globl	_VMT_XMLUTILS_TDBLHASHARRAY
_VMT_XMLUTILS_TDBLHASHARRAY:
	.long	16,-16
	.long	_VMT_SYSTEM_TOBJECT
	.long	_$XMLUTILS$_Ld12
	.long	0,0
	.long	_$XMLUTILS$_Ld13
	.long	_RTTI_XMLUTILS_TDBLHASHARRAY
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_XMLUTILS_TDBLHASHARRAY_$__DESTROY
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
.globl	_$XMLUTILS$_Ld15
_$XMLUTILS$_Ld15:
	.byte	8
	.ascii	"TBinding"

.const_data
	.align 2
.globl	_VMT_XMLUTILS_TBINDING
_VMT_XMLUTILS_TBINDING:
	.long	20,-20
	.long	_VMT_SYSTEM_TOBJECT
	.long	_$XMLUTILS$_Ld15
	.long	0,0
	.long	_$XMLUTILS$_Ld16
	.long	_RTTI_XMLUTILS_TBINDING
	.long	_INIT_XMLUTILS_TBINDING
	.long	0
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
.globl	_$XMLUTILS$_Ld18
_$XMLUTILS$_Ld18:
	.byte	10
	.ascii	"TNSSupport"

.const_data
	.align 2
.globl	_VMT_XMLUTILS_TNSSUPPORT
_VMT_XMLUTILS_TNSSUPPORT:
	.long	44,-44
	.long	_VMT_SYSTEM_TOBJECT
	.long	_$XMLUTILS$_Ld18
	.long	0,0
	.long	_$XMLUTILS$_Ld19
	.long	_RTTI_XMLUTILS_TNSSUPPORT
	.long	_INIT_XMLUTILS_TNSSUPPORT
	.long	0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_XMLUTILS_TNSSUPPORT_$__DESTROY
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
.globl	_THREADVARLIST_XMLUTILS
_THREADVARLIST_XMLUTILS:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const

.const_data
	.align 2
.globl	_$XMLUTILS$_Ld2
_$XMLUTILS$_Ld2:
	.long	-1,6
.reference _$XMLUTILS$_Ld1
.globl	_$XMLUTILS$_Ld1
_$XMLUTILS$_Ld1:
.reference _$XMLUTILS$_Ld2
	.short	49,46,48,0

.const_data
	.align 2
.globl	_$XMLUTILS$_Ld4
_$XMLUTILS$_Ld4:
	.long	-1,6
.reference _$XMLUTILS$_Ld3
.globl	_$XMLUTILS$_Ld3
_$XMLUTILS$_Ld3:
.reference _$XMLUTILS$_Ld4
	.short	49,46,49,0
# End asmlist al_const
# Begin asmlist al_typedconsts

.data
	.align 2
.globl	_TC_XMLUTILS_XMLVERSIONSTR
_TC_XMLUTILS_XMLVERSIONSTR:
	.long	0
	.long	_$XMLUTILS$_Ld1
	.long	_$XMLUTILS$_Ld3

.data
	.align 3
.globl	_TC_XMLUTILS_NAMINGBITMAP
_TC_XMLUTILS_NAMINGBITMAP:
	.byte	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,255,255,255,255,255,255,255,255,255,255,255,255
	.byte	255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,0,0,0,0,0,0,0,0,254,255
	.byte	255,135,254,255,255,7,0,0,0,0,0,0,0,0,255,255,127,255,255,255,127,255,255,255,255,255,255,255,243,127
	.byte	254,253,255,255,255,255,255,127,255,255,255,255,255,255,255,255,15,224,255,255,255,255,49,252,255
	.byte	255,255,0,0,0,0,0,0,0,255,255,255,255,255,255,255,255,255,255,255,1,0,248,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte	0,0,0,0,64,215,255,255,251,255,255,255,255,127,127,84,253,255,15,0,254,223,255,255,255,255,255,255
	.byte	255,255,254,223,255,255,255,255,3,0,255,255,255,255,255,255,159,25,255,255,255,207,63,3,0,0,0,0,0,0,254
	.byte	255,255,255,127,2,254,255,255,255,127,0,0,0,0,0,0,0,0,0,255,255,255,7,7,0,0,0,0,0,254,255,255,7,254,7,0,0,0,0
	.byte	254,255,255,255,255,255,255,255,255,124,255,127,47,0,96,0,0,0,224,255,255,255,255,255,255,35,0,0,0,255
	.byte	3,0,0,0,224,159,249,255,255,253,197,3,0,0,0,176,3,0,3,0,224,135,249,255,255,253,109,3,0,0,0,94,0,0,28,0,224
	.byte	175,251,255,255,253,237,35,0,0,0,0,1,0,0,0,224,159,249,255,255,253,205,35,0,0,0,176,3,0,0,0,224,199,61,214
	.byte	24,199,191,3,0,0,0,0,0,0,0,0,224,223,253,255,255,253,239,3,0,0,0,0,3,0,0,0,224,223,253,255,255,253,239,3,0,0
	.byte	0,64,3,0,0,0,224,223,253,255,255,253,255,3,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,254,255,255,255,255,127
	.byte	13,0,63,0,0,0,0,0,0,0,150,37,240,254,174,108,13,32,31,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,254,255,255,255,3,0,0,0,0,0
	.byte	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,255,255,255,63,0,255,255,255,255,127,0,237,218,7
	.byte	0,0,0,0,80,1,80,49,130,171,98,44,0,0,0,0,64,0,201,128,245,7,0,0,0,0,8,1,2,255,255,255,255,255,255,255,255,255
	.byte	255,255,255,255,255,255,255,255,255,255,15,255,255,255,255,255,255,255,255,255,255,255,3,255,255
	.byte	63,63,255,255,255,255,63,63,255,170,255,255,255,63,255,255,255,255,255,255,223,95,220,31,207,15,255
	.byte	31,220,31,0,0,0,0,64,76,0,0,0,0,0,0,0,0,0,0,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,128,0,0,0,254,3,0,0,254,255,255,255,255,255
	.byte	255,255,255,255,31,0,254,255,255,255,255,255,255,255,255,255,255,7,224,255,255,255,255,31,0,0,0,0,0
	.byte	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255
	.byte	255,255,255,63,0,0,0,0,0,0,0,0,0,0,0,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255
	.byte	255,255,255,15,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,96,255,3,254,255,255,135,254,255,255,7,0,0,0,0,0,0,128,0,255,255
	.byte	127,255,255,255,127,255,255,255,255,0,0,0,0,0,0,0,255,255,255,255,255,255,255,255,255,255,255,1,0,248
	.byte	3,0,3,0,0,0,0,0,255,255,255,255,255,255,255,255,63,0,0,0,3,0,0,0,192,215,255,255,251,255,255,255,255,127
	.byte	127,84,253,255,15,0,254,223,255,255,255,255,255,255,255,255,254,223,255,255,255,255,123,0,255,255
	.byte	255,255,255,255,159,25,255,255,255,207,63,3,0,0,0,0,0,0,254,255,255,255,127,2,254,255,255,255,127,0,254
	.byte	255,251,255,255,187,22,0,255,255,255,7,7,0,0,0,0,0,254,255,255,7,255,255,7,0,255,3,255,255,255,255,255
	.byte	255,255,255,255,124,255,127,239,255,255,61,255,3,238,255,255,255,255,255,255,243,255,63,30,255,207
	.byte	255,0,0,238,159,249,255,255,253,197,211,159,57,128,176,207,255,3,0,228,135,249,255,255,253,109,211
	.byte	135,57,0,94,192,255,31,0,238,175,251,255,255,253,237,243,191,59,0,0,193,255,0,0,238,159,249,255,255
	.byte	253,205,243,143,57,192,176,195,255,0,0,236,199,61,214,24,199,191,195,199,61,128,0,128,255,0,0,238,223
	.byte	253,255,255,253,239,195,223,61,96,0,195,255,0,0,236,223,253,255,255,253,239,195,223,61,96,64,195,255
	.byte	0,0,236,223,253,255,255,253,255,195,207,61,128,0,195,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,254,255,255,255
	.byte	255,127,255,7,255,127,255,3,0,0,0,0,150,37,240,254,174,108,255,59,95,63,255,3,0,0,0,0,0,0,0,3,255,3,160,194
	.byte	255,254,255,255,255,3,254,255,223,15,191,254,255,63,254,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte	0,0,0,0,0,255,31,2,0,0,0,160,0,0,0,254,255,62,0,254,255,255,255,255,255,255,255,255,255,31,102,254,255,255
	.byte	255,255,255,255,255,255,255,255,119,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255
	.byte	255,255,255,255,255,255,255,255,255,255,255,0,0,0,0,255,255,255,255,255,255,255,255,255,255,255,255
	.byte	255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,0,0,0,48,0,0,0,0,0,0
	.byte	0,0,0,0,0,0,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255
	.byte	255,255,255,255,255,255,255,255,255,255,255,255,255,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255
	.byte	191,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,254,255,255,255,255,255,255
	.byte	255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255
	.byte	255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,191,255,255,255,255,255,255,255
	.byte	255,255,255,255,255,255,255,255,255,0,48,0,0,0,0,0,128,1,0,0,0,0,0,255,255,255,255,255,255,255,255,255
	.byte	255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255
	.byte	255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,63

.data
	.align 3
.globl	_TC_XMLUTILS_XML11HIGHPAGES
_TC_XMLUTILS_XML11HIGHPAGES:
	.byte	255,255,255,255,3,240,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255
	.byte	255,255,0,0,0,0,126

.data
.globl	_TC_XMLUTILS_NAMEPAGES
_TC_XMLUTILS_NAMEPAGES:
	.byte	2,3,4,5,6,7,8,0,0,9,10,11,12,13,14,15,16,17,0,0,0,0,0,0,0,0,0,0,0,0,18,19,0,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,21,22,0,0,0,0,0,0,0,0
	.byte	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
	.byte	1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,23,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
	.byte	1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,24,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,25,3,26,27,28,29,30
	.byte	0,0,31,32,33,34,35,36,37,16,17,0,0,0,0,0,0,0,0,0,0,0,0,18,19,38,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,39,22,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
	.byte	1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,23,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
	.byte	1,1,1,1,1,1,1,1,1,1,1,24,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0

.data
	.align 2
.globl	_TC_XMLUTILS_XML11PG
_TC_XMLUTILS_XML11PG:
	.long	0

.const_data
	.align 2
.globl	_$XMLUTILS$_Ld6
_$XMLUTILS$_Ld6:
	.long	-1,72
.reference _$XMLUTILS$_Ld5
.globl	_$XMLUTILS$_Ld5
_$XMLUTILS$_Ld5:
.reference _$XMLUTILS$_Ld6
	.short	104,116,116,112,58,47,47,119,119,119,46,119,51,46,111,114,103,47,88,77,76,47,49,57,57,56,47,110,97,109
	.short	101,115,112,97,99,101,0

.const_data
	.align 2
.globl	_$XMLUTILS$_Ld8
_$XMLUTILS$_Ld8:
	.long	-1,6
.reference _$XMLUTILS$_Ld7
.globl	_$XMLUTILS$_Ld7
_$XMLUTILS$_Ld7:
.reference _$XMLUTILS$_Ld8
	.short	120,109,108,0

.data
	.align 2
.globl	_TC_XMLUTILS_DECODE_UTF8$crc6B7AC184_MAXCODE
_TC_XMLUTILS_DECODE_UTF8$crc6B7AC184_MAXCODE:
	.long	127,2047,65535,2097151
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

L_SYSTEM_MOVE$formal$formal$LONGINT$stub:
.indirect_symbol _SYSTEM_MOVE$formal$formal$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLUTILS_ISXMLNAME$PWIDECHAR$LONGINT$BOOLEAN$$BOOLEAN$stub:
.indirect_symbol _XMLUTILS_ISXMLNAME$PWIDECHAR$LONGINT$BOOLEAN$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLUTILS_XML11NAMEPAGES$$PBYTEARRAY$stub:
.indirect_symbol _XMLUTILS_XML11NAMEPAGES$$PBYTEARRAY
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLUTILS_ISXML11CHAR$PWIDECHAR$LONGINT$$BOOLEAN$stub:
.indirect_symbol _XMLUTILS_ISXML11CHAR$PWIDECHAR$LONGINT$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLUTILS_ISXML11CHAR$WIDESTRING$LONGINT$$BOOLEAN$stub:
.indirect_symbol _XMLUTILS_ISXML11CHAR$WIDESTRING$LONGINT$$BOOLEAN
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

LFPC_UNICODESTR_DECR_REF$stub:
.indirect_symbol FPC_UNICODESTR_DECR_REF
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_TRIM$WIDESTRING$$WIDESTRING$stub:
.indirect_symbol _SYSUTILS_TRIM$WIDESTRING$$WIDESTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_UNICODESTR_INCR_REF$stub:
.indirect_symbol FPC_UNICODESTR_INCR_REF
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_DELETE$UNICODESTRING$LONGINT$LONGINT$stub:
.indirect_symbol _SYSTEM_DELETE$UNICODESTRING$LONGINT$LONGINT
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

Lfpc_unicodestr_unique$stub:
.indirect_symbol fpc_unicodestr_unique
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_COMPAREWORD$formal$formal$LONGINT$$LONGINT$stub:
.indirect_symbol _SYSTEM_COMPAREWORD$formal$formal$LONGINT$$LONGINT
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

L_SYSTEM_ALLOCMEM$LONGWORD$$POINTER$stub:
.indirect_symbol _SYSTEM_ALLOCMEM$LONGWORD$$POINTER
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

L_XMLUTILS_THASHTABLE_$__CLEAR$stub:
.indirect_symbol _XMLUTILS_THASHTABLE_$__CLEAR
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

L_SYSTEM_TOBJECT_$__DESTROY$stub:
.indirect_symbol _SYSTEM_TOBJECT_$__DESTROY
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

Lfpc_finalize$stub:
.indirect_symbol fpc_finalize
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

L_XMLUTILS_THASHTABLE_$__LOOKUP$PWIDECHAR$LONGINT$BOOLEAN$BOOLEAN$$PHASHITEM$stub:
.indirect_symbol _XMLUTILS_THASHTABLE_$__LOOKUP$PWIDECHAR$LONGINT$BOOLEAN$BOOLEAN$$PHASHITEM
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLUTILS_HASH$LONGWORD$PWIDECHAR$LONGINT$$LONGWORD$stub:
.indirect_symbol _XMLUTILS_HASH$LONGWORD$PWIDECHAR$LONGINT$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLUTILS_KEYCOMPARE$WIDESTRING$POINTER$LONGINT$$BOOLEAN$stub:
.indirect_symbol _XMLUTILS_KEYCOMPARE$WIDESTRING$POINTER$LONGINT$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLUTILS_THASHTABLE_$__RESIZE$LONGWORD$stub:
.indirect_symbol _XMLUTILS_THASHTABLE_$__RESIZE$LONGWORD
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

Lfpc_initialize$stub:
.indirect_symbol fpc_initialize
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_unicodestr_setlength$stub:
.indirect_symbol fpc_unicodestr_setlength
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_REALLOCMEM$POINTER$LONGWORD$$POINTER$stub:
.indirect_symbol _SYSTEM_REALLOCMEM$POINTER$LONGWORD$$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_unicodestr_compare_equal$stub:
.indirect_symbol fpc_unicodestr_compare_equal
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_COMPAREBYTE$formal$formal$LONGINT$$LONGINT$stub:
.indirect_symbol _SYSTEM_COMPAREBYTE$formal$formal$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLUTILS_THASHTABLE_$__CREATE$LONGINT$BOOLEAN$$THASHTABLE$stub:
.indirect_symbol _XMLUTILS_THASHTABLE_$__CREATE$LONGINT$BOOLEAN$$THASHTABLE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_dynarray_setlength$stub:
.indirect_symbol fpc_dynarray_setlength
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLUTILS_TNSSUPPORT_$__DEFINEBINDING$WIDESTRING$WIDESTRING$TBINDING$stub:
.indirect_symbol _XMLUTILS_TNSSUPPORT_$__DEFINEBINDING$WIDESTRING$WIDESTRING$TBINDING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TFPLIST_$__ADD$POINTER$$LONGINT$stub:
.indirect_symbol _CLASSES_TFPLIST_$__ADD$POINTER$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLUTILS_THASHTABLE_$__FINDORADD$PWIDECHAR$LONGINT$$PHASHITEM$stub:
.indirect_symbol _XMLUTILS_THASHTABLE_$__FINDORADD$PWIDECHAR$LONGINT$$PHASHITEM
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLUTILS_TNSSUPPORT_$__BINDPREFIX$WIDESTRING$PHASHITEM$$TBINDING$stub:
.indirect_symbol _XMLUTILS_TNSSUPPORT_$__BINDPREFIX$WIDESTRING$PHASHITEM$$TBINDING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_dynarray_length$stub:
.indirect_symbol fpc_dynarray_length
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

L_SYSUTILS_COMPAREMEM$POINTER$POINTER$LONGWORD$$BOOLEAN$stub:
.indirect_symbol _SYSUTILS_COMPAREMEM$POINTER$POINTER$LONGWORD$$BOOLEAN
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
.globl	_INIT_XMLUTILS_TXMLVERSION
_INIT_XMLUTILS_TXMLVERSION:
	.byte	3,11
	.ascii	"TXMLVersion"
	.byte	5
	.long	0,2,0
	.byte	17
	.ascii	"xmlVersionUnknown"
	.byte	12
	.ascii	"xmlVersion10"
	.byte	12
	.ascii	"xmlVersion11"
	.byte	8
	.ascii	"xmlutils"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_XMLUTILS_TXMLVERSION
_RTTI_XMLUTILS_TXMLVERSION:
	.byte	3,11
	.ascii	"TXMLVersion"
	.byte	5
	.long	0,2,0
	.byte	17
	.ascii	"xmlVersionUnknown"
	.byte	12
	.ascii	"xmlVersion10"
	.byte	12
	.ascii	"xmlVersion11"
	.byte	8
	.ascii	"xmlutils"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_XMLUTILS_TXMLVERSION_s2o
_RTTI_XMLUTILS_TXMLVERSION_s2o:
	.long	3,1
	.long	_RTTI_XMLUTILS_TXMLVERSION+44
	.long	2
	.long	_RTTI_XMLUTILS_TXMLVERSION+57
	.long	0
	.long	_RTTI_XMLUTILS_TXMLVERSION+26

.const_data
	.align 2
.globl	_RTTI_XMLUTILS_TXMLVERSION_o2s
_RTTI_XMLUTILS_TXMLVERSION_o2s:
	.long	0
	.long	_RTTI_XMLUTILS_TXMLVERSION+26
	.long	_RTTI_XMLUTILS_TXMLVERSION+44
	.long	_RTTI_XMLUTILS_TXMLVERSION+57

.const_data
	.align 2
.globl	_INIT_XMLUTILS_DEF13
_INIT_XMLUTILS_DEF13:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	_INIT_SYSTEM_WIDESTRING
	.long	258

.const_data
	.align 2
.globl	_INIT_XMLUTILS_TXMLNODETYPE
_INIT_XMLUTILS_TXMLNODETYPE:
	.byte	3,12
	.ascii	"TXMLNodeType"
	.byte	5
	.long	0,17,0
	.byte	6
	.ascii	"ntNone"
	.byte	9
	.ascii	"ntElement"
	.byte	11
	.ascii	"ntAttribute"
	.byte	6
	.ascii	"ntText"
	.byte	7
	.ascii	"ntCDATA"
	.byte	17
	.ascii	"ntEntityReference"
	.byte	8
	.ascii	"ntEntity"
	.byte	23
	.ascii	"ntProcessingInstruction"
	.byte	9
	.ascii	"ntComment"
	.byte	10
	.ascii	"ntDocument"
	.byte	14
	.ascii	"ntDocumentType"
	.byte	18
	.ascii	"ntDocumentFragment"
	.byte	10
	.ascii	"ntNotation"
	.byte	12
	.ascii	"ntWhitespace"
	.byte	23
	.ascii	"ntSignificantWhitespace"
	.byte	12
	.ascii	"ntEndElement"
	.byte	11
	.ascii	"ntEndEntity"
	.byte	16
	.ascii	"ntXmlDeclaration"
	.byte	8
	.ascii	"xmlutils"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_XMLUTILS_TXMLNODETYPE
_RTTI_XMLUTILS_TXMLNODETYPE:
	.byte	3,12
	.ascii	"TXMLNodeType"
	.byte	5
	.long	0,17,0
	.byte	6
	.ascii	"ntNone"
	.byte	9
	.ascii	"ntElement"
	.byte	11
	.ascii	"ntAttribute"
	.byte	6
	.ascii	"ntText"
	.byte	7
	.ascii	"ntCDATA"
	.byte	17
	.ascii	"ntEntityReference"
	.byte	8
	.ascii	"ntEntity"
	.byte	23
	.ascii	"ntProcessingInstruction"
	.byte	9
	.ascii	"ntComment"
	.byte	10
	.ascii	"ntDocument"
	.byte	14
	.ascii	"ntDocumentType"
	.byte	18
	.ascii	"ntDocumentFragment"
	.byte	10
	.ascii	"ntNotation"
	.byte	12
	.ascii	"ntWhitespace"
	.byte	23
	.ascii	"ntSignificantWhitespace"
	.byte	12
	.ascii	"ntEndElement"
	.byte	11
	.ascii	"ntEndEntity"
	.byte	16
	.ascii	"ntXmlDeclaration"
	.byte	8
	.ascii	"xmlutils"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_XMLUTILS_TXMLNODETYPE_s2o
_RTTI_XMLUTILS_TXMLNODETYPE_s2o:
	.long	18,2
	.long	_RTTI_XMLUTILS_TXMLNODETYPE+44
	.long	4
	.long	_RTTI_XMLUTILS_TXMLNODETYPE+63
	.long	8
	.long	_RTTI_XMLUTILS_TXMLNODETYPE+122
	.long	9
	.long	_RTTI_XMLUTILS_TXMLNODETYPE+132
	.long	11
	.long	_RTTI_XMLUTILS_TXMLNODETYPE+158
	.long	10
	.long	_RTTI_XMLUTILS_TXMLNODETYPE+143
	.long	1
	.long	_RTTI_XMLUTILS_TXMLNODETYPE+34
	.long	15
	.long	_RTTI_XMLUTILS_TXMLNODETYPE+225
	.long	16
	.long	_RTTI_XMLUTILS_TXMLNODETYPE+238
	.long	6
	.long	_RTTI_XMLUTILS_TXMLNODETYPE+89
	.long	5
	.long	_RTTI_XMLUTILS_TXMLNODETYPE+71
	.long	0
	.long	_RTTI_XMLUTILS_TXMLNODETYPE+27
	.long	12
	.long	_RTTI_XMLUTILS_TXMLNODETYPE+177
	.long	7
	.long	_RTTI_XMLUTILS_TXMLNODETYPE+98
	.long	14
	.long	_RTTI_XMLUTILS_TXMLNODETYPE+201
	.long	3
	.long	_RTTI_XMLUTILS_TXMLNODETYPE+56
	.long	13
	.long	_RTTI_XMLUTILS_TXMLNODETYPE+188
	.long	17
	.long	_RTTI_XMLUTILS_TXMLNODETYPE+250

.const_data
	.align 2
.globl	_RTTI_XMLUTILS_TXMLNODETYPE_o2s
_RTTI_XMLUTILS_TXMLNODETYPE_o2s:
	.long	0
	.long	_RTTI_XMLUTILS_TXMLNODETYPE+27
	.long	_RTTI_XMLUTILS_TXMLNODETYPE+34
	.long	_RTTI_XMLUTILS_TXMLNODETYPE+44
	.long	_RTTI_XMLUTILS_TXMLNODETYPE+56
	.long	_RTTI_XMLUTILS_TXMLNODETYPE+63
	.long	_RTTI_XMLUTILS_TXMLNODETYPE+71
	.long	_RTTI_XMLUTILS_TXMLNODETYPE+89
	.long	_RTTI_XMLUTILS_TXMLNODETYPE+98
	.long	_RTTI_XMLUTILS_TXMLNODETYPE+122
	.long	_RTTI_XMLUTILS_TXMLNODETYPE+132
	.long	_RTTI_XMLUTILS_TXMLNODETYPE+143
	.long	_RTTI_XMLUTILS_TXMLNODETYPE+158
	.long	_RTTI_XMLUTILS_TXMLNODETYPE+177
	.long	_RTTI_XMLUTILS_TXMLNODETYPE+188
	.long	_RTTI_XMLUTILS_TXMLNODETYPE+201
	.long	_RTTI_XMLUTILS_TXMLNODETYPE+225
	.long	_RTTI_XMLUTILS_TXMLNODETYPE+238
	.long	_RTTI_XMLUTILS_TXMLNODETYPE+250

.const_data
	.align 2
.globl	_INIT_XMLUTILS_TATTRDATATYPE
_INIT_XMLUTILS_TATTRDATATYPE:
	.byte	3,13
	.ascii	"TAttrDataType"
	.byte	5
	.long	0,8,0
	.byte	7
	.ascii	"dtCdata"
	.byte	4
	.ascii	"dtId"
	.byte	7
	.ascii	"dtIdRef"
	.byte	8
	.ascii	"dtIdRefs"
	.byte	8
	.ascii	"dtEntity"
	.byte	10
	.ascii	"dtEntities"
	.byte	9
	.ascii	"dtNmToken"
	.byte	10
	.ascii	"dtNmTokens"
	.byte	10
	.ascii	"dtNotation"
	.byte	8
	.ascii	"xmlutils"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_XMLUTILS_TATTRDATATYPE
_RTTI_XMLUTILS_TATTRDATATYPE:
	.byte	3,13
	.ascii	"TAttrDataType"
	.byte	5
	.long	0,8,0
	.byte	7
	.ascii	"dtCdata"
	.byte	4
	.ascii	"dtId"
	.byte	7
	.ascii	"dtIdRef"
	.byte	8
	.ascii	"dtIdRefs"
	.byte	8
	.ascii	"dtEntity"
	.byte	10
	.ascii	"dtEntities"
	.byte	9
	.ascii	"dtNmToken"
	.byte	10
	.ascii	"dtNmTokens"
	.byte	10
	.ascii	"dtNotation"
	.byte	8
	.ascii	"xmlutils"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_XMLUTILS_TATTRDATATYPE_s2o
_RTTI_XMLUTILS_TATTRDATATYPE_s2o:
	.long	9,0
	.long	_RTTI_XMLUTILS_TATTRDATATYPE+28
	.long	5
	.long	_RTTI_XMLUTILS_TATTRDATATYPE+67
	.long	4
	.long	_RTTI_XMLUTILS_TATTRDATATYPE+58
	.long	1
	.long	_RTTI_XMLUTILS_TATTRDATATYPE+36
	.long	2
	.long	_RTTI_XMLUTILS_TATTRDATATYPE+41
	.long	3
	.long	_RTTI_XMLUTILS_TATTRDATATYPE+49
	.long	6
	.long	_RTTI_XMLUTILS_TATTRDATATYPE+78
	.long	7
	.long	_RTTI_XMLUTILS_TATTRDATATYPE+88
	.long	8
	.long	_RTTI_XMLUTILS_TATTRDATATYPE+99

.const_data
	.align 2
.globl	_RTTI_XMLUTILS_TATTRDATATYPE_o2s
_RTTI_XMLUTILS_TATTRDATATYPE_o2s:
	.long	0
	.long	_RTTI_XMLUTILS_TATTRDATATYPE+28
	.long	_RTTI_XMLUTILS_TATTRDATATYPE+36
	.long	_RTTI_XMLUTILS_TATTRDATATYPE+41
	.long	_RTTI_XMLUTILS_TATTRDATATYPE+49
	.long	_RTTI_XMLUTILS_TATTRDATATYPE+58
	.long	_RTTI_XMLUTILS_TATTRDATATYPE+67
	.long	_RTTI_XMLUTILS_TATTRDATATYPE+78
	.long	_RTTI_XMLUTILS_TATTRDATATYPE+88
	.long	_RTTI_XMLUTILS_TATTRDATATYPE+99

.const_data
	.align 2
.globl	_INIT_XMLUTILS_PPHASHITEM
_INIT_XMLUTILS_PPHASHITEM:
	.byte	0
	.ascii	"\012PPHashItem"

.const_data
	.align 2
.globl	_RTTI_XMLUTILS_PPHASHITEM
_RTTI_XMLUTILS_PPHASHITEM:
	.byte	0
	.ascii	"\012PPHashItem"

.const_data
	.align 2
.globl	_INIT_XMLUTILS_PHASHITEM
_INIT_XMLUTILS_PHASHITEM:
	.byte	0
	.ascii	"\011PHashItem"

.const_data
	.align 2
.globl	_RTTI_XMLUTILS_PHASHITEM
_RTTI_XMLUTILS_PHASHITEM:
	.byte	0
	.ascii	"\011PHashItem"

.const_data
	.align 2
.globl	_INIT_XMLUTILS_THASHITEM
_INIT_XMLUTILS_THASHITEM:
	.byte	13,9
	.ascii	"THashItem"
	.long	16,1
	.long	_INIT_SYSTEM_WIDESTRING
	.long	0

.const_data
	.align 2
.globl	_RTTI_XMLUTILS_THASHITEM
_RTTI_XMLUTILS_THASHITEM:
	.byte	13,9
	.ascii	"THashItem"
	.long	16,4
	.long	_RTTI_SYSTEM_WIDESTRING
	.long	0
	.long	_RTTI_SYSTEM_LONGWORD
	.long	4
	.long	_RTTI_XMLUTILS_PHASHITEM
	.long	8
	.long	_RTTI_SYSTEM_TOBJECT
	.long	12

.const_data
	.align 2
.globl	_INIT_XMLUTILS_THASHITEMARRAY
_INIT_XMLUTILS_THASHITEMARRAY:
	.byte	12
	.ascii	"\016THashItemArray"
	.long	4,536870911
	.long	_INIT_XMLUTILS_PHASHITEM
	.long	-1

.const_data
	.align 2
.globl	_RTTI_XMLUTILS_THASHITEMARRAY
_RTTI_XMLUTILS_THASHITEMARRAY:
	.byte	12
	.ascii	"\016THashItemArray"
	.long	4,536870911
	.long	_RTTI_XMLUTILS_PHASHITEM
	.long	-1

.const_data
	.align 2
.globl	_INIT_XMLUTILS_PHASHITEMARRAY
_INIT_XMLUTILS_PHASHITEMARRAY:
	.byte	0
	.ascii	"\016PHashItemArray"

.const_data
	.align 2
.globl	_RTTI_XMLUTILS_PHASHITEMARRAY
_RTTI_XMLUTILS_PHASHITEMARRAY:
	.byte	0
	.ascii	"\016PHashItemArray"

.const_data
	.align 2
.globl	_INIT_XMLUTILS_THASHFOREACH
_INIT_XMLUTILS_THASHFOREACH:
	.byte	23,12
	.ascii	"THashForEach"

.const_data
	.align 2
.globl	_RTTI_XMLUTILS_THASHFOREACH
_RTTI_XMLUTILS_THASHFOREACH:
	.byte	23,12
	.ascii	"THashForEach"

.const_data
	.align 2
.globl	_$XMLUTILS$_Ld10
_$XMLUTILS$_Ld10:
	.short	0
	.long	_$XMLUTILS$_Ld11
	.align 2
.globl	_$XMLUTILS$_Ld11
_$XMLUTILS$_Ld11:
	.short	0

.const_data
	.align 2
.globl	_INIT_XMLUTILS_THASHTABLE
_INIT_XMLUTILS_THASHTABLE:
	.byte	15,10
	.ascii	"THashTable"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_XMLUTILS_THASHTABLE
_RTTI_XMLUTILS_THASHTABLE:
	.byte	15,10
	.ascii	"THashTable"
	.long	_VMT_XMLUTILS_THASHTABLE
	.long	_RTTI_SYSTEM_TOBJECT
	.short	0
	.byte	8
	.ascii	"xmlutils"
	.short	0

.const_data
	.align 2
.globl	_INIT_XMLUTILS_TEXPHASHENTRY
_INIT_XMLUTILS_TEXPHASHENTRY:
	.byte	13,13
	.ascii	"TExpHashEntry"
	.long	20,0

.const_data
	.align 2
.globl	_RTTI_XMLUTILS_TEXPHASHENTRY
_RTTI_XMLUTILS_TEXPHASHENTRY:
	.byte	13,13
	.ascii	"TExpHashEntry"
	.long	20,5
	.long	_RTTI_SYSTEM_LONGWORD
	.long	0
	.long	_RTTI_SYSTEM_LONGWORD
	.long	4
	.long	_RTTI_SYSTEM_PWIDESTRING
	.long	8
	.long	_RTTI_SYSTEM_PWIDECHAR
	.long	12
	.long	_RTTI_SYSTEM_LONGINT
	.long	16

.const_data
	.align 2
.globl	_INIT_XMLUTILS_TEXPHASHENTRYARRAY
_INIT_XMLUTILS_TEXPHASHENTRYARRAY:
	.byte	12
	.ascii	"\022TExpHashEntryArray"
	.long	20,107374182
	.long	_INIT_XMLUTILS_TEXPHASHENTRY
	.long	-1

.const_data
	.align 2
.globl	_RTTI_XMLUTILS_TEXPHASHENTRYARRAY
_RTTI_XMLUTILS_TEXPHASHENTRYARRAY:
	.byte	12
	.ascii	"\022TExpHashEntryArray"
	.long	20,107374182
	.long	_RTTI_XMLUTILS_TEXPHASHENTRY
	.long	-1

.const_data
	.align 2
.globl	_INIT_XMLUTILS_PEXPHASHENTRYARRAY
_INIT_XMLUTILS_PEXPHASHENTRYARRAY:
	.byte	0
	.ascii	"\022PExpHashEntryArray"

.const_data
	.align 2
.globl	_RTTI_XMLUTILS_PEXPHASHENTRYARRAY
_RTTI_XMLUTILS_PEXPHASHENTRYARRAY:
	.byte	0
	.ascii	"\022PExpHashEntryArray"

.const_data
	.align 2
.globl	_$XMLUTILS$_Ld13
_$XMLUTILS$_Ld13:
	.short	0
	.long	_$XMLUTILS$_Ld14
	.align 2
.globl	_$XMLUTILS$_Ld14
_$XMLUTILS$_Ld14:
	.short	0

.const_data
	.align 2
.globl	_INIT_XMLUTILS_TDBLHASHARRAY
_INIT_XMLUTILS_TDBLHASHARRAY:
	.byte	15,13
	.ascii	"TDblHashArray"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_XMLUTILS_TDBLHASHARRAY
_RTTI_XMLUTILS_TDBLHASHARRAY:
	.byte	15,13
	.ascii	"TDblHashArray"
	.long	_VMT_XMLUTILS_TDBLHASHARRAY
	.long	_RTTI_SYSTEM_TOBJECT
	.short	0
	.byte	8
	.ascii	"xmlutils"
	.short	0

.const_data
	.align 2
.globl	_INIT_XMLUTILS_TLOCATION
_INIT_XMLUTILS_TLOCATION:
	.byte	13,9
	.ascii	"TLocation"
	.long	8,0

.const_data
	.align 2
.globl	_RTTI_XMLUTILS_TLOCATION
_RTTI_XMLUTILS_TLOCATION:
	.byte	13,9
	.ascii	"TLocation"
	.long	8,2
	.long	_RTTI_SYSTEM_LONGINT
	.long	0
	.long	_RTTI_SYSTEM_LONGINT
	.long	4

.const_data
	.align 2
.globl	_INIT_XMLUTILS_PNODEDATA
_INIT_XMLUTILS_PNODEDATA:
	.byte	0
	.ascii	"\011PNodeData"

.const_data
	.align 2
.globl	_RTTI_XMLUTILS_PNODEDATA
_RTTI_XMLUTILS_PNODEDATA:
	.byte	0
	.ascii	"\011PNodeData"

.const_data
	.align 2
.globl	_INIT_XMLUTILS_TNODEDATA
_INIT_XMLUTILS_TNODEDATA:
	.byte	13,9
	.ascii	"TNodeData"
	.long	64,1
	.long	_INIT_SYSTEM_WIDESTRING
	.long	48

.const_data
	.align 2
.globl	_RTTI_XMLUTILS_TNODEDATA
_RTTI_XMLUTILS_TNODEDATA:
	.byte	13,9
	.ascii	"TNodeData"
	.long	64,15
	.long	_RTTI_XMLUTILS_PNODEDATA
	.long	0
	.long	_RTTI_XMLUTILS_PHASHITEM
	.long	4
	.long	_RTTI_XMLUTILS_PHASHITEM
	.long	8
	.long	_RTTI_XMLUTILS_PHASHITEM
	.long	12
	.long	_RTTI_SYSTEM_LONGINT
	.long	16
	.long	_RTTI_SYSTEM_TOBJECT
	.long	20
	.long	_RTTI_XMLUTILS_TLOCATION
	.long	24
	.long	_RTTI_XMLUTILS_TLOCATION
	.long	32
	.long	_RTTI_XMLUTILS_PHASHITEM
	.long	40
	.long	_RTTI_XMLUTILS_TXMLNODETYPE
	.long	44
	.long	_RTTI_SYSTEM_WIDESTRING
	.long	48
	.long	_RTTI_SYSTEM_PWIDECHAR
	.long	52
	.long	_RTTI_SYSTEM_LONGINT
	.long	56
	.long	_RTTI_SYSTEM_BOOLEAN
	.long	60
	.long	_RTTI_SYSTEM_BOOLEAN
	.long	61

.const_data
	.align 2
.globl	_$XMLUTILS$_Ld16
_$XMLUTILS$_Ld16:
	.short	0
	.long	_$XMLUTILS$_Ld17
	.align 2
.globl	_$XMLUTILS$_Ld17
_$XMLUTILS$_Ld17:
	.short	0

.const_data
	.align 2
.globl	_INIT_XMLUTILS_TBINDING
_INIT_XMLUTILS_TBINDING:
	.byte	15,8
	.ascii	"TBinding"
	.long	4,1
	.long	_INIT_SYSTEM_WIDESTRING
	.long	4

.const_data
	.align 2
.globl	_RTTI_XMLUTILS_TBINDING
_RTTI_XMLUTILS_TBINDING:
	.byte	15,8
	.ascii	"TBinding"
	.long	_VMT_XMLUTILS_TBINDING
	.long	_RTTI_SYSTEM_TOBJECT
	.short	0
	.byte	8
	.ascii	"xmlutils"
	.short	0

.const_data
	.align 2
.globl	_INIT_XMLUTILS_TATTRIBUTEACTION
_INIT_XMLUTILS_TATTRIBUTEACTION:
	.byte	3,16
	.ascii	"TAttributeAction"
	.byte	5
	.long	0,2,0
	.byte	11
	.ascii	"aaUnchanged"
	.byte	8
	.ascii	"aaPrefix"
	.byte	6
	.ascii	"aaBoth"
	.byte	8
	.ascii	"xmlutils"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_XMLUTILS_TATTRIBUTEACTION
_RTTI_XMLUTILS_TATTRIBUTEACTION:
	.byte	3,16
	.ascii	"TAttributeAction"
	.byte	5
	.long	0,2,0
	.byte	11
	.ascii	"aaUnchanged"
	.byte	8
	.ascii	"aaPrefix"
	.byte	6
	.ascii	"aaBoth"
	.byte	8
	.ascii	"xmlutils"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_XMLUTILS_TATTRIBUTEACTION_s2o
_RTTI_XMLUTILS_TATTRIBUTEACTION_s2o:
	.long	3,2
	.long	_RTTI_XMLUTILS_TATTRIBUTEACTION+52
	.long	1
	.long	_RTTI_XMLUTILS_TATTRIBUTEACTION+43
	.long	0
	.long	_RTTI_XMLUTILS_TATTRIBUTEACTION+31

.const_data
	.align 2
.globl	_RTTI_XMLUTILS_TATTRIBUTEACTION_o2s
_RTTI_XMLUTILS_TATTRIBUTEACTION_o2s:
	.long	0
	.long	_RTTI_XMLUTILS_TATTRIBUTEACTION+31
	.long	_RTTI_XMLUTILS_TATTRIBUTEACTION+43
	.long	_RTTI_XMLUTILS_TATTRIBUTEACTION+52

.const_data
	.align 2
.globl	_INIT_XMLUTILS_DEF53
_INIT_XMLUTILS_DEF53:
	.byte	21
	.ascii	"\000"
	.long	4
	.long	_INIT_XMLUTILS_TBINDING
	.long	-1,0
	.byte	8
	.ascii	"xmlutils"

.const_data
	.align 2
.globl	_$XMLUTILS$_Ld19
_$XMLUTILS$_Ld19:
	.short	0
	.long	_$XMLUTILS$_Ld20
	.align 2
.globl	_$XMLUTILS$_Ld20
_$XMLUTILS$_Ld20:
	.short	0

.const_data
	.align 2
.globl	_INIT_XMLUTILS_TNSSUPPORT
_INIT_XMLUTILS_TNSSUPPORT:
	.byte	15,10
	.ascii	"TNSSupport"
	.long	4,2
	.long	_INIT_XMLUTILS_DEF53
	.long	20
	.long	_INIT_XMLUTILS_THASHITEM
	.long	28

.const_data
	.align 2
.globl	_RTTI_XMLUTILS_TNSSUPPORT
_RTTI_XMLUTILS_TNSSUPPORT:
	.byte	15,10
	.ascii	"TNSSupport"
	.long	_VMT_XMLUTILS_TNSSUPPORT
	.long	_RTTI_SYSTEM_TOBJECT
	.short	0
	.byte	8
	.ascii	"xmlutils"
	.short	0

.const_data
	.align 2
.globl	_INIT_XMLUTILS_PWIDECHARBUF
_INIT_XMLUTILS_PWIDECHARBUF:
	.byte	0
	.ascii	"\014PWideCharBuf"

.const_data
	.align 2
.globl	_RTTI_XMLUTILS_PWIDECHARBUF
_RTTI_XMLUTILS_PWIDECHARBUF:
	.byte	0
	.ascii	"\014PWideCharBuf"

.const_data
	.align 2
.globl	_INIT_XMLUTILS_TWIDECHARBUF
_INIT_XMLUTILS_TWIDECHARBUF:
	.byte	13,12
	.ascii	"TWideCharBuf"
	.long	12,0

.const_data
	.align 2
.globl	_RTTI_XMLUTILS_TWIDECHARBUF
_RTTI_XMLUTILS_TWIDECHARBUF:
	.byte	13,12
	.ascii	"TWideCharBuf"
	.long	12,3
	.long	_RTTI_SYSTEM_PWIDECHAR
	.long	0
	.long	_RTTI_SYSTEM_LONGINT
	.long	4
	.long	_RTTI_SYSTEM_LONGINT
	.long	8

.const_data
	.align 2
.globl	_INIT_XMLUTILS_TSETOFBYTE
_INIT_XMLUTILS_TSETOFBYTE:
	.byte	5,10
	.ascii	"TSetOfByte"
	.byte	1
	.long	_INIT_SYSTEM_BYTE

.const_data
	.align 2
.globl	_RTTI_XMLUTILS_TSETOFBYTE
_RTTI_XMLUTILS_TSETOFBYTE:
	.byte	5,10
	.ascii	"TSetOfByte"
	.byte	1
	.long	_RTTI_SYSTEM_BYTE
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
L_TC_XMLUTILS_XML11PG$non_lazy_ptr:
.indirect_symbol _TC_XMLUTILS_XML11PG
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_XMLUTILS_XML11HIGHPAGES$non_lazy_ptr:
.indirect_symbol _TC_XMLUTILS_XML11HIGHPAGES
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
LFPC_EMPTYCHAR$non_lazy_ptr:
.indirect_symbol FPC_EMPTYCHAR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_XMLUTILS_NAMEPAGES$non_lazy_ptr:
.indirect_symbol _TC_XMLUTILS_NAMEPAGES
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_XMLUTILS_NAMINGBITMAP$non_lazy_ptr:
.indirect_symbol _TC_XMLUTILS_NAMINGBITMAP
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_INIT_XMLUTILS_THASHITEM$non_lazy_ptr:
.indirect_symbol _INIT_XMLUTILS_THASHITEM
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_XMLUTILS_THASHTABLE$non_lazy_ptr:
.indirect_symbol _VMT_XMLUTILS_THASHTABLE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_CLASSES_TFPLIST$non_lazy_ptr:
.indirect_symbol _VMT_CLASSES_TFPLIST
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_INIT_XMLUTILS_DEF53$non_lazy_ptr:
.indirect_symbol _INIT_XMLUTILS_DEF53
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLUTILS$_Ld5$non_lazy_ptr:
.indirect_symbol _$XMLUTILS$_Ld5
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLUTILS$_Ld7$non_lazy_ptr:
.indirect_symbol _$XMLUTILS$_Ld7
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_XMLUTILS_TBINDING$non_lazy_ptr:
.indirect_symbol _VMT_XMLUTILS_TBINDING
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_XMLUTILS_DECODE_UTF8$crc6B7AC184_MAXCODE$non_lazy_ptr:
.indirect_symbol _TC_XMLUTILS_DECODE_UTF8$crc6B7AC184_MAXCODE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_INIT_XMLUTILS_DEF13$non_lazy_ptr:
.indirect_symbol _INIT_XMLUTILS_DEF13
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_XMLUTILS_XMLVERSIONSTR$non_lazy_ptr:
.indirect_symbol _TC_XMLUTILS_XMLVERSIONSTR
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

