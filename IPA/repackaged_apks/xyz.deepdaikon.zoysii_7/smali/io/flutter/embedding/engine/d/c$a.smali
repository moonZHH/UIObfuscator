.class final Lio/flutter/embedding/engine/d/c$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/flutter/view/r$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/engine/d/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SurfaceTextureRegistryEntry"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/embedding/engine/d/b;
    }
.end annotation


# instance fields
.field private final a:J

.field private final b:Landroid/graphics/SurfaceTexture;

.field private c:Z

.field private d:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

.field final synthetic e:Lio/flutter/embedding/engine/d/c;


# direct methods
.method constructor <init>(Lio/flutter/embedding/engine/d/c;JLandroid/graphics/SurfaceTexture;)V
    .locals 5

    iput-object p1, p0, Lio/flutter/embedding/engine/d/c$a;->e:Lio/flutter/embedding/engine/d/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/flutter/embedding/engine/d/b;

    .local v0, "$r4":Lio/flutter/embedding/engine/d/b;, ""
    invoke-direct {v0, p0}, Lio/flutter/embedding/engine/d/b;-><init>(Lio/flutter/embedding/engine/d/c$a;)V

    iput-object v0, p0, Lio/flutter/embedding/engine/d/c$a;->d:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    iput-wide p2, p0, Lio/flutter/embedding/engine/d/c$a;->a:J

    iput-object p4, p0, Lio/flutter/embedding/engine/d/c$a;->b:Landroid/graphics/SurfaceTexture;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .local v1, "$i1":I, ""
    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    iget-object p4, p0, Lio/flutter/embedding/engine/d/c$a;->b:Landroid/graphics/SurfaceTexture;

    .local p4, "$r2":Landroid/graphics/SurfaceTexture;, ""
    iget-object v3, p0, Lio/flutter/embedding/engine/d/c$a;->d:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    .local v3, "$r5":Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;, ""
    new-instance v4, Landroid/os/Handler;

    .local v4, "$r1":Landroid/os/Handler;, ""
    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p4, v3, v4}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    return-void

    :cond_0
    iget-object p4, p0, Lio/flutter/embedding/engine/d/c$a;->b:Landroid/graphics/SurfaceTexture;

    iget-object v3, p0, Lio/flutter/embedding/engine/d/c$a;->d:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    invoke-virtual {p4, v3}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    return-void
    .end local v0    # "$r4":Lio/flutter/embedding/engine/d/b;, ""
    .end local v3    # "$r5":Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;, ""
    .end local v4    # "$r1":Landroid/os/Handler;, ""
    .end local v1    # "$i1":I, ""
    .end local p4    # "$r2":Landroid/graphics/SurfaceTexture;, ""
.end method

.method static synthetic a(Lio/flutter/embedding/engine/d/c$a;)Z
    .locals 1

    iget-boolean v0, p0, Lio/flutter/embedding/engine/d/c$a;->c:Z

    .local v0, "z0":Z, ""
    return v0
    .end local v0    # "z0":Z, ""
.end method

.method static synthetic b(Lio/flutter/embedding/engine/d/c$a;)J
    .locals 2

    iget-wide v0, p0, Lio/flutter/embedding/engine/d/c$a;->a:J

    .local v0, "l0":J, ""
    return-wide v0
    .end local v0    # "l0":J, ""
.end method


# virtual methods
.method public a()V
    .locals 9

    iget-boolean v0, p0, Lio/flutter/embedding/engine/d/c$a;->c:Z

    .local v0, "$z0":Z, ""
    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .local v1, "$r2":Ljava/lang/StringBuilder;, ""
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Releasing a SurfaceTexture ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lio/flutter/embedding/engine/d/c$a;->a:J

    .local v3, "$l0":J, ""
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .local v5, "$r1":Ljava/lang/String;, ""
    const-string v2, "FlutterRenderer"

    invoke-static {v2, v5}, Lb/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lio/flutter/embedding/engine/d/c$a;->b:Landroid/graphics/SurfaceTexture;

    .local v6, "$r3":Landroid/graphics/SurfaceTexture;, ""
    invoke-virtual {v6}, Landroid/graphics/SurfaceTexture;->release()V

    iget-object v7, p0, Lio/flutter/embedding/engine/d/c$a;->e:Lio/flutter/embedding/engine/d/c;

    .local v7, "$r4":Lio/flutter/embedding/engine/d/c;, ""
    iget-wide v3, p0, Lio/flutter/embedding/engine/d/c$a;->a:J

    invoke-static {v7, v3, v4}, Lio/flutter/embedding/engine/d/c;->b(Lio/flutter/embedding/engine/d/c;J)V

    const/4 v8, 0x1

    iput-boolean v8, p0, Lio/flutter/embedding/engine/d/c$a;->c:Z

    return-void
    .end local v5    # "$r1":Ljava/lang/String;, ""
    .end local v0    # "$z0":Z, ""
    .end local v1    # "$r2":Ljava/lang/StringBuilder;, ""
    .end local v7    # "$r4":Lio/flutter/embedding/engine/d/c;, ""
    .end local v6    # "$r3":Landroid/graphics/SurfaceTexture;, ""
    .end local v3    # "$l0":J, ""
.end method

.method public b()Landroid/graphics/SurfaceTexture;
    .locals 1

    iget-object v0, p0, Lio/flutter/embedding/engine/d/c$a;->b:Landroid/graphics/SurfaceTexture;

    .local v0, "r1":Landroid/graphics/SurfaceTexture;, ""
    return-object v0
    .end local v0    # "r1":Landroid/graphics/SurfaceTexture;, ""
.end method

.method public c()J
    .locals 2

    iget-wide v0, p0, Lio/flutter/embedding/engine/d/c$a;->a:J

    .local v0, "l0":J, ""
    return-wide v0
    .end local v0    # "l0":J, ""
.end method
