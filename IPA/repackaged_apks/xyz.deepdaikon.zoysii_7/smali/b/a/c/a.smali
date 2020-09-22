.class public final Lb/a/c/a;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lb/a/b/a/o;)V
    .locals 3

    invoke-static {p0}, Lb/a/c/a;->b(Lb/a/b/a/o;)Z

    move-result v0

    .local v0, "$z0":Z, ""
    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v2, "io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin"

    invoke-interface {p0, v2}, Lb/a/b/a/o;->b(Ljava/lang/String;)Lb/a/b/a/o$c;

    move-result-object v1

    .local v1, "$r1":Lb/a/b/a/o$c;, ""
    invoke-static {v1}, Lb/a/c/a/c;->a(Lb/a/b/a/o$c;)V

    const-string v2, "io.flutter.plugins.urllauncher.UrlLauncherPlugin"

    invoke-interface {p0, v2}, Lb/a/b/a/o;->b(Ljava/lang/String;)Lb/a/b/a/o$c;

    move-result-object v1

    invoke-static {v1}, Lio/flutter/plugins/urllauncher/c;->a(Lb/a/b/a/o$c;)V

    return-void
    .end local v0    # "$z0":Z, ""
    .end local v1    # "$r1":Lb/a/b/a/o$c;, ""
.end method

.method private static b(Lb/a/b/a/o;)Z
    .locals 4

    const-class v0, Lb/a/c/a;

    .local v0, "$r1":Ljava/lang/Class;, ""
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    .local v1, "$r2":Ljava/lang/String;, ""
    invoke-interface {p0, v1}, Lb/a/b/a/o;->a(Ljava/lang/String;)Z

    move-result v2

    .local v2, "$z0":Z, ""
    if-eqz v2, :cond_0

    const/4 v3, 0x1

    return v3

    :cond_0
    invoke-interface {p0, v1}, Lb/a/b/a/o;->b(Ljava/lang/String;)Lb/a/b/a/o$c;

    const/4 v3, 0x0

    return v3
    .end local v0    # "$r1":Ljava/lang/Class;, ""
    .end local v2    # "$z0":Z, ""
    .end local v1    # "$r2":Ljava/lang/String;, ""
.end method
