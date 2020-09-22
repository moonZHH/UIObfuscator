.class Lio/flutter/plugin/platform/n;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/plugin/platform/o;->onViewAttachedToWindow(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/flutter/plugin/platform/o;


# direct methods
.method constructor <init>(Lio/flutter/plugin/platform/o;)V
    .locals 0

    iput-object p1, p0, Lio/flutter/plugin/platform/n;->a:Lio/flutter/plugin/platform/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lio/flutter/plugin/platform/n;->a:Lio/flutter/plugin/platform/o;

    .local v0, "$r1":Lio/flutter/plugin/platform/o;, ""
    iget-object v1, v0, Lio/flutter/plugin/platform/o;->a:Landroid/view/View;

    .local v1, "$r2":Landroid/view/View;, ""
    iget-object v0, p0, Lio/flutter/plugin/platform/n;->a:Lio/flutter/plugin/platform/o;

    iget-object v2, v0, Lio/flutter/plugin/platform/o;->b:Ljava/lang/Runnable;

    .local v2, "$r3":Ljava/lang/Runnable;, ""
    const-wide/16 v3, 0x80

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
    .end local v2    # "$r3":Ljava/lang/Runnable;, ""
    .end local v1    # "$r2":Landroid/view/View;, ""
    .end local v0    # "$r1":Lio/flutter/plugin/platform/o;, ""
.end method
