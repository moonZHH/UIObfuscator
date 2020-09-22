.class Lio/flutter/plugin/platform/SingleViewPresentation$c;
.super Landroid/content/ContextWrapper;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugin/platform/SingleViewPresentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImmContext"
.end annotation


# instance fields
.field private final a:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/flutter/plugin/platform/SingleViewPresentation$c;-><init>(Landroid/content/Context;Landroid/view/inputmethod/InputMethodManager;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/view/inputmethod/InputMethodManager;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "input_method"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .local v0, "$r1":Ljava/lang/Object;, ""
    move-object v2, v0

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    move-object p2, v2

    .local p2, "$r3":Landroid/view/inputmethod/InputMethodManager;, ""
    :goto_0
    iput-object p2, p0, Lio/flutter/plugin/platform/SingleViewPresentation$c;->a:Landroid/view/inputmethod/InputMethodManager;

    return-void
    .end local p2    # "$r3":Landroid/view/inputmethod/InputMethodManager;, ""
    .end local v0    # "$r1":Ljava/lang/Object;, ""
.end method


# virtual methods
.method public createDisplayContext(Landroid/view/Display;)Landroid/content/Context;
    .locals 3

    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v0

    .local v0, "$r3":Landroid/content/Context;, ""
    new-instance v1, Lio/flutter/plugin/platform/SingleViewPresentation$c;

    .local v1, "$r1":Lio/flutter/plugin/platform/SingleViewPresentation$c;, ""
    iget-object v2, p0, Lio/flutter/plugin/platform/SingleViewPresentation$c;->a:Landroid/view/inputmethod/InputMethodManager;

    .local v2, "$r2":Landroid/view/inputmethod/InputMethodManager;, ""
    invoke-direct {v1, v0, v2}, Lio/flutter/plugin/platform/SingleViewPresentation$c;-><init>(Landroid/content/Context;Landroid/view/inputmethod/InputMethodManager;)V

    return-object v1
    .end local v0    # "$r3":Landroid/content/Context;, ""
    .end local v1    # "$r1":Lio/flutter/plugin/platform/SingleViewPresentation$c;, ""
    .end local v2    # "$r2":Landroid/view/inputmethod/InputMethodManager;, ""
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    const-string v0, "input_method"

    .local v0, "$r2":Ljava/lang/String;, ""
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .local v1, "$z0":Z, ""
    if-eqz v1, :cond_0

    iget-object v2, p0, Lio/flutter/plugin/platform/SingleViewPresentation$c;->a:Landroid/view/inputmethod/InputMethodManager;

    .local v2, "r4":Landroid/view/inputmethod/InputMethodManager;, ""
    return-object v2

    :cond_0
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .local v3, "$r3":Ljava/lang/Object;, ""
    return-object v3
    .end local v3    # "$r3":Ljava/lang/Object;, ""
    .end local v0    # "$r2":Ljava/lang/String;, ""
    .end local v1    # "$z0":Z, ""
    .end local v2    # "r4":Landroid/view/inputmethod/InputMethodManager;, ""
.end method
