.class Lio/flutter/plugins/urllauncher/d;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugins/urllauncher/WebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/flutter/plugins/urllauncher/WebViewActivity;


# direct methods
.method constructor <init>(Lio/flutter/plugins/urllauncher/WebViewActivity;)V
    .locals 0

    iput-object p1, p0, Lio/flutter/plugins/urllauncher/d;->a:Lio/flutter/plugins/urllauncher/WebViewActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, "$r3":Ljava/lang/String;, ""
    sget-object v1, Lio/flutter/plugins/urllauncher/WebViewActivity;->a:Ljava/lang/String;

    .local v1, "$r4":Ljava/lang/String;, ""
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .local v2, "$z0":Z, ""
    if-eqz v2, :cond_0

    iget-object v3, p0, Lio/flutter/plugins/urllauncher/d;->a:Lio/flutter/plugins/urllauncher/WebViewActivity;

    .local v3, "$r5":Lio/flutter/plugins/urllauncher/WebViewActivity;, ""
    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
    .end local v3    # "$r5":Lio/flutter/plugins/urllauncher/WebViewActivity;, ""
    .end local v1    # "$r4":Ljava/lang/String;, ""
    .end local v2    # "$z0":Z, ""
    .end local v0    # "$r3":Ljava/lang/String;, ""
.end method
