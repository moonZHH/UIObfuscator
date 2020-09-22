.class public Lio/flutter/plugins/urllauncher/WebViewActivity;
.super Landroid/app/Activity;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/plugins/urllauncher/e;,
        Lio/flutter/plugins/urllauncher/d;
    }
.end annotation


# static fields
.field public static a:Ljava/lang/String; = "close action"

.field private static b:Ljava/lang/String; = "url"

.field private static c:Ljava/lang/String; = "enableJavaScript"

.field private static d:Ljava/lang/String; = "enableDomStorage"


# instance fields
.field private final e:Landroid/content/BroadcastReceiver;

.field private final f:Landroid/webkit/WebViewClient;

.field private g:Landroid/webkit/WebView;

.field private h:Landroid/content/IntentFilter;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lio/flutter/plugins/urllauncher/d;

    .local v0, "$r2":Lio/flutter/plugins/urllauncher/d;, ""
    invoke-direct {v0, p0}, Lio/flutter/plugins/urllauncher/d;-><init>(Lio/flutter/plugins/urllauncher/WebViewActivity;)V

    iput-object v0, p0, Lio/flutter/plugins/urllauncher/WebViewActivity;->e:Landroid/content/BroadcastReceiver;

    new-instance v1, Lio/flutter/plugins/urllauncher/e;

    .local v1, "$r3":Lio/flutter/plugins/urllauncher/e;, ""
    invoke-direct {v1, p0}, Lio/flutter/plugins/urllauncher/e;-><init>(Lio/flutter/plugins/urllauncher/WebViewActivity;)V

    iput-object v1, p0, Lio/flutter/plugins/urllauncher/WebViewActivity;->f:Landroid/webkit/WebViewClient;

    new-instance v2, Landroid/content/IntentFilter;

    .local v2, "$r4":Landroid/content/IntentFilter;, ""
    sget-object v3, Lio/flutter/plugins/urllauncher/WebViewActivity;->a:Ljava/lang/String;

    .local v3, "$r1":Ljava/lang/String;, ""
    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lio/flutter/plugins/urllauncher/WebViewActivity;->h:Landroid/content/IntentFilter;

    return-void
    .end local v0    # "$r2":Lio/flutter/plugins/urllauncher/d;, ""
    .end local v3    # "$r1":Ljava/lang/String;, ""
    .end local v2    # "$r4":Landroid/content/IntentFilter;, ""
    .end local v1    # "$r3":Lio/flutter/plugins/urllauncher/e;, ""
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;ZZLandroid/os/Bundle;)Landroid/content/Intent;
    .locals 4

    new-instance v0, Landroid/content/Intent;

    .local v0, "$r1":Landroid/content/Intent;, ""
    const-class v1, Lio/flutter/plugins/urllauncher/WebViewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v2, Lio/flutter/plugins/urllauncher/WebViewActivity;->b:Ljava/lang/String;

    .local v2, "$r4":Ljava/lang/String;, ""
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sget-object p1, Lio/flutter/plugins/urllauncher/WebViewActivity;->c:Ljava/lang/String;

    .local p1, "$r3":Ljava/lang/String;, ""
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    sget-object p1, Lio/flutter/plugins/urllauncher/WebViewActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const-string v3, "com.android.browser.headers"

    invoke-virtual {v0, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
    .end local v0    # "$r1":Landroid/content/Intent;, ""
    .end local p1    # "$r3":Ljava/lang/String;, ""
    .end local v2    # "$r4":Ljava/lang/String;, ""
.end method

.method private a(Landroid/os/Bundle;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    .local v0, "$r2":Ljava/util/HashMap;, ""
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    .local v1, "$r3":Ljava/util/Set;, ""
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "$r4":Ljava/util/Iterator;, ""
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    .local v3, "$z0":Z, ""
    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "$r5":Ljava/lang/Object;, ""
    move-object v6, v4

    check-cast v6, Ljava/lang/String;

    move-object v5, v6

    .local v5, "$r6":Ljava/lang/String;, ""
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .local v7, "$r7":Ljava/lang/String;, ""
    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
    .end local v2    # "$r4":Ljava/util/Iterator;, ""
    .end local v7    # "$r7":Ljava/lang/String;, ""
    .end local v3    # "$z0":Z, ""
    .end local v1    # "$r3":Ljava/util/Set;, ""
    .end local v5    # "$r6":Ljava/lang/String;, ""
    .end local v0    # "$r2":Ljava/util/HashMap;, ""
    .end local v4    # "$r5":Ljava/lang/Object;, ""
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 13

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Landroid/webkit/WebView;

    .local v0, "$r2":Landroid/webkit/WebView;, ""
    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/flutter/plugins/urllauncher/WebViewActivity;->g:Landroid/webkit/WebView;

    iget-object v0, p0, Lio/flutter/plugins/urllauncher/WebViewActivity;->g:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .local v1, "$r3":Landroid/content/Intent;, ""
    sget-object v2, Lio/flutter/plugins/urllauncher/WebViewActivity;->b:Ljava/lang/String;

    .local v2, "$r4":Ljava/lang/String;, ""
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lio/flutter/plugins/urllauncher/WebViewActivity;->c:Ljava/lang/String;

    .local v3, "$r5":Ljava/lang/String;, ""
    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .local v4, "$z0":Z, ""
    sget-object v3, Lio/flutter/plugins/urllauncher/WebViewActivity;->d:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .local v6, "$z1":Z, ""
    const-string v7, "com.android.browser.headers"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .local p1, "$r1":Landroid/os/Bundle;, ""
    invoke-direct {p0, p1}, Lio/flutter/plugins/urllauncher/WebViewActivity;->a(Landroid/os/Bundle;)Ljava/util/Map;

    move-result-object v8

    .local v8, "$r6":Ljava/util/Map;, ""
    iget-object v0, p0, Lio/flutter/plugins/urllauncher/WebViewActivity;->g:Landroid/webkit/WebView;

    invoke-virtual {v0, v2, v8}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, p0, Lio/flutter/plugins/urllauncher/WebViewActivity;->g:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v9

    .local v9, "$r7":Landroid/webkit/WebSettings;, ""
    invoke-virtual {v9, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lio/flutter/plugins/urllauncher/WebViewActivity;->g:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    iget-object v0, p0, Lio/flutter/plugins/urllauncher/WebViewActivity;->g:Landroid/webkit/WebView;

    iget-object v10, p0, Lio/flutter/plugins/urllauncher/WebViewActivity;->f:Landroid/webkit/WebViewClient;

    .local v10, "$r8":Landroid/webkit/WebViewClient;, ""
    invoke-virtual {v0, v10}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v11, p0, Lio/flutter/plugins/urllauncher/WebViewActivity;->e:Landroid/content/BroadcastReceiver;

    .local v11, "$r9":Landroid/content/BroadcastReceiver;, ""
    iget-object v12, p0, Lio/flutter/plugins/urllauncher/WebViewActivity;->h:Landroid/content/IntentFilter;

    .local v12, "$r10":Landroid/content/IntentFilter;, ""
    invoke-virtual {p0, v11, v12}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
    .end local v10    # "$r8":Landroid/webkit/WebViewClient;, ""
    .end local v6    # "$z1":Z, ""
    .end local v9    # "$r7":Landroid/webkit/WebSettings;, ""
    .end local v1    # "$r3":Landroid/content/Intent;, ""
    .end local v3    # "$r5":Ljava/lang/String;, ""
    .end local v4    # "$z0":Z, ""
    .end local v2    # "$r4":Ljava/lang/String;, ""
    .end local v12    # "$r10":Landroid/content/IntentFilter;, ""
    .end local v11    # "$r9":Landroid/content/BroadcastReceiver;, ""
    .end local v0    # "$r2":Landroid/webkit/WebView;, ""
    .end local p1    # "$r1":Landroid/os/Bundle;, ""
    .end local v8    # "$r6":Ljava/util/Map;, ""
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lio/flutter/plugins/urllauncher/WebViewActivity;->e:Landroid/content/BroadcastReceiver;

    .local v0, "$r1":Landroid/content/BroadcastReceiver;, ""
    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
    .end local v0    # "$r1":Landroid/content/BroadcastReceiver;, ""
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v1, p0, Lio/flutter/plugins/urllauncher/WebViewActivity;->g:Landroid/webkit/WebView;

    .local v1, "$r2":Landroid/webkit/WebView;, ""
    invoke-virtual {v1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v2

    .local v2, "$z0":Z, ""
    if-eqz v2, :cond_0

    iget-object v1, p0, Lio/flutter/plugins/urllauncher/WebViewActivity;->g:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->goBack()V

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    return v2
    .end local v2    # "$z0":Z, ""
    .end local v1    # "$r2":Landroid/webkit/WebView;, ""
.end method
