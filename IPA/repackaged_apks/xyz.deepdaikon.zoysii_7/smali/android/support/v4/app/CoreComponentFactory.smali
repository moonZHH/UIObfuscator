.class public Landroid/support/v4/app/CoreComponentFactory;
.super Landroid/app/AppComponentFactory;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/CoreComponentFactory$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/AppComponentFactory;-><init>()V

    return-void
.end method

.method static a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    instance-of v0, p0, Landroid/support/v4/app/CoreComponentFactory$a;

    .local v0, "$z0":Z, ""
    if-eqz v0, :cond_0

    move-object v2, p0

    check-cast v2, Landroid/support/v4/app/CoreComponentFactory$a;

    move-object v1, v2

    .local v1, "$r2":Landroid/support/v4/app/CoreComponentFactory$a;, ""
    invoke-interface {v1}, Landroid/support/v4/app/CoreComponentFactory$a;->a()Ljava/lang/Object;

    move-result-object v3

    .local v3, "$r1":Ljava/lang/Object;, ""
    if-eqz v3, :cond_0

    return-object v3

    :cond_0
    return-object p0
    .end local v1    # "$r2":Landroid/support/v4/app/CoreComponentFactory$a;, ""
    .end local v0    # "$z0":Z, ""
    .end local v3    # "$r1":Ljava/lang/Object;, ""
.end method


# virtual methods
.method public instantiateActivity(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;
    .locals 3

    invoke-super {p0, p1, p2, p3}, Landroid/app/AppComponentFactory;->instantiateActivity(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object v0

    .local v0, "$r4":Landroid/app/Activity;, ""
    invoke-static {v0}, Landroid/support/v4/app/CoreComponentFactory;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .local v1, "$r5":Ljava/lang/Object;, ""
    move-object v2, v1

    check-cast v2, Landroid/app/Activity;

    move-object v0, v2

    return-object v0
    .end local v1    # "$r5":Ljava/lang/Object;, ""
    .end local v0    # "$r4":Landroid/app/Activity;, ""
.end method

.method public instantiateApplication(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroid/app/Application;
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/app/AppComponentFactory;->instantiateApplication(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroid/app/Application;

    move-result-object v0

    .local v0, "$r3":Landroid/app/Application;, ""
    invoke-static {v0}, Landroid/support/v4/app/CoreComponentFactory;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .local v1, "$r4":Ljava/lang/Object;, ""
    move-object v2, v1

    check-cast v2, Landroid/app/Application;

    move-object v0, v2

    return-object v0
    .end local v0    # "$r3":Landroid/app/Application;, ""
    .end local v1    # "$r4":Ljava/lang/Object;, ""
.end method

.method public instantiateProvider(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroid/content/ContentProvider;
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/app/AppComponentFactory;->instantiateProvider(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroid/content/ContentProvider;

    move-result-object v0

    .local v0, "$r3":Landroid/content/ContentProvider;, ""
    invoke-static {v0}, Landroid/support/v4/app/CoreComponentFactory;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .local v1, "$r4":Ljava/lang/Object;, ""
    move-object v2, v1

    check-cast v2, Landroid/content/ContentProvider;

    move-object v0, v2

    return-object v0
    .end local v1    # "$r4":Ljava/lang/Object;, ""
    .end local v0    # "$r3":Landroid/content/ContentProvider;, ""
.end method

.method public instantiateReceiver(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/content/BroadcastReceiver;
    .locals 3

    invoke-super {p0, p1, p2, p3}, Landroid/app/AppComponentFactory;->instantiateReceiver(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    .local v0, "$r4":Landroid/content/BroadcastReceiver;, ""
    invoke-static {v0}, Landroid/support/v4/app/CoreComponentFactory;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .local v1, "$r5":Ljava/lang/Object;, ""
    move-object v2, v1

    check-cast v2, Landroid/content/BroadcastReceiver;

    move-object v0, v2

    return-object v0
    .end local v0    # "$r4":Landroid/content/BroadcastReceiver;, ""
    .end local v1    # "$r5":Ljava/lang/Object;, ""
.end method

.method public instantiateService(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Service;
    .locals 3

    invoke-super {p0, p1, p2, p3}, Landroid/app/AppComponentFactory;->instantiateService(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Service;

    move-result-object v0

    .local v0, "$r4":Landroid/app/Service;, ""
    invoke-static {v0}, Landroid/support/v4/app/CoreComponentFactory;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .local v1, "$r5":Ljava/lang/Object;, ""
    move-object v2, v1

    check-cast v2, Landroid/app/Service;

    move-object v0, v2

    return-object v0
    .end local v0    # "$r4":Landroid/app/Service;, ""
    .end local v1    # "$r5":Ljava/lang/Object;, ""
.end method
