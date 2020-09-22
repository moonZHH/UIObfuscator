.class Lio/flutter/view/e;
.super Landroid/database/ContentObserver;
.source ""


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
.method constructor <init>(Lio/flutter/view/g;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lio/flutter/view/e;->a:Lio/flutter/view/g;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lio/flutter/view/e;->onChange(ZLandroid/net/Uri;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 9

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .local v0, "$i0":I, ""
    const/16 v1, 0x11

    if-ge v0, v1, :cond_0

    const/4 v2, 0x0

    .local v2, "$r2":Ljava/lang/String;, ""
    goto :goto_0

    :cond_0
    iget-object v3, p0, Lio/flutter/view/e;->a:Lio/flutter/view/g;

    .local v3, "$r3":Lio/flutter/view/g;, ""
    invoke-static {v3}, Lio/flutter/view/g;->f(Lio/flutter/view/g;)Landroid/content/ContentResolver;

    move-result-object v4

    .local v4, "$r4":Landroid/content/ContentResolver;, ""
    const-string v5, "transition_animation_scale"

    invoke-static {v4, v5}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_1

    const-string v5, "0"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .local p1, "$z0":Z, ""
    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_2

    iget-object v3, p0, Lio/flutter/view/e;->a:Lio/flutter/view/g;

    iget-object v6, p0, Lio/flutter/view/e;->a:Lio/flutter/view/g;

    .local v6, "$r5":Lio/flutter/view/g;, ""
    invoke-static {v6}, Lio/flutter/view/g;->g(Lio/flutter/view/g;)I

    move-result v0

    sget-object v7, Lio/flutter/view/g$a;->c:Lio/flutter/view/g$a;

    .local v7, "$r6":Lio/flutter/view/g$a;, ""
    iget v8, v7, Lio/flutter/view/g$a;->e:I

    .local v8, "$i1":I, ""
    or-int/2addr v0, v8

    invoke-static {v3, v0}, Lio/flutter/view/g;->a(Lio/flutter/view/g;I)I

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lio/flutter/view/e;->a:Lio/flutter/view/g;

    iget-object v6, p0, Lio/flutter/view/e;->a:Lio/flutter/view/g;

    invoke-static {v6}, Lio/flutter/view/g;->g(Lio/flutter/view/g;)I

    move-result v0

    sget-object v7, Lio/flutter/view/g$a;->c:Lio/flutter/view/g$a;

    iget v8, v7, Lio/flutter/view/g$a;->e:I

    not-int v8, v8

    and-int/2addr v0, v8

    invoke-static {v3, v0}, Lio/flutter/view/g;->a(Lio/flutter/view/g;I)I

    :goto_2
    iget-object v3, p0, Lio/flutter/view/e;->a:Lio/flutter/view/g;

    invoke-static {v3}, Lio/flutter/view/g;->h(Lio/flutter/view/g;)V

    return-void
    .end local v4    # "$r4":Landroid/content/ContentResolver;, ""
    .end local v7    # "$r6":Lio/flutter/view/g$a;, ""
    .end local p1    # "$z0":Z, ""
    .end local v0    # "$i0":I, ""
    .end local v2    # "$r2":Ljava/lang/String;, ""
    .end local v6    # "$r5":Lio/flutter/view/g;, ""
    .end local v8    # "$i1":I, ""
    .end local v3    # "$r3":Lio/flutter/view/g;, ""
.end method
