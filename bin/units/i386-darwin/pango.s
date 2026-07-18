# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_PANGO_PANGO_ASCENT$TPANGORECTANGLE$$LONGINT
_PANGO_PANGO_ASCENT$TPANGORECTANGLE$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%esi,-32(%ebp)
	movl	%edi,-28(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%esi
	leal	-24(%ebp),%edi
	cld
	movl	$4,%ecx
	rep
	movsl
	movl	-20(%ebp),%eax
	negl	%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-32(%ebp),%esi
	movl	-28(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_PANGO_PANGO_DESCENT$TPANGORECTANGLE$$LONGINT
_PANGO_PANGO_DESCENT$TPANGORECTANGLE$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%esi,-32(%ebp)
	movl	%edi,-28(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%esi
	leal	-24(%ebp),%edi
	cld
	movl	$4,%ecx
	rep
	movsl
	movl	-20(%ebp),%eax
	movl	-12(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-32(%ebp),%esi
	movl	-28(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_PANGO_PANGO_LBEARING$TPANGORECTANGLE$$LONGINT
_PANGO_PANGO_LBEARING$TPANGORECTANGLE$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%esi,-32(%ebp)
	movl	%edi,-28(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%esi
	leal	-24(%ebp),%edi
	cld
	movl	$4,%ecx
	rep
	movsl
	movl	-24(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-32(%ebp),%esi
	movl	-28(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_PANGO_PANGO_RBEARING$TPANGORECTANGLE$$LONGINT
_PANGO_PANGO_RBEARING$TPANGORECTANGLE$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%esi,-32(%ebp)
	movl	%edi,-28(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%esi
	leal	-24(%ebp),%edi
	cld
	movl	$4,%ecx
	rep
	movsl
	movl	-24(%ebp),%eax
	movl	-16(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-32(%ebp),%esi
	movl	-28(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_PANGO_PANGO_TYPE_LANGUAGE$$LONGWORD
_PANGO_PANGO_TYPE_LANGUAGE$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	L_pango_language_get_type$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_PANGO_PANGO_LANGUAGE_TO_STRING$PPANGOLANGUAGE$$PCHAR
_PANGO_PANGO_LANGUAGE_TO_STRING$PPANGOLANGUAGE$$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_PANGO_PANGO_PIXELS$LONGINT$$LONGINT
_PANGO_PANGO_PIXELS$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jge	Lj29
	jmp	Lj30
Lj29:
	movl	-4(%ebp),%eax
	addl	$512,%eax
	movl	%eax,%edx
	sarl	$31,%edx
	andl	$1023,%edx
	addl	%edx,%eax
	sarl	$10,%eax
	movl	%eax,-8(%ebp)
	jmp	Lj33
Lj30:
	movl	-4(%ebp),%eax
	subl	$512,%eax
	movl	%eax,%edx
	sarl	$31,%edx
	andl	$1023,%edx
	addl	%edx,%eax
	sarl	$10,%eax
	movl	%eax,-8(%ebp)
Lj33:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_PANGO_PANGO_TYPE_COLOR$$LONGWORD
_PANGO_PANGO_TYPE_COLOR$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	L_pango_color_get_type$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_PANGO_PANGO_TYPE_ATTR_LIST$$LONGWORD
_PANGO_PANGO_TYPE_ATTR_LIST$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	L_pango_attr_list_get_type$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_PANGO_IS_LINE_BREAK$TPANGOLOGATTR$$LONGWORD
_PANGO_IS_LINE_BREAK$TPANGOLOGATTR$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	andw	$1,%ax
	movzwl	%ax,%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_PANGO_SET_IS_LINE_BREAK$TPANGOLOGATTR$LONGWORD
_PANGO_SET_IS_LINE_BREAK$TPANGOLOGATTR$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	andl	$1,%eax
	movl	-4(%ebp),%edx
	movzwl	(%edx),%edx
	orl	%edx,%eax
	movl	-4(%ebp),%edx
	movw	%ax,(%edx)
	leave
	ret

.text
	.align 4
.globl	_PANGO_IS_MANDATORY_BREAK$TPANGOLOGATTR$$LONGWORD
_PANGO_IS_MANDATORY_BREAK$TPANGOLOGATTR$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	andw	$2,%ax
	movzwl	%ax,%eax
	shrl	$1,%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_PANGO_SET_IS_MANDATORY_BREAK$TPANGOLOGATTR$LONGWORD
_PANGO_SET_IS_MANDATORY_BREAK$TPANGOLOGATTR$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	shll	$1,%eax
	andl	$2,%eax
	movl	-4(%ebp),%edx
	movzwl	(%edx),%edx
	orl	%edx,%eax
	movl	-4(%ebp),%edx
	movw	%ax,(%edx)
	leave
	ret

.text
	.align 4
.globl	_PANGO_IS_CHAR_BREAK$TPANGOLOGATTR$$LONGWORD
_PANGO_IS_CHAR_BREAK$TPANGOLOGATTR$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	andw	$4,%ax
	movzwl	%ax,%eax
	shrl	$2,%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_PANGO_SET_IS_CHAR_BREAK$TPANGOLOGATTR$LONGWORD
_PANGO_SET_IS_CHAR_BREAK$TPANGOLOGATTR$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	shll	$2,%eax
	andl	$4,%eax
	movl	-4(%ebp),%edx
	movzwl	(%edx),%edx
	orl	%edx,%eax
	movl	-4(%ebp),%edx
	movw	%ax,(%edx)
	leave
	ret

.text
	.align 4
.globl	_PANGO_IS_WHITE$TPANGOLOGATTR$$LONGWORD
_PANGO_IS_WHITE$TPANGOLOGATTR$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	andw	$8,%ax
	movzwl	%ax,%eax
	shrl	$3,%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_PANGO_SET_IS_WHITE$TPANGOLOGATTR$LONGWORD
_PANGO_SET_IS_WHITE$TPANGOLOGATTR$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	shll	$3,%eax
	andl	$8,%eax
	movl	-4(%ebp),%edx
	movzwl	(%edx),%edx
	orl	%edx,%eax
	movl	-4(%ebp),%edx
	movw	%ax,(%edx)
	leave
	ret

.text
	.align 4
.globl	_PANGO_IS_CURSOR_POSITION$TPANGOLOGATTR$$LONGWORD
_PANGO_IS_CURSOR_POSITION$TPANGOLOGATTR$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	andw	$16,%ax
	movzwl	%ax,%eax
	shrl	$4,%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_PANGO_SET_IS_CURSOR_POSITION$TPANGOLOGATTR$LONGWORD
_PANGO_SET_IS_CURSOR_POSITION$TPANGOLOGATTR$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	shll	$4,%eax
	andl	$16,%eax
	movl	-4(%ebp),%edx
	movzwl	(%edx),%edx
	orl	%edx,%eax
	movl	-4(%ebp),%edx
	movw	%ax,(%edx)
	leave
	ret

.text
	.align 4
.globl	_PANGO_IS_WORD_START$TPANGOLOGATTR$$LONGWORD
_PANGO_IS_WORD_START$TPANGOLOGATTR$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	andw	$32,%ax
	movzwl	%ax,%eax
	shrl	$5,%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_PANGO_SET_IS_WORD_START$TPANGOLOGATTR$LONGWORD
_PANGO_SET_IS_WORD_START$TPANGOLOGATTR$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	shll	$5,%eax
	andl	$32,%eax
	movl	-4(%ebp),%edx
	movzwl	(%edx),%edx
	orl	%edx,%eax
	movl	-4(%ebp),%edx
	movw	%ax,(%edx)
	leave
	ret

.text
	.align 4
.globl	_PANGO_IS_WORD_END$TPANGOLOGATTR$$LONGWORD
_PANGO_IS_WORD_END$TPANGOLOGATTR$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	andw	$64,%ax
	movzwl	%ax,%eax
	shrl	$6,%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_PANGO_SET_IS_WORD_END$TPANGOLOGATTR$LONGWORD
_PANGO_SET_IS_WORD_END$TPANGOLOGATTR$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	shll	$6,%eax
	andl	$64,%eax
	movl	-4(%ebp),%edx
	movzwl	(%edx),%edx
	orl	%edx,%eax
	movl	-4(%ebp),%edx
	movw	%ax,(%edx)
	leave
	ret

.text
	.align 4
.globl	_PANGO_IS_SENTENCE_BOUNDARY$TPANGOLOGATTR$$LONGWORD
_PANGO_IS_SENTENCE_BOUNDARY$TPANGOLOGATTR$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	andw	$128,%ax
	movzwl	%ax,%eax
	shrl	$7,%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_PANGO_SET_IS_SENTENCE_BOUNDARY$TPANGOLOGATTR$LONGWORD
_PANGO_SET_IS_SENTENCE_BOUNDARY$TPANGOLOGATTR$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	shll	$7,%eax
	andl	$128,%eax
	movl	-4(%ebp),%edx
	movzwl	(%edx),%edx
	orl	%edx,%eax
	movl	-4(%ebp),%edx
	movw	%ax,(%edx)
	leave
	ret

.text
	.align 4
.globl	_PANGO_IS_SENTENCE_START$TPANGOLOGATTR$$LONGWORD
_PANGO_IS_SENTENCE_START$TPANGOLOGATTR$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	andw	$256,%ax
	movzwl	%ax,%eax
	shrl	$8,%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_PANGO_SET_IS_SENTENCE_START$TPANGOLOGATTR$LONGWORD
_PANGO_SET_IS_SENTENCE_START$TPANGOLOGATTR$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	shll	$8,%eax
	andl	$256,%eax
	movl	-4(%ebp),%edx
	movzwl	(%edx),%edx
	orl	%edx,%eax
	movl	-4(%ebp),%edx
	movw	%ax,(%edx)
	leave
	ret

.text
	.align 4
.globl	_PANGO_IS_SENTENCE_END$TPANGOLOGATTR$$LONGWORD
_PANGO_IS_SENTENCE_END$TPANGOLOGATTR$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	andw	$512,%ax
	movzwl	%ax,%eax
	shrl	$9,%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_PANGO_SET_IS_SENTENCE_END$TPANGOLOGATTR$LONGWORD
_PANGO_SET_IS_SENTENCE_END$TPANGOLOGATTR$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	shll	$9,%eax
	andl	$512,%eax
	movl	-4(%ebp),%edx
	movzwl	(%edx),%edx
	orl	%edx,%eax
	movl	-4(%ebp),%edx
	movw	%ax,(%edx)
	leave
	ret

.text
	.align 4
.globl	_PANGO_PANGO_TYPE_CONTEXT$$LONGWORD
_PANGO_PANGO_TYPE_CONTEXT$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	L_pango_context_get_type$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_PANGO_PANGO_CONTEXT$POINTER$$PPANGOCONTEXT
_PANGO_PANGO_CONTEXT$POINTER$$PPANGOCONTEXT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_PANGO_PANGO_TYPE_CONTEXT$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_INSTANCE_CAST$POINTER$LONGWORD$$PGTYPEINSTANCE$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_PANGO_PANGO_CONTEXT_CLASS$POINTER$$PPANGOCONTEXTCLASS
_PANGO_PANGO_CONTEXT_CLASS$POINTER$$PPANGOCONTEXTCLASS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_PANGO_PANGO_TYPE_CONTEXT$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_CLASS_CAST$POINTER$LONGWORD$$POINTER$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_PANGO_PANGO_IS_CONTEXT$POINTER$$BOOLEAN
_PANGO_PANGO_IS_CONTEXT$POINTER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_PANGO_PANGO_TYPE_CONTEXT$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_INSTANCE_TYPE$POINTER$LONGWORD$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_PANGO_PANGO_IS_CONTEXT_CLASS$POINTER$$BOOLEAN
_PANGO_PANGO_IS_CONTEXT_CLASS$POINTER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_PANGO_PANGO_TYPE_CONTEXT$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_CLASS_TYPE$POINTER$LONGWORD$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_PANGO_PANGO_CONTEXT_GET_CLASS$PPANGOCONTEXT$$PPANGOCONTEXTCLASS
_PANGO_PANGO_CONTEXT_GET_CLASS$PPANGOCONTEXT$$PPANGOCONTEXTCLASS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_PANGO_PANGO_TYPE_CONTEXT$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_INSTANCE_GET_CLASS$POINTER$LONGWORD$$PGTYPECLASS$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_PANGO_PANGO_TYPE_FONTSET$$LONGWORD
_PANGO_PANGO_TYPE_FONTSET$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	L_pango_fontset_get_type$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_PANGO_PANGO_FONTSET$POINTER$$PPANGOFONTSET
_PANGO_PANGO_FONTSET$POINTER$$PPANGOFONTSET:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_PANGO_PANGO_TYPE_FONTSET$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_INSTANCE_CAST$POINTER$LONGWORD$$PGTYPEINSTANCE$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_PANGO_PANGO_IS_FONTSET$POINTER$$BOOLEAN
_PANGO_PANGO_IS_FONTSET$POINTER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_PANGO_PANGO_TYPE_FONTSET$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_INSTANCE_TYPE$POINTER$LONGWORD$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_PANGO_PANGO_FONTSET_CLASS$POINTER$$PPANGOFONTSETCLASS
_PANGO_PANGO_FONTSET_CLASS$POINTER$$PPANGOFONTSETCLASS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_PANGO_PANGO_TYPE_FONTSET$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_CLASS_CAST$POINTER$LONGWORD$$POINTER$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_PANGO_PANGO_IS_FONTSET_CLASS$POINTER$$BOOLEAN
_PANGO_PANGO_IS_FONTSET_CLASS$POINTER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_PANGO_PANGO_TYPE_FONTSET$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_CLASS_TYPE$POINTER$LONGWORD$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_PANGO_PANGO_FONTSET_GET_CLASS$PPANGOFONTSET$$PPANGOFONTSETCLASS
_PANGO_PANGO_FONTSET_GET_CLASS$PPANGOFONTSET$$PPANGOFONTSETCLASS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_PANGO_PANGO_TYPE_FONTSET$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_INSTANCE_GET_CLASS$POINTER$LONGWORD$$PGTYPECLASS$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_PANGO_PANGO_TYPE_FONTSET_SIMPLE$$LONGWORD
_PANGO_PANGO_TYPE_FONTSET_SIMPLE$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	L_pango_fontset_simple_get_type$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_PANGO_PANGO_FONTSET_SIMPLE$POINTER$$PPANGOFONTSETSIMPLE
_PANGO_PANGO_FONTSET_SIMPLE$POINTER$$PPANGOFONTSETSIMPLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_PANGO_PANGO_TYPE_FONTSET_SIMPLE$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_INSTANCE_CAST$POINTER$LONGWORD$$PGTYPEINSTANCE$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_PANGO_PANGO_IS_FONTSET_SIMPLE$POINTER$$BOOLEAN
_PANGO_PANGO_IS_FONTSET_SIMPLE$POINTER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_PANGO_PANGO_TYPE_FONTSET_SIMPLE$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_INSTANCE_TYPE$POINTER$LONGWORD$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_PANGO_PANGO_TYPE_FONT_DESCRIPTION$$LONGWORD
_PANGO_PANGO_TYPE_FONT_DESCRIPTION$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	L_pango_font_description_get_type$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_PANGO_PANGO_TYPE_FONT_METRICS$$LONGWORD
_PANGO_PANGO_TYPE_FONT_METRICS$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	L_pango_font_metrics_get_type$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_PANGO_PANGO_TYPE_FONT_FAMILY$$LONGWORD
_PANGO_PANGO_TYPE_FONT_FAMILY$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	L_pango_font_family_get_type$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_PANGO_PANGO_FONT_FAMILY$POINTER$$PPANGOFONTFAMILY
_PANGO_PANGO_FONT_FAMILY$POINTER$$PPANGOFONTFAMILY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_PANGO_PANGO_TYPE_FONT_FAMILY$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_INSTANCE_CAST$POINTER$LONGWORD$$PGTYPEINSTANCE$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_PANGO_PANGO_IS_FONT_FAMILY$POINTER$$BOOLEAN
_PANGO_PANGO_IS_FONT_FAMILY$POINTER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_PANGO_PANGO_TYPE_FONT_FAMILY$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_INSTANCE_TYPE$POINTER$LONGWORD$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_PANGO_PANGO_FONT_FAMILY_CLASS$POINTER$$PPANGOFONTFAMILYCLASS
_PANGO_PANGO_FONT_FAMILY_CLASS$POINTER$$PPANGOFONTFAMILYCLASS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_PANGO_PANGO_TYPE_FONT_FAMILY$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_CLASS_CAST$POINTER$LONGWORD$$POINTER$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_PANGO_PANGO_IS_FONT_FAMILY_CLASS$POINTER$$BOOLEAN
_PANGO_PANGO_IS_FONT_FAMILY_CLASS$POINTER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_PANGO_PANGO_TYPE_FONT_FAMILY$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_CLASS_TYPE$POINTER$LONGWORD$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_PANGO_PANGO_FONT_FAMILY_GET_CLASS$PPANGOFONTFAMILY$$PPANGOFONTFAMILYCLASS
_PANGO_PANGO_FONT_FAMILY_GET_CLASS$PPANGOFONTFAMILY$$PPANGOFONTFAMILYCLASS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_PANGO_PANGO_TYPE_FONT_FAMILY$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_INSTANCE_GET_CLASS$POINTER$LONGWORD$$PGTYPECLASS$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_PANGO_PANGO_TYPE_FONT_FACE$$LONGWORD
_PANGO_PANGO_TYPE_FONT_FACE$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	L_pango_font_face_get_type$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_PANGO_PANGO_FONT_FACE$POINTER$$PPANGOFONTFACE
_PANGO_PANGO_FONT_FACE$POINTER$$PPANGOFONTFACE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_PANGO_PANGO_TYPE_FONT_FACE$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_INSTANCE_CAST$POINTER$LONGWORD$$PGTYPEINSTANCE$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_PANGO_PANGO_IS_FONT_FACE$POINTER$$BOOLEAN
_PANGO_PANGO_IS_FONT_FACE$POINTER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_PANGO_PANGO_TYPE_FONT_FACE$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_INSTANCE_TYPE$POINTER$LONGWORD$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_PANGO_PANGO_FONT_FACE_CLASS$POINTER$$PPANGOFONTFACECLASS
_PANGO_PANGO_FONT_FACE_CLASS$POINTER$$PPANGOFONTFACECLASS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_PANGO_PANGO_TYPE_FONT_FACE$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_CLASS_CAST$POINTER$LONGWORD$$POINTER$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_PANGO_PANGO_IS_FONT_FACE_CLASS$POINTER$$BOOLEAN
_PANGO_PANGO_IS_FONT_FACE_CLASS$POINTER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_PANGO_PANGO_TYPE_FONT_FACE$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_CLASS_TYPE$POINTER$LONGWORD$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_PANGO_PANGO_FONT_FACE_GET_CLASS$POINTER$$PPANGOFONTFACECLASS
_PANGO_PANGO_FONT_FACE_GET_CLASS$POINTER$$PPANGOFONTFACECLASS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_PANGO_PANGO_TYPE_FONT_FACE$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_INSTANCE_GET_CLASS$POINTER$LONGWORD$$PGTYPECLASS$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_PANGO_PANGO_TYPE_FONT$$LONGWORD
_PANGO_PANGO_TYPE_FONT$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	L_pango_font_get_type$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_PANGO_PANGO_FONT$POINTER$$PPANGOFONT
_PANGO_PANGO_FONT$POINTER$$PPANGOFONT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_PANGO_PANGO_TYPE_FONT$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_INSTANCE_CAST$POINTER$LONGWORD$$PGTYPEINSTANCE$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_PANGO_PANGO_IS_FONT$POINTER$$BOOLEAN
_PANGO_PANGO_IS_FONT$POINTER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_PANGO_PANGO_TYPE_FONT$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_INSTANCE_TYPE$POINTER$LONGWORD$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_PANGO_PANGO_FONT_CLASS$POINTER$$PPANGOFONTCLASS
_PANGO_PANGO_FONT_CLASS$POINTER$$PPANGOFONTCLASS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_PANGO_PANGO_TYPE_FONT$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_CLASS_CAST$POINTER$LONGWORD$$POINTER$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_PANGO_PANGO_IS_FONT_CLASS$POINTER$$BOOLEAN
_PANGO_PANGO_IS_FONT_CLASS$POINTER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_PANGO_PANGO_TYPE_FONT$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_CLASS_TYPE$POINTER$LONGWORD$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_PANGO_PANGO_FONT_GET_CLASS$PPANGOFONT$$PPANGOFONTCLASS
_PANGO_PANGO_FONT_GET_CLASS$PPANGOFONT$$PPANGOFONTCLASS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_PANGO_PANGO_TYPE_FONT$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_INSTANCE_GET_CLASS$POINTER$LONGWORD$$PGTYPECLASS$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_PANGO_PANGO_TYPE_FONT_MAP$$LONGWORD
_PANGO_PANGO_TYPE_FONT_MAP$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	L_pango_font_map_get_type$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_PANGO_PANGO_FONT_MAP$POINTER$$PPANGOFONTMAP
_PANGO_PANGO_FONT_MAP$POINTER$$PPANGOFONTMAP:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_PANGO_PANGO_TYPE_FONT_MAP$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_INSTANCE_CAST$POINTER$LONGWORD$$PGTYPEINSTANCE$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_PANGO_PANGO_IS_FONT_MAP$POINTER$$BOOLEAN
_PANGO_PANGO_IS_FONT_MAP$POINTER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_PANGO_PANGO_TYPE_FONT_MAP$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_INSTANCE_TYPE$POINTER$LONGWORD$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_PANGO_PANGO_FONT_MAP_CLASS$POINTER$$PPANGOFONTMAPCLASS
_PANGO_PANGO_FONT_MAP_CLASS$POINTER$$PPANGOFONTMAPCLASS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_PANGO_PANGO_TYPE_FONT_MAP$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_CLASS_CAST$POINTER$LONGWORD$$POINTER$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_PANGO_PANGO_IS_FONT_MAP_CLASS$POINTER$$BOOLEAN
_PANGO_PANGO_IS_FONT_MAP_CLASS$POINTER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_PANGO_PANGO_TYPE_FONT_MAP$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_CLASS_TYPE$POINTER$LONGWORD$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_PANGO_PANGO_FONT_MAP_GET_CLASS$PPANGOFONTMAP$$PPANGOFONTMAPCLASS
_PANGO_PANGO_FONT_MAP_GET_CLASS$PPANGOFONTMAP$$PPANGOFONTMAPCLASS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_PANGO_PANGO_TYPE_FONT_MAP$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_INSTANCE_GET_CLASS$POINTER$LONGWORD$$PGTYPECLASS$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_PANGO_IS_CLUSTER_START$TPANGOGLYPHVISATTR$$LONGWORD
_PANGO_IS_CLUSTER_START$TPANGOGLYPHVISATTR$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	andw	$1,%ax
	movzwl	%ax,%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_PANGO_SET_IS_CLUSTER_START$TPANGOGLYPHVISATTR$LONGWORD
_PANGO_SET_IS_CLUSTER_START$TPANGOGLYPHVISATTR$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	andl	$1,%eax
	movl	-4(%ebp),%edx
	movzwl	(%edx),%edx
	orl	%edx,%eax
	movl	-4(%ebp),%edx
	movw	%ax,(%edx)
	leave
	ret

.text
	.align 4
.globl	_PANGO_PANGO_TYPE_GLYPH_STRING$$LONGWORD
_PANGO_PANGO_TYPE_GLYPH_STRING$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	L_pango_glyph_string_get_type$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_PANGO_PANGO_TYPE_LAYOUT$$LONGWORD
_PANGO_PANGO_TYPE_LAYOUT$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	L_pango_layout_get_type$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_PANGO_PANGO_LAYOUT$POINTER$$PPANGOLAYOUT
_PANGO_PANGO_LAYOUT$POINTER$$PPANGOLAYOUT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_PANGO_PANGO_TYPE_LAYOUT$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_INSTANCE_CAST$POINTER$LONGWORD$$PGTYPEINSTANCE$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_PANGO_PANGO_LAYOUT_CLASS$POINTER$$PPANGOLAYOUTCLASS
_PANGO_PANGO_LAYOUT_CLASS$POINTER$$PPANGOLAYOUTCLASS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_PANGO_PANGO_TYPE_LAYOUT$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_CLASS_CAST$POINTER$LONGWORD$$POINTER$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_PANGO_PANGO_IS_LAYOUT$POINTER$$BOOLEAN
_PANGO_PANGO_IS_LAYOUT$POINTER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_PANGO_PANGO_TYPE_LAYOUT$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_INSTANCE_TYPE$POINTER$LONGWORD$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_PANGO_PANGO_IS_LAYOUT_CLASS$POINTER$$BOOLEAN
_PANGO_PANGO_IS_LAYOUT_CLASS$POINTER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_PANGO_PANGO_TYPE_LAYOUT$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_CLASS_TYPE$POINTER$LONGWORD$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_PANGO_PANGO_LAYOUT_GET_CLASS$PPANGOLAYOUT$$PPANGOLAYOUTCLASS
_PANGO_PANGO_LAYOUT_GET_CLASS$PPANGOLAYOUT$$PPANGOLAYOUTCLASS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_PANGO_PANGO_TYPE_LAYOUT$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_INSTANCE_GET_CLASS$POINTER$LONGWORD$$PGTYPECLASS$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_PANGO_PANGO_TYPE_MATRIX$$LONGWORD
_PANGO_PANGO_TYPE_MATRIX$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	L_pango_matrix_get_type$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_PANGO_PANGO_TYPE_RENDERER$$LONGWORD
_PANGO_PANGO_TYPE_RENDERER$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	L_pango_renderer_get_type$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_PANGO_PANGO_RENDERER$POINTER$$PPANGORENDERER
_PANGO_PANGO_RENDERER$POINTER$$PPANGORENDERER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_PANGO_PANGO_TYPE_RENDERER$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_INSTANCE_CAST$POINTER$LONGWORD$$PGTYPEINSTANCE$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_PANGO_PANGO_IS_RENDERER$POINTER$$BOOLEAN
_PANGO_PANGO_IS_RENDERER$POINTER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_PANGO_PANGO_TYPE_RENDERER$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_INSTANCE_TYPE$POINTER$LONGWORD$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_PANGO_PANGO_RENDERER_CLASS$POINTER$$PPANGORENDERERCLASS
_PANGO_PANGO_RENDERER_CLASS$POINTER$$PPANGORENDERERCLASS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_PANGO_PANGO_TYPE_RENDERER$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_CLASS_CAST$POINTER$LONGWORD$$POINTER$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_PANGO_PANGO_IS_RENDERER_CLASS$POINTER$$BOOLEAN
_PANGO_PANGO_IS_RENDERER_CLASS$POINTER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_PANGO_PANGO_TYPE_RENDERER$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_CLASS_TYPE$POINTER$LONGWORD$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_PANGO_PANGO_RENDERER_GET_CLASS$POINTER$$PPANGORENDERERCLASS
_PANGO_PANGO_RENDERER_GET_CLASS$POINTER$$PPANGORENDERERCLASS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_PANGO_PANGO_TYPE_RENDERER$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_INSTANCE_GET_CLASS$POINTER$LONGWORD$$PGTYPECLASS$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_PANGO_PANGO_TYPE_TAB_ARRAY$$LONGWORD
_PANGO_PANGO_TYPE_TAB_ARRAY$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	L_pango_tab_array_get_type$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.align 2
.globl	_THREADVARLIST_PANGO
_THREADVARLIST_PANGO:
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

L_pango_language_get_type$stub:
.indirect_symbol _pango_language_get_type
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_pango_color_get_type$stub:
.indirect_symbol _pango_color_get_type
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_pango_attr_list_get_type$stub:
.indirect_symbol _pango_attr_list_get_type
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_pango_context_get_type$stub:
.indirect_symbol _pango_context_get_type
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_PANGO_PANGO_TYPE_CONTEXT$$LONGWORD$stub:
.indirect_symbol _PANGO_PANGO_TYPE_CONTEXT$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_GLIB2_G_TYPE_CHECK_INSTANCE_CAST$POINTER$LONGWORD$$PGTYPEINSTANCE$stub:
.indirect_symbol _GLIB2_G_TYPE_CHECK_INSTANCE_CAST$POINTER$LONGWORD$$PGTYPEINSTANCE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_GLIB2_G_TYPE_CHECK_CLASS_CAST$POINTER$LONGWORD$$POINTER$stub:
.indirect_symbol _GLIB2_G_TYPE_CHECK_CLASS_CAST$POINTER$LONGWORD$$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_GLIB2_G_TYPE_CHECK_INSTANCE_TYPE$POINTER$LONGWORD$$BOOLEAN$stub:
.indirect_symbol _GLIB2_G_TYPE_CHECK_INSTANCE_TYPE$POINTER$LONGWORD$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_GLIB2_G_TYPE_CHECK_CLASS_TYPE$POINTER$LONGWORD$$BOOLEAN$stub:
.indirect_symbol _GLIB2_G_TYPE_CHECK_CLASS_TYPE$POINTER$LONGWORD$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_GLIB2_G_TYPE_INSTANCE_GET_CLASS$POINTER$LONGWORD$$PGTYPECLASS$stub:
.indirect_symbol _GLIB2_G_TYPE_INSTANCE_GET_CLASS$POINTER$LONGWORD$$PGTYPECLASS
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_pango_fontset_get_type$stub:
.indirect_symbol _pango_fontset_get_type
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_PANGO_PANGO_TYPE_FONTSET$$LONGWORD$stub:
.indirect_symbol _PANGO_PANGO_TYPE_FONTSET$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_pango_fontset_simple_get_type$stub:
.indirect_symbol _pango_fontset_simple_get_type
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_PANGO_PANGO_TYPE_FONTSET_SIMPLE$$LONGWORD$stub:
.indirect_symbol _PANGO_PANGO_TYPE_FONTSET_SIMPLE$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_pango_font_description_get_type$stub:
.indirect_symbol _pango_font_description_get_type
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_pango_font_metrics_get_type$stub:
.indirect_symbol _pango_font_metrics_get_type
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_pango_font_family_get_type$stub:
.indirect_symbol _pango_font_family_get_type
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_PANGO_PANGO_TYPE_FONT_FAMILY$$LONGWORD$stub:
.indirect_symbol _PANGO_PANGO_TYPE_FONT_FAMILY$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_pango_font_face_get_type$stub:
.indirect_symbol _pango_font_face_get_type
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_PANGO_PANGO_TYPE_FONT_FACE$$LONGWORD$stub:
.indirect_symbol _PANGO_PANGO_TYPE_FONT_FACE$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_pango_font_get_type$stub:
.indirect_symbol _pango_font_get_type
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_PANGO_PANGO_TYPE_FONT$$LONGWORD$stub:
.indirect_symbol _PANGO_PANGO_TYPE_FONT$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_pango_font_map_get_type$stub:
.indirect_symbol _pango_font_map_get_type
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_PANGO_PANGO_TYPE_FONT_MAP$$LONGWORD$stub:
.indirect_symbol _PANGO_PANGO_TYPE_FONT_MAP$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_pango_glyph_string_get_type$stub:
.indirect_symbol _pango_glyph_string_get_type
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_pango_layout_get_type$stub:
.indirect_symbol _pango_layout_get_type
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_PANGO_PANGO_TYPE_LAYOUT$$LONGWORD$stub:
.indirect_symbol _PANGO_PANGO_TYPE_LAYOUT$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_pango_matrix_get_type$stub:
.indirect_symbol _pango_matrix_get_type
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_pango_renderer_get_type$stub:
.indirect_symbol _pango_renderer_get_type
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_PANGO_PANGO_TYPE_RENDERER$$LONGWORD$stub:
.indirect_symbol _PANGO_PANGO_TYPE_RENDERER$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_pango_tab_array_get_type$stub:
.indirect_symbol _pango_tab_array_get_type
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
.globl	_INIT_PANGO_PPANGOFONTDESCRIPTION
_INIT_PANGO_PPANGOFONTDESCRIPTION:
	.byte	0
	.ascii	"\025PPangoFontDescription"

.const_data
	.align 2
.globl	_RTTI_PANGO_PPANGOFONTDESCRIPTION
_RTTI_PANGO_PPANGOFONTDESCRIPTION:
	.byte	0
	.ascii	"\025PPangoFontDescription"

.const_data
	.align 2
.globl	_INIT_PANGO_PPANGOATTRLIST
_INIT_PANGO_PPANGOATTRLIST:
	.byte	0
	.ascii	"\016PPangoAttrList"

.const_data
	.align 2
.globl	_RTTI_PANGO_PPANGOATTRLIST
_RTTI_PANGO_PPANGOATTRLIST:
	.byte	0
	.ascii	"\016PPangoAttrList"

.const_data
	.align 2
.globl	_INIT_PANGO_PPANGOATTRITERATOR
_INIT_PANGO_PPANGOATTRITERATOR:
	.byte	0
	.ascii	"\022PPangoAttrIterator"

.const_data
	.align 2
.globl	_RTTI_PANGO_PPANGOATTRITERATOR
_RTTI_PANGO_PPANGOATTRITERATOR:
	.byte	0
	.ascii	"\022PPangoAttrIterator"

.const_data
	.align 2
.globl	_INIT_PANGO_PPANGOLAYOUT
_INIT_PANGO_PPANGOLAYOUT:
	.byte	0
	.ascii	"\014PPangoLayout"

.const_data
	.align 2
.globl	_RTTI_PANGO_PPANGOLAYOUT
_RTTI_PANGO_PPANGOLAYOUT:
	.byte	0
	.ascii	"\014PPangoLayout"

.const_data
	.align 2
.globl	_INIT_PANGO_PPANGOLAYOUTCLASS
_INIT_PANGO_PPANGOLAYOUTCLASS:
	.byte	0
	.ascii	"\021PPangoLayoutClass"

.const_data
	.align 2
.globl	_RTTI_PANGO_PPANGOLAYOUTCLASS
_RTTI_PANGO_PPANGOLAYOUTCLASS:
	.byte	0
	.ascii	"\021PPangoLayoutClass"

.const_data
	.align 2
.globl	_INIT_PANGO_PPANGOLAYOUTITER
_INIT_PANGO_PPANGOLAYOUTITER:
	.byte	0
	.ascii	"\020PPangoLayoutIter"

.const_data
	.align 2
.globl	_RTTI_PANGO_PPANGOLAYOUTITER
_RTTI_PANGO_PPANGOLAYOUTITER:
	.byte	0
	.ascii	"\020PPangoLayoutIter"

.const_data
	.align 2
.globl	_INIT_PANGO_PPANGOCONTEXT
_INIT_PANGO_PPANGOCONTEXT:
	.byte	0
	.ascii	"\015PPangoContext"

.const_data
	.align 2
.globl	_RTTI_PANGO_PPANGOCONTEXT
_RTTI_PANGO_PPANGOCONTEXT:
	.byte	0
	.ascii	"\015PPangoContext"

.const_data
	.align 2
.globl	_INIT_PANGO_PPANGOCONTEXTCLASS
_INIT_PANGO_PPANGOCONTEXTCLASS:
	.byte	0
	.ascii	"\022PPangoContextClass"

.const_data
	.align 2
.globl	_RTTI_PANGO_PPANGOCONTEXTCLASS
_RTTI_PANGO_PPANGOCONTEXTCLASS:
	.byte	0
	.ascii	"\022PPangoContextClass"

.const_data
	.align 2
.globl	_INIT_PANGO_PPANGOFONTSETSIMPLE
_INIT_PANGO_PPANGOFONTSETSIMPLE:
	.byte	0
	.ascii	"\023PPangoFontsetSimple"

.const_data
	.align 2
.globl	_RTTI_PANGO_PPANGOFONTSETSIMPLE
_RTTI_PANGO_PPANGOFONTSETSIMPLE:
	.byte	0
	.ascii	"\023PPangoFontsetSimple"

.const_data
	.align 2
.globl	_INIT_PANGO_PPANGOTABARRAY
_INIT_PANGO_PPANGOTABARRAY:
	.byte	0
	.ascii	"\016PPangoTabArray"

.const_data
	.align 2
.globl	_RTTI_PANGO_PPANGOTABARRAY
_RTTI_PANGO_PPANGOTABARRAY:
	.byte	0
	.ascii	"\016PPangoTabArray"

.const_data
	.align 2
.globl	_INIT_PANGO_PPANGOFONT
_INIT_PANGO_PPANGOFONT:
	.byte	0
	.ascii	"\012PPangoFont"

.const_data
	.align 2
.globl	_RTTI_PANGO_PPANGOFONT
_RTTI_PANGO_PPANGOFONT:
	.byte	0
	.ascii	"\012PPangoFont"

.const_data
	.align 2
.globl	_INIT_PANGO_PPANGOFONTMETRICS
_INIT_PANGO_PPANGOFONTMETRICS:
	.byte	0
	.ascii	"\021PPangoFontMetrics"

.const_data
	.align 2
.globl	_RTTI_PANGO_PPANGOFONTMETRICS
_RTTI_PANGO_PPANGOFONTMETRICS:
	.byte	0
	.ascii	"\021PPangoFontMetrics"

.const_data
	.align 2
.globl	_INIT_PANGO_PPANGOGLYPHSTRING
_INIT_PANGO_PPANGOGLYPHSTRING:
	.byte	0
	.ascii	"\021PPangoGlyphString"

.const_data
	.align 2
.globl	_RTTI_PANGO_PPANGOGLYPHSTRING
_RTTI_PANGO_PPANGOGLYPHSTRING:
	.byte	0
	.ascii	"\021PPangoGlyphString"

.const_data
	.align 2
.globl	_INIT_PANGO_PPANGOANALYSIS
_INIT_PANGO_PPANGOANALYSIS:
	.byte	0
	.ascii	"\016PPangoAnalysis"

.const_data
	.align 2
.globl	_RTTI_PANGO_PPANGOANALYSIS
_RTTI_PANGO_PPANGOANALYSIS:
	.byte	0
	.ascii	"\016PPangoAnalysis"

.const_data
	.align 2
.globl	_INIT_PANGO_PPANGOITEM
_INIT_PANGO_PPANGOITEM:
	.byte	0
	.ascii	"\012PPangoItem"

.const_data
	.align 2
.globl	_RTTI_PANGO_PPANGOITEM
_RTTI_PANGO_PPANGOITEM:
	.byte	0
	.ascii	"\012PPangoItem"

.const_data
	.align 2
.globl	_INIT_PANGO_PPANGOMATRIX
_INIT_PANGO_PPANGOMATRIX:
	.byte	0
	.ascii	"\014PPangoMatrix"

.const_data
	.align 2
.globl	_RTTI_PANGO_PPANGOMATRIX
_RTTI_PANGO_PPANGOMATRIX:
	.byte	0
	.ascii	"\014PPangoMatrix"

.const_data
	.align 2
.globl	_INIT_PANGO_PPANGOLANGUAGE
_INIT_PANGO_PPANGOLANGUAGE:
	.byte	0
	.ascii	"\016PPangoLanguage"

.const_data
	.align 2
.globl	_RTTI_PANGO_PPANGOLANGUAGE
_RTTI_PANGO_PPANGOLANGUAGE:
	.byte	0
	.ascii	"\016PPangoLanguage"

.const_data
	.align 2
.globl	_INIT_PANGO_PPANGOGLYPH
_INIT_PANGO_PPANGOGLYPH:
	.byte	0
	.ascii	"\013PPangoGlyph"

.const_data
	.align 2
.globl	_RTTI_PANGO_PPANGOGLYPH
_RTTI_PANGO_PPANGOGLYPH:
	.byte	0
	.ascii	"\013PPangoGlyph"

.const_data
	.align 2
.globl	_INIT_PANGO_PPANGORECTANGLE
_INIT_PANGO_PPANGORECTANGLE:
	.byte	0
	.ascii	"\017PPangoRectangle"

.const_data
	.align 2
.globl	_RTTI_PANGO_PPANGORECTANGLE
_RTTI_PANGO_PPANGORECTANGLE:
	.byte	0
	.ascii	"\017PPangoRectangle"

.const_data
	.align 2
.globl	_INIT_PANGO_TPANGORECTANGLE
_INIT_PANGO_TPANGORECTANGLE:
	.byte	13,15
	.ascii	"TPangoRectangle"
	.long	16,0

.const_data
	.align 2
.globl	_RTTI_PANGO_TPANGORECTANGLE
_RTTI_PANGO_TPANGORECTANGLE:
	.byte	13,15
	.ascii	"TPangoRectangle"
	.long	16,4
	.long	_RTTI_SYSTEM_LONGINT
	.long	0
	.long	_RTTI_SYSTEM_LONGINT
	.long	4
	.long	_RTTI_SYSTEM_LONGINT
	.long	8
	.long	_RTTI_SYSTEM_LONGINT
	.long	12

.const_data
	.align 2
.globl	_INIT_PANGO_PPANGODIRECTION
_INIT_PANGO_PPANGODIRECTION:
	.byte	0
	.ascii	"\017PPangoDirection"

.const_data
	.align 2
.globl	_RTTI_PANGO_PPANGODIRECTION
_RTTI_PANGO_PPANGODIRECTION:
	.byte	0
	.ascii	"\017PPangoDirection"

.const_data
	.align 2
.globl	_INIT_PANGO_TPANGODIRECTION
_INIT_PANGO_TPANGODIRECTION:
	.byte	3,15
	.ascii	"TPangoDirection"
	.byte	5
	.long	0,4,0
	.byte	19
	.ascii	"PANGO_DIRECTION_LTR"
	.byte	19
	.ascii	"PANGO_DIRECTION_RTL"
	.byte	23
	.ascii	"PANGO_DIRECTION_TTB_LTR"
	.byte	23
	.ascii	"PANGO_DIRECTION_TTB_RTL"
	.byte	23
	.ascii	"PANGO_DIRECTION_NEUTRAL"
	.byte	5
	.ascii	"pango"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_PANGO_TPANGODIRECTION
_RTTI_PANGO_TPANGODIRECTION:
	.byte	3,15
	.ascii	"TPangoDirection"
	.byte	5
	.long	0,4,0
	.byte	19
	.ascii	"PANGO_DIRECTION_LTR"
	.byte	19
	.ascii	"PANGO_DIRECTION_RTL"
	.byte	23
	.ascii	"PANGO_DIRECTION_TTB_LTR"
	.byte	23
	.ascii	"PANGO_DIRECTION_TTB_RTL"
	.byte	23
	.ascii	"PANGO_DIRECTION_NEUTRAL"
	.byte	5
	.ascii	"pango"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_PANGO_TPANGODIRECTION_s2o
_RTTI_PANGO_TPANGODIRECTION_s2o:
	.long	5,0
	.long	_RTTI_PANGO_TPANGODIRECTION+30
	.long	4
	.long	_RTTI_PANGO_TPANGODIRECTION+118
	.long	1
	.long	_RTTI_PANGO_TPANGODIRECTION+50
	.long	2
	.long	_RTTI_PANGO_TPANGODIRECTION+70
	.long	3
	.long	_RTTI_PANGO_TPANGODIRECTION+94

.const_data
	.align 2
.globl	_RTTI_PANGO_TPANGODIRECTION_o2s
_RTTI_PANGO_TPANGODIRECTION_o2s:
	.long	0
	.long	_RTTI_PANGO_TPANGODIRECTION+30
	.long	_RTTI_PANGO_TPANGODIRECTION+50
	.long	_RTTI_PANGO_TPANGODIRECTION+70
	.long	_RTTI_PANGO_TPANGODIRECTION+94
	.long	_RTTI_PANGO_TPANGODIRECTION+118

.const_data
	.align 2
.globl	_INIT_PANGO_PPANGOCOLOR
_INIT_PANGO_PPANGOCOLOR:
	.byte	0
	.ascii	"\013PPangoColor"

.const_data
	.align 2
.globl	_RTTI_PANGO_PPANGOCOLOR
_RTTI_PANGO_PPANGOCOLOR:
	.byte	0
	.ascii	"\013PPangoColor"

.const_data
	.align 2
.globl	_INIT_PANGO_TPANGOCOLOR
_INIT_PANGO_TPANGOCOLOR:
	.byte	13,11
	.ascii	"TPangoColor"
	.long	6,0

.const_data
	.align 2
.globl	_RTTI_PANGO_TPANGOCOLOR
_RTTI_PANGO_TPANGOCOLOR:
	.byte	13,11
	.ascii	"TPangoColor"
	.long	6,3
	.long	_RTTI_SYSTEM_WORD
	.long	0
	.long	_RTTI_SYSTEM_WORD
	.long	2
	.long	_RTTI_SYSTEM_WORD
	.long	4

.const_data
	.align 2
.globl	_INIT_PANGO_PPANGOATTRTYPE
_INIT_PANGO_PPANGOATTRTYPE:
	.byte	0
	.ascii	"\016PPangoAttrType"

.const_data
	.align 2
.globl	_RTTI_PANGO_PPANGOATTRTYPE
_RTTI_PANGO_PPANGOATTRTYPE:
	.byte	0
	.ascii	"\016PPangoAttrType"

.const_data
	.align 2
.globl	_INIT_PANGO_PPANGOUNDERLINE
_INIT_PANGO_PPANGOUNDERLINE:
	.byte	0
	.ascii	"\017PPangoUnderline"

.const_data
	.align 2
.globl	_RTTI_PANGO_PPANGOUNDERLINE
_RTTI_PANGO_PPANGOUNDERLINE:
	.byte	0
	.ascii	"\017PPangoUnderline"

.const_data
	.align 2
.globl	_INIT_PANGO_PPANGOATTRIBUTE
_INIT_PANGO_PPANGOATTRIBUTE:
	.byte	0
	.ascii	"\017PPangoAttribute"

.const_data
	.align 2
.globl	_RTTI_PANGO_PPANGOATTRIBUTE
_RTTI_PANGO_PPANGOATTRIBUTE:
	.byte	0
	.ascii	"\017PPangoAttribute"

.const_data
	.align 2
.globl	_INIT_PANGO_PPANGOATTRCLASS
_INIT_PANGO_PPANGOATTRCLASS:
	.byte	0
	.ascii	"\017PPangoAttrClass"

.const_data
	.align 2
.globl	_RTTI_PANGO_PPANGOATTRCLASS
_RTTI_PANGO_PPANGOATTRCLASS:
	.byte	0
	.ascii	"\017PPangoAttrClass"

.const_data
	.align 2
.globl	_INIT_PANGO_TPANGOATTRIBUTE
_INIT_PANGO_TPANGOATTRIBUTE:
	.byte	13,15
	.ascii	"TPangoAttribute"
	.long	12,0

.const_data
	.align 2
.globl	_RTTI_PANGO_TPANGOATTRIBUTE
_RTTI_PANGO_TPANGOATTRIBUTE:
	.byte	13,15
	.ascii	"TPangoAttribute"
	.long	12,3
	.long	_RTTI_PANGO_PPANGOATTRCLASS
	.long	0
	.long	_RTTI_SYSTEM_LONGWORD
	.long	4
	.long	_RTTI_SYSTEM_LONGWORD
	.long	8

.const_data
	.align 2
.globl	_INIT_PANGO_TPANGOATTRCLASS
_INIT_PANGO_TPANGOATTRCLASS:
	.byte	13,15
	.ascii	"TPangoAttrClass"
	.long	16,0

.const_data
	.align 2
.globl	_RTTI_PANGO_DEF31
_RTTI_PANGO_DEF31:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_PANGO_DEF32
_RTTI_PANGO_DEF32:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_PANGO_DEF33
_RTTI_PANGO_DEF33:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_PANGO_TPANGOATTRCLASS
_RTTI_PANGO_TPANGOATTRCLASS:
	.byte	13,15
	.ascii	"TPangoAttrClass"
	.long	16,4
	.long	_RTTI_SYSTEM_LONGINT
	.long	0
	.long	_RTTI_PANGO_DEF31
	.long	4
	.long	_RTTI_PANGO_DEF32
	.long	8
	.long	_RTTI_PANGO_DEF33
	.long	12

.const_data
	.align 2
.globl	_INIT_PANGO_PPANGOATTRSTRING
_INIT_PANGO_PPANGOATTRSTRING:
	.byte	0
	.ascii	"\020PPangoAttrString"

.const_data
	.align 2
.globl	_RTTI_PANGO_PPANGOATTRSTRING
_RTTI_PANGO_PPANGOATTRSTRING:
	.byte	0
	.ascii	"\020PPangoAttrString"

.const_data
	.align 2
.globl	_INIT_PANGO_TPANGOATTRSTRING
_INIT_PANGO_TPANGOATTRSTRING:
	.byte	13,16
	.ascii	"TPangoAttrString"
	.long	16,0

.const_data
	.align 2
.globl	_RTTI_PANGO_TPANGOATTRSTRING
_RTTI_PANGO_TPANGOATTRSTRING:
	.byte	13,16
	.ascii	"TPangoAttrString"
	.long	16,2
	.long	_RTTI_PANGO_TPANGOATTRIBUTE
	.long	0
	.long	_RTTI_SYSTEM_PCHAR
	.long	12

.const_data
	.align 2
.globl	_INIT_PANGO_PPANGOATTRLANGUAGE
_INIT_PANGO_PPANGOATTRLANGUAGE:
	.byte	0
	.ascii	"\022PPangoAttrLanguage"

.const_data
	.align 2
.globl	_RTTI_PANGO_PPANGOATTRLANGUAGE
_RTTI_PANGO_PPANGOATTRLANGUAGE:
	.byte	0
	.ascii	"\022PPangoAttrLanguage"

.const_data
	.align 2
.globl	_INIT_PANGO_TPANGOATTRLANGUAGE
_INIT_PANGO_TPANGOATTRLANGUAGE:
	.byte	13,18
	.ascii	"TPangoAttrLanguage"
	.long	16,0

.const_data
	.align 2
.globl	_RTTI_PANGO_TPANGOATTRLANGUAGE
_RTTI_PANGO_TPANGOATTRLANGUAGE:
	.byte	13,18
	.ascii	"TPangoAttrLanguage"
	.long	16,2
	.long	_RTTI_PANGO_TPANGOATTRIBUTE
	.long	0
	.long	_RTTI_PANGO_PPANGOLANGUAGE
	.long	12

.const_data
	.align 2
.globl	_INIT_PANGO_PPANGOATTRINT
_INIT_PANGO_PPANGOATTRINT:
	.byte	0
	.ascii	"\015PPangoAttrInt"

.const_data
	.align 2
.globl	_RTTI_PANGO_PPANGOATTRINT
_RTTI_PANGO_PPANGOATTRINT:
	.byte	0
	.ascii	"\015PPangoAttrInt"

.const_data
	.align 2
.globl	_INIT_PANGO_TPANGOATTRINT
_INIT_PANGO_TPANGOATTRINT:
	.byte	13,13
	.ascii	"TPangoAttrInt"
	.long	16,0

.const_data
	.align 2
.globl	_RTTI_PANGO_TPANGOATTRINT
_RTTI_PANGO_TPANGOATTRINT:
	.byte	13,13
	.ascii	"TPangoAttrInt"
	.long	16,2
	.long	_RTTI_PANGO_TPANGOATTRIBUTE
	.long	0
	.long	_RTTI_SYSTEM_LONGINT
	.long	12

.const_data
	.align 2
.globl	_INIT_PANGO_PPANGOATTRFLOAT
_INIT_PANGO_PPANGOATTRFLOAT:
	.byte	0
	.ascii	"\017PPangoAttrFloat"

.const_data
	.align 2
.globl	_RTTI_PANGO_PPANGOATTRFLOAT
_RTTI_PANGO_PPANGOATTRFLOAT:
	.byte	0
	.ascii	"\017PPangoAttrFloat"

.const_data
	.align 2
.globl	_INIT_PANGO_TPANGOATTRFLOAT
_INIT_PANGO_TPANGOATTRFLOAT:
	.byte	13,15
	.ascii	"TPangoAttrFloat"
	.long	20,0

.const_data
	.align 2
.globl	_RTTI_PANGO_TPANGOATTRFLOAT
_RTTI_PANGO_TPANGOATTRFLOAT:
	.byte	13,15
	.ascii	"TPangoAttrFloat"
	.long	20,2
	.long	_RTTI_PANGO_TPANGOATTRIBUTE
	.long	0
	.long	_RTTI_SYSTEM_DOUBLE
	.long	12

.const_data
	.align 2
.globl	_INIT_PANGO_PPANGOATTRCOLOR
_INIT_PANGO_PPANGOATTRCOLOR:
	.byte	0
	.ascii	"\017PPangoAttrColor"

.const_data
	.align 2
.globl	_RTTI_PANGO_PPANGOATTRCOLOR
_RTTI_PANGO_PPANGOATTRCOLOR:
	.byte	0
	.ascii	"\017PPangoAttrColor"

.const_data
	.align 2
.globl	_INIT_PANGO_TPANGOATTRCOLOR
_INIT_PANGO_TPANGOATTRCOLOR:
	.byte	13,15
	.ascii	"TPangoAttrColor"
	.long	20,0

.const_data
	.align 2
.globl	_RTTI_PANGO_TPANGOATTRCOLOR
_RTTI_PANGO_TPANGOATTRCOLOR:
	.byte	13,15
	.ascii	"TPangoAttrColor"
	.long	20,2
	.long	_RTTI_PANGO_TPANGOATTRIBUTE
	.long	0
	.long	_RTTI_PANGO_TPANGOCOLOR
	.long	12

.const_data
	.align 2
.globl	_INIT_PANGO_PPANGOATTRSHAPE
_INIT_PANGO_PPANGOATTRSHAPE:
	.byte	0
	.ascii	"\017PPangoAttrShape"

.const_data
	.align 2
.globl	_RTTI_PANGO_PPANGOATTRSHAPE
_RTTI_PANGO_PPANGOATTRSHAPE:
	.byte	0
	.ascii	"\017PPangoAttrShape"

.const_data
	.align 2
.globl	_INIT_PANGO_TPANGOATTRSHAPE
_INIT_PANGO_TPANGOATTRSHAPE:
	.byte	13,15
	.ascii	"TPangoAttrShape"
	.long	44,0

.const_data
	.align 2
.globl	_RTTI_PANGO_TPANGOATTRSHAPE
_RTTI_PANGO_TPANGOATTRSHAPE:
	.byte	13,15
	.ascii	"TPangoAttrShape"
	.long	44,3
	.long	_RTTI_PANGO_TPANGOATTRIBUTE
	.long	0
	.long	_RTTI_PANGO_TPANGORECTANGLE
	.long	12
	.long	_RTTI_PANGO_TPANGORECTANGLE
	.long	28

.const_data
	.align 2
.globl	_INIT_PANGO_PPANGOATTRFONTDESC
_INIT_PANGO_PPANGOATTRFONTDESC:
	.byte	0
	.ascii	"\022PPangoAttrFontDesc"

.const_data
	.align 2
.globl	_RTTI_PANGO_PPANGOATTRFONTDESC
_RTTI_PANGO_PPANGOATTRFONTDESC:
	.byte	0
	.ascii	"\022PPangoAttrFontDesc"

.const_data
	.align 2
.globl	_INIT_PANGO_TPANGOATTRFONTDESC
_INIT_PANGO_TPANGOATTRFONTDESC:
	.byte	13,18
	.ascii	"TPangoAttrFontDesc"
	.long	16,0

.const_data
	.align 2
.globl	_RTTI_PANGO_TPANGOATTRFONTDESC
_RTTI_PANGO_TPANGOATTRFONTDESC:
	.byte	13,18
	.ascii	"TPangoAttrFontDesc"
	.long	16,2
	.long	_RTTI_PANGO_TPANGOATTRIBUTE
	.long	0
	.long	_RTTI_PANGO_PPANGOFONTDESCRIPTION
	.long	12

.const_data
	.align 2
.globl	_INIT_PANGO_PPANGOLOGATTR
_INIT_PANGO_PPANGOLOGATTR:
	.byte	0
	.ascii	"\015PPangoLogAttr"

.const_data
	.align 2
.globl	_RTTI_PANGO_PPANGOLOGATTR
_RTTI_PANGO_PPANGOLOGATTR:
	.byte	0
	.ascii	"\015PPangoLogAttr"

.const_data
	.align 2
.globl	_INIT_PANGO_TPANGOLOGATTR
_INIT_PANGO_TPANGOLOGATTR:
	.byte	13,13
	.ascii	"TPangoLogAttr"
	.long	2,0

.const_data
	.align 2
.globl	_RTTI_PANGO_TPANGOLOGATTR
_RTTI_PANGO_TPANGOLOGATTR:
	.byte	13,13
	.ascii	"TPangoLogAttr"
	.long	2,1
	.long	_RTTI_SYSTEM_WORD
	.long	0

.const_data
	.align 2
.globl	_INIT_PANGO_PPANGOCOVERAGELEVEL
_INIT_PANGO_PPANGOCOVERAGELEVEL:
	.byte	0
	.ascii	"\023PPangoCoverageLevel"

.const_data
	.align 2
.globl	_RTTI_PANGO_PPANGOCOVERAGELEVEL
_RTTI_PANGO_PPANGOCOVERAGELEVEL:
	.byte	0
	.ascii	"\023PPangoCoverageLevel"

.const_data
	.align 2
.globl	_INIT_PANGO_TPANGOCOVERAGELEVEL
_INIT_PANGO_TPANGOCOVERAGELEVEL:
	.byte	3,19
	.ascii	"TPangoCoverageLevel"
	.byte	5
	.long	0,3,0
	.byte	19
	.ascii	"PANGO_COVERAGE_NONE"
	.byte	23
	.ascii	"PANGO_COVERAGE_FALLBACK"
	.byte	26
	.ascii	"PANGO_COVERAGE_APPROXIMATE"
	.byte	20
	.ascii	"PANGO_COVERAGE_EXACT"
	.byte	5
	.ascii	"pango"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_PANGO_TPANGOCOVERAGELEVEL
_RTTI_PANGO_TPANGOCOVERAGELEVEL:
	.byte	3,19
	.ascii	"TPangoCoverageLevel"
	.byte	5
	.long	0,3,0
	.byte	19
	.ascii	"PANGO_COVERAGE_NONE"
	.byte	23
	.ascii	"PANGO_COVERAGE_FALLBACK"
	.byte	26
	.ascii	"PANGO_COVERAGE_APPROXIMATE"
	.byte	20
	.ascii	"PANGO_COVERAGE_EXACT"
	.byte	5
	.ascii	"pango"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_PANGO_TPANGOCOVERAGELEVEL_s2o
_RTTI_PANGO_TPANGOCOVERAGELEVEL_s2o:
	.long	4,2
	.long	_RTTI_PANGO_TPANGOCOVERAGELEVEL+78
	.long	3
	.long	_RTTI_PANGO_TPANGOCOVERAGELEVEL+105
	.long	1
	.long	_RTTI_PANGO_TPANGOCOVERAGELEVEL+54
	.long	0
	.long	_RTTI_PANGO_TPANGOCOVERAGELEVEL+34

.const_data
	.align 2
.globl	_RTTI_PANGO_TPANGOCOVERAGELEVEL_o2s
_RTTI_PANGO_TPANGOCOVERAGELEVEL_o2s:
	.long	0
	.long	_RTTI_PANGO_TPANGOCOVERAGELEVEL+34
	.long	_RTTI_PANGO_TPANGOCOVERAGELEVEL+54
	.long	_RTTI_PANGO_TPANGOCOVERAGELEVEL+78
	.long	_RTTI_PANGO_TPANGOCOVERAGELEVEL+105

.const_data
	.align 2
.globl	_INIT_PANGO_PPANGOBLOCKINFO
_INIT_PANGO_PPANGOBLOCKINFO:
	.byte	0
	.ascii	"\017PPangoBlockInfo"

.const_data
	.align 2
.globl	_RTTI_PANGO_PPANGOBLOCKINFO
_RTTI_PANGO_PPANGOBLOCKINFO:
	.byte	0
	.ascii	"\017PPangoBlockInfo"

.const_data
	.align 2
.globl	_INIT_PANGO_TPANGOBLOCKINFO
_INIT_PANGO_TPANGOBLOCKINFO:
	.byte	13,15
	.ascii	"TPangoBlockInfo"
	.long	8,0

.const_data
	.align 2
.globl	_RTTI_PANGO_TPANGOBLOCKINFO
_RTTI_PANGO_TPANGOBLOCKINFO:
	.byte	13,15
	.ascii	"TPangoBlockInfo"
	.long	8,2
	.long	_RTTI_GLIB2_PGUCHAR
	.long	0
	.long	_RTTI_PANGO_TPANGOCOVERAGELEVEL
	.long	4

.const_data
	.align 2
.globl	_INIT_PANGO_PPANGOCOVERAGE
_INIT_PANGO_PPANGOCOVERAGE:
	.byte	0
	.ascii	"\016PPangoCoverage"

.const_data
	.align 2
.globl	_RTTI_PANGO_PPANGOCOVERAGE
_RTTI_PANGO_PPANGOCOVERAGE:
	.byte	0
	.ascii	"\016PPangoCoverage"

.const_data
	.align 2
.globl	_INIT_PANGO_TPANGOCOVERAGE
_INIT_PANGO_TPANGOCOVERAGE:
	.byte	13,14
	.ascii	"TPangoCoverage"
	.long	16,0

.const_data
	.align 2
.globl	_RTTI_PANGO_TPANGOCOVERAGE
_RTTI_PANGO_TPANGOCOVERAGE:
	.byte	13,14
	.ascii	"TPangoCoverage"
	.long	16,4
	.long	_RTTI_SYSTEM_LONGWORD
	.long	0
	.long	_RTTI_SYSTEM_LONGINT
	.long	4
	.long	_RTTI_SYSTEM_LONGINT
	.long	8
	.long	_RTTI_PANGO_PPANGOBLOCKINFO
	.long	12

.const_data
	.align 2
.globl	_INIT_PANGO_PPANGOENGINERANGE
_INIT_PANGO_PPANGOENGINERANGE:
	.byte	0
	.ascii	"\021PPangoEngineRange"

.const_data
	.align 2
.globl	_RTTI_PANGO_PPANGOENGINERANGE
_RTTI_PANGO_PPANGOENGINERANGE:
	.byte	0
	.ascii	"\021PPangoEngineRange"

.const_data
	.align 2
.globl	_INIT_PANGO_TPANGOENGINERANGE
_INIT_PANGO_TPANGOENGINERANGE:
	.byte	13,17
	.ascii	"TPangoEngineRange"
	.long	12,0

.const_data
	.align 2
.globl	_RTTI_PANGO_TPANGOENGINERANGE
_RTTI_PANGO_TPANGOENGINERANGE:
	.byte	13,17
	.ascii	"TPangoEngineRange"
	.long	12,3
	.long	_RTTI_SYSTEM_LONGWORD
	.long	0
	.long	_RTTI_SYSTEM_LONGWORD
	.long	4
	.long	_RTTI_GLIB2_PGCHAR
	.long	8

.const_data
	.align 2
.globl	_INIT_PANGO_PPANGOENGINEINFO
_INIT_PANGO_PPANGOENGINEINFO:
	.byte	0
	.ascii	"\020PPangoEngineInfo"

.const_data
	.align 2
.globl	_RTTI_PANGO_PPANGOENGINEINFO
_RTTI_PANGO_PPANGOENGINEINFO:
	.byte	0
	.ascii	"\020PPangoEngineInfo"

.const_data
	.align 2
.globl	_INIT_PANGO_TPANGOENGINEINFO
_INIT_PANGO_TPANGOENGINEINFO:
	.byte	13,16
	.ascii	"TPangoEngineInfo"
	.long	20,0

.const_data
	.align 2
.globl	_RTTI_PANGO_TPANGOENGINEINFO
_RTTI_PANGO_TPANGOENGINEINFO:
	.byte	13,16
	.ascii	"TPangoEngineInfo"
	.long	20,5
	.long	_RTTI_GLIB2_PGCHAR
	.long	0
	.long	_RTTI_GLIB2_PGCHAR
	.long	4
	.long	_RTTI_GLIB2_PGCHAR
	.long	8
	.long	_RTTI_PANGO_PPANGOENGINERANGE
	.long	12
	.long	_RTTI_SYSTEM_LONGINT
	.long	16

.const_data
	.align 2
.globl	_INIT_PANGO_PPANGOENGINE
_INIT_PANGO_PPANGOENGINE:
	.byte	0
	.ascii	"\014PPangoEngine"

.const_data
	.align 2
.globl	_RTTI_PANGO_PPANGOENGINE
_RTTI_PANGO_PPANGOENGINE:
	.byte	0
	.ascii	"\014PPangoEngine"

.const_data
	.align 2
.globl	_INIT_PANGO_TPANGOENGINE
_INIT_PANGO_TPANGOENGINE:
	.byte	13,12
	.ascii	"TPangoEngine"
	.long	12,0

.const_data
	.align 2
.globl	_RTTI_PANGO_TPANGOENGINE
_RTTI_PANGO_TPANGOENGINE:
	.byte	13,12
	.ascii	"TPangoEngine"
	.long	12,3
	.long	_RTTI_GLIB2_PGCHAR
	.long	0
	.long	_RTTI_GLIB2_PGCHAR
	.long	4
	.long	_RTTI_SYSTEM_LONGINT
	.long	8

.const_data
	.align 2
.globl	_INIT_PANGO_TPANGOENGINELANGSCRIPTBREAK
_INIT_PANGO_TPANGOENGINELANGSCRIPTBREAK:
	.byte	23,27
	.ascii	"TPangoEngineLangScriptBreak"

.const_data
	.align 2
.globl	_RTTI_PANGO_TPANGOENGINELANGSCRIPTBREAK
_RTTI_PANGO_TPANGOENGINELANGSCRIPTBREAK:
	.byte	23,27
	.ascii	"TPangoEngineLangScriptBreak"

.const_data
	.align 2
.globl	_INIT_PANGO_PPANGOENGINELANG
_INIT_PANGO_PPANGOENGINELANG:
	.byte	0
	.ascii	"\020PPangoEngineLang"

.const_data
	.align 2
.globl	_RTTI_PANGO_PPANGOENGINELANG
_RTTI_PANGO_PPANGOENGINELANG:
	.byte	0
	.ascii	"\020PPangoEngineLang"

.const_data
	.align 2
.globl	_INIT_PANGO_TPANGOENGINELANG
_INIT_PANGO_TPANGOENGINELANG:
	.byte	13,16
	.ascii	"TPangoEngineLang"
	.long	16,0

.const_data
	.align 2
.globl	_RTTI_PANGO_TPANGOENGINELANG
_RTTI_PANGO_TPANGOENGINELANG:
	.byte	13,16
	.ascii	"TPangoEngineLang"
	.long	16,2
	.long	_RTTI_PANGO_TPANGOENGINE
	.long	0
	.long	_RTTI_PANGO_TPANGOENGINELANGSCRIPTBREAK
	.long	12

.const_data
	.align 2
.globl	_INIT_PANGO_TPANGOENGINESHAPESCRIPT
_INIT_PANGO_TPANGOENGINESHAPESCRIPT:
	.byte	23,23
	.ascii	"TPangoEngineShapeScript"

.const_data
	.align 2
.globl	_RTTI_PANGO_TPANGOENGINESHAPESCRIPT
_RTTI_PANGO_TPANGOENGINESHAPESCRIPT:
	.byte	23,23
	.ascii	"TPangoEngineShapeScript"

.const_data
	.align 2
.globl	_INIT_PANGO_TPANGOENGINESHAPEGETCOVERAGE
_INIT_PANGO_TPANGOENGINESHAPEGETCOVERAGE:
	.byte	23,28
	.ascii	"TPangoEngineShapeGetCoverage"

.const_data
	.align 2
.globl	_RTTI_PANGO_TPANGOENGINESHAPEGETCOVERAGE
_RTTI_PANGO_TPANGOENGINESHAPEGETCOVERAGE:
	.byte	23,28
	.ascii	"TPangoEngineShapeGetCoverage"

.const_data
	.align 2
.globl	_INIT_PANGO_PPANGOENGINESHAPE
_INIT_PANGO_PPANGOENGINESHAPE:
	.byte	0
	.ascii	"\021PPangoEngineShape"

.const_data
	.align 2
.globl	_RTTI_PANGO_PPANGOENGINESHAPE
_RTTI_PANGO_PPANGOENGINESHAPE:
	.byte	0
	.ascii	"\021PPangoEngineShape"

.const_data
	.align 2
.globl	_INIT_PANGO_TPANGOENGINESHAPE
_INIT_PANGO_TPANGOENGINESHAPE:
	.byte	13,17
	.ascii	"TPangoEngineShape"
	.long	20,0

.const_data
	.align 2
.globl	_RTTI_PANGO_TPANGOENGINESHAPE
_RTTI_PANGO_TPANGOENGINESHAPE:
	.byte	13,17
	.ascii	"TPangoEngineShape"
	.long	20,3
	.long	_RTTI_PANGO_TPANGOENGINE
	.long	0
	.long	_RTTI_PANGO_TPANGOENGINESHAPESCRIPT
	.long	12
	.long	_RTTI_PANGO_TPANGOENGINESHAPEGETCOVERAGE
	.long	16

.const_data
	.align 2
.globl	_INIT_PANGO_PPANGOFONTSET
_INIT_PANGO_PPANGOFONTSET:
	.byte	0
	.ascii	"\015PPangoFontset"

.const_data
	.align 2
.globl	_RTTI_PANGO_PPANGOFONTSET
_RTTI_PANGO_PPANGOFONTSET:
	.byte	0
	.ascii	"\015PPangoFontset"

.const_data
	.align 2
.globl	_INIT_PANGO_TPANGOFONTSET
_INIT_PANGO_TPANGOFONTSET:
	.byte	13,13
	.ascii	"TPangoFontset"
	.long	12,0

.const_data
	.align 2
.globl	_RTTI_PANGO_TPANGOFONTSET
_RTTI_PANGO_TPANGOFONTSET:
	.byte	13,13
	.ascii	"TPangoFontset"
	.long	12,1
	.long	_RTTI_GLIB2_TGOBJECT
	.long	0

.const_data
	.align 2
.globl	_INIT_PANGO_PPANGOFONTSETCLASS
_INIT_PANGO_PPANGOFONTSETCLASS:
	.byte	0
	.ascii	"\022PPangoFontsetClass"

.const_data
	.align 2
.globl	_RTTI_PANGO_PPANGOFONTSETCLASS
_RTTI_PANGO_PPANGOFONTSETCLASS:
	.byte	0
	.ascii	"\022PPangoFontsetClass"

.const_data
	.align 2
.globl	_INIT_PANGO_TPANGOFONTSETCLASS
_INIT_PANGO_TPANGOFONTSETCLASS:
	.byte	13,18
	.ascii	"TPangoFontsetClass"
	.long	96,0

.const_data
	.align 2
.globl	_RTTI_PANGO_DEF73
_RTTI_PANGO_DEF73:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_PANGO_DEF74
_RTTI_PANGO_DEF74:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_PANGO_DEF75
_RTTI_PANGO_DEF75:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_PANGO_DEF76
_RTTI_PANGO_DEF76:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_PANGO_DEF77
_RTTI_PANGO_DEF77:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_PANGO_DEF78
_RTTI_PANGO_DEF78:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_PANGO_DEF79
_RTTI_PANGO_DEF79:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_PANGO_TPANGOFONTSETCLASS
_RTTI_PANGO_TPANGOFONTSETCLASS:
	.byte	13,18
	.ascii	"TPangoFontsetClass"
	.long	96,8
	.long	_RTTI_GLIB2_TGOBJECTCLASS
	.long	0
	.long	_RTTI_PANGO_DEF73
	.long	68
	.long	_RTTI_PANGO_DEF74
	.long	72
	.long	_RTTI_PANGO_DEF75
	.long	76
	.long	_RTTI_PANGO_DEF76
	.long	80
	.long	_RTTI_PANGO_DEF77
	.long	84
	.long	_RTTI_PANGO_DEF78
	.long	88
	.long	_RTTI_PANGO_DEF79
	.long	92

.const_data
	.align 2
.globl	_INIT_PANGO_PPANGOSTYLE
_INIT_PANGO_PPANGOSTYLE:
	.byte	0
	.ascii	"\013PPangoStyle"

.const_data
	.align 2
.globl	_RTTI_PANGO_PPANGOSTYLE
_RTTI_PANGO_PPANGOSTYLE:
	.byte	0
	.ascii	"\013PPangoStyle"

.const_data
	.align 2
.globl	_INIT_PANGO_PPANGOVARIANT
_INIT_PANGO_PPANGOVARIANT:
	.byte	0
	.ascii	"\015PPangoVariant"

.const_data
	.align 2
.globl	_RTTI_PANGO_PPANGOVARIANT
_RTTI_PANGO_PPANGOVARIANT:
	.byte	0
	.ascii	"\015PPangoVariant"

.const_data
	.align 2
.globl	_INIT_PANGO_PPANGOWEIGHT
_INIT_PANGO_PPANGOWEIGHT:
	.byte	0
	.ascii	"\014PPangoWeight"

.const_data
	.align 2
.globl	_RTTI_PANGO_PPANGOWEIGHT
_RTTI_PANGO_PPANGOWEIGHT:
	.byte	0
	.ascii	"\014PPangoWeight"

.const_data
	.align 2
.globl	_INIT_PANGO_PPANGOSTRETCH
_INIT_PANGO_PPANGOSTRETCH:
	.byte	0
	.ascii	"\015PPangoStretch"

.const_data
	.align 2
.globl	_RTTI_PANGO_PPANGOSTRETCH
_RTTI_PANGO_PPANGOSTRETCH:
	.byte	0
	.ascii	"\015PPangoStretch"

.const_data
	.align 2
.globl	_INIT_PANGO_PPANGOFONTMASK
_INIT_PANGO_PPANGOFONTMASK:
	.byte	0
	.ascii	"\016PPangoFontMask"

.const_data
	.align 2
.globl	_RTTI_PANGO_PPANGOFONTMASK
_RTTI_PANGO_PPANGOFONTMASK:
	.byte	0
	.ascii	"\016PPangoFontMask"

.const_data
	.align 2
.globl	_INIT_PANGO_TPANGOFONTMETRICS
_INIT_PANGO_TPANGOFONTMETRICS:
	.byte	13,17
	.ascii	"TPangoFontMetrics"
	.long	20,0

.const_data
	.align 2
.globl	_RTTI_PANGO_TPANGOFONTMETRICS
_RTTI_PANGO_TPANGOFONTMETRICS:
	.byte	13,17
	.ascii	"TPangoFontMetrics"
	.long	20,5
	.long	_RTTI_SYSTEM_LONGWORD
	.long	0
	.long	_RTTI_SYSTEM_LONGINT
	.long	4
	.long	_RTTI_SYSTEM_LONGINT
	.long	8
	.long	_RTTI_SYSTEM_LONGINT
	.long	12
	.long	_RTTI_SYSTEM_LONGINT
	.long	16

.const_data
	.align 2
.globl	_INIT_PANGO_PPANGOFONTFAMILY
_INIT_PANGO_PPANGOFONTFAMILY:
	.byte	0
	.ascii	"\020PPangoFontFamily"

.const_data
	.align 2
.globl	_RTTI_PANGO_PPANGOFONTFAMILY
_RTTI_PANGO_PPANGOFONTFAMILY:
	.byte	0
	.ascii	"\020PPangoFontFamily"

.const_data
	.align 2
.globl	_INIT_PANGO_PPPANGOFONTFAMILY
_INIT_PANGO_PPPANGOFONTFAMILY:
	.byte	0
	.ascii	"\021PPPangoFontFamily"

.const_data
	.align 2
.globl	_RTTI_PANGO_PPPANGOFONTFAMILY
_RTTI_PANGO_PPPANGOFONTFAMILY:
	.byte	0
	.ascii	"\021PPPangoFontFamily"

.const_data
	.align 2
.globl	_INIT_PANGO_PPPPANGOFONTFAMILY
_INIT_PANGO_PPPPANGOFONTFAMILY:
	.byte	0
	.ascii	"\022PPPPangoFontFamily"

.const_data
	.align 2
.globl	_RTTI_PANGO_PPPPANGOFONTFAMILY
_RTTI_PANGO_PPPPANGOFONTFAMILY:
	.byte	0
	.ascii	"\022PPPPangoFontFamily"

.const_data
	.align 2
.globl	_INIT_PANGO_TPANGOFONTFAMILY
_INIT_PANGO_TPANGOFONTFAMILY:
	.byte	13,16
	.ascii	"TPangoFontFamily"
	.long	12,0

.const_data
	.align 2
.globl	_RTTI_PANGO_TPANGOFONTFAMILY
_RTTI_PANGO_TPANGOFONTFAMILY:
	.byte	13,16
	.ascii	"TPangoFontFamily"
	.long	12,1
	.long	_RTTI_GLIB2_TGOBJECT
	.long	0

.const_data
	.align 2
.globl	_INIT_PANGO_PPANGOFONTFACE
_INIT_PANGO_PPANGOFONTFACE:
	.byte	0
	.ascii	"\016PPangoFontFace"

.const_data
	.align 2
.globl	_RTTI_PANGO_PPANGOFONTFACE
_RTTI_PANGO_PPANGOFONTFACE:
	.byte	0
	.ascii	"\016PPangoFontFace"

.const_data
	.align 2
.globl	_INIT_PANGO_PPPANGOFONTFACE
_INIT_PANGO_PPPANGOFONTFACE:
	.byte	0
	.ascii	"\017PPPangoFontFace"

.const_data
	.align 2
.globl	_RTTI_PANGO_PPPANGOFONTFACE
_RTTI_PANGO_PPPANGOFONTFACE:
	.byte	0
	.ascii	"\017PPPangoFontFace"

.const_data
	.align 2
.globl	_INIT_PANGO_PPPPANGOFONTFACE
_INIT_PANGO_PPPPANGOFONTFACE:
	.byte	0
	.ascii	"\020PPPPangoFontFace"

.const_data
	.align 2
.globl	_RTTI_PANGO_PPPPANGOFONTFACE
_RTTI_PANGO_PPPPANGOFONTFACE:
	.byte	0
	.ascii	"\020PPPPangoFontFace"

.const_data
	.align 2
.globl	_INIT_PANGO_TPANGOFONTFACE
_INIT_PANGO_TPANGOFONTFACE:
	.byte	13,14
	.ascii	"TPangoFontFace"
	.long	12,0

.const_data
	.align 2
.globl	_RTTI_PANGO_TPANGOFONTFACE
_RTTI_PANGO_TPANGOFONTFACE:
	.byte	13,14
	.ascii	"TPangoFontFace"
	.long	12,1
	.long	_RTTI_GLIB2_TGOBJECT
	.long	0

.const_data
	.align 2
.globl	_INIT_PANGO_TPANGOFONTFAMILYCLASSLISTFACES
_INIT_PANGO_TPANGOFONTFAMILYCLASSLISTFACES:
	.byte	23,30
	.ascii	"TPangoFontFamilyClassListFaces"

.const_data
	.align 2
.globl	_RTTI_PANGO_TPANGOFONTFAMILYCLASSLISTFACES
_RTTI_PANGO_TPANGOFONTFAMILYCLASSLISTFACES:
	.byte	23,30
	.ascii	"TPangoFontFamilyClassListFaces"

.const_data
	.align 2
.globl	_INIT_PANGO_TPANGOFONTFAMILYCLASSGETNAME
_INIT_PANGO_TPANGOFONTFAMILYCLASSGETNAME:
	.byte	23,28
	.ascii	"TPangoFontFamilyClassGetName"

.const_data
	.align 2
.globl	_RTTI_PANGO_TPANGOFONTFAMILYCLASSGETNAME
_RTTI_PANGO_TPANGOFONTFAMILYCLASSGETNAME:
	.byte	23,28
	.ascii	"TPangoFontFamilyClassGetName"

.const_data
	.align 2
.globl	_INIT_PANGO_PPANGOFONTFAMILYCLASS
_INIT_PANGO_PPANGOFONTFAMILYCLASS:
	.byte	0
	.ascii	"\025PPangoFontFamilyClass"

.const_data
	.align 2
.globl	_RTTI_PANGO_PPANGOFONTFAMILYCLASS
_RTTI_PANGO_PPANGOFONTFAMILYCLASS:
	.byte	0
	.ascii	"\025PPangoFontFamilyClass"

.const_data
	.align 2
.globl	_INIT_PANGO_TPANGOFONTFAMILYCLASS
_INIT_PANGO_TPANGOFONTFAMILYCLASS:
	.byte	13,21
	.ascii	"TPangoFontFamilyClass"
	.long	92,0

.const_data
	.align 2
.globl	_RTTI_PANGO_DEF98
_RTTI_PANGO_DEF98:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_PANGO_DEF99
_RTTI_PANGO_DEF99:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_PANGO_DEF100
_RTTI_PANGO_DEF100:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_PANGO_DEF101
_RTTI_PANGO_DEF101:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_PANGO_TPANGOFONTFAMILYCLASS
_RTTI_PANGO_TPANGOFONTFAMILYCLASS:
	.byte	13,21
	.ascii	"TPangoFontFamilyClass"
	.long	92,7
	.long	_RTTI_GLIB2_TGOBJECTCLASS
	.long	0
	.long	_RTTI_PANGO_TPANGOFONTFAMILYCLASSLISTFACES
	.long	68
	.long	_RTTI_PANGO_TPANGOFONTFAMILYCLASSGETNAME
	.long	72
	.long	_RTTI_PANGO_DEF98
	.long	76
	.long	_RTTI_PANGO_DEF99
	.long	80
	.long	_RTTI_PANGO_DEF100
	.long	84
	.long	_RTTI_PANGO_DEF101
	.long	88

.const_data
	.align 2
.globl	_INIT_PANGO_PPANGOFONTFACECLASS
_INIT_PANGO_PPANGOFONTFACECLASS:
	.byte	0
	.ascii	"\023PPangoFontFaceClass"

.const_data
	.align 2
.globl	_RTTI_PANGO_PPANGOFONTFACECLASS
_RTTI_PANGO_PPANGOFONTFACECLASS:
	.byte	0
	.ascii	"\023PPangoFontFaceClass"

.const_data
	.align 2
.globl	_INIT_PANGO_TPANGOFONTFACECLASS
_INIT_PANGO_TPANGOFONTFACECLASS:
	.byte	13,19
	.ascii	"TPangoFontFaceClass"
	.long	92,0

.const_data
	.align 2
.globl	_RTTI_PANGO_DEF104
_RTTI_PANGO_DEF104:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_PANGO_DEF105
_RTTI_PANGO_DEF105:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_PANGO_DEF106
_RTTI_PANGO_DEF106:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_PANGO_DEF107
_RTTI_PANGO_DEF107:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_PANGO_DEF108
_RTTI_PANGO_DEF108:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_PANGO_DEF109
_RTTI_PANGO_DEF109:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_PANGO_TPANGOFONTFACECLASS
_RTTI_PANGO_TPANGOFONTFACECLASS:
	.byte	13,19
	.ascii	"TPangoFontFaceClass"
	.long	92,7
	.long	_RTTI_GLIB2_TGOBJECTCLASS
	.long	0
	.long	_RTTI_PANGO_DEF104
	.long	68
	.long	_RTTI_PANGO_DEF105
	.long	72
	.long	_RTTI_PANGO_DEF106
	.long	76
	.long	_RTTI_PANGO_DEF107
	.long	80
	.long	_RTTI_PANGO_DEF108
	.long	84
	.long	_RTTI_PANGO_DEF109
	.long	88

.const_data
	.align 2
.globl	_INIT_PANGO_TPANGOFONT
_INIT_PANGO_TPANGOFONT:
	.byte	13,10
	.ascii	"TPangoFont"
	.long	12,0

.const_data
	.align 2
.globl	_RTTI_PANGO_TPANGOFONT
_RTTI_PANGO_TPANGOFONT:
	.byte	13,10
	.ascii	"TPangoFont"
	.long	12,1
	.long	_RTTI_GLIB2_TGOBJECT
	.long	0

.const_data
	.align 2
.globl	_INIT_PANGO_TPANGOFONTCLASSDESCRIBE
_INIT_PANGO_TPANGOFONTCLASSDESCRIBE:
	.byte	23,23
	.ascii	"TPangoFontClassDescribe"

.const_data
	.align 2
.globl	_RTTI_PANGO_TPANGOFONTCLASSDESCRIBE
_RTTI_PANGO_TPANGOFONTCLASSDESCRIBE:
	.byte	23,23
	.ascii	"TPangoFontClassDescribe"

.const_data
	.align 2
.globl	_INIT_PANGO_TPANGOFONTCLASSGETCOVERAGE
_INIT_PANGO_TPANGOFONTCLASSGETCOVERAGE:
	.byte	23,26
	.ascii	"TPangoFontClassGetCoverage"

.const_data
	.align 2
.globl	_RTTI_PANGO_TPANGOFONTCLASSGETCOVERAGE
_RTTI_PANGO_TPANGOFONTCLASSGETCOVERAGE:
	.byte	23,26
	.ascii	"TPangoFontClassGetCoverage"

.const_data
	.align 2
.globl	_INIT_PANGO_TPANGOFONTCLASSFINDSHAPER
_INIT_PANGO_TPANGOFONTCLASSFINDSHAPER:
	.byte	23,25
	.ascii	"TPangoFontClassFindShaper"

.const_data
	.align 2
.globl	_RTTI_PANGO_TPANGOFONTCLASSFINDSHAPER
_RTTI_PANGO_TPANGOFONTCLASSFINDSHAPER:
	.byte	23,25
	.ascii	"TPangoFontClassFindShaper"

.const_data
	.align 2
.globl	_INIT_PANGO_TPANGOFONTCLASSGETGLYPHEXTENTS
_INIT_PANGO_TPANGOFONTCLASSGETGLYPHEXTENTS:
	.byte	23,30
	.ascii	"TPangoFontClassGetGlyphExtents"

.const_data
	.align 2
.globl	_RTTI_PANGO_TPANGOFONTCLASSGETGLYPHEXTENTS
_RTTI_PANGO_TPANGOFONTCLASSGETGLYPHEXTENTS:
	.byte	23,30
	.ascii	"TPangoFontClassGetGlyphExtents"

.const_data
	.align 2
.globl	_INIT_PANGO_TPANGOFONTCLASSGETMETRICS
_INIT_PANGO_TPANGOFONTCLASSGETMETRICS:
	.byte	23,25
	.ascii	"TPangoFontClassGetMetrics"

.const_data
	.align 2
.globl	_RTTI_PANGO_TPANGOFONTCLASSGETMETRICS
_RTTI_PANGO_TPANGOFONTCLASSGETMETRICS:
	.byte	23,25
	.ascii	"TPangoFontClassGetMetrics"

.const_data
	.align 2
.globl	_INIT_PANGO_PPANGOFONTCLASS
_INIT_PANGO_PPANGOFONTCLASS:
	.byte	0
	.ascii	"\017PPangoFontClass"

.const_data
	.align 2
.globl	_RTTI_PANGO_PPANGOFONTCLASS
_RTTI_PANGO_PPANGOFONTCLASS:
	.byte	0
	.ascii	"\017PPangoFontClass"

.const_data
	.align 2
.globl	_INIT_PANGO_TPANGOFONTCLASS
_INIT_PANGO_TPANGOFONTCLASS:
	.byte	13,15
	.ascii	"TPangoFontClass"
	.long	104,0

.const_data
	.align 2
.globl	_RTTI_PANGO_DEF118
_RTTI_PANGO_DEF118:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_PANGO_DEF119
_RTTI_PANGO_DEF119:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_PANGO_DEF120
_RTTI_PANGO_DEF120:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_PANGO_DEF121
_RTTI_PANGO_DEF121:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_PANGO_TPANGOFONTCLASS
_RTTI_PANGO_TPANGOFONTCLASS:
	.byte	13,15
	.ascii	"TPangoFontClass"
	.long	104,10
	.long	_RTTI_GLIB2_TGOBJECTCLASS
	.long	0
	.long	_RTTI_PANGO_TPANGOFONTCLASSDESCRIBE
	.long	68
	.long	_RTTI_PANGO_TPANGOFONTCLASSGETCOVERAGE
	.long	72
	.long	_RTTI_PANGO_TPANGOFONTCLASSFINDSHAPER
	.long	76
	.long	_RTTI_PANGO_TPANGOFONTCLASSGETGLYPHEXTENTS
	.long	80
	.long	_RTTI_PANGO_TPANGOFONTCLASSGETMETRICS
	.long	84
	.long	_RTTI_PANGO_DEF118
	.long	88
	.long	_RTTI_PANGO_DEF119
	.long	92
	.long	_RTTI_PANGO_DEF120
	.long	96
	.long	_RTTI_PANGO_DEF121
	.long	100

.const_data
	.align 2
.globl	_INIT_PANGO_PPANGOFONTMAP
_INIT_PANGO_PPANGOFONTMAP:
	.byte	0
	.ascii	"\015PPangoFontMap"

.const_data
	.align 2
.globl	_RTTI_PANGO_PPANGOFONTMAP
_RTTI_PANGO_PPANGOFONTMAP:
	.byte	0
	.ascii	"\015PPangoFontMap"

.const_data
	.align 2
.globl	_INIT_PANGO_TPANGOFONTMAP
_INIT_PANGO_TPANGOFONTMAP:
	.byte	13,13
	.ascii	"TPangoFontMap"
	.long	12,0

.const_data
	.align 2
.globl	_RTTI_PANGO_TPANGOFONTMAP
_RTTI_PANGO_TPANGOFONTMAP:
	.byte	13,13
	.ascii	"TPangoFontMap"
	.long	12,1
	.long	_RTTI_GLIB2_TGOBJECT
	.long	0

.const_data
	.align 2
.globl	_INIT_PANGO_TPANGOFONTMAPCLASSLOADFONT
_INIT_PANGO_TPANGOFONTMAPCLASSLOADFONT:
	.byte	23,26
	.ascii	"TPangoFontMapClassLoadFont"

.const_data
	.align 2
.globl	_RTTI_PANGO_TPANGOFONTMAPCLASSLOADFONT
_RTTI_PANGO_TPANGOFONTMAPCLASSLOADFONT:
	.byte	23,26
	.ascii	"TPangoFontMapClassLoadFont"

.const_data
	.align 2
.globl	_INIT_PANGO_TPANGOFONTMAPCLASSLISTFAMILIES
_INIT_PANGO_TPANGOFONTMAPCLASSLISTFAMILIES:
	.byte	23,30
	.ascii	"TPangoFontMapClassListFamilies"

.const_data
	.align 2
.globl	_RTTI_PANGO_TPANGOFONTMAPCLASSLISTFAMILIES
_RTTI_PANGO_TPANGOFONTMAPCLASSLISTFAMILIES:
	.byte	23,30
	.ascii	"TPangoFontMapClassListFamilies"

.const_data
	.align 2
.globl	_INIT_PANGO_TPANGOFONTMAPCLASSFONTSET
_INIT_PANGO_TPANGOFONTMAPCLASSFONTSET:
	.byte	23,25
	.ascii	"TPangoFontMapClassFontSet"

.const_data
	.align 2
.globl	_RTTI_PANGO_TPANGOFONTMAPCLASSFONTSET
_RTTI_PANGO_TPANGOFONTMAPCLASSFONTSET:
	.byte	23,25
	.ascii	"TPangoFontMapClassFontSet"

.const_data
	.align 2
.globl	_INIT_PANGO_PPANGOFONTMAPCLASS
_INIT_PANGO_PPANGOFONTMAPCLASS:
	.byte	0
	.ascii	"\022PPangoFontMapClass"

.const_data
	.align 2
.globl	_RTTI_PANGO_PPANGOFONTMAPCLASS
_RTTI_PANGO_PPANGOFONTMAPCLASS:
	.byte	0
	.ascii	"\022PPangoFontMapClass"

.const_data
	.align 2
.globl	_INIT_PANGO_TPANGOFONTMAPCLASS
_INIT_PANGO_TPANGOFONTMAPCLASS:
	.byte	13,18
	.ascii	"TPangoFontMapClass"
	.long	96,0

.const_data
	.align 2
.globl	_RTTI_PANGO_DEF129
_RTTI_PANGO_DEF129:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_PANGO_DEF130
_RTTI_PANGO_DEF130:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_PANGO_DEF131
_RTTI_PANGO_DEF131:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_PANGO_DEF132
_RTTI_PANGO_DEF132:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_PANGO_TPANGOFONTMAPCLASS
_RTTI_PANGO_TPANGOFONTMAPCLASS:
	.byte	13,18
	.ascii	"TPangoFontMapClass"
	.long	96,8
	.long	_RTTI_GLIB2_TGOBJECTCLASS
	.long	0
	.long	_RTTI_PANGO_TPANGOFONTMAPCLASSLOADFONT
	.long	68
	.long	_RTTI_PANGO_TPANGOFONTMAPCLASSLISTFAMILIES
	.long	72
	.long	_RTTI_PANGO_TPANGOFONTMAPCLASSFONTSET
	.long	76
	.long	_RTTI_PANGO_DEF129
	.long	80
	.long	_RTTI_PANGO_DEF130
	.long	84
	.long	_RTTI_PANGO_DEF131
	.long	88
	.long	_RTTI_PANGO_DEF132
	.long	92

.const_data
	.align 2
.globl	_INIT_PANGO_PPANGOGLYPHUNIT
_INIT_PANGO_PPANGOGLYPHUNIT:
	.byte	0
	.ascii	"\017PPangoGlyphUnit"

.const_data
	.align 2
.globl	_RTTI_PANGO_PPANGOGLYPHUNIT
_RTTI_PANGO_PPANGOGLYPHUNIT:
	.byte	0
	.ascii	"\017PPangoGlyphUnit"

.const_data
	.align 2
.globl	_INIT_PANGO_PPANGOGLYPHGEOMETRY
_INIT_PANGO_PPANGOGLYPHGEOMETRY:
	.byte	0
	.ascii	"\023PPangoGlyphGeometry"

.const_data
	.align 2
.globl	_RTTI_PANGO_PPANGOGLYPHGEOMETRY
_RTTI_PANGO_PPANGOGLYPHGEOMETRY:
	.byte	0
	.ascii	"\023PPangoGlyphGeometry"

.const_data
	.align 2
.globl	_INIT_PANGO_TPANGOGLYPHGEOMETRY
_INIT_PANGO_TPANGOGLYPHGEOMETRY:
	.byte	13,19
	.ascii	"TPangoGlyphGeometry"
	.long	12,0

.const_data
	.align 2
.globl	_RTTI_PANGO_TPANGOGLYPHGEOMETRY
_RTTI_PANGO_TPANGOGLYPHGEOMETRY:
	.byte	13,19
	.ascii	"TPangoGlyphGeometry"
	.long	12,3
	.long	_RTTI_SYSTEM_LONGINT
	.long	0
	.long	_RTTI_SYSTEM_LONGINT
	.long	4
	.long	_RTTI_SYSTEM_LONGINT
	.long	8

.const_data
	.align 2
.globl	_INIT_PANGO_PPANGOGLYPHVISATTR
_INIT_PANGO_PPANGOGLYPHVISATTR:
	.byte	0
	.ascii	"\022PPangoGlyphVisAttr"

.const_data
	.align 2
.globl	_RTTI_PANGO_PPANGOGLYPHVISATTR
_RTTI_PANGO_PPANGOGLYPHVISATTR:
	.byte	0
	.ascii	"\022PPangoGlyphVisAttr"

.const_data
	.align 2
.globl	_INIT_PANGO_TPANGOGLYPHVISATTR
_INIT_PANGO_TPANGOGLYPHVISATTR:
	.byte	13,18
	.ascii	"TPangoGlyphVisAttr"
	.long	2,0

.const_data
	.align 2
.globl	_RTTI_PANGO_TPANGOGLYPHVISATTR
_RTTI_PANGO_TPANGOGLYPHVISATTR:
	.byte	13,18
	.ascii	"TPangoGlyphVisAttr"
	.long	2,1
	.long	_RTTI_SYSTEM_WORD
	.long	0

.const_data
	.align 2
.globl	_INIT_PANGO_PPANGOGLYPHINFO
_INIT_PANGO_PPANGOGLYPHINFO:
	.byte	0
	.ascii	"\017PPangoGlyphInfo"

.const_data
	.align 2
.globl	_RTTI_PANGO_PPANGOGLYPHINFO
_RTTI_PANGO_PPANGOGLYPHINFO:
	.byte	0
	.ascii	"\017PPangoGlyphInfo"

.const_data
	.align 2
.globl	_INIT_PANGO_TPANGOGLYPHINFO
_INIT_PANGO_TPANGOGLYPHINFO:
	.byte	13,15
	.ascii	"TPangoGlyphInfo"
	.long	20,0

.const_data
	.align 2
.globl	_RTTI_PANGO_TPANGOGLYPHINFO
_RTTI_PANGO_TPANGOGLYPHINFO:
	.byte	13,15
	.ascii	"TPangoGlyphInfo"
	.long	20,3
	.long	_RTTI_SYSTEM_LONGWORD
	.long	0
	.long	_RTTI_PANGO_TPANGOGLYPHGEOMETRY
	.long	4
	.long	_RTTI_PANGO_TPANGOGLYPHVISATTR
	.long	16

.const_data
	.align 2
.globl	_INIT_PANGO_TPANGOGLYPHSTRING
_INIT_PANGO_TPANGOGLYPHSTRING:
	.byte	13,17
	.ascii	"TPangoGlyphString"
	.long	16,0

.const_data
	.align 2
.globl	_RTTI_PANGO_TPANGOGLYPHSTRING
_RTTI_PANGO_TPANGOGLYPHSTRING:
	.byte	13,17
	.ascii	"TPangoGlyphString"
	.long	16,4
	.long	_RTTI_SYSTEM_LONGINT
	.long	0
	.long	_RTTI_PANGO_PPANGOGLYPHINFO
	.long	4
	.long	_RTTI_GLIB2_PGINT
	.long	8
	.long	_RTTI_SYSTEM_LONGINT
	.long	12

.const_data
	.align 2
.globl	_INIT_PANGO_TPANGOANALYSIS
_INIT_PANGO_TPANGOANALYSIS:
	.byte	13,14
	.ascii	"TPangoAnalysis"
	.long	24,0

.const_data
	.align 2
.globl	_RTTI_PANGO_TPANGOANALYSIS
_RTTI_PANGO_TPANGOANALYSIS:
	.byte	13,14
	.ascii	"TPangoAnalysis"
	.long	24,6
	.long	_RTTI_PANGO_PPANGOENGINESHAPE
	.long	0
	.long	_RTTI_PANGO_PPANGOENGINELANG
	.long	4
	.long	_RTTI_PANGO_PPANGOFONT
	.long	8
	.long	_RTTI_SYSTEM_BYTE
	.long	12
	.long	_RTTI_PANGO_PPANGOLANGUAGE
	.long	16
	.long	_RTTI_GLIB2_PGSLIST
	.long	20

.const_data
	.align 2
.globl	_INIT_PANGO_TPANGOITEM
_INIT_PANGO_TPANGOITEM:
	.byte	13,10
	.ascii	"TPangoItem"
	.long	36,0

.const_data
	.align 2
.globl	_RTTI_PANGO_TPANGOITEM
_RTTI_PANGO_TPANGOITEM:
	.byte	13,10
	.ascii	"TPangoItem"
	.long	36,4
	.long	_RTTI_SYSTEM_LONGINT
	.long	0
	.long	_RTTI_SYSTEM_LONGINT
	.long	4
	.long	_RTTI_SYSTEM_LONGINT
	.long	8
	.long	_RTTI_PANGO_TPANGOANALYSIS
	.long	12

.const_data
	.align 2
.globl	_INIT_PANGO_PPANGOALIGNMENT
_INIT_PANGO_PPANGOALIGNMENT:
	.byte	0
	.ascii	"\017PPangoAlignment"

.const_data
	.align 2
.globl	_RTTI_PANGO_PPANGOALIGNMENT
_RTTI_PANGO_PPANGOALIGNMENT:
	.byte	0
	.ascii	"\017PPangoAlignment"

.const_data
	.align 2
.globl	_INIT_PANGO_TPANGOALIGNMENT
_INIT_PANGO_TPANGOALIGNMENT:
	.byte	3,15
	.ascii	"TPangoAlignment"
	.byte	5
	.long	0,2,0
	.byte	16
	.ascii	"PANGO_ALIGN_LEFT"
	.byte	18
	.ascii	"PANGO_ALIGN_CENTER"
	.byte	17
	.ascii	"PANGO_ALIGN_RIGHT"
	.byte	5
	.ascii	"pango"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_PANGO_TPANGOALIGNMENT
_RTTI_PANGO_TPANGOALIGNMENT:
	.byte	3,15
	.ascii	"TPangoAlignment"
	.byte	5
	.long	0,2,0
	.byte	16
	.ascii	"PANGO_ALIGN_LEFT"
	.byte	18
	.ascii	"PANGO_ALIGN_CENTER"
	.byte	17
	.ascii	"PANGO_ALIGN_RIGHT"
	.byte	5
	.ascii	"pango"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_PANGO_TPANGOALIGNMENT_s2o
_RTTI_PANGO_TPANGOALIGNMENT_s2o:
	.long	3,1
	.long	_RTTI_PANGO_TPANGOALIGNMENT+47
	.long	0
	.long	_RTTI_PANGO_TPANGOALIGNMENT+30
	.long	2
	.long	_RTTI_PANGO_TPANGOALIGNMENT+66

.const_data
	.align 2
.globl	_RTTI_PANGO_TPANGOALIGNMENT_o2s
_RTTI_PANGO_TPANGOALIGNMENT_o2s:
	.long	0
	.long	_RTTI_PANGO_TPANGOALIGNMENT+30
	.long	_RTTI_PANGO_TPANGOALIGNMENT+47
	.long	_RTTI_PANGO_TPANGOALIGNMENT+66

.const_data
	.align 2
.globl	_INIT_PANGO_PPANGOWRAPMODE
_INIT_PANGO_PPANGOWRAPMODE:
	.byte	0
	.ascii	"\016PPangoWrapMode"

.const_data
	.align 2
.globl	_RTTI_PANGO_PPANGOWRAPMODE
_RTTI_PANGO_PPANGOWRAPMODE:
	.byte	0
	.ascii	"\016PPangoWrapMode"

.const_data
	.align 2
.globl	_INIT_PANGO_TPANGOWRAPMODE
_INIT_PANGO_TPANGOWRAPMODE:
	.byte	3,14
	.ascii	"TPangoWrapMode"
	.byte	5
	.long	0,2,0
	.byte	15
	.ascii	"PANGO_WRAP_WORD"
	.byte	15
	.ascii	"PANGO_WRAP_CHAR"
	.byte	20
	.ascii	"PANGO_WRAP_WORD_CHAR"
	.byte	5
	.ascii	"pango"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_PANGO_TPANGOWRAPMODE
_RTTI_PANGO_TPANGOWRAPMODE:
	.byte	3,14
	.ascii	"TPangoWrapMode"
	.byte	5
	.long	0,2,0
	.byte	15
	.ascii	"PANGO_WRAP_WORD"
	.byte	15
	.ascii	"PANGO_WRAP_CHAR"
	.byte	20
	.ascii	"PANGO_WRAP_WORD_CHAR"
	.byte	5
	.ascii	"pango"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_PANGO_TPANGOWRAPMODE_s2o
_RTTI_PANGO_TPANGOWRAPMODE_s2o:
	.long	3,1
	.long	_RTTI_PANGO_TPANGOWRAPMODE+45
	.long	0
	.long	_RTTI_PANGO_TPANGOWRAPMODE+29
	.long	2
	.long	_RTTI_PANGO_TPANGOWRAPMODE+61

.const_data
	.align 2
.globl	_RTTI_PANGO_TPANGOWRAPMODE_o2s
_RTTI_PANGO_TPANGOWRAPMODE_o2s:
	.long	0
	.long	_RTTI_PANGO_TPANGOWRAPMODE+29
	.long	_RTTI_PANGO_TPANGOWRAPMODE+45
	.long	_RTTI_PANGO_TPANGOWRAPMODE+61

.const_data
	.align 2
.globl	_INIT_PANGO_PPANGOELLIPSIZEMODE
_INIT_PANGO_PPANGOELLIPSIZEMODE:
	.byte	0
	.ascii	"\023PPangoEllipsizeMode"

.const_data
	.align 2
.globl	_RTTI_PANGO_PPANGOELLIPSIZEMODE
_RTTI_PANGO_PPANGOELLIPSIZEMODE:
	.byte	0
	.ascii	"\023PPangoEllipsizeMode"

.const_data
	.align 2
.globl	_INIT_PANGO_TPANGOELLIPSIZEMODE
_INIT_PANGO_TPANGOELLIPSIZEMODE:
	.byte	3,19
	.ascii	"TPangoEllipsizeMode"
	.byte	5
	.long	0,3,0
	.byte	20
	.ascii	"PANGO_ELLIPSIZE_NONE"
	.byte	21
	.ascii	"PANGO_ELLIPSIZE_START"
	.byte	22
	.ascii	"PANGO_ELLIPSIZE_MIDDLE"
	.byte	19
	.ascii	"PANGO_ELLIPSIZE_END"
	.byte	5
	.ascii	"pango"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_PANGO_TPANGOELLIPSIZEMODE
_RTTI_PANGO_TPANGOELLIPSIZEMODE:
	.byte	3,19
	.ascii	"TPangoEllipsizeMode"
	.byte	5
	.long	0,3,0
	.byte	20
	.ascii	"PANGO_ELLIPSIZE_NONE"
	.byte	21
	.ascii	"PANGO_ELLIPSIZE_START"
	.byte	22
	.ascii	"PANGO_ELLIPSIZE_MIDDLE"
	.byte	19
	.ascii	"PANGO_ELLIPSIZE_END"
	.byte	5
	.ascii	"pango"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_PANGO_TPANGOELLIPSIZEMODE_s2o
_RTTI_PANGO_TPANGOELLIPSIZEMODE_s2o:
	.long	4,3
	.long	_RTTI_PANGO_TPANGOELLIPSIZEMODE+100
	.long	2
	.long	_RTTI_PANGO_TPANGOELLIPSIZEMODE+77
	.long	0
	.long	_RTTI_PANGO_TPANGOELLIPSIZEMODE+34
	.long	1
	.long	_RTTI_PANGO_TPANGOELLIPSIZEMODE+55

.const_data
	.align 2
.globl	_RTTI_PANGO_TPANGOELLIPSIZEMODE_o2s
_RTTI_PANGO_TPANGOELLIPSIZEMODE_o2s:
	.long	0
	.long	_RTTI_PANGO_TPANGOELLIPSIZEMODE+34
	.long	_RTTI_PANGO_TPANGOELLIPSIZEMODE+55
	.long	_RTTI_PANGO_TPANGOELLIPSIZEMODE+77
	.long	_RTTI_PANGO_TPANGOELLIPSIZEMODE+100

.const_data
	.align 2
.globl	_INIT_PANGO_PPANGOLAYOUTLINE
_INIT_PANGO_PPANGOLAYOUTLINE:
	.byte	0
	.ascii	"\020PPangoLayoutLine"

.const_data
	.align 2
.globl	_RTTI_PANGO_PPANGOLAYOUTLINE
_RTTI_PANGO_PPANGOLAYOUTLINE:
	.byte	0
	.ascii	"\020PPangoLayoutLine"

.const_data
	.align 2
.globl	_INIT_PANGO_TPANGOLAYOUTLINE
_INIT_PANGO_TPANGOLAYOUTLINE:
	.byte	13,16
	.ascii	"TPangoLayoutLine"
	.long	16,0

.const_data
	.align 2
.globl	_RTTI_PANGO_TPANGOLAYOUTLINE
_RTTI_PANGO_TPANGOLAYOUTLINE:
	.byte	13,16
	.ascii	"TPangoLayoutLine"
	.long	16,4
	.long	_RTTI_PANGO_PPANGOLAYOUT
	.long	0
	.long	_RTTI_SYSTEM_LONGINT
	.long	4
	.long	_RTTI_SYSTEM_LONGINT
	.long	8
	.long	_RTTI_GLIB2_PGSLIST
	.long	12

.const_data
	.align 2
.globl	_INIT_PANGO_PPANGOLAYOUTRUN
_INIT_PANGO_PPANGOLAYOUTRUN:
	.byte	0
	.ascii	"\017PPangoLayoutRun"

.const_data
	.align 2
.globl	_RTTI_PANGO_PPANGOLAYOUTRUN
_RTTI_PANGO_PPANGOLAYOUTRUN:
	.byte	0
	.ascii	"\017PPangoLayoutRun"

.const_data
	.align 2
.globl	_INIT_PANGO_TPANGOLAYOUTRUN
_INIT_PANGO_TPANGOLAYOUTRUN:
	.byte	13,15
	.ascii	"TPangoLayoutRun"
	.long	8,0

.const_data
	.align 2
.globl	_RTTI_PANGO_TPANGOLAYOUTRUN
_RTTI_PANGO_TPANGOLAYOUTRUN:
	.byte	13,15
	.ascii	"TPangoLayoutRun"
	.long	8,2
	.long	_RTTI_PANGO_PPANGOITEM
	.long	0
	.long	_RTTI_PANGO_PPANGOGLYPHSTRING
	.long	4

.const_data
	.align 2
.globl	_INIT_PANGO_TPANGOMATRIX
_INIT_PANGO_TPANGOMATRIX:
	.byte	13,12
	.ascii	"TPangoMatrix"
	.long	48,0

.const_data
	.align 2
.globl	_RTTI_PANGO_TPANGOMATRIX
_RTTI_PANGO_TPANGOMATRIX:
	.byte	13,12
	.ascii	"TPangoMatrix"
	.long	48,6
	.long	_RTTI_SYSTEM_DOUBLE
	.long	0
	.long	_RTTI_SYSTEM_DOUBLE
	.long	8
	.long	_RTTI_SYSTEM_DOUBLE
	.long	16
	.long	_RTTI_SYSTEM_DOUBLE
	.long	24
	.long	_RTTI_SYSTEM_DOUBLE
	.long	32
	.long	_RTTI_SYSTEM_DOUBLE
	.long	40

.const_data
	.align 2
.globl	_INIT_PANGO_PPANGORENDERERPRIVATE
_INIT_PANGO_PPANGORENDERERPRIVATE:
	.byte	0
	.ascii	"\025PPangoRendererPrivate"

.const_data
	.align 2
.globl	_RTTI_PANGO_PPANGORENDERERPRIVATE
_RTTI_PANGO_PPANGORENDERERPRIVATE:
	.byte	0
	.ascii	"\025PPangoRendererPrivate"

.const_data
	.align 2
.globl	_INIT_PANGO_PPANGORENDERPART
_INIT_PANGO_PPANGORENDERPART:
	.byte	0
	.ascii	"\020PPangoRenderPart"

.const_data
	.align 2
.globl	_RTTI_PANGO_PPANGORENDERPART
_RTTI_PANGO_PPANGORENDERPART:
	.byte	0
	.ascii	"\020PPangoRenderPart"

.const_data
	.align 2
.globl	_INIT_PANGO_TPANGORENDERPART
_INIT_PANGO_TPANGORENDERPART:
	.byte	3,16
	.ascii	"TPangoRenderPart"
	.byte	5
	.long	0,3,0
	.byte	28
	.ascii	"PANGO_RENDER_PART_FOREGROUND"
	.byte	28
	.ascii	"PANGO_RENDER_PART_BACKGROUND"
	.byte	27
	.ascii	"PANGO_RENDER_PART_UNDERLINE"
	.byte	31
	.ascii	"PANGO_RENDER_PART_STRIKETHROUGH"
	.byte	5
	.ascii	"pango"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_PANGO_TPANGORENDERPART
_RTTI_PANGO_TPANGORENDERPART:
	.byte	3,16
	.ascii	"TPangoRenderPart"
	.byte	5
	.long	0,3,0
	.byte	28
	.ascii	"PANGO_RENDER_PART_FOREGROUND"
	.byte	28
	.ascii	"PANGO_RENDER_PART_BACKGROUND"
	.byte	27
	.ascii	"PANGO_RENDER_PART_UNDERLINE"
	.byte	31
	.ascii	"PANGO_RENDER_PART_STRIKETHROUGH"
	.byte	5
	.ascii	"pango"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_PANGO_TPANGORENDERPART_s2o
_RTTI_PANGO_TPANGORENDERPART_s2o:
	.long	4,1
	.long	_RTTI_PANGO_TPANGORENDERPART+60
	.long	0
	.long	_RTTI_PANGO_TPANGORENDERPART+31
	.long	3
	.long	_RTTI_PANGO_TPANGORENDERPART+117
	.long	2
	.long	_RTTI_PANGO_TPANGORENDERPART+89

.const_data
	.align 2
.globl	_RTTI_PANGO_TPANGORENDERPART_o2s
_RTTI_PANGO_TPANGORENDERPART_o2s:
	.long	0
	.long	_RTTI_PANGO_TPANGORENDERPART+31
	.long	_RTTI_PANGO_TPANGORENDERPART+60
	.long	_RTTI_PANGO_TPANGORENDERPART+89
	.long	_RTTI_PANGO_TPANGORENDERPART+117

.const_data
	.align 2
.globl	_INIT_PANGO_PPANGORENDERER
_INIT_PANGO_PPANGORENDERER:
	.byte	0
	.ascii	"\016PPangoRenderer"

.const_data
	.align 2
.globl	_RTTI_PANGO_PPANGORENDERER
_RTTI_PANGO_PPANGORENDERER:
	.byte	0
	.ascii	"\016PPangoRenderer"

.const_data
	.align 2
.globl	_INIT_PANGO_TPANGORENDERER
_INIT_PANGO_TPANGORENDERER:
	.byte	13,14
	.ascii	"TPangoRenderer"
	.long	32,0

.const_data
	.align 2
.globl	_RTTI_PANGO_TPANGORENDERER
_RTTI_PANGO_TPANGORENDERER:
	.byte	13,14
	.ascii	"TPangoRenderer"
	.long	32,6
	.long	_RTTI_GLIB2_TGOBJECT
	.long	0
	.long	_RTTI_SYSTEM_LONGINT
	.long	12
	.long	_RTTI_SYSTEM_BOOLEAN32
	.long	16
	.long	_RTTI_SYSTEM_LONGINT
	.long	20
	.long	_RTTI_PANGO_PPANGOMATRIX
	.long	24
	.long	_RTTI_PANGO_PPANGORENDERERPRIVATE
	.long	28

.const_data
	.align 2
.globl	_INIT_PANGO_PPANGORENDERERCLASS
_INIT_PANGO_PPANGORENDERERCLASS:
	.byte	0
	.ascii	"\023PPangoRendererClass"

.const_data
	.align 2
.globl	_RTTI_PANGO_PPANGORENDERERCLASS
_RTTI_PANGO_PPANGORENDERERCLASS:
	.byte	0
	.ascii	"\023PPangoRendererClass"

.const_data
	.align 2
.globl	_INIT_PANGO_TPANGORENDERERCLASS
_INIT_PANGO_TPANGORENDERERCLASS:
	.byte	13,19
	.ascii	"TPangoRendererClass"
	.long	124,0

.const_data
	.align 2
.globl	_RTTI_PANGO_DEF161
_RTTI_PANGO_DEF161:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_PANGO_DEF162
_RTTI_PANGO_DEF162:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_PANGO_DEF163
_RTTI_PANGO_DEF163:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_PANGO_DEF164
_RTTI_PANGO_DEF164:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_PANGO_DEF165
_RTTI_PANGO_DEF165:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_PANGO_DEF166
_RTTI_PANGO_DEF166:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_PANGO_DEF167
_RTTI_PANGO_DEF167:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_PANGO_DEF168
_RTTI_PANGO_DEF168:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_PANGO_DEF169
_RTTI_PANGO_DEF169:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_PANGO_DEF170
_RTTI_PANGO_DEF170:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_PANGO_DEF171
_RTTI_PANGO_DEF171:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_PANGO_DEF172
_RTTI_PANGO_DEF172:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_PANGO_DEF173
_RTTI_PANGO_DEF173:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_PANGO_DEF174
_RTTI_PANGO_DEF174:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_PANGO_TPANGORENDERERCLASS
_RTTI_PANGO_TPANGORENDERERCLASS:
	.byte	13,19
	.ascii	"TPangoRendererClass"
	.long	124,15
	.long	_RTTI_GLIB2_TGOBJECTCLASS
	.long	0
	.long	_RTTI_PANGO_DEF161
	.long	68
	.long	_RTTI_PANGO_DEF162
	.long	72
	.long	_RTTI_PANGO_DEF163
	.long	76
	.long	_RTTI_PANGO_DEF164
	.long	80
	.long	_RTTI_PANGO_DEF165
	.long	84
	.long	_RTTI_PANGO_DEF166
	.long	88
	.long	_RTTI_PANGO_DEF167
	.long	92
	.long	_RTTI_PANGO_DEF168
	.long	96
	.long	_RTTI_PANGO_DEF169
	.long	100
	.long	_RTTI_PANGO_DEF170
	.long	104
	.long	_RTTI_PANGO_DEF171
	.long	108
	.long	_RTTI_PANGO_DEF172
	.long	112
	.long	_RTTI_PANGO_DEF173
	.long	116
	.long	_RTTI_PANGO_DEF174
	.long	120

.const_data
	.align 2
.globl	_INIT_PANGO_TPANGORENDERERPRIVATE
_INIT_PANGO_TPANGORENDERERPRIVATE:
	.byte	13,21
	.ascii	"TPangoRendererPrivate"
	.long	44,0

.const_data
	.align 2
.globl	_RTTI_PANGO_DEF176
_RTTI_PANGO_DEF176:
	.byte	12
	.ascii	"\000"
	.long	6,4
	.long	_RTTI_PANGO_TPANGOCOLOR
	.long	-1

.const_data
	.align 2
.globl	_RTTI_PANGO_DEF177
_RTTI_PANGO_DEF177:
	.byte	12
	.ascii	"\000"
	.long	4,4
	.long	_RTTI_SYSTEM_BOOLEAN32
	.long	11

.const_data
	.align 2
.globl	_RTTI_PANGO_TPANGORENDERERPRIVATE
_RTTI_PANGO_TPANGORENDERERPRIVATE:
	.byte	13,21
	.ascii	"TPangoRendererPrivate"
	.long	44,3
	.long	_RTTI_PANGO_DEF176
	.long	0
	.long	_RTTI_PANGO_DEF177
	.long	24
	.long	_RTTI_PANGO_PPANGOLAYOUTLINE
	.long	40

.const_data
	.align 2
.globl	_INIT_PANGO_PPANGOTABALIGN
_INIT_PANGO_PPANGOTABALIGN:
	.byte	0
	.ascii	"\016PPangoTabAlign"

.const_data
	.align 2
.globl	_RTTI_PANGO_PPANGOTABALIGN
_RTTI_PANGO_PPANGOTABALIGN:
	.byte	0
	.ascii	"\016PPangoTabAlign"

.const_data
	.align 2
.globl	_INIT_PANGO_TPANGOTABALIGN
_INIT_PANGO_TPANGOTABALIGN:
	.byte	3,14
	.ascii	"TPangoTabAlign"
	.byte	5
	.long	0,0,0
	.byte	14
	.ascii	"PANGO_TAB_LEFT"
	.byte	5
	.ascii	"pango"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_PANGO_TPANGOTABALIGN
_RTTI_PANGO_TPANGOTABALIGN:
	.byte	3,14
	.ascii	"TPangoTabAlign"
	.byte	5
	.long	0,0,0
	.byte	14
	.ascii	"PANGO_TAB_LEFT"
	.byte	5
	.ascii	"pango"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_PANGO_TPANGOTABALIGN_s2o
_RTTI_PANGO_TPANGOTABALIGN_s2o:
	.long	1,0
	.long	_RTTI_PANGO_TPANGOTABALIGN+29

.const_data
	.align 2
.globl	_RTTI_PANGO_TPANGOTABALIGN_o2s
_RTTI_PANGO_TPANGOTABALIGN_o2s:
	.long	0
	.long	_RTTI_PANGO_TPANGOTABALIGN+29
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

