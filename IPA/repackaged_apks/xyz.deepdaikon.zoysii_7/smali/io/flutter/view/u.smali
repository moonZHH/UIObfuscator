.class public Lio/flutter/view/u;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/view/t;
    }
.end annotation


# static fields
.field private static a:Lio/flutter/view/u;


# instance fields
.field private final b:Landroid/view/WindowManager;

.field private final c:Lio/flutter/embedding/engine/FlutterJNI$b;


# direct methods
.method private constructor <init>(Landroid/view/WindowManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/flutter/view/t;

    .local v0, "$r2":Lio/flutter/view/t;, ""
    invoke-direct {v0, p0}, Lio/flutter/view/t;-><init>(Lio/flutter/view/u;)V

    iput-object v0, p0, Lio/flutter/view/u;->c:Lio/flutter/embedding/engine/FlutterJNI$b;

    iput-object p1, p0, Lio/flutter/view/u;->b:Landroid/view/WindowManager;

    return-void
    .end local v0    # "$r2":Lio/flutter/view/t;, ""
.end method

.method static synthetic a(Lio/flutter/view/u;)Landroid/view/WindowManager;
    .locals 1

    iget-object v0, p0, Lio/flutter/view/u;->b:Landroid/view/WindowManager;

    .local v0, "r1":Landroid/view/WindowManager;, ""
    return-object v0
    .end local v0    # "r1":Landroid/view/WindowManager;, ""
.end method

.method public static a(Landroid/view/WindowManager;)Lio/flutter/view/u;
    .locals 1

    sget-object v0, Lio/flutter/view/u;->a:Lio/flutter/view/u;

    .local v0, "$r1":Lio/flutter/view/u;, ""
    if-nez v0, :cond_0

    new-instance v0, Lio/flutter/view/u;

    invoke-direct {v0, p0}, Lio/flutter/view/u;-><init>(Landroid/view/WindowManager;)V

    sput-object v0, Lio/flutter/view/u;->a:Lio/flutter/view/u;

    :cond_0
    sget-object v0, Lio/flutter/view/u;->a:Lio/flutter/view/u;

    return-object v0
    .end local v0    # "$r1":Lio/flutter/view/u;, ""
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Lio/flutter/view/u;->c:Lio/flutter/embedding/engine/FlutterJNI$b;

    .local v0, "$r1":Lio/flutter/embedding/engine/FlutterJNI$b;, ""
    invoke-static {v0}, Lio/flutter/embedding/engine/FlutterJNI;->setAsyncWaitForVsyncDelegate(Lio/flutter/embedding/engine/FlutterJNI$b;)V

    iget-object v1, p0, Lio/flutter/view/u;->b:Landroid/view/WindowManager;

    .local v1, "$r2":Landroid/view/WindowManager;, ""
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .local v2, "$r3":Landroid/view/Display;, ""
    invoke-virtual {v2}, Landroid/view/Display;->getRefreshRate()F

    move-result v3

    .local v3, "$f0":F, ""
    invoke-static {v3}, Lio/flutter/embedding/engine/FlutterJNI;->setRefreshRateFPS(F)V

    return-void
    .end local v1    # "$r2":Landroid/view/WindowManager;, ""
    .end local v0    # "$r1":Lio/flutter/embedding/engine/FlutterJNI$b;, ""
    .end local v2    # "$r3":Landroid/view/Display;, ""
    .end local v3    # "$f0":F, ""
.end method
