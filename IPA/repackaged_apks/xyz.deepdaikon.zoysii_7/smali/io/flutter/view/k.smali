.class public Lio/flutter/view/k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/a/b/a/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/view/k$a;,
        Lio/flutter/view/j;
    }
.end annotation


# instance fields
.field private final a:Lio/flutter/app/f;

.field private final b:Lio/flutter/embedding/engine/a/b;

.field private c:Lio/flutter/view/p;

.field private final d:Lio/flutter/embedding/engine/FlutterJNI;

.field private final e:Landroid/content/Context;

.field private f:Z

.field private final g:Lio/flutter/embedding/engine/d/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/flutter/view/k;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/flutter/view/j;

    .local v0, "$r3":Lio/flutter/view/j;, ""
    invoke-direct {v0, p0}, Lio/flutter/view/j;-><init>(Lio/flutter/view/k;)V

    iput-object v0, p0, Lio/flutter/view/k;->g:Lio/flutter/embedding/engine/d/d;

    iput-object p1, p0, Lio/flutter/view/k;->e:Landroid/content/Context;

    new-instance v1, Lio/flutter/app/f;

    .local v1, "$r4":Lio/flutter/app/f;, ""
    invoke-direct {v1, p0, p1}, Lio/flutter/app/f;-><init>(Lio/flutter/view/k;Landroid/content/Context;)V

    iput-object v1, p0, Lio/flutter/view/k;->a:Lio/flutter/app/f;

    new-instance v2, Lio/flutter/embedding/engine/FlutterJNI;

    .local v2, "$r5":Lio/flutter/embedding/engine/FlutterJNI;, ""
    invoke-direct {v2}, Lio/flutter/embedding/engine/FlutterJNI;-><init>()V

    iput-object v2, p0, Lio/flutter/view/k;->d:Lio/flutter/embedding/engine/FlutterJNI;

    iget-object v2, p0, Lio/flutter/view/k;->d:Lio/flutter/embedding/engine/FlutterJNI;

    iget-object v3, p0, Lio/flutter/view/k;->g:Lio/flutter/embedding/engine/d/d;

    .local v3, "$r6":Lio/flutter/embedding/engine/d/d;, ""
    invoke-virtual {v2, v3}, Lio/flutter/embedding/engine/FlutterJNI;->addIsDisplayingFlutterUiListener(Lio/flutter/embedding/engine/d/d;)V

    new-instance v4, Lio/flutter/embedding/engine/a/b;

    .local v4, "$r7":Lio/flutter/embedding/engine/a/b;, ""
    iget-object v2, p0, Lio/flutter/view/k;->d:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    .local v5, "$r1":Landroid/content/res/AssetManager;, ""
    invoke-direct {v4, v2, v5}, Lio/flutter/embedding/engine/a/b;-><init>(Lio/flutter/embedding/engine/FlutterJNI;Landroid/content/res/AssetManager;)V

    iput-object v4, p0, Lio/flutter/view/k;->b:Lio/flutter/embedding/engine/a/b;

    iget-object v2, p0, Lio/flutter/view/k;->d:Lio/flutter/embedding/engine/FlutterJNI;

    new-instance v6, Lio/flutter/view/k$a;

    .local v6, "$r8":Lio/flutter/view/k$a;, ""
    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lio/flutter/view/k$a;-><init>(Lio/flutter/view/k;Lio/flutter/view/j;)V

    invoke-virtual {v2, v6}, Lio/flutter/embedding/engine/FlutterJNI;->addEngineLifecycleListener(Lio/flutter/embedding/engine/a$a;)V

    invoke-direct {p0, p0, p2}, Lio/flutter/view/k;->a(Lio/flutter/view/k;Z)V

    invoke-virtual {p0}, Lio/flutter/view/k;->f()V

    return-void
    .end local v5    # "$r1":Landroid/content/res/AssetManager;, ""
    .end local v1    # "$r4":Lio/flutter/app/f;, ""
    .end local v3    # "$r6":Lio/flutter/embedding/engine/d/d;, ""
    .end local v6    # "$r8":Lio/flutter/view/k$a;, ""
    .end local v2    # "$r5":Lio/flutter/embedding/engine/FlutterJNI;, ""
    .end local v0    # "$r3":Lio/flutter/view/j;, ""
    .end local v4    # "$r7":Lio/flutter/embedding/engine/a/b;, ""
.end method

.method static synthetic a(Lio/flutter/view/k;)Lio/flutter/view/p;
    .locals 1

    iget-object v0, p0, Lio/flutter/view/k;->c:Lio/flutter/view/p;

    .local v0, "r1":Lio/flutter/view/p;, ""
    return-object v0
    .end local v0    # "r1":Lio/flutter/view/p;, ""
.end method

.method private a(Lio/flutter/view/k;Z)V
    .locals 2

    iget-object v0, p0, Lio/flutter/view/k;->d:Lio/flutter/embedding/engine/FlutterJNI;

    .local v0, "$r2":Lio/flutter/embedding/engine/FlutterJNI;, ""
    invoke-virtual {v0, p2}, Lio/flutter/embedding/engine/FlutterJNI;->attachToNative(Z)V

    iget-object v1, p0, Lio/flutter/view/k;->b:Lio/flutter/embedding/engine/a/b;

    .local v1, "$r3":Lio/flutter/embedding/engine/a/b;, ""
    invoke-virtual {v1}, Lio/flutter/embedding/engine/a/b;->a()V

    return-void
    .end local v1    # "$r3":Lio/flutter/embedding/engine/a/b;, ""
    .end local v0    # "$r2":Lio/flutter/embedding/engine/FlutterJNI;, ""
.end method

.method static synthetic b(Lio/flutter/view/k;)Lio/flutter/app/f;
    .locals 1

    iget-object v0, p0, Lio/flutter/view/k;->a:Lio/flutter/app/f;

    .local v0, "r1":Lio/flutter/app/f;, ""
    return-object v0
    .end local v0    # "r1":Lio/flutter/app/f;, ""
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lio/flutter/view/k;->a:Lio/flutter/app/f;

    .local v0, "$r1":Lio/flutter/app/f;, ""
    invoke-virtual {v0}, Lio/flutter/app/f;->a()V

    const/4 v1, 0x0

    iput-object v1, p0, Lio/flutter/view/k;->c:Lio/flutter/view/p;

    return-void
    .end local v0    # "$r1":Lio/flutter/app/f;, ""
.end method

.method public a(Lio/flutter/view/l;)V
    .locals 11

    iget-object v0, p1, Lio/flutter/view/l;->b:Ljava/lang/String;

    .local v0, "$r1":Ljava/lang/String;, ""
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lio/flutter/view/k;->f()V

    iget-boolean v1, p0, Lio/flutter/view/k;->f:Z

    .local v1, "$z0":Z, ""
    if-nez v1, :cond_0

    iget-object v2, p0, Lio/flutter/view/k;->d:Lio/flutter/embedding/engine/FlutterJNI;

    .local v2, "$r4":Lio/flutter/embedding/engine/FlutterJNI;, ""
    iget-object v0, p1, Lio/flutter/view/l;->a:Ljava/lang/String;

    iget-object v3, p1, Lio/flutter/view/l;->b:Ljava/lang/String;

    .local v3, "$r2":Ljava/lang/String;, ""
    iget-object v4, p1, Lio/flutter/view/l;->c:Ljava/lang/String;

    .local v4, "$r5":Ljava/lang/String;, ""
    iget-object v5, p0, Lio/flutter/view/k;->e:Landroid/content/Context;

    .local v5, "$r6":Landroid/content/Context;, ""
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .local v6, "$r7":Landroid/content/res/Resources;, ""
    invoke-virtual {v6}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    .local v7, "$r8":Landroid/content/res/AssetManager;, ""
    invoke-virtual {v2, v0, v3, v4, v7}, Lio/flutter/embedding/engine/FlutterJNI;->runBundleAndSnapshotFromLibrary(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/AssetManager;)V

    const/4 v8, 0x1

    iput-boolean v8, p0, Lio/flutter/view/k;->f:Z

    return-void

    :cond_0
    new-instance v9, Ljava/lang/AssertionError;

    .local v9, "$r9":Ljava/lang/AssertionError;, ""
    const-string v10, "This Flutter engine instance is already running an application"

    invoke-direct {v9, v10}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v9

    :cond_1
    new-instance v9, Ljava/lang/AssertionError;

    const-string v10, "An entrypoint must be specified"

    invoke-direct {v9, v10}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v9
    .end local v2    # "$r4":Lio/flutter/embedding/engine/FlutterJNI;, ""
    .end local v3    # "$r2":Ljava/lang/String;, ""
    .end local v7    # "$r8":Landroid/content/res/AssetManager;, ""
    .end local v9    # "$r9":Ljava/lang/AssertionError;, ""
    .end local v5    # "$r6":Landroid/content/Context;, ""
    .end local v6    # "$r7":Landroid/content/res/Resources;, ""
    .end local v4    # "$r5":Ljava/lang/String;, ""
    .end local v0    # "$r1":Ljava/lang/String;, ""
    .end local v1    # "$z0":Z, ""
.end method

.method public a(Lio/flutter/view/p;Landroid/app/Activity;)V
    .locals 1

    iput-object p1, p0, Lio/flutter/view/k;->c:Lio/flutter/view/p;

    iget-object v0, p0, Lio/flutter/view/k;->a:Lio/flutter/app/f;

    .local v0, "$r3":Lio/flutter/app/f;, ""
    invoke-virtual {v0, p1, p2}, Lio/flutter/app/f;->a(Lio/flutter/view/p;Landroid/app/Activity;)V

    return-void
    .end local v0    # "$r3":Lio/flutter/app/f;, ""
.end method

.method public a(Ljava/lang/String;Lb/a/b/a/e$a;)V
    .locals 2

    iget-object v0, p0, Lio/flutter/view/k;->b:Lio/flutter/embedding/engine/a/b;

    .local v0, "$r4":Lio/flutter/embedding/engine/a/b;, ""
    invoke-virtual {v0}, Lio/flutter/embedding/engine/a/b;->c()Lb/a/b/a/e;

    move-result-object v1

    .local v1, "$r3":Lb/a/b/a/e;, ""
    invoke-interface {v1, p1, p2}, Lb/a/b/a/e;->a(Ljava/lang/String;Lb/a/b/a/e$a;)V

    return-void
    .end local v0    # "$r4":Lio/flutter/embedding/engine/a/b;, ""
    .end local v1    # "$r3":Lb/a/b/a/e;, ""
.end method

.method public a(Ljava/lang/String;Ljava/nio/ByteBuffer;Lb/a/b/a/e$b;)V
    .locals 5

    invoke-virtual {p0}, Lio/flutter/view/k;->e()Z

    move-result v0

    .local v0, "$z0":Z, ""
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    .local v1, "$r4":Ljava/lang/StringBuilder;, ""
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FlutterView.send called on a detached view, channel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .local p1, "$r1":Ljava/lang/String;, ""
    const-string v2, "FlutterNativeView"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v3, p0, Lio/flutter/view/k;->b:Lio/flutter/embedding/engine/a/b;

    .local v3, "$r5":Lio/flutter/embedding/engine/a/b;, ""
    invoke-virtual {v3}, Lio/flutter/embedding/engine/a/b;->c()Lb/a/b/a/e;

    move-result-object v4

    .local v4, "$r6":Lb/a/b/a/e;, ""
    invoke-interface {v4, p1, p2, p3}, Lb/a/b/a/e;->a(Ljava/lang/String;Ljava/nio/ByteBuffer;Lb/a/b/a/e$b;)V

    return-void
    .end local p1    # "$r1":Ljava/lang/String;, ""
    .end local v4    # "$r6":Lb/a/b/a/e;, ""
    .end local v0    # "$z0":Z, ""
    .end local v1    # "$r4":Ljava/lang/StringBuilder;, ""
    .end local v3    # "$r5":Lio/flutter/embedding/engine/a/b;, ""
.end method

.method public b()V
    .locals 6

    iget-object v0, p0, Lio/flutter/view/k;->a:Lio/flutter/app/f;

    .local v0, "$r2":Lio/flutter/app/f;, ""
    invoke-virtual {v0}, Lio/flutter/app/f;->d()V

    iget-object v1, p0, Lio/flutter/view/k;->b:Lio/flutter/embedding/engine/a/b;

    .local v1, "$r3":Lio/flutter/embedding/engine/a/b;, ""
    invoke-virtual {v1}, Lio/flutter/embedding/engine/a/b;->b()V

    const/4 v2, 0x0

    iput-object v2, p0, Lio/flutter/view/k;->c:Lio/flutter/view/p;

    iget-object v3, p0, Lio/flutter/view/k;->d:Lio/flutter/embedding/engine/FlutterJNI;

    .local v3, "$r4":Lio/flutter/embedding/engine/FlutterJNI;, ""
    iget-object v4, p0, Lio/flutter/view/k;->g:Lio/flutter/embedding/engine/d/d;

    .local v4, "$r1":Lio/flutter/embedding/engine/d/d;, ""
    invoke-virtual {v3, v4}, Lio/flutter/embedding/engine/FlutterJNI;->removeIsDisplayingFlutterUiListener(Lio/flutter/embedding/engine/d/d;)V

    iget-object v3, p0, Lio/flutter/view/k;->d:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-virtual {v3}, Lio/flutter/embedding/engine/FlutterJNI;->detachFromNativeAndReleaseResources()V

    const/4 v5, 0x0

    iput-boolean v5, p0, Lio/flutter/view/k;->f:Z

    return-void
    .end local v3    # "$r4":Lio/flutter/embedding/engine/FlutterJNI;, ""
    .end local v0    # "$r2":Lio/flutter/app/f;, ""
    .end local v1    # "$r3":Lio/flutter/embedding/engine/a/b;, ""
    .end local v4    # "$r1":Lio/flutter/embedding/engine/d/d;, ""
.end method

.method public c()Lio/flutter/embedding/engine/a/b;
    .locals 1

    iget-object v0, p0, Lio/flutter/view/k;->b:Lio/flutter/embedding/engine/a/b;

    .local v0, "r1":Lio/flutter/embedding/engine/a/b;, ""
    return-object v0
    .end local v0    # "r1":Lio/flutter/embedding/engine/a/b;, ""
.end method

.method public d()Lio/flutter/app/f;
    .locals 1

    iget-object v0, p0, Lio/flutter/view/k;->a:Lio/flutter/app/f;

    .local v0, "r1":Lio/flutter/app/f;, ""
    return-object v0
    .end local v0    # "r1":Lio/flutter/app/f;, ""
.end method

.method public e()Z
    .locals 2

    iget-object v0, p0, Lio/flutter/view/k;->d:Lio/flutter/embedding/engine/FlutterJNI;

    .local v0, "$r1":Lio/flutter/embedding/engine/FlutterJNI;, ""
    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterJNI;->isAttached()Z

    move-result v1

    .local v1, "$z0":Z, ""
    return v1
    .end local v0    # "$r1":Lio/flutter/embedding/engine/FlutterJNI;, ""
    .end local v1    # "$z0":Z, ""
.end method

.method public f()V
    .locals 3

    invoke-virtual {p0}, Lio/flutter/view/k;->e()Z

    move-result v0

    .local v0, "$z0":Z, ""
    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    .local v1, "$r1":Ljava/lang/AssertionError;, ""
    const-string v2, "Platform view is not attached"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
    .end local v0    # "$z0":Z, ""
    .end local v1    # "$r1":Ljava/lang/AssertionError;, ""
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lio/flutter/view/k;->f:Z

    .local v0, "z0":Z, ""
    return v0
    .end local v0    # "z0":Z, ""
.end method

.method h()Lio/flutter/embedding/engine/FlutterJNI;
    .locals 1

    iget-object v0, p0, Lio/flutter/view/k;->d:Lio/flutter/embedding/engine/FlutterJNI;

    .local v0, "r1":Lio/flutter/embedding/engine/FlutterJNI;, ""
    return-object v0
    .end local v0    # "r1":Lio/flutter/embedding/engine/FlutterJNI;, ""
.end method
