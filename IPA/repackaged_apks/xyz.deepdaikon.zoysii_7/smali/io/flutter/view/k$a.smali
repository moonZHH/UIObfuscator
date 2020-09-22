.class final Lio/flutter/view/k$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/flutter/embedding/engine/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/view/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EngineLifecycleListenerImpl"
.end annotation


# instance fields
.field final synthetic a:Lio/flutter/view/k;


# direct methods
.method private constructor <init>(Lio/flutter/view/k;)V
    .locals 0

    iput-object p1, p0, Lio/flutter/view/k$a;->a:Lio/flutter/view/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/flutter/view/k;Lio/flutter/view/j;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/flutter/view/k$a;-><init>(Lio/flutter/view/k;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lio/flutter/view/k$a;->a:Lio/flutter/view/k;

    .local v0, "$r1":Lio/flutter/view/k;, ""
    invoke-static {v0}, Lio/flutter/view/k;->a(Lio/flutter/view/k;)Lio/flutter/view/p;

    move-result-object v1

    .local v1, "$r2":Lio/flutter/view/p;, ""
    if-eqz v1, :cond_0

    iget-object v0, p0, Lio/flutter/view/k$a;->a:Lio/flutter/view/k;

    invoke-static {v0}, Lio/flutter/view/k;->a(Lio/flutter/view/k;)Lio/flutter/view/p;

    move-result-object v1

    invoke-virtual {v1}, Lio/flutter/view/p;->l()V

    :cond_0
    iget-object v0, p0, Lio/flutter/view/k$a;->a:Lio/flutter/view/k;

    invoke-static {v0}, Lio/flutter/view/k;->b(Lio/flutter/view/k;)Lio/flutter/app/f;

    move-result-object v2

    .local v2, "$r3":Lio/flutter/app/f;, ""
    if-nez v2, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lio/flutter/view/k$a;->a:Lio/flutter/view/k;

    invoke-static {v0}, Lio/flutter/view/k;->b(Lio/flutter/view/k;)Lio/flutter/app/f;

    move-result-object v2

    invoke-virtual {v2}, Lio/flutter/app/f;->b()V

    return-void
    .end local v1    # "$r2":Lio/flutter/view/p;, ""
    .end local v2    # "$r3":Lio/flutter/app/f;, ""
    .end local v0    # "$r1":Lio/flutter/view/k;, ""
.end method
