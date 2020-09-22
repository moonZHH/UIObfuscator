.class public final synthetic Lio/flutter/plugin/platform/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field private final synthetic a:Lio/flutter/plugin/platform/l;

.field private final synthetic b:Lio/flutter/embedding/engine/e/l$a;


# direct methods
.method public synthetic constructor <init>(Lio/flutter/plugin/platform/l;Lio/flutter/embedding/engine/e/l$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/plugin/platform/a;->a:Lio/flutter/plugin/platform/l;

    iput-object p2, p0, Lio/flutter/plugin/platform/a;->b:Lio/flutter/embedding/engine/e/l$a;

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 2

    iget-object v0, p0, Lio/flutter/plugin/platform/a;->a:Lio/flutter/plugin/platform/l;

    .local v0, "$r2":Lio/flutter/plugin/platform/l;, ""
    iget-object v1, p0, Lio/flutter/plugin/platform/a;->b:Lio/flutter/embedding/engine/e/l$a;

    .local v1, "$r3":Lio/flutter/embedding/engine/e/l$a;, ""
    invoke-static {v0, v1, p1, p2}, Lio/flutter/plugin/platform/l;->a(Lio/flutter/plugin/platform/l;Lio/flutter/embedding/engine/e/l$a;Landroid/view/View;Z)V

    return-void
    .end local v1    # "$r3":Lio/flutter/embedding/engine/e/l$a;, ""
    .end local v0    # "$r2":Lio/flutter/plugin/platform/l;, ""
.end method
