.class Lio/flutter/embedding/engine/e/j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/embedding/engine/e/k;->d(Lb/a/b/a/k;Lb/a/b/a/m$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lb/a/b/a/m$d;

.field final synthetic b:Lio/flutter/embedding/engine/e/k;


# direct methods
.method constructor <init>(Lio/flutter/embedding/engine/e/k;Lb/a/b/a/m$d;)V
    .locals 0

    iput-object p1, p0, Lio/flutter/embedding/engine/e/j;->b:Lio/flutter/embedding/engine/e/k;

    iput-object p2, p0, Lio/flutter/embedding/engine/e/j;->a:Lb/a/b/a/m$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lio/flutter/embedding/engine/e/j;->a:Lb/a/b/a/m$d;

    .local v0, "$r1":Lb/a/b/a/m$d;, ""
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lb/a/b/a/m$d;->a(Ljava/lang/Object;)V

    return-void
    .end local v0    # "$r1":Lb/a/b/a/m$d;, ""
.end method
