.class Lio/flutter/app/b;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/app/c;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/flutter/app/c;


# direct methods
.method constructor <init>(Lio/flutter/app/c;)V
    .locals 0

    iput-object p1, p0, Lio/flutter/app/b;->a:Lio/flutter/app/c;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 7

    iget-object v0, p0, Lio/flutter/app/b;->a:Lio/flutter/app/c;

    .local v0, "$r2":Lio/flutter/app/c;, ""
    iget-object v1, v0, Lio/flutter/app/c;->a:Lio/flutter/app/d;

    .local v1, "$r3":Lio/flutter/app/d;, ""
    invoke-static {v1}, Lio/flutter/app/d;->a(Lio/flutter/app/d;)Landroid/view/View;

    move-result-object v2

    .local v2, "$r4":Landroid/view/View;, ""
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .local v3, "$r5":Landroid/view/ViewParent;, ""
    move-object v5, v3

    check-cast v5, Landroid/view/ViewGroup;

    move-object v4, v5

    .local v4, "$r6":Landroid/view/ViewGroup;, ""
    iget-object v0, p0, Lio/flutter/app/b;->a:Lio/flutter/app/c;

    iget-object v1, v0, Lio/flutter/app/c;->a:Lio/flutter/app/d;

    invoke-static {v1}, Lio/flutter/app/d;->a(Lio/flutter/app/d;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lio/flutter/app/b;->a:Lio/flutter/app/c;

    iget-object v1, v0, Lio/flutter/app/c;->a:Lio/flutter/app/d;

    const/4 v6, 0x0

    invoke-static {v1, v6}, Lio/flutter/app/d;->a(Lio/flutter/app/d;Landroid/view/View;)Landroid/view/View;

    return-void
    .end local v3    # "$r5":Landroid/view/ViewParent;, ""
    .end local v4    # "$r6":Landroid/view/ViewGroup;, ""
    .end local v0    # "$r2":Lio/flutter/app/c;, ""
    .end local v2    # "$r4":Landroid/view/View;, ""
    .end local v1    # "$r3":Lio/flutter/app/d;, ""
.end method
