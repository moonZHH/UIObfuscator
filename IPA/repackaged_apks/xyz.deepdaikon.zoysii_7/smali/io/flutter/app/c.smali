.class Lio/flutter/app/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/flutter/view/p$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/app/d;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/app/b;
    }
.end annotation


# instance fields
.field final synthetic a:Lio/flutter/app/d;


# direct methods
.method constructor <init>(Lio/flutter/app/d;)V
    .locals 0

    iput-object p1, p0, Lio/flutter/app/c;->a:Lio/flutter/app/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    iget-object v0, p0, Lio/flutter/app/c;->a:Lio/flutter/app/d;

    .local v0, "$r1":Lio/flutter/app/d;, ""
    invoke-static {v0}, Lio/flutter/app/d;->a(Lio/flutter/app/d;)Landroid/view/View;

    move-result-object v1

    .local v1, "$r2":Landroid/view/View;, ""
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .local v2, "$r3":Landroid/view/ViewPropertyAnimator;, ""
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v4, Lio/flutter/app/b;

    .local v4, "$r4":Lio/flutter/app/b;, ""
    invoke-direct {v4, p0}, Lio/flutter/app/b;-><init>(Lio/flutter/app/c;)V

    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lio/flutter/app/c;->a:Lio/flutter/app/d;

    invoke-static {v0}, Lio/flutter/app/d;->b(Lio/flutter/app/d;)Lio/flutter/view/p;

    move-result-object v5

    .local v5, "$r5":Lio/flutter/view/p;, ""
    invoke-virtual {v5, p0}, Lio/flutter/view/p;->b(Lio/flutter/view/p$a;)V

    return-void
    .end local v2    # "$r3":Landroid/view/ViewPropertyAnimator;, ""
    .end local v1    # "$r2":Landroid/view/View;, ""
    .end local v4    # "$r4":Lio/flutter/app/b;, ""
    .end local v0    # "$r1":Lio/flutter/app/d;, ""
    .end local v5    # "$r5":Lio/flutter/view/p;, ""
.end method
