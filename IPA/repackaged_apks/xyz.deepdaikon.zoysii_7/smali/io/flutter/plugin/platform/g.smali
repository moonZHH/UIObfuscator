.class public abstract Lio/flutter/plugin/platform/g;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public final a()Lb/a/b/a/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb/a/b/a/j",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/NullPointerException;

    .local v0, "r1":Ljava/lang/NullPointerException;, ""
    const-string v1, "Null throw statement replaced by Soot"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    .end local v0    # "r1":Ljava/lang/NullPointerException;, ""
.end method

.method public abstract a(Landroid/content/Context;ILjava/lang/Object;)Lio/flutter/plugin/platform/f;
.end method
