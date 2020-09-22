.class public Lio/flutter/embedding/engine/e/f;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Lb/a/b/a/m;


# direct methods
.method public constructor <init>(Lio/flutter/embedding/engine/a/b;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lb/a/b/a/m;

    .local v0, "$r2":Lb/a/b/a/m;, ""
    sget-object v1, Lb/a/b/a/h;->a:Lb/a/b/a/h;

    .local v1, "$r3":Lb/a/b/a/h;, ""
    const-string v2, "flutter/navigation"

    invoke-direct {v0, p1, v2, v1}, Lb/a/b/a/m;-><init>(Lb/a/b/a/e;Ljava/lang/String;Lb/a/b/a/n;)V

    iput-object v0, p0, Lio/flutter/embedding/engine/e/f;->a:Lb/a/b/a/m;

    return-void
    .end local v0    # "$r2":Lb/a/b/a/m;, ""
    .end local v1    # "$r3":Lb/a/b/a/h;, ""
.end method


# virtual methods
.method public a()V
    .locals 4

    const-string v0, "NavigationChannel"

    const-string v1, "Sending message to pop route."

    invoke-static {v0, v1}, Lb/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lio/flutter/embedding/engine/e/f;->a:Lb/a/b/a/m;

    .local v2, "$r1":Lb/a/b/a/m;, ""
    const-string v0, "popRoute"

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lb/a/b/a/m;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
    .end local v2    # "$r1":Lb/a/b/a/m;, ""
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    .local v0, "$r3":Ljava/lang/StringBuilder;, ""
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sending message to set initial route to \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, "$r2":Ljava/lang/String;, ""
    const-string v1, "NavigationChannel"

    invoke-static {v1, v2}, Lb/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lio/flutter/embedding/engine/e/f;->a:Lb/a/b/a/m;

    .local v3, "$r4":Lb/a/b/a/m;, ""
    const-string v1, "setInitialRoute"

    invoke-virtual {v3, v1, p1}, Lb/a/b/a/m;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
    .end local v2    # "$r2":Ljava/lang/String;, ""
    .end local v3    # "$r4":Lb/a/b/a/m;, ""
    .end local v0    # "$r3":Ljava/lang/StringBuilder;, ""
.end method
