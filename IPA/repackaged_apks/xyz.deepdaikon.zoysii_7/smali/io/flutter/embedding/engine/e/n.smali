.class public Lio/flutter/embedding/engine/e/n;
.super Ljava/lang/Object;
.source ""


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
    const-string v2, "flutter/system"

    invoke-direct {v0, p1, v2, v1}, Lb/a/b/a/d;-><init>(Lb/a/b/a/e;Ljava/lang/String;Lb/a/b/a/j;)V

    iput-object v0, p0, Lio/flutter/embedding/engine/e/n;->a:Lb/a/b/a/d;

    return-void
    .end local v0    # "$r2":Lb/a/b/a/d;, ""
    .end local v1    # "$r3":Lb/a/b/a/g;, ""
.end method


# virtual methods
.method public a()V
    .locals 5

    const-string v0, "SystemChannel"

    const-string v1, "Sending memory pressure warning to Flutter."

    invoke-static {v0, v1}, Lb/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/util/HashMap;

    .local v2, "$r1":Ljava/util/HashMap;, ""
    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    const-string v0, "type"

    const-string v1, "memoryPressure"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lio/flutter/embedding/engine/e/n;->a:Lb/a/b/a/d;

    .local v4, "$r2":Lb/a/b/a/d;, ""
    invoke-virtual {v4, v2}, Lb/a/b/a/d;->a(Ljava/lang/Object;)V

    return-void
    .end local v2    # "$r1":Ljava/util/HashMap;, ""
    .end local v4    # "$r2":Lb/a/b/a/d;, ""
.end method
