.class Lio/flutter/plugin/platform/k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/plugin/platform/l;->a(Lio/flutter/embedding/engine/e/l$b;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/flutter/plugin/platform/q;

.field final synthetic b:Ljava/lang/Runnable;

.field final synthetic c:Lio/flutter/plugin/platform/l;


# direct methods
.method constructor <init>(Lio/flutter/plugin/platform/l;Lio/flutter/plugin/platform/q;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lio/flutter/plugin/platform/k;->c:Lio/flutter/plugin/platform/l;

    iput-object p2, p0, Lio/flutter/plugin/platform/k;->a:Lio/flutter/plugin/platform/q;

    iput-object p3, p0, Lio/flutter/plugin/platform/k;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lio/flutter/plugin/platform/k;->c:Lio/flutter/plugin/platform/l;

    .local v0, "$r2":Lio/flutter/plugin/platform/l;, ""
    iget-object v1, v0, Lio/flutter/plugin/platform/l;->a:Lio/flutter/plugin/platform/m;

    .local v1, "$r3":Lio/flutter/plugin/platform/m;, ""
    iget-object v2, p0, Lio/flutter/plugin/platform/k;->a:Lio/flutter/plugin/platform/q;

    .local v2, "$r1":Lio/flutter/plugin/platform/q;, ""
    invoke-static {v1, v2}, Lio/flutter/plugin/platform/m;->b(Lio/flutter/plugin/platform/m;Lio/flutter/plugin/platform/q;)V

    iget-object v3, p0, Lio/flutter/plugin/platform/k;->b:Ljava/lang/Runnable;

    .local v3, "$r4":Ljava/lang/Runnable;, ""
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    return-void
    .end local v2    # "$r1":Lio/flutter/plugin/platform/q;, ""
    .end local v1    # "$r3":Lio/flutter/plugin/platform/m;, ""
    .end local v3    # "$r4":Ljava/lang/Runnable;, ""
    .end local v0    # "$r2":Lio/flutter/plugin/platform/l;, ""
.end method
