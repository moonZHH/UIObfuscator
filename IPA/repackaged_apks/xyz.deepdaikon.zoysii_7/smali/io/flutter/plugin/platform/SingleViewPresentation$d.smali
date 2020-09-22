.class Lio/flutter/plugin/platform/SingleViewPresentation$d;
.super Landroid/content/ContextWrapper;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugin/platform/SingleViewPresentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PresentationContext"
.end annotation


# instance fields
.field private final a:Lio/flutter/plugin/platform/SingleViewPresentation$f;

.field private b:Landroid/view/WindowManager;


# direct methods
.method constructor <init>(Landroid/content/Context;Lio/flutter/plugin/platform/SingleViewPresentation$f;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lio/flutter/plugin/platform/SingleViewPresentation$d;->a:Lio/flutter/plugin/platform/SingleViewPresentation$f;

    return-void
.end method

.method private a()Landroid/view/WindowManager;
    .locals 2

    iget-object v0, p0, Lio/flutter/plugin/platform/SingleViewPresentation$d;->b:Landroid/view/WindowManager;

    .local v0, "$r1":Landroid/view/WindowManager;, ""
    if-nez v0, :cond_0

    iget-object v1, p0, Lio/flutter/plugin/platform/SingleViewPresentation$d;->a:Lio/flutter/plugin/platform/SingleViewPresentation$f;

    .local v1, "$r2":Lio/flutter/plugin/platform/SingleViewPresentation$f;, ""
    invoke-virtual {v1}, Lio/flutter/plugin/platform/SingleViewPresentation$f;->a()Landroid/view/WindowManager;

    move-result-object v0

    iput-object v0, p0, Lio/flutter/plugin/platform/SingleViewPresentation$d;->b:Landroid/view/WindowManager;

    :cond_0
    iget-object v0, p0, Lio/flutter/plugin/platform/SingleViewPresentation$d;->b:Landroid/view/WindowManager;

    return-object v0
    .end local v0    # "$r1":Landroid/view/WindowManager;, ""
    .end local v1    # "$r2":Lio/flutter/plugin/platform/SingleViewPresentation$f;, ""
.end method


# virtual methods
.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    const-string v0, "window"

    .local v0, "$r2":Ljava/lang/String;, ""
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .local v1, "$z0":Z, ""
    if-eqz v1, :cond_0

    invoke-direct {p0}, Lio/flutter/plugin/platform/SingleViewPresentation$d;->a()Landroid/view/WindowManager;

    move-result-object v2

    .local v2, "$r3":Landroid/view/WindowManager;, ""
    return-object v2

    :cond_0
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .local v3, "$r4":Ljava/lang/Object;, ""
    return-object v3
    .end local v1    # "$z0":Z, ""
    .end local v0    # "$r2":Ljava/lang/String;, ""
    .end local v2    # "$r3":Landroid/view/WindowManager;, ""
    .end local v3    # "$r4":Ljava/lang/Object;, ""
.end method
