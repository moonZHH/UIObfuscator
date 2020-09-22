.class public Lb/a/c/a/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/flutter/embedding/engine/c/a;


# instance fields
.field private a:Lb/a/b/a/m;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lb/a/b/a/e;Landroid/content/Context;)V
    .locals 3

    new-instance v0, Lb/a/b/a/m;

    .local v0, "$r1":Lb/a/b/a/m;, ""
    const-string v1, "plugins.flutter.io/shared_preferences"

    invoke-direct {v0, p1, v1}, Lb/a/b/a/m;-><init>(Lb/a/b/a/e;Ljava/lang/String;)V

    iput-object v0, p0, Lb/a/c/a/c;->a:Lb/a/b/a/m;

    new-instance v2, Lb/a/c/a/b;

    .local v2, "$r4":Lb/a/c/a/b;, ""
    invoke-direct {v2, p2}, Lb/a/c/a/b;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lb/a/c/a/c;->a:Lb/a/b/a/m;

    invoke-virtual {v0, v2}, Lb/a/b/a/m;->a(Lb/a/b/a/m$c;)V

    return-void
    .end local v0    # "$r1":Lb/a/b/a/m;, ""
    .end local v2    # "$r4":Lb/a/c/a/b;, ""
.end method

.method public static a(Lb/a/b/a/o$c;)V
    .locals 3

    new-instance v0, Lb/a/c/a/c;

    .local v0, "$r0":Lb/a/c/a/c;, ""
    invoke-direct {v0}, Lb/a/c/a/c;-><init>()V

    invoke-interface {p0}, Lb/a/b/a/o$c;->c()Lb/a/b/a/e;

    move-result-object v1

    .local v1, "$r2":Lb/a/b/a/e;, ""
    invoke-interface {p0}, Lb/a/b/a/o$c;->a()Landroid/content/Context;

    move-result-object v2

    .local v2, "$r3":Landroid/content/Context;, ""
    invoke-direct {v0, v1, v2}, Lb/a/c/a/c;->a(Lb/a/b/a/e;Landroid/content/Context;)V

    return-void
    .end local v1    # "$r2":Lb/a/b/a/e;, ""
    .end local v2    # "$r3":Landroid/content/Context;, ""
    .end local v0    # "$r0":Lb/a/c/a/c;, ""
.end method
