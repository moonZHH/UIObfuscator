.class Lio/flutter/embedding/engine/a/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/a/b/a/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/engine/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/flutter/embedding/engine/a/b;


# direct methods
.method constructor <init>(Lio/flutter/embedding/engine/a/b;)V
    .locals 0

    iput-object p1, p0, Lio/flutter/embedding/engine/a/a;->a:Lio/flutter/embedding/engine/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/nio/ByteBuffer;Lb/a/b/a/e$b;)V
    .locals 4

    iget-object v0, p0, Lio/flutter/embedding/engine/a/a;->a:Lio/flutter/embedding/engine/a/b;

    .local v0, "$r4":Lio/flutter/embedding/engine/a/b;, ""
    sget-object v1, Lb/a/b/a/r;->b:Lb/a/b/a/r;

    .local v1, "$r1":Lb/a/b/a/r;, ""
    invoke-virtual {v1, p1}, Lb/a/b/a/r;->b(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v2

    .local v2, "$r5":Ljava/lang/String;, ""
    invoke-static {v0, v2}, Lio/flutter/embedding/engine/a/b;->a(Lio/flutter/embedding/engine/a/b;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lio/flutter/embedding/engine/a/a;->a:Lio/flutter/embedding/engine/a/b;

    invoke-static {v0}, Lio/flutter/embedding/engine/a/b;->a(Lio/flutter/embedding/engine/a/b;)Lio/flutter/embedding/engine/a/b$b;

    move-result-object v3

    .local v3, "$r6":Lio/flutter/embedding/engine/a/b$b;, ""
    if-eqz v3, :cond_0

    iget-object v0, p0, Lio/flutter/embedding/engine/a/a;->a:Lio/flutter/embedding/engine/a/b;

    invoke-static {v0}, Lio/flutter/embedding/engine/a/b;->a(Lio/flutter/embedding/engine/a/b;)Lio/flutter/embedding/engine/a/b$b;

    move-result-object v3

    iget-object v0, p0, Lio/flutter/embedding/engine/a/a;->a:Lio/flutter/embedding/engine/a/b;

    invoke-static {v0}, Lio/flutter/embedding/engine/a/b;->b(Lio/flutter/embedding/engine/a/b;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lio/flutter/embedding/engine/a/b$b;->a(Ljava/lang/String;)V

    :cond_0
    return-void
    .end local v0    # "$r4":Lio/flutter/embedding/engine/a/b;, ""
    .end local v3    # "$r6":Lio/flutter/embedding/engine/a/b$b;, ""
    .end local v1    # "$r1":Lb/a/b/a/r;, ""
    .end local v2    # "$r5":Ljava/lang/String;, ""
.end method
