.class Lio/flutter/view/j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/flutter/embedding/engine/d/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/view/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/flutter/view/k;


# direct methods
.method constructor <init>(Lio/flutter/view/k;)V
    .locals 0

    iput-object p1, p0, Lio/flutter/view/j;->a:Lio/flutter/view/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lio/flutter/view/j;->a:Lio/flutter/view/k;

    .local v0, "$r1":Lio/flutter/view/k;, ""
    invoke-static {v0}, Lio/flutter/view/k;->a(Lio/flutter/view/k;)Lio/flutter/view/p;

    move-result-object v1

    .local v1, "$r2":Lio/flutter/view/p;, ""
    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lio/flutter/view/j;->a:Lio/flutter/view/k;

    invoke-static {v0}, Lio/flutter/view/k;->a(Lio/flutter/view/k;)Lio/flutter/view/p;

    move-result-object v1

    invoke-virtual {v1}, Lio/flutter/view/p;->m()V

    return-void
    .end local v0    # "$r1":Lio/flutter/view/k;, ""
    .end local v1    # "$r2":Lio/flutter/view/p;, ""
.end method
