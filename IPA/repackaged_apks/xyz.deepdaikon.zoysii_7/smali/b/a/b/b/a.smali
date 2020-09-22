.class Lb/a/b/b/a;
.super Landroid/view/inputmethod/BaseInputConnection;
.source ""


# instance fields
.field private final a:Landroid/view/View;

.field private final b:I

.field private final c:Lio/flutter/embedding/engine/e/p;

.field private final d:Landroid/text/Editable;

.field private e:I

.field private f:Landroid/view/inputmethod/InputMethodManager;

.field private final g:Landroid/text/Layout;


# direct methods
.method public constructor <init>(Landroid/view/View;ILio/flutter/embedding/engine/e/p;Landroid/text/Editable;)V
    .locals 20

    const/4 v8, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lb/a/b/b/a;->a:Landroid/view/View;

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lb/a/b/b/a;->b:I

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lb/a/b/b/a;->c:Lio/flutter/embedding/engine/e/p;

    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lb/a/b/b/a;->d:Landroid/text/Editable;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iput v8, v0, Lb/a/b/b/a;->e:I

    new-instance v9, Landroid/text/DynamicLayout;

    .local v9, "$r6":Landroid/text/DynamicLayout;, ""
    move-object/from16 v0, p0

    .local v0, "$r2":Landroid/text/Editable;, ""
    iget-object v0, v0, Lb/a/b/b/a;->d:Landroid/text/Editable;

    move-object/from16 p4, v0

    .end local v0    # "$r2":Landroid/text/Editable;, ""
    .local p4, "$r2":Landroid/text/Editable;, ""
    new-instance v10, Landroid/text/TextPaint;

    .local v10, "$r3":Landroid/text/TextPaint;, ""
    invoke-direct {v10}, Landroid/text/TextPaint;-><init>()V

    sget-object v11, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .local v11, "$r4":Landroid/text/Layout$Alignment;, ""
    const v8, 0x7fffffff

    const v12, 0x3f800000    # 1.0f

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v0, v9

    move-object/from16 v1, p4

    move-object v2, v10

    move v3, v8

    move-object v4, v11

    move v5, v12

    move v6, v13

    move v7, v14

    invoke-direct/range {v0 .. v7}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lb/a/b/b/a;->g:Landroid/text/Layout;

    move-object/from16 v0, p1

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v15

    .local v15, "$r7":Landroid/content/Context;, ""
    const-string v17, "input_method"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    .local v16, "$r8":Ljava/lang/Object;, ""
    move-object/from16 v19, v16

    check-cast v19, Landroid/view/inputmethod/InputMethodManager;

    move-object/from16 v18, v19

    .local v18, "$r9":Landroid/view/inputmethod/InputMethodManager;, ""
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lb/a/b/b/a;->f:Landroid/view/inputmethod/InputMethodManager;

    return-void
    .end local v9    # "$r6":Landroid/text/DynamicLayout;, ""
    .end local v10    # "$r3":Landroid/text/TextPaint;, ""
    .end local v11    # "$r4":Landroid/text/Layout$Alignment;, ""
    .end local v16    # "$r8":Ljava/lang/Object;, ""
    .end local v18    # "$r9":Landroid/view/inputmethod/InputMethodManager;, ""
    .end local v15    # "$r7":Landroid/content/Context;, ""
    .end local p4    # "$r2":Landroid/text/Editable;, ""
.end method

.method private static a(ILandroid/text/Editable;)I
    .locals 5

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    .local v0, "$i1":I, ""
    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-eq v0, p0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    .local v2, "$r0":Ljava/lang/StringBuilder;, ""
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Text selection index was clamped ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") to remain in bounds. This may not be your fault, as some keyboards may select outside of bounds."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .local v4, "$r2":Ljava/lang/String;, ""
    const-string v3, "flutter"

    invoke-static {v3, v4}, Lb/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v0
    .end local v2    # "$r0":Ljava/lang/StringBuilder;, ""
    .end local v4    # "$r2":Ljava/lang/String;, ""
    .end local v0    # "$i1":I, ""
.end method

.method private a()V
    .locals 17

    move-object/from16 v0, p0

    .local v7, "$i0":I, ""
    iget v7, v0, Lb/a/b/b/a;->e:I

    if-lez v7, :cond_0

    return-void

    :cond_0
    move-object/from16 v0, p0

    .local v8, "$r1":Landroid/text/Editable;, ""
    iget-object v8, v0, Lb/a/b/b/a;->d:Landroid/text/Editable;

    invoke-static {v8}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lb/a/b/b/a;->d:Landroid/text/Editable;

    invoke-static {v8}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v9

    .local v9, "$i1":I, ""
    move-object/from16 v0, p0

    iget-object v8, v0, Lb/a/b/b/a;->d:Landroid/text/Editable;

    invoke-static {v8}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v10

    .local v10, "$i2":I, ""
    move-object/from16 v0, p0

    iget-object v8, v0, Lb/a/b/b/a;->d:Landroid/text/Editable;

    invoke-static {v8}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v11

    .local v11, "$i3":I, ""
    move-object/from16 v0, p0

    .local v12, "$r2":Landroid/view/inputmethod/InputMethodManager;, ""
    iget-object v12, v0, Lb/a/b/b/a;->f:Landroid/view/inputmethod/InputMethodManager;

    move-object/from16 v0, p0

    .local v13, "$r3":Landroid/view/View;, ""
    iget-object v13, v0, Lb/a/b/b/a;->a:Landroid/view/View;

    move-object v0, v12

    move-object v1, v13

    move v2, v7

    move v3, v9

    move v4, v10

    move v5, v11

    invoke-virtual/range {v0 .. v5}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    move-object/from16 v0, p0

    .local v14, "$r4":Lio/flutter/embedding/engine/e/p;, ""
    iget-object v14, v0, Lb/a/b/b/a;->c:Lio/flutter/embedding/engine/e/p;

    move-object/from16 v0, p0

    .local v15, "$i4":I, ""
    iget v15, v0, Lb/a/b/b/a;->b:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lb/a/b/b/a;->d:Landroid/text/Editable;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    .local v16, "$r5":Ljava/lang/String;, ""
    move-object v0, v14

    move v1, v15

    move-object/from16 v2, v16

    move v3, v7

    move v4, v9

    move v5, v10

    move v6, v11

    invoke-virtual/range {v0 .. v6}, Lio/flutter/embedding/engine/e/p;->a(ILjava/lang/String;IIII)V

    return-void
    .end local v12    # "$r2":Landroid/view/inputmethod/InputMethodManager;, ""
    .end local v8    # "$r1":Landroid/text/Editable;, ""
    .end local v14    # "$r4":Lio/flutter/embedding/engine/e/p;, ""
    .end local v9    # "$i1":I, ""
    .end local v13    # "$r3":Landroid/view/View;, ""
    .end local v7    # "$i0":I, ""
    .end local v16    # "$r5":Ljava/lang/String;, ""
    .end local v10    # "$i2":I, ""
    .end local v11    # "$i3":I, ""
    .end local v15    # "$i4":I, ""
.end method


# virtual methods
.method public beginBatchEdit()Z
    .locals 2

    iget v0, p0, Lb/a/b/b/a;->e:I

    .local v0, "$i0":I, ""
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lb/a/b/b/a;->e:I

    invoke-super {p0}, Landroid/view/inputmethod/BaseInputConnection;->beginBatchEdit()Z

    move-result v1

    .local v1, "$z0":Z, ""
    return v1
    .end local v0    # "$i0":I, ""
    .end local v1    # "$z0":Z, ""
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    move-result v0

    .local v0, "$z0":Z, ""
    invoke-direct {p0}, Lb/a/b/b/a;->a()V

    return v0
    .end local v0    # "$z0":Z, ""
.end method

.method public deleteSurroundingText(II)Z
    .locals 4

    iget-object v0, p0, Lb/a/b/b/a;->d:Landroid/text/Editable;

    .local v0, "$r1":Landroid/text/Editable;, ""
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    .local v1, "$i2":I, ""
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->deleteSurroundingText(II)Z

    move-result v3

    .local v3, "$z0":Z, ""
    invoke-direct {p0}, Lb/a/b/b/a;->a()V

    return v3
    .end local v1    # "$i2":I, ""
    .end local v0    # "$r1":Landroid/text/Editable;, ""
    .end local v3    # "$z0":Z, ""
.end method

.method public endBatchEdit()Z
    .locals 2

    invoke-super {p0}, Landroid/view/inputmethod/BaseInputConnection;->endBatchEdit()Z

    move-result v0

    .local v0, "$z0":Z, ""
    iget v1, p0, Lb/a/b/b/a;->e:I

    .local v1, "$i0":I, ""
    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lb/a/b/b/a;->e:I

    invoke-direct {p0}, Lb/a/b/b/a;->a()V

    return v0
    .end local v1    # "$i0":I, ""
    .end local v0    # "$z0":Z, ""
.end method

.method public getEditable()Landroid/text/Editable;
    .locals 1

    iget-object v0, p0, Lb/a/b/b/a;->d:Landroid/text/Editable;

    .local v0, "r1":Landroid/text/Editable;, ""
    return-object v0
    .end local v0    # "r1":Landroid/text/Editable;, ""
.end method

.method public performEditorAction(I)Z
    .locals 2

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :goto_0
    iget-object v1, p0, Lb/a/b/b/a;->c:Lio/flutter/embedding/engine/e/p;

    .local v1, "$r1":Lio/flutter/embedding/engine/e/p;, ""
    iget p1, p0, Lb/a/b/b/a;->b:I

    .local p1, "$i0":I, ""
    invoke-virtual {v1, p1}, Lio/flutter/embedding/engine/e/p;->e(I)V

    goto :goto_1

    :sswitch_0
    iget-object v1, p0, Lb/a/b/b/a;->c:Lio/flutter/embedding/engine/e/p;

    iget p1, p0, Lb/a/b/b/a;->b:I

    invoke-virtual {v1, p1}, Lio/flutter/embedding/engine/e/p;->f(I)V

    goto :goto_1

    :sswitch_1
    iget-object v1, p0, Lb/a/b/b/a;->c:Lio/flutter/embedding/engine/e/p;

    iget p1, p0, Lb/a/b/b/a;->b:I

    invoke-virtual {v1, p1}, Lio/flutter/embedding/engine/e/p;->d(I)V

    goto :goto_1

    :sswitch_2
    iget-object v1, p0, Lb/a/b/b/a;->c:Lio/flutter/embedding/engine/e/p;

    iget p1, p0, Lb/a/b/b/a;->b:I

    invoke-virtual {v1, p1}, Lio/flutter/embedding/engine/e/p;->c(I)V

    goto :goto_1

    :sswitch_3
    iget-object v1, p0, Lb/a/b/b/a;->c:Lio/flutter/embedding/engine/e/p;

    iget p1, p0, Lb/a/b/b/a;->b:I

    invoke-virtual {v1, p1}, Lio/flutter/embedding/engine/e/p;->b(I)V

    goto :goto_1

    :sswitch_4
    iget-object v1, p0, Lb/a/b/b/a;->c:Lio/flutter/embedding/engine/e/p;

    iget p1, p0, Lb/a/b/b/a;->b:I

    invoke-virtual {v1, p1}, Lio/flutter/embedding/engine/e/p;->a(I)V

    goto :goto_1

    :sswitch_5
    iget-object v1, p0, Lb/a/b/b/a;->c:Lio/flutter/embedding/engine/e/p;

    iget p1, p0, Lb/a/b/b/a;->b:I

    invoke-virtual {v1, p1}, Lio/flutter/embedding/engine/e/p;->h(I)V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lb/a/b/b/a;->c:Lio/flutter/embedding/engine/e/p;

    iget p1, p0, Lb/a/b/b/a;->b:I

    invoke-virtual {v1, p1}, Lio/flutter/embedding/engine/e/p;->g(I)V

    :goto_1
    const/4 v0, 0x1

    return v0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_5
        0x1 -> :sswitch_4
        0x2 -> :sswitch_3
        0x3 -> :sswitch_2
        0x4 -> :sswitch_1
        0x5 -> :sswitch_0
    .end sparse-switch
    .end local p1    # "$i0":I, ""
    .end local v1    # "$r1":Lio/flutter/embedding/engine/e/p;, ""
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 11

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .local v0, "$i0":I, ""
    if-nez v0, :cond_6

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x43

    if-ne v0, v1, :cond_2

    iget-object v2, p0, Lb/a/b/b/a;->d:Landroid/text/Editable;

    .local v2, "$r3":Landroid/text/Editable;, ""
    invoke-static {v2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    iget-object v2, p0, Lb/a/b/b/a;->d:Landroid/text/Editable;

    invoke-static {v0, v2}, Lb/a/b/b/a;->a(ILandroid/text/Editable;)I

    move-result v0

    iget-object v2, p0, Lb/a/b/b/a;->d:Landroid/text/Editable;

    invoke-static {v2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v3

    .local v3, "$i1":I, ""
    iget-object v2, p0, Lb/a/b/b/a;->d:Landroid/text/Editable;

    invoke-static {v3, v2}, Lb/a/b/b/a;->a(ILandroid/text/Editable;)I

    move-result v3

    if-le v3, v0, :cond_0

    iget-object v2, p0, Lb/a/b/b/a;->d:Landroid/text/Editable;

    invoke-static {v2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    iget-object v2, p0, Lb/a/b/b/a;->d:Landroid/text/Editable;

    invoke-interface {v2, v0, v3}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    invoke-direct {p0}, Lb/a/b/b/a;->a()V

    const/4 v1, 0x1

    return v1

    :cond_0
    if-lez v0, :cond_7

    iget-object v4, p0, Lb/a/b/b/a;->g:Landroid/text/Layout;

    .local v4, "$r4":Landroid/text/Layout;, ""
    iget-object v5, p0, Lb/a/b/b/a;->g:Landroid/text/Layout;

    .local v5, "$r5":Landroid/text/Layout;, ""
    invoke-virtual {v5, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v6

    .local v6, "$z0":Z, ""
    if-eqz v6, :cond_1

    iget-object v2, p0, Lb/a/b/b/a;->d:Landroid/text/Editable;

    iget-object v4, p0, Lb/a/b/b/a;->g:Landroid/text/Layout;

    :try_start_0
    invoke-static {v2, v4}, Landroid/text/Selection;->extendRight(Landroid/text/Spannable;Landroid/text/Layout;)Z
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lb/a/b/b/a;->d:Landroid/text/Editable;

    iget-object v4, p0, Lb/a/b/b/a;->g:Landroid/text/Layout;

    :try_start_1
    invoke-static {v2, v4}, Landroid/text/Selection;->extendLeft(Landroid/text/Spannable;Landroid/text/Layout;)Z
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :goto_0
    iget-object v2, p0, Lb/a/b/b/a;->d:Landroid/text/Editable;

    add-int/lit8 v3, v0, -0x1

    invoke-static {v2, v0, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    :goto_1
    iget-object v2, p0, Lb/a/b/b/a;->d:Landroid/text/Editable;

    invoke-static {v2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    iget-object v2, p0, Lb/a/b/b/a;->d:Landroid/text/Editable;

    invoke-static {v0, v2}, Lb/a/b/b/a;->a(ILandroid/text/Editable;)I

    move-result v0

    iget-object v2, p0, Lb/a/b/b/a;->d:Landroid/text/Editable;

    invoke-static {v2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v3

    iget-object v2, p0, Lb/a/b/b/a;->d:Landroid/text/Editable;

    invoke-static {v3, v2}, Lb/a/b/b/a;->a(ILandroid/text/Editable;)I

    move-result v3

    iget-object v2, p0, Lb/a/b/b/a;->d:Landroid/text/Editable;

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v7

    .local v7, "$i2":I, ""
    invoke-static {v2, v7}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    iget-object v2, p0, Lb/a/b/b/a;->d:Landroid/text/Editable;

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-interface {v2, v7, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    invoke-direct {p0}, Lb/a/b/b/a;->a()V

    const/4 v1, 0x1

    return v1

    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x15

    if-ne v0, v1, :cond_3

    iget-object v2, p0, Lb/a/b/b/a;->d:Landroid/text/Editable;

    invoke-static {v2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0, v0}, Lb/a/b/b/a;->setSelection(II)Z

    const/4 v1, 0x1

    return v1

    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x16

    if-ne v0, v1, :cond_4

    iget-object v2, p0, Lb/a/b/b/a;->d:Landroid/text/Editable;

    invoke-static {v2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lb/a/b/b/a;->d:Landroid/text/Editable;

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, v0, v0}, Lb/a/b/b/a;->setSelection(II)Z

    const/4 v1, 0x1

    return v1

    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v0

    if-eqz v0, :cond_8

    iget-object v2, p0, Lb/a/b/b/a;->d:Landroid/text/Editable;

    invoke-static {v2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v3

    const/4 v1, 0x0

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-object v2, p0, Lb/a/b/b/a;->d:Landroid/text/Editable;

    invoke-static {v2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v7

    const/4 v1, 0x0

    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    if-eq v7, v3, :cond_5

    iget-object v2, p0, Lb/a/b/b/a;->d:Landroid/text/Editable;

    invoke-interface {v2, v3, v7}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    :cond_5
    iget-object v2, p0, Lb/a/b/b/a;->d:Landroid/text/Editable;

    int-to-char v8, v0

    .local v8, "$c3":C, ""
    invoke-static {v8}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v9

    .local v9, "$r6":Ljava/lang/String;, ""
    invoke-interface {v2, v3, v9}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    add-int/lit8 v0, v3, 0x1

    invoke-virtual {p0, v0, v0}, Lb/a/b/b/a;->setSelection(II)Z

    const/4 v1, 0x1

    return v1

    :cond_6
    const/4 v1, 0x0

    return v1

    :catch_0
    move-exception v10

    .local v10, "$r1":Ljava/lang/IndexOutOfBoundsException;, ""
    goto/32 :goto_0

    :cond_7
    const/4 v1, 0x0

    return v1

    :cond_8
    const/4 v1, 0x1

    return v1
    .end local v4    # "$r4":Landroid/text/Layout;, ""
    .end local v3    # "$i1":I, ""
    .end local v6    # "$z0":Z, ""
    .end local v7    # "$i2":I, ""
    .end local v10    # "$r1":Ljava/lang/IndexOutOfBoundsException;, ""
    .end local v2    # "$r3":Landroid/text/Editable;, ""
    .end local v5    # "$r5":Landroid/text/Layout;, ""
    .end local v9    # "$r6":Ljava/lang/String;, ""
    .end local v8    # "$c3":C, ""
    .end local v0    # "$i0":I, ""
.end method

.method public setComposingRegion(II)Z
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->setComposingRegion(II)Z

    move-result v0

    .local v0, "$z0":Z, ""
    invoke-direct {p0}, Lb/a/b/b/a;->a()V

    return v0
    .end local v0    # "$z0":Z, ""
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .local v0, "$i1":I, ""
    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    move-result v1

    .local v1, "$z0":Z, ""
    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    move-result v1

    :goto_0
    invoke-direct {p0}, Lb/a/b/b/a;->a()V

    return v1
    .end local v1    # "$z0":Z, ""
    .end local v0    # "$i1":I, ""
.end method

.method public setSelection(II)Z
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->setSelection(II)Z

    move-result v0

    .local v0, "$z0":Z, ""
    invoke-direct {p0}, Lb/a/b/b/a;->a()V

    return v0
    .end local v0    # "$z0":Z, ""
.end method
