.class Lio/flutter/embedding/engine/b/d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/embedding/engine/b/d$a;,
        Lio/flutter/embedding/engine/b/c;,
        Lio/flutter/embedding/engine/b/b;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/embedding/engine/b/d;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method a()V
    .locals 10

    iget-object v0, p0, Lio/flutter/embedding/engine/b/d;->a:Landroid/content/Context;

    .local v0, "$r2":Landroid/content/Context;, ""
    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    .local v1, "$r3":Ljava/io/File;, ""
    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v2, Lio/flutter/embedding/engine/b/d$a;

    .local v2, "$r1":Lio/flutter/embedding/engine/b/d$a;, ""
    new-instance v3, Lio/flutter/embedding/engine/b/b;

    .local v3, "$r4":Lio/flutter/embedding/engine/b/b;, ""
    invoke-direct {v3, p0}, Lio/flutter/embedding/engine/b/b;-><init>(Lio/flutter/embedding/engine/b/d;)V

    invoke-virtual {v1, v3}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v4

    .local v4, "$r5":[Ljava/io/File;, ""
    invoke-direct {v2, v4}, Lio/flutter/embedding/engine/b/d$a;-><init>([Ljava/io/File;)V

    invoke-virtual {v2}, Lio/flutter/embedding/engine/b/d$a;->a()Z

    move-result v5

    .local v5, "$z0":Z, ""
    if-nez v5, :cond_1

    return-void

    :cond_1
    new-instance v6, Landroid/os/Handler;

    .local v6, "$r6":Landroid/os/Handler;, ""
    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    new-instance v7, Lio/flutter/embedding/engine/b/c;

    .local v7, "$r7":Lio/flutter/embedding/engine/b/c;, ""
    invoke-direct {v7, p0, v2}, Lio/flutter/embedding/engine/b/c;-><init>(Lio/flutter/embedding/engine/b/d;Lio/flutter/embedding/engine/b/d$a;)V

    const-wide/16 v8, 0x1388

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
    .end local v1    # "$r3":Ljava/io/File;, ""
    .end local v2    # "$r1":Lio/flutter/embedding/engine/b/d$a;, ""
    .end local v4    # "$r5":[Ljava/io/File;, ""
    .end local v0    # "$r2":Landroid/content/Context;, ""
    .end local v3    # "$r4":Lio/flutter/embedding/engine/b/b;, ""
    .end local v6    # "$r6":Landroid/os/Handler;, ""
    .end local v5    # "$z0":Z, ""
    .end local v7    # "$r7":Lio/flutter/embedding/engine/b/c;, ""
.end method
