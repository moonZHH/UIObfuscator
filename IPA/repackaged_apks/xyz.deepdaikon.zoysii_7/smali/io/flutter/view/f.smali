.class Lio/flutter/view/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/view/g;-><init>(Landroid/view/View;Lio/flutter/embedding/engine/e/b;Landroid/view/accessibility/AccessibilityManager;Landroid/content/ContentResolver;Lio/flutter/plugin/platform/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/accessibility/AccessibilityManager;

.field final synthetic b:Lio/flutter/view/g;


# direct methods
.method constructor <init>(Lio/flutter/view/g;Landroid/view/accessibility/AccessibilityManager;)V
    .locals 0

    iput-object p1, p0, Lio/flutter/view/f;->b:Lio/flutter/view/g;

    iput-object p2, p0, Lio/flutter/view/f;->a:Landroid/view/accessibility/AccessibilityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouchExplorationStateChanged(Z)V
    .locals 8

    if-eqz p1, :cond_0

    iget-object v0, p0, Lio/flutter/view/f;->b:Lio/flutter/view/g;

    .local v0, "$r1":Lio/flutter/view/g;, ""
    iget-object v1, p0, Lio/flutter/view/f;->b:Lio/flutter/view/g;

    .local v1, "$r2":Lio/flutter/view/g;, ""
    invoke-static {v1}, Lio/flutter/view/g;->g(Lio/flutter/view/g;)I

    move-result v2

    .local v2, "$i0":I, ""
    sget-object v3, Lio/flutter/view/g$a;->a:Lio/flutter/view/g$a;

    .local v3, "$r3":Lio/flutter/view/g$a;, ""
    iget v4, v3, Lio/flutter/view/g$a;->e:I

    .local v4, "$i1":I, ""
    or-int/2addr v2, v4

    invoke-static {v0, v2}, Lio/flutter/view/g;->a(Lio/flutter/view/g;I)I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/flutter/view/f;->b:Lio/flutter/view/g;

    invoke-static {v0}, Lio/flutter/view/g;->i(Lio/flutter/view/g;)V

    iget-object v0, p0, Lio/flutter/view/f;->b:Lio/flutter/view/g;

    iget-object v1, p0, Lio/flutter/view/f;->b:Lio/flutter/view/g;

    invoke-static {v1}, Lio/flutter/view/g;->g(Lio/flutter/view/g;)I

    move-result v2

    sget-object v3, Lio/flutter/view/g$a;->a:Lio/flutter/view/g$a;

    iget v4, v3, Lio/flutter/view/g$a;->e:I

    not-int v4, v4

    and-int/2addr v2, v4

    invoke-static {v0, v2}, Lio/flutter/view/g;->a(Lio/flutter/view/g;I)I

    :goto_0
    iget-object v0, p0, Lio/flutter/view/f;->b:Lio/flutter/view/g;

    invoke-static {v0}, Lio/flutter/view/g;->h(Lio/flutter/view/g;)V

    iget-object v0, p0, Lio/flutter/view/f;->b:Lio/flutter/view/g;

    invoke-static {v0}, Lio/flutter/view/g;->d(Lio/flutter/view/g;)Lio/flutter/view/g$e;

    move-result-object v5

    .local v5, "$r4":Lio/flutter/view/g$e;, ""
    if-eqz v5, :cond_1

    iget-object v0, p0, Lio/flutter/view/f;->b:Lio/flutter/view/g;

    invoke-static {v0}, Lio/flutter/view/g;->d(Lio/flutter/view/g;)Lio/flutter/view/g$e;

    move-result-object v5

    iget-object v6, p0, Lio/flutter/view/f;->a:Landroid/view/accessibility/AccessibilityManager;

    .local v6, "$r5":Landroid/view/accessibility/AccessibilityManager;, ""
    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v7

    .local v7, "$z1":Z, ""
    invoke-interface {v5, v7, p1}, Lio/flutter/view/g$e;->a(ZZ)V

    :cond_1
    return-void
    .end local v4    # "$i1":I, ""
    .end local v2    # "$i0":I, ""
    .end local v3    # "$r3":Lio/flutter/view/g$a;, ""
    .end local v5    # "$r4":Lio/flutter/view/g$e;, ""
    .end local v6    # "$r5":Landroid/view/accessibility/AccessibilityManager;, ""
    .end local v7    # "$z1":Z, ""
    .end local v0    # "$r1":Lio/flutter/view/g;, ""
    .end local v1    # "$r2":Lio/flutter/view/g;, ""
.end method
