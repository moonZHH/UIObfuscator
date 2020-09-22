.class public Lb/a/b/b/c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/b/b/b;,
        Lb/a/b/b/c$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Landroid/view/inputmethod/InputMethodManager;

.field private final c:Lio/flutter/embedding/engine/e/p;

.field private d:Lb/a/b/b/c$a;

.field private e:Lio/flutter/embedding/engine/e/p$a;

.field private f:Landroid/text/Editable;

.field private g:Z

.field private h:Landroid/view/inputmethod/InputConnection;

.field private i:Lio/flutter/plugin/platform/m;

.field private final j:Z

.field private k:Z


# direct methods
.method public constructor <init>(Landroid/view/View;Lio/flutter/embedding/engine/a/b;Lio/flutter/plugin/platform/m;)V
    .locals 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lb/a/b/b/c$a;

    .local v0, "$r5":Lb/a/b/b/c$a;, ""
    sget-object v1, Lb/a/b/b/c$a$a;->a:Lb/a/b/b/c$a$a;

    .local v1, "$r2":Lb/a/b/b/c$a$a;, ""
    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lb/a/b/b/c$a;-><init>(Lb/a/b/b/c$a$a;I)V

    iput-object v0, p0, Lb/a/b/b/c;->d:Lb/a/b/b/c$a;

    iput-object p1, p0, Lb/a/b/b/c;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    .local v3, "$r6":Landroid/content/Context;, ""
    const-string v5, "input_method"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .local v4, "$r7":Ljava/lang/Object;, ""
    move-object v7, v4

    check-cast v7, Landroid/view/inputmethod/InputMethodManager;

    move-object v6, v7

    .local v6, "$r8":Landroid/view/inputmethod/InputMethodManager;, ""
    iput-object v6, p0, Lb/a/b/b/c;->b:Landroid/view/inputmethod/InputMethodManager;

    new-instance v8, Lio/flutter/embedding/engine/e/p;

    .local v8, "$r9":Lio/flutter/embedding/engine/e/p;, ""
    invoke-direct {v8, p2}, Lio/flutter/embedding/engine/e/p;-><init>(Lio/flutter/embedding/engine/a/b;)V

    iput-object v8, p0, Lb/a/b/b/c;->c:Lio/flutter/embedding/engine/e/p;

    iget-object v8, p0, Lb/a/b/b/c;->c:Lio/flutter/embedding/engine/e/p;

    new-instance v9, Lb/a/b/b/b;

    .local v9, "$r10":Lb/a/b/b/b;, ""
    invoke-direct {v9, p0}, Lb/a/b/b/b;-><init>(Lb/a/b/b/c;)V

    invoke-virtual {v8, v9}, Lio/flutter/embedding/engine/e/p;->a(Lio/flutter/embedding/engine/e/p$e;)V

    iget-object v8, p0, Lb/a/b/b/c;->c:Lio/flutter/embedding/engine/e/p;

    invoke-virtual {v8}, Lio/flutter/embedding/engine/e/p;->a()V

    iput-object p3, p0, Lb/a/b/b/c;->i:Lio/flutter/plugin/platform/m;

    iget-object p3, p0, Lb/a/b/b/c;->i:Lio/flutter/plugin/platform/m;

    .local p3, "$r1":Lio/flutter/plugin/platform/m;, ""
    invoke-virtual {p3, p0}, Lio/flutter/plugin/platform/m;->a(Lb/a/b/b/c;)V

    invoke-direct {p0}, Lb/a/b/b/c;->e()Z

    move-result v10

    .local v10, "$z0":Z, ""
    iput-boolean v10, p0, Lb/a/b/b/c;->j:Z

    return-void
    .end local v0    # "$r5":Lb/a/b/b/c$a;, ""
    .end local v1    # "$r2":Lb/a/b/b/c$a$a;, ""
    .end local p3    # "$r1":Lio/flutter/plugin/platform/m;, ""
    .end local v6    # "$r8":Landroid/view/inputmethod/InputMethodManager;, ""
    .end local v4    # "$r7":Ljava/lang/Object;, ""
    .end local v8    # "$r9":Lio/flutter/embedding/engine/e/p;, ""
    .end local v9    # "$r10":Lb/a/b/b/b;, ""
    .end local v10    # "$z0":Z, ""
    .end local v3    # "$r6":Landroid/content/Context;, ""
.end method

.method private static a(Lio/flutter/embedding/engine/e/p$b;ZZZLio/flutter/embedding/engine/e/p$c;)I
    .locals 7

    iget-object v0, p0, Lio/flutter/embedding/engine/e/p$b;->a:Lio/flutter/embedding/engine/e/p$f;

    .local v0, "$r2":Lio/flutter/embedding/engine/e/p$f;, ""
    sget-object v1, Lio/flutter/embedding/engine/e/p$f;->b:Lio/flutter/embedding/engine/e/p$f;

    .local v1, "$r3":Lio/flutter/embedding/engine/e/p$f;, ""
    if-ne v0, v1, :cond_0

    const/4 v2, 0x4

    return v2

    :cond_0
    iget-object v0, p0, Lio/flutter/embedding/engine/e/p$b;->a:Lio/flutter/embedding/engine/e/p$f;

    sget-object v1, Lio/flutter/embedding/engine/e/p$f;->c:Lio/flutter/embedding/engine/e/p$f;

    if-ne v0, v1, :cond_2

    const/4 v3, 0x2

    .local v3, "$s0":S, ""
    iget-boolean p1, p0, Lio/flutter/embedding/engine/e/p$b;->b:Z

    .local p1, "$z1":Z, ""
    if-eqz p1, :cond_1

    const/16 v3, 0x1002

    :cond_1
    iget-boolean p1, p0, Lio/flutter/embedding/engine/e/p$b;->c:Z

    if-eqz p1, :cond_d

    const/16 v2, 0x2000

    or-int v4, v3, v2

    int-to-short v3, v4

    .end local v3    # "$s0":S, ""
    .local p1, "$s0":S, ""
    return v3

    :cond_2
    iget-object v0, p0, Lio/flutter/embedding/engine/e/p$b;->a:Lio/flutter/embedding/engine/e/p$f;

    sget-object v1, Lio/flutter/embedding/engine/e/p$f;->d:Lio/flutter/embedding/engine/e/p$f;

    if-ne v0, v1, :cond_3

    const/4 v2, 0x3

    return v2

    :cond_3
    const/4 v5, 0x1

    .local v5, "$i1":I, ""
    iget-object v0, p0, Lio/flutter/embedding/engine/e/p$b;->a:Lio/flutter/embedding/engine/e/p$f;

    sget-object v1, Lio/flutter/embedding/engine/e/p$f;->e:Lio/flutter/embedding/engine/e/p$f;

    if-ne v0, v1, :cond_4

    const v5, 0x20001

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lio/flutter/embedding/engine/e/p$b;->a:Lio/flutter/embedding/engine/e/p$f;

    sget-object v1, Lio/flutter/embedding/engine/e/p$f;->f:Lio/flutter/embedding/engine/e/p$f;

    if-ne v0, v1, :cond_5

    const/16 v5, 0x21

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lio/flutter/embedding/engine/e/p$b;->a:Lio/flutter/embedding/engine/e/p$f;

    sget-object v1, Lio/flutter/embedding/engine/e/p$f;->g:Lio/flutter/embedding/engine/e/p$f;

    if-ne v0, v1, :cond_6

    const/16 v5, 0x11

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lio/flutter/embedding/engine/e/p$b;->a:Lio/flutter/embedding/engine/e/p$f;

    sget-object v1, Lio/flutter/embedding/engine/e/p$f;->h:Lio/flutter/embedding/engine/e/p$f;

    if-ne v0, v1, :cond_7

    const/16 v5, 0x91

    :cond_7
    :goto_0
    if-eqz p1, :cond_8

    const v2, 0x80000

    or-int v5, v2, v5

    or-int/lit16 v5, v5, 0x80

    goto :goto_1

    :cond_8
    if-eqz p2, :cond_9

    const v2, 0x8000

    or-int/2addr v5, v2

    :cond_9
    if-nez p3, :cond_a

    const v2, 0x80000

    or-int v5, v2, v5

    goto :goto_1

    :cond_a
    :goto_1
    sget-object v6, Lio/flutter/embedding/engine/e/p$c;->a:Lio/flutter/embedding/engine/e/p$c;

    .local v6, "$r4":Lio/flutter/embedding/engine/e/p$c;, ""
    if-ne p4, v6, :cond_b

    or-int/lit16 v5, v5, 0x1000

    return v5

    :cond_b
    sget-object v6, Lio/flutter/embedding/engine/e/p$c;->b:Lio/flutter/embedding/engine/e/p$c;

    if-ne p4, v6, :cond_c

    or-int/lit16 v5, v5, 0x2000

    return v5

    :cond_c
    sget-object v6, Lio/flutter/embedding/engine/e/p$c;->c:Lio/flutter/embedding/engine/e/p$c;

    if-ne p4, v6, :cond_e

    or-int/lit16 v5, v5, 0x4000

    return v5

    :cond_d
    return v3

    :cond_e
    return v5
    .end local p1    # "$s0":S, ""
    .end local v1    # "$r3":Lio/flutter/embedding/engine/e/p$f;, ""
    .end local p1
    .end local v0    # "$r2":Lio/flutter/embedding/engine/e/p$f;, ""
    .end local v5    # "$i1":I, ""
    .end local v6    # "$r4":Lio/flutter/embedding/engine/e/p$c;, ""
.end method

.method static synthetic a(Lb/a/b/b/c;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lb/a/b/b/c;->a:Landroid/view/View;

    .local v0, "r1":Landroid/view/View;, ""
    return-object v0
    .end local v0    # "r1":Landroid/view/View;, ""
.end method

.method private a(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    iget-object v0, p0, Lb/a/b/b/c;->b:Landroid/view/inputmethod/InputMethodManager;

    .local v0, "$r2":Landroid/view/inputmethod/InputMethodManager;, ""
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
    .end local v0    # "$r2":Landroid/view/inputmethod/InputMethodManager;, ""
.end method

.method static synthetic a(Lb/a/b/b/c;I)V
    .locals 0

    invoke-direct {p0, p1}, Lb/a/b/b/c;->b(I)V

    return-void
.end method

.method static synthetic a(Lb/a/b/b/c;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lb/a/b/b/c;->a(Landroid/view/View;)V

    return-void
.end method

.method private a(Lio/flutter/embedding/engine/e/p$d;)V
    .locals 4

    iget v0, p1, Lio/flutter/embedding/engine/e/p$d;->b:I

    .local v0, "$i0":I, ""
    iget v1, p1, Lio/flutter/embedding/engine/e/p$d;->c:I

    .local v1, "$i1":I, ""
    if-ltz v0, :cond_0

    iget-object v2, p0, Lb/a/b/b/c;->f:Landroid/text/Editable;

    .local v2, "$r2":Landroid/text/Editable;, ""
    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v3

    .local v3, "$i2":I, ""
    if-gt v0, v3, :cond_0

    if-ltz v1, :cond_0

    iget-object v2, p0, Lb/a/b/b/c;->f:Landroid/text/Editable;

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v3

    if-gt v1, v3, :cond_0

    iget-object v2, p0, Lb/a/b/b/c;->f:Landroid/text/Editable;

    invoke-static {v2, v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    return-void

    :cond_0
    iget-object v2, p0, Lb/a/b/b/c;->f:Landroid/text/Editable;

    invoke-static {v2}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    return-void
    .end local v0    # "$i0":I, ""
    .end local v2    # "$r2":Landroid/text/Editable;, ""
    .end local v3    # "$i2":I, ""
    .end local v1    # "$i1":I, ""
.end method

.method private b(I)V
    .locals 5

    iget-object v0, p0, Lb/a/b/b/c;->a:Landroid/view/View;

    .local v0, "$r2":Landroid/view/View;, ""
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    new-instance v1, Lb/a/b/b/c$a;

    .local v1, "$r3":Lb/a/b/b/c$a;, ""
    sget-object v2, Lb/a/b/b/c$a$a;->c:Lb/a/b/b/c$a$a;

    .local v2, "$r1":Lb/a/b/b/c$a$a;, ""
    invoke-direct {v1, v2, p1}, Lb/a/b/b/c$a;-><init>(Lb/a/b/b/c$a$a;I)V

    iput-object v1, p0, Lb/a/b/b/c;->d:Lb/a/b/b/c$a;

    iget-object v3, p0, Lb/a/b/b/c;->b:Landroid/view/inputmethod/InputMethodManager;

    .local v3, "$r4":Landroid/view/inputmethod/InputMethodManager;, ""
    iget-object v0, p0, Lb/a/b/b/c;->a:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    const/4 v4, 0x0

    iput-boolean v4, p0, Lb/a/b/b/c;->g:Z

    return-void
    .end local v2    # "$r1":Lb/a/b/b/c$a$a;, ""
    .end local v3    # "$r4":Landroid/view/inputmethod/InputMethodManager;, ""
    .end local v1    # "$r3":Lb/a/b/b/c$a;, ""
    .end local v0    # "$r2":Landroid/view/View;, ""
.end method

.method private b(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lb/a/b/b/c;->b:Landroid/view/inputmethod/InputMethodManager;

    .local v0, "$r1":Landroid/view/inputmethod/InputMethodManager;, ""
    invoke-virtual {p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    .local v1, "$r2":Landroid/os/IBinder;, ""
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
    .end local v0    # "$r1":Landroid/view/inputmethod/InputMethodManager;, ""
    .end local v1    # "$r2":Landroid/os/IBinder;, ""
.end method

.method static synthetic b(Lb/a/b/b/c;)V
    .locals 0

    invoke-direct {p0}, Lb/a/b/b/c;->f()V

    return-void
.end method

.method static synthetic b(Lb/a/b/b/c;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lb/a/b/b/c;->b(Landroid/view/View;)V

    return-void
.end method

.method private e()Z
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    iget-object v0, p0, Lb/a/b/b/c;->b:Landroid/view/inputmethod/InputMethodManager;

    .local v0, "$r1":Landroid/view/inputmethod/InputMethodManager;, ""
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v1

    .local v1, "$r2":Landroid/view/inputmethod/InputMethodSubtype;, ""
    if-eqz v1, :cond_1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .local v2, "$i0":I, ""
    const/16 v3, 0x15

    if-lt v2, v3, :cond_1

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .local v4, "$r3":Ljava/lang/String;, ""
    const-string v6, "samsung"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .local v5, "$z0":Z, ""
    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    iget-object v7, p0, Lb/a/b/b/c;->a:Landroid/view/View;

    .local v7, "$r4":Landroid/view/View;, ""
    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    .local v8, "$r5":Landroid/content/Context;, ""
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .local v9, "$r6":Landroid/content/ContentResolver;, ""
    const-string v6, "default_input_method"

    invoke-static {v9, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "Samsung"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    return v5

    :cond_1
    :goto_0
    const/4 v3, 0x0

    return v3
    .end local v5    # "$z0":Z, ""
    .end local v1    # "$r2":Landroid/view/inputmethod/InputMethodSubtype;, ""
    .end local v4    # "$r3":Ljava/lang/String;, ""
    .end local v2    # "$i0":I, ""
    .end local v7    # "$r4":Landroid/view/View;, ""
    .end local v9    # "$r6":Landroid/content/ContentResolver;, ""
    .end local v0    # "$r1":Landroid/view/inputmethod/InputMethodManager;, ""
    .end local v8    # "$r5":Landroid/content/Context;, ""
.end method

.method private f()V
    .locals 4

    iget-object v0, p0, Lb/a/b/b/c;->d:Lb/a/b/b/c$a;

    .local v0, "$r1":Lb/a/b/b/c$a;, ""
    iget-object v1, v0, Lb/a/b/b/c$a;->a:Lb/a/b/b/c$a$a;

    .local v1, "$r2":Lb/a/b/b/c$a$a;, ""
    sget-object v2, Lb/a/b/b/c$a$a;->c:Lb/a/b/b/c$a$a;

    .local v2, "$r3":Lb/a/b/b/c$a$a;, ""
    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    new-instance v0, Lb/a/b/b/c$a;

    sget-object v1, Lb/a/b/b/c$a$a;->a:Lb/a/b/b/c$a$a;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3}, Lb/a/b/b/c$a;-><init>(Lb/a/b/b/c$a$a;I)V

    iput-object v0, p0, Lb/a/b/b/c;->d:Lb/a/b/b/c$a;

    invoke-virtual {p0}, Lb/a/b/b/c;->c()V

    return-void
    .end local v0    # "$r1":Lb/a/b/b/c$a;, ""
    .end local v2    # "$r3":Lb/a/b/b/c$a$a;, ""
    .end local v1    # "$r2":Lb/a/b/b/c$a$a;, ""
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 24

    move-object/from16 v0, p0

    .local v4, "$r3":Lb/a/b/b/c$a;, ""
    iget-object v4, v0, Lb/a/b/b/c;->d:Lb/a/b/b/c$a;

    iget-object v5, v4, Lb/a/b/b/c$a;->a:Lb/a/b/b/c$a$a;

    .local v5, "$r4":Lb/a/b/b/c$a$a;, ""
    sget-object v6, Lb/a/b/b/c$a$a;->a:Lb/a/b/b/c$a$a;

    .local v6, "$r5":Lb/a/b/b/c$a$a;, ""
    if-ne v5, v6, :cond_0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput-object v7, v0, Lb/a/b/b/c;->h:Landroid/view/inputmethod/InputConnection;

    const/4 v7, 0x0

    return-object v7

    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lb/a/b/b/c;->d:Lb/a/b/b/c$a;

    iget-object v5, v4, Lb/a/b/b/c$a;->a:Lb/a/b/b/c$a$a;

    sget-object v6, Lb/a/b/b/c$a$a;->c:Lb/a/b/b/c$a$a;

    if-ne v5, v6, :cond_2

    move-object/from16 v0, p0

    .local v8, "$z0":Z, ""
    iget-boolean v8, v0, Lb/a/b/b/c;->k:Z

    if-eqz v8, :cond_1

    move-object/from16 v0, p0

    .local v9, "$r8":Landroid/view/inputmethod/InputConnection;, ""
    iget-object v9, v0, Lb/a/b/b/c;->h:Landroid/view/inputmethod/InputConnection;

    return-object v9

    :cond_1
    move-object/from16 v0, p0

    .local v10, "$r6":Lio/flutter/plugin/platform/m;, ""
    iget-object v10, v0, Lb/a/b/b/c;->i:Lio/flutter/plugin/platform/m;

    move-object/from16 v0, p0

    iget-object v4, v0, Lb/a/b/b/c;->d:Lb/a/b/b/c$a;

    iget v11, v4, Lb/a/b/b/c$a;->b:I

    .local v11, "$i0":I, ""
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .local v12, "$r7":Ljava/lang/Integer;, ""
    invoke-virtual {v10, v12}, Lio/flutter/plugin/platform/m;->a(Ljava/lang/Integer;)Landroid/view/View;

    move-result-object p1

    .local p1, "$r2":Landroid/view/View;, ""
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v9

    move-object/from16 v0, p0

    iput-object v9, v0, Lb/a/b/b/c;->h:Landroid/view/inputmethod/InputConnection;

    move-object/from16 v0, p0

    iget-object v9, v0, Lb/a/b/b/c;->h:Landroid/view/inputmethod/InputConnection;

    return-object v9

    :cond_2
    move-object/from16 v0, p0

    .local v13, "$r9":Lio/flutter/embedding/engine/e/p$a;, ""
    iget-object v13, v0, Lb/a/b/b/c;->e:Lio/flutter/embedding/engine/e/p$a;

    iget-object v14, v13, Lio/flutter/embedding/engine/e/p$a;->e:Lio/flutter/embedding/engine/e/p$b;

    .local v14, "$r10":Lio/flutter/embedding/engine/e/p$b;, ""
    move-object/from16 v0, p0

    iget-object v13, v0, Lb/a/b/b/c;->e:Lio/flutter/embedding/engine/e/p$a;

    iget-boolean v8, v13, Lio/flutter/embedding/engine/e/p$a;->a:Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lb/a/b/b/c;->e:Lio/flutter/embedding/engine/e/p$a;

    iget-boolean v15, v13, Lio/flutter/embedding/engine/e/p$a;->b:Z

    .local v15, "$z1":Z, ""
    move-object/from16 v0, p0

    iget-object v13, v0, Lb/a/b/b/c;->e:Lio/flutter/embedding/engine/e/p$a;

    iget-boolean v0, v13, Lio/flutter/embedding/engine/e/p$a;->c:Z

    .local v0, "$z2":Z, ""
    move/from16 v16, v0

    .end local v0    # "$z2":Z, ""
    .local v16, "$z2":Z, ""
    move-object/from16 v0, p0

    iget-object v13, v0, Lb/a/b/b/c;->e:Lio/flutter/embedding/engine/e/p$a;

    iget-object v0, v13, Lio/flutter/embedding/engine/e/p$a;->d:Lio/flutter/embedding/engine/e/p$c;

    .local v0, "$r11":Lio/flutter/embedding/engine/e/p$c;, ""
    move-object/from16 v17, v0

    .end local v0    # "$r11":Lio/flutter/embedding/engine/e/p$c;, ""
    .local v17, "$r11":Lio/flutter/embedding/engine/e/p$c;, ""
    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v14, v8, v15, v0, v1}, Lb/a/b/b/c;->a(Lio/flutter/embedding/engine/e/p$b;ZZZLio/flutter/embedding/engine/e/p$c;)I

    move-result v11

    move-object/from16 v0, p2

    iput v11, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const v18, 0x2000000

    move/from16 v0, v18

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lb/a/b/b/c;->e:Lio/flutter/embedding/engine/e/p$a;

    iget-object v12, v13, Lio/flutter/embedding/engine/e/p$a;->f:Ljava/lang/Integer;

    if-nez v12, :cond_4

    move-object/from16 v0, p2

    iget v11, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const v18, 0x20000

    and-int v11, v18, v11

    if-eqz v11, :cond_3

    const/4 v11, 0x1

    goto :goto_0

    :cond_3
    const/4 v11, 0x6

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lb/a/b/b/c;->e:Lio/flutter/embedding/engine/e/p$a;

    iget-object v12, v13, Lio/flutter/embedding/engine/e/p$a;->f:Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v11

    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lb/a/b/b/c;->e:Lio/flutter/embedding/engine/e/p$a;

    iget-object v0, v13, Lio/flutter/embedding/engine/e/p$a;->g:Ljava/lang/String;

    .local v0, "$r12":Ljava/lang/String;, ""
    move-object/from16 v19, v0

    .end local v0    # "$r12":Ljava/lang/String;, ""
    .local v19, "$r12":Ljava/lang/String;, ""
    if-eqz v19, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lb/a/b/b/c;->e:Lio/flutter/embedding/engine/e/p$a;

    iget-object v0, v13, Lio/flutter/embedding/engine/e/p$a;->g:Ljava/lang/String;

    .end local v19    # "$r12":Ljava/lang/String;, ""
    .local v0, "$r12":Ljava/lang/String;, ""
    move-object/from16 v19, v0

    .end local v0    # "$r12":Ljava/lang/String;, ""
    .local v19, "$r12":Ljava/lang/String;, ""
    move-object/from16 v1, p2

    iput-object v0, v1, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    move-object/from16 v0, p2

    iput v11, v0, Landroid/view/inputmethod/EditorInfo;->actionId:I

    :cond_5
    move-object/from16 v0, p2

    .local v0, "$i1":I, ""
    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    move/from16 v20, v0

    .end local v0    # "$i1":I, ""
    .local v20, "$i1":I, ""
    or-int/2addr v11, v0

    move-object/from16 v0, p2

    iput v11, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    new-instance v21, Lb/a/b/b/a;

    .local v21, "$r13":Lb/a/b/b/a;, ""
    move-object/from16 v0, p0

    iget-object v4, v0, Lb/a/b/b/c;->d:Lb/a/b/b/c$a;

    iget v11, v4, Lb/a/b/b/c$a;->b:I

    move-object/from16 v0, p0

    .local v0, "$r14":Lio/flutter/embedding/engine/e/p;, ""
    iget-object v0, v0, Lb/a/b/b/c;->c:Lio/flutter/embedding/engine/e/p;

    move-object/from16 v22, v0

    .end local v0    # "$r14":Lio/flutter/embedding/engine/e/p;, ""
    .local v22, "$r14":Lio/flutter/embedding/engine/e/p;, ""
    move-object/from16 v0, p0

    .local v0, "$r15":Landroid/text/Editable;, ""
    iget-object v0, v0, Lb/a/b/b/c;->f:Landroid/text/Editable;

    move-object/from16 v23, v0

    .end local v0    # "$r15":Landroid/text/Editable;, ""
    .local v23, "$r15":Landroid/text/Editable;, ""
    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v11, v2, v3}, Lb/a/b/b/a;-><init>(Landroid/view/View;ILio/flutter/embedding/engine/e/p;Landroid/text/Editable;)V

    move-object/from16 v0, p0

    .end local v23    # "$r15":Landroid/text/Editable;, ""
    .local v0, "$r15":Landroid/text/Editable;, ""
    iget-object v0, v0, Lb/a/b/b/c;->f:Landroid/text/Editable;

    move-object/from16 v23, v0

    .end local v0    # "$r15":Landroid/text/Editable;, ""
    .local v23, "$r15":Landroid/text/Editable;, ""
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v11

    move-object/from16 v0, p2

    iput v11, v0, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    move-object/from16 v0, p0

    .end local v23    # "$r15":Landroid/text/Editable;, ""
    .local v0, "$r15":Landroid/text/Editable;, ""
    iget-object v0, v0, Lb/a/b/b/c;->f:Landroid/text/Editable;

    move-object/from16 v23, v0

    .end local v0    # "$r15":Landroid/text/Editable;, ""
    .local v23, "$r15":Landroid/text/Editable;, ""
    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v11

    move-object/from16 v0, p2

    iput v11, v0, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lb/a/b/b/c;->h:Landroid/view/inputmethod/InputConnection;

    move-object/from16 v0, p0

    iget-object v9, v0, Lb/a/b/b/c;->h:Landroid/view/inputmethod/InputConnection;

    return-object v9
    .end local v14    # "$r10":Lio/flutter/embedding/engine/e/p$b;, ""
    .end local v19    # "$r12":Ljava/lang/String;, ""
    .end local p1    # "$r2":Landroid/view/View;, ""
    .end local v17    # "$r11":Lio/flutter/embedding/engine/e/p$c;, ""
    .end local v10    # "$r6":Lio/flutter/plugin/platform/m;, ""
    .end local v13    # "$r9":Lio/flutter/embedding/engine/e/p$a;, ""
    .end local v16    # "$z2":Z, ""
    .end local v21    # "$r13":Lb/a/b/b/a;, ""
    .end local v4    # "$r3":Lb/a/b/b/c$a;, ""
    .end local v12    # "$r7":Ljava/lang/Integer;, ""
    .end local v9    # "$r8":Landroid/view/inputmethod/InputConnection;, ""
    .end local v8    # "$z0":Z, ""
    .end local v11    # "$i0":I, ""
    .end local v20    # "$i1":I, ""
    .end local v22    # "$r14":Lio/flutter/embedding/engine/e/p;, ""
    .end local v23    # "$r15":Landroid/text/Editable;, ""
    .end local v6    # "$r5":Lb/a/b/b/c$a$a;, ""
    .end local v5    # "$r4":Lb/a/b/b/c$a$a;, ""
    .end local v15    # "$z1":Z, ""
.end method

.method public a()Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    iget-object v0, p0, Lb/a/b/b/c;->b:Landroid/view/inputmethod/InputMethodManager;

    .local v0, "r1":Landroid/view/inputmethod/InputMethodManager;, ""
    return-object v0
    .end local v0    # "r1":Landroid/view/inputmethod/InputMethodManager;, ""
.end method

.method public a(I)V
    .locals 7

    iget-object v0, p0, Lb/a/b/b/c;->d:Lb/a/b/b/c$a;

    .local v0, "$r1":Lb/a/b/b/c$a;, ""
    iget-object v1, v0, Lb/a/b/b/c$a;->a:Lb/a/b/b/c$a$a;

    .local v1, "$r2":Lb/a/b/b/c$a$a;, ""
    sget-object v2, Lb/a/b/b/c$a$a;->c:Lb/a/b/b/c$a$a;

    .local v2, "$r3":Lb/a/b/b/c$a$a;, ""
    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lb/a/b/b/c;->d:Lb/a/b/b/c$a;

    iget v3, v0, Lb/a/b/b/c$a;->b:I

    .local v3, "$i1":I, ""
    if-ne v3, p1, :cond_0

    new-instance v0, Lb/a/b/b/c$a;

    sget-object v1, Lb/a/b/b/c$a$a;->a:Lb/a/b/b/c$a$a;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4}, Lb/a/b/b/c$a;-><init>(Lb/a/b/b/c$a$a;I)V

    iput-object v0, p0, Lb/a/b/b/c;->d:Lb/a/b/b/c$a;

    iget-object v5, p0, Lb/a/b/b/c;->a:Landroid/view/View;

    .local v5, "$r4":Landroid/view/View;, ""
    invoke-direct {p0, v5}, Lb/a/b/b/c;->b(Landroid/view/View;)V

    iget-object v6, p0, Lb/a/b/b/c;->b:Landroid/view/inputmethod/InputMethodManager;

    .local v6, "$r5":Landroid/view/inputmethod/InputMethodManager;, ""
    iget-object v5, p0, Lb/a/b/b/c;->a:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    const/4 v4, 0x0

    iput-boolean v4, p0, Lb/a/b/b/c;->g:Z

    :cond_0
    return-void
    .end local v0    # "$r1":Lb/a/b/b/c$a;, ""
    .end local v6    # "$r5":Landroid/view/inputmethod/InputMethodManager;, ""
    .end local v2    # "$r3":Lb/a/b/b/c$a$a;, ""
    .end local v3    # "$i1":I, ""
    .end local v5    # "$r4":Landroid/view/View;, ""
    .end local v1    # "$r2":Lb/a/b/b/c$a$a;, ""
.end method

.method a(ILio/flutter/embedding/engine/e/p$a;)V
    .locals 6

    new-instance v0, Lb/a/b/b/c$a;

    .local v0, "$r1":Lb/a/b/b/c$a;, ""
    sget-object v1, Lb/a/b/b/c$a$a;->b:Lb/a/b/b/c$a$a;

    .local v1, "$r2":Lb/a/b/b/c$a$a;, ""
    invoke-direct {v0, v1, p1}, Lb/a/b/b/c$a;-><init>(Lb/a/b/b/c$a$a;I)V

    iput-object v0, p0, Lb/a/b/b/c;->d:Lb/a/b/b/c$a;

    iput-object p2, p0, Lb/a/b/b/c;->e:Lio/flutter/embedding/engine/e/p$a;

    invoke-static {}, Landroid/text/Editable$Factory;->getInstance()Landroid/text/Editable$Factory;

    move-result-object v2

    .local v2, "$r4":Landroid/text/Editable$Factory;, ""
    const-string v4, ""

    invoke-virtual {v2, v4}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v3

    .local v3, "$r5":Landroid/text/Editable;, ""
    iput-object v3, p0, Lb/a/b/b/c;->f:Landroid/text/Editable;

    const/4 v5, 0x1

    iput-boolean v5, p0, Lb/a/b/b/c;->g:Z

    invoke-virtual {p0}, Lb/a/b/b/c;->c()V

    return-void
    .end local v3    # "$r5":Landroid/text/Editable;, ""
    .end local v2    # "$r4":Landroid/text/Editable$Factory;, ""
    .end local v1    # "$r2":Lb/a/b/b/c$a$a;, ""
    .end local v0    # "$r1":Lb/a/b/b/c$a;, ""
.end method

.method a(Landroid/view/View;Lio/flutter/embedding/engine/e/p$d;)V
    .locals 17

    move-object/from16 v0, p0

    .local v6, "$z0":Z, ""
    iget-boolean v6, v0, Lb/a/b/b/c;->j:Z

    if-nez v6, :cond_0

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lb/a/b/b/c;->g:Z

    if-nez v6, :cond_0

    move-object/from16 v0, p2

    .local v7, "$r3":Ljava/lang/String;, ""
    iget-object v7, v0, Lio/flutter/embedding/engine/e/p$d;->a:Ljava/lang/String;

    move-object/from16 v0, p0

    .local v8, "$r4":Landroid/text/Editable;, ""
    iget-object v8, v0, Lb/a/b/b/c;->f:Landroid/text/Editable;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .local v9, "$r5":Ljava/lang/String;, ""
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lb/a/b/b/c;->a(Lio/flutter/embedding/engine/e/p$d;)V

    move-object/from16 v0, p0

    .local v10, "$r6":Landroid/view/inputmethod/InputMethodManager;, ""
    iget-object v10, v0, Lb/a/b/b/c;->b:Landroid/view/inputmethod/InputMethodManager;

    move-object/from16 v0, p0

    .local v0, "$r1":Landroid/view/View;, ""
    iget-object v0, v0, Lb/a/b/b/c;->a:Landroid/view/View;

    move-object/from16 p1, v0

    .end local v0    # "$r1":Landroid/view/View;, ""
    .local p1, "$r1":Landroid/view/View;, ""
    move-object/from16 v0, p0

    iget-object v8, v0, Lb/a/b/b/c;->f:Landroid/text/Editable;

    invoke-static {v8}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v11

    .local v11, "$i0":I, ""
    const/4 v12, 0x0

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v8, v0, Lb/a/b/b/c;->f:Landroid/text/Editable;

    invoke-static {v8}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v13

    .local v13, "$i1":I, ""
    const/4 v12, 0x0

    invoke-static {v13, v12}, Ljava/lang/Math;->max(II)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v8, v0, Lb/a/b/b/c;->f:Landroid/text/Editable;

    invoke-static {v8}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v14

    .local v14, "$i2":I, ""
    move-object/from16 v0, p0

    iget-object v8, v0, Lb/a/b/b/c;->f:Landroid/text/Editable;

    invoke-static {v8}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v15

    .local v15, "$i3":I, ""
    move-object v0, v10

    move-object/from16 v1, p1

    move v2, v11

    move v3, v13

    move v4, v14

    move v5, v15

    invoke-virtual/range {v0 .. v5}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v8, v0, Lb/a/b/b/c;->f:Landroid/text/Editable;

    move-object/from16 v0, p0

    .local v0, "$r7":Landroid/text/Editable;, ""
    iget-object v0, v0, Lb/a/b/b/c;->f:Landroid/text/Editable;

    move-object/from16 v16, v0

    .end local v0    # "$r7":Landroid/text/Editable;, ""
    .local v16, "$r7":Landroid/text/Editable;, ""
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v11

    move-object/from16 v0, p2

    iget-object v7, v0, Lio/flutter/embedding/engine/e/p$d;->a:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-interface {v8, v12, v11, v7}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lb/a/b/b/c;->a(Lio/flutter/embedding/engine/e/p$d;)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lb/a/b/b/c;->b:Landroid/view/inputmethod/InputMethodManager;

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lb/a/b/b/c;->g:Z

    return-void
    .end local v14    # "$i2":I, ""
    .end local v7    # "$r3":Ljava/lang/String;, ""
    .end local p1    # "$r1":Landroid/view/View;, ""
    .end local v11    # "$i0":I, ""
    .end local v15    # "$i3":I, ""
    .end local v9    # "$r5":Ljava/lang/String;, ""
    .end local v8    # "$r4":Landroid/text/Editable;, ""
    .end local v6    # "$z0":Z, ""
    .end local v13    # "$i1":I, ""
    .end local v16    # "$r7":Landroid/text/Editable;, ""
    .end local v10    # "$r6":Landroid/view/inputmethod/InputMethodManager;, ""
.end method

.method public b()V
    .locals 4

    iget-object v0, p0, Lb/a/b/b/c;->d:Lb/a/b/b/c$a;

    .local v0, "$r2":Lb/a/b/b/c$a;, ""
    iget-object v1, v0, Lb/a/b/b/c$a;->a:Lb/a/b/b/c$a$a;

    .local v1, "$r3":Lb/a/b/b/c$a$a;, ""
    sget-object v2, Lb/a/b/b/c$a$a;->c:Lb/a/b/b/c$a$a;

    .local v2, "$r1":Lb/a/b/b/c$a$a;, ""
    if-ne v1, v2, :cond_0

    const/4 v3, 0x1

    iput-boolean v3, p0, Lb/a/b/b/c;->k:Z

    :cond_0
    return-void
    .end local v2    # "$r1":Lb/a/b/b/c$a$a;, ""
    .end local v0    # "$r2":Lb/a/b/b/c$a;, ""
    .end local v1    # "$r3":Lb/a/b/b/c$a$a;, ""
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/a/b/b/c;->k:Z

    return-void
.end method

.method public d()Landroid/view/inputmethod/InputConnection;
    .locals 1

    iget-object v0, p0, Lb/a/b/b/c;->h:Landroid/view/inputmethod/InputConnection;

    .local v0, "r1":Landroid/view/inputmethod/InputConnection;, ""
    return-object v0
    .end local v0    # "r1":Landroid/view/inputmethod/InputConnection;, ""
.end method
