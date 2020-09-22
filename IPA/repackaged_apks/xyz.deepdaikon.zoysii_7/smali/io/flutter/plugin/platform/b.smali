.class Lio/flutter/plugin/platform/b;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Lio/flutter/view/g;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Lio/flutter/view/g;)V
    .locals 0

    iput-object p1, p0, Lio/flutter/plugin/platform/b;->a:Lio/flutter/view/g;

    return-void
.end method

.method public a(Landroid/view/View;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3

    iget-object v0, p0, Lio/flutter/plugin/platform/b;->a:Lio/flutter/view/g;

    .local v0, "$r4":Lio/flutter/view/g;, ""
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    iget-object v0, p0, Lio/flutter/plugin/platform/b;->a:Lio/flutter/view/g;

    invoke-virtual {v0, p1, p2, p3}, Lio/flutter/view/g;->a(Landroid/view/View;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v2

    .local v2, "$z0":Z, ""
    return v2
    .end local v2    # "$z0":Z, ""
    .end local v0    # "$r4":Lio/flutter/view/g;, ""
.end method
