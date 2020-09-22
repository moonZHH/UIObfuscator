.class Lio/flutter/plugin/platform/SingleViewPresentation$a;
.super Landroid/widget/FrameLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugin/platform/SingleViewPresentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AccessibilityDelegatingFrameLayout"
.end annotation


# instance fields
.field private final a:Lio/flutter/plugin/platform/b;

.field private final b:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/flutter/plugin/platform/b;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lio/flutter/plugin/platform/SingleViewPresentation$a;->a:Lio/flutter/plugin/platform/b;

    iput-object p3, p0, Lio/flutter/plugin/platform/SingleViewPresentation$a;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3

    iget-object v0, p0, Lio/flutter/plugin/platform/SingleViewPresentation$a;->a:Lio/flutter/plugin/platform/b;

    .local v0, "$r2":Lio/flutter/plugin/platform/b;, ""
    iget-object v1, p0, Lio/flutter/plugin/platform/SingleViewPresentation$a;->b:Landroid/view/View;

    .local v1, "$r3":Landroid/view/View;, ""
    invoke-virtual {v0, v1, p1, p2}, Lio/flutter/plugin/platform/b;->a(Landroid/view/View;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v2

    .local v2, "$z0":Z, ""
    return v2
    .end local v0    # "$r2":Lio/flutter/plugin/platform/b;, ""
    .end local v1    # "$r3":Landroid/view/View;, ""
    .end local v2    # "$z0":Z, ""
.end method
