.class Lio/flutter/view/n;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/view/p;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lio/flutter/view/k;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/flutter/view/p;


# direct methods
.method constructor <init>(Lio/flutter/view/p;)V
    .locals 0

    iput-object p1, p0, Lio/flutter/view/n;->a:Lio/flutter/view/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3

    iget-object v0, p0, Lio/flutter/view/n;->a:Lio/flutter/view/p;

    .local v0, "$r2":Lio/flutter/view/p;, ""
    invoke-virtual {v0}, Lio/flutter/view/p;->k()V

    iget-object v0, p0, Lio/flutter/view/n;->a:Lio/flutter/view/p;

    invoke-static {v0}, Lio/flutter/view/p;->a(Lio/flutter/view/p;)Lio/flutter/view/k;

    move-result-object v1

    .local v1, "$r3":Lio/flutter/view/k;, ""
    invoke-virtual {v1}, Lio/flutter/view/k;->h()Lio/flutter/embedding/engine/FlutterJNI;

    move-result-object v2

    .local v2, "$r4":Lio/flutter/embedding/engine/FlutterJNI;, ""
    invoke-virtual {v2, p3, p4}, Lio/flutter/embedding/engine/FlutterJNI;->onSurfaceChanged(II)V

    return-void
    .end local v0    # "$r2":Lio/flutter/view/p;, ""
    .end local v1    # "$r3":Lio/flutter/view/k;, ""
    .end local v2    # "$r4":Lio/flutter/embedding/engine/FlutterJNI;, ""
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 4

    iget-object v0, p0, Lio/flutter/view/n;->a:Lio/flutter/view/p;

    .local v0, "$r2":Lio/flutter/view/p;, ""
    invoke-virtual {v0}, Lio/flutter/view/p;->k()V

    iget-object v0, p0, Lio/flutter/view/n;->a:Lio/flutter/view/p;

    invoke-static {v0}, Lio/flutter/view/p;->a(Lio/flutter/view/p;)Lio/flutter/view/k;

    move-result-object v1

    .local v1, "$r3":Lio/flutter/view/k;, ""
    invoke-virtual {v1}, Lio/flutter/view/k;->h()Lio/flutter/embedding/engine/FlutterJNI;

    move-result-object v2

    .local v2, "$r4":Lio/flutter/embedding/engine/FlutterJNI;, ""
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v3

    .local v3, "$r5":Landroid/view/Surface;, ""
    invoke-virtual {v2, v3}, Lio/flutter/embedding/engine/FlutterJNI;->onSurfaceCreated(Landroid/view/Surface;)V

    return-void
    .end local v1    # "$r3":Lio/flutter/view/k;, ""
    .end local v2    # "$r4":Lio/flutter/embedding/engine/FlutterJNI;, ""
    .end local v3    # "$r5":Landroid/view/Surface;, ""
    .end local v0    # "$r2":Lio/flutter/view/p;, ""
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3

    iget-object v0, p0, Lio/flutter/view/n;->a:Lio/flutter/view/p;

    .local v0, "$r2":Lio/flutter/view/p;, ""
    invoke-virtual {v0}, Lio/flutter/view/p;->k()V

    iget-object v0, p0, Lio/flutter/view/n;->a:Lio/flutter/view/p;

    invoke-static {v0}, Lio/flutter/view/p;->a(Lio/flutter/view/p;)Lio/flutter/view/k;

    move-result-object v1

    .local v1, "$r3":Lio/flutter/view/k;, ""
    invoke-virtual {v1}, Lio/flutter/view/k;->h()Lio/flutter/embedding/engine/FlutterJNI;

    move-result-object v2

    .local v2, "$r4":Lio/flutter/embedding/engine/FlutterJNI;, ""
    invoke-virtual {v2}, Lio/flutter/embedding/engine/FlutterJNI;->onSurfaceDestroyed()V

    return-void
    .end local v0    # "$r2":Lio/flutter/view/p;, ""
    .end local v1    # "$r3":Lio/flutter/view/k;, ""
    .end local v2    # "$r4":Lio/flutter/embedding/engine/FlutterJNI;, ""
.end method
