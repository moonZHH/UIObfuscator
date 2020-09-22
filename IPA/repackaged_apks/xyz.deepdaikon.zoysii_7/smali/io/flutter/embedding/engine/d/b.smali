.class Lio/flutter/embedding/engine/d/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/engine/d/c$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/flutter/embedding/engine/d/c$a;


# direct methods
.method constructor <init>(Lio/flutter/embedding/engine/d/c$a;)V
    .locals 0

    iput-object p1, p0, Lio/flutter/embedding/engine/d/b;->a:Lio/flutter/embedding/engine/d/c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 5

    iget-object v0, p0, Lio/flutter/embedding/engine/d/b;->a:Lio/flutter/embedding/engine/d/c$a;

    .local v0, "$r2":Lio/flutter/embedding/engine/d/c$a;, ""
    invoke-static {v0}, Lio/flutter/embedding/engine/d/c$a;->a(Lio/flutter/embedding/engine/d/c$a;)Z

    move-result v1

    .local v1, "$z0":Z, ""
    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lio/flutter/embedding/engine/d/b;->a:Lio/flutter/embedding/engine/d/c$a;

    iget-object v2, v0, Lio/flutter/embedding/engine/d/c$a;->e:Lio/flutter/embedding/engine/d/c;

    .local v2, "$r3":Lio/flutter/embedding/engine/d/c;, ""
    iget-object v0, p0, Lio/flutter/embedding/engine/d/b;->a:Lio/flutter/embedding/engine/d/c$a;

    invoke-static {v0}, Lio/flutter/embedding/engine/d/c$a;->b(Lio/flutter/embedding/engine/d/c$a;)J

    move-result-wide v3

    .local v3, "$l0":J, ""
    invoke-static {v2, v3, v4}, Lio/flutter/embedding/engine/d/c;->a(Lio/flutter/embedding/engine/d/c;J)V

    return-void
    .end local v1    # "$z0":Z, ""
    .end local v0    # "$r2":Lio/flutter/embedding/engine/d/c$a;, ""
    .end local v2    # "$r3":Lio/flutter/embedding/engine/d/c;, ""
    .end local v3    # "$l0":J, ""
.end method
