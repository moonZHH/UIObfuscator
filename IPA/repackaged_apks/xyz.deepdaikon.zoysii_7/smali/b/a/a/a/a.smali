.class public Lb/a/a/a/a;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Lio/flutter/embedding/engine/e/c;

.field private final b:Lb/a/b/b/c;

.field private c:I


# direct methods
.method public constructor <init>(Lio/flutter/embedding/engine/e/c;Lb/a/b/b/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/a/a/a/a;->a:Lio/flutter/embedding/engine/e/c;

    iput-object p2, p0, Lb/a/a/a/a;->b:Lb/a/b/b/c;

    return-void
.end method

.method private a(I)Ljava/lang/Character;
    .locals 7

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    int-to-char v1, p1

    .local v1, "$c1":C, ""
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    .local v2, "$r1":Ljava/lang/Character;, ""
    move-object v3, v2

    .local v3, "$r2":Ljava/lang/Character;, ""
    const v5, -0x80000000

    and-int v4, v5, p1

    .local v4, "$i2":I, ""
    if-eqz v4, :cond_1

    const/4 v6, 0x1

    .local v6, "$z0":Z, ""
    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    if-eqz v6, :cond_3

    const v5, 0x7fffffff

    and-int/2addr p1, v5

    .local p1, "$i0":I, ""
    iget v4, p0, Lb/a/a/a/a;->c:I

    if-eqz v4, :cond_2

    iget v4, p0, Lb/a/a/a/a;->c:I

    invoke-static {v4, p1}, Landroid/view/KeyCharacterMap;->getDeadChar(II)I

    move-result p1

    iput p1, p0, Lb/a/a/a/a;->c:I

    return-object v2

    :cond_2
    iput p1, p0, Lb/a/a/a/a;->c:I

    return-object v2

    :cond_3
    iget v4, p0, Lb/a/a/a/a;->c:I

    if-eqz v4, :cond_5

    iget v4, p0, Lb/a/a/a/a;->c:I

    invoke-static {v4, p1}, Landroid/view/KeyCharacterMap;->getDeadChar(II)I

    move-result p1

    if-lez p1, :cond_4

    int-to-char v1, p1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    :cond_4
    const/4 v5, 0x0

    iput v5, p0, Lb/a/a/a/a;->c:I

    return-object v3

    :cond_5
    return-object v2
    .end local p1    # "$i0":I, ""
    .end local v2    # "$r1":Ljava/lang/Character;, ""
    .end local v4    # "$i2":I, ""
    .end local v6    # "$z0":Z, ""
    .end local v3    # "$r2":Ljava/lang/Character;, ""
    .end local v1    # "$c1":C, ""
.end method


# virtual methods
.method public a(Landroid/view/KeyEvent;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v0

    .local v0, "$i0":I, ""
    invoke-direct {p0, v0}, Lb/a/a/a/a;->a(I)Ljava/lang/Character;

    move-result-object v1

    .local v1, "$r4":Ljava/lang/Character;, ""
    iget-object v2, p0, Lb/a/a/a/a;->a:Lio/flutter/embedding/engine/e/c;

    .local v2, "$r2":Lio/flutter/embedding/engine/e/c;, ""
    new-instance v3, Lio/flutter/embedding/engine/e/c$a;

    .local v3, "$r3":Lio/flutter/embedding/engine/e/c$a;, ""
    invoke-direct {v3, p1, v1}, Lio/flutter/embedding/engine/e/c$a;-><init>(Landroid/view/KeyEvent;Ljava/lang/Character;)V

    invoke-virtual {v2, v3}, Lio/flutter/embedding/engine/e/c;->a(Lio/flutter/embedding/engine/e/c$a;)V

    return-void
    .end local v1    # "$r4":Ljava/lang/Character;, ""
    .end local v2    # "$r2":Lio/flutter/embedding/engine/e/c;, ""
    .end local v3    # "$r3":Lio/flutter/embedding/engine/e/c$a;, ""
    .end local v0    # "$i0":I, ""
.end method

.method public b(Landroid/view/KeyEvent;)V
    .locals 8

    iget-object v0, p0, Lb/a/a/a/a;->b:Lb/a/b/b/c;

    .local v0, "$r4":Lb/a/b/b/c;, ""
    invoke-virtual {v0}, Lb/a/b/b/c;->d()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .local v1, "$r5":Landroid/view/inputmethod/InputConnection;, ""
    if-eqz v1, :cond_0

    iget-object v0, p0, Lb/a/a/a/a;->b:Lb/a/b/b/c;

    invoke-virtual {v0}, Lb/a/b/b/c;->a()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    .local v2, "$r6":Landroid/view/inputmethod/InputMethodManager;, ""
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->isAcceptingText()Z

    move-result v3

    .local v3, "$z0":Z, ""
    if-eqz v3, :cond_0

    iget-object v0, p0, Lb/a/a/a/a;->b:Lb/a/b/b/c;

    invoke-virtual {v0}, Lb/a/b/b/c;->d()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v4

    .local v4, "$i0":I, ""
    invoke-direct {p0, v4}, Lb/a/a/a/a;->a(I)Ljava/lang/Character;

    move-result-object v5

    .local v5, "$r7":Ljava/lang/Character;, ""
    iget-object v6, p0, Lb/a/a/a/a;->a:Lio/flutter/embedding/engine/e/c;

    .local v6, "$r2":Lio/flutter/embedding/engine/e/c;, ""
    new-instance v7, Lio/flutter/embedding/engine/e/c$a;

    .local v7, "$r3":Lio/flutter/embedding/engine/e/c$a;, ""
    invoke-direct {v7, p1, v5}, Lio/flutter/embedding/engine/e/c$a;-><init>(Landroid/view/KeyEvent;Ljava/lang/Character;)V

    invoke-virtual {v6, v7}, Lio/flutter/embedding/engine/e/c;->b(Lio/flutter/embedding/engine/e/c$a;)V

    return-void
    .end local v1    # "$r5":Landroid/view/inputmethod/InputConnection;, ""
    .end local v2    # "$r6":Landroid/view/inputmethod/InputMethodManager;, ""
    .end local v3    # "$z0":Z, ""
    .end local v0    # "$r4":Lb/a/b/b/c;, ""
    .end local v5    # "$r7":Ljava/lang/Character;, ""
    .end local v6    # "$r2":Lio/flutter/embedding/engine/e/c;, ""
    .end local v4    # "$i0":I, ""
    .end local v7    # "$r3":Lio/flutter/embedding/engine/e/c$a;, ""
.end method
