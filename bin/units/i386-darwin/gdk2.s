# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_GDK2_CHECKUNUSEDVARIABLE
_GDK2_CHECKUNUSEDVARIABLE:
	pushl	%ebp
	movl	%esp,%ebp
	call	Lj4
Lj4:
	popl	%edx
	movl	L_gdk_threads_mutex$non_lazy_ptr-Lj4(%edx),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj5
	jmp	Lj6
Lj5:
Lj6:
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_TYPE_RECTANGLE$$LONGWORD
_GDK2_GDK_TYPE_RECTANGLE$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	L_gdk_rectangle_get_type$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GDK2__GDK_THREADS_ENTER
_GDK2__GDK_THREADS_ENTER:
	pushl	%ebp
	movl	%esp,%ebp
	leave
	ret

.text
	.align 4
.globl	_GDK2__GDK_THREADS_LEAVE
_GDK2__GDK_THREADS_LEAVE:
	pushl	%ebp
	movl	%esp,%ebp
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_TYPE_COLORMAP$$LONGWORD
_GDK2_GDK_TYPE_COLORMAP$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	L_gdk_colormap_get_type$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_COLORMAP$POINTER$$PGDKCOLORMAP
_GDK2_GDK_COLORMAP$POINTER$$PGDKCOLORMAP:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_GDK2_GDK_TYPE_COLORMAP$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_INSTANCE_CAST$POINTER$LONGWORD$$PGTYPEINSTANCE$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_COLORMAP_CLASS$POINTER$$PGDKCOLORMAPCLASS
_GDK2_GDK_COLORMAP_CLASS$POINTER$$PGDKCOLORMAPCLASS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_GDK2_GDK_TYPE_COLORMAP$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_CLASS_CAST$POINTER$LONGWORD$$POINTER$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_IS_COLORMAP$POINTER$$BOOLEAN
_GDK2_GDK_IS_COLORMAP$POINTER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_GDK2_GDK_TYPE_COLORMAP$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_INSTANCE_TYPE$POINTER$LONGWORD$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_IS_COLORMAP_CLASS$POINTER$$BOOLEAN
_GDK2_GDK_IS_COLORMAP_CLASS$POINTER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_GDK2_GDK_TYPE_COLORMAP$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_CLASS_TYPE$POINTER$LONGWORD$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_COLORMAP_GET_CLASS$POINTER$$PGDKCOLORMAPCLASS
_GDK2_GDK_COLORMAP_GET_CLASS$POINTER$$PGDKCOLORMAPCLASS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_GDK2_GDK_TYPE_COLORMAP$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_INSTANCE_GET_CLASS$POINTER$LONGWORD$$PGTYPECLASS$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_TYPE_COLOR$$LONGWORD
_GDK2_GDK_TYPE_COLOR$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	L_gdk_color_get_type$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_CURSOR_DESTROY$PGDKCURSOR
_GDK2_GDK_CURSOR_DESTROY$PGDKCURSOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	L_gdk_cursor_unref$stub
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_TYPE_CURSOR$$LONGWORD
_GDK2_GDK_TYPE_CURSOR$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	L_gdk_cursor_get_type$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_CURSOR$POINTER$$PGDKCURSOR
_GDK2_GDK_CURSOR$POINTER$$PGDKCURSOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_GDK2_GDK_TYPE_CURSOR$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_INSTANCE_CAST$POINTER$LONGWORD$$PGTYPEINSTANCE$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_IS_CURSOR$POINTER$$BOOLEAN
_GDK2_GDK_IS_CURSOR$POINTER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_GDK2_GDK_TYPE_CURSOR$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_INSTANCE_TYPE$POINTER$LONGWORD$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_TYPE_DRAG_CONTEXT$$LONGWORD
_GDK2_GDK_TYPE_DRAG_CONTEXT$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	L_gdk_drag_context_get_type$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_DRAG_CONTEXT$POINTER$$PGDKDRAGCONTEXT
_GDK2_GDK_DRAG_CONTEXT$POINTER$$PGDKDRAGCONTEXT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_GDK2_GDK_TYPE_DRAG_CONTEXT$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_INSTANCE_CAST$POINTER$LONGWORD$$PGTYPEINSTANCE$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_DRAG_CONTEXT_CLASS$POINTER$$PGDKDRAGCONTEXTCLASS
_GDK2_GDK_DRAG_CONTEXT_CLASS$POINTER$$PGDKDRAGCONTEXTCLASS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_GDK2_GDK_TYPE_DRAG_CONTEXT$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_CLASS_CAST$POINTER$LONGWORD$$POINTER$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_IS_DRAG_CONTEXT$POINTER$$BOOLEAN
_GDK2_GDK_IS_DRAG_CONTEXT$POINTER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_GDK2_GDK_TYPE_DRAG_CONTEXT$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_INSTANCE_TYPE$POINTER$LONGWORD$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_IS_DRAG_CONTEXT_CLASS$POINTER$$BOOLEAN
_GDK2_GDK_IS_DRAG_CONTEXT_CLASS$POINTER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_GDK2_GDK_TYPE_DRAG_CONTEXT$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_CLASS_TYPE$POINTER$LONGWORD$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_DRAG_CONTEXT_GET_CLASS$POINTER$$PGDKDRAGCONTEXTCLASS
_GDK2_GDK_DRAG_CONTEXT_GET_CLASS$POINTER$$PGDKDRAGCONTEXTCLASS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_GDK2_GDK_TYPE_DRAG_CONTEXT$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_INSTANCE_GET_CLASS$POINTER$LONGWORD$$PGTYPECLASS$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDKREGION_EXTENTCHECK$PGDKREGIONBOX$PGDKREGIONBOX$$BOOLEAN
_GDK2_GDKREGION_EXTENTCHECK$PGDKREGIONBOX$PGDKREGIONBOX$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	8(%eax),%eax
	cmpl	(%edx),%eax
	jg	Lj137
	jmp	Lj134
Lj137:
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%eax),%eax
	cmpl	8(%edx),%eax
	jl	Lj136
	jmp	Lj134
Lj136:
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	12(%eax),%eax
	cmpl	4(%edx),%eax
	jg	Lj135
	jmp	Lj134
Lj135:
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	4(%eax),%eax
	cmpl	12(%edx),%eax
	jl	Lj133
	jmp	Lj134
Lj133:
	movb	$1,-9(%ebp)
	jmp	Lj138
Lj134:
	movb	$0,-9(%ebp)
Lj138:
	movb	-9(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDKREGION_EXTENTS$PGDKREGIONBOX$PGDKREGION
_GDK2_GDKREGION_EXTENTS$PGDKREGIONBOX$PGDKREGION:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%eax),%eax
	cmpl	12(%edx),%eax
	jl	Lj141
	jmp	Lj142
Lj141:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,12(%edx)
Lj142:
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	4(%eax),%eax
	cmpl	16(%edx),%eax
	jl	Lj145
	jmp	Lj146
Lj145:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,16(%edx)
Lj146:
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	8(%eax),%eax
	cmpl	20(%edx),%eax
	jg	Lj149
	jmp	Lj150
Lj149:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,20(%edx)
Lj150:
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDKREGION_MEMCHECK$PGDKREGION$PGDKREGIONBOX$PGDKREGIONBOX$$BOOLEAN
_GDK2_GDKREGION_MEMCHECK$PGDKREGION$PGDKREGIONBOX$PGDKREGIONBOX$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	decl	%eax
	movl	-4(%ebp),%edx
	cmpl	4(%edx),%eax
	jle	Lj155
	jmp	Lj156
Lj155:
	movl	-4(%ebp),%eax
	movl	(%eax),%ecx
	shll	$1,%ecx
	movl	-12(%ebp),%eax
	movl	(%eax),%edx
	movl	$16,%eax
	call	L_GLIB2_G_RENEW$LONGWORD$POINTER$LONGWORD$$POINTER$stub
	movl	-12(%ebp),%edx
	movl	%eax,(%edx)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	shll	$1,%eax
	movl	-4(%ebp),%edx
	movl	%eax,(%edx)
	movl	-12(%ebp),%eax
	movl	(%eax),%edx
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	shll	$4,%eax
	leal	(%edx,%eax),%eax
	movl	-8(%ebp),%edx
	movl	%eax,(%edx)
Lj156:
	movb	$1,-13(%ebp)
	movb	-13(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDKREGION_CHECK_PREVIOUS$crcCC84653D
_GDK2_GDKREGION_CHECK_PREVIOUS$crcCC84653D:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$0,%eax
	jg	Lj178
	jmp	Lj173
Lj178:
	movl	-8(%ebp),%eax
	subl	$16,%eax
	movl	4(%eax),%eax
	cmpl	16(%ebp),%eax
	je	Lj177
	jmp	Lj173
Lj177:
	movl	-8(%ebp),%eax
	subl	$16,%eax
	movl	12(%eax),%eax
	cmpl	8(%ebp),%eax
	je	Lj176
	jmp	Lj173
Lj176:
	movl	-8(%ebp),%eax
	subl	$16,%eax
	movl	(%eax),%eax
	cmpl	-12(%ebp),%eax
	jle	Lj175
	jmp	Lj173
Lj175:
	movl	-8(%ebp),%eax
	subl	$16,%eax
	movl	8(%eax),%eax
	cmpl	12(%ebp),%eax
	jge	Lj174
	jmp	Lj173
Lj173:
	movb	$1,-13(%ebp)
	jmp	Lj179
Lj174:
	movb	$0,-13(%ebp)
Lj179:
	movb	-13(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDKREGION_ADDRECT$PGDKREGION$PGDKREGIONBOX$LONGINT$LONGINT$LONGINT$LONGINT
_GDK2_GDKREGION_ADDRECT$PGDKREGION$PGDKREGIONBOX$LONGINT$LONGINT$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%eax
	cmpl	12(%ebp),%eax
	jl	Lj185
	jmp	Lj183
Lj185:
	movl	16(%ebp),%eax
	cmpl	8(%ebp),%eax
	jl	Lj184
	jmp	Lj183
Lj184:
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	16(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_GDK2_GDKREGION_CHECK_PREVIOUS$crcCC84653D$stub
	testb	%al,%al
	jne	Lj182
	jmp	Lj183
Lj182:
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	%edx,(%eax)
	movl	-8(%ebp),%eax
	movl	16(%ebp),%edx
	movl	%edx,4(%eax)
	movl	-8(%ebp),%eax
	movl	12(%ebp),%edx
	movl	%edx,8(%eax)
	movl	-8(%ebp),%eax
	movl	8(%ebp),%edx
	movl	%edx,12(%eax)
Lj183:
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDKREGION_ADDRECTNOX$PGDKREGION$PGDKREGIONBOX$LONGINT$LONGINT$LONGINT$LONGINT
_GDK2_GDKREGION_ADDRECTNOX$PGDKREGION$PGDKREGIONBOX$LONGINT$LONGINT$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%eax
	cmpl	12(%ebp),%eax
	jl	Lj211
	jmp	Lj209
Lj211:
	movl	16(%ebp),%eax
	cmpl	8(%ebp),%eax
	jl	Lj210
	jmp	Lj209
Lj210:
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	16(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_GDK2_GDKREGION_CHECK_PREVIOUS$crcCC84653D$stub
	testb	%al,%al
	jne	Lj208
	jmp	Lj209
Lj208:
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	%eax,(%edx)
	movl	-8(%ebp),%eax
	movl	16(%ebp),%edx
	movl	%edx,4(%eax)
	movl	-8(%ebp),%eax
	movl	12(%ebp),%edx
	movl	%edx,8(%eax)
	movl	-8(%ebp),%eax
	movl	8(%ebp),%edx
	movl	%edx,12(%eax)
	movl	-4(%ebp),%eax
	incl	4(%eax)
Lj209:
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDKREGION_EMPTY_REGION$PGDKREGION$$BOOLEAN
_GDK2_GDKREGION_EMPTY_REGION$PGDKREGION$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	testl	%eax,%eax
	seteb	-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDKREGION_REGION_NOT_EMPTY$PGDKREGION$$BOOLEAN
_GDK2_GDKREGION_REGION_NOT_EMPTY$PGDKREGION$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	testl	%eax,%eax
	setneb	-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDKREGION_INBOX$TGDKSEGMENT$LONGINT$LONGINT$$BOOLEAN
_GDK2_GDKREGION_INBOX$TGDKSEGMENT$LONGINT$LONGINT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%esi,-40(%ebp)
	movl	%edi,-36(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%esi
	leal	-32(%ebp),%edi
	cld
	movl	$4,%ecx
	rep
	movsl
	movl	-24(%ebp),%eax
	cmpl	-8(%ebp),%eax
	jg	Lj246
	jmp	Lj243
Lj246:
	movl	-32(%ebp),%eax
	cmpl	-8(%ebp),%eax
	jle	Lj245
	jmp	Lj243
Lj245:
	movl	-20(%ebp),%eax
	cmpl	-12(%ebp),%eax
	jg	Lj244
	jmp	Lj243
Lj244:
	movl	-28(%ebp),%eax
	cmpl	-12(%ebp),%eax
	jle	Lj242
	jmp	Lj243
Lj242:
	movb	$1,-13(%ebp)
	jmp	Lj247
Lj243:
	movb	$0,-13(%ebp)
Lj247:
	movb	-13(%ebp),%al
	movl	-40(%ebp),%esi
	movl	-36(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_TYPE_DRAWABLE$$LONGWORD
_GDK2_GDK_TYPE_DRAWABLE$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	L_gdk_drawable_get_type$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_DRAWABLE$POINTER$$PGDKDRAWABLE
_GDK2_GDK_DRAWABLE$POINTER$$PGDKDRAWABLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_GDK2_GDK_TYPE_DRAWABLE$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_INSTANCE_CAST$POINTER$LONGWORD$$PGTYPEINSTANCE$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_DRAWABLE_CLASS$POINTER$$PGDKDRAWABLECLASS
_GDK2_GDK_DRAWABLE_CLASS$POINTER$$PGDKDRAWABLECLASS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_GDK2_GDK_TYPE_DRAWABLE$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_CLASS_CAST$POINTER$LONGWORD$$POINTER$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_IS_DRAWABLE$POINTER$$BOOLEAN
_GDK2_GDK_IS_DRAWABLE$POINTER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_GDK2_GDK_TYPE_DRAWABLE$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_INSTANCE_TYPE$POINTER$LONGWORD$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_IS_DRAWABLE_CLASS$POINTER$$BOOLEAN
_GDK2_GDK_IS_DRAWABLE_CLASS$POINTER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_GDK2_GDK_TYPE_DRAWABLE$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_CLASS_TYPE$POINTER$LONGWORD$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_DRAWABLE_GET_CLASS$POINTER$$PGDKDRAWABLECLASS
_GDK2_GDK_DRAWABLE_GET_CLASS$POINTER$$PGDKDRAWABLECLASS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_GDK2_GDK_TYPE_DRAWABLE$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_INSTANCE_GET_CLASS$POINTER$LONGWORD$$PGTYPECLASS$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_DRAW_PIXMAP$crcB87764AF
_GDK2_GDK_DRAW_PIXMAP$crcB87764AF:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,32(%esp)
	movl	12(%ebp),%eax
	movl	%eax,28(%esp)
	movl	16(%ebp),%eax
	movl	%eax,24(%esp)
	movl	20(%ebp),%eax
	movl	%eax,20(%esp)
	movl	24(%ebp),%eax
	movl	%eax,16(%esp)
	movl	28(%ebp),%eax
	movl	%eax,12(%esp)
	movl	-12(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	L_gdk_draw_drawable$stub
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_DRAW_BITMAP$crcB87764AF
_GDK2_GDK_DRAW_BITMAP$crcB87764AF:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,32(%esp)
	movl	12(%ebp),%eax
	movl	%eax,28(%esp)
	movl	16(%ebp),%eax
	movl	%eax,24(%esp)
	movl	20(%ebp),%eax
	movl	%eax,20(%esp)
	movl	24(%ebp),%eax
	movl	%eax,16(%esp)
	movl	28(%ebp),%eax
	movl	%eax,12(%esp)
	movl	-12(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	L_gdk_draw_drawable$stub
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_TYPE_EVENT$$LONGWORD
_GDK2_GDK_TYPE_EVENT$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	L_gdk_event_get_type$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_TYPE_FONT$$LONGWORD
_GDK2_GDK_TYPE_FONT$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	L_gdk_font_get_type$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_TYPE_GC$$LONGWORD
_GDK2_GDK_TYPE_GC$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	L_gdk_gc_get_type$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_GC$POINTER$$PGDKGC
_GDK2_GDK_GC$POINTER$$PGDKGC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_GDK2_GDK_TYPE_GC$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_INSTANCE_CAST$POINTER$LONGWORD$$PGTYPEINSTANCE$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_GC_CLASS$POINTER$$PGDKGCCLASS
_GDK2_GDK_GC_CLASS$POINTER$$PGDKGCCLASS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_GDK2_GDK_TYPE_GC$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_CLASS_CAST$POINTER$LONGWORD$$POINTER$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_IS_GC$POINTER$$BOOLEAN
_GDK2_GDK_IS_GC$POINTER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_GDK2_GDK_TYPE_GC$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_INSTANCE_TYPE$POINTER$LONGWORD$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_IS_GC_CLASS$POINTER$$BOOLEAN
_GDK2_GDK_IS_GC_CLASS$POINTER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_GDK2_GDK_TYPE_GC$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_CLASS_TYPE$POINTER$LONGWORD$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_GC_GET_CLASS$POINTER$$PGDKGCCLASS
_GDK2_GDK_GC_GET_CLASS$POINTER$$PGDKGCCLASS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_GDK2_GDK_TYPE_GC$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_INSTANCE_GET_CLASS$POINTER$LONGWORD$$PGTYPECLASS$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_GC_DESTROY$PGDKGC
_GDK2_GDK_GC_DESTROY$PGDKGC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_OBJECT$POINTER$$PGOBJECT$stub
	movl	%eax,(%esp)
	call	L_g_object_unref$stub
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_TYPE_IMAGE$$LONGWORD
_GDK2_GDK_TYPE_IMAGE$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	L_gdk_image_get_type$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_IMAGE$POINTER$$PGDKIMAGE
_GDK2_GDK_IMAGE$POINTER$$PGDKIMAGE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_GDK2_GDK_TYPE_IMAGE$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_INSTANCE_CAST$POINTER$LONGWORD$$PGTYPEINSTANCE$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_IMAGE_CLASS$POINTER$$PGDKIMAGECLASS
_GDK2_GDK_IMAGE_CLASS$POINTER$$PGDKIMAGECLASS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_GDK2_GDK_TYPE_IMAGE$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_CLASS_CAST$POINTER$LONGWORD$$POINTER$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_IS_IMAGE$POINTER$$BOOLEAN
_GDK2_GDK_IS_IMAGE$POINTER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_GDK2_GDK_TYPE_IMAGE$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_INSTANCE_TYPE$POINTER$LONGWORD$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_IS_IMAGE_CLASS$POINTER$$BOOLEAN
_GDK2_GDK_IS_IMAGE_CLASS$POINTER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_GDK2_GDK_TYPE_IMAGE$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_CLASS_TYPE$POINTER$LONGWORD$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_IMAGE_GET_CLASS$POINTER$$PGDKIMAGECLASS
_GDK2_GDK_IMAGE_GET_CLASS$POINTER$$PGDKIMAGECLASS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_GDK2_GDK_TYPE_IMAGE$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_INSTANCE_GET_CLASS$POINTER$LONGWORD$$PGTYPECLASS$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_IMAGE_DESTROY$PGDKIMAGE
_GDK2_GDK_IMAGE_DESTROY$PGDKIMAGE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_OBJECT$POINTER$$PGOBJECT$stub
	movl	%eax,(%esp)
	call	L_g_object_unref$stub
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_TYPE_DEVICE$$LONGWORD
_GDK2_GDK_TYPE_DEVICE$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	L_gdk_device_get_type$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_DEVICE$POINTER$$PGDKDEVICE
_GDK2_GDK_DEVICE$POINTER$$PGDKDEVICE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_GDK2_GDK_TYPE_DEVICE$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_INSTANCE_CAST$POINTER$LONGWORD$$PGTYPEINSTANCE$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_DEVICE_CLASS$POINTER$$PGDKDEVICECLASS
_GDK2_GDK_DEVICE_CLASS$POINTER$$PGDKDEVICECLASS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_GDK2_GDK_TYPE_DEVICE$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_CLASS_CAST$POINTER$LONGWORD$$POINTER$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_IS_DEVICE$POINTER$$BOOLEAN
_GDK2_GDK_IS_DEVICE$POINTER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_GDK2_GDK_TYPE_DEVICE$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_INSTANCE_TYPE$POINTER$LONGWORD$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_IS_DEVICE_CLASS$POINTER$$BOOLEAN
_GDK2_GDK_IS_DEVICE_CLASS$POINTER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_GDK2_GDK_TYPE_DEVICE$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_CLASS_TYPE$POINTER$LONGWORD$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_DEVICE_GET_CLASS$POINTER$$PGDKDEVICECLASS
_GDK2_GDK_DEVICE_GET_CLASS$POINTER$$PGDKDEVICECLASS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_GDK2_GDK_TYPE_DEVICE$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_INSTANCE_GET_CLASS$POINTER$LONGWORD$$PGTYPECLASS$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_TYPE_KEYMAP$$LONGWORD
_GDK2_GDK_TYPE_KEYMAP$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	L_gdk_keymap_get_type$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_KEYMAP$POINTER$$PGDKKEYMAP
_GDK2_GDK_KEYMAP$POINTER$$PGDKKEYMAP:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_GDK2_GDK_TYPE_KEYMAP$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_INSTANCE_CAST$POINTER$LONGWORD$$PGTYPEINSTANCE$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_KEYMAP_CLASS$POINTER$$PGDKKEYMAPCLASS
_GDK2_GDK_KEYMAP_CLASS$POINTER$$PGDKKEYMAPCLASS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_GDK2_GDK_TYPE_KEYMAP$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_CLASS_CAST$POINTER$LONGWORD$$POINTER$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_IS_KEYMAP$POINTER$$BOOLEAN
_GDK2_GDK_IS_KEYMAP$POINTER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_GDK2_GDK_TYPE_KEYMAP$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_INSTANCE_TYPE$POINTER$LONGWORD$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_IS_KEYMAP_CLASS$POINTER$$BOOLEAN
_GDK2_GDK_IS_KEYMAP_CLASS$POINTER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_GDK2_GDK_TYPE_KEYMAP$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_CLASS_TYPE$POINTER$LONGWORD$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_KEYMAP_GET_CLASS$POINTER$$PGDKKEYMAPCLASS
_GDK2_GDK_KEYMAP_GET_CLASS$POINTER$$PGDKKEYMAPCLASS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_GDK2_GDK_TYPE_KEYMAP$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_INSTANCE_GET_CLASS$POINTER$LONGWORD$$PGTYPECLASS$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_TYPE_PANGO_RENDERER$$LONGWORD
_GDK2_GDK_TYPE_PANGO_RENDERER$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	L_gdk_pango_renderer_get_type$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_PANGO_RENDERER$POINTER$$PGDKPANGORENDERER
_GDK2_GDK_PANGO_RENDERER$POINTER$$PGDKPANGORENDERER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_GDK2_GDK_TYPE_PANGO_RENDERER$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_INSTANCE_CAST$POINTER$LONGWORD$$PGTYPEINSTANCE$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_IS_PANGO_RENDERER$POINTER$$BOOLEAN
_GDK2_GDK_IS_PANGO_RENDERER$POINTER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_GDK2_GDK_TYPE_PANGO_RENDERER$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_INSTANCE_TYPE$POINTER$LONGWORD$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_PANGO_RENDERER_CLASS$POINTER$$PGDKPANGORENDERERCLASS
_GDK2_GDK_PANGO_RENDERER_CLASS$POINTER$$PGDKPANGORENDERERCLASS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_GDK2_GDK_TYPE_PANGO_RENDERER$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_CLASS_CAST$POINTER$LONGWORD$$POINTER$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_IS_PANGO_RENDERER_CLASS$POINTER$$BOOLEAN
_GDK2_GDK_IS_PANGO_RENDERER_CLASS$POINTER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_GDK2_GDK_TYPE_PANGO_RENDERER$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_CLASS_TYPE$POINTER$LONGWORD$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_PANGO_RENDERER_GET_CLASS$POINTER$$PGDKPANGORENDERERCLASS
_GDK2_GDK_PANGO_RENDERER_GET_CLASS$POINTER$$PGDKPANGORENDERERCLASS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_GDK2_GDK_TYPE_PANGO_RENDERER$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_INSTANCE_GET_CLASS$POINTER$LONGWORD$$PGTYPECLASS$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_TYPE_PIXMAP$$LONGWORD
_GDK2_GDK_TYPE_PIXMAP$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	L_gdk_pixmap_get_type$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_PIXMAP$POINTER$$PGDKPIXMAP
_GDK2_GDK_PIXMAP$POINTER$$PGDKPIXMAP:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_GDK2_GDK_TYPE_PIXMAP$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_INSTANCE_CAST$POINTER$LONGWORD$$PGTYPEINSTANCE$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_PIXMAP_CLASS$POINTER$$PGDKPIXMAPOBJECTCLASS
_GDK2_GDK_PIXMAP_CLASS$POINTER$$PGDKPIXMAPOBJECTCLASS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_GDK2_GDK_TYPE_PIXMAP$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_CLASS_CAST$POINTER$LONGWORD$$POINTER$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_IS_PIXMAP$POINTER$$BOOLEAN
_GDK2_GDK_IS_PIXMAP$POINTER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_GDK2_GDK_TYPE_PIXMAP$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_INSTANCE_TYPE$POINTER$LONGWORD$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_IS_PIXMAP_CLASS$POINTER$$BOOLEAN
_GDK2_GDK_IS_PIXMAP_CLASS$POINTER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_GDK2_GDK_TYPE_PIXMAP$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_CLASS_TYPE$POINTER$LONGWORD$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_PIXMAP_GET_CLASS$POINTER$$PGDKPIXMAPOBJECTCLASS
_GDK2_GDK_PIXMAP_GET_CLASS$POINTER$$PGDKPIXMAPOBJECTCLASS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_GDK2_GDK_TYPE_PIXMAP$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_INSTANCE_GET_CLASS$POINTER$LONGWORD$$PGTYPECLASS$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_PIXMAP_OBJECT$POINTER$$PGDKPIXMAPOBJECT
_GDK2_GDK_PIXMAP_OBJECT$POINTER$$PGDKPIXMAPOBJECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_GDK2_GDK_PIXMAP$POINTER$$PGDKPIXMAP$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_BITMAP_REF$PGDKDRAWABLE$$PGDKDRAWABLE
_GDK2_GDK_BITMAP_REF$PGDKDRAWABLE$$PGDKDRAWABLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_OBJECT$POINTER$$PGOBJECT$stub
	movl	%eax,(%esp)
	call	L_g_object_ref$stub
	call	L_GDK2_GDK_DRAWABLE$POINTER$$PGDKDRAWABLE$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_BITMAP_UNREF$PGDKDRAWABLE
_GDK2_GDK_BITMAP_UNREF$PGDKDRAWABLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_OBJECT$POINTER$$PGOBJECT$stub
	movl	%eax,(%esp)
	call	L_g_object_unref$stub
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_PIXMAP_REF$PGDKDRAWABLE$$PGDKDRAWABLE
_GDK2_GDK_PIXMAP_REF$PGDKDRAWABLE$$PGDKDRAWABLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_OBJECT$POINTER$$PGOBJECT$stub
	movl	%eax,(%esp)
	call	L_g_object_ref$stub
	call	L_GDK2_GDK_DRAWABLE$POINTER$$PGDKDRAWABLE$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_PIXMAP_UNREF$PGDKDRAWABLE
_GDK2_GDK_PIXMAP_UNREF$PGDKDRAWABLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_OBJECT$POINTER$$PGOBJECT$stub
	movl	%eax,(%esp)
	call	L_g_object_unref$stub
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_RGB_GET_CMAP$$PGDKCOLORMAP
_GDK2_GDK_RGB_GET_CMAP$$PGDKCOLORMAP:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	L_gdk_rgb_get_colormap$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_TYPE_DISPLAY_MANAGER$$LONGWORD
_GDK2_GDK_TYPE_DISPLAY_MANAGER$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	$0,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_DISPLAY_MANAGER$POINTER$$PGDKDISPLAYMANAGER
_GDK2_GDK_DISPLAY_MANAGER$POINTER$$PGDKDISPLAYMANAGER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_GDK2_GDK_TYPE_DISPLAY_MANAGER$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_INSTANCE_CAST$POINTER$LONGWORD$$PGTYPEINSTANCE$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_DISPLAY_MANAGER_CLASS$POINTER$$PGDKDISPLAYMANAGERCLASS
_GDK2_GDK_DISPLAY_MANAGER_CLASS$POINTER$$PGDKDISPLAYMANAGERCLASS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_GDK2_GDK_TYPE_DISPLAY_MANAGER$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_CLASS_CAST$POINTER$LONGWORD$$POINTER$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_IS_DISPLAY_MANAGER$POINTER$$BOOLEAN
_GDK2_GDK_IS_DISPLAY_MANAGER$POINTER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_GDK2_GDK_TYPE_DISPLAY_MANAGER$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_INSTANCE_TYPE$POINTER$LONGWORD$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_IS_DISPLAY_MANAGER_CLASS$POINTER$$BOOLEAN
_GDK2_GDK_IS_DISPLAY_MANAGER_CLASS$POINTER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_GDK2_GDK_TYPE_DISPLAY_MANAGER$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_CLASS_TYPE$POINTER$LONGWORD$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_DISPLAY_MANAGER_GET_CLASS$POINTER$$PGDKDISPLAYMANAGERCLASS
_GDK2_GDK_DISPLAY_MANAGER_GET_CLASS$POINTER$$PGDKDISPLAYMANAGERCLASS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_GDK2_GDK_TYPE_DISPLAY_MANAGER$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_INSTANCE_GET_CLASS$POINTER$LONGWORD$$PGTYPECLASS$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_TYPE_DISPLAY$$LONGWORD
_GDK2_GDK_TYPE_DISPLAY$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	$0,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_DISPLAY_OBJECT$POINTER$$PGDKDISPLAY
_GDK2_GDK_DISPLAY_OBJECT$POINTER$$PGDKDISPLAY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_GDK2_GDK_TYPE_DISPLAY$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_INSTANCE_CAST$POINTER$LONGWORD$$PGTYPEINSTANCE$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_DISPLAY_CLASS$POINTER$$PGDKDISPLAYCLASS
_GDK2_GDK_DISPLAY_CLASS$POINTER$$PGDKDISPLAYCLASS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_GDK2_GDK_TYPE_DISPLAY$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_CLASS_CAST$POINTER$LONGWORD$$POINTER$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_IS_DISPLAY$POINTER$$BOOLEAN
_GDK2_GDK_IS_DISPLAY$POINTER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_GDK2_GDK_TYPE_DISPLAY$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_INSTANCE_TYPE$POINTER$LONGWORD$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_IS_DISPLAY_CLASS$POINTER$$BOOLEAN
_GDK2_GDK_IS_DISPLAY_CLASS$POINTER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_GDK2_GDK_TYPE_DISPLAY$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_CLASS_TYPE$POINTER$LONGWORD$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_DISPLAY_GET_CLASS$POINTER$$PGDKDISPLAYCLASS
_GDK2_GDK_DISPLAY_GET_CLASS$POINTER$$PGDKDISPLAYCLASS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_GDK2_GDK_TYPE_DISPLAY$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_INSTANCE_GET_CLASS$POINTER$LONGWORD$$PGTYPECLASS$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_TYPE_SCREEN$$LONGWORD
_GDK2_GDK_TYPE_SCREEN$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	$0,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_SCREEN$POINTER$$PGDKSCREEN
_GDK2_GDK_SCREEN$POINTER$$PGDKSCREEN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_GDK2_GDK_TYPE_SCREEN$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_INSTANCE_CAST$POINTER$LONGWORD$$PGTYPEINSTANCE$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_SCREEN_CLASS$POINTER$$PGDKSCREENCLASS
_GDK2_GDK_SCREEN_CLASS$POINTER$$PGDKSCREENCLASS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_GDK2_GDK_TYPE_SCREEN$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_CLASS_CAST$POINTER$LONGWORD$$POINTER$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_IS_SCREEN$POINTER$$BOOLEAN
_GDK2_GDK_IS_SCREEN$POINTER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_GDK2_GDK_TYPE_SCREEN$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_INSTANCE_TYPE$POINTER$LONGWORD$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_IS_SCREEN_CLASS$POINTER$$BOOLEAN
_GDK2_GDK_IS_SCREEN_CLASS$POINTER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_GDK2_GDK_TYPE_SCREEN$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_CLASS_TYPE$POINTER$LONGWORD$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_SCREEN_GET_CLASS$POINTER$$PGDKSCREENCLASS
_GDK2_GDK_SCREEN_GET_CLASS$POINTER$$PGDKSCREENCLASS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_GDK2_GDK_TYPE_SCREEN$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_INSTANCE_GET_CLASS$POINTER$LONGWORD$$PGTYPECLASS$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_SELECTION_PRIMARY$$LONGWORD
_GDK2_GDK_SELECTION_PRIMARY$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	$1,%eax
	call	L_GDK2__GDK_MAKE_ATOM$LONGWORD$$LONGWORD$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_SELECTION_SECONDARY$$LONGWORD
_GDK2_GDK_SELECTION_SECONDARY$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	$2,%eax
	call	L_GDK2__GDK_MAKE_ATOM$LONGWORD$$LONGWORD$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_SELECTION_CLIPBOARD$$LONGWORD
_GDK2_GDK_SELECTION_CLIPBOARD$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	$69,%eax
	call	L_GDK2__GDK_MAKE_ATOM$LONGWORD$$LONGWORD$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_TARGET_BITMAP$$LONGWORD
_GDK2_GDK_TARGET_BITMAP$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	$5,%eax
	call	L_GDK2__GDK_MAKE_ATOM$LONGWORD$$LONGWORD$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_TARGET_COLORMAP$$LONGWORD
_GDK2_GDK_TARGET_COLORMAP$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	$7,%eax
	call	L_GDK2__GDK_MAKE_ATOM$LONGWORD$$LONGWORD$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_TARGET_DRAWABLE$$LONGWORD
_GDK2_GDK_TARGET_DRAWABLE$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	$17,%eax
	call	L_GDK2__GDK_MAKE_ATOM$LONGWORD$$LONGWORD$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_TARGET_PIXMAP$$LONGWORD
_GDK2_GDK_TARGET_PIXMAP$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	$20,%eax
	call	L_GDK2__GDK_MAKE_ATOM$LONGWORD$$LONGWORD$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_TARGET_STRING$$LONGWORD
_GDK2_GDK_TARGET_STRING$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	$31,%eax
	call	L_GDK2__GDK_MAKE_ATOM$LONGWORD$$LONGWORD$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_SELECTION_TYPE_ATOM$$LONGWORD
_GDK2_GDK_SELECTION_TYPE_ATOM$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	$4,%eax
	call	L_GDK2__GDK_MAKE_ATOM$LONGWORD$$LONGWORD$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_SELECTION_TYPE_BITMAP$$LONGWORD
_GDK2_GDK_SELECTION_TYPE_BITMAP$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	$5,%eax
	call	L_GDK2__GDK_MAKE_ATOM$LONGWORD$$LONGWORD$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_SELECTION_TYPE_COLORMAP$$LONGWORD
_GDK2_GDK_SELECTION_TYPE_COLORMAP$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	$7,%eax
	call	L_GDK2__GDK_MAKE_ATOM$LONGWORD$$LONGWORD$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_SELECTION_TYPE_DRAWABLE$$LONGWORD
_GDK2_GDK_SELECTION_TYPE_DRAWABLE$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	$17,%eax
	call	L_GDK2__GDK_MAKE_ATOM$LONGWORD$$LONGWORD$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_SELECTION_TYPE_INTEGER$$LONGWORD
_GDK2_GDK_SELECTION_TYPE_INTEGER$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	$19,%eax
	call	L_GDK2__GDK_MAKE_ATOM$LONGWORD$$LONGWORD$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_SELECTION_TYPE_PIXMAP$$LONGWORD
_GDK2_GDK_SELECTION_TYPE_PIXMAP$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	$20,%eax
	call	L_GDK2__GDK_MAKE_ATOM$LONGWORD$$LONGWORD$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_SELECTION_TYPE_WINDOW$$LONGWORD
_GDK2_GDK_SELECTION_TYPE_WINDOW$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	$33,%eax
	call	L_GDK2__GDK_MAKE_ATOM$LONGWORD$$LONGWORD$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_SELECTION_TYPE_STRING$$LONGWORD
_GDK2_GDK_SELECTION_TYPE_STRING$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	$31,%eax
	call	L_GDK2__GDK_MAKE_ATOM$LONGWORD$$LONGWORD$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_ATOM_TO_POINTER$LONGWORD$$POINTER
_GDK2_GDK_ATOM_TO_POINTER$LONGWORD$$POINTER:
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
.globl	_GDK2_GDK_POINTER_TO_ATOM$POINTER$$LONGWORD
_GDK2_GDK_POINTER_TO_ATOM$POINTER$$LONGWORD:
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
.globl	_GDK2__GDK_MAKE_ATOM$LONGWORD$$LONGWORD
_GDK2__GDK_MAKE_ATOM$LONGWORD$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_GLIB2_GUINT_TO_POINTER$LONGWORD$$POINTER$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_NONE$$LONGWORD
_GDK2_GDK_NONE$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	$0,%eax
	call	L_GDK2__GDK_MAKE_ATOM$LONGWORD$$LONGWORD$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_TYPE_VISUAL$$LONGWORD
_GDK2_GDK_TYPE_VISUAL$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	L_gdk_visual_get_type$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_VISUAL$POINTER$$PGDKVISUAL
_GDK2_GDK_VISUAL$POINTER$$PGDKVISUAL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_GDK2_GDK_TYPE_VISUAL$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_INSTANCE_CAST$POINTER$LONGWORD$$PGTYPEINSTANCE$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_VISUAL_CLASS$POINTER$$PGDKVISUALCLASS
_GDK2_GDK_VISUAL_CLASS$POINTER$$PGDKVISUALCLASS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_GDK2_GDK_TYPE_VISUAL$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_CLASS_CAST$POINTER$LONGWORD$$POINTER$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_IS_VISUAL$POINTER$$BOOLEAN
_GDK2_GDK_IS_VISUAL$POINTER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_GDK2_GDK_TYPE_VISUAL$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_INSTANCE_TYPE$POINTER$LONGWORD$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_IS_VISUAL_CLASS$POINTER$$BOOLEAN
_GDK2_GDK_IS_VISUAL_CLASS$POINTER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_GDK2_GDK_TYPE_VISUAL$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_CLASS_TYPE$POINTER$LONGWORD$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_VISUAL_GET_CLASS$POINTER$$PGDKVISUALCLASS
_GDK2_GDK_VISUAL_GET_CLASS$POINTER$$PGDKVISUALCLASS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_GDK2_GDK_TYPE_VISUAL$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_INSTANCE_GET_CLASS$POINTER$LONGWORD$$PGTYPECLASS$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_VISUAL_REF$PGDKVISUAL
_GDK2_GDK_VISUAL_REF$PGDKVISUAL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	L_g_object_ref$stub
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_VISUAL_UNREF$PGDKVISUAL
_GDK2_GDK_VISUAL_UNREF$PGDKVISUAL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	L_g_object_unref$stub
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_TYPE_WINDOW$$LONGWORD
_GDK2_GDK_TYPE_WINDOW$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	L_gdk_window_object_get_type$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_WINDOW$POINTER$$PGDKWINDOW
_GDK2_GDK_WINDOW$POINTER$$PGDKWINDOW:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_GDK2_GDK_TYPE_WINDOW$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_INSTANCE_CAST$POINTER$LONGWORD$$PGTYPEINSTANCE$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_WINDOW_CLASS$POINTER$$PGDKWINDOWOBJECTCLASS
_GDK2_GDK_WINDOW_CLASS$POINTER$$PGDKWINDOWOBJECTCLASS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_GDK2_GDK_TYPE_WINDOW$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_CLASS_CAST$POINTER$LONGWORD$$POINTER$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_IS_WINDOW$POINTER$$BOOLEAN
_GDK2_GDK_IS_WINDOW$POINTER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_GDK2_GDK_TYPE_WINDOW$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_INSTANCE_TYPE$POINTER$LONGWORD$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_IS_WINDOW_CLASS$POINTER$$BOOLEAN
_GDK2_GDK_IS_WINDOW_CLASS$POINTER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_GDK2_GDK_TYPE_WINDOW$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_CLASS_TYPE$POINTER$LONGWORD$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_WINDOW_GET_CLASS$POINTER$$PGDKWINDOWOBJECTCLASS
_GDK2_GDK_WINDOW_GET_CLASS$POINTER$$PGDKWINDOWOBJECTCLASS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_GDK2_GDK_TYPE_WINDOW$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_INSTANCE_GET_CLASS$POINTER$LONGWORD$$PGTYPECLASS$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_WINDOW_OBJECT$POINTER$$PGDKWINDOWOBJECT
_GDK2_GDK_WINDOW_OBJECT$POINTER$$PGDKWINDOWOBJECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_GDK2_GDK_WINDOW$POINTER$$PGDKWINDOW$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDKWINDOWOBJECT_GUFFAW_GRAVITY$TGDKWINDOWOBJECT$$LONGWORD
_GDK2_GDKWINDOWOBJECT_GUFFAW_GRAVITY$TGDKWINDOWOBJECT$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movw	80(%eax),%ax
	andw	$1,%ax
	movzwl	%ax,%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDKWINDOWOBJECT_SET_GUFFAW_GRAVITY$TGDKWINDOWOBJECT$LONGWORD
_GDK2_GDKWINDOWOBJECT_SET_GUFFAW_GRAVITY$TGDKWINDOWOBJECT$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	andl	$1,%eax
	movl	-4(%ebp),%edx
	movzwl	80(%edx),%edx
	orl	%edx,%eax
	movl	-4(%ebp),%edx
	movw	%ax,80(%edx)
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDKWINDOWOBJECT_INPUT_ONLY$TGDKWINDOWOBJECT$$LONGWORD
_GDK2_GDKWINDOWOBJECT_INPUT_ONLY$TGDKWINDOWOBJECT$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movw	80(%eax),%ax
	andw	$2,%ax
	movzwl	%ax,%eax
	shrl	$1,%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDKWINDOWOBJECT_SET_INPUT_ONLY$TGDKWINDOWOBJECT$LONGWORD
_GDK2_GDKWINDOWOBJECT_SET_INPUT_ONLY$TGDKWINDOWOBJECT$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	shll	$1,%eax
	andl	$2,%eax
	movl	-4(%ebp),%edx
	movzwl	80(%edx),%edx
	orl	%edx,%eax
	movl	-4(%ebp),%edx
	movw	%ax,80(%edx)
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDKWINDOWOBJECT_MODAL_HINT$TGDKWINDOWOBJECT$$LONGWORD
_GDK2_GDKWINDOWOBJECT_MODAL_HINT$TGDKWINDOWOBJECT$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movw	80(%eax),%ax
	andw	$4,%ax
	movzwl	%ax,%eax
	shrl	$2,%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDKWINDOWOBJECT_SET_MODAL_HINT$TGDKWINDOWOBJECT$LONGWORD
_GDK2_GDKWINDOWOBJECT_SET_MODAL_HINT$TGDKWINDOWOBJECT$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	shll	$2,%eax
	andl	$4,%eax
	movl	-4(%ebp),%edx
	movzwl	80(%edx),%edx
	orl	%edx,%eax
	movl	-4(%ebp),%edx
	movw	%ax,80(%edx)
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDKWINDOWOBJECT_DESTROYED$TGDKWINDOWOBJECT$$LONGWORD
_GDK2_GDKWINDOWOBJECT_DESTROYED$TGDKWINDOWOBJECT$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movw	80(%eax),%ax
	andw	$24,%ax
	movzwl	%ax,%eax
	shrl	$3,%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDKWINDOWOBJECT_SET_DESTROYED$TGDKWINDOWOBJECT$LONGWORD
_GDK2_GDKWINDOWOBJECT_SET_DESTROYED$TGDKWINDOWOBJECT$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	shll	$3,%eax
	andl	$24,%eax
	movl	-4(%ebp),%edx
	movzwl	80(%edx),%edx
	orl	%edx,%eax
	movl	-4(%ebp),%edx
	movw	%ax,80(%edx)
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_ROOT_PARENT$$PGDKWINDOW
_GDK2_GDK_ROOT_PARENT$$PGDKWINDOW:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	L_gdk_get_default_root_window$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_WINDOW_GET_SIZE$PGDKDRAWABLE$PGINT$PGINT
_GDK2_GDK_WINDOW_GET_SIZE$PGDKDRAWABLE$PGINT$PGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	L_gdk_drawable_get_size$stub
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_WINDOW_GET_TYPE$PGDKWINDOW$$TGDKWINDOWTYPE
_GDK2_GDK_WINDOW_GET_TYPE$PGDKWINDOW$$TGDKWINDOWTYPE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	L_gdk_window_get_window_type$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_WINDOW_GET_COLORMAP$PGDKDRAWABLE$$PGDKCOLORMAP
_GDK2_GDK_WINDOW_GET_COLORMAP$PGDKDRAWABLE$$PGDKCOLORMAP:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	L_gdk_drawable_get_colormap$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_WINDOW_SET_COLORMAP$PGDKDRAWABLE$PGDKCOLORMAP
_GDK2_GDK_WINDOW_SET_COLORMAP$PGDKDRAWABLE$PGDKCOLORMAP:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	L_gdk_drawable_set_colormap$stub
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_WINDOW_GET_VISUAL$PGDKDRAWABLE$$PGDKVISUAL
_GDK2_GDK_WINDOW_GET_VISUAL$PGDKDRAWABLE$$PGDKVISUAL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	L_gdk_drawable_get_visual$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_WINDOW_REF$PGDKDRAWABLE$$PGDKDRAWABLE
_GDK2_GDK_WINDOW_REF$PGDKDRAWABLE$$PGDKDRAWABLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_OBJECT$POINTER$$PGOBJECT$stub
	movl	%eax,(%esp)
	call	L_g_object_ref$stub
	call	L_GDK2_GDK_DRAWABLE$POINTER$$PGDKDRAWABLE$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_WINDOW_UNREF$PGDKDRAWABLE
_GDK2_GDK_WINDOW_UNREF$PGDKDRAWABLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_OBJECT$POINTER$$PGOBJECT$stub
	movl	%eax,(%esp)
	call	L_g_object_unref$stub
	leave
	ret

.text
	.align 4
.globl	_GDK2_GDK_WINDOW_COPY_AREA$crcDE8FE071
_GDK2_GDK_WINDOW_COPY_AREA$crcDE8FE071:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	28(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-12(%ebp),%eax
	movl	%eax,12(%esp)
	movl	16(%ebp),%eax
	movl	%eax,16(%esp)
	movl	20(%ebp),%eax
	movl	%eax,20(%esp)
	movl	24(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_GDK2_GDK_DRAW_PIXMAP$crcB87764AF$stub
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.align 2
.globl	_THREADVARLIST_GDK2
_THREADVARLIST_GDK2:
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

L_gdk_rectangle_get_type$stub:
.indirect_symbol _gdk_rectangle_get_type
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_gdk_colormap_get_type$stub:
.indirect_symbol _gdk_colormap_get_type
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_GDK2_GDK_TYPE_COLORMAP$$LONGWORD$stub:
.indirect_symbol _GDK2_GDK_TYPE_COLORMAP$$LONGWORD
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

L_gdk_color_get_type$stub:
.indirect_symbol _gdk_color_get_type
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_gdk_cursor_unref$stub:
.indirect_symbol _gdk_cursor_unref
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_gdk_cursor_get_type$stub:
.indirect_symbol _gdk_cursor_get_type
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_GDK2_GDK_TYPE_CURSOR$$LONGWORD$stub:
.indirect_symbol _GDK2_GDK_TYPE_CURSOR$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_gdk_drag_context_get_type$stub:
.indirect_symbol _gdk_drag_context_get_type
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_GDK2_GDK_TYPE_DRAG_CONTEXT$$LONGWORD$stub:
.indirect_symbol _GDK2_GDK_TYPE_DRAG_CONTEXT$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_GLIB2_G_RENEW$LONGWORD$POINTER$LONGWORD$$POINTER$stub:
.indirect_symbol _GLIB2_G_RENEW$LONGWORD$POINTER$LONGWORD$$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_GDK2_GDKREGION_CHECK_PREVIOUS$crcCC84653D$stub:
.indirect_symbol _GDK2_GDKREGION_CHECK_PREVIOUS$crcCC84653D
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_gdk_drawable_get_type$stub:
.indirect_symbol _gdk_drawable_get_type
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_GDK2_GDK_TYPE_DRAWABLE$$LONGWORD$stub:
.indirect_symbol _GDK2_GDK_TYPE_DRAWABLE$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_gdk_draw_drawable$stub:
.indirect_symbol _gdk_draw_drawable
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_gdk_event_get_type$stub:
.indirect_symbol _gdk_event_get_type
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_gdk_font_get_type$stub:
.indirect_symbol _gdk_font_get_type
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_gdk_gc_get_type$stub:
.indirect_symbol _gdk_gc_get_type
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_GDK2_GDK_TYPE_GC$$LONGWORD$stub:
.indirect_symbol _GDK2_GDK_TYPE_GC$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_GLIB2_G_OBJECT$POINTER$$PGOBJECT$stub:
.indirect_symbol _GLIB2_G_OBJECT$POINTER$$PGOBJECT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_g_object_unref$stub:
.indirect_symbol _g_object_unref
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_gdk_image_get_type$stub:
.indirect_symbol _gdk_image_get_type
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_GDK2_GDK_TYPE_IMAGE$$LONGWORD$stub:
.indirect_symbol _GDK2_GDK_TYPE_IMAGE$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_gdk_device_get_type$stub:
.indirect_symbol _gdk_device_get_type
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_GDK2_GDK_TYPE_DEVICE$$LONGWORD$stub:
.indirect_symbol _GDK2_GDK_TYPE_DEVICE$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_gdk_keymap_get_type$stub:
.indirect_symbol _gdk_keymap_get_type
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_GDK2_GDK_TYPE_KEYMAP$$LONGWORD$stub:
.indirect_symbol _GDK2_GDK_TYPE_KEYMAP$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_gdk_pango_renderer_get_type$stub:
.indirect_symbol _gdk_pango_renderer_get_type
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_GDK2_GDK_TYPE_PANGO_RENDERER$$LONGWORD$stub:
.indirect_symbol _GDK2_GDK_TYPE_PANGO_RENDERER$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_gdk_pixmap_get_type$stub:
.indirect_symbol _gdk_pixmap_get_type
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_GDK2_GDK_TYPE_PIXMAP$$LONGWORD$stub:
.indirect_symbol _GDK2_GDK_TYPE_PIXMAP$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_GDK2_GDK_PIXMAP$POINTER$$PGDKPIXMAP$stub:
.indirect_symbol _GDK2_GDK_PIXMAP$POINTER$$PGDKPIXMAP
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_g_object_ref$stub:
.indirect_symbol _g_object_ref
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_GDK2_GDK_DRAWABLE$POINTER$$PGDKDRAWABLE$stub:
.indirect_symbol _GDK2_GDK_DRAWABLE$POINTER$$PGDKDRAWABLE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_gdk_rgb_get_colormap$stub:
.indirect_symbol _gdk_rgb_get_colormap
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_GDK2_GDK_TYPE_DISPLAY_MANAGER$$LONGWORD$stub:
.indirect_symbol _GDK2_GDK_TYPE_DISPLAY_MANAGER$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_GDK2_GDK_TYPE_DISPLAY$$LONGWORD$stub:
.indirect_symbol _GDK2_GDK_TYPE_DISPLAY$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_GDK2_GDK_TYPE_SCREEN$$LONGWORD$stub:
.indirect_symbol _GDK2_GDK_TYPE_SCREEN$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_GDK2__GDK_MAKE_ATOM$LONGWORD$$LONGWORD$stub:
.indirect_symbol _GDK2__GDK_MAKE_ATOM$LONGWORD$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_GLIB2_GUINT_TO_POINTER$LONGWORD$$POINTER$stub:
.indirect_symbol _GLIB2_GUINT_TO_POINTER$LONGWORD$$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_gdk_visual_get_type$stub:
.indirect_symbol _gdk_visual_get_type
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_GDK2_GDK_TYPE_VISUAL$$LONGWORD$stub:
.indirect_symbol _GDK2_GDK_TYPE_VISUAL$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_gdk_window_object_get_type$stub:
.indirect_symbol _gdk_window_object_get_type
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_GDK2_GDK_TYPE_WINDOW$$LONGWORD$stub:
.indirect_symbol _GDK2_GDK_TYPE_WINDOW$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_GDK2_GDK_WINDOW$POINTER$$PGDKWINDOW$stub:
.indirect_symbol _GDK2_GDK_WINDOW$POINTER$$PGDKWINDOW
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_gdk_get_default_root_window$stub:
.indirect_symbol _gdk_get_default_root_window
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_gdk_drawable_get_size$stub:
.indirect_symbol _gdk_drawable_get_size
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_gdk_window_get_window_type$stub:
.indirect_symbol _gdk_window_get_window_type
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_gdk_drawable_get_colormap$stub:
.indirect_symbol _gdk_drawable_get_colormap
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_gdk_drawable_set_colormap$stub:
.indirect_symbol _gdk_drawable_set_colormap
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_gdk_drawable_get_visual$stub:
.indirect_symbol _gdk_drawable_get_visual
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_GDK2_GDK_DRAW_PIXMAP$crcB87764AF$stub:
.indirect_symbol _GDK2_GDK_DRAW_PIXMAP$crcB87764AF
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
.globl	_INIT_GDK2_PGDKDEVICECLASS
_INIT_GDK2_PGDKDEVICECLASS:
	.byte	0
	.ascii	"\017PGdkDeviceClass"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKDEVICECLASS
_RTTI_GDK2_PGDKDEVICECLASS:
	.byte	0
	.ascii	"\017PGdkDeviceClass"

.const_data
	.align 2
.globl	_INIT_GDK2_TGDKDEVICECLASS
_INIT_GDK2_TGDKDEVICECLASS:
	.byte	13,15
	.ascii	"TGdkDeviceClass"
	.long	68,0

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKDEVICECLASS
_RTTI_GDK2_TGDKDEVICECLASS:
	.byte	13,15
	.ascii	"TGdkDeviceClass"
	.long	68,1
	.long	_RTTI_GLIB2_TGOBJECTCLASS
	.long	0

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKVISUALCLASS
_INIT_GDK2_PGDKVISUALCLASS:
	.byte	0
	.ascii	"\017PGdkVisualClass"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKVISUALCLASS
_RTTI_GDK2_PGDKVISUALCLASS:
	.byte	0
	.ascii	"\017PGdkVisualClass"

.const_data
	.align 2
.globl	_INIT_GDK2_TGDKVISUALCLASS
_INIT_GDK2_TGDKVISUALCLASS:
	.byte	13,15
	.ascii	"TGdkVisualClass"
	.long	68,0

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKVISUALCLASS
_RTTI_GDK2_TGDKVISUALCLASS:
	.byte	13,15
	.ascii	"TGdkVisualClass"
	.long	68,1
	.long	_RTTI_GLIB2_TGOBJECTCLASS
	.long	0

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKCOLOR
_INIT_GDK2_PGDKCOLOR:
	.byte	0
	.ascii	"\011PGdkColor"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKCOLOR
_RTTI_GDK2_PGDKCOLOR:
	.byte	0
	.ascii	"\011PGdkColor"

.const_data
	.align 2
.globl	_INIT_GDK2_TGDKCOLOR
_INIT_GDK2_TGDKCOLOR:
	.byte	13,9
	.ascii	"TGdkColor"
	.long	12,0

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKCOLOR
_RTTI_GDK2_TGDKCOLOR:
	.byte	13,9
	.ascii	"TGdkColor"
	.long	12,4
	.long	_RTTI_SYSTEM_LONGWORD
	.long	0
	.long	_RTTI_SYSTEM_WORD
	.long	4
	.long	_RTTI_SYSTEM_WORD
	.long	6
	.long	_RTTI_SYSTEM_WORD
	.long	8

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKCOLORMAP
_INIT_GDK2_PGDKCOLORMAP:
	.byte	0
	.ascii	"\014PGdkColormap"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKCOLORMAP
_RTTI_GDK2_PGDKCOLORMAP:
	.byte	0
	.ascii	"\014PGdkColormap"

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKDRAWABLE
_INIT_GDK2_PGDKDRAWABLE:
	.byte	0
	.ascii	"\014PGdkDrawable"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKDRAWABLE
_RTTI_GDK2_PGDKDRAWABLE:
	.byte	0
	.ascii	"\014PGdkDrawable"

.const_data
	.align 2
.globl	_INIT_GDK2_TGDKDRAWABLE
_INIT_GDK2_TGDKDRAWABLE:
	.byte	13,12
	.ascii	"TGdkDrawable"
	.long	12,0

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKDRAWABLE
_RTTI_GDK2_TGDKDRAWABLE:
	.byte	13,12
	.ascii	"TGdkDrawable"
	.long	12,1
	.long	_RTTI_GLIB2_TGOBJECT
	.long	0

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKWINDOW
_INIT_GDK2_PGDKWINDOW:
	.byte	0
	.ascii	"\012PGdkWindow"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKWINDOW
_RTTI_GDK2_PGDKWINDOW:
	.byte	0
	.ascii	"\012PGdkWindow"

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKPIXMAP
_INIT_GDK2_PGDKPIXMAP:
	.byte	0
	.ascii	"\012PGdkPixmap"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKPIXMAP
_RTTI_GDK2_PGDKPIXMAP:
	.byte	0
	.ascii	"\012PGdkPixmap"

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKBITMAP
_INIT_GDK2_PGDKBITMAP:
	.byte	0
	.ascii	"\012PGdkBitmap"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKBITMAP
_RTTI_GDK2_PGDKBITMAP:
	.byte	0
	.ascii	"\012PGdkBitmap"

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKFONTTYPE
_INIT_GDK2_PGDKFONTTYPE:
	.byte	0
	.ascii	"\014PGdkFontType"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKFONTTYPE
_RTTI_GDK2_PGDKFONTTYPE:
	.byte	0
	.ascii	"\014PGdkFontType"

.const_data
	.align 2
.globl	_INIT_GDK2_TGDKFONTTYPE
_INIT_GDK2_TGDKFONTTYPE:
	.byte	3,12
	.ascii	"TGdkFontType"
	.byte	5
	.long	0,1,0
	.byte	13
	.ascii	"GDK_FONT_FONT"
	.byte	16
	.ascii	"GDK_FONT_FONTSET"
	.byte	4
	.ascii	"gdk2"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKFONTTYPE
_RTTI_GDK2_TGDKFONTTYPE:
	.byte	3,12
	.ascii	"TGdkFontType"
	.byte	5
	.long	0,1,0
	.byte	13
	.ascii	"GDK_FONT_FONT"
	.byte	16
	.ascii	"GDK_FONT_FONTSET"
	.byte	4
	.ascii	"gdk2"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKFONTTYPE_s2o
_RTTI_GDK2_TGDKFONTTYPE_s2o:
	.long	2,0
	.long	_RTTI_GDK2_TGDKFONTTYPE+27
	.long	1
	.long	_RTTI_GDK2_TGDKFONTTYPE+41

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKFONTTYPE_o2s
_RTTI_GDK2_TGDKFONTTYPE_o2s:
	.long	0
	.long	_RTTI_GDK2_TGDKFONTTYPE+27
	.long	_RTTI_GDK2_TGDKFONTTYPE+41

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKFONT
_INIT_GDK2_PGDKFONT:
	.byte	0
	.ascii	"\010PGdkFont"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKFONT
_RTTI_GDK2_PGDKFONT:
	.byte	0
	.ascii	"\010PGdkFont"

.const_data
	.align 2
.globl	_INIT_GDK2_TGDKFONT
_INIT_GDK2_TGDKFONT:
	.byte	13,8
	.ascii	"TGdkFont"
	.long	12,0

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKFONT
_RTTI_GDK2_TGDKFONT:
	.byte	13,8
	.ascii	"TGdkFont"
	.long	12,3
	.long	_RTTI_GDK2_TGDKFONTTYPE
	.long	0
	.long	_RTTI_SYSTEM_LONGINT
	.long	4
	.long	_RTTI_SYSTEM_LONGINT
	.long	8

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKFUNCTION
_INIT_GDK2_PGDKFUNCTION:
	.byte	0
	.ascii	"\014PGdkFunction"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKFUNCTION
_RTTI_GDK2_PGDKFUNCTION:
	.byte	0
	.ascii	"\014PGdkFunction"

.const_data
	.align 2
.globl	_INIT_GDK2_TGDKFUNCTION
_INIT_GDK2_TGDKFUNCTION:
	.byte	3,12
	.ascii	"TGdkFunction"
	.byte	5
	.long	0,15,0
	.byte	8
	.ascii	"GDK_COPY"
	.byte	10
	.ascii	"GDK_INVERT"
	.byte	7
	.ascii	"GDK_XOR"
	.byte	9
	.ascii	"GDK_CLEAR"
	.byte	7
	.ascii	"GDK_AND"
	.byte	15
	.ascii	"GDK_AND_REVERSE"
	.byte	14
	.ascii	"GDK_AND_INVERT"
	.byte	8
	.ascii	"GDK_NOOP"
	.byte	6
	.ascii	"GDK_OR"
	.byte	9
	.ascii	"GDK_EQUIV"
	.byte	14
	.ascii	"GDK_OR_REVERSE"
	.byte	15
	.ascii	"GDK_COPY_INVERT"
	.byte	13
	.ascii	"GDK_OR_INVERT"
	.byte	8
	.ascii	"GDK_NAND"
	.byte	7
	.ascii	"GDK_NOR"
	.byte	7
	.ascii	"GDK_SET"
	.byte	4
	.ascii	"gdk2"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKFUNCTION
_RTTI_GDK2_TGDKFUNCTION:
	.byte	3,12
	.ascii	"TGdkFunction"
	.byte	5
	.long	0,15,0
	.byte	8
	.ascii	"GDK_COPY"
	.byte	10
	.ascii	"GDK_INVERT"
	.byte	7
	.ascii	"GDK_XOR"
	.byte	9
	.ascii	"GDK_CLEAR"
	.byte	7
	.ascii	"GDK_AND"
	.byte	15
	.ascii	"GDK_AND_REVERSE"
	.byte	14
	.ascii	"GDK_AND_INVERT"
	.byte	8
	.ascii	"GDK_NOOP"
	.byte	6
	.ascii	"GDK_OR"
	.byte	9
	.ascii	"GDK_EQUIV"
	.byte	14
	.ascii	"GDK_OR_REVERSE"
	.byte	15
	.ascii	"GDK_COPY_INVERT"
	.byte	13
	.ascii	"GDK_OR_INVERT"
	.byte	8
	.ascii	"GDK_NAND"
	.byte	7
	.ascii	"GDK_NOR"
	.byte	7
	.ascii	"GDK_SET"
	.byte	4
	.ascii	"gdk2"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKFUNCTION_s2o
_RTTI_GDK2_TGDKFUNCTION_s2o:
	.long	16,4
	.long	_RTTI_GDK2_TGDKFUNCTION+65
	.long	6
	.long	_RTTI_GDK2_TGDKFUNCTION+89
	.long	5
	.long	_RTTI_GDK2_TGDKFUNCTION+73
	.long	3
	.long	_RTTI_GDK2_TGDKFUNCTION+55
	.long	0
	.long	_RTTI_GDK2_TGDKFUNCTION+27
	.long	11
	.long	_RTTI_GDK2_TGDKFUNCTION+145
	.long	9
	.long	_RTTI_GDK2_TGDKFUNCTION+120
	.long	1
	.long	_RTTI_GDK2_TGDKFUNCTION+36
	.long	13
	.long	_RTTI_GDK2_TGDKFUNCTION+175
	.long	7
	.long	_RTTI_GDK2_TGDKFUNCTION+104
	.long	14
	.long	_RTTI_GDK2_TGDKFUNCTION+184
	.long	8
	.long	_RTTI_GDK2_TGDKFUNCTION+113
	.long	12
	.long	_RTTI_GDK2_TGDKFUNCTION+161
	.long	10
	.long	_RTTI_GDK2_TGDKFUNCTION+130
	.long	15
	.long	_RTTI_GDK2_TGDKFUNCTION+192
	.long	2
	.long	_RTTI_GDK2_TGDKFUNCTION+47

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKFUNCTION_o2s
_RTTI_GDK2_TGDKFUNCTION_o2s:
	.long	0
	.long	_RTTI_GDK2_TGDKFUNCTION+27
	.long	_RTTI_GDK2_TGDKFUNCTION+36
	.long	_RTTI_GDK2_TGDKFUNCTION+47
	.long	_RTTI_GDK2_TGDKFUNCTION+55
	.long	_RTTI_GDK2_TGDKFUNCTION+65
	.long	_RTTI_GDK2_TGDKFUNCTION+73
	.long	_RTTI_GDK2_TGDKFUNCTION+89
	.long	_RTTI_GDK2_TGDKFUNCTION+104
	.long	_RTTI_GDK2_TGDKFUNCTION+113
	.long	_RTTI_GDK2_TGDKFUNCTION+120
	.long	_RTTI_GDK2_TGDKFUNCTION+130
	.long	_RTTI_GDK2_TGDKFUNCTION+145
	.long	_RTTI_GDK2_TGDKFUNCTION+161
	.long	_RTTI_GDK2_TGDKFUNCTION+175
	.long	_RTTI_GDK2_TGDKFUNCTION+184
	.long	_RTTI_GDK2_TGDKFUNCTION+192

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKCAPSTYLE
_INIT_GDK2_PGDKCAPSTYLE:
	.byte	0
	.ascii	"\014PGdkCapStyle"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKCAPSTYLE
_RTTI_GDK2_PGDKCAPSTYLE:
	.byte	0
	.ascii	"\014PGdkCapStyle"

.const_data
	.align 2
.globl	_INIT_GDK2_TGDKCAPSTYLE
_INIT_GDK2_TGDKCAPSTYLE:
	.byte	3,12
	.ascii	"TGdkCapStyle"
	.byte	5
	.long	0,3,0
	.byte	16
	.ascii	"GDK_CAP_NOT_LAST"
	.byte	12
	.ascii	"GDK_CAP_BUTT"
	.byte	13
	.ascii	"GDK_CAP_ROUND"
	.byte	18
	.ascii	"GDK_CAP_PROJECTING"
	.byte	4
	.ascii	"gdk2"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKCAPSTYLE
_RTTI_GDK2_TGDKCAPSTYLE:
	.byte	3,12
	.ascii	"TGdkCapStyle"
	.byte	5
	.long	0,3,0
	.byte	16
	.ascii	"GDK_CAP_NOT_LAST"
	.byte	12
	.ascii	"GDK_CAP_BUTT"
	.byte	13
	.ascii	"GDK_CAP_ROUND"
	.byte	18
	.ascii	"GDK_CAP_PROJECTING"
	.byte	4
	.ascii	"gdk2"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKCAPSTYLE_s2o
_RTTI_GDK2_TGDKCAPSTYLE_s2o:
	.long	4,1
	.long	_RTTI_GDK2_TGDKCAPSTYLE+44
	.long	0
	.long	_RTTI_GDK2_TGDKCAPSTYLE+27
	.long	3
	.long	_RTTI_GDK2_TGDKCAPSTYLE+71
	.long	2
	.long	_RTTI_GDK2_TGDKCAPSTYLE+57

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKCAPSTYLE_o2s
_RTTI_GDK2_TGDKCAPSTYLE_o2s:
	.long	0
	.long	_RTTI_GDK2_TGDKCAPSTYLE+27
	.long	_RTTI_GDK2_TGDKCAPSTYLE+44
	.long	_RTTI_GDK2_TGDKCAPSTYLE+57
	.long	_RTTI_GDK2_TGDKCAPSTYLE+71

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKFILL
_INIT_GDK2_PGDKFILL:
	.byte	0
	.ascii	"\010PGdkFill"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKFILL
_RTTI_GDK2_PGDKFILL:
	.byte	0
	.ascii	"\010PGdkFill"

.const_data
	.align 2
.globl	_INIT_GDK2_TGDKFILL
_INIT_GDK2_TGDKFILL:
	.byte	3,8
	.ascii	"TGdkFill"
	.byte	5
	.long	0,3,0
	.byte	9
	.ascii	"GDK_SOLID"
	.byte	9
	.ascii	"GDK_TILED"
	.byte	12
	.ascii	"GDK_STIPPLED"
	.byte	19
	.ascii	"GDK_OPAQUE_STIPPLED"
	.byte	4
	.ascii	"gdk2"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKFILL
_RTTI_GDK2_TGDKFILL:
	.byte	3,8
	.ascii	"TGdkFill"
	.byte	5
	.long	0,3,0
	.byte	9
	.ascii	"GDK_SOLID"
	.byte	9
	.ascii	"GDK_TILED"
	.byte	12
	.ascii	"GDK_STIPPLED"
	.byte	19
	.ascii	"GDK_OPAQUE_STIPPLED"
	.byte	4
	.ascii	"gdk2"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKFILL_s2o
_RTTI_GDK2_TGDKFILL_s2o:
	.long	4,3
	.long	_RTTI_GDK2_TGDKFILL+56
	.long	0
	.long	_RTTI_GDK2_TGDKFILL+23
	.long	2
	.long	_RTTI_GDK2_TGDKFILL+43
	.long	1
	.long	_RTTI_GDK2_TGDKFILL+33

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKFILL_o2s
_RTTI_GDK2_TGDKFILL_o2s:
	.long	0
	.long	_RTTI_GDK2_TGDKFILL+23
	.long	_RTTI_GDK2_TGDKFILL+33
	.long	_RTTI_GDK2_TGDKFILL+43
	.long	_RTTI_GDK2_TGDKFILL+56

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKJOINSTYLE
_INIT_GDK2_PGDKJOINSTYLE:
	.byte	0
	.ascii	"\015PGdkJoinStyle"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKJOINSTYLE
_RTTI_GDK2_PGDKJOINSTYLE:
	.byte	0
	.ascii	"\015PGdkJoinStyle"

.const_data
	.align 2
.globl	_INIT_GDK2_TGDKJOINSTYLE
_INIT_GDK2_TGDKJOINSTYLE:
	.byte	3,13
	.ascii	"TGdkJoinStyle"
	.byte	5
	.long	0,2,0
	.byte	14
	.ascii	"GDK_JOIN_MITER"
	.byte	14
	.ascii	"GDK_JOIN_ROUND"
	.byte	14
	.ascii	"GDK_JOIN_BEVEL"
	.byte	4
	.ascii	"gdk2"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKJOINSTYLE
_RTTI_GDK2_TGDKJOINSTYLE:
	.byte	3,13
	.ascii	"TGdkJoinStyle"
	.byte	5
	.long	0,2,0
	.byte	14
	.ascii	"GDK_JOIN_MITER"
	.byte	14
	.ascii	"GDK_JOIN_ROUND"
	.byte	14
	.ascii	"GDK_JOIN_BEVEL"
	.byte	4
	.ascii	"gdk2"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKJOINSTYLE_s2o
_RTTI_GDK2_TGDKJOINSTYLE_s2o:
	.long	3,2
	.long	_RTTI_GDK2_TGDKJOINSTYLE+58
	.long	0
	.long	_RTTI_GDK2_TGDKJOINSTYLE+28
	.long	1
	.long	_RTTI_GDK2_TGDKJOINSTYLE+43

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKJOINSTYLE_o2s
_RTTI_GDK2_TGDKJOINSTYLE_o2s:
	.long	0
	.long	_RTTI_GDK2_TGDKJOINSTYLE+28
	.long	_RTTI_GDK2_TGDKJOINSTYLE+43
	.long	_RTTI_GDK2_TGDKJOINSTYLE+58

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKLINESTYLE
_INIT_GDK2_PGDKLINESTYLE:
	.byte	0
	.ascii	"\015PGdkLineStyle"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKLINESTYLE
_RTTI_GDK2_PGDKLINESTYLE:
	.byte	0
	.ascii	"\015PGdkLineStyle"

.const_data
	.align 2
.globl	_INIT_GDK2_TGDKLINESTYLE
_INIT_GDK2_TGDKLINESTYLE:
	.byte	3,13
	.ascii	"TGdkLineStyle"
	.byte	5
	.long	0,2,0
	.byte	14
	.ascii	"GDK_LINE_SOLID"
	.byte	20
	.ascii	"GDK_LINE_ON_OFF_DASH"
	.byte	20
	.ascii	"GDK_LINE_DOUBLE_DASH"
	.byte	4
	.ascii	"gdk2"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKLINESTYLE
_RTTI_GDK2_TGDKLINESTYLE:
	.byte	3,13
	.ascii	"TGdkLineStyle"
	.byte	5
	.long	0,2,0
	.byte	14
	.ascii	"GDK_LINE_SOLID"
	.byte	20
	.ascii	"GDK_LINE_ON_OFF_DASH"
	.byte	20
	.ascii	"GDK_LINE_DOUBLE_DASH"
	.byte	4
	.ascii	"gdk2"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKLINESTYLE_s2o
_RTTI_GDK2_TGDKLINESTYLE_s2o:
	.long	3,2
	.long	_RTTI_GDK2_TGDKLINESTYLE+64
	.long	1
	.long	_RTTI_GDK2_TGDKLINESTYLE+43
	.long	0
	.long	_RTTI_GDK2_TGDKLINESTYLE+28

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKLINESTYLE_o2s
_RTTI_GDK2_TGDKLINESTYLE_o2s:
	.long	0
	.long	_RTTI_GDK2_TGDKLINESTYLE+28
	.long	_RTTI_GDK2_TGDKLINESTYLE+43
	.long	_RTTI_GDK2_TGDKLINESTYLE+64

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKSUBWINDOWMODE
_INIT_GDK2_PGDKSUBWINDOWMODE:
	.byte	0
	.ascii	"\021PGdkSubwindowMode"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKSUBWINDOWMODE
_RTTI_GDK2_PGDKSUBWINDOWMODE:
	.byte	0
	.ascii	"\021PGdkSubwindowMode"

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKGCVALUESMASK
_INIT_GDK2_PGDKGCVALUESMASK:
	.byte	0
	.ascii	"\020PGdkGCValuesMask"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKGCVALUESMASK
_RTTI_GDK2_PGDKGCVALUESMASK:
	.byte	0
	.ascii	"\020PGdkGCValuesMask"

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKGCVALUES
_INIT_GDK2_PGDKGCVALUES:
	.byte	0
	.ascii	"\014PGdkGCValues"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKGCVALUES
_RTTI_GDK2_PGDKGCVALUES:
	.byte	0
	.ascii	"\014PGdkGCValues"

.const_data
	.align 2
.globl	_INIT_GDK2_TGDKGCVALUES
_INIT_GDK2_TGDKGCVALUES:
	.byte	13,12
	.ascii	"TGdkGCValues"
	.long	88,0

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKGCVALUES
_RTTI_GDK2_TGDKGCVALUES:
	.byte	13,12
	.ascii	"TGdkGCValues"
	.long	88,18
	.long	_RTTI_GDK2_TGDKCOLOR
	.long	0
	.long	_RTTI_GDK2_TGDKCOLOR
	.long	12
	.long	_RTTI_GDK2_PGDKFONT
	.long	24
	.long	_RTTI_GDK2_TGDKFUNCTION
	.long	28
	.long	_RTTI_GDK2_TGDKFILL
	.long	32
	.long	_RTTI_GDK2_PGDKPIXMAP
	.long	36
	.long	_RTTI_GDK2_PGDKPIXMAP
	.long	40
	.long	_RTTI_GDK2_PGDKPIXMAP
	.long	44
	.long	_RTTI_SYSTEM_LONGINT
	.long	48
	.long	_RTTI_SYSTEM_LONGINT
	.long	52
	.long	_RTTI_SYSTEM_LONGINT
	.long	56
	.long	_RTTI_SYSTEM_LONGINT
	.long	60
	.long	_RTTI_SYSTEM_LONGINT
	.long	64
	.long	_RTTI_SYSTEM_LONGINT
	.long	68
	.long	_RTTI_SYSTEM_LONGINT
	.long	72
	.long	_RTTI_GDK2_TGDKLINESTYLE
	.long	76
	.long	_RTTI_GDK2_TGDKCAPSTYLE
	.long	80
	.long	_RTTI_GDK2_TGDKJOINSTYLE
	.long	84

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKGC
_INIT_GDK2_PGDKGC:
	.byte	0
	.ascii	"\006PGdkGC"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKGC
_RTTI_GDK2_PGDKGC:
	.byte	0
	.ascii	"\006PGdkGC"

.const_data
	.align 2
.globl	_INIT_GDK2_TGDKGC
_INIT_GDK2_TGDKGC:
	.byte	13,6
	.ascii	"TGdkGC"
	.long	32,0

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKGC
_RTTI_GDK2_TGDKGC:
	.byte	13,6
	.ascii	"TGdkGC"
	.long	32,6
	.long	_RTTI_GLIB2_TGOBJECT
	.long	0
	.long	_RTTI_SYSTEM_LONGINT
	.long	12
	.long	_RTTI_SYSTEM_LONGINT
	.long	16
	.long	_RTTI_SYSTEM_LONGINT
	.long	20
	.long	_RTTI_SYSTEM_LONGINT
	.long	24
	.long	_RTTI_GDK2_PGDKCOLORMAP
	.long	28

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKIMAGETYPE
_INIT_GDK2_PGDKIMAGETYPE:
	.byte	0
	.ascii	"\015PGdkImageType"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKIMAGETYPE
_RTTI_GDK2_PGDKIMAGETYPE:
	.byte	0
	.ascii	"\015PGdkImageType"

.const_data
	.align 2
.globl	_INIT_GDK2_TGDKIMAGETYPE
_INIT_GDK2_TGDKIMAGETYPE:
	.byte	3,13
	.ascii	"TGdkImageType"
	.byte	5
	.long	0,2,0
	.byte	16
	.ascii	"GDK_IMAGE_NORMAL"
	.byte	16
	.ascii	"GDK_IMAGE_SHARED"
	.byte	17
	.ascii	"GDK_IMAGE_FASTEST"
	.byte	4
	.ascii	"gdk2"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKIMAGETYPE
_RTTI_GDK2_TGDKIMAGETYPE:
	.byte	3,13
	.ascii	"TGdkImageType"
	.byte	5
	.long	0,2,0
	.byte	16
	.ascii	"GDK_IMAGE_NORMAL"
	.byte	16
	.ascii	"GDK_IMAGE_SHARED"
	.byte	17
	.ascii	"GDK_IMAGE_FASTEST"
	.byte	4
	.ascii	"gdk2"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKIMAGETYPE_s2o
_RTTI_GDK2_TGDKIMAGETYPE_s2o:
	.long	3,2
	.long	_RTTI_GDK2_TGDKIMAGETYPE+62
	.long	0
	.long	_RTTI_GDK2_TGDKIMAGETYPE+28
	.long	1
	.long	_RTTI_GDK2_TGDKIMAGETYPE+45

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKIMAGETYPE_o2s
_RTTI_GDK2_TGDKIMAGETYPE_o2s:
	.long	0
	.long	_RTTI_GDK2_TGDKIMAGETYPE+28
	.long	_RTTI_GDK2_TGDKIMAGETYPE+45
	.long	_RTTI_GDK2_TGDKIMAGETYPE+62

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKIMAGE
_INIT_GDK2_PGDKIMAGE:
	.byte	0
	.ascii	"\011PGdkImage"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKIMAGE
_RTTI_GDK2_PGDKIMAGE:
	.byte	0
	.ascii	"\011PGdkImage"

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKDEVICE
_INIT_GDK2_PGDKDEVICE:
	.byte	0
	.ascii	"\012PGdkDevice"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKDEVICE
_RTTI_GDK2_PGDKDEVICE:
	.byte	0
	.ascii	"\012PGdkDevice"

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKTIMECOORD
_INIT_GDK2_PGDKTIMECOORD:
	.byte	0
	.ascii	"\015PGdkTimeCoord"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKTIMECOORD
_RTTI_GDK2_PGDKTIMECOORD:
	.byte	0
	.ascii	"\015PGdkTimeCoord"

.const_data
	.align 2
.globl	_INIT_GDK2_PPGDKTIMECOORD
_INIT_GDK2_PPGDKTIMECOORD:
	.byte	0
	.ascii	"\016PPGdkTimeCoord"

.const_data
	.align 2
.globl	_RTTI_GDK2_PPGDKTIMECOORD
_RTTI_GDK2_PPGDKTIMECOORD:
	.byte	0
	.ascii	"\016PPGdkTimeCoord"

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKPANGORENDERER
_INIT_GDK2_PGDKPANGORENDERER:
	.byte	0
	.ascii	"\021PGdkPangoRenderer"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKPANGORENDERER
_RTTI_GDK2_PGDKPANGORENDERER:
	.byte	0
	.ascii	"\021PGdkPangoRenderer"

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKRGBDITHER
_INIT_GDK2_PGDKRGBDITHER:
	.byte	0
	.ascii	"\015PGdkRgbDither"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKRGBDITHER
_RTTI_GDK2_PGDKRGBDITHER:
	.byte	0
	.ascii	"\015PGdkRgbDither"

.const_data
	.align 2
.globl	_INIT_GDK2_TGDKRGBDITHER
_INIT_GDK2_TGDKRGBDITHER:
	.byte	3,13
	.ascii	"TGdkRgbDither"
	.byte	5
	.long	0,2,0
	.byte	19
	.ascii	"GDK_RGB_DITHER_NONE"
	.byte	21
	.ascii	"GDK_RGB_DITHER_NORMAL"
	.byte	18
	.ascii	"GDK_RGB_DITHER_MAX"
	.byte	4
	.ascii	"gdk2"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKRGBDITHER
_RTTI_GDK2_TGDKRGBDITHER:
	.byte	3,13
	.ascii	"TGdkRgbDither"
	.byte	5
	.long	0,2,0
	.byte	19
	.ascii	"GDK_RGB_DITHER_NONE"
	.byte	21
	.ascii	"GDK_RGB_DITHER_NORMAL"
	.byte	18
	.ascii	"GDK_RGB_DITHER_MAX"
	.byte	4
	.ascii	"gdk2"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKRGBDITHER_s2o
_RTTI_GDK2_TGDKRGBDITHER_s2o:
	.long	3,2
	.long	_RTTI_GDK2_TGDKRGBDITHER+70
	.long	0
	.long	_RTTI_GDK2_TGDKRGBDITHER+28
	.long	1
	.long	_RTTI_GDK2_TGDKRGBDITHER+48

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKRGBDITHER_o2s
_RTTI_GDK2_TGDKRGBDITHER_o2s:
	.long	0
	.long	_RTTI_GDK2_TGDKRGBDITHER+28
	.long	_RTTI_GDK2_TGDKRGBDITHER+48
	.long	_RTTI_GDK2_TGDKRGBDITHER+70

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKDISPLAYMANAGER
_INIT_GDK2_PGDKDISPLAYMANAGER:
	.byte	0
	.ascii	"\022PGdkDisplayManager"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKDISPLAYMANAGER
_RTTI_GDK2_PGDKDISPLAYMANAGER:
	.byte	0
	.ascii	"\022PGdkDisplayManager"

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKDISPLAY
_INIT_GDK2_PGDKDISPLAY:
	.byte	0
	.ascii	"\013PGdkDisplay"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKDISPLAY
_RTTI_GDK2_PGDKDISPLAY:
	.byte	0
	.ascii	"\013PGdkDisplay"

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKDISPLAYPOINTERHOOKS
_INIT_GDK2_PGDKDISPLAYPOINTERHOOKS:
	.byte	0
	.ascii	"\027PGdkDisplayPointerHooks"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKDISPLAYPOINTERHOOKS
_RTTI_GDK2_PGDKDISPLAYPOINTERHOOKS:
	.byte	0
	.ascii	"\027PGdkDisplayPointerHooks"

.const_data
	.align 2
.globl	_INIT_GDK2_PPGDKSCREEN
_INIT_GDK2_PPGDKSCREEN:
	.byte	0
	.ascii	"\013PPGdkScreen"

.const_data
	.align 2
.globl	_RTTI_GDK2_PPGDKSCREEN
_RTTI_GDK2_PPGDKSCREEN:
	.byte	0
	.ascii	"\013PPGdkScreen"

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKSCREEN
_INIT_GDK2_PGDKSCREEN:
	.byte	0
	.ascii	"\012PGdkScreen"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKSCREEN
_RTTI_GDK2_PGDKSCREEN:
	.byte	0
	.ascii	"\012PGdkScreen"

.const_data
	.align 2
.globl	_INIT_GDK2_TGDKSCREEN
_INIT_GDK2_TGDKSCREEN:
	.byte	13,10
	.ascii	"TGdkScreen"
	.long	12,0

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKSCREEN
_RTTI_GDK2_TGDKSCREEN:
	.byte	13,10
	.ascii	"TGdkScreen"
	.long	12,1
	.long	_RTTI_GLIB2_TGOBJECT
	.long	0

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKINPUTCONDITION
_INIT_GDK2_PGDKINPUTCONDITION:
	.byte	0
	.ascii	"\022PGdkInputCondition"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKINPUTCONDITION
_RTTI_GDK2_PGDKINPUTCONDITION:
	.byte	0
	.ascii	"\022PGdkInputCondition"

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKSTATUS
_INIT_GDK2_PGDKSTATUS:
	.byte	0
	.ascii	"\012PGdkStatus"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKSTATUS
_RTTI_GDK2_PGDKSTATUS:
	.byte	0
	.ascii	"\012PGdkStatus"

.const_data
	.align 2
.globl	_INIT_GDK2_TGDKPOINT
_INIT_GDK2_TGDKPOINT:
	.byte	13,9
	.ascii	"TGdkPoint"
	.long	8,0

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKPOINT
_RTTI_GDK2_TGDKPOINT:
	.byte	13,9
	.ascii	"TGdkPoint"
	.long	8,2
	.long	_RTTI_SYSTEM_LONGINT
	.long	0
	.long	_RTTI_SYSTEM_LONGINT
	.long	4

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKPOINT
_INIT_GDK2_PGDKPOINT:
	.byte	0
	.ascii	"\011PGdkPoint"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKPOINT
_RTTI_GDK2_PGDKPOINT:
	.byte	0
	.ascii	"\011PGdkPoint"

.const_data
	.align 2
.globl	_INIT_GDK2_PPGDKPOINT
_INIT_GDK2_PPGDKPOINT:
	.byte	0
	.ascii	"\012PPGdkPoint"

.const_data
	.align 2
.globl	_RTTI_GDK2_PPGDKPOINT
_RTTI_GDK2_PPGDKPOINT:
	.byte	0
	.ascii	"\012PPGdkPoint"

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKSPAN
_INIT_GDK2_PGDKSPAN:
	.byte	0
	.ascii	"\010PGdkSpan"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKSPAN
_RTTI_GDK2_PGDKSPAN:
	.byte	0
	.ascii	"\010PGdkSpan"

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKWCHAR
_INIT_GDK2_PGDKWCHAR:
	.byte	0
	.ascii	"\011PGdkWChar"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKWCHAR
_RTTI_GDK2_PGDKWCHAR:
	.byte	0
	.ascii	"\011PGdkWChar"

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKSEGMENT
_INIT_GDK2_PGDKSEGMENT:
	.byte	0
	.ascii	"\013PGdkSegment"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKSEGMENT
_RTTI_GDK2_PGDKSEGMENT:
	.byte	0
	.ascii	"\013PGdkSegment"

.const_data
	.align 2
.globl	_INIT_GDK2_TGDKSEGMENT
_INIT_GDK2_TGDKSEGMENT:
	.byte	13,11
	.ascii	"TGdkSegment"
	.long	16,0

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKSEGMENT
_RTTI_GDK2_TGDKSEGMENT:
	.byte	13,11
	.ascii	"TGdkSegment"
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
.globl	_INIT_GDK2_PGDKRECTANGLE
_INIT_GDK2_PGDKRECTANGLE:
	.byte	0
	.ascii	"\015PGdkRectangle"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKRECTANGLE
_RTTI_GDK2_PGDKRECTANGLE:
	.byte	0
	.ascii	"\015PGdkRectangle"

.const_data
	.align 2
.globl	_INIT_GDK2_TGDKRECTANGLE
_INIT_GDK2_TGDKRECTANGLE:
	.byte	13,13
	.ascii	"TGdkRectangle"
	.long	16,0

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKRECTANGLE
_RTTI_GDK2_TGDKRECTANGLE:
	.byte	13,13
	.ascii	"TGdkRectangle"
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
.globl	_INIT_GDK2_PPGDKATOM
_INIT_GDK2_PPGDKATOM:
	.byte	0
	.ascii	"\011PPGdkAtom"

.const_data
	.align 2
.globl	_RTTI_GDK2_PPGDKATOM
_RTTI_GDK2_PPGDKATOM:
	.byte	0
	.ascii	"\011PPGdkAtom"

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKATOM
_INIT_GDK2_PGDKATOM:
	.byte	0
	.ascii	"\010PGdkAtom"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKATOM
_RTTI_GDK2_PGDKATOM:
	.byte	0
	.ascii	"\010PGdkAtom"

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKBYTEORDER
_INIT_GDK2_PGDKBYTEORDER:
	.byte	0
	.ascii	"\015PGdkByteOrder"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKBYTEORDER
_RTTI_GDK2_PGDKBYTEORDER:
	.byte	0
	.ascii	"\015PGdkByteOrder"

.const_data
	.align 2
.globl	_INIT_GDK2_TGDKBYTEORDER
_INIT_GDK2_TGDKBYTEORDER:
	.byte	3,13
	.ascii	"TGdkByteOrder"
	.byte	5
	.long	0,1,0
	.byte	13
	.ascii	"GDK_LSB_FIRST"
	.byte	13
	.ascii	"GDK_MSB_FIRST"
	.byte	4
	.ascii	"gdk2"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKBYTEORDER
_RTTI_GDK2_TGDKBYTEORDER:
	.byte	3,13
	.ascii	"TGdkByteOrder"
	.byte	5
	.long	0,1,0
	.byte	13
	.ascii	"GDK_LSB_FIRST"
	.byte	13
	.ascii	"GDK_MSB_FIRST"
	.byte	4
	.ascii	"gdk2"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKBYTEORDER_s2o
_RTTI_GDK2_TGDKBYTEORDER_s2o:
	.long	2,0
	.long	_RTTI_GDK2_TGDKBYTEORDER+28
	.long	1
	.long	_RTTI_GDK2_TGDKBYTEORDER+42

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKBYTEORDER_o2s
_RTTI_GDK2_TGDKBYTEORDER_o2s:
	.long	0
	.long	_RTTI_GDK2_TGDKBYTEORDER+28
	.long	_RTTI_GDK2_TGDKBYTEORDER+42

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKNATIVEWINDOW
_INIT_GDK2_PGDKNATIVEWINDOW:
	.byte	0
	.ascii	"\020PGdkNativeWindow"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKNATIVEWINDOW
_RTTI_GDK2_PGDKNATIVEWINDOW:
	.byte	0
	.ascii	"\020PGdkNativeWindow"

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKMODIFIERTYPE
_INIT_GDK2_PGDKMODIFIERTYPE:
	.byte	0
	.ascii	"\020PGdkModifierType"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKMODIFIERTYPE
_RTTI_GDK2_PGDKMODIFIERTYPE:
	.byte	0
	.ascii	"\020PGdkModifierType"

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKVISUALTYPE
_INIT_GDK2_PGDKVISUALTYPE:
	.byte	0
	.ascii	"\016PGdkVisualType"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKVISUALTYPE
_RTTI_GDK2_PGDKVISUALTYPE:
	.byte	0
	.ascii	"\016PGdkVisualType"

.const_data
	.align 2
.globl	_INIT_GDK2_TGDKVISUALTYPE
_INIT_GDK2_TGDKVISUALTYPE:
	.byte	3,14
	.ascii	"TGdkVisualType"
	.byte	5
	.long	0,5,0
	.byte	22
	.ascii	"GDK_VISUAL_STATIC_GRAY"
	.byte	20
	.ascii	"GDK_VISUAL_GRAYSCALE"
	.byte	23
	.ascii	"GDK_VISUAL_STATIC_COLOR"
	.byte	23
	.ascii	"GDK_VISUAL_PSEUDO_COLOR"
	.byte	21
	.ascii	"GDK_VISUAL_TRUE_COLOR"
	.byte	23
	.ascii	"GDK_VISUAL_DIRECT_COLOR"
	.byte	4
	.ascii	"gdk2"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKVISUALTYPE
_RTTI_GDK2_TGDKVISUALTYPE:
	.byte	3,14
	.ascii	"TGdkVisualType"
	.byte	5
	.long	0,5,0
	.byte	22
	.ascii	"GDK_VISUAL_STATIC_GRAY"
	.byte	20
	.ascii	"GDK_VISUAL_GRAYSCALE"
	.byte	23
	.ascii	"GDK_VISUAL_STATIC_COLOR"
	.byte	23
	.ascii	"GDK_VISUAL_PSEUDO_COLOR"
	.byte	21
	.ascii	"GDK_VISUAL_TRUE_COLOR"
	.byte	23
	.ascii	"GDK_VISUAL_DIRECT_COLOR"
	.byte	4
	.ascii	"gdk2"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKVISUALTYPE_s2o
_RTTI_GDK2_TGDKVISUALTYPE_s2o:
	.long	6,5
	.long	_RTTI_GDK2_TGDKVISUALTYPE+143
	.long	1
	.long	_RTTI_GDK2_TGDKVISUALTYPE+52
	.long	3
	.long	_RTTI_GDK2_TGDKVISUALTYPE+97
	.long	2
	.long	_RTTI_GDK2_TGDKVISUALTYPE+73
	.long	0
	.long	_RTTI_GDK2_TGDKVISUALTYPE+29
	.long	4
	.long	_RTTI_GDK2_TGDKVISUALTYPE+121

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKVISUALTYPE_o2s
_RTTI_GDK2_TGDKVISUALTYPE_o2s:
	.long	0
	.long	_RTTI_GDK2_TGDKVISUALTYPE+29
	.long	_RTTI_GDK2_TGDKVISUALTYPE+52
	.long	_RTTI_GDK2_TGDKVISUALTYPE+73
	.long	_RTTI_GDK2_TGDKVISUALTYPE+97
	.long	_RTTI_GDK2_TGDKVISUALTYPE+121
	.long	_RTTI_GDK2_TGDKVISUALTYPE+143

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKVISUAL
_INIT_GDK2_PGDKVISUAL:
	.byte	0
	.ascii	"\012PGdkVisual"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKVISUAL
_RTTI_GDK2_PGDKVISUAL:
	.byte	0
	.ascii	"\012PGdkVisual"

.const_data
	.align 2
.globl	_INIT_GDK2_TGDKVISUAL
_INIT_GDK2_TGDKVISUAL:
	.byte	13,10
	.ascii	"TGdkVisual"
	.long	72,0

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKVISUAL
_RTTI_GDK2_TGDKVISUAL:
	.byte	13,10
	.ascii	"TGdkVisual"
	.long	72,16
	.long	_RTTI_GLIB2_TGOBJECT
	.long	0
	.long	_RTTI_GDK2_TGDKVISUALTYPE
	.long	12
	.long	_RTTI_SYSTEM_LONGINT
	.long	16
	.long	_RTTI_GDK2_TGDKBYTEORDER
	.long	20
	.long	_RTTI_SYSTEM_LONGINT
	.long	24
	.long	_RTTI_SYSTEM_LONGINT
	.long	28
	.long	_RTTI_SYSTEM_LONGWORD
	.long	32
	.long	_RTTI_SYSTEM_LONGINT
	.long	36
	.long	_RTTI_SYSTEM_LONGINT
	.long	40
	.long	_RTTI_SYSTEM_LONGWORD
	.long	44
	.long	_RTTI_SYSTEM_LONGINT
	.long	48
	.long	_RTTI_SYSTEM_LONGINT
	.long	52
	.long	_RTTI_SYSTEM_LONGWORD
	.long	56
	.long	_RTTI_SYSTEM_LONGINT
	.long	60
	.long	_RTTI_SYSTEM_LONGINT
	.long	64
	.long	_RTTI_GDK2_PGDKSCREEN
	.long	68

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKCOLORMAPCLASS
_INIT_GDK2_PGDKCOLORMAPCLASS:
	.byte	0
	.ascii	"\021PGdkColormapClass"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKCOLORMAPCLASS
_RTTI_GDK2_PGDKCOLORMAPCLASS:
	.byte	0
	.ascii	"\021PGdkColormapClass"

.const_data
	.align 2
.globl	_INIT_GDK2_TGDKCOLORMAPCLASS
_INIT_GDK2_TGDKCOLORMAPCLASS:
	.byte	13,17
	.ascii	"TGdkColormapClass"
	.long	68,0

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKCOLORMAPCLASS
_RTTI_GDK2_TGDKCOLORMAPCLASS:
	.byte	13,17
	.ascii	"TGdkColormapClass"
	.long	68,1
	.long	_RTTI_GLIB2_TGOBJECTCLASS
	.long	0

.const_data
	.align 2
.globl	_INIT_GDK2_TGDKCOLORMAP
_INIT_GDK2_TGDKCOLORMAP:
	.byte	13,12
	.ascii	"TGdkColormap"
	.long	32,0

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKCOLORMAP
_RTTI_GDK2_TGDKCOLORMAP:
	.byte	13,12
	.ascii	"TGdkColormap"
	.long	32,6
	.long	_RTTI_GLIB2_TGOBJECT
	.long	0
	.long	_RTTI_SYSTEM_LONGINT
	.long	12
	.long	_RTTI_GDK2_PGDKCOLOR
	.long	16
	.long	_RTTI_GDK2_PGDKVISUAL
	.long	20
	.long	_RTTI_SYSTEM_POINTER
	.long	24
	.long	_RTTI_GDK2_PGDKSCREEN
	.long	28

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKCURSORTYPE
_INIT_GDK2_PGDKCURSORTYPE:
	.byte	0
	.ascii	"\016PGdkCursorType"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKCURSORTYPE
_RTTI_GDK2_PGDKCURSORTYPE:
	.byte	0
	.ascii	"\016PGdkCursorType"

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKCURSOR
_INIT_GDK2_PGDKCURSOR:
	.byte	0
	.ascii	"\012PGdkCursor"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKCURSOR
_RTTI_GDK2_PGDKCURSOR:
	.byte	0
	.ascii	"\012PGdkCursor"

.const_data
	.align 2
.globl	_INIT_GDK2_TGDKCURSOR
_INIT_GDK2_TGDKCURSOR:
	.byte	13,10
	.ascii	"TGdkCursor"
	.long	8,0

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKCURSOR
_RTTI_GDK2_TGDKCURSOR:
	.byte	13,10
	.ascii	"TGdkCursor"
	.long	8,2
	.long	_RTTI_SYSTEM_LONGINT
	.long	0
	.long	_RTTI_SYSTEM_LONGWORD
	.long	4

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKDRAGACTION
_INIT_GDK2_PGDKDRAGACTION:
	.byte	0
	.ascii	"\016PGdkDragAction"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKDRAGACTION
_RTTI_GDK2_PGDKDRAGACTION:
	.byte	0
	.ascii	"\016PGdkDragAction"

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKDRAGPROTOCOL
_INIT_GDK2_PGDKDRAGPROTOCOL:
	.byte	0
	.ascii	"\020PGdkDragProtocol"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKDRAGPROTOCOL
_RTTI_GDK2_PGDKDRAGPROTOCOL:
	.byte	0
	.ascii	"\020PGdkDragProtocol"

.const_data
	.align 2
.globl	_INIT_GDK2_TGDKDRAGPROTOCOL
_INIT_GDK2_TGDKDRAGPROTOCOL:
	.byte	3,16
	.ascii	"TGdkDragProtocol"
	.byte	5
	.long	0,6,0
	.byte	20
	.ascii	"GDK_DRAG_PROTO_MOTIF"
	.byte	19
	.ascii	"GDK_DRAG_PROTO_XDND"
	.byte	22
	.ascii	"GDK_DRAG_PROTO_ROOTWIN"
	.byte	19
	.ascii	"GDK_DRAG_PROTO_NONE"
	.byte	30
	.ascii	"GDK_DRAG_PROTO_WIN32_DROPFILES"
	.byte	19
	.ascii	"GDK_DRAG_PROTO_OLE2"
	.byte	20
	.ascii	"GDK_DRAG_PROTO_LOCAL"
	.byte	4
	.ascii	"gdk2"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKDRAGPROTOCOL
_RTTI_GDK2_TGDKDRAGPROTOCOL:
	.byte	3,16
	.ascii	"TGdkDragProtocol"
	.byte	5
	.long	0,6,0
	.byte	20
	.ascii	"GDK_DRAG_PROTO_MOTIF"
	.byte	19
	.ascii	"GDK_DRAG_PROTO_XDND"
	.byte	22
	.ascii	"GDK_DRAG_PROTO_ROOTWIN"
	.byte	19
	.ascii	"GDK_DRAG_PROTO_NONE"
	.byte	30
	.ascii	"GDK_DRAG_PROTO_WIN32_DROPFILES"
	.byte	19
	.ascii	"GDK_DRAG_PROTO_OLE2"
	.byte	20
	.ascii	"GDK_DRAG_PROTO_LOCAL"
	.byte	4
	.ascii	"gdk2"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKDRAGPROTOCOL_s2o
_RTTI_GDK2_TGDKDRAGPROTOCOL_s2o:
	.long	7,6
	.long	_RTTI_GDK2_TGDKDRAGPROTOCOL+166
	.long	0
	.long	_RTTI_GDK2_TGDKDRAGPROTOCOL+31
	.long	3
	.long	_RTTI_GDK2_TGDKDRAGPROTOCOL+95
	.long	5
	.long	_RTTI_GDK2_TGDKDRAGPROTOCOL+146
	.long	2
	.long	_RTTI_GDK2_TGDKDRAGPROTOCOL+72
	.long	4
	.long	_RTTI_GDK2_TGDKDRAGPROTOCOL+115
	.long	1
	.long	_RTTI_GDK2_TGDKDRAGPROTOCOL+52

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKDRAGPROTOCOL_o2s
_RTTI_GDK2_TGDKDRAGPROTOCOL_o2s:
	.long	0
	.long	_RTTI_GDK2_TGDKDRAGPROTOCOL+31
	.long	_RTTI_GDK2_TGDKDRAGPROTOCOL+52
	.long	_RTTI_GDK2_TGDKDRAGPROTOCOL+72
	.long	_RTTI_GDK2_TGDKDRAGPROTOCOL+95
	.long	_RTTI_GDK2_TGDKDRAGPROTOCOL+115
	.long	_RTTI_GDK2_TGDKDRAGPROTOCOL+146
	.long	_RTTI_GDK2_TGDKDRAGPROTOCOL+166

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKDRAGCONTEXT
_INIT_GDK2_PGDKDRAGCONTEXT:
	.byte	0
	.ascii	"\017PGdkDragContext"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKDRAGCONTEXT
_RTTI_GDK2_PGDKDRAGCONTEXT:
	.byte	0
	.ascii	"\017PGdkDragContext"

.const_data
	.align 2
.globl	_INIT_GDK2_TGDKDRAGCONTEXT
_INIT_GDK2_TGDKDRAGCONTEXT:
	.byte	13,15
	.ascii	"TGdkDragContext"
	.long	52,0

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKDRAGCONTEXT
_RTTI_GDK2_TGDKDRAGCONTEXT:
	.byte	13,15
	.ascii	"TGdkDragContext"
	.long	52,11
	.long	_RTTI_GLIB2_TGOBJECT
	.long	0
	.long	_RTTI_GDK2_TGDKDRAGPROTOCOL
	.long	12
	.long	_RTTI_SYSTEM_BOOLEAN32
	.long	16
	.long	_RTTI_GDK2_PGDKWINDOW
	.long	20
	.long	_RTTI_GDK2_PGDKWINDOW
	.long	24
	.long	_RTTI_GLIB2_PGLIST
	.long	28
	.long	_RTTI_SYSTEM_LONGINT
	.long	32
	.long	_RTTI_SYSTEM_LONGINT
	.long	36
	.long	_RTTI_SYSTEM_LONGINT
	.long	40
	.long	_RTTI_SYSTEM_LONGWORD
	.long	44
	.long	_RTTI_SYSTEM_POINTER
	.long	48

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKDRAGCONTEXTCLASS
_INIT_GDK2_PGDKDRAGCONTEXTCLASS:
	.byte	0
	.ascii	"\024PGdkDragContextClass"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKDRAGCONTEXTCLASS
_RTTI_GDK2_PGDKDRAGCONTEXTCLASS:
	.byte	0
	.ascii	"\024PGdkDragContextClass"

.const_data
	.align 2
.globl	_INIT_GDK2_TGDKDRAGCONTEXTCLASS
_INIT_GDK2_TGDKDRAGCONTEXTCLASS:
	.byte	13,20
	.ascii	"TGdkDragContextClass"
	.long	68,0

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKDRAGCONTEXTCLASS
_RTTI_GDK2_TGDKDRAGCONTEXTCLASS:
	.byte	13,20
	.ascii	"TGdkDragContextClass"
	.long	68,1
	.long	_RTTI_GLIB2_TGOBJECTCLASS
	.long	0

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKREGIONBOX
_INIT_GDK2_PGDKREGIONBOX:
	.byte	0
	.ascii	"\015PGdkRegionBox"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKREGIONBOX
_RTTI_GDK2_PGDKREGIONBOX:
	.byte	0
	.ascii	"\015PGdkRegionBox"

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKREGION
_INIT_GDK2_PGDKREGION:
	.byte	0
	.ascii	"\012PGdkRegion"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKREGION
_RTTI_GDK2_PGDKREGION:
	.byte	0
	.ascii	"\012PGdkRegion"

.const_data
	.align 2
.globl	_INIT_GDK2_TGDKREGION
_INIT_GDK2_TGDKREGION:
	.byte	13,10
	.ascii	"TGdkRegion"
	.long	28,0

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKREGION
_RTTI_GDK2_TGDKREGION:
	.byte	13,10
	.ascii	"TGdkRegion"
	.long	28,4
	.long	_RTTI_SYSTEM_LONGINT
	.long	0
	.long	_RTTI_SYSTEM_LONGINT
	.long	4
	.long	_RTTI_GDK2_PGDKREGIONBOX
	.long	8
	.long	_RTTI_GDK2_TGDKSEGMENT
	.long	12

.const_data
	.align 2
.globl	_INIT_GDK2_PPOINTBLOCK
_INIT_GDK2_PPOINTBLOCK:
	.byte	0
	.ascii	"\013PPOINTBLOCK"

.const_data
	.align 2
.globl	_RTTI_GDK2_PPOINTBLOCK
_RTTI_GDK2_PPOINTBLOCK:
	.byte	0
	.ascii	"\013PPOINTBLOCK"

.const_data
	.align 2
.globl	_INIT_GDK2_TPOINTBLOCK
_INIT_GDK2_TPOINTBLOCK:
	.byte	13,11
	.ascii	"TPOINTBLOCK"
	.long	1604,0

.const_data
	.align 2
.globl	_RTTI_GDK2_DEF87
_RTTI_GDK2_DEF87:
	.byte	12
	.ascii	"\000"
	.long	8,200
	.long	_RTTI_GDK2_TGDKPOINT
	.long	-1

.const_data
	.align 2
.globl	_RTTI_GDK2_TPOINTBLOCK
_RTTI_GDK2_TPOINTBLOCK:
	.byte	13,11
	.ascii	"TPOINTBLOCK"
	.long	1604,2
	.long	_RTTI_GDK2_DEF87
	.long	0
	.long	_RTTI_GDK2_PPOINTBLOCK
	.long	1600

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKDRAWABLECLASS
_INIT_GDK2_PGDKDRAWABLECLASS:
	.byte	0
	.ascii	"\021PGdkDrawableClass"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKDRAWABLECLASS
_RTTI_GDK2_PGDKDRAWABLECLASS:
	.byte	0
	.ascii	"\021PGdkDrawableClass"

.const_data
	.align 2
.globl	_INIT_GDK2_TGDKDRAWABLECLASS
_INIT_GDK2_TGDKDRAWABLECLASS:
	.byte	13,17
	.ascii	"TGdkDrawableClass"
	.long	224,0

.const_data
	.align 2
.globl	_RTTI_GDK2_DEF90
_RTTI_GDK2_DEF90:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GDK2_DEF91
_RTTI_GDK2_DEF91:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GDK2_DEF92
_RTTI_GDK2_DEF92:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GDK2_DEF93
_RTTI_GDK2_DEF93:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GDK2_DEF94
_RTTI_GDK2_DEF94:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GDK2_DEF95
_RTTI_GDK2_DEF95:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GDK2_DEF96
_RTTI_GDK2_DEF96:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GDK2_DEF97
_RTTI_GDK2_DEF97:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GDK2_DEF98
_RTTI_GDK2_DEF98:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GDK2_DEF99
_RTTI_GDK2_DEF99:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GDK2_DEF100
_RTTI_GDK2_DEF100:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GDK2_DEF101
_RTTI_GDK2_DEF101:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GDK2_DEF102
_RTTI_GDK2_DEF102:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GDK2_DEF103
_RTTI_GDK2_DEF103:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GDK2_DEF104
_RTTI_GDK2_DEF104:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GDK2_DEF105
_RTTI_GDK2_DEF105:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GDK2_DEF106
_RTTI_GDK2_DEF106:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GDK2_DEF107
_RTTI_GDK2_DEF107:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GDK2_DEF108
_RTTI_GDK2_DEF108:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GDK2_DEF109
_RTTI_GDK2_DEF109:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GDK2_DEF110
_RTTI_GDK2_DEF110:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GDK2_DEF111
_RTTI_GDK2_DEF111:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GDK2_DEF112
_RTTI_GDK2_DEF112:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GDK2_DEF113
_RTTI_GDK2_DEF113:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GDK2_DEF114
_RTTI_GDK2_DEF114:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GDK2_DEF115
_RTTI_GDK2_DEF115:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GDK2_DEF116
_RTTI_GDK2_DEF116:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GDK2_DEF117
_RTTI_GDK2_DEF117:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GDK2_DEF118
_RTTI_GDK2_DEF118:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GDK2_DEF119
_RTTI_GDK2_DEF119:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GDK2_DEF120
_RTTI_GDK2_DEF120:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GDK2_DEF121
_RTTI_GDK2_DEF121:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GDK2_DEF122
_RTTI_GDK2_DEF122:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GDK2_DEF123
_RTTI_GDK2_DEF123:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GDK2_DEF124
_RTTI_GDK2_DEF124:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GDK2_DEF125
_RTTI_GDK2_DEF125:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GDK2_DEF126
_RTTI_GDK2_DEF126:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GDK2_DEF127
_RTTI_GDK2_DEF127:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GDK2_DEF128
_RTTI_GDK2_DEF128:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKDRAWABLECLASS
_RTTI_GDK2_TGDKDRAWABLECLASS:
	.byte	13,17
	.ascii	"TGdkDrawableClass"
	.long	224,40
	.long	_RTTI_GLIB2_TGOBJECTCLASS
	.long	0
	.long	_RTTI_GDK2_DEF90
	.long	68
	.long	_RTTI_GDK2_DEF91
	.long	72
	.long	_RTTI_GDK2_DEF92
	.long	76
	.long	_RTTI_GDK2_DEF93
	.long	80
	.long	_RTTI_GDK2_DEF94
	.long	84
	.long	_RTTI_GDK2_DEF95
	.long	88
	.long	_RTTI_GDK2_DEF96
	.long	92
	.long	_RTTI_GDK2_DEF97
	.long	96
	.long	_RTTI_GDK2_DEF98
	.long	100
	.long	_RTTI_GDK2_DEF99
	.long	104
	.long	_RTTI_GDK2_DEF100
	.long	108
	.long	_RTTI_GDK2_DEF101
	.long	112
	.long	_RTTI_GDK2_DEF102
	.long	116
	.long	_RTTI_GDK2_DEF103
	.long	120
	.long	_RTTI_GDK2_DEF104
	.long	124
	.long	_RTTI_GDK2_DEF105
	.long	128
	.long	_RTTI_GDK2_DEF106
	.long	132
	.long	_RTTI_GDK2_DEF107
	.long	136
	.long	_RTTI_GDK2_DEF108
	.long	140
	.long	_RTTI_GDK2_DEF109
	.long	144
	.long	_RTTI_GDK2_DEF110
	.long	148
	.long	_RTTI_GDK2_DEF111
	.long	152
	.long	_RTTI_GDK2_DEF112
	.long	156
	.long	_RTTI_GDK2_DEF113
	.long	160
	.long	_RTTI_GDK2_DEF114
	.long	164
	.long	_RTTI_GDK2_DEF115
	.long	168
	.long	_RTTI_GDK2_DEF116
	.long	172
	.long	_RTTI_GDK2_DEF117
	.long	176
	.long	_RTTI_GDK2_DEF118
	.long	180
	.long	_RTTI_GDK2_DEF119
	.long	184
	.long	_RTTI_GDK2_DEF120
	.long	188
	.long	_RTTI_GDK2_DEF121
	.long	192
	.long	_RTTI_GDK2_DEF122
	.long	196
	.long	_RTTI_GDK2_DEF123
	.long	200
	.long	_RTTI_GDK2_DEF124
	.long	204
	.long	_RTTI_GDK2_DEF125
	.long	208
	.long	_RTTI_GDK2_DEF126
	.long	212
	.long	_RTTI_GDK2_DEF127
	.long	216
	.long	_RTTI_GDK2_DEF128
	.long	220

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKTRAPEZOID
_INIT_GDK2_PGDKTRAPEZOID:
	.byte	0
	.ascii	"\015PGdkTrapezoid"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKTRAPEZOID
_RTTI_GDK2_PGDKTRAPEZOID:
	.byte	0
	.ascii	"\015PGdkTrapezoid"

.const_data
	.align 2
.globl	_INIT_GDK2_TGDKTRAPEZOID
_INIT_GDK2_TGDKTRAPEZOID:
	.byte	13,13
	.ascii	"TGdkTrapezoid"
	.long	48,0

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKTRAPEZOID
_RTTI_GDK2_TGDKTRAPEZOID:
	.byte	13,13
	.ascii	"TGdkTrapezoid"
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
.globl	_INIT_GDK2_PGDKEVENT
_INIT_GDK2_PGDKEVENT:
	.byte	0
	.ascii	"\011PGdkEvent"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKEVENT
_RTTI_GDK2_PGDKEVENT:
	.byte	0
	.ascii	"\011PGdkEvent"

.const_data
	.align 2
.globl	_INIT_GDK2_TGDKEVENTFUNC
_INIT_GDK2_TGDKEVENTFUNC:
	.byte	23,13
	.ascii	"TGdkEventFunc"

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKEVENTFUNC
_RTTI_GDK2_TGDKEVENTFUNC:
	.byte	23,13
	.ascii	"TGdkEventFunc"

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKXEVENT
_INIT_GDK2_PGDKXEVENT:
	.byte	0
	.ascii	"\012PGdkXEvent"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKXEVENT
_RTTI_GDK2_PGDKXEVENT:
	.byte	0
	.ascii	"\012PGdkXEvent"

.const_data
	.align 2
.globl	_INIT_GDK2_TGDKXEVENT
_INIT_GDK2_TGDKXEVENT:
	.byte	23,10
	.ascii	"TGdkXEvent"

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKXEVENT
_RTTI_GDK2_TGDKXEVENT:
	.byte	23,10
	.ascii	"TGdkXEvent"

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKFILTERRETURN
_INIT_GDK2_PGDKFILTERRETURN:
	.byte	0
	.ascii	"\020PGdkFilterReturn"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKFILTERRETURN
_RTTI_GDK2_PGDKFILTERRETURN:
	.byte	0
	.ascii	"\020PGdkFilterReturn"

.const_data
	.align 2
.globl	_INIT_GDK2_TGDKFILTERRETURN
_INIT_GDK2_TGDKFILTERRETURN:
	.byte	3,16
	.ascii	"TGdkFilterReturn"
	.byte	5
	.long	0,2,0
	.byte	19
	.ascii	"GDK_FILTER_CONTINUE"
	.byte	20
	.ascii	"GDK_FILTER_TRANSLATE"
	.byte	17
	.ascii	"GDK_FILTER_REMOVE"
	.byte	4
	.ascii	"gdk2"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKFILTERRETURN
_RTTI_GDK2_TGDKFILTERRETURN:
	.byte	3,16
	.ascii	"TGdkFilterReturn"
	.byte	5
	.long	0,2,0
	.byte	19
	.ascii	"GDK_FILTER_CONTINUE"
	.byte	20
	.ascii	"GDK_FILTER_TRANSLATE"
	.byte	17
	.ascii	"GDK_FILTER_REMOVE"
	.byte	4
	.ascii	"gdk2"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKFILTERRETURN_s2o
_RTTI_GDK2_TGDKFILTERRETURN_s2o:
	.long	3,0
	.long	_RTTI_GDK2_TGDKFILTERRETURN+31
	.long	2
	.long	_RTTI_GDK2_TGDKFILTERRETURN+72
	.long	1
	.long	_RTTI_GDK2_TGDKFILTERRETURN+51

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKFILTERRETURN_o2s
_RTTI_GDK2_TGDKFILTERRETURN_o2s:
	.long	0
	.long	_RTTI_GDK2_TGDKFILTERRETURN+31
	.long	_RTTI_GDK2_TGDKFILTERRETURN+51
	.long	_RTTI_GDK2_TGDKFILTERRETURN+72

.const_data
	.align 2
.globl	_INIT_GDK2_TGDKFILTERFUNC
_INIT_GDK2_TGDKFILTERFUNC:
	.byte	23,14
	.ascii	"TGdkFilterFunc"

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKFILTERFUNC
_RTTI_GDK2_TGDKFILTERFUNC:
	.byte	23,14
	.ascii	"TGdkFilterFunc"

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKEVENTTYPE
_INIT_GDK2_PGDKEVENTTYPE:
	.byte	0
	.ascii	"\015PGdkEventType"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKEVENTTYPE
_RTTI_GDK2_PGDKEVENTTYPE:
	.byte	0
	.ascii	"\015PGdkEventType"

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKEVENTMASK
_INIT_GDK2_PGDKEVENTMASK:
	.byte	0
	.ascii	"\015PGdkEventMask"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKEVENTMASK
_RTTI_GDK2_PGDKEVENTMASK:
	.byte	0
	.ascii	"\015PGdkEventMask"

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKVISIBILITYSTATE
_INIT_GDK2_PGDKVISIBILITYSTATE:
	.byte	0
	.ascii	"\023PGdkVisibilityState"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKVISIBILITYSTATE
_RTTI_GDK2_PGDKVISIBILITYSTATE:
	.byte	0
	.ascii	"\023PGdkVisibilityState"

.const_data
	.align 2
.globl	_INIT_GDK2_TGDKVISIBILITYSTATE
_INIT_GDK2_TGDKVISIBILITYSTATE:
	.byte	3,19
	.ascii	"TGdkVisibilityState"
	.byte	5
	.long	0,2,0
	.byte	25
	.ascii	"GDK_VISIBILITY_UNOBSCURED"
	.byte	22
	.ascii	"GDK_VISIBILITY_PARTIAL"
	.byte	29
	.ascii	"GDK_VISIBILITY_FULLY_OBSCURED"
	.byte	4
	.ascii	"gdk2"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKVISIBILITYSTATE
_RTTI_GDK2_TGDKVISIBILITYSTATE:
	.byte	3,19
	.ascii	"TGdkVisibilityState"
	.byte	5
	.long	0,2,0
	.byte	25
	.ascii	"GDK_VISIBILITY_UNOBSCURED"
	.byte	22
	.ascii	"GDK_VISIBILITY_PARTIAL"
	.byte	29
	.ascii	"GDK_VISIBILITY_FULLY_OBSCURED"
	.byte	4
	.ascii	"gdk2"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKVISIBILITYSTATE_s2o
_RTTI_GDK2_TGDKVISIBILITYSTATE_s2o:
	.long	3,2
	.long	_RTTI_GDK2_TGDKVISIBILITYSTATE+83
	.long	1
	.long	_RTTI_GDK2_TGDKVISIBILITYSTATE+60
	.long	0
	.long	_RTTI_GDK2_TGDKVISIBILITYSTATE+34

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKVISIBILITYSTATE_o2s
_RTTI_GDK2_TGDKVISIBILITYSTATE_o2s:
	.long	0
	.long	_RTTI_GDK2_TGDKVISIBILITYSTATE+34
	.long	_RTTI_GDK2_TGDKVISIBILITYSTATE+60
	.long	_RTTI_GDK2_TGDKVISIBILITYSTATE+83

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKSCROLLDIRECTION
_INIT_GDK2_PGDKSCROLLDIRECTION:
	.byte	0
	.ascii	"\023PGdkScrollDirection"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKSCROLLDIRECTION
_RTTI_GDK2_PGDKSCROLLDIRECTION:
	.byte	0
	.ascii	"\023PGdkScrollDirection"

.const_data
	.align 2
.globl	_INIT_GDK2_TGDKSCROLLDIRECTION
_INIT_GDK2_TGDKSCROLLDIRECTION:
	.byte	3,19
	.ascii	"TGdkScrollDirection"
	.byte	5
	.long	0,3,0
	.byte	13
	.ascii	"GDK_SCROLL_UP"
	.byte	15
	.ascii	"GDK_SCROLL_DOWN"
	.byte	15
	.ascii	"GDK_SCROLL_LEFT"
	.byte	16
	.ascii	"GDK_SCROLL_RIGHT"
	.byte	4
	.ascii	"gdk2"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKSCROLLDIRECTION
_RTTI_GDK2_TGDKSCROLLDIRECTION:
	.byte	3,19
	.ascii	"TGdkScrollDirection"
	.byte	5
	.long	0,3,0
	.byte	13
	.ascii	"GDK_SCROLL_UP"
	.byte	15
	.ascii	"GDK_SCROLL_DOWN"
	.byte	15
	.ascii	"GDK_SCROLL_LEFT"
	.byte	16
	.ascii	"GDK_SCROLL_RIGHT"
	.byte	4
	.ascii	"gdk2"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKSCROLLDIRECTION_s2o
_RTTI_GDK2_TGDKSCROLLDIRECTION_s2o:
	.long	4,1
	.long	_RTTI_GDK2_TGDKSCROLLDIRECTION+48
	.long	2
	.long	_RTTI_GDK2_TGDKSCROLLDIRECTION+64
	.long	3
	.long	_RTTI_GDK2_TGDKSCROLLDIRECTION+80
	.long	0
	.long	_RTTI_GDK2_TGDKSCROLLDIRECTION+34

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKSCROLLDIRECTION_o2s
_RTTI_GDK2_TGDKSCROLLDIRECTION_o2s:
	.long	0
	.long	_RTTI_GDK2_TGDKSCROLLDIRECTION+34
	.long	_RTTI_GDK2_TGDKSCROLLDIRECTION+48
	.long	_RTTI_GDK2_TGDKSCROLLDIRECTION+64
	.long	_RTTI_GDK2_TGDKSCROLLDIRECTION+80

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKNOTIFYTYPE
_INIT_GDK2_PGDKNOTIFYTYPE:
	.byte	0
	.ascii	"\016PGdkNotifyType"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKNOTIFYTYPE
_RTTI_GDK2_PGDKNOTIFYTYPE:
	.byte	0
	.ascii	"\016PGdkNotifyType"

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKCROSSINGMODE
_INIT_GDK2_PGDKCROSSINGMODE:
	.byte	0
	.ascii	"\020PGdkCrossingMode"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKCROSSINGMODE
_RTTI_GDK2_PGDKCROSSINGMODE:
	.byte	0
	.ascii	"\020PGdkCrossingMode"

.const_data
	.align 2
.globl	_INIT_GDK2_TGDKCROSSINGMODE
_INIT_GDK2_TGDKCROSSINGMODE:
	.byte	3,16
	.ascii	"TGdkCrossingMode"
	.byte	5
	.long	0,2,0
	.byte	19
	.ascii	"GDK_CROSSING_NORMAL"
	.byte	17
	.ascii	"GDK_CROSSING_GRAB"
	.byte	19
	.ascii	"GDK_CROSSING_UNGRAB"
	.byte	4
	.ascii	"gdk2"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKCROSSINGMODE
_RTTI_GDK2_TGDKCROSSINGMODE:
	.byte	3,16
	.ascii	"TGdkCrossingMode"
	.byte	5
	.long	0,2,0
	.byte	19
	.ascii	"GDK_CROSSING_NORMAL"
	.byte	17
	.ascii	"GDK_CROSSING_GRAB"
	.byte	19
	.ascii	"GDK_CROSSING_UNGRAB"
	.byte	4
	.ascii	"gdk2"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKCROSSINGMODE_s2o
_RTTI_GDK2_TGDKCROSSINGMODE_s2o:
	.long	3,1
	.long	_RTTI_GDK2_TGDKCROSSINGMODE+51
	.long	0
	.long	_RTTI_GDK2_TGDKCROSSINGMODE+31
	.long	2
	.long	_RTTI_GDK2_TGDKCROSSINGMODE+69

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKCROSSINGMODE_o2s
_RTTI_GDK2_TGDKCROSSINGMODE_o2s:
	.long	0
	.long	_RTTI_GDK2_TGDKCROSSINGMODE+31
	.long	_RTTI_GDK2_TGDKCROSSINGMODE+51
	.long	_RTTI_GDK2_TGDKCROSSINGMODE+69

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKPROPERTYSTATE
_INIT_GDK2_PGDKPROPERTYSTATE:
	.byte	0
	.ascii	"\021PGdkPropertyState"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKPROPERTYSTATE
_RTTI_GDK2_PGDKPROPERTYSTATE:
	.byte	0
	.ascii	"\021PGdkPropertyState"

.const_data
	.align 2
.globl	_INIT_GDK2_TGDKPROPERTYSTATE
_INIT_GDK2_TGDKPROPERTYSTATE:
	.byte	3,17
	.ascii	"TGdkPropertyState"
	.byte	5
	.long	0,1,0
	.byte	22
	.ascii	"GDK_PROPERTY_NEW_VALUE"
	.byte	25
	.ascii	"GDK_PROPERTY_STATE_DELETE"
	.byte	4
	.ascii	"gdk2"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKPROPERTYSTATE
_RTTI_GDK2_TGDKPROPERTYSTATE:
	.byte	3,17
	.ascii	"TGdkPropertyState"
	.byte	5
	.long	0,1,0
	.byte	22
	.ascii	"GDK_PROPERTY_NEW_VALUE"
	.byte	25
	.ascii	"GDK_PROPERTY_STATE_DELETE"
	.byte	4
	.ascii	"gdk2"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKPROPERTYSTATE_s2o
_RTTI_GDK2_TGDKPROPERTYSTATE_s2o:
	.long	2,0
	.long	_RTTI_GDK2_TGDKPROPERTYSTATE+32
	.long	1
	.long	_RTTI_GDK2_TGDKPROPERTYSTATE+55

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKPROPERTYSTATE_o2s
_RTTI_GDK2_TGDKPROPERTYSTATE_o2s:
	.long	0
	.long	_RTTI_GDK2_TGDKPROPERTYSTATE+32
	.long	_RTTI_GDK2_TGDKPROPERTYSTATE+55

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKWINDOWSTATE
_INIT_GDK2_PGDKWINDOWSTATE:
	.byte	0
	.ascii	"\017PGdkWindowState"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKWINDOWSTATE
_RTTI_GDK2_PGDKWINDOWSTATE:
	.byte	0
	.ascii	"\017PGdkWindowState"

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKSETTINGACTION
_INIT_GDK2_PGDKSETTINGACTION:
	.byte	0
	.ascii	"\021PGdkSettingAction"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKSETTINGACTION
_RTTI_GDK2_PGDKSETTINGACTION:
	.byte	0
	.ascii	"\021PGdkSettingAction"

.const_data
	.align 2
.globl	_INIT_GDK2_TGDKSETTINGACTION
_INIT_GDK2_TGDKSETTINGACTION:
	.byte	3,17
	.ascii	"TGdkSettingAction"
	.byte	5
	.long	0,2,0
	.byte	22
	.ascii	"GDK_SETTING_ACTION_NEW"
	.byte	26
	.ascii	"GDK_SETTING_ACTION_CHANGED"
	.byte	26
	.ascii	"GDK_SETTING_ACTION_DELETED"
	.byte	4
	.ascii	"gdk2"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKSETTINGACTION
_RTTI_GDK2_TGDKSETTINGACTION:
	.byte	3,17
	.ascii	"TGdkSettingAction"
	.byte	5
	.long	0,2,0
	.byte	22
	.ascii	"GDK_SETTING_ACTION_NEW"
	.byte	26
	.ascii	"GDK_SETTING_ACTION_CHANGED"
	.byte	26
	.ascii	"GDK_SETTING_ACTION_DELETED"
	.byte	4
	.ascii	"gdk2"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKSETTINGACTION_s2o
_RTTI_GDK2_TGDKSETTINGACTION_s2o:
	.long	3,1
	.long	_RTTI_GDK2_TGDKSETTINGACTION+55
	.long	2
	.long	_RTTI_GDK2_TGDKSETTINGACTION+82
	.long	0
	.long	_RTTI_GDK2_TGDKSETTINGACTION+32

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKSETTINGACTION_o2s
_RTTI_GDK2_TGDKSETTINGACTION_o2s:
	.long	0
	.long	_RTTI_GDK2_TGDKSETTINGACTION+32
	.long	_RTTI_GDK2_TGDKSETTINGACTION+55
	.long	_RTTI_GDK2_TGDKSETTINGACTION+82

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKOWNERCHANGE
_INIT_GDK2_PGDKOWNERCHANGE:
	.byte	0
	.ascii	"\017PGdkOwnerChange"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKOWNERCHANGE
_RTTI_GDK2_PGDKOWNERCHANGE:
	.byte	0
	.ascii	"\017PGdkOwnerChange"

.const_data
	.align 2
.globl	_INIT_GDK2_TGDKOWNERCHANGE
_INIT_GDK2_TGDKOWNERCHANGE:
	.byte	3,15
	.ascii	"TGdkOwnerChange"
	.byte	5
	.long	0,2,0
	.byte	26
	.ascii	"GDK_OWNER_CHANGE_NEW_OWNER"
	.byte	24
	.ascii	"GDK_OWNER_CHANGE_DESTROY"
	.byte	22
	.ascii	"GDK_OWNER_CHANGE_CLOSE"
	.byte	4
	.ascii	"gdk2"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKOWNERCHANGE
_RTTI_GDK2_TGDKOWNERCHANGE:
	.byte	3,15
	.ascii	"TGdkOwnerChange"
	.byte	5
	.long	0,2,0
	.byte	26
	.ascii	"GDK_OWNER_CHANGE_NEW_OWNER"
	.byte	24
	.ascii	"GDK_OWNER_CHANGE_DESTROY"
	.byte	22
	.ascii	"GDK_OWNER_CHANGE_CLOSE"
	.byte	4
	.ascii	"gdk2"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKOWNERCHANGE_s2o
_RTTI_GDK2_TGDKOWNERCHANGE_s2o:
	.long	3,2
	.long	_RTTI_GDK2_TGDKOWNERCHANGE+82
	.long	1
	.long	_RTTI_GDK2_TGDKOWNERCHANGE+57
	.long	0
	.long	_RTTI_GDK2_TGDKOWNERCHANGE+30

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKOWNERCHANGE_o2s
_RTTI_GDK2_TGDKOWNERCHANGE_o2s:
	.long	0
	.long	_RTTI_GDK2_TGDKOWNERCHANGE+30
	.long	_RTTI_GDK2_TGDKOWNERCHANGE+57
	.long	_RTTI_GDK2_TGDKOWNERCHANGE+82

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKEVENTANY
_INIT_GDK2_PGDKEVENTANY:
	.byte	0
	.ascii	"\014PGdkEventAny"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKEVENTANY
_RTTI_GDK2_PGDKEVENTANY:
	.byte	0
	.ascii	"\014PGdkEventAny"

.const_data
	.align 2
.globl	_INIT_GDK2_TGDKEVENTANY
_INIT_GDK2_TGDKEVENTANY:
	.byte	13,12
	.ascii	"TGdkEventAny"
	.long	12,0

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKEVENTANY
_RTTI_GDK2_TGDKEVENTANY:
	.byte	13,12
	.ascii	"TGdkEventAny"
	.long	12,3
	.long	_RTTI_SYSTEM_LONGINT
	.long	0
	.long	_RTTI_GDK2_PGDKWINDOW
	.long	4
	.long	_RTTI_SYSTEM_SHORTINT
	.long	8

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKEVENTEXPOSE
_INIT_GDK2_PGDKEVENTEXPOSE:
	.byte	0
	.ascii	"\017PGdkEventExpose"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKEVENTEXPOSE
_RTTI_GDK2_PGDKEVENTEXPOSE:
	.byte	0
	.ascii	"\017PGdkEventExpose"

.const_data
	.align 2
.globl	_INIT_GDK2_TGDKEVENTEXPOSE
_INIT_GDK2_TGDKEVENTEXPOSE:
	.byte	13,15
	.ascii	"TGdkEventExpose"
	.long	36,0

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKEVENTEXPOSE
_RTTI_GDK2_TGDKEVENTEXPOSE:
	.byte	13,15
	.ascii	"TGdkEventExpose"
	.long	36,6
	.long	_RTTI_SYSTEM_LONGINT
	.long	0
	.long	_RTTI_GDK2_PGDKWINDOW
	.long	4
	.long	_RTTI_SYSTEM_SHORTINT
	.long	8
	.long	_RTTI_GDK2_TGDKRECTANGLE
	.long	12
	.long	_RTTI_GDK2_PGDKREGION
	.long	28
	.long	_RTTI_SYSTEM_LONGINT
	.long	32

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKEVENTNOEXPOSE
_INIT_GDK2_PGDKEVENTNOEXPOSE:
	.byte	0
	.ascii	"\021PGdkEventNoExpose"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKEVENTNOEXPOSE
_RTTI_GDK2_PGDKEVENTNOEXPOSE:
	.byte	0
	.ascii	"\021PGdkEventNoExpose"

.const_data
	.align 2
.globl	_INIT_GDK2_TGDKEVENTNOEXPOSE
_INIT_GDK2_TGDKEVENTNOEXPOSE:
	.byte	13,17
	.ascii	"TGdkEventNoExpose"
	.long	12,0

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKEVENTNOEXPOSE
_RTTI_GDK2_TGDKEVENTNOEXPOSE:
	.byte	13,17
	.ascii	"TGdkEventNoExpose"
	.long	12,3
	.long	_RTTI_SYSTEM_LONGINT
	.long	0
	.long	_RTTI_GDK2_PGDKWINDOW
	.long	4
	.long	_RTTI_SYSTEM_SHORTINT
	.long	8

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKEVENTVISIBILITY
_INIT_GDK2_PGDKEVENTVISIBILITY:
	.byte	0
	.ascii	"\023PGdkEventVisibility"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKEVENTVISIBILITY
_RTTI_GDK2_PGDKEVENTVISIBILITY:
	.byte	0
	.ascii	"\023PGdkEventVisibility"

.const_data
	.align 2
.globl	_INIT_GDK2_TGDKEVENTVISIBILITY
_INIT_GDK2_TGDKEVENTVISIBILITY:
	.byte	13,19
	.ascii	"TGdkEventVisibility"
	.long	16,0

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKEVENTVISIBILITY
_RTTI_GDK2_TGDKEVENTVISIBILITY:
	.byte	13,19
	.ascii	"TGdkEventVisibility"
	.long	16,4
	.long	_RTTI_SYSTEM_LONGINT
	.long	0
	.long	_RTTI_GDK2_PGDKWINDOW
	.long	4
	.long	_RTTI_SYSTEM_SHORTINT
	.long	8
	.long	_RTTI_GDK2_TGDKVISIBILITYSTATE
	.long	12

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKEVENTMOTION
_INIT_GDK2_PGDKEVENTMOTION:
	.byte	0
	.ascii	"\017PGdkEventMotion"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKEVENTMOTION
_RTTI_GDK2_PGDKEVENTMOTION:
	.byte	0
	.ascii	"\017PGdkEventMotion"

.const_data
	.align 2
.globl	_INIT_GDK2_TGDKEVENTMOTION
_INIT_GDK2_TGDKEVENTMOTION:
	.byte	13,15
	.ascii	"TGdkEventMotion"
	.long	64,0

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKEVENTMOTION
_RTTI_GDK2_TGDKEVENTMOTION:
	.byte	13,15
	.ascii	"TGdkEventMotion"
	.long	64,12
	.long	_RTTI_SYSTEM_LONGINT
	.long	0
	.long	_RTTI_GDK2_PGDKWINDOW
	.long	4
	.long	_RTTI_SYSTEM_SHORTINT
	.long	8
	.long	_RTTI_SYSTEM_LONGWORD
	.long	12
	.long	_RTTI_SYSTEM_DOUBLE
	.long	16
	.long	_RTTI_SYSTEM_DOUBLE
	.long	24
	.long	_RTTI_GLIB2_PGDOUBLE
	.long	32
	.long	_RTTI_SYSTEM_LONGWORD
	.long	36
	.long	_RTTI_SYSTEM_SMALLINT
	.long	40
	.long	_RTTI_GDK2_PGDKDEVICE
	.long	44
	.long	_RTTI_SYSTEM_DOUBLE
	.long	48
	.long	_RTTI_SYSTEM_DOUBLE
	.long	56

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKEVENTBUTTON
_INIT_GDK2_PGDKEVENTBUTTON:
	.byte	0
	.ascii	"\017PGdkEventButton"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKEVENTBUTTON
_RTTI_GDK2_PGDKEVENTBUTTON:
	.byte	0
	.ascii	"\017PGdkEventButton"

.const_data
	.align 2
.globl	_INIT_GDK2_TGDKEVENTBUTTON
_INIT_GDK2_TGDKEVENTBUTTON:
	.byte	13,15
	.ascii	"TGdkEventButton"
	.long	64,0

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKEVENTBUTTON
_RTTI_GDK2_TGDKEVENTBUTTON:
	.byte	13,15
	.ascii	"TGdkEventButton"
	.long	64,12
	.long	_RTTI_SYSTEM_LONGINT
	.long	0
	.long	_RTTI_GDK2_PGDKWINDOW
	.long	4
	.long	_RTTI_SYSTEM_SHORTINT
	.long	8
	.long	_RTTI_SYSTEM_LONGWORD
	.long	12
	.long	_RTTI_SYSTEM_DOUBLE
	.long	16
	.long	_RTTI_SYSTEM_DOUBLE
	.long	24
	.long	_RTTI_GLIB2_PGDOUBLE
	.long	32
	.long	_RTTI_SYSTEM_LONGWORD
	.long	36
	.long	_RTTI_SYSTEM_LONGWORD
	.long	40
	.long	_RTTI_GDK2_PGDKDEVICE
	.long	44
	.long	_RTTI_SYSTEM_DOUBLE
	.long	48
	.long	_RTTI_SYSTEM_DOUBLE
	.long	56

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKEVENTSCROLL
_INIT_GDK2_PGDKEVENTSCROLL:
	.byte	0
	.ascii	"\017PGdkEventScroll"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKEVENTSCROLL
_RTTI_GDK2_PGDKEVENTSCROLL:
	.byte	0
	.ascii	"\017PGdkEventScroll"

.const_data
	.align 2
.globl	_INIT_GDK2_TGDKEVENTSCROLL
_INIT_GDK2_TGDKEVENTSCROLL:
	.byte	13,15
	.ascii	"TGdkEventScroll"
	.long	60,0

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKEVENTSCROLL
_RTTI_GDK2_TGDKEVENTSCROLL:
	.byte	13,15
	.ascii	"TGdkEventScroll"
	.long	60,11
	.long	_RTTI_SYSTEM_LONGINT
	.long	0
	.long	_RTTI_GDK2_PGDKWINDOW
	.long	4
	.long	_RTTI_SYSTEM_SHORTINT
	.long	8
	.long	_RTTI_SYSTEM_LONGWORD
	.long	12
	.long	_RTTI_SYSTEM_DOUBLE
	.long	16
	.long	_RTTI_SYSTEM_DOUBLE
	.long	24
	.long	_RTTI_SYSTEM_LONGWORD
	.long	32
	.long	_RTTI_GDK2_TGDKSCROLLDIRECTION
	.long	36
	.long	_RTTI_GDK2_PGDKDEVICE
	.long	40
	.long	_RTTI_SYSTEM_DOUBLE
	.long	44
	.long	_RTTI_SYSTEM_DOUBLE
	.long	52

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKEVENTKEY
_INIT_GDK2_PGDKEVENTKEY:
	.byte	0
	.ascii	"\014PGdkEventKey"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKEVENTKEY
_RTTI_GDK2_PGDKEVENTKEY:
	.byte	0
	.ascii	"\014PGdkEventKey"

.const_data
	.align 2
.globl	_INIT_GDK2_TGDKEVENTKEY
_INIT_GDK2_TGDKEVENTKEY:
	.byte	13,12
	.ascii	"TGdkEventKey"
	.long	36,0

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKEVENTKEY
_RTTI_GDK2_TGDKEVENTKEY:
	.byte	13,12
	.ascii	"TGdkEventKey"
	.long	36,10
	.long	_RTTI_SYSTEM_LONGINT
	.long	0
	.long	_RTTI_GDK2_PGDKWINDOW
	.long	4
	.long	_RTTI_SYSTEM_SHORTINT
	.long	8
	.long	_RTTI_SYSTEM_LONGWORD
	.long	12
	.long	_RTTI_SYSTEM_LONGWORD
	.long	16
	.long	_RTTI_SYSTEM_LONGWORD
	.long	20
	.long	_RTTI_SYSTEM_LONGINT
	.long	24
	.long	_RTTI_GLIB2_PGCHAR
	.long	28
	.long	_RTTI_SYSTEM_WORD
	.long	32
	.long	_RTTI_SYSTEM_BYTE
	.long	34

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKEVENTCROSSING
_INIT_GDK2_PGDKEVENTCROSSING:
	.byte	0
	.ascii	"\021PGdkEventCrossing"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKEVENTCROSSING
_RTTI_GDK2_PGDKEVENTCROSSING:
	.byte	0
	.ascii	"\021PGdkEventCrossing"

.const_data
	.align 2
.globl	_INIT_GDK2_TGDKEVENTCROSSING
_INIT_GDK2_TGDKEVENTCROSSING:
	.byte	13,17
	.ascii	"TGdkEventCrossing"
	.long	68,0

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKEVENTCROSSING
_RTTI_GDK2_TGDKEVENTCROSSING:
	.byte	13,17
	.ascii	"TGdkEventCrossing"
	.long	68,13
	.long	_RTTI_SYSTEM_LONGINT
	.long	0
	.long	_RTTI_GDK2_PGDKWINDOW
	.long	4
	.long	_RTTI_SYSTEM_SHORTINT
	.long	8
	.long	_RTTI_GDK2_PGDKWINDOW
	.long	12
	.long	_RTTI_SYSTEM_LONGWORD
	.long	16
	.long	_RTTI_SYSTEM_DOUBLE
	.long	20
	.long	_RTTI_SYSTEM_DOUBLE
	.long	28
	.long	_RTTI_SYSTEM_DOUBLE
	.long	36
	.long	_RTTI_SYSTEM_DOUBLE
	.long	44
	.long	_RTTI_GDK2_TGDKCROSSINGMODE
	.long	52
	.long	_RTTI_SYSTEM_LONGINT
	.long	56
	.long	_RTTI_SYSTEM_BOOLEAN32
	.long	60
	.long	_RTTI_SYSTEM_LONGWORD
	.long	64

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKEVENTFOCUS
_INIT_GDK2_PGDKEVENTFOCUS:
	.byte	0
	.ascii	"\016PGdkEventFocus"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKEVENTFOCUS
_RTTI_GDK2_PGDKEVENTFOCUS:
	.byte	0
	.ascii	"\016PGdkEventFocus"

.const_data
	.align 2
.globl	_INIT_GDK2_TGDKEVENTFOCUS
_INIT_GDK2_TGDKEVENTFOCUS:
	.byte	13,14
	.ascii	"TGdkEventFocus"
	.long	12,0

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKEVENTFOCUS
_RTTI_GDK2_TGDKEVENTFOCUS:
	.byte	13,14
	.ascii	"TGdkEventFocus"
	.long	12,4
	.long	_RTTI_SYSTEM_LONGINT
	.long	0
	.long	_RTTI_GDK2_PGDKWINDOW
	.long	4
	.long	_RTTI_SYSTEM_SHORTINT
	.long	8
	.long	_RTTI_SYSTEM_SMALLINT
	.long	10

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKEVENTCONFIGURE
_INIT_GDK2_PGDKEVENTCONFIGURE:
	.byte	0
	.ascii	"\022PGdkEventConfigure"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKEVENTCONFIGURE
_RTTI_GDK2_PGDKEVENTCONFIGURE:
	.byte	0
	.ascii	"\022PGdkEventConfigure"

.const_data
	.align 2
.globl	_INIT_GDK2_TGDKEVENTCONFIGURE
_INIT_GDK2_TGDKEVENTCONFIGURE:
	.byte	13,18
	.ascii	"TGdkEventConfigure"
	.long	28,0

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKEVENTCONFIGURE
_RTTI_GDK2_TGDKEVENTCONFIGURE:
	.byte	13,18
	.ascii	"TGdkEventConfigure"
	.long	28,7
	.long	_RTTI_SYSTEM_LONGINT
	.long	0
	.long	_RTTI_GDK2_PGDKWINDOW
	.long	4
	.long	_RTTI_SYSTEM_SHORTINT
	.long	8
	.long	_RTTI_SYSTEM_LONGINT
	.long	12
	.long	_RTTI_SYSTEM_LONGINT
	.long	16
	.long	_RTTI_SYSTEM_LONGINT
	.long	20
	.long	_RTTI_SYSTEM_LONGINT
	.long	24

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKEVENTPROPERTY
_INIT_GDK2_PGDKEVENTPROPERTY:
	.byte	0
	.ascii	"\021PGdkEventProperty"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKEVENTPROPERTY
_RTTI_GDK2_PGDKEVENTPROPERTY:
	.byte	0
	.ascii	"\021PGdkEventProperty"

.const_data
	.align 2
.globl	_INIT_GDK2_TGDKEVENTPROPERTY
_INIT_GDK2_TGDKEVENTPROPERTY:
	.byte	13,17
	.ascii	"TGdkEventProperty"
	.long	24,0

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKEVENTPROPERTY
_RTTI_GDK2_TGDKEVENTPROPERTY:
	.byte	13,17
	.ascii	"TGdkEventProperty"
	.long	24,6
	.long	_RTTI_SYSTEM_LONGINT
	.long	0
	.long	_RTTI_GDK2_PGDKWINDOW
	.long	4
	.long	_RTTI_SYSTEM_SHORTINT
	.long	8
	.long	_RTTI_SYSTEM_LONGWORD
	.long	12
	.long	_RTTI_SYSTEM_LONGWORD
	.long	16
	.long	_RTTI_SYSTEM_LONGWORD
	.long	20

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKEVENTSELECTION
_INIT_GDK2_PGDKEVENTSELECTION:
	.byte	0
	.ascii	"\022PGdkEventSelection"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKEVENTSELECTION
_RTTI_GDK2_PGDKEVENTSELECTION:
	.byte	0
	.ascii	"\022PGdkEventSelection"

.const_data
	.align 2
.globl	_INIT_GDK2_TGDKEVENTSELECTION
_INIT_GDK2_TGDKEVENTSELECTION:
	.byte	13,18
	.ascii	"TGdkEventSelection"
	.long	32,0

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKEVENTSELECTION
_RTTI_GDK2_TGDKEVENTSELECTION:
	.byte	13,18
	.ascii	"TGdkEventSelection"
	.long	32,8
	.long	_RTTI_SYSTEM_LONGINT
	.long	0
	.long	_RTTI_GDK2_PGDKWINDOW
	.long	4
	.long	_RTTI_SYSTEM_SHORTINT
	.long	8
	.long	_RTTI_SYSTEM_LONGWORD
	.long	12
	.long	_RTTI_SYSTEM_LONGWORD
	.long	16
	.long	_RTTI_SYSTEM_LONGWORD
	.long	20
	.long	_RTTI_SYSTEM_LONGWORD
	.long	24
	.long	_RTTI_SYSTEM_LONGWORD
	.long	28

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKEVENTPROXIMITY
_INIT_GDK2_PGDKEVENTPROXIMITY:
	.byte	0
	.ascii	"\022PGdkEventProximity"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKEVENTPROXIMITY
_RTTI_GDK2_PGDKEVENTPROXIMITY:
	.byte	0
	.ascii	"\022PGdkEventProximity"

.const_data
	.align 2
.globl	_INIT_GDK2_TGDKEVENTPROXIMITY
_INIT_GDK2_TGDKEVENTPROXIMITY:
	.byte	13,18
	.ascii	"TGdkEventProximity"
	.long	20,0

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKEVENTPROXIMITY
_RTTI_GDK2_TGDKEVENTPROXIMITY:
	.byte	13,18
	.ascii	"TGdkEventProximity"
	.long	20,5
	.long	_RTTI_SYSTEM_LONGINT
	.long	0
	.long	_RTTI_GDK2_PGDKWINDOW
	.long	4
	.long	_RTTI_SYSTEM_SHORTINT
	.long	8
	.long	_RTTI_SYSTEM_LONGWORD
	.long	12
	.long	_RTTI_GDK2_PGDKDEVICE
	.long	16

.const_data
	.align 2
.globl	_INIT_GDK2_PMATDUMMY
_INIT_GDK2_PMATDUMMY:
	.byte	0
	.ascii	"\011PmatDUMMY"

.const_data
	.align 2
.globl	_RTTI_GDK2_PMATDUMMY
_RTTI_GDK2_PMATDUMMY:
	.byte	0
	.ascii	"\011PmatDUMMY"

.const_data
	.align 2
.globl	_INIT_GDK2_TMATDUMMY
_INIT_GDK2_TMATDUMMY:
	.byte	13,9
	.ascii	"TmatDUMMY"
	.long	20,0

.const_data
	.align 2
.globl	_RTTI_GDK2_DEF185
_RTTI_GDK2_DEF185:
	.byte	12
	.ascii	"\000"
	.long	1,20
	.long	_RTTI_SYSTEM_CHAR
	.long	-1

.const_data
	.align 2
.globl	_RTTI_GDK2_DEF186
_RTTI_GDK2_DEF186:
	.byte	12
	.ascii	"\000"
	.long	2,10
	.long	_RTTI_SYSTEM_SMALLINT
	.long	2

.const_data
	.align 2
.globl	_RTTI_GDK2_DEF187
_RTTI_GDK2_DEF187:
	.byte	12
	.ascii	"\000"
	.long	4,5
	.long	_RTTI_SYSTEM_LONGINT
	.long	3

.const_data
	.align 2
.globl	_RTTI_GDK2_TMATDUMMY
_RTTI_GDK2_TMATDUMMY:
	.byte	13,9
	.ascii	"TmatDUMMY"
	.long	20,3
	.long	_RTTI_GDK2_DEF185
	.long	0
	.long	_RTTI_GDK2_DEF186
	.long	0
	.long	_RTTI_GDK2_DEF187
	.long	0

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKEVENTCLIENT
_INIT_GDK2_PGDKEVENTCLIENT:
	.byte	0
	.ascii	"\017PGdkEventClient"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKEVENTCLIENT
_RTTI_GDK2_PGDKEVENTCLIENT:
	.byte	0
	.ascii	"\017PGdkEventClient"

.const_data
	.align 2
.globl	_INIT_GDK2_TGDKEVENTCLIENT
_INIT_GDK2_TGDKEVENTCLIENT:
	.byte	13,15
	.ascii	"TGdkEventClient"
	.long	40,0

.const_data
	.align 2
.globl	_RTTI_GDK2_DEF192
_RTTI_GDK2_DEF192:
	.byte	12
	.ascii	"\000"
	.long	1,20
	.long	_RTTI_SYSTEM_CHAR
	.long	-1

.const_data
	.align 2
.globl	_RTTI_GDK2_DEF193
_RTTI_GDK2_DEF193:
	.byte	12
	.ascii	"\000"
	.long	2,10
	.long	_RTTI_SYSTEM_SMALLINT
	.long	2

.const_data
	.align 2
.globl	_RTTI_GDK2_DEF194
_RTTI_GDK2_DEF194:
	.byte	12
	.ascii	"\000"
	.long	4,5
	.long	_RTTI_SYSTEM_LONGINT
	.long	3

.const_data
	.align 2
.globl	_RTTI_GDK2_DEF190
_RTTI_GDK2_DEF190:
	.byte	13
	.ascii	"\000"
	.long	20,3
	.long	_RTTI_GDK2_DEF192
	.long	0
	.long	_RTTI_GDK2_DEF193
	.long	0
	.long	_RTTI_GDK2_DEF194
	.long	0

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKEVENTCLIENT
_RTTI_GDK2_TGDKEVENTCLIENT:
	.byte	13,15
	.ascii	"TGdkEventClient"
	.long	40,6
	.long	_RTTI_SYSTEM_LONGINT
	.long	0
	.long	_RTTI_GDK2_PGDKWINDOW
	.long	4
	.long	_RTTI_SYSTEM_SHORTINT
	.long	8
	.long	_RTTI_SYSTEM_LONGWORD
	.long	12
	.long	_RTTI_SYSTEM_WORD
	.long	16
	.long	_RTTI_GDK2_DEF190
	.long	20

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKEVENTSETTING
_INIT_GDK2_PGDKEVENTSETTING:
	.byte	0
	.ascii	"\020PGdkEventSetting"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKEVENTSETTING
_RTTI_GDK2_PGDKEVENTSETTING:
	.byte	0
	.ascii	"\020PGdkEventSetting"

.const_data
	.align 2
.globl	_INIT_GDK2_TGDKEVENTSETTING
_INIT_GDK2_TGDKEVENTSETTING:
	.byte	13,16
	.ascii	"TGdkEventSetting"
	.long	20,0

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKEVENTSETTING
_RTTI_GDK2_TGDKEVENTSETTING:
	.byte	13,16
	.ascii	"TGdkEventSetting"
	.long	20,5
	.long	_RTTI_SYSTEM_LONGINT
	.long	0
	.long	_RTTI_GDK2_PGDKWINDOW
	.long	4
	.long	_RTTI_SYSTEM_SHORTINT
	.long	8
	.long	_RTTI_GDK2_TGDKSETTINGACTION
	.long	12
	.long	_RTTI_SYSTEM_PCHAR
	.long	16

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKEVENTOWNERCHANGE
_INIT_GDK2_PGDKEVENTOWNERCHANGE:
	.byte	0
	.ascii	"\024PGdkEventOwnerChange"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKEVENTOWNERCHANGE
_RTTI_GDK2_PGDKEVENTOWNERCHANGE:
	.byte	0
	.ascii	"\024PGdkEventOwnerChange"

.const_data
	.align 2
.globl	_INIT_GDK2_TGDKEVENTOWNERCHANGE
_INIT_GDK2_TGDKEVENTOWNERCHANGE:
	.byte	13,20
	.ascii	"TGdkEventOwnerChange"
	.long	32,0

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKEVENTOWNERCHANGE
_RTTI_GDK2_TGDKEVENTOWNERCHANGE:
	.byte	13,20
	.ascii	"TGdkEventOwnerChange"
	.long	32,8
	.long	_RTTI_SYSTEM_LONGINT
	.long	0
	.long	_RTTI_GDK2_PGDKWINDOW
	.long	4
	.long	_RTTI_SYSTEM_SHORTINT
	.long	8
	.long	_RTTI_SYSTEM_LONGWORD
	.long	12
	.long	_RTTI_GDK2_TGDKOWNERCHANGE
	.long	16
	.long	_RTTI_SYSTEM_LONGWORD
	.long	20
	.long	_RTTI_SYSTEM_LONGWORD
	.long	24
	.long	_RTTI_SYSTEM_LONGWORD
	.long	28

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKEVENTWINDOWSTATE
_INIT_GDK2_PGDKEVENTWINDOWSTATE:
	.byte	0
	.ascii	"\024PGdkEventWindowState"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKEVENTWINDOWSTATE
_RTTI_GDK2_PGDKEVENTWINDOWSTATE:
	.byte	0
	.ascii	"\024PGdkEventWindowState"

.const_data
	.align 2
.globl	_INIT_GDK2_TGDKEVENTWINDOWSTATE
_INIT_GDK2_TGDKEVENTWINDOWSTATE:
	.byte	13,20
	.ascii	"TGdkEventWindowState"
	.long	20,0

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKEVENTWINDOWSTATE
_RTTI_GDK2_TGDKEVENTWINDOWSTATE:
	.byte	13,20
	.ascii	"TGdkEventWindowState"
	.long	20,5
	.long	_RTTI_SYSTEM_LONGINT
	.long	0
	.long	_RTTI_GDK2_PGDKWINDOW
	.long	4
	.long	_RTTI_SYSTEM_SHORTINT
	.long	8
	.long	_RTTI_SYSTEM_LONGINT
	.long	12
	.long	_RTTI_SYSTEM_LONGINT
	.long	16

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKEVENTDND
_INIT_GDK2_PGDKEVENTDND:
	.byte	0
	.ascii	"\014PGdkEventDND"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKEVENTDND
_RTTI_GDK2_PGDKEVENTDND:
	.byte	0
	.ascii	"\014PGdkEventDND"

.const_data
	.align 2
.globl	_INIT_GDK2_TGDKEVENTDND
_INIT_GDK2_TGDKEVENTDND:
	.byte	13,12
	.ascii	"TGdkEventDND"
	.long	24,0

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKEVENTDND
_RTTI_GDK2_TGDKEVENTDND:
	.byte	13,12
	.ascii	"TGdkEventDND"
	.long	24,7
	.long	_RTTI_SYSTEM_LONGINT
	.long	0
	.long	_RTTI_GDK2_PGDKWINDOW
	.long	4
	.long	_RTTI_SYSTEM_SHORTINT
	.long	8
	.long	_RTTI_GDK2_PGDKDRAGCONTEXT
	.long	12
	.long	_RTTI_SYSTEM_LONGWORD
	.long	16
	.long	_RTTI_SYSTEM_SMALLINT
	.long	20
	.long	_RTTI_SYSTEM_SMALLINT
	.long	22

.const_data
	.align 2
.globl	_INIT_GDK2_TGDKEVENT
_INIT_GDK2_TGDKEVENT:
	.byte	13,9
	.ascii	"TGdkEvent"
	.long	68,0

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKEVENT
_RTTI_GDK2_TGDKEVENT:
	.byte	13,9
	.ascii	"TGdkEvent"
	.long	68,19
	.long	_RTTI_SYSTEM_LONGINT
	.long	0
	.long	_RTTI_GDK2_TGDKEVENTANY
	.long	0
	.long	_RTTI_GDK2_TGDKEVENTEXPOSE
	.long	0
	.long	_RTTI_GDK2_TGDKEVENTNOEXPOSE
	.long	0
	.long	_RTTI_GDK2_TGDKEVENTVISIBILITY
	.long	0
	.long	_RTTI_GDK2_TGDKEVENTMOTION
	.long	0
	.long	_RTTI_GDK2_TGDKEVENTBUTTON
	.long	0
	.long	_RTTI_GDK2_TGDKEVENTSCROLL
	.long	0
	.long	_RTTI_GDK2_TGDKEVENTKEY
	.long	0
	.long	_RTTI_GDK2_TGDKEVENTCROSSING
	.long	0
	.long	_RTTI_GDK2_TGDKEVENTFOCUS
	.long	0
	.long	_RTTI_GDK2_TGDKEVENTCONFIGURE
	.long	0
	.long	_RTTI_GDK2_TGDKEVENTPROPERTY
	.long	0
	.long	_RTTI_GDK2_TGDKEVENTSELECTION
	.long	0
	.long	_RTTI_GDK2_TGDKEVENTPROXIMITY
	.long	0
	.long	_RTTI_GDK2_TGDKEVENTCLIENT
	.long	0
	.long	_RTTI_GDK2_TGDKEVENTDND
	.long	0
	.long	_RTTI_GDK2_TGDKEVENTWINDOWSTATE
	.long	0
	.long	_RTTI_GDK2_TGDKEVENTSETTING
	.long	0

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKGCCLASS
_INIT_GDK2_PGDKGCCLASS:
	.byte	0
	.ascii	"\013PGdkGCClass"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKGCCLASS
_RTTI_GDK2_PGDKGCCLASS:
	.byte	0
	.ascii	"\013PGdkGCClass"

.const_data
	.align 2
.globl	_INIT_GDK2_TGDKGCCLASS
_INIT_GDK2_TGDKGCCLASS:
	.byte	13,11
	.ascii	"TGdkGCClass"
	.long	96,0

.const_data
	.align 2
.globl	_RTTI_GDK2_DEF207
_RTTI_GDK2_DEF207:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GDK2_DEF208
_RTTI_GDK2_DEF208:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GDK2_DEF209
_RTTI_GDK2_DEF209:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GDK2_DEF211
_RTTI_GDK2_DEF211:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GDK2_DEF212
_RTTI_GDK2_DEF212:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GDK2_DEF213
_RTTI_GDK2_DEF213:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GDK2_DEF214
_RTTI_GDK2_DEF214:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKGCCLASS
_RTTI_GDK2_TGDKGCCLASS:
	.byte	13,11
	.ascii	"TGdkGCClass"
	.long	96,8
	.long	_RTTI_GLIB2_TGOBJECTCLASS
	.long	0
	.long	_RTTI_GDK2_DEF207
	.long	68
	.long	_RTTI_GDK2_DEF208
	.long	72
	.long	_RTTI_GDK2_DEF209
	.long	76
	.long	_RTTI_GDK2_DEF211
	.long	80
	.long	_RTTI_GDK2_DEF212
	.long	84
	.long	_RTTI_GDK2_DEF213
	.long	88
	.long	_RTTI_GDK2_DEF214
	.long	92

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKIMAGECLASS
_INIT_GDK2_PGDKIMAGECLASS:
	.byte	0
	.ascii	"\016PGdkImageClass"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKIMAGECLASS
_RTTI_GDK2_PGDKIMAGECLASS:
	.byte	0
	.ascii	"\016PGdkImageClass"

.const_data
	.align 2
.globl	_INIT_GDK2_TGDKIMAGECLASS
_INIT_GDK2_TGDKIMAGECLASS:
	.byte	13,14
	.ascii	"TGdkImageClass"
	.long	68,0

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKIMAGECLASS
_RTTI_GDK2_TGDKIMAGECLASS:
	.byte	13,14
	.ascii	"TGdkImageClass"
	.long	68,1
	.long	_RTTI_GLIB2_TGOBJECTCLASS
	.long	0

.const_data
	.align 2
.globl	_INIT_GDK2_TGDKIMAGE
_INIT_GDK2_TGDKIMAGE:
	.byte	13,9
	.ascii	"TGdkImage"
	.long	52,0

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKIMAGE
_RTTI_GDK2_TGDKIMAGE:
	.byte	13,9
	.ascii	"TGdkImage"
	.long	52,13
	.long	_RTTI_GLIB2_TGOBJECT
	.long	0
	.long	_RTTI_GDK2_TGDKIMAGETYPE
	.long	12
	.long	_RTTI_GDK2_PGDKVISUAL
	.long	16
	.long	_RTTI_GDK2_TGDKBYTEORDER
	.long	20
	.long	_RTTI_SYSTEM_LONGINT
	.long	24
	.long	_RTTI_SYSTEM_LONGINT
	.long	28
	.long	_RTTI_SYSTEM_WORD
	.long	32
	.long	_RTTI_SYSTEM_WORD
	.long	34
	.long	_RTTI_SYSTEM_WORD
	.long	36
	.long	_RTTI_SYSTEM_WORD
	.long	38
	.long	_RTTI_SYSTEM_POINTER
	.long	40
	.long	_RTTI_GDK2_PGDKCOLORMAP
	.long	44
	.long	_RTTI_SYSTEM_POINTER
	.long	48

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKEXTENSIONMODE
_INIT_GDK2_PGDKEXTENSIONMODE:
	.byte	0
	.ascii	"\021PGdkExtensionMode"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKEXTENSIONMODE
_RTTI_GDK2_PGDKEXTENSIONMODE:
	.byte	0
	.ascii	"\021PGdkExtensionMode"

.const_data
	.align 2
.globl	_INIT_GDK2_TGDKEXTENSIONMODE
_INIT_GDK2_TGDKEXTENSIONMODE:
	.byte	3,17
	.ascii	"TGdkExtensionMode"
	.byte	5
	.long	0,2,0
	.byte	25
	.ascii	"GDK_EXTENSION_EVENTS_NONE"
	.byte	24
	.ascii	"GDK_EXTENSION_EVENTS_ALL"
	.byte	27
	.ascii	"GDK_EXTENSION_EVENTS_CURSOR"
	.byte	4
	.ascii	"gdk2"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKEXTENSIONMODE
_RTTI_GDK2_TGDKEXTENSIONMODE:
	.byte	3,17
	.ascii	"TGdkExtensionMode"
	.byte	5
	.long	0,2,0
	.byte	25
	.ascii	"GDK_EXTENSION_EVENTS_NONE"
	.byte	24
	.ascii	"GDK_EXTENSION_EVENTS_ALL"
	.byte	27
	.ascii	"GDK_EXTENSION_EVENTS_CURSOR"
	.byte	4
	.ascii	"gdk2"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKEXTENSIONMODE_s2o
_RTTI_GDK2_TGDKEXTENSIONMODE_s2o:
	.long	3,1
	.long	_RTTI_GDK2_TGDKEXTENSIONMODE+58
	.long	2
	.long	_RTTI_GDK2_TGDKEXTENSIONMODE+83
	.long	0
	.long	_RTTI_GDK2_TGDKEXTENSIONMODE+32

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKEXTENSIONMODE_o2s
_RTTI_GDK2_TGDKEXTENSIONMODE_o2s:
	.long	0
	.long	_RTTI_GDK2_TGDKEXTENSIONMODE+32
	.long	_RTTI_GDK2_TGDKEXTENSIONMODE+58
	.long	_RTTI_GDK2_TGDKEXTENSIONMODE+83

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKINPUTSOURCE
_INIT_GDK2_PGDKINPUTSOURCE:
	.byte	0
	.ascii	"\017PGdkInputSource"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKINPUTSOURCE
_RTTI_GDK2_PGDKINPUTSOURCE:
	.byte	0
	.ascii	"\017PGdkInputSource"

.const_data
	.align 2
.globl	_INIT_GDK2_TGDKINPUTSOURCE
_INIT_GDK2_TGDKINPUTSOURCE:
	.byte	3,15
	.ascii	"TGdkInputSource"
	.byte	5
	.long	0,3,0
	.byte	16
	.ascii	"GDK_SOURCE_MOUSE"
	.byte	14
	.ascii	"GDK_SOURCE_PEN"
	.byte	17
	.ascii	"GDK_SOURCE_ERASER"
	.byte	17
	.ascii	"GDK_SOURCE_CURSOR"
	.byte	4
	.ascii	"gdk2"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKINPUTSOURCE
_RTTI_GDK2_TGDKINPUTSOURCE:
	.byte	3,15
	.ascii	"TGdkInputSource"
	.byte	5
	.long	0,3,0
	.byte	16
	.ascii	"GDK_SOURCE_MOUSE"
	.byte	14
	.ascii	"GDK_SOURCE_PEN"
	.byte	17
	.ascii	"GDK_SOURCE_ERASER"
	.byte	17
	.ascii	"GDK_SOURCE_CURSOR"
	.byte	4
	.ascii	"gdk2"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKINPUTSOURCE_s2o
_RTTI_GDK2_TGDKINPUTSOURCE_s2o:
	.long	4,3
	.long	_RTTI_GDK2_TGDKINPUTSOURCE+80
	.long	2
	.long	_RTTI_GDK2_TGDKINPUTSOURCE+62
	.long	0
	.long	_RTTI_GDK2_TGDKINPUTSOURCE+30
	.long	1
	.long	_RTTI_GDK2_TGDKINPUTSOURCE+47

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKINPUTSOURCE_o2s
_RTTI_GDK2_TGDKINPUTSOURCE_o2s:
	.long	0
	.long	_RTTI_GDK2_TGDKINPUTSOURCE+30
	.long	_RTTI_GDK2_TGDKINPUTSOURCE+47
	.long	_RTTI_GDK2_TGDKINPUTSOURCE+62
	.long	_RTTI_GDK2_TGDKINPUTSOURCE+80

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKINPUTMODE
_INIT_GDK2_PGDKINPUTMODE:
	.byte	0
	.ascii	"\015PGdkInputMode"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKINPUTMODE
_RTTI_GDK2_PGDKINPUTMODE:
	.byte	0
	.ascii	"\015PGdkInputMode"

.const_data
	.align 2
.globl	_INIT_GDK2_TGDKINPUTMODE
_INIT_GDK2_TGDKINPUTMODE:
	.byte	3,13
	.ascii	"TGdkInputMode"
	.byte	5
	.long	0,2,0
	.byte	17
	.ascii	"GDK_MODE_DISABLED"
	.byte	15
	.ascii	"GDK_MODE_SCREEN"
	.byte	15
	.ascii	"GDK_MODE_WINDOW"
	.byte	4
	.ascii	"gdk2"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKINPUTMODE
_RTTI_GDK2_TGDKINPUTMODE:
	.byte	3,13
	.ascii	"TGdkInputMode"
	.byte	5
	.long	0,2,0
	.byte	17
	.ascii	"GDK_MODE_DISABLED"
	.byte	15
	.ascii	"GDK_MODE_SCREEN"
	.byte	15
	.ascii	"GDK_MODE_WINDOW"
	.byte	4
	.ascii	"gdk2"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKINPUTMODE_s2o
_RTTI_GDK2_TGDKINPUTMODE_s2o:
	.long	3,0
	.long	_RTTI_GDK2_TGDKINPUTMODE+28
	.long	1
	.long	_RTTI_GDK2_TGDKINPUTMODE+46
	.long	2
	.long	_RTTI_GDK2_TGDKINPUTMODE+62

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKINPUTMODE_o2s
_RTTI_GDK2_TGDKINPUTMODE_o2s:
	.long	0
	.long	_RTTI_GDK2_TGDKINPUTMODE+28
	.long	_RTTI_GDK2_TGDKINPUTMODE+46
	.long	_RTTI_GDK2_TGDKINPUTMODE+62

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKAXISUSE
_INIT_GDK2_PGDKAXISUSE:
	.byte	0
	.ascii	"\013PGdkAxisUse"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKAXISUSE
_RTTI_GDK2_PGDKAXISUSE:
	.byte	0
	.ascii	"\013PGdkAxisUse"

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKDEVICEKEY
_INIT_GDK2_PGDKDEVICEKEY:
	.byte	0
	.ascii	"\015PGdkDeviceKey"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKDEVICEKEY
_RTTI_GDK2_PGDKDEVICEKEY:
	.byte	0
	.ascii	"\015PGdkDeviceKey"

.const_data
	.align 2
.globl	_INIT_GDK2_TGDKDEVICEKEY
_INIT_GDK2_TGDKDEVICEKEY:
	.byte	13,13
	.ascii	"TGdkDeviceKey"
	.long	8,0

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKDEVICEKEY
_RTTI_GDK2_TGDKDEVICEKEY:
	.byte	13,13
	.ascii	"TGdkDeviceKey"
	.long	8,2
	.long	_RTTI_SYSTEM_LONGWORD
	.long	0
	.long	_RTTI_SYSTEM_LONGINT
	.long	4

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKDEVICEAXIS
_INIT_GDK2_PGDKDEVICEAXIS:
	.byte	0
	.ascii	"\016PGdkDeviceAxis"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKDEVICEAXIS
_RTTI_GDK2_PGDKDEVICEAXIS:
	.byte	0
	.ascii	"\016PGdkDeviceAxis"

.const_data
	.align 2
.globl	_INIT_GDK2_TGDKDEVICEAXIS
_INIT_GDK2_TGDKDEVICEAXIS:
	.byte	13,14
	.ascii	"TGdkDeviceAxis"
	.long	20,0

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKDEVICEAXIS
_RTTI_GDK2_TGDKDEVICEAXIS:
	.byte	13,14
	.ascii	"TGdkDeviceAxis"
	.long	20,3
	.long	_RTTI_SYSTEM_LONGINT
	.long	0
	.long	_RTTI_SYSTEM_DOUBLE
	.long	4
	.long	_RTTI_SYSTEM_DOUBLE
	.long	12

.const_data
	.align 2
.globl	_INIT_GDK2_TGDKDEVICE
_INIT_GDK2_TGDKDEVICE:
	.byte	13,10
	.ascii	"TGdkDevice"
	.long	44,0

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKDEVICE
_RTTI_GDK2_TGDKDEVICE:
	.byte	13,10
	.ascii	"TGdkDevice"
	.long	44,9
	.long	_RTTI_GLIB2_TGOBJECT
	.long	0
	.long	_RTTI_GLIB2_PGCHAR
	.long	12
	.long	_RTTI_GDK2_TGDKINPUTSOURCE
	.long	16
	.long	_RTTI_GDK2_TGDKINPUTMODE
	.long	20
	.long	_RTTI_SYSTEM_BOOLEAN32
	.long	24
	.long	_RTTI_SYSTEM_LONGINT
	.long	28
	.long	_RTTI_GDK2_PGDKDEVICEAXIS
	.long	32
	.long	_RTTI_SYSTEM_LONGINT
	.long	36
	.long	_RTTI_GDK2_PGDKDEVICEKEY
	.long	40

.const_data
	.align 2
.globl	_INIT_GDK2_TGDKTIMECOORD
_INIT_GDK2_TGDKTIMECOORD:
	.byte	13,13
	.ascii	"TGdkTimeCoord"
	.long	1028,0

.const_data
	.align 2
.globl	_RTTI_GDK2_DEF231
_RTTI_GDK2_DEF231:
	.byte	12
	.ascii	"\000"
	.long	8,128
	.long	_RTTI_SYSTEM_DOUBLE
	.long	5

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKTIMECOORD
_RTTI_GDK2_TGDKTIMECOORD:
	.byte	13,13
	.ascii	"TGdkTimeCoord"
	.long	1028,2
	.long	_RTTI_SYSTEM_LONGWORD
	.long	0
	.long	_RTTI_GDK2_DEF231
	.long	4

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKKEYMAPKEY
_INIT_GDK2_PGDKKEYMAPKEY:
	.byte	0
	.ascii	"\015PGdkKeymapKey"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKKEYMAPKEY
_RTTI_GDK2_PGDKKEYMAPKEY:
	.byte	0
	.ascii	"\015PGdkKeymapKey"

.const_data
	.align 2
.globl	_INIT_GDK2_TGDKKEYMAPKEY
_INIT_GDK2_TGDKKEYMAPKEY:
	.byte	13,13
	.ascii	"TGdkKeymapKey"
	.long	12,0

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKKEYMAPKEY
_RTTI_GDK2_TGDKKEYMAPKEY:
	.byte	13,13
	.ascii	"TGdkKeymapKey"
	.long	12,3
	.long	_RTTI_SYSTEM_LONGWORD
	.long	0
	.long	_RTTI_SYSTEM_LONGINT
	.long	4
	.long	_RTTI_SYSTEM_LONGINT
	.long	8

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKKEYMAP
_INIT_GDK2_PGDKKEYMAP:
	.byte	0
	.ascii	"\012PGdkKeymap"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKKEYMAP
_RTTI_GDK2_PGDKKEYMAP:
	.byte	0
	.ascii	"\012PGdkKeymap"

.const_data
	.align 2
.globl	_INIT_GDK2_TGDKKEYMAP
_INIT_GDK2_TGDKKEYMAP:
	.byte	13,10
	.ascii	"TGdkKeymap"
	.long	16,0

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKKEYMAP
_RTTI_GDK2_TGDKKEYMAP:
	.byte	13,10
	.ascii	"TGdkKeymap"
	.long	16,2
	.long	_RTTI_GLIB2_TGOBJECT
	.long	0
	.long	_RTTI_GDK2_PGDKDISPLAY
	.long	12

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKKEYMAPCLASS
_INIT_GDK2_PGDKKEYMAPCLASS:
	.byte	0
	.ascii	"\017PGdkKeymapClass"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKKEYMAPCLASS
_RTTI_GDK2_PGDKKEYMAPCLASS:
	.byte	0
	.ascii	"\017PGdkKeymapClass"

.const_data
	.align 2
.globl	_INIT_GDK2_TGDKKEYMAPCLASS
_INIT_GDK2_TGDKKEYMAPCLASS:
	.byte	13,15
	.ascii	"TGdkKeymapClass"
	.long	72,0

.const_data
	.align 2
.globl	_RTTI_GDK2_DEF238
_RTTI_GDK2_DEF238:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKKEYMAPCLASS
_RTTI_GDK2_TGDKKEYMAPCLASS:
	.byte	13,15
	.ascii	"TGdkKeymapClass"
	.long	72,2
	.long	_RTTI_GLIB2_TGOBJECTCLASS
	.long	0
	.long	_RTTI_GDK2_DEF238
	.long	68

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKPANGORENDERERPRIVATE
_INIT_GDK2_PGDKPANGORENDERERPRIVATE:
	.byte	0
	.ascii	"\030PGdkPangoRendererPrivate"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKPANGORENDERERPRIVATE
_RTTI_GDK2_PGDKPANGORENDERERPRIVATE:
	.byte	0
	.ascii	"\030PGdkPangoRendererPrivate"

.const_data
	.align 2
.globl	_INIT_GDK2_TGDKPANGORENDERER
_INIT_GDK2_TGDKPANGORENDERER:
	.byte	13,17
	.ascii	"TGdkPangoRenderer"
	.long	36,0

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKPANGORENDERER
_RTTI_GDK2_TGDKPANGORENDERER:
	.byte	13,17
	.ascii	"TGdkPangoRenderer"
	.long	36,2
	.long	_RTTI_PANGO_TPANGORENDERER
	.long	0
	.long	_RTTI_GDK2_PGDKPANGORENDERERPRIVATE
	.long	32

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKPANGORENDERERCLASS
_INIT_GDK2_PGDKPANGORENDERERCLASS:
	.byte	0
	.ascii	"\026PGdkPangoRendererClass"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKPANGORENDERERCLASS
_RTTI_GDK2_PGDKPANGORENDERERCLASS:
	.byte	0
	.ascii	"\026PGdkPangoRendererClass"

.const_data
	.align 2
.globl	_INIT_GDK2_TGDKPANGORENDERERCLASS
_INIT_GDK2_TGDKPANGORENDERERCLASS:
	.byte	13,22
	.ascii	"TGdkPangoRendererClass"
	.long	124,0

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKPANGORENDERERCLASS
_RTTI_GDK2_TGDKPANGORENDERERCLASS:
	.byte	13,22
	.ascii	"TGdkPangoRendererClass"
	.long	124,1
	.long	_RTTI_PANGO_TPANGORENDERERCLASS
	.long	0

.const_data
	.align 2
.globl	_INIT_GDK2_TGDKPANGORENDERERPRIVATE
_INIT_GDK2_TGDKPANGORENDERERPRIVATE:
	.byte	13,24
	.ascii	"TGdkPangoRendererPrivate"
	.long	72,0

.const_data
	.align 2
.globl	_RTTI_GDK2_DEF244
_RTTI_GDK2_DEF244:
	.byte	12
	.ascii	"\000"
	.long	6,4
	.long	_RTTI_PANGO_TPANGOCOLOR
	.long	-1

.const_data
	.align 2
.globl	_RTTI_GDK2_DEF245
_RTTI_GDK2_DEF245:
	.byte	12
	.ascii	"\000"
	.long	4,4
	.long	_RTTI_SYSTEM_BOOLEAN32
	.long	11

.const_data
	.align 2
.globl	_RTTI_GDK2_DEF246
_RTTI_GDK2_DEF246:
	.byte	12
	.ascii	"\000"
	.long	4,4
	.long	_RTTI_GDK2_PGDKBITMAP
	.long	-1

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKPANGORENDERERPRIVATE
_RTTI_GDK2_TGDKPANGORENDERERPRIVATE:
	.byte	13,24
	.ascii	"TGdkPangoRendererPrivate"
	.long	72,6
	.long	_RTTI_GDK2_PGDKSCREEN
	.long	0
	.long	_RTTI_GDK2_DEF244
	.long	4
	.long	_RTTI_GDK2_DEF245
	.long	28
	.long	_RTTI_GDK2_DEF246
	.long	44
	.long	_RTTI_PANGO_TPANGOCOLOR
	.long	60
	.long	_RTTI_SYSTEM_BOOLEAN32
	.long	68

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKPANGOATTRSTIPPLE
_INIT_GDK2_PGDKPANGOATTRSTIPPLE:
	.byte	0
	.ascii	"\024PGdkPangoAttrStipple"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKPANGOATTRSTIPPLE
_RTTI_GDK2_PGDKPANGOATTRSTIPPLE:
	.byte	0
	.ascii	"\024PGdkPangoAttrStipple"

.const_data
	.align 2
.globl	_INIT_GDK2_TGDKPANGOATTRSTIPPLE
_INIT_GDK2_TGDKPANGOATTRSTIPPLE:
	.byte	13,20
	.ascii	"TGdkPangoAttrStipple"
	.long	16,0

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKPANGOATTRSTIPPLE
_RTTI_GDK2_TGDKPANGOATTRSTIPPLE:
	.byte	13,20
	.ascii	"TGdkPangoAttrStipple"
	.long	16,2
	.long	_RTTI_PANGO_TPANGOATTRIBUTE
	.long	0
	.long	_RTTI_GDK2_PGDKBITMAP
	.long	12

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKPANGOATTREMBOSSED
_INIT_GDK2_PGDKPANGOATTREMBOSSED:
	.byte	0
	.ascii	"\025PGdkPangoAttrEmbossed"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKPANGOATTREMBOSSED
_RTTI_GDK2_PGDKPANGOATTREMBOSSED:
	.byte	0
	.ascii	"\025PGdkPangoAttrEmbossed"

.const_data
	.align 2
.globl	_INIT_GDK2_TGDKPANGOATTREMBOSSED
_INIT_GDK2_TGDKPANGOATTREMBOSSED:
	.byte	13,21
	.ascii	"TGdkPangoAttrEmbossed"
	.long	16,0

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKPANGOATTREMBOSSED
_RTTI_GDK2_TGDKPANGOATTREMBOSSED:
	.byte	13,21
	.ascii	"TGdkPangoAttrEmbossed"
	.long	16,2
	.long	_RTTI_PANGO_TPANGOATTRIBUTE
	.long	0
	.long	_RTTI_SYSTEM_BOOLEAN32
	.long	12

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKPIXMAPOBJECT
_INIT_GDK2_PGDKPIXMAPOBJECT:
	.byte	0
	.ascii	"\020PGdkPixmapObject"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKPIXMAPOBJECT
_RTTI_GDK2_PGDKPIXMAPOBJECT:
	.byte	0
	.ascii	"\020PGdkPixmapObject"

.const_data
	.align 2
.globl	_INIT_GDK2_TGDKPIXMAPOBJECT
_INIT_GDK2_TGDKPIXMAPOBJECT:
	.byte	13,16
	.ascii	"TGdkPixmapObject"
	.long	20,0

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKPIXMAPOBJECT
_RTTI_GDK2_TGDKPIXMAPOBJECT:
	.byte	13,16
	.ascii	"TGdkPixmapObject"
	.long	20,3
	.long	_RTTI_GDK2_TGDKDRAWABLE
	.long	0
	.long	_RTTI_GDK2_PGDKDRAWABLE
	.long	12
	.long	_RTTI_SYSTEM_LONGINT
	.long	16

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKPIXMAPOBJECTCLASS
_INIT_GDK2_PGDKPIXMAPOBJECTCLASS:
	.byte	0
	.ascii	"\025PGdkPixmapObjectClass"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKPIXMAPOBJECTCLASS
_RTTI_GDK2_PGDKPIXMAPOBJECTCLASS:
	.byte	0
	.ascii	"\025PGdkPixmapObjectClass"

.const_data
	.align 2
.globl	_INIT_GDK2_TGDKPIXMAPOBJECTCLASS
_INIT_GDK2_TGDKPIXMAPOBJECTCLASS:
	.byte	13,21
	.ascii	"TGdkPixmapObjectClass"
	.long	224,0

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKPIXMAPOBJECTCLASS
_RTTI_GDK2_TGDKPIXMAPOBJECTCLASS:
	.byte	13,21
	.ascii	"TGdkPixmapObjectClass"
	.long	224,1
	.long	_RTTI_GDK2_TGDKDRAWABLECLASS
	.long	0

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKPROPMODE
_INIT_GDK2_PGDKPROPMODE:
	.byte	0
	.ascii	"\014PGdkPropMode"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKPROPMODE
_RTTI_GDK2_PGDKPROPMODE:
	.byte	0
	.ascii	"\014PGdkPropMode"

.const_data
	.align 2
.globl	_INIT_GDK2_TGDKPROPMODE
_INIT_GDK2_TGDKPROPMODE:
	.byte	3,12
	.ascii	"TGdkPropMode"
	.byte	5
	.long	0,2,0
	.byte	21
	.ascii	"GDK_PROP_MODE_REPLACE"
	.byte	21
	.ascii	"GDK_PROP_MODE_PREPEND"
	.byte	20
	.ascii	"GDK_PROP_MODE_APPEND"
	.byte	4
	.ascii	"gdk2"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKPROPMODE
_RTTI_GDK2_TGDKPROPMODE:
	.byte	3,12
	.ascii	"TGdkPropMode"
	.byte	5
	.long	0,2,0
	.byte	21
	.ascii	"GDK_PROP_MODE_REPLACE"
	.byte	21
	.ascii	"GDK_PROP_MODE_PREPEND"
	.byte	20
	.ascii	"GDK_PROP_MODE_APPEND"
	.byte	4
	.ascii	"gdk2"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKPROPMODE_s2o
_RTTI_GDK2_TGDKPROPMODE_s2o:
	.long	3,2
	.long	_RTTI_GDK2_TGDKPROPMODE+71
	.long	1
	.long	_RTTI_GDK2_TGDKPROPMODE+49
	.long	0
	.long	_RTTI_GDK2_TGDKPROPMODE+27

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKPROPMODE_o2s
_RTTI_GDK2_TGDKPROPMODE_o2s:
	.long	0
	.long	_RTTI_GDK2_TGDKPROPMODE+27
	.long	_RTTI_GDK2_TGDKPROPMODE+49
	.long	_RTTI_GDK2_TGDKPROPMODE+71

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKFILLRULE
_INIT_GDK2_PGDKFILLRULE:
	.byte	0
	.ascii	"\014PGdkFillRule"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKFILLRULE
_RTTI_GDK2_PGDKFILLRULE:
	.byte	0
	.ascii	"\014PGdkFillRule"

.const_data
	.align 2
.globl	_INIT_GDK2_TGDKFILLRULE
_INIT_GDK2_TGDKFILLRULE:
	.byte	3,12
	.ascii	"TGdkFillRule"
	.byte	5
	.long	0,1,0
	.byte	17
	.ascii	"GDK_EVEN_ODD_RULE"
	.byte	16
	.ascii	"GDK_WINDING_RULE"
	.byte	4
	.ascii	"gdk2"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKFILLRULE
_RTTI_GDK2_TGDKFILLRULE:
	.byte	3,12
	.ascii	"TGdkFillRule"
	.byte	5
	.long	0,1,0
	.byte	17
	.ascii	"GDK_EVEN_ODD_RULE"
	.byte	16
	.ascii	"GDK_WINDING_RULE"
	.byte	4
	.ascii	"gdk2"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKFILLRULE_s2o
_RTTI_GDK2_TGDKFILLRULE_s2o:
	.long	2,0
	.long	_RTTI_GDK2_TGDKFILLRULE+27
	.long	1
	.long	_RTTI_GDK2_TGDKFILLRULE+45

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKFILLRULE_o2s
_RTTI_GDK2_TGDKFILLRULE_o2s:
	.long	0
	.long	_RTTI_GDK2_TGDKFILLRULE+27
	.long	_RTTI_GDK2_TGDKFILLRULE+45

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKOVERLAPTYPE
_INIT_GDK2_PGDKOVERLAPTYPE:
	.byte	0
	.ascii	"\017PGdkOverlapType"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKOVERLAPTYPE
_RTTI_GDK2_PGDKOVERLAPTYPE:
	.byte	0
	.ascii	"\017PGdkOverlapType"

.const_data
	.align 2
.globl	_INIT_GDK2_TGDKOVERLAPTYPE
_INIT_GDK2_TGDKOVERLAPTYPE:
	.byte	3,15
	.ascii	"TGdkOverlapType"
	.byte	5
	.long	0,2,0
	.byte	24
	.ascii	"GDK_OVERLAP_RECTANGLE_IN"
	.byte	25
	.ascii	"GDK_OVERLAP_RECTANGLE_OUT"
	.byte	26
	.ascii	"GDK_OVERLAP_RECTANGLE_PART"
	.byte	4
	.ascii	"gdk2"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKOVERLAPTYPE
_RTTI_GDK2_TGDKOVERLAPTYPE:
	.byte	3,15
	.ascii	"TGdkOverlapType"
	.byte	5
	.long	0,2,0
	.byte	24
	.ascii	"GDK_OVERLAP_RECTANGLE_IN"
	.byte	25
	.ascii	"GDK_OVERLAP_RECTANGLE_OUT"
	.byte	26
	.ascii	"GDK_OVERLAP_RECTANGLE_PART"
	.byte	4
	.ascii	"gdk2"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKOVERLAPTYPE_s2o
_RTTI_GDK2_TGDKOVERLAPTYPE_s2o:
	.long	3,0
	.long	_RTTI_GDK2_TGDKOVERLAPTYPE+30
	.long	1
	.long	_RTTI_GDK2_TGDKOVERLAPTYPE+55
	.long	2
	.long	_RTTI_GDK2_TGDKOVERLAPTYPE+81

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKOVERLAPTYPE_o2s
_RTTI_GDK2_TGDKOVERLAPTYPE_o2s:
	.long	0
	.long	_RTTI_GDK2_TGDKOVERLAPTYPE+30
	.long	_RTTI_GDK2_TGDKOVERLAPTYPE+55
	.long	_RTTI_GDK2_TGDKOVERLAPTYPE+81

.const_data
	.align 2
.globl	_INIT_GDK2_TGDKSPANFUNC
_INIT_GDK2_TGDKSPANFUNC:
	.byte	23,12
	.ascii	"TGdkSpanFunc"

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKSPANFUNC
_RTTI_GDK2_TGDKSPANFUNC:
	.byte	23,12
	.ascii	"TGdkSpanFunc"

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKRGBCMAP
_INIT_GDK2_PGDKRGBCMAP:
	.byte	0
	.ascii	"\013PGdkRgbCmap"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKRGBCMAP
_RTTI_GDK2_PGDKRGBCMAP:
	.byte	0
	.ascii	"\013PGdkRgbCmap"

.const_data
	.align 2
.globl	_INIT_GDK2_TGDKRGBCMAP
_INIT_GDK2_TGDKRGBCMAP:
	.byte	13,11
	.ascii	"TGdkRgbCmap"
	.long	1032,0

.const_data
	.align 2
.globl	_RTTI_GDK2_DEF264
_RTTI_GDK2_DEF264:
	.byte	12
	.ascii	"\000"
	.long	4,256
	.long	_RTTI_SYSTEM_LONGWORD
	.long	19

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKRGBCMAP
_RTTI_GDK2_TGDKRGBCMAP:
	.byte	13,11
	.ascii	"TGdkRgbCmap"
	.long	1032,3
	.long	_RTTI_GDK2_DEF264
	.long	0
	.long	_RTTI_SYSTEM_LONGINT
	.long	1024
	.long	_RTTI_GLIB2_PGSLIST
	.long	1028

.const_data
	.align 2
.globl	_INIT_GDK2_TGDKDISPLAYMANAGER
_INIT_GDK2_TGDKDISPLAYMANAGER:
	.byte	13,18
	.ascii	"TGdkDisplayManager"
	.long	12,0

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKDISPLAYMANAGER
_RTTI_GDK2_TGDKDISPLAYMANAGER:
	.byte	13,18
	.ascii	"TGdkDisplayManager"
	.long	12,1
	.long	_RTTI_GLIB2_TGOBJECT
	.long	0

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKDISPLAYMANAGERCLASS
_INIT_GDK2_PGDKDISPLAYMANAGERCLASS:
	.byte	0
	.ascii	"\027PGdkDisplayManagerClass"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKDISPLAYMANAGERCLASS
_RTTI_GDK2_PGDKDISPLAYMANAGERCLASS:
	.byte	0
	.ascii	"\027PGdkDisplayManagerClass"

.const_data
	.align 2
.globl	_INIT_GDK2_TGDKDISPLAYMANAGERCLASS
_INIT_GDK2_TGDKDISPLAYMANAGERCLASS:
	.byte	13,23
	.ascii	"TGdkDisplayManagerClass"
	.long	72,0

.const_data
	.align 2
.globl	_RTTI_GDK2_DEF268
_RTTI_GDK2_DEF268:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKDISPLAYMANAGERCLASS
_RTTI_GDK2_TGDKDISPLAYMANAGERCLASS:
	.byte	13,23
	.ascii	"TGdkDisplayManagerClass"
	.long	72,2
	.long	_RTTI_GLIB2_TGOBJECTCLASS
	.long	0
	.long	_RTTI_GDK2_DEF268
	.long	68

.const_data
	.align 2
.globl	_INIT_GDK2_TGDKDISPLAY
_INIT_GDK2_TGDKDISPLAY:
	.byte	13,11
	.ascii	"TGdkDisplay"
	.long	80,0

.const_data
	.align 2
.globl	_RTTI_GDK2_DEF270
_RTTI_GDK2_DEF270:
	.byte	12
	.ascii	"\000"
	.long	4,2
	.long	_RTTI_SYSTEM_LONGWORD
	.long	19

.const_data
	.align 2
.globl	_RTTI_GDK2_DEF271
_RTTI_GDK2_DEF271:
	.byte	12
	.ascii	"\000"
	.long	4,2
	.long	_RTTI_GDK2_PGDKWINDOW
	.long	-1

.const_data
	.align 2
.globl	_RTTI_GDK2_DEF272
_RTTI_GDK2_DEF272:
	.byte	12
	.ascii	"\000"
	.long	4,2
	.long	_RTTI_SYSTEM_LONGWORD
	.long	19

.const_data
	.align 2
.globl	_RTTI_GDK2_DEF273
_RTTI_GDK2_DEF273:
	.byte	12
	.ascii	"\000"
	.long	4,2
	.long	_RTTI_SYSTEM_LONGWORD
	.long	19

.const_data
	.align 2
.globl	_RTTI_GDK2_DEF274
_RTTI_GDK2_DEF274:
	.byte	12
	.ascii	"\000"
	.long	4,2
	.long	_RTTI_SYSTEM_LONGWORD
	.long	19

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKDISPLAY
_RTTI_GDK2_TGDKDISPLAY:
	.byte	13,11
	.ascii	"TGdkDisplay"
	.long	80,13
	.long	_RTTI_GLIB2_TGOBJECT
	.long	0
	.long	_RTTI_GLIB2_PGLIST
	.long	12
	.long	_RTTI_GLIB2_PGLIST
	.long	16
	.long	_RTTI_GDK2_DEF270
	.long	20
	.long	_RTTI_GDK2_DEF271
	.long	28
	.long	_RTTI_GDK2_DEF272
	.long	36
	.long	_RTTI_SYSTEM_LONGWORD
	.long	44
	.long	_RTTI_GDK2_PGDKDEVICE
	.long	48
	.long	_RTTI_GDK2_PGDKDISPLAYPOINTERHOOKS
	.long	52
	.long	_RTTI_SYSTEM_LONGWORD
	.long	56
	.long	_RTTI_SYSTEM_LONGWORD
	.long	60
	.long	_RTTI_GDK2_DEF273
	.long	64
	.long	_RTTI_GDK2_DEF274
	.long	72

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKDISPLAYCLASS
_INIT_GDK2_PGDKDISPLAYCLASS:
	.byte	0
	.ascii	"\020PGdkDisplayClass"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKDISPLAYCLASS
_RTTI_GDK2_PGDKDISPLAYCLASS:
	.byte	0
	.ascii	"\020PGdkDisplayClass"

.const_data
	.align 2
.globl	_INIT_GDK2_TGDKDISPLAYCLASS
_INIT_GDK2_TGDKDISPLAYCLASS:
	.byte	13,16
	.ascii	"TGdkDisplayClass"
	.long	84,0

.const_data
	.align 2
.globl	_RTTI_GDK2_DEF277
_RTTI_GDK2_DEF277:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GDK2_DEF278
_RTTI_GDK2_DEF278:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GDK2_DEF279
_RTTI_GDK2_DEF279:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GDK2_DEF280
_RTTI_GDK2_DEF280:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKDISPLAYCLASS
_RTTI_GDK2_TGDKDISPLAYCLASS:
	.byte	13,16
	.ascii	"TGdkDisplayClass"
	.long	84,5
	.long	_RTTI_GLIB2_TGOBJECTCLASS
	.long	0
	.long	_RTTI_GDK2_DEF277
	.long	68
	.long	_RTTI_GDK2_DEF278
	.long	72
	.long	_RTTI_GDK2_DEF279
	.long	76
	.long	_RTTI_GDK2_DEF280
	.long	80

.const_data
	.align 2
.globl	_INIT_GDK2_TGDKDISPLAYPOINTERHOOKS
_INIT_GDK2_TGDKDISPLAYPOINTERHOOKS:
	.byte	13,23
	.ascii	"TGdkDisplayPointerHooks"
	.long	12,0

.const_data
	.align 2
.globl	_RTTI_GDK2_DEF282
_RTTI_GDK2_DEF282:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GDK2_DEF283
_RTTI_GDK2_DEF283:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GDK2_DEF284
_RTTI_GDK2_DEF284:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKDISPLAYPOINTERHOOKS
_RTTI_GDK2_TGDKDISPLAYPOINTERHOOKS:
	.byte	13,23
	.ascii	"TGdkDisplayPointerHooks"
	.long	12,3
	.long	_RTTI_GDK2_DEF282
	.long	0
	.long	_RTTI_GDK2_DEF283
	.long	4
	.long	_RTTI_GDK2_DEF284
	.long	8

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKSCREENCLASS
_INIT_GDK2_PGDKSCREENCLASS:
	.byte	0
	.ascii	"\017PGdkScreenClass"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKSCREENCLASS
_RTTI_GDK2_PGDKSCREENCLASS:
	.byte	0
	.ascii	"\017PGdkScreenClass"

.const_data
	.align 2
.globl	_INIT_GDK2_TGDKSCREENCLASS
_INIT_GDK2_TGDKSCREENCLASS:
	.byte	13,15
	.ascii	"TGdkScreenClass"
	.long	120,0

.const_data
	.align 2
.globl	_RTTI_GDK2_DEF287
_RTTI_GDK2_DEF287:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GDK2_DEF288
_RTTI_GDK2_DEF288:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GDK2_DEF289
_RTTI_GDK2_DEF289:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GDK2_DEF290
_RTTI_GDK2_DEF290:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GDK2_DEF291
_RTTI_GDK2_DEF291:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GDK2_DEF292
_RTTI_GDK2_DEF292:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GDK2_DEF293
_RTTI_GDK2_DEF293:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GDK2_DEF294
_RTTI_GDK2_DEF294:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GDK2_DEF295
_RTTI_GDK2_DEF295:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GDK2_DEF296
_RTTI_GDK2_DEF296:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GDK2_DEF297
_RTTI_GDK2_DEF297:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GDK2_DEF298
_RTTI_GDK2_DEF298:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GDK2_DEF299
_RTTI_GDK2_DEF299:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKSCREENCLASS
_RTTI_GDK2_TGDKSCREENCLASS:
	.byte	13,15
	.ascii	"TGdkScreenClass"
	.long	120,14
	.long	_RTTI_GLIB2_TGOBJECTCLASS
	.long	0
	.long	_RTTI_GDK2_DEF287
	.long	68
	.long	_RTTI_GDK2_DEF288
	.long	72
	.long	_RTTI_GDK2_DEF289
	.long	76
	.long	_RTTI_GDK2_DEF290
	.long	80
	.long	_RTTI_GDK2_DEF291
	.long	84
	.long	_RTTI_GDK2_DEF292
	.long	88
	.long	_RTTI_GDK2_DEF293
	.long	92
	.long	_RTTI_GDK2_DEF294
	.long	96
	.long	_RTTI_GDK2_DEF295
	.long	100
	.long	_RTTI_GDK2_DEF296
	.long	104
	.long	_RTTI_GDK2_DEF297
	.long	108
	.long	_RTTI_GDK2_DEF298
	.long	112
	.long	_RTTI_GDK2_DEF299
	.long	116

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKSELECTION
_INIT_GDK2_PGDKSELECTION:
	.byte	0
	.ascii	"\015PGdkSelection"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKSELECTION
_RTTI_GDK2_PGDKSELECTION:
	.byte	0
	.ascii	"\015PGdkSelection"

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKTARGET
_INIT_GDK2_PGDKTARGET:
	.byte	0
	.ascii	"\012PGdkTarget"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKTARGET
_RTTI_GDK2_PGDKTARGET:
	.byte	0
	.ascii	"\012PGdkTarget"

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKSELECTIONTYPE
_INIT_GDK2_PGDKSELECTIONTYPE:
	.byte	0
	.ascii	"\021PGdkSelectionType"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKSELECTIONTYPE
_RTTI_GDK2_PGDKSELECTIONTYPE:
	.byte	0
	.ascii	"\021PGdkSelectionType"

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKGRABSTATUS
_INIT_GDK2_PGDKGRABSTATUS:
	.byte	0
	.ascii	"\016PGdkGrabStatus"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKGRABSTATUS
_RTTI_GDK2_PGDKGRABSTATUS:
	.byte	0
	.ascii	"\016PGdkGrabStatus"

.const_data
	.align 2
.globl	_INIT_GDK2_TGDKINPUTFUNCTION
_INIT_GDK2_TGDKINPUTFUNCTION:
	.byte	23,17
	.ascii	"TGdkInputFunction"

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKINPUTFUNCTION
_RTTI_GDK2_TGDKINPUTFUNCTION:
	.byte	23,17
	.ascii	"TGdkInputFunction"

.const_data
	.align 2
.globl	_INIT_GDK2_TGDKDESTROYNOTIFY
_INIT_GDK2_TGDKDESTROYNOTIFY:
	.byte	23,17
	.ascii	"TGdkDestroyNotify"

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKDESTROYNOTIFY
_RTTI_GDK2_TGDKDESTROYNOTIFY:
	.byte	23,17
	.ascii	"TGdkDestroyNotify"

.const_data
	.align 2
.globl	_INIT_GDK2_TGDKSPAN
_INIT_GDK2_TGDKSPAN:
	.byte	13,8
	.ascii	"TGdkSpan"
	.long	12,0

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKSPAN
_RTTI_GDK2_TGDKSPAN:
	.byte	13,8
	.ascii	"TGdkSpan"
	.long	12,3
	.long	_RTTI_SYSTEM_LONGINT
	.long	0
	.long	_RTTI_SYSTEM_LONGINT
	.long	4
	.long	_RTTI_SYSTEM_LONGINT
	.long	8

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKWINDOWCLASS
_INIT_GDK2_PGDKWINDOWCLASS:
	.byte	0
	.ascii	"\017PGdkWindowClass"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKWINDOWCLASS
_RTTI_GDK2_PGDKWINDOWCLASS:
	.byte	0
	.ascii	"\017PGdkWindowClass"

.const_data
	.align 2
.globl	_INIT_GDK2_TGDKWINDOWCLASS
_INIT_GDK2_TGDKWINDOWCLASS:
	.byte	3,15
	.ascii	"TGdkWindowClass"
	.byte	5
	.long	0,1,0
	.byte	16
	.ascii	"GDK_INPUT_OUTPUT"
	.byte	14
	.ascii	"GDK_INPUT_ONLY"
	.byte	4
	.ascii	"gdk2"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKWINDOWCLASS
_RTTI_GDK2_TGDKWINDOWCLASS:
	.byte	3,15
	.ascii	"TGdkWindowClass"
	.byte	5
	.long	0,1,0
	.byte	16
	.ascii	"GDK_INPUT_OUTPUT"
	.byte	14
	.ascii	"GDK_INPUT_ONLY"
	.byte	4
	.ascii	"gdk2"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKWINDOWCLASS_s2o
_RTTI_GDK2_TGDKWINDOWCLASS_s2o:
	.long	2,1
	.long	_RTTI_GDK2_TGDKWINDOWCLASS+47
	.long	0
	.long	_RTTI_GDK2_TGDKWINDOWCLASS+30

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKWINDOWCLASS_o2s
_RTTI_GDK2_TGDKWINDOWCLASS_o2s:
	.long	0
	.long	_RTTI_GDK2_TGDKWINDOWCLASS+30
	.long	_RTTI_GDK2_TGDKWINDOWCLASS+47

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKWINDOWTYPE
_INIT_GDK2_PGDKWINDOWTYPE:
	.byte	0
	.ascii	"\016PGdkWindowType"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKWINDOWTYPE
_RTTI_GDK2_PGDKWINDOWTYPE:
	.byte	0
	.ascii	"\016PGdkWindowType"

.const_data
	.align 2
.globl	_INIT_GDK2_TGDKWINDOWTYPE
_INIT_GDK2_TGDKWINDOWTYPE:
	.byte	3,14
	.ascii	"TGdkWindowType"
	.byte	5
	.long	0,5,0
	.byte	15
	.ascii	"GDK_WINDOW_ROOT"
	.byte	19
	.ascii	"GDK_WINDOW_TOPLEVEL"
	.byte	16
	.ascii	"GDK_WINDOW_CHILD"
	.byte	17
	.ascii	"GDK_WINDOW_DIALOG"
	.byte	15
	.ascii	"GDK_WINDOW_TEMP"
	.byte	18
	.ascii	"GDK_WINDOW_FOREIGN"
	.byte	4
	.ascii	"gdk2"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKWINDOWTYPE
_RTTI_GDK2_TGDKWINDOWTYPE:
	.byte	3,14
	.ascii	"TGdkWindowType"
	.byte	5
	.long	0,5,0
	.byte	15
	.ascii	"GDK_WINDOW_ROOT"
	.byte	19
	.ascii	"GDK_WINDOW_TOPLEVEL"
	.byte	16
	.ascii	"GDK_WINDOW_CHILD"
	.byte	17
	.ascii	"GDK_WINDOW_DIALOG"
	.byte	15
	.ascii	"GDK_WINDOW_TEMP"
	.byte	18
	.ascii	"GDK_WINDOW_FOREIGN"
	.byte	4
	.ascii	"gdk2"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKWINDOWTYPE_s2o
_RTTI_GDK2_TGDKWINDOWTYPE_s2o:
	.long	6,2
	.long	_RTTI_GDK2_TGDKWINDOWTYPE+65
	.long	3
	.long	_RTTI_GDK2_TGDKWINDOWTYPE+82
	.long	5
	.long	_RTTI_GDK2_TGDKWINDOWTYPE+116
	.long	0
	.long	_RTTI_GDK2_TGDKWINDOWTYPE+29
	.long	4
	.long	_RTTI_GDK2_TGDKWINDOWTYPE+100
	.long	1
	.long	_RTTI_GDK2_TGDKWINDOWTYPE+45

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKWINDOWTYPE_o2s
_RTTI_GDK2_TGDKWINDOWTYPE_o2s:
	.long	0
	.long	_RTTI_GDK2_TGDKWINDOWTYPE+29
	.long	_RTTI_GDK2_TGDKWINDOWTYPE+45
	.long	_RTTI_GDK2_TGDKWINDOWTYPE+65
	.long	_RTTI_GDK2_TGDKWINDOWTYPE+82
	.long	_RTTI_GDK2_TGDKWINDOWTYPE+100
	.long	_RTTI_GDK2_TGDKWINDOWTYPE+116

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKWINDOWATTRIBUTESTYPE
_INIT_GDK2_PGDKWINDOWATTRIBUTESTYPE:
	.byte	0
	.ascii	"\030PGdkWindowAttributesType"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKWINDOWATTRIBUTESTYPE
_RTTI_GDK2_PGDKWINDOWATTRIBUTESTYPE:
	.byte	0
	.ascii	"\030PGdkWindowAttributesType"

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKWINDOWHINTS
_INIT_GDK2_PGDKWINDOWHINTS:
	.byte	0
	.ascii	"\017PGdkWindowHints"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKWINDOWHINTS
_RTTI_GDK2_PGDKWINDOWHINTS:
	.byte	0
	.ascii	"\017PGdkWindowHints"

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKWINDOWTYPEHINT
_INIT_GDK2_PGDKWINDOWTYPEHINT:
	.byte	0
	.ascii	"\022PGdkWindowTypeHint"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKWINDOWTYPEHINT
_RTTI_GDK2_PGDKWINDOWTYPEHINT:
	.byte	0
	.ascii	"\022PGdkWindowTypeHint"

.const_data
	.align 2
.globl	_INIT_GDK2_TGDKWINDOWTYPEHINT
_INIT_GDK2_TGDKWINDOWTYPEHINT:
	.byte	3,18
	.ascii	"TGdkWindowTypeHint"
	.byte	5
	.long	0,13,0
	.byte	27
	.ascii	"GDK_WINDOW_TYPE_HINT_NORMAL"
	.byte	27
	.ascii	"GDK_WINDOW_TYPE_HINT_DIALOG"
	.byte	25
	.ascii	"GDK_WINDOW_TYPE_HINT_MENU"
	.byte	28
	.ascii	"GDK_WINDOW_TYPE_HINT_TOOLBAR"
	.byte	33
	.ascii	"GDK_WINDOW_TYPE_HINT_SPLASHSCREEN"
	.byte	28
	.ascii	"GDK_WINDOW_TYPE_HINT_UTILITY"
	.byte	25
	.ascii	"GDK_WINDOW_TYPE_HINT_DOCK"
	.byte	28
	.ascii	"GDK_WINDOW_TYPE_HINT_DESKTOP"
	.byte	34
	.ascii	"GDK_WINDOW_TYPE_HINT_DROPDOWN_MENU"
	.byte	31
	.ascii	"GDK_WINDOW_TYPE_HINT_POPUP_MENU"
	.byte	28
	.ascii	"GDK_WINDOW_TYPE_HINT_TOOLTIP"
	.byte	33
	.ascii	"GDK_WINDOW_TYPE_HINT_NOTIFICATION"
	.byte	26
	.ascii	"GDK_WINDOW_TYPE_HINT_COMBO"
	.byte	24
	.ascii	"GDK_WINDOW_TYPE_HINT_DND"
	.byte	4
	.ascii	"gdk2"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKWINDOWTYPEHINT
_RTTI_GDK2_TGDKWINDOWTYPEHINT:
	.byte	3,18
	.ascii	"TGdkWindowTypeHint"
	.byte	5
	.long	0,13,0
	.byte	27
	.ascii	"GDK_WINDOW_TYPE_HINT_NORMAL"
	.byte	27
	.ascii	"GDK_WINDOW_TYPE_HINT_DIALOG"
	.byte	25
	.ascii	"GDK_WINDOW_TYPE_HINT_MENU"
	.byte	28
	.ascii	"GDK_WINDOW_TYPE_HINT_TOOLBAR"
	.byte	33
	.ascii	"GDK_WINDOW_TYPE_HINT_SPLASHSCREEN"
	.byte	28
	.ascii	"GDK_WINDOW_TYPE_HINT_UTILITY"
	.byte	25
	.ascii	"GDK_WINDOW_TYPE_HINT_DOCK"
	.byte	28
	.ascii	"GDK_WINDOW_TYPE_HINT_DESKTOP"
	.byte	34
	.ascii	"GDK_WINDOW_TYPE_HINT_DROPDOWN_MENU"
	.byte	31
	.ascii	"GDK_WINDOW_TYPE_HINT_POPUP_MENU"
	.byte	28
	.ascii	"GDK_WINDOW_TYPE_HINT_TOOLTIP"
	.byte	33
	.ascii	"GDK_WINDOW_TYPE_HINT_NOTIFICATION"
	.byte	26
	.ascii	"GDK_WINDOW_TYPE_HINT_COMBO"
	.byte	24
	.ascii	"GDK_WINDOW_TYPE_HINT_DND"
	.byte	4
	.ascii	"gdk2"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKWINDOWTYPEHINT_s2o
_RTTI_GDK2_TGDKWINDOWTYPEHINT_s2o:
	.long	14,12
	.long	_RTTI_GDK2_TGDKWINDOWTYPEHINT+392
	.long	7
	.long	_RTTI_GDK2_TGDKWINDOWTYPEHINT+233
	.long	1
	.long	_RTTI_GDK2_TGDKWINDOWTYPEHINT+61
	.long	13
	.long	_RTTI_GDK2_TGDKWINDOWTYPEHINT+419
	.long	6
	.long	_RTTI_GDK2_TGDKWINDOWTYPEHINT+207
	.long	8
	.long	_RTTI_GDK2_TGDKWINDOWTYPEHINT+262
	.long	2
	.long	_RTTI_GDK2_TGDKWINDOWTYPEHINT+89
	.long	0
	.long	_RTTI_GDK2_TGDKWINDOWTYPEHINT+33
	.long	11
	.long	_RTTI_GDK2_TGDKWINDOWTYPEHINT+358
	.long	9
	.long	_RTTI_GDK2_TGDKWINDOWTYPEHINT+297
	.long	4
	.long	_RTTI_GDK2_TGDKWINDOWTYPEHINT+144
	.long	3
	.long	_RTTI_GDK2_TGDKWINDOWTYPEHINT+115
	.long	10
	.long	_RTTI_GDK2_TGDKWINDOWTYPEHINT+329
	.long	5
	.long	_RTTI_GDK2_TGDKWINDOWTYPEHINT+178

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKWINDOWTYPEHINT_o2s
_RTTI_GDK2_TGDKWINDOWTYPEHINT_o2s:
	.long	0
	.long	_RTTI_GDK2_TGDKWINDOWTYPEHINT+33
	.long	_RTTI_GDK2_TGDKWINDOWTYPEHINT+61
	.long	_RTTI_GDK2_TGDKWINDOWTYPEHINT+89
	.long	_RTTI_GDK2_TGDKWINDOWTYPEHINT+115
	.long	_RTTI_GDK2_TGDKWINDOWTYPEHINT+144
	.long	_RTTI_GDK2_TGDKWINDOWTYPEHINT+178
	.long	_RTTI_GDK2_TGDKWINDOWTYPEHINT+207
	.long	_RTTI_GDK2_TGDKWINDOWTYPEHINT+233
	.long	_RTTI_GDK2_TGDKWINDOWTYPEHINT+262
	.long	_RTTI_GDK2_TGDKWINDOWTYPEHINT+297
	.long	_RTTI_GDK2_TGDKWINDOWTYPEHINT+329
	.long	_RTTI_GDK2_TGDKWINDOWTYPEHINT+358
	.long	_RTTI_GDK2_TGDKWINDOWTYPEHINT+392
	.long	_RTTI_GDK2_TGDKWINDOWTYPEHINT+419

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKWMDECORATION
_INIT_GDK2_PGDKWMDECORATION:
	.byte	0
	.ascii	"\020PGdkWMDecoration"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKWMDECORATION
_RTTI_GDK2_PGDKWMDECORATION:
	.byte	0
	.ascii	"\020PGdkWMDecoration"

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKWMFUNCTION
_INIT_GDK2_PGDKWMFUNCTION:
	.byte	0
	.ascii	"\016PGdkWMFunction"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKWMFUNCTION
_RTTI_GDK2_PGDKWMFUNCTION:
	.byte	0
	.ascii	"\016PGdkWMFunction"

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKGRAVITY
_INIT_GDK2_PGDKGRAVITY:
	.byte	0
	.ascii	"\013PGdkGravity"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKGRAVITY
_RTTI_GDK2_PGDKGRAVITY:
	.byte	0
	.ascii	"\013PGdkGravity"

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKWINDOWEDGE
_INIT_GDK2_PGDKWINDOWEDGE:
	.byte	0
	.ascii	"\016PGdkWindowEdge"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKWINDOWEDGE
_RTTI_GDK2_PGDKWINDOWEDGE:
	.byte	0
	.ascii	"\016PGdkWindowEdge"

.const_data
	.align 2
.globl	_INIT_GDK2_TGDKWINDOWEDGE
_INIT_GDK2_TGDKWINDOWEDGE:
	.byte	3,14
	.ascii	"TGdkWindowEdge"
	.byte	5
	.long	0,7,0
	.byte	26
	.ascii	"GDK_WINDOW_EDGE_NORTH_WEST"
	.byte	21
	.ascii	"GDK_WINDOW_EDGE_NORTH"
	.byte	26
	.ascii	"GDK_WINDOW_EDGE_NORTH_EAST"
	.byte	20
	.ascii	"GDK_WINDOW_EDGE_WEST"
	.byte	20
	.ascii	"GDK_WINDOW_EDGE_EAST"
	.byte	26
	.ascii	"GDK_WINDOW_EDGE_SOUTH_WEST"
	.byte	21
	.ascii	"GDK_WINDOW_EDGE_SOUTH"
	.byte	26
	.ascii	"GDK_WINDOW_EDGE_SOUTH_EAST"
	.byte	4
	.ascii	"gdk2"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKWINDOWEDGE
_RTTI_GDK2_TGDKWINDOWEDGE:
	.byte	3,14
	.ascii	"TGdkWindowEdge"
	.byte	5
	.long	0,7,0
	.byte	26
	.ascii	"GDK_WINDOW_EDGE_NORTH_WEST"
	.byte	21
	.ascii	"GDK_WINDOW_EDGE_NORTH"
	.byte	26
	.ascii	"GDK_WINDOW_EDGE_NORTH_EAST"
	.byte	20
	.ascii	"GDK_WINDOW_EDGE_WEST"
	.byte	20
	.ascii	"GDK_WINDOW_EDGE_EAST"
	.byte	26
	.ascii	"GDK_WINDOW_EDGE_SOUTH_WEST"
	.byte	21
	.ascii	"GDK_WINDOW_EDGE_SOUTH"
	.byte	26
	.ascii	"GDK_WINDOW_EDGE_SOUTH_EAST"
	.byte	4
	.ascii	"gdk2"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKWINDOWEDGE_s2o
_RTTI_GDK2_TGDKWINDOWEDGE_s2o:
	.long	8,4
	.long	_RTTI_GDK2_TGDKWINDOWEDGE+126
	.long	1
	.long	_RTTI_GDK2_TGDKWINDOWEDGE+56
	.long	2
	.long	_RTTI_GDK2_TGDKWINDOWEDGE+78
	.long	0
	.long	_RTTI_GDK2_TGDKWINDOWEDGE+29
	.long	6
	.long	_RTTI_GDK2_TGDKWINDOWEDGE+174
	.long	7
	.long	_RTTI_GDK2_TGDKWINDOWEDGE+196
	.long	5
	.long	_RTTI_GDK2_TGDKWINDOWEDGE+147
	.long	3
	.long	_RTTI_GDK2_TGDKWINDOWEDGE+105

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKWINDOWEDGE_o2s
_RTTI_GDK2_TGDKWINDOWEDGE_o2s:
	.long	0
	.long	_RTTI_GDK2_TGDKWINDOWEDGE+29
	.long	_RTTI_GDK2_TGDKWINDOWEDGE+56
	.long	_RTTI_GDK2_TGDKWINDOWEDGE+78
	.long	_RTTI_GDK2_TGDKWINDOWEDGE+105
	.long	_RTTI_GDK2_TGDKWINDOWEDGE+126
	.long	_RTTI_GDK2_TGDKWINDOWEDGE+147
	.long	_RTTI_GDK2_TGDKWINDOWEDGE+174
	.long	_RTTI_GDK2_TGDKWINDOWEDGE+196

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKWINDOWATTR
_INIT_GDK2_PGDKWINDOWATTR:
	.byte	0
	.ascii	"\016PGdkWindowAttr"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKWINDOWATTR
_RTTI_GDK2_PGDKWINDOWATTR:
	.byte	0
	.ascii	"\016PGdkWindowAttr"

.const_data
	.align 2
.globl	_INIT_GDK2_TGDKWINDOWATTR
_INIT_GDK2_TGDKWINDOWATTR:
	.byte	13,14
	.ascii	"TGdkWindowAttr"
	.long	56,0

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKWINDOWATTR
_RTTI_GDK2_TGDKWINDOWATTR:
	.byte	13,14
	.ascii	"TGdkWindowAttr"
	.long	56,14
	.long	_RTTI_GLIB2_PGCHAR
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
	.long	_RTTI_GDK2_TGDKWINDOWCLASS
	.long	24
	.long	_RTTI_GDK2_PGDKVISUAL
	.long	28
	.long	_RTTI_GDK2_PGDKCOLORMAP
	.long	32
	.long	_RTTI_GDK2_TGDKWINDOWTYPE
	.long	36
	.long	_RTTI_GDK2_PGDKCURSOR
	.long	40
	.long	_RTTI_GLIB2_PGCHAR
	.long	44
	.long	_RTTI_GLIB2_PGCHAR
	.long	48
	.long	_RTTI_SYSTEM_BOOLEAN32
	.long	52

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKGEOMETRY
_INIT_GDK2_PGDKGEOMETRY:
	.byte	0
	.ascii	"\014PGdkGeometry"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKGEOMETRY
_RTTI_GDK2_PGDKGEOMETRY:
	.byte	0
	.ascii	"\014PGdkGeometry"

.const_data
	.align 2
.globl	_INIT_GDK2_TGDKGEOMETRY
_INIT_GDK2_TGDKGEOMETRY:
	.byte	13,12
	.ascii	"TGdkGeometry"
	.long	52,0

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKGEOMETRY
_RTTI_GDK2_TGDKGEOMETRY:
	.byte	13,12
	.ascii	"TGdkGeometry"
	.long	52,11
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
	.long	_RTTI_SYSTEM_LONGINT
	.long	28
	.long	_RTTI_SYSTEM_DOUBLE
	.long	32
	.long	_RTTI_SYSTEM_DOUBLE
	.long	40
	.long	_RTTI_SYSTEM_LONGINT
	.long	48

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKPOINTERHOOKS
_INIT_GDK2_PGDKPOINTERHOOKS:
	.byte	0
	.ascii	"\020PGdkPointerHooks"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKPOINTERHOOKS
_RTTI_GDK2_PGDKPOINTERHOOKS:
	.byte	0
	.ascii	"\020PGdkPointerHooks"

.const_data
	.align 2
.globl	_INIT_GDK2_TGDKPOINTERHOOKS
_INIT_GDK2_TGDKPOINTERHOOKS:
	.byte	13,16
	.ascii	"TGdkPointerHooks"
	.long	8,0

.const_data
	.align 2
.globl	_RTTI_GDK2_DEF326
_RTTI_GDK2_DEF326:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GDK2_DEF327
_RTTI_GDK2_DEF327:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKPOINTERHOOKS
_RTTI_GDK2_TGDKPOINTERHOOKS:
	.byte	13,16
	.ascii	"TGdkPointerHooks"
	.long	8,2
	.long	_RTTI_GDK2_DEF326
	.long	0
	.long	_RTTI_GDK2_DEF327
	.long	4

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKWINDOWOBJECT
_INIT_GDK2_PGDKWINDOWOBJECT:
	.byte	0
	.ascii	"\020PGdkWindowObject"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKWINDOWOBJECT
_RTTI_GDK2_PGDKWINDOWOBJECT:
	.byte	0
	.ascii	"\020PGdkWindowObject"

.const_data
	.align 2
.globl	_INIT_GDK2_TGDKWINDOWOBJECT
_INIT_GDK2_TGDKWINDOWOBJECT:
	.byte	13,16
	.ascii	"TGdkWindowObject"
	.long	88,0

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKWINDOWOBJECT
_RTTI_GDK2_TGDKWINDOWOBJECT:
	.byte	13,16
	.ascii	"TGdkWindowObject"
	.long	88,20
	.long	_RTTI_GDK2_TGDKDRAWABLE
	.long	0
	.long	_RTTI_GDK2_PGDKDRAWABLE
	.long	12
	.long	_RTTI_GDK2_PGDKWINDOWOBJECT
	.long	16
	.long	_RTTI_SYSTEM_POINTER
	.long	20
	.long	_RTTI_SYSTEM_LONGINT
	.long	24
	.long	_RTTI_SYSTEM_LONGINT
	.long	28
	.long	_RTTI_SYSTEM_LONGINT
	.long	32
	.long	_RTTI_GLIB2_PGLIST
	.long	36
	.long	_RTTI_GLIB2_PGLIST
	.long	40
	.long	_RTTI_GDK2_TGDKCOLOR
	.long	44
	.long	_RTTI_GDK2_PGDKPIXMAP
	.long	56
	.long	_RTTI_GLIB2_PGSLIST
	.long	60
	.long	_RTTI_GDK2_PGDKREGION
	.long	64
	.long	_RTTI_SYSTEM_LONGWORD
	.long	68
	.long	_RTTI_SYSTEM_BYTE
	.long	72
	.long	_RTTI_SYSTEM_BYTE
	.long	73
	.long	_RTTI_SYSTEM_BYTE
	.long	74
	.long	_RTTI_SYSTEM_LONGINT
	.long	76
	.long	_RTTI_SYSTEM_WORD
	.long	80
	.long	_RTTI_SYSTEM_LONGINT
	.long	84

.const_data
	.align 2
.globl	_INIT_GDK2_PGDKWINDOWOBJECTCLASS
_INIT_GDK2_PGDKWINDOWOBJECTCLASS:
	.byte	0
	.ascii	"\025PGdkWindowObjectClass"

.const_data
	.align 2
.globl	_RTTI_GDK2_PGDKWINDOWOBJECTCLASS
_RTTI_GDK2_PGDKWINDOWOBJECTCLASS:
	.byte	0
	.ascii	"\025PGdkWindowObjectClass"

.const_data
	.align 2
.globl	_INIT_GDK2_TGDKWINDOWOBJECTCLASS
_INIT_GDK2_TGDKWINDOWOBJECTCLASS:
	.byte	13,21
	.ascii	"TGdkWindowObjectClass"
	.long	224,0

.const_data
	.align 2
.globl	_RTTI_GDK2_TGDKWINDOWOBJECTCLASS
_RTTI_GDK2_TGDKWINDOWOBJECTCLASS:
	.byte	13,21
	.ascii	"TGdkWindowObjectClass"
	.long	224,1
	.long	_RTTI_GDK2_TGDKDRAWABLECLASS
	.long	0

.const_data
	.align 2
.globl	_INIT_GDK2_GDK_WINDOW_INVALIDATE_MAYBE_RECURSE_CHILD_FUNC
_INIT_GDK2_GDK_WINDOW_INVALIDATE_MAYBE_RECURSE_CHILD_FUNC:
	.byte	23,46
	.ascii	"gdk_window_invalidate_maybe_recurse_child_func"

.const_data
	.align 2
.globl	_RTTI_GDK2_GDK_WINDOW_INVALIDATE_MAYBE_RECURSE_CHILD_FUNC
_RTTI_GDK2_GDK_WINDOW_INVALIDATE_MAYBE_RECURSE_CHILD_FUNC:
	.byte	23,46
	.ascii	"gdk_window_invalidate_maybe_recurse_child_func"
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
L_gdk_threads_mutex$non_lazy_ptr:
.indirect_symbol _gdk_threads_mutex
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

