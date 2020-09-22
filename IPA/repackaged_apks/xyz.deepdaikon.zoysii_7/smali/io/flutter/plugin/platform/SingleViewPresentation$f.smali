.class Lio/flutter/plugin/platform/SingleViewPresentation$f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugin/platform/SingleViewPresentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WindowManagerHandler"
.end annotation


# instance fields
.field private final a:Landroid/view/WindowManager;

.field b:Lio/flutter/plugin/platform/SingleViewPresentation$b;


# direct methods
.method constructor <init>(Landroid/view/WindowManager;Lio/flutter/plugin/platform/SingleViewPresentation$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/plugin/platform/SingleViewPresentation$f;->a:Landroid/view/WindowManager;

    iput-object p2, p0, Lio/flutter/plugin/platform/SingleViewPresentation$f;->b:Lio/flutter/plugin/platform/SingleViewPresentation$b;

    return-void
.end method

.method private a([Ljava/lang/Object;)V
    .locals 9

    iget-object v0, p0, Lio/flutter/plugin/platform/SingleViewPresentation$f;->b:Lio/flutter/plugin/platform/SingleViewPresentation$b;

    .local v0, "$r2":Lio/flutter/plugin/platform/SingleViewPresentation$b;, ""
    if-nez v0, :cond_0

    const-string v1, "PlatformViewsController"

    const-string v2, "Embedded view called addView while detached from presentation"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v4, 0x0

    aget-object v3, p1, v4

    .local v3, "$r3":Ljava/lang/Object;, ""
    move-object v6, v3

    check-cast v6, Landroid/view/View;

    move-object v5, v6

    .local v5, "$r4":Landroid/view/View;, ""
    const/4 v4, 0x1

    aget-object v3, p1, v4

    move-object v8, v3

    check-cast v8, Landroid/view/WindowManager$LayoutParams;

    move-object v7, v8

    .local v7, "$r5":Landroid/view/WindowManager$LayoutParams;, ""
    iget-object v0, p0, Lio/flutter/plugin/platform/SingleViewPresentation$f;->b:Lio/flutter/plugin/platform/SingleViewPresentation$b;

    invoke-virtual {v0, v5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
    .end local v3    # "$r3":Ljava/lang/Object;, ""
    .end local v5    # "$r4":Landroid/view/View;, ""
    .end local v0    # "$r2":Lio/flutter/plugin/platform/SingleViewPresentation$b;, ""
    .end local v7    # "$r5":Landroid/view/WindowManager$LayoutParams;, ""
.end method

.method private b([Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, Lio/flutter/plugin/platform/SingleViewPresentation$f;->b:Lio/flutter/plugin/platform/SingleViewPresentation$b;

    .local v0, "$r2":Lio/flutter/plugin/platform/SingleViewPresentation$b;, ""
    if-nez v0, :cond_0

    const-string v1, "PlatformViewsController"

    const-string v2, "Embedded view called removeView while detached from presentation"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v4, 0x0

    aget-object v3, p1, v4

    .local v3, "$r3":Ljava/lang/Object;, ""
    move-object v6, v3

    check-cast v6, Landroid/view/View;

    move-object v5, v6

    .local v5, "$r4":Landroid/view/View;, ""
    iget-object v0, p0, Lio/flutter/plugin/platform/SingleViewPresentation$f;->b:Lio/flutter/plugin/platform/SingleViewPresentation$b;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
    .end local v5    # "$r4":Landroid/view/View;, ""
    .end local v3    # "$r3":Ljava/lang/Object;, ""
    .end local v0    # "$r2":Lio/flutter/plugin/platform/SingleViewPresentation$b;, ""
.end method

.method private c([Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, Lio/flutter/plugin/platform/SingleViewPresentation$f;->b:Lio/flutter/plugin/platform/SingleViewPresentation$b;

    .local v0, "$r2":Lio/flutter/plugin/platform/SingleViewPresentation$b;, ""
    if-nez v0, :cond_0

    const-string v1, "PlatformViewsController"

    const-string v2, "Embedded view called removeViewImmediate while detached from presentation"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v4, 0x0

    aget-object v3, p1, v4

    .local v3, "$r3":Ljava/lang/Object;, ""
    move-object v6, v3

    check-cast v6, Landroid/view/View;

    move-object v5, v6

    .local v5, "$r4":Landroid/view/View;, ""
    invoke-virtual {v5}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lio/flutter/plugin/platform/SingleViewPresentation$f;->b:Lio/flutter/plugin/platform/SingleViewPresentation$b;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
    .end local v0    # "$r2":Lio/flutter/plugin/platform/SingleViewPresentation$b;, ""
    .end local v5    # "$r4":Landroid/view/View;, ""
    .end local v3    # "$r3":Ljava/lang/Object;, ""
.end method

.method private d([Ljava/lang/Object;)V
    .locals 9

    iget-object v0, p0, Lio/flutter/plugin/platform/SingleViewPresentation$f;->b:Lio/flutter/plugin/platform/SingleViewPresentation$b;

    .local v0, "$r2":Lio/flutter/plugin/platform/SingleViewPresentation$b;, ""
    if-nez v0, :cond_0

    const-string v1, "PlatformViewsController"

    const-string v2, "Embedded view called updateViewLayout while detached from presentation"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v4, 0x0

    aget-object v3, p1, v4

    .local v3, "$r3":Ljava/lang/Object;, ""
    move-object v6, v3

    check-cast v6, Landroid/view/View;

    move-object v5, v6

    .local v5, "$r4":Landroid/view/View;, ""
    const/4 v4, 0x1

    aget-object v3, p1, v4

    move-object v8, v3

    check-cast v8, Landroid/view/WindowManager$LayoutParams;

    move-object v7, v8

    .local v7, "$r5":Landroid/view/WindowManager$LayoutParams;, ""
    iget-object v0, p0, Lio/flutter/plugin/platform/SingleViewPresentation$f;->b:Lio/flutter/plugin/platform/SingleViewPresentation$b;

    invoke-virtual {v0, v5, v7}, Landroid/view/ViewGroup;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
    .end local v0    # "$r2":Lio/flutter/plugin/platform/SingleViewPresentation$b;, ""
    .end local v3    # "$r3":Ljava/lang/Object;, ""
    .end local v7    # "$r5":Landroid/view/WindowManager$LayoutParams;, ""
    .end local v5    # "$r4":Landroid/view/View;, ""
.end method


# virtual methods
.method public a()Landroid/view/WindowManager;
    .locals 8

    const-class v0, Landroid/view/WindowManager;

    .local v0, "$r1":Ljava/lang/Class;, ""
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .local v1, "$r2":Ljava/lang/ClassLoader;, ""
    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/Class;

    .local v2, "$r3":[Ljava/lang/Class;, ""
    const/4 v3, 0x0

    const-class v4, Landroid/view/WindowManager;

    aput-object v4, v2, v3

    invoke-static {v1, v2, p0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v5

    .local v5, "$r4":Ljava/lang/Object;, ""
    move-object v7, v5

    check-cast v7, Landroid/view/WindowManager;

    move-object v6, v7

    .local v6, "$r5":Landroid/view/WindowManager;, ""
    return-object v6
    .end local v5    # "$r4":Ljava/lang/Object;, ""
    .end local v0    # "$r1":Ljava/lang/Class;, ""
    .end local v2    # "$r3":[Ljava/lang/Class;, ""
    .end local v6    # "$r5":Landroid/view/WindowManager;, ""
    .end local v1    # "$r2":Ljava/lang/ClassLoader;, ""
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .local v0, "$r4":Ljava/lang/String;, ""
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    .local v1, "$i0":I, ""
    const v2, -0x4475111a

    if-eq v1, v2, :cond_3

    const v2, 0x2059f468

    if-eq v1, v2, :cond_2

    const v2, 0x37843fd8

    if-eq v1, v2, :cond_1

    const v2, 0x417bc549

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v4, "removeView"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .local v3, "$z0":Z, ""
    if-eqz v3, :cond_4

    const/4 v5, 0x1

    .local v5, "$b1":B, ""
    goto :goto_1

    :cond_1
    const-string v4, "updateViewLayout"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v5, 0x3

    goto :goto_1

    :cond_2
    const-string v4, "removeViewImmediate"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v5, 0x2

    goto :goto_1

    :cond_3
    const-string v4, "addView"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v5, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v5, -0x1

    :goto_1
    sparse-switch v5, :sswitch_data_0

    goto :goto_2

    :goto_2
    iget-object v6, p0, Lio/flutter/plugin/platform/SingleViewPresentation$f;->a:Landroid/view/WindowManager;

    .local v6, "$r5":Landroid/view/WindowManager;, ""
    goto :goto_3

    :sswitch_0
    invoke-direct {p0, p3}, Lio/flutter/plugin/platform/SingleViewPresentation$f;->d([Ljava/lang/Object;)V

    const/4 v7, 0x0

    return-object v7

    :sswitch_1
    invoke-direct {p0, p3}, Lio/flutter/plugin/platform/SingleViewPresentation$f;->c([Ljava/lang/Object;)V

    const/4 v7, 0x0

    return-object v7

    :sswitch_2
    invoke-direct {p0, p3}, Lio/flutter/plugin/platform/SingleViewPresentation$f;->b([Ljava/lang/Object;)V

    const/4 v7, 0x0

    return-object v7

    :sswitch_3
    invoke-direct {p0, p3}, Lio/flutter/plugin/platform/SingleViewPresentation$f;->a([Ljava/lang/Object;)V

    const/4 v7, 0x0

    return-object v7

    :goto_3
    :try_start_0
    invoke-virtual {p2, v6, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .local p1, "$r3":Ljava/lang/Object;, ""
    return-object p1

    :catch_0
    move-exception v8

    .local v8, "$r6":Ljava/lang/reflect/InvocationTargetException;, ""
    invoke-virtual {v8}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v9

    .local v9, "$r7":Ljava/lang/Throwable;, ""
    throw v9

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x1 -> :sswitch_2
        0x2 -> :sswitch_1
        0x3 -> :sswitch_0
    .end sparse-switch
    .end local v3    # "$z0":Z, ""
    .end local v8    # "$r6":Ljava/lang/reflect/InvocationTargetException;, ""
    .end local v9    # "$r7":Ljava/lang/Throwable;, ""
    .end local v5    # "$b1":B, ""
    .end local p1    # "$r3":Ljava/lang/Object;, ""
    .end local v0    # "$r4":Ljava/lang/String;, ""
    .end local v1    # "$i0":I, ""
    .end local v6    # "$r5":Landroid/view/WindowManager;, ""
.end method
