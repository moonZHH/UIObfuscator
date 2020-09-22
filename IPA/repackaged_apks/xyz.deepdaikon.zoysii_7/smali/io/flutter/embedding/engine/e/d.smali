.class public Lio/flutter/embedding/engine/e/d;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Lb/a/b/a/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/a/b/a/d",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/flutter/embedding/engine/a/b;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lb/a/b/a/d;

    .local v0, "$r2":Lb/a/b/a/d;, ""
    sget-object v1, Lb/a/b/a/r;->b:Lb/a/b/a/r;

    .local v1, "$r3":Lb/a/b/a/r;, ""
    const-string v2, "flutter/lifecycle"

    invoke-direct {v0, p1, v2, v1}, Lb/a/b/a/d;-><init>(Lb/a/b/a/e;Ljava/lang/String;Lb/a/b/a/j;)V

    iput-object v0, p0, Lio/flutter/embedding/engine/e/d;->a:Lb/a/b/a/d;

    return-void
    .end local v1    # "$r3":Lb/a/b/a/r;, ""
    .end local v0    # "$r2":Lb/a/b/a/d;, ""
.end method


# virtual methods
.method public a()V
    .locals 3

    const-string v0, "LifecycleChannel"

    const-string v1, "Sending AppLifecycleState.inactive message."

    invoke-static {v0, v1}, Lb/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lio/flutter/embedding/engine/e/d;->a:Lb/a/b/a/d;

    .local v2, "$r1":Lb/a/b/a/d;, ""
    const-string v0, "AppLifecycleState.inactive"

    invoke-virtual {v2, v0}, Lb/a/b/a/d;->a(Ljava/lang/Object;)V

    return-void
    .end local v2    # "$r1":Lb/a/b/a/d;, ""
.end method

.method public b()V
    .locals 3

    const-string v0, "LifecycleChannel"

    const-string v1, "Sending AppLifecycleState.resumed message."

    invoke-static {v0, v1}, Lb/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lio/flutter/embedding/engine/e/d;->a:Lb/a/b/a/d;

    .local v2, "$r1":Lb/a/b/a/d;, ""
    const-string v0, "AppLifecycleState.resumed"

    invoke-virtual {v2, v0}, Lb/a/b/a/d;->a(Ljava/lang/Object;)V

    return-void
    .end local v2    # "$r1":Lb/a/b/a/d;, ""
.end method

.method public c()V
    .locals 3

    const-string v0, "LifecycleChannel"

    const-string v1, "Sending AppLifecycleState.paused message."

    invoke-static {v0, v1}, Lb/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lio/flutter/embedding/engine/e/d;->a:Lb/a/b/a/d;

    .local v2, "$r1":Lb/a/b/a/d;, ""
    const-string v0, "AppLifecycleState.paused"

    invoke-virtual {v2, v0}, Lb/a/b/a/d;->a(Ljava/lang/Object;)V

    return-void
    .end local v2    # "$r1":Lb/a/b/a/d;, ""
.end method
