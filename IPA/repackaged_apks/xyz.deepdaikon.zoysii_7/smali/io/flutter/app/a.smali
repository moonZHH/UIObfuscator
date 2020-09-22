.class public abstract Lio/flutter/app/a;
.super Landroid/app/Activity;
.source ""

# interfaces
.implements Lio/flutter/view/p$b;
.implements Lb/a/b/a/o;
.implements Lio/flutter/app/d$a;


# instance fields
.field private final a:Lio/flutter/app/d;

.field private final b:Lio/flutter/app/e;

.field private final c:Lio/flutter/view/p$b;

.field private final d:Lb/a/b/a/o;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lio/flutter/app/d;

    .local v0, "$r1":Lio/flutter/app/d;, ""
    invoke-direct {v0, p0, p0}, Lio/flutter/app/d;-><init>(Landroid/app/Activity;Lio/flutter/app/d$a;)V

    iput-object v0, p0, Lio/flutter/app/a;->a:Lio/flutter/app/d;

    iget-object v0, p0, Lio/flutter/app/a;->a:Lio/flutter/app/d;

    iput-object v0, p0, Lio/flutter/app/a;->b:Lio/flutter/app/e;

    iget-object v0, p0, Lio/flutter/app/a;->a:Lio/flutter/app/d;

    iput-object v0, p0, Lio/flutter/app/a;->c:Lio/flutter/view/p$b;

    iget-object v0, p0, Lio/flutter/app/a;->a:Lio/flutter/app/d;

    iput-object v0, p0, Lio/flutter/app/a;->d:Lb/a/b/a/o;

    return-void
    .end local v0    # "$r1":Lio/flutter/app/d;, ""
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lio/flutter/view/p;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lio/flutter/app/a;->d:Lb/a/b/a/o;

    .local v0, "$r1":Lb/a/b/a/o;, ""
    invoke-interface {v0, p1}, Lb/a/b/a/o;->a(Ljava/lang/String;)Z

    move-result v1

    .local v1, "$z0":Z, ""
    return v1
    .end local v1    # "$z0":Z, ""
    .end local v0    # "$r1":Lb/a/b/a/o;, ""
.end method

.method public final b(Ljava/lang/String;)Lb/a/b/a/o$c;
    .locals 2

    iget-object v0, p0, Lio/flutter/app/a;->d:Lb/a/b/a/o;

    .local v0, "$r1":Lb/a/b/a/o;, ""
    invoke-interface {v0, p1}, Lb/a/b/a/o;->b(Ljava/lang/String;)Lb/a/b/a/o$c;

    move-result-object v1

    .local v1, "$r2":Lb/a/b/a/o$c;, ""
    return-object v1
    .end local v1    # "$r2":Lb/a/b/a/o$c;, ""
    .end local v0    # "$r1":Lb/a/b/a/o;, ""
.end method

.method public b()Lio/flutter/view/k;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lio/flutter/app/a;->b:Lio/flutter/app/e;

    .local v0, "$r2":Lio/flutter/app/e;, ""
    invoke-interface {v0, p1, p2, p3}, Lb/a/b/a/o$a;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v1

    .local v1, "$z0":Z, ""
    if-nez v1, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
    .end local v0    # "$r2":Lio/flutter/app/e;, ""
    .end local v1    # "$z0":Z, ""
.end method

.method public onBackPressed()V
    .locals 2

    iget-object v0, p0, Lio/flutter/app/a;->b:Lio/flutter/app/e;

    .local v0, "$r1":Lio/flutter/app/e;, ""
    invoke-interface {v0}, Lio/flutter/app/e;->onBackPressed()Z

    move-result v1

    .local v1, "$z0":Z, ""
    if-nez v1, :cond_0

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    :cond_0
    return-void
    .end local v1    # "$z0":Z, ""
    .end local v0    # "$r1":Lio/flutter/app/e;, ""
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lio/flutter/app/a;->b:Lio/flutter/app/e;

    .local v0, "$r2":Lio/flutter/app/e;, ""
    invoke-interface {v0, p1}, Landroid/content/ComponentCallbacks2;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
    .end local v0    # "$r2":Lio/flutter/app/e;, ""
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lio/flutter/app/a;->b:Lio/flutter/app/e;

    .local v0, "$r2":Lio/flutter/app/e;, ""
    invoke-interface {v0, p1}, Lio/flutter/app/e;->onCreate(Landroid/os/Bundle;)V

    return-void
    .end local v0    # "$r2":Lio/flutter/app/e;, ""
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lio/flutter/app/a;->b:Lio/flutter/app/e;

    .local v0, "$r1":Lio/flutter/app/e;, ""
    invoke-interface {v0}, Lio/flutter/app/e;->onDestroy()V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
    .end local v0    # "$r1":Lio/flutter/app/e;, ""
.end method

.method public onLowMemory()V
    .locals 1

    iget-object v0, p0, Lio/flutter/app/a;->b:Lio/flutter/app/e;

    .local v0, "$r1":Lio/flutter/app/e;, ""
    invoke-interface {v0}, Landroid/content/ComponentCallbacks2;->onLowMemory()V

    return-void
    .end local v0    # "$r1":Lio/flutter/app/e;, ""
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lio/flutter/app/a;->b:Lio/flutter/app/e;

    .local v0, "$r2":Lio/flutter/app/e;, ""
    invoke-interface {v0, p1}, Lio/flutter/app/e;->onNewIntent(Landroid/content/Intent;)V

    return-void
    .end local v0    # "$r2":Lio/flutter/app/e;, ""
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lio/flutter/app/a;->b:Lio/flutter/app/e;

    .local v0, "$r1":Lio/flutter/app/e;, ""
    invoke-interface {v0}, Lio/flutter/app/e;->onPause()V

    return-void
    .end local v0    # "$r1":Lio/flutter/app/e;, ""
.end method

.method protected onPostResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onPostResume()V

    iget-object v0, p0, Lio/flutter/app/a;->b:Lio/flutter/app/e;

    .local v0, "$r1":Lio/flutter/app/e;, ""
    invoke-interface {v0}, Lio/flutter/app/e;->onPostResume()V

    return-void
    .end local v0    # "$r1":Lio/flutter/app/e;, ""
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    iget-object v0, p0, Lio/flutter/app/a;->b:Lio/flutter/app/e;

    .local v0, "$r3":Lio/flutter/app/e;, ""
    invoke-interface {v0, p1, p2, p3}, Lb/a/b/a/o$d;->a(I[Ljava/lang/String;[I)Z

    return-void
    .end local v0    # "$r3":Lio/flutter/app/e;, ""
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lio/flutter/app/a;->b:Lio/flutter/app/e;

    .local v0, "$r1":Lio/flutter/app/e;, ""
    invoke-interface {v0}, Lio/flutter/app/e;->onResume()V

    return-void
    .end local v0    # "$r1":Lio/flutter/app/e;, ""
.end method

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    iget-object v0, p0, Lio/flutter/app/a;->b:Lio/flutter/app/e;

    .local v0, "$r1":Lio/flutter/app/e;, ""
    invoke-interface {v0}, Lio/flutter/app/e;->onStart()V

    return-void
    .end local v0    # "$r1":Lio/flutter/app/e;, ""
.end method

.method protected onStop()V
    .locals 1

    iget-object v0, p0, Lio/flutter/app/a;->b:Lio/flutter/app/e;

    .local v0, "$r1":Lio/flutter/app/e;, ""
    invoke-interface {v0}, Lio/flutter/app/e;->onStop()V

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
    .end local v0    # "$r1":Lio/flutter/app/e;, ""
.end method

.method public onTrimMemory(I)V
    .locals 1

    iget-object v0, p0, Lio/flutter/app/a;->b:Lio/flutter/app/e;

    .local v0, "$r1":Lio/flutter/app/e;, ""
    invoke-interface {v0, p1}, Landroid/content/ComponentCallbacks2;->onTrimMemory(I)V

    return-void
    .end local v0    # "$r1":Lio/flutter/app/e;, ""
.end method

.method public onUserLeaveHint()V
    .locals 1

    iget-object v0, p0, Lio/flutter/app/a;->b:Lio/flutter/app/e;

    .local v0, "$r1":Lio/flutter/app/e;, ""
    invoke-interface {v0}, Lio/flutter/app/e;->onUserLeaveHint()V

    return-void
    .end local v0    # "$r1":Lio/flutter/app/e;, ""
.end method
