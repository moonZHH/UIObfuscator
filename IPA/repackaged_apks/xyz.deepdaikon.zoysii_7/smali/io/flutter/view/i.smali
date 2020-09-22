.class public abstract Lio/flutter/view/i;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:Z


# direct methods
.method public static a()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lio/flutter/embedding/engine/b/a;->a()Lio/flutter/embedding/engine/b/a;

    move-result-object v0

    .local v0, "$r0":Lio/flutter/embedding/engine/b/a;, ""
    invoke-virtual {v0}, Lio/flutter/embedding/engine/b/a;->b()Ljava/lang/String;

    move-result-object v1

    .local v1, "$r1":Ljava/lang/String;, ""
    return-object v1
    .end local v1    # "$r1":Ljava/lang/String;, ""
    .end local v0    # "$r0":Lio/flutter/embedding/engine/b/a;, ""
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    sget-boolean v0, Lio/flutter/view/i;->a:Z

    .local v0, "$z0":Z, ""
    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lio/flutter/embedding/engine/b/a;->a()Lio/flutter/embedding/engine/b/a;

    move-result-object v1

    .local v1, "$r1":Lio/flutter/embedding/engine/b/a;, ""
    invoke-virtual {v1, p0}, Lio/flutter/embedding/engine/b/a;->a(Landroid/content/Context;)V

    return-void
    .end local v0    # "$z0":Z, ""
    .end local v1    # "$r1":Lio/flutter/embedding/engine/b/a;, ""
.end method

.method public static a(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lio/flutter/view/i;->a:Z

    .local v0, "$z0":Z, ""
    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lio/flutter/embedding/engine/b/a;->a()Lio/flutter/embedding/engine/b/a;

    move-result-object v1

    .local v1, "$r2":Lio/flutter/embedding/engine/b/a;, ""
    invoke-virtual {v1, p0, p1}, Lio/flutter/embedding/engine/b/a;->a(Landroid/content/Context;[Ljava/lang/String;)V

    return-void
    .end local v1    # "$r2":Lio/flutter/embedding/engine/b/a;, ""
    .end local v0    # "$z0":Z, ""
.end method
