.class Lio/flutter/view/t;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/flutter/embedding/engine/FlutterJNI$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/view/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/view/s;
    }
.end annotation


# instance fields
.field final synthetic a:Lio/flutter/view/u;


# direct methods
.method constructor <init>(Lio/flutter/view/u;)V
    .locals 0

    iput-object p1, p0, Lio/flutter/view/t;->a:Lio/flutter/view/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 2

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    .local v0, "$r2":Landroid/view/Choreographer;, ""
    new-instance v1, Lio/flutter/view/s;

    .local v1, "$r1":Lio/flutter/view/s;, ""
    invoke-direct {v1, p0, p1, p2}, Lio/flutter/view/s;-><init>(Lio/flutter/view/t;J)V

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
    .end local v0    # "$r2":Landroid/view/Choreographer;, ""
    .end local v1    # "$r1":Lio/flutter/view/s;, ""
.end method
