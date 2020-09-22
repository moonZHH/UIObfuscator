.class Lio/flutter/plugins/urllauncher/b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/plugins/urllauncher/b$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/plugins/urllauncher/b;->a:Landroid/content/Context;

    iput-object p2, p0, Lio/flutter/plugins/urllauncher/b;->b:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;Landroid/os/Bundle;ZZZ)Lio/flutter/plugins/urllauncher/b$a;
    .locals 5

    iget-object v0, p0, Lio/flutter/plugins/urllauncher/b;->b:Landroid/app/Activity;

    .local v0, "$r1":Landroid/app/Activity;, ""
    if-nez v0, :cond_0

    sget-object v1, Lio/flutter/plugins/urllauncher/b$a;->b:Lio/flutter/plugins/urllauncher/b$a;

    .local v1, "r6":Lio/flutter/plugins/urllauncher/b$a;, ""
    return-object v1

    :cond_0
    if-eqz p3, :cond_1

    iget-object v0, p0, Lio/flutter/plugins/urllauncher/b;->b:Landroid/app/Activity;

    invoke-static {v0, p1, p4, p5, p2}, Lio/flutter/plugins/urllauncher/WebViewActivity;->a(Landroid/content/Context;Ljava/lang/String;ZZLandroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v2

    .local v2, "$r4":Landroid/content/Intent;, ""
    goto :goto_0

    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .local v4, "$r5":Landroid/net/Uri;, ""
    invoke-virtual {v2, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.android.browser.headers"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v2

    :goto_0
    iget-object v0, p0, Lio/flutter/plugins/urllauncher/b;->b:Landroid/app/Activity;

    invoke-static {v0, v2}, Lhk/polyu/GlobalIntent;->proxyTransition(Landroid/content/Context;Landroid/content/Intent;)V

    sget-object v1, Lio/flutter/plugins/urllauncher/b$a;->a:Lio/flutter/plugins/urllauncher/b$a;

    return-object v1
    .end local v2    # "$r4":Landroid/content/Intent;, ""
    .end local v0    # "$r1":Landroid/app/Activity;, ""
    .end local v4    # "$r5":Landroid/net/Uri;, ""
    .end local v1    # "r6":Lio/flutter/plugins/urllauncher/b$a;, ""
.end method

.method a()V
    .locals 3

    iget-object v0, p0, Lio/flutter/plugins/urllauncher/b;->a:Landroid/content/Context;

    .local v0, "$r1":Landroid/content/Context;, ""
    new-instance v1, Landroid/content/Intent;

    .local v1, "$r2":Landroid/content/Intent;, ""
    sget-object v2, Lio/flutter/plugins/urllauncher/WebViewActivity;->a:Ljava/lang/String;

    .local v2, "$r3":Ljava/lang/String;, ""
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
    .end local v2    # "$r3":Ljava/lang/String;, ""
    .end local v1    # "$r2":Landroid/content/Intent;, ""
    .end local v0    # "$r1":Landroid/content/Context;, ""
.end method

.method a(Ljava/lang/String;)Z
    .locals 9

    new-instance v0, Landroid/content/Intent;

    .local v0, "$r2":Landroid/content/Intent;, ""
    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .local v2, "$r3":Landroid/net/Uri;, ""
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v3, p0, Lio/flutter/plugins/urllauncher/b;->a:Landroid/content/Context;

    .local v3, "$r4":Landroid/content/Context;, ""
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .local v4, "$r5":Landroid/content/pm/PackageManager;, ""
    invoke-virtual {v0, v4}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v5

    .local v5, "$r6":Landroid/content/ComponentName;, ""
    if-eqz v5, :cond_0

    const-string p1, "{com.android.fallback/com.android.fallback.Fallback}"

    .local p1, "$r1":Ljava/lang/String;, ""
    invoke-virtual {v5}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v6

    .local v6, "$r7":Ljava/lang/String;, ""
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .local v7, "$z0":Z, ""
    if-nez v7, :cond_0

    const/4 v8, 0x1

    return v8

    :cond_0
    const/4 v8, 0x0

    return v8
    .end local v2    # "$r3":Landroid/net/Uri;, ""
    .end local p1    # "$r1":Ljava/lang/String;, ""
    .end local v5    # "$r6":Landroid/content/ComponentName;, ""
    .end local v0    # "$r2":Landroid/content/Intent;, ""
    .end local v6    # "$r7":Ljava/lang/String;, ""
    .end local v7    # "$z0":Z, ""
    .end local v3    # "$r4":Landroid/content/Context;, ""
    .end local v4    # "$r5":Landroid/content/pm/PackageManager;, ""
.end method
