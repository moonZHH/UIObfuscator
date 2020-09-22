.class Lio/flutter/view/o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/a/b/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/view/p;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lio/flutter/view/k;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/flutter/plugin/platform/e;

.field final synthetic b:Lio/flutter/view/p;


# direct methods
.method constructor <init>(Lio/flutter/view/p;Lio/flutter/plugin/platform/e;)V
    .locals 0

    iput-object p1, p0, Lio/flutter/view/o;->b:Lio/flutter/view/p;

    iput-object p2, p0, Lio/flutter/view/o;->a:Lio/flutter/plugin/platform/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPostResume()V
    .locals 1

    iget-object v0, p0, Lio/flutter/view/o;->a:Lio/flutter/plugin/platform/e;

    .local v0, "$r1":Lio/flutter/plugin/platform/e;, ""
    invoke-virtual {v0}, Lio/flutter/plugin/platform/e;->a()V

    return-void
    .end local v0    # "$r1":Lio/flutter/plugin/platform/e;, ""
.end method
