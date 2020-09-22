.class Lio/flutter/plugin/platform/q$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnDrawListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugin/platform/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OneTimeOnDrawListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/plugin/platform/p;
    }
.end annotation


# instance fields
.field final a:Landroid/view/View;

.field b:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/plugin/platform/q$a;->a:Landroid/view/View;

    iput-object p2, p0, Lio/flutter/plugin/platform/q$a;->b:Ljava/lang/Runnable;

    return-void
.end method

.method static a(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 2

    new-instance v0, Lio/flutter/plugin/platform/q$a;

    .local v0, "$r1":Lio/flutter/plugin/platform/q$a;, ""
    invoke-direct {v0, p0, p1}, Lio/flutter/plugin/platform/q$a;-><init>(Landroid/view/View;Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .local v1, "$r2":Landroid/view/ViewTreeObserver;, ""
    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    return-void
    .end local v1    # "$r2":Landroid/view/ViewTreeObserver;, ""
    .end local v0    # "$r1":Lio/flutter/plugin/platform/q$a;, ""
.end method


# virtual methods
.method public onDraw()V
    .locals 4

    iget-object v0, p0, Lio/flutter/plugin/platform/q$a;->b:Ljava/lang/Runnable;

    .local v0, "$r2":Ljava/lang/Runnable;, ""
    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lio/flutter/plugin/platform/q$a;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v1, 0x0

    iput-object v1, p0, Lio/flutter/plugin/platform/q$a;->b:Ljava/lang/Runnable;

    iget-object v2, p0, Lio/flutter/plugin/platform/q$a;->a:Landroid/view/View;

    .local v2, "$r3":Landroid/view/View;, ""
    new-instance v3, Lio/flutter/plugin/platform/p;

    .local v3, "$r1":Lio/flutter/plugin/platform/p;, ""
    invoke-direct {v3, p0}, Lio/flutter/plugin/platform/p;-><init>(Lio/flutter/plugin/platform/q$a;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
    .end local v3    # "$r1":Lio/flutter/plugin/platform/p;, ""
    .end local v2    # "$r3":Landroid/view/View;, ""
    .end local v0    # "$r2":Ljava/lang/Runnable;, ""
.end method
