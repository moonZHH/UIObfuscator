.class Lio/flutter/embedding/engine/b/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/embedding/engine/b/d;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/flutter/embedding/engine/b/d$a;

.field final synthetic b:Lio/flutter/embedding/engine/b/d;


# direct methods
.method constructor <init>(Lio/flutter/embedding/engine/b/d;Lio/flutter/embedding/engine/b/d$a;)V
    .locals 0

    iput-object p1, p0, Lio/flutter/embedding/engine/b/c;->b:Lio/flutter/embedding/engine/b/d;

    iput-object p2, p0, Lio/flutter/embedding/engine/b/c;->a:Lio/flutter/embedding/engine/b/d$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lio/flutter/embedding/engine/b/c;->a:Lio/flutter/embedding/engine/b/d$a;

    .local v0, "$r1":Lio/flutter/embedding/engine/b/d$a;, ""
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .local v1, "$r2":Ljava/util/concurrent/Executor;, ""
    const/4 v3, 0x0

    new-array v2, v3, [Ljava/lang/Void;

    .local v2, "$r3":[Ljava/lang/Void;, ""
    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
    .end local v2    # "$r3":[Ljava/lang/Void;, ""
    .end local v1    # "$r2":Ljava/util/concurrent/Executor;, ""
    .end local v0    # "$r1":Lio/flutter/embedding/engine/b/d$a;, ""
.end method
