.class final Lio/flutter/view/p$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/flutter/view/r$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/view/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SurfaceTextureRegistryEntry"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/view/q;
    }
.end annotation


# instance fields
.field private final a:J

.field private final b:Landroid/graphics/SurfaceTexture;

.field private c:Z

.field private d:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

.field final synthetic e:Lio/flutter/view/p;


# direct methods
.method constructor <init>(Lio/flutter/view/p;JLandroid/graphics/SurfaceTexture;)V
    .locals 5

    iput-object p1, p0, Lio/flutter/view/p$c;->e:Lio/flutter/view/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/flutter/view/q;

    .local v0, "$r4":Lio/flutter/view/q;, ""
    invoke-direct {v0, p0}, Lio/flutter/view/q;-><init>(Lio/flutter/view/p$c;)V

    iput-object v0, p0, Lio/flutter/view/p$c;->d:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    iput-wide p2, p0, Lio/flutter/view/p$c;->a:J

    iput-object p4, p0, Lio/flutter/view/p$c;->b:Landroid/graphics/SurfaceTexture;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .local v1, "$i1":I, ""
    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    iget-object p4, p0, Lio/flutter/view/p$c;->b:Landroid/graphics/SurfaceTexture;

    .local p4, "$r2":Landroid/graphics/SurfaceTexture;, ""
    iget-object v3, p0, Lio/flutter/view/p$c;->d:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    .local v3, "$r5":Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;, ""
    new-instance v4, Landroid/os/Handler;

    .local v4, "$r1":Landroid/os/Handler;, ""
    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p4, v3, v4}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    return-void

    :cond_0
    iget-object p4, p0, Lio/flutter/view/p$c;->b:Landroid/graphics/SurfaceTexture;

    iget-object v3, p0, Lio/flutter/view/p$c;->d:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    invoke-virtual {p4, v3}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    return-void
    .end local v4    # "$r1":Landroid/os/Handler;, ""
    .end local v1    # "$i1":I, ""
    .end local v3    # "$r5":Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;, ""
    .end local v0    # "$r4":Lio/flutter/view/q;, ""
    .end local p4    # "$r2":Landroid/graphics/SurfaceTexture;, ""
.end method

.method static synthetic a(Lio/flutter/view/p$c;)Z
    .locals 1

    iget-boolean v0, p0, Lio/flutter/view/p$c;->c:Z

    .local v0, "z0":Z, ""
    return v0
    .end local v0    # "z0":Z, ""
.end method

.method static synthetic b(Lio/flutter/view/p$c;)J
    .locals 2

    iget-wide v0, p0, Lio/flutter/view/p$c;->a:J

    .local v0, "l0":J, ""
    return-wide v0
    .end local v0    # "l0":J, ""
.end method


# virtual methods
.method public a()V
    .locals 9

    iget-boolean v0, p0, Lio/flutter/view/p$c;->c:Z

    .local v0, "$z0":Z, ""
    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/flutter/view/p$c;->c:Z

    iget-object v2, p0, Lio/flutter/view/p$c;->b:Landroid/graphics/SurfaceTexture;

    .local v2, "$r1":Landroid/graphics/SurfaceTexture;, ""
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    iget-object v2, p0, Lio/flutter/view/p$c;->b:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v2}, Landroid/graphics/SurfaceTexture;->release()V

    iget-object v4, p0, Lio/flutter/view/p$c;->e:Lio/flutter/view/p;

    .local v4, "$r2":Lio/flutter/view/p;, ""
    invoke-static {v4}, Lio/flutter/view/p;->a(Lio/flutter/view/p;)Lio/flutter/view/k;

    move-result-object v5

    .local v5, "$r3":Lio/flutter/view/k;, ""
    invoke-virtual {v5}, Lio/flutter/view/k;->h()Lio/flutter/embedding/engine/FlutterJNI;

    move-result-object v6

    .local v6, "$r4":Lio/flutter/embedding/engine/FlutterJNI;, ""
    iget-wide v7, p0, Lio/flutter/view/p$c;->a:J

    .local v7, "$l0":J, ""
    invoke-virtual {v6, v7, v8}, Lio/flutter/embedding/engine/FlutterJNI;->unregisterTexture(J)V

    return-void
    .end local v0    # "$z0":Z, ""
    .end local v4    # "$r2":Lio/flutter/view/p;, ""
    .end local v2    # "$r1":Landroid/graphics/SurfaceTexture;, ""
    .end local v5    # "$r3":Lio/flutter/view/k;, ""
    .end local v6    # "$r4":Lio/flutter/embedding/engine/FlutterJNI;, ""
    .end local v7    # "$l0":J, ""
.end method

.method public b()Landroid/graphics/SurfaceTexture;
    .locals 1

    iget-object v0, p0, Lio/flutter/view/p$c;->b:Landroid/graphics/SurfaceTexture;

    .local v0, "r1":Landroid/graphics/SurfaceTexture;, ""
    return-object v0
    .end local v0    # "r1":Landroid/graphics/SurfaceTexture;, ""
.end method

.method public c()J
    .locals 2

    iget-wide v0, p0, Lio/flutter/view/p$c;->a:J

    .local v0, "l0":J, ""
    return-wide v0
    .end local v0    # "l0":J, ""
.end method
