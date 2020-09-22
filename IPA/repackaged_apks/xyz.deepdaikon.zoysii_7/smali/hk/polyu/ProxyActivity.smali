.class public Lhk/polyu/ProxyActivity;
.super Landroid/app/Activity;
.source "ProxyActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "polyu"

    const-string v1, "ProxyActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lhk/polyu/GlobalIntent;->instance:Landroid/content/Intent;

    .local v2, "r2":Landroid/content/Intent;, ""
    invoke-virtual {p0, v2}, Lhk/polyu/ProxyActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lhk/polyu/ProxyActivity;->finish()V

    return-void
    .end local v2    # "r2":Landroid/content/Intent;, ""
.end method
