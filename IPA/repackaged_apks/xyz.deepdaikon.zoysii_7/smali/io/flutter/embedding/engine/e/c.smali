.class public Lio/flutter/embedding/engine/e/c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/embedding/engine/e/c$a;
    }
.end annotation


# instance fields
.field public final a:Lb/a/b/a/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/a/b/a/d",
            "<",
            "Ljava/lang/Object;",
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
    sget-object v1, Lb/a/b/a/g;->a:Lb/a/b/a/g;

    .local v1, "$r3":Lb/a/b/a/g;, ""
    const-string v2, "flutter/keyevent"

    invoke-direct {v0, p1, v2, v1}, Lb/a/b/a/d;-><init>(Lb/a/b/a/e;Ljava/lang/String;Lb/a/b/a/j;)V

    iput-object v0, p0, Lio/flutter/embedding/engine/e/c;->a:Lb/a/b/a/d;

    return-void
    .end local v0    # "$r2":Lb/a/b/a/d;, ""
    .end local v1    # "$r3":Lb/a/b/a/g;, ""
.end method

.method private a(Lio/flutter/embedding/engine/e/c$a;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/flutter/embedding/engine/e/c$a;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget v0, p1, Lio/flutter/embedding/engine/e/c$a;->b:I

    .local v0, "$i0":I, ""
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .local v1, "$r3":Ljava/lang/Integer;, ""
    const-string v2, "flags"

    invoke-interface {p2, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p1, Lio/flutter/embedding/engine/e/c$a;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "plainCodePoint"

    invoke-interface {p2, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p1, Lio/flutter/embedding/engine/e/c$a;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "codePoint"

    invoke-interface {p2, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p1, Lio/flutter/embedding/engine/e/c$a;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "keyCode"

    invoke-interface {p2, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p1, Lio/flutter/embedding/engine/e/c$a;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "scanCode"

    invoke-interface {p2, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p1, Lio/flutter/embedding/engine/e/c$a;->h:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "metaState"

    invoke-interface {p2, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p1, Lio/flutter/embedding/engine/e/c$a;->f:Ljava/lang/Character;

    .local v3, "$r4":Ljava/lang/Character;, ""
    if-eqz v3, :cond_0

    iget-object v3, p1, Lio/flutter/embedding/engine/e/c$a;->f:Ljava/lang/Character;

    invoke-virtual {v3}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v4

    .local v4, "$r5":Ljava/lang/String;, ""
    const-string v2, "character"

    invoke-interface {p2, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget v0, p1, Lio/flutter/embedding/engine/e/c$a;->i:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "source"

    invoke-interface {p2, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p1, Lio/flutter/embedding/engine/e/c$a;->j:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "vendorId"

    invoke-interface {p2, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p1, Lio/flutter/embedding/engine/e/c$a;->k:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "productId"

    invoke-interface {p2, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p1, Lio/flutter/embedding/engine/e/c$a;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "deviceId"

    invoke-interface {p2, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p1, Lio/flutter/embedding/engine/e/c$a;->l:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "repeatCount"

    invoke-interface {p2, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
    .end local v0    # "$i0":I, ""
    .end local v3    # "$r4":Ljava/lang/Character;, ""
    .end local v1    # "$r3":Ljava/lang/Integer;, ""
    .end local v4    # "$r5":Ljava/lang/String;, ""
.end method


# virtual methods
.method public a(Lio/flutter/embedding/engine/e/c$a;)V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    .local v0, "$r1":Ljava/util/HashMap;, ""
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "type"

    const-string v2, "keyup"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "keymap"

    const-string v2, "android"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lio/flutter/embedding/engine/e/c;->a(Lio/flutter/embedding/engine/e/c$a;Ljava/util/Map;)V

    iget-object v3, p0, Lio/flutter/embedding/engine/e/c;->a:Lb/a/b/a/d;

    .local v3, "$r3":Lb/a/b/a/d;, ""
    invoke-virtual {v3, v0}, Lb/a/b/a/d;->a(Ljava/lang/Object;)V

    return-void
    .end local v0    # "$r1":Ljava/util/HashMap;, ""
    .end local v3    # "$r3":Lb/a/b/a/d;, ""
.end method

.method public b(Lio/flutter/embedding/engine/e/c$a;)V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    .local v0, "$r1":Ljava/util/HashMap;, ""
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "type"

    const-string v2, "keydown"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "keymap"

    const-string v2, "android"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lio/flutter/embedding/engine/e/c;->a(Lio/flutter/embedding/engine/e/c$a;Ljava/util/Map;)V

    iget-object v3, p0, Lio/flutter/embedding/engine/e/c;->a:Lb/a/b/a/d;

    .local v3, "$r3":Lb/a/b/a/d;, ""
    invoke-virtual {v3, v0}, Lb/a/b/a/d;->a(Ljava/lang/Object;)V

    return-void
    .end local v3    # "$r3":Lb/a/b/a/d;, ""
    .end local v0    # "$r1":Ljava/util/HashMap;, ""
.end method
