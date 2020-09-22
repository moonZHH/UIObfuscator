.class public Lio/flutter/app/FlutterApplication;
.super Landroid/app/Application;
.source ""


# instance fields
.field private a:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/flutter/app/FlutterApplication;->a:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public a()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lio/flutter/app/FlutterApplication;->a:Landroid/app/Activity;

    .local v0, "r1":Landroid/app/Activity;, ""
    return-object v0
    .end local v0    # "r1":Landroid/app/Activity;, ""
.end method

.method public a(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lio/flutter/app/FlutterApplication;->a:Landroid/app/Activity;

    return-void
.end method

.method public onCreate()V
    .locals 0

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    invoke-static {p0}, Lio/flutter/view/i;->a(Landroid/content/Context;)V

    return-void
.end method
