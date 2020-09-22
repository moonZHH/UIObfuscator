.class Lio/flutter/plugin/platform/p;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/plugin/platform/q$a;->onDraw()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/flutter/plugin/platform/q$a;


# direct methods
.method constructor <init>(Lio/flutter/plugin/platform/q$a;)V
    .locals 0

    iput-object p1, p0, Lio/flutter/plugin/platform/p;->a:Lio/flutter/plugin/platform/q$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lio/flutter/plugin/platform/p;->a:Lio/flutter/plugin/platform/q$a;

    .local v0, "$r1":Lio/flutter/plugin/platform/q$a;, ""
    iget-object v1, v0, Lio/flutter/plugin/platform/q$a;->a:Landroid/view/View;

    .local v1, "$r3":Landroid/view/View;, ""
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .local v2, "$r2":Landroid/view/ViewTreeObserver;, ""
    iget-object v0, p0, Lio/flutter/plugin/platform/p;->a:Lio/flutter/plugin/platform/q$a;

    invoke-virtual {v2, v0}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    return-void
    .end local v2    # "$r2":Landroid/view/ViewTreeObserver;, ""
    .end local v1    # "$r3":Landroid/view/View;, ""
    .end local v0    # "$r1":Lio/flutter/plugin/platform/q$a;, ""
.end method
