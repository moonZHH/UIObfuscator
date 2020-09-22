.class public Lio/flutter/embedding/engine/e/m;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/embedding/engine/e/m$b;,
        Lio/flutter/embedding/engine/e/m$a;
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
    const-string v2, "flutter/settings"

    invoke-direct {v0, p1, v2, v1}, Lb/a/b/a/d;-><init>(Lb/a/b/a/e;Ljava/lang/String;Lb/a/b/a/j;)V

    iput-object v0, p0, Lio/flutter/embedding/engine/e/m;->a:Lb/a/b/a/d;

    return-void
    .end local v1    # "$r3":Lb/a/b/a/g;, ""
    .end local v0    # "$r2":Lb/a/b/a/d;, ""
.end method


# virtual methods
.method public a()Lio/flutter/embedding/engine/e/m$a;
    .locals 2

    new-instance v0, Lio/flutter/embedding/engine/e/m$a;

    .local v0, "$r1":Lio/flutter/embedding/engine/e/m$a;, ""
    iget-object v1, p0, Lio/flutter/embedding/engine/e/m;->a:Lb/a/b/a/d;

    .local v1, "$r2":Lb/a/b/a/d;, ""
    invoke-direct {v0, v1}, Lio/flutter/embedding/engine/e/m$a;-><init>(Lb/a/b/a/d;)V

    return-object v0
    .end local v0    # "$r1":Lio/flutter/embedding/engine/e/m$a;, ""
    .end local v1    # "$r2":Lb/a/b/a/d;, ""
.end method
