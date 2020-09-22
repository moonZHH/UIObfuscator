.class public abstract Lio/flutter/plugins/urllauncher/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/flutter/embedding/engine/c/a;
.implements Lio/flutter/embedding/engine/c/a/a;


# direct methods
.method public static a(Lb/a/b/a/o$c;)V
    .locals 5

    new-instance v0, Lio/flutter/plugins/urllauncher/a;

    .local v0, "$r0":Lio/flutter/plugins/urllauncher/a;, ""
    new-instance v1, Lio/flutter/plugins/urllauncher/b;

    .local v1, "$r1":Lio/flutter/plugins/urllauncher/b;, ""
    invoke-interface {p0}, Lb/a/b/a/o$c;->a()Landroid/content/Context;

    move-result-object v2

    .local v2, "$r3":Landroid/content/Context;, ""
    invoke-interface {p0}, Lb/a/b/a/o$c;->b()Landroid/app/Activity;

    move-result-object v3

    .local v3, "$r4":Landroid/app/Activity;, ""
    invoke-direct {v1, v2, v3}, Lio/flutter/plugins/urllauncher/b;-><init>(Landroid/content/Context;Landroid/app/Activity;)V

    invoke-direct {v0, v1}, Lio/flutter/plugins/urllauncher/a;-><init>(Lio/flutter/plugins/urllauncher/b;)V

    invoke-interface {p0}, Lb/a/b/a/o$c;->c()Lb/a/b/a/e;

    move-result-object v4

    .local v4, "$r5":Lb/a/b/a/e;, ""
    invoke-virtual {v0, v4}, Lio/flutter/plugins/urllauncher/a;->a(Lb/a/b/a/e;)V

    return-void
    .end local v0    # "$r0":Lio/flutter/plugins/urllauncher/a;, ""
    .end local v2    # "$r3":Landroid/content/Context;, ""
    .end local v3    # "$r4":Landroid/app/Activity;, ""
    .end local v4    # "$r5":Lb/a/b/a/e;, ""
    .end local v1    # "$r1":Lio/flutter/plugins/urllauncher/b;, ""
.end method
