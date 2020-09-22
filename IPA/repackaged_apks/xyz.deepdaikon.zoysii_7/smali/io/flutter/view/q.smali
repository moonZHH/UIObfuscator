.class Lio/flutter/view/q;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/view/p$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/flutter/view/p$c;


# direct methods
.method constructor <init>(Lio/flutter/view/p$c;)V
    .locals 0

    iput-object p1, p0, Lio/flutter/view/q;->a:Lio/flutter/view/p$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 7

    iget-object v0, p0, Lio/flutter/view/q;->a:Lio/flutter/view/p$c;

    .local v0, "$r2":Lio/flutter/view/p$c;, ""
    invoke-static {v0}, Lio/flutter/view/p$c;->a(Lio/flutter/view/p$c;)Z

    move-result v1

    .local v1, "$z0":Z, ""
    if-nez v1, :cond_1

    iget-object v0, p0, Lio/flutter/view/q;->a:Lio/flutter/view/p$c;

    iget-object v2, v0, Lio/flutter/view/p$c;->e:Lio/flutter/view/p;

    .local v2, "$r3":Lio/flutter/view/p;, ""
    invoke-static {v2}, Lio/flutter/view/p;->a(Lio/flutter/view/p;)Lio/flutter/view/k;

    move-result-object v3

    .local v3, "$r4":Lio/flutter/view/k;, ""
    if-nez v3, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lio/flutter/view/q;->a:Lio/flutter/view/p$c;

    iget-object v2, v0, Lio/flutter/view/p$c;->e:Lio/flutter/view/p;

    invoke-static {v2}, Lio/flutter/view/p;->a(Lio/flutter/view/p;)Lio/flutter/view/k;

    move-result-object v3

    invoke-virtual {v3}, Lio/flutter/view/k;->h()Lio/flutter/embedding/engine/FlutterJNI;

    move-result-object v4

    .local v4, "$r5":Lio/flutter/embedding/engine/FlutterJNI;, ""
    iget-object v0, p0, Lio/flutter/view/q;->a:Lio/flutter/view/p$c;

    invoke-static {v0}, Lio/flutter/view/p$c;->b(Lio/flutter/view/p$c;)J

    move-result-wide v5

    .local v5, "$l0":J, ""
    invoke-virtual {v4, v5, v6}, Lio/flutter/embedding/engine/FlutterJNI;->markTextureFrameAvailable(J)V

    :cond_1
    return-void
    .end local v0    # "$r2":Lio/flutter/view/p$c;, ""
    .end local v1    # "$z0":Z, ""
    .end local v5    # "$l0":J, ""
    .end local v4    # "$r5":Lio/flutter/embedding/engine/FlutterJNI;, ""
    .end local v2    # "$r3":Lio/flutter/view/p;, ""
    .end local v3    # "$r4":Lio/flutter/view/k;, ""
.end method
