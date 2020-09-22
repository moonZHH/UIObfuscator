.class Lio/flutter/app/f$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/a/b/a/o$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/app/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlutterRegistrar"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field final synthetic b:Lio/flutter/app/f;


# direct methods
.method constructor <init>(Lio/flutter/app/f;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/flutter/app/f$a;->b:Lio/flutter/app/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lio/flutter/app/f$a;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .locals 2

    iget-object v0, p0, Lio/flutter/app/f$a;->b:Lio/flutter/app/f;

    .local v0, "$r2":Lio/flutter/app/f;, ""
    invoke-static {v0}, Lio/flutter/app/f;->b(Lio/flutter/app/f;)Landroid/content/Context;

    move-result-object v1

    .local v1, "$r1":Landroid/content/Context;, ""
    return-object v1
    .end local v0    # "$r2":Lio/flutter/app/f;, ""
    .end local v1    # "$r1":Landroid/content/Context;, ""
.end method

.method public b()Landroid/app/Activity;
    .locals 2

    iget-object v0, p0, Lio/flutter/app/f$a;->b:Lio/flutter/app/f;

    .local v0, "$r2":Lio/flutter/app/f;, ""
    invoke-static {v0}, Lio/flutter/app/f;->a(Lio/flutter/app/f;)Landroid/app/Activity;

    move-result-object v1

    .local v1, "$r1":Landroid/app/Activity;, ""
    return-object v1
    .end local v0    # "$r2":Lio/flutter/app/f;, ""
    .end local v1    # "$r1":Landroid/app/Activity;, ""
.end method

.method public c()Lb/a/b/a/e;
    .locals 2

    iget-object v0, p0, Lio/flutter/app/f$a;->b:Lio/flutter/app/f;

    .local v0, "$r2":Lio/flutter/app/f;, ""
    invoke-static {v0}, Lio/flutter/app/f;->c(Lio/flutter/app/f;)Lio/flutter/view/k;

    move-result-object v1

    .local v1, "$r1":Lio/flutter/view/k;, ""
    return-object v1
    .end local v1    # "$r1":Lio/flutter/view/k;, ""
    .end local v0    # "$r2":Lio/flutter/app/f;, ""
.end method
