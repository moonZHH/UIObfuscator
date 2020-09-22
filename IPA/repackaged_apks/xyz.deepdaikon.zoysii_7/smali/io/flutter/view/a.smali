.class public final synthetic Lio/flutter/view/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lb/a/d/c;


# instance fields
.field private final synthetic a:Lio/flutter/view/g$f;


# direct methods
.method public synthetic constructor <init>(Lio/flutter/view/g$f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/view/a;->a:Lio/flutter/view/g$f;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 4

    iget-object v0, p0, Lio/flutter/view/a;->a:Lio/flutter/view/g$f;

    .local v0, "$r1":Lio/flutter/view/g$f;, ""
    move-object v2, p1

    check-cast v2, Lio/flutter/view/g$f;

    move-object v1, v2

    .local v1, "$r3":Lio/flutter/view/g$f;, ""
    invoke-static {v0, v1}, Lio/flutter/view/g;->a(Lio/flutter/view/g$f;Lio/flutter/view/g$f;)Z

    move-result v3

    .local v3, "$z0":Z, ""
    return v3
    .end local v3    # "$z0":Z, ""
    .end local v0    # "$r1":Lio/flutter/view/g$f;, ""
    .end local v1    # "$r3":Lio/flutter/view/g$f;, ""
.end method
