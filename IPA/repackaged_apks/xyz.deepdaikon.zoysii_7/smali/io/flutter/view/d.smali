.class Lio/flutter/view/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/view/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/flutter/view/g;


# direct methods
.method constructor <init>(Lio/flutter/view/g;)V
    .locals 0

    iput-object p1, p0, Lio/flutter/view/d;->a:Lio/flutter/view/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccessibilityStateChanged(Z)V
    .locals 7

    if-eqz p1, :cond_0

    iget-object v0, p0, Lio/flutter/view/d;->a:Lio/flutter/view/g;

    .local v0, "$r1":Lio/flutter/view/g;, ""
    invoke-static {v0}, Lio/flutter/view/g;->c(Lio/flutter/view/g;)Lio/flutter/embedding/engine/e/b;

    move-result-object v1

    .local v1, "$r2":Lio/flutter/embedding/engine/e/b;, ""
    iget-object v0, p0, Lio/flutter/view/d;->a:Lio/flutter/view/g;

    invoke-static {v0}, Lio/flutter/view/g;->b(Lio/flutter/view/g;)Lio/flutter/embedding/engine/e/b$a;

    move-result-object v2

    .local v2, "$r3":Lio/flutter/embedding/engine/e/b$a;, ""
    invoke-virtual {v1, v2}, Lio/flutter/embedding/engine/e/b;->a(Lio/flutter/embedding/engine/e/b$a;)V

    iget-object v0, p0, Lio/flutter/view/d;->a:Lio/flutter/view/g;

    invoke-static {v0}, Lio/flutter/view/g;->c(Lio/flutter/view/g;)Lio/flutter/embedding/engine/e/b;

    move-result-object v1

    invoke-virtual {v1}, Lio/flutter/embedding/engine/e/b;->a()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/flutter/view/d;->a:Lio/flutter/view/g;

    invoke-static {v0}, Lio/flutter/view/g;->c(Lio/flutter/view/g;)Lio/flutter/embedding/engine/e/b;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lio/flutter/embedding/engine/e/b;->a(Lio/flutter/embedding/engine/e/b$a;)V

    iget-object v0, p0, Lio/flutter/view/d;->a:Lio/flutter/view/g;

    invoke-static {v0}, Lio/flutter/view/g;->c(Lio/flutter/view/g;)Lio/flutter/embedding/engine/e/b;

    move-result-object v1

    invoke-virtual {v1}, Lio/flutter/embedding/engine/e/b;->b()V

    :goto_0
    iget-object v0, p0, Lio/flutter/view/d;->a:Lio/flutter/view/g;

    invoke-static {v0}, Lio/flutter/view/g;->d(Lio/flutter/view/g;)Lio/flutter/view/g$e;

    move-result-object v4

    .local v4, "$r4":Lio/flutter/view/g$e;, ""
    if-eqz v4, :cond_1

    iget-object v0, p0, Lio/flutter/view/d;->a:Lio/flutter/view/g;

    invoke-static {v0}, Lio/flutter/view/g;->d(Lio/flutter/view/g;)Lio/flutter/view/g$e;

    move-result-object v4

    iget-object v0, p0, Lio/flutter/view/d;->a:Lio/flutter/view/g;

    invoke-static {v0}, Lio/flutter/view/g;->e(Lio/flutter/view/g;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v5

    .local v5, "$r5":Landroid/view/accessibility/AccessibilityManager;, ""
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v6

    .local v6, "$z1":Z, ""
    invoke-interface {v4, p1, v6}, Lio/flutter/view/g$e;->a(ZZ)V

    :cond_1
    return-void
    .end local v1    # "$r2":Lio/flutter/embedding/engine/e/b;, ""
    .end local v2    # "$r3":Lio/flutter/embedding/engine/e/b$a;, ""
    .end local v6    # "$z1":Z, ""
    .end local v5    # "$r5":Landroid/view/accessibility/AccessibilityManager;, ""
    .end local v4    # "$r4":Lio/flutter/view/g$e;, ""
    .end local v0    # "$r1":Lio/flutter/view/g;, ""
.end method
