.class public final Lio/flutter/app/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/flutter/app/e;
.implements Lio/flutter/view/p$b;
.implements Lb/a/b/a/o;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/app/c;,
        Lio/flutter/app/d$a;
    }
.end annotation


# static fields
.field private static final a:Landroid/view/WindowManager$LayoutParams;


# instance fields
.field private final b:Landroid/app/Activity;

.field private final c:Lio/flutter/app/d$a;

.field private d:Lio/flutter/view/p;

.field private e:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .local v0, "$r0":Landroid/view/WindowManager$LayoutParams;, ""
    const/4 v1, -0x1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    sput-object v0, Lio/flutter/app/d;->a:Landroid/view/WindowManager$LayoutParams;

    return-void
    .end local v0    # "$r0":Landroid/view/WindowManager$LayoutParams;, ""
.end method

.method public constructor <init>(Landroid/app/Activity;Lio/flutter/app/d$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lb/a/d/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lio/flutter/app/d;->b:Landroid/app/Activity;

    invoke-static {p2}, Lb/a/d/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lio/flutter/app/d;->c:Lio/flutter/app/d$a;

    return-void
.end method

.method static synthetic a(Lio/flutter/app/d;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lio/flutter/app/d;->e:Landroid/view/View;

    .local v0, "r1":Landroid/view/View;, ""
    return-object v0
    .end local v0    # "r1":Landroid/view/View;, ""
.end method

.method static synthetic a(Lio/flutter/app/d;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lio/flutter/app/d;->e:Landroid/view/View;

    return-object p1
.end method

.method private a()Z
    .locals 4

    iget-object v0, p0, Lio/flutter/app/d;->b:Landroid/app/Activity;

    .local v0, "$r2":Landroid/app/Activity;, ""
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .local v1, "$r1":Landroid/content/pm/ApplicationInfo;, ""
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    .local v2, "$i0":I, ""
    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    return v3

    :cond_0
    const/4 v3, 0x0

    return v3
    .end local v1    # "$r1":Landroid/content/pm/ApplicationInfo;, ""
    .end local v0    # "$r2":Landroid/app/Activity;, ""
    .end local v2    # "$i0":I, ""
.end method

.method private static a(Landroid/content/Intent;)[Ljava/lang/String;
    .locals 11

    new-instance v0, Ljava/util/ArrayList;

    .local v0, "$r0":Ljava/util/ArrayList;, ""
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "trace-startup"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .local v1, "$z0":Z, ""
    if-eqz v1, :cond_0

    const-string v2, "--trace-startup"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v2, "start-paused"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v2, "--start-paused"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v2, "disable-service-auth-codes"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v2, "--disable-service-auth-codes"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    const-string v2, "use-test-fonts"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v2, "--use-test-fonts"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    const-string v2, "enable-dart-profiling"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v2, "--enable-dart-profiling"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    const-string v2, "enable-software-rendering"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v2, "--enable-software-rendering"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    const-string v2, "skia-deterministic-rendering"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v2, "--skia-deterministic-rendering"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    const-string v2, "trace-skia"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v2, "--trace-skia"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    const-string v2, "trace-systrace"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v2, "--trace-systrace"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    const-string v2, "dump-skp-on-shader-compilation"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v2, "--dump-skp-on-shader-compilation"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    const-string v2, "cache-sksl"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v2, "--cache-sksl"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    const-string v2, "verbose-logging"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v2, "--verbose-logging"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    const-string v2, "observatory-port"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .local v4, "$i0":I, ""
    if-lez v4, :cond_c

    new-instance v5, Ljava/lang/StringBuilder;

    .local v5, "$r1":Ljava/lang/StringBuilder;, ""
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--observatory-port="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .local v6, "$r3":Ljava/lang/String;, ""
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    const-string v2, "disable-service-auth-codes"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v2, "--disable-service-auth-codes"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    const-string v2, "dart-flags"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--dart-flags="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "dart-flags"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_f

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v7, v4, [Ljava/lang/String;

    .local v7, "$r4":[Ljava/lang/String;, ""
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    .local v8, "$r5":[Ljava/lang/Object;, ""
    move-object v9, v8

    check-cast v9, [Ljava/lang/String;

    move-object v7, v9

    return-object v7

    :cond_f
    const/4 v10, 0x0

    return-object v10
    .end local v1    # "$z0":Z, ""
    .end local v8    # "$r5":[Ljava/lang/Object;, ""
    .end local v7    # "$r4":[Ljava/lang/String;, ""
    .end local v6    # "$r3":Ljava/lang/String;, ""
    .end local v4    # "$i0":I, ""
    .end local v0    # "$r0":Ljava/util/ArrayList;, ""
    .end local v5    # "$r1":Ljava/lang/StringBuilder;, ""
.end method

.method private b()Landroid/view/View;
    .locals 7

    invoke-direct {p0}, Lio/flutter/app/d;->d()Ljava/lang/Boolean;

    move-result-object v0

    .local v0, "$r1":Ljava/lang/Boolean;, ""
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .local v1, "$z0":Z, ""
    if-nez v1, :cond_0

    const/4 v2, 0x0

    return-object v2

    :cond_0
    invoke-direct {p0}, Lio/flutter/app/d;->c()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .local v3, "$r2":Landroid/graphics/drawable/Drawable;, ""
    if-nez v3, :cond_1

    const/4 v2, 0x0

    return-object v2

    :cond_1
    new-instance v4, Landroid/view/View;

    .local v4, "$r3":Landroid/view/View;, ""
    iget-object v5, p0, Lio/flutter/app/d;->b:Landroid/app/Activity;

    .local v5, "$r4":Landroid/app/Activity;, ""
    invoke-direct {v4, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    sget-object v6, Lio/flutter/app/d;->a:Landroid/view/WindowManager$LayoutParams;

    .local v6, "$r5":Landroid/view/WindowManager$LayoutParams;, ""
    invoke-virtual {v4, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-object v4
    .end local v1    # "$z0":Z, ""
    .end local v3    # "$r2":Landroid/graphics/drawable/Drawable;, ""
    .end local v4    # "$r3":Landroid/view/View;, ""
    .end local v5    # "$r4":Landroid/app/Activity;, ""
    .end local v0    # "$r1":Ljava/lang/Boolean;, ""
    .end local v6    # "$r5":Landroid/view/WindowManager$LayoutParams;, ""
.end method

.method static synthetic b(Lio/flutter/app/d;)Lio/flutter/view/p;
    .locals 1

    iget-object v0, p0, Lio/flutter/app/d;->d:Lio/flutter/view/p;

    .local v0, "r1":Lio/flutter/view/p;, ""
    return-object v0
    .end local v0    # "r1":Lio/flutter/view/p;, ""
.end method

.method private b(Landroid/content/Intent;)Z
    .locals 7

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, "$r2":Ljava/lang/String;, ""
    const-string v1, "android.intent.action.RUN"

    .local v1, "$r3":Ljava/lang/String;, ""
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .local v2, "$z0":Z, ""
    if-eqz v2, :cond_2

    const-string v3, "route"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    .local v4, "$r4":Ljava/lang/String;, ""
    if-nez v1, :cond_0

    invoke-static {}, Lio/flutter/view/i;->a()Ljava/lang/String;

    move-result-object v4

    :cond_0
    if-eqz v0, :cond_1

    iget-object v5, p0, Lio/flutter/app/d;->d:Lio/flutter/view/p;

    .local v5, "$r5":Lio/flutter/view/p;, ""
    invoke-virtual {v5, v0}, Lio/flutter/view/p;->setInitialRoute(Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0, v4}, Lio/flutter/app/d;->c(Ljava/lang/String;)V

    const/4 v6, 0x1

    return v6

    :cond_2
    const/4 v6, 0x0

    return v6
    .end local v2    # "$z0":Z, ""
    .end local v1    # "$r3":Ljava/lang/String;, ""
    .end local v0    # "$r2":Ljava/lang/String;, ""
    .end local v4    # "$r4":Ljava/lang/String;, ""
    .end local v5    # "$r5":Lio/flutter/view/p;, ""
.end method

.method private c()Landroid/graphics/drawable/Drawable;
    .locals 13

    new-instance v0, Landroid/util/TypedValue;

    .local v0, "$r2":Landroid/util/TypedValue;, ""
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iget-object v1, p0, Lio/flutter/app/d;->b:Landroid/app/Activity;

    .local v1, "$r3":Landroid/app/Activity;, ""
    invoke-virtual {v1}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    .local v2, "$r4":Landroid/content/res/Resources$Theme;, ""
    const v4, 0x1010054

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v0, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v3

    .local v3, "$z0":Z, ""
    if-nez v3, :cond_0

    const/4 v6, 0x0

    return-object v6

    :cond_0
    iget v7, v0, Landroid/util/TypedValue;->resourceId:I

    .local v7, "$i0":I, ""
    if-nez v7, :cond_1

    const/4 v6, 0x0

    return-object v6

    :cond_1
    iget-object v1, p0, Lio/flutter/app/d;->b:Landroid/app/Activity;

    :try_start_0
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .local v8, "$r5":Landroid/content/res/Resources;, ""
    iget v7, v0, Landroid/util/TypedValue;->resourceId:I

    :try_start_1
    invoke-virtual {v8, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .local v9, "$r6":Landroid/graphics/drawable/Drawable;, ""
    return-object v9

    :goto_0
    const-string v10, "FlutterActivityDelegate"

    const-string v11, "Referenced launch screen windowBackground resource does not exist"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    return-object v6

    :catch_0
    move-exception v12

    .local v12, "$r1":Landroid/content/res/Resources$NotFoundException;, ""
    goto :goto_0
    .end local v3    # "$z0":Z, ""
    .end local v8    # "$r5":Landroid/content/res/Resources;, ""
    .end local v0    # "$r2":Landroid/util/TypedValue;, ""
    .end local v1    # "$r3":Landroid/app/Activity;, ""
    .end local v7    # "$i0":I, ""
    .end local v2    # "$r4":Landroid/content/res/Resources$Theme;, ""
    .end local v9    # "$r6":Landroid/graphics/drawable/Drawable;, ""
    .end local v12    # "$r1":Landroid/content/res/Resources$NotFoundException;, ""
.end method

.method private c(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lio/flutter/app/d;->d:Lio/flutter/view/p;

    .local v0, "$r2":Lio/flutter/view/p;, ""
    invoke-virtual {v0}, Lio/flutter/view/p;->getFlutterNativeView()Lio/flutter/view/k;

    move-result-object v1

    .local v1, "$r3":Lio/flutter/view/k;, ""
    invoke-virtual {v1}, Lio/flutter/view/k;->g()Z

    move-result v2

    .local v2, "$z0":Z, ""
    if-nez v2, :cond_0

    new-instance v3, Lio/flutter/view/l;

    .local v3, "$r4":Lio/flutter/view/l;, ""
    invoke-direct {v3}, Lio/flutter/view/l;-><init>()V

    iput-object p1, v3, Lio/flutter/view/l;->a:Ljava/lang/String;

    const-string v4, "main"

    iput-object v4, v3, Lio/flutter/view/l;->b:Ljava/lang/String;

    iget-object v0, p0, Lio/flutter/app/d;->d:Lio/flutter/view/p;

    invoke-virtual {v0, v3}, Lio/flutter/view/p;->a(Lio/flutter/view/l;)V

    :cond_0
    return-void
    .end local v0    # "$r2":Lio/flutter/view/p;, ""
    .end local v1    # "$r3":Lio/flutter/view/k;, ""
    .end local v2    # "$z0":Z, ""
    .end local v3    # "$r4":Lio/flutter/view/l;, ""
.end method

.method private d()Ljava/lang/Boolean;
    .locals 10

    iget-object v0, p0, Lio/flutter/app/d;->b:Landroid/app/Activity;

    .local v0, "$r2":Landroid/app/Activity;, ""
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .local v1, "$r3":Landroid/content/pm/PackageManager;, ""
    iget-object v0, p0, Lio/flutter/app/d;->b:Landroid/app/Activity;

    :try_start_1
    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    .local v2, "$r4":Landroid/content/ComponentName;, ""
    const/16 v4, 0x81

    invoke-virtual {v1, v2, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .local v3, "$r5":Landroid/content/pm/ActivityInfo;, ""
    iget-object v5, v3, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .local v5, "$r6":Landroid/os/Bundle;, ""
    if-eqz v5, :cond_0

    :try_start_2
    const-string v7, "io.flutter.app.android.SplashScreenUntilFirstFrame"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .local v6, "$z0":Z, ""
    if-eqz v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    :try_start_3
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    .local v8, "$r7":Ljava/lang/Boolean;, ""
    return-object v8

    :goto_1
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    return-object v8

    :catch_0
    move-exception v9

    .local v9, "$r1":Landroid/content/pm/PackageManager$NameNotFoundException;, ""
    goto :goto_1
    .end local v0    # "$r2":Landroid/app/Activity;, ""
    .end local v6    # "$z0":Z, ""
    .end local v3    # "$r5":Landroid/content/pm/ActivityInfo;, ""
    .end local v9    # "$r1":Landroid/content/pm/PackageManager$NameNotFoundException;, ""
    .end local v1    # "$r3":Landroid/content/pm/PackageManager;, ""
    .end local v8    # "$r7":Ljava/lang/Boolean;, ""
    .end local v2    # "$r4":Landroid/content/ComponentName;, ""
    .end local v5    # "$r6":Landroid/os/Bundle;, ""
.end method

.method private e()V
    .locals 6

    iget-object v0, p0, Lio/flutter/app/d;->e:Landroid/view/View;

    .local v0, "$r2":Landroid/view/View;, ""
    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lio/flutter/app/d;->b:Landroid/app/Activity;

    .local v1, "$r3":Landroid/app/Activity;, ""
    iget-object v0, p0, Lio/flutter/app/d;->e:Landroid/view/View;

    sget-object v2, Lio/flutter/app/d;->a:Landroid/view/WindowManager$LayoutParams;

    .local v2, "$r1":Landroid/view/WindowManager$LayoutParams;, ""
    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lio/flutter/app/d;->d:Lio/flutter/view/p;

    .local v3, "$r4":Lio/flutter/view/p;, ""
    new-instance v4, Lio/flutter/app/c;

    .local v4, "$r5":Lio/flutter/app/c;, ""
    invoke-direct {v4, p0}, Lio/flutter/app/c;-><init>(Lio/flutter/app/d;)V

    invoke-virtual {v3, v4}, Lio/flutter/view/p;->a(Lio/flutter/view/p$a;)V

    iget-object v1, p0, Lio/flutter/app/d;->b:Landroid/app/Activity;

    const v5, 0x1030009

    invoke-virtual {v1, v5}, Landroid/app/Activity;->setTheme(I)V

    return-void
    .end local v0    # "$r2":Landroid/view/View;, ""
    .end local v1    # "$r3":Landroid/app/Activity;, ""
    .end local v2    # "$r1":Landroid/view/WindowManager$LayoutParams;, ""
    .end local v3    # "$r4":Lio/flutter/view/p;, ""
    .end local v4    # "$r5":Lio/flutter/app/c;, ""
.end method


# virtual methods
.method public a(I[Ljava/lang/String;[I)Z
    .locals 3

    iget-object v0, p0, Lio/flutter/app/d;->d:Lio/flutter/view/p;

    .local v0, "$r3":Lio/flutter/view/p;, ""
    invoke-virtual {v0}, Lio/flutter/view/p;->getPluginRegistry()Lio/flutter/app/f;

    move-result-object v1

    .local v1, "$r4":Lio/flutter/app/f;, ""
    invoke-virtual {v1, p1, p2, p3}, Lio/flutter/app/f;->a(I[Ljava/lang/String;[I)Z

    move-result v2

    .local v2, "$z0":Z, ""
    return v2
    .end local v1    # "$r4":Lio/flutter/app/f;, ""
    .end local v2    # "$z0":Z, ""
    .end local v0    # "$r3":Lio/flutter/view/p;, ""
.end method

.method public a(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lio/flutter/app/d;->d:Lio/flutter/view/p;

    .local v0, "$r2":Lio/flutter/view/p;, ""
    invoke-virtual {v0}, Lio/flutter/view/p;->getPluginRegistry()Lio/flutter/app/f;

    move-result-object v1

    .local v1, "$r3":Lio/flutter/app/f;, ""
    invoke-virtual {v1, p1}, Lio/flutter/app/f;->a(Ljava/lang/String;)Z

    move-result v2

    .local v2, "$z0":Z, ""
    return v2
    .end local v2    # "$z0":Z, ""
    .end local v0    # "$r2":Lio/flutter/view/p;, ""
    .end local v1    # "$r3":Lio/flutter/app/f;, ""
.end method

.method public b(Ljava/lang/String;)Lb/a/b/a/o$c;
    .locals 3

    iget-object v0, p0, Lio/flutter/app/d;->d:Lio/flutter/view/p;

    .local v0, "$r2":Lio/flutter/view/p;, ""
    invoke-virtual {v0}, Lio/flutter/view/p;->getPluginRegistry()Lio/flutter/app/f;

    move-result-object v1

    .local v1, "$r3":Lio/flutter/app/f;, ""
    invoke-virtual {v1, p1}, Lio/flutter/app/f;->b(Ljava/lang/String;)Lb/a/b/a/o$c;

    move-result-object v2

    .local v2, "$r4":Lb/a/b/a/o$c;, ""
    return-object v2
    .end local v1    # "$r3":Lio/flutter/app/f;, ""
    .end local v2    # "$r4":Lb/a/b/a/o$c;, ""
    .end local v0    # "$r2":Lio/flutter/view/p;, ""
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 3

    iget-object v0, p0, Lio/flutter/app/d;->d:Lio/flutter/view/p;

    .local v0, "$r2":Lio/flutter/view/p;, ""
    invoke-virtual {v0}, Lio/flutter/view/p;->getPluginRegistry()Lio/flutter/app/f;

    move-result-object v1

    .local v1, "$r3":Lio/flutter/app/f;, ""
    invoke-virtual {v1, p1, p2, p3}, Lio/flutter/app/f;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v2

    .local v2, "$z0":Z, ""
    return v2
    .end local v1    # "$r3":Lio/flutter/app/f;, ""
    .end local v2    # "$z0":Z, ""
    .end local v0    # "$r2":Lio/flutter/view/p;, ""
.end method

.method public onBackPressed()Z
    .locals 2

    iget-object v0, p0, Lio/flutter/app/d;->d:Lio/flutter/view/p;

    .local v0, "$r1":Lio/flutter/view/p;, ""
    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/flutter/app/d;->d:Lio/flutter/view/p;

    invoke-virtual {v0}, Lio/flutter/view/p;->g()V

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
    .end local v0    # "$r1":Lio/flutter/view/p;, ""
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 15

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .local v0, "$i0":I, ""
    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    iget-object v2, p0, Lio/flutter/app/d;->b:Landroid/app/Activity;

    .local v2, "$r1":Landroid/app/Activity;, ""
    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    .local v3, "$r3":Landroid/view/Window;, ""
    const v1, -0x80000000

    invoke-virtual {v3, v1}, Landroid/view/Window;->addFlags(I)V

    const v1, 0x40000000    # 2.0f

    invoke-virtual {v3, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    .local v4, "$r4":Landroid/view/View;, ""
    const/16 v1, 0x500

    invoke-virtual {v4, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    iget-object v2, p0, Lio/flutter/app/d;->b:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .local v5, "$r5":Landroid/content/Intent;, ""
    invoke-static {v5}, Lio/flutter/app/d;->a(Landroid/content/Intent;)[Ljava/lang/String;

    move-result-object v6

    .local v6, "$r6":[Ljava/lang/String;, ""
    iget-object v2, p0, Lio/flutter/app/d;->b:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    .local v7, "$r7":Landroid/content/Context;, ""
    invoke-static {v7, v6}, Lio/flutter/view/i;->a(Landroid/content/Context;[Ljava/lang/String;)V

    iget-object v8, p0, Lio/flutter/app/d;->c:Lio/flutter/app/d$a;

    .local v8, "$r8":Lio/flutter/app/d$a;, ""
    iget-object v2, p0, Lio/flutter/app/d;->b:Landroid/app/Activity;

    invoke-interface {v8, v2}, Lio/flutter/app/d$a;->a(Landroid/content/Context;)Lio/flutter/view/p;

    move-result-object v9

    .local v9, "$r9":Lio/flutter/view/p;, ""
    iput-object v9, p0, Lio/flutter/app/d;->d:Lio/flutter/view/p;

    iget-object v9, p0, Lio/flutter/app/d;->d:Lio/flutter/view/p;

    if-nez v9, :cond_1

    iget-object v8, p0, Lio/flutter/app/d;->c:Lio/flutter/app/d$a;

    invoke-interface {v8}, Lio/flutter/app/d$a;->b()Lio/flutter/view/k;

    move-result-object v10

    .local v10, "$r10":Lio/flutter/view/k;, ""
    new-instance v9, Lio/flutter/view/p;

    iget-object v2, p0, Lio/flutter/app/d;->b:Landroid/app/Activity;

    const/4 v11, 0x0

    invoke-direct {v9, v2, v11, v10}, Lio/flutter/view/p;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lio/flutter/view/k;)V

    iput-object v9, p0, Lio/flutter/app/d;->d:Lio/flutter/view/p;

    iget-object v9, p0, Lio/flutter/app/d;->d:Lio/flutter/view/p;

    sget-object v12, Lio/flutter/app/d;->a:Landroid/view/WindowManager$LayoutParams;

    .local v12, "$r11":Landroid/view/WindowManager$LayoutParams;, ""
    invoke-virtual {v9, v12}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lio/flutter/app/d;->b:Landroid/app/Activity;

    iget-object v9, p0, Lio/flutter/app/d;->d:Lio/flutter/view/p;

    invoke-virtual {v2, v9}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    invoke-direct {p0}, Lio/flutter/app/d;->b()Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lio/flutter/app/d;->e:Landroid/view/View;

    iget-object v4, p0, Lio/flutter/app/d;->e:Landroid/view/View;

    if-eqz v4, :cond_1

    invoke-direct {p0}, Lio/flutter/app/d;->e()V

    :cond_1
    iget-object v2, p0, Lio/flutter/app/d;->b:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-direct {p0, v5}, Lio/flutter/app/d;->b(Landroid/content/Intent;)Z

    move-result v13

    .local v13, "$z0":Z, ""
    if-eqz v13, :cond_2

    return-void

    :cond_2
    invoke-static {}, Lio/flutter/view/i;->a()Ljava/lang/String;

    move-result-object v14

    .local v14, "$r12":Ljava/lang/String;, ""
    if-eqz v14, :cond_3

    invoke-direct {p0, v14}, Lio/flutter/app/d;->c(Ljava/lang/String;)V

    :cond_3
    return-void
    .end local v9    # "$r9":Lio/flutter/view/p;, ""
    .end local v13    # "$z0":Z, ""
    .end local v2    # "$r1":Landroid/app/Activity;, ""
    .end local v10    # "$r10":Lio/flutter/view/k;, ""
    .end local v14    # "$r12":Ljava/lang/String;, ""
    .end local v8    # "$r8":Lio/flutter/app/d$a;, ""
    .end local v6    # "$r6":[Ljava/lang/String;, ""
    .end local v5    # "$r5":Landroid/content/Intent;, ""
    .end local v12    # "$r11":Landroid/view/WindowManager$LayoutParams;, ""
    .end local v7    # "$r7":Landroid/content/Context;, ""
    .end local v4    # "$r4":Landroid/view/View;, ""
    .end local v0    # "$i0":I, ""
    .end local v3    # "$r3":Landroid/view/Window;, ""
.end method

.method public onDestroy()V
    .locals 13

    iget-object v0, p0, Lio/flutter/app/d;->b:Landroid/app/Activity;

    .local v0, "$r1":Landroid/app/Activity;, ""
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .local v1, "$r2":Landroid/content/Context;, ""
    move-object v3, v1

    check-cast v3, Landroid/app/Application;

    move-object v2, v3

    .local v2, "$r3":Landroid/app/Application;, ""
    instance-of v4, v2, Lio/flutter/app/FlutterApplication;

    .local v4, "$z0":Z, ""
    if-eqz v4, :cond_0

    move-object v6, v2

    check-cast v6, Lio/flutter/app/FlutterApplication;

    move-object v5, v6

    .local v5, "$r4":Lio/flutter/app/FlutterApplication;, ""
    iget-object v0, p0, Lio/flutter/app/d;->b:Landroid/app/Activity;

    invoke-virtual {v5}, Lio/flutter/app/FlutterApplication;->a()Landroid/app/Activity;

    move-result-object v7

    .local v7, "$r5":Landroid/app/Activity;, ""
    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lio/flutter/app/FlutterApplication;->a(Landroid/app/Activity;)V

    :cond_0
    iget-object v9, p0, Lio/flutter/app/d;->d:Lio/flutter/view/p;

    .local v9, "$r6":Lio/flutter/view/p;, ""
    if-eqz v9, :cond_3

    iget-object v9, p0, Lio/flutter/app/d;->d:Lio/flutter/view/p;

    invoke-virtual {v9}, Lio/flutter/view/p;->getPluginRegistry()Lio/flutter/app/f;

    move-result-object v10

    .local v10, "$r7":Lio/flutter/app/f;, ""
    iget-object v9, p0, Lio/flutter/app/d;->d:Lio/flutter/view/p;

    invoke-virtual {v9}, Lio/flutter/view/p;->getFlutterNativeView()Lio/flutter/view/k;

    move-result-object v11

    .local v11, "$r8":Lio/flutter/view/k;, ""
    invoke-virtual {v10, v11}, Lio/flutter/app/f;->a(Lio/flutter/view/k;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v12, p0, Lio/flutter/app/d;->c:Lio/flutter/app/d$a;

    .local v12, "$r9":Lio/flutter/app/d$a;, ""
    invoke-interface {v12}, Lio/flutter/app/d$a;->a()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    iget-object v9, p0, Lio/flutter/app/d;->d:Lio/flutter/view/p;

    invoke-virtual {v9}, Lio/flutter/view/p;->i()V

    return-void

    :cond_2
    :goto_0
    iget-object v9, p0, Lio/flutter/app/d;->d:Lio/flutter/view/p;

    invoke-virtual {v9}, Lio/flutter/view/p;->h()Lio/flutter/view/k;

    :cond_3
    return-void
    .end local v4    # "$z0":Z, ""
    .end local v9    # "$r6":Lio/flutter/view/p;, ""
    .end local v10    # "$r7":Lio/flutter/app/f;, ""
    .end local v2    # "$r3":Landroid/app/Application;, ""
    .end local v1    # "$r2":Landroid/content/Context;, ""
    .end local v11    # "$r8":Lio/flutter/view/k;, ""
    .end local v0    # "$r1":Landroid/app/Activity;, ""
    .end local v12    # "$r9":Lio/flutter/app/d$a;, ""
    .end local v7    # "$r5":Landroid/app/Activity;, ""
    .end local v5    # "$r4":Lio/flutter/app/FlutterApplication;, ""
.end method

.method public onLowMemory()V
    .locals 1

    iget-object v0, p0, Lio/flutter/app/d;->d:Lio/flutter/view/p;

    .local v0, "$r1":Lio/flutter/view/p;, ""
    invoke-virtual {v0}, Lio/flutter/view/p;->f()V

    return-void
    .end local v0    # "$r1":Lio/flutter/view/p;, ""
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 3

    invoke-direct {p0}, Lio/flutter/app/d;->a()Z

    move-result v0

    .local v0, "$z0":Z, ""
    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lio/flutter/app/d;->b(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v1, p0, Lio/flutter/app/d;->d:Lio/flutter/view/p;

    .local v1, "$r2":Lio/flutter/view/p;, ""
    invoke-virtual {v1}, Lio/flutter/view/p;->getPluginRegistry()Lio/flutter/app/f;

    move-result-object v2

    .local v2, "$r3":Lio/flutter/app/f;, ""
    invoke-virtual {v2, p1}, Lio/flutter/app/f;->onNewIntent(Landroid/content/Intent;)Z

    :cond_1
    return-void
    .end local v0    # "$z0":Z, ""
    .end local v1    # "$r2":Lio/flutter/view/p;, ""
    .end local v2    # "$r3":Lio/flutter/app/f;, ""
.end method

.method public onPause()V
    .locals 10

    iget-object v0, p0, Lio/flutter/app/d;->b:Landroid/app/Activity;

    .local v0, "$r1":Landroid/app/Activity;, ""
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .local v1, "$r2":Landroid/content/Context;, ""
    move-object v3, v1

    check-cast v3, Landroid/app/Application;

    move-object v2, v3

    .local v2, "$r3":Landroid/app/Application;, ""
    instance-of v4, v2, Lio/flutter/app/FlutterApplication;

    .local v4, "$z0":Z, ""
    if-eqz v4, :cond_0

    move-object v6, v2

    check-cast v6, Lio/flutter/app/FlutterApplication;

    move-object v5, v6

    .local v5, "$r4":Lio/flutter/app/FlutterApplication;, ""
    iget-object v0, p0, Lio/flutter/app/d;->b:Landroid/app/Activity;

    invoke-virtual {v5}, Lio/flutter/app/FlutterApplication;->a()Landroid/app/Activity;

    move-result-object v7

    .local v7, "$r5":Landroid/app/Activity;, ""
    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lio/flutter/app/FlutterApplication;->a(Landroid/app/Activity;)V

    :cond_0
    iget-object v9, p0, Lio/flutter/app/d;->d:Lio/flutter/view/p;

    .local v9, "$r6":Lio/flutter/view/p;, ""
    if-eqz v9, :cond_1

    iget-object v9, p0, Lio/flutter/app/d;->d:Lio/flutter/view/p;

    invoke-virtual {v9}, Lio/flutter/view/p;->c()V

    :cond_1
    return-void
    .end local v0    # "$r1":Landroid/app/Activity;, ""
    .end local v4    # "$z0":Z, ""
    .end local v2    # "$r3":Landroid/app/Application;, ""
    .end local v5    # "$r4":Lio/flutter/app/FlutterApplication;, ""
    .end local v7    # "$r5":Landroid/app/Activity;, ""
    .end local v1    # "$r2":Landroid/content/Context;, ""
    .end local v9    # "$r6":Lio/flutter/view/p;, ""
.end method

.method public onPostResume()V
    .locals 1

    iget-object v0, p0, Lio/flutter/app/d;->d:Lio/flutter/view/p;

    .local v0, "$r1":Lio/flutter/view/p;, ""
    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/flutter/app/d;->d:Lio/flutter/view/p;

    invoke-virtual {v0}, Lio/flutter/view/p;->d()V

    :cond_0
    return-void
    .end local v0    # "$r1":Lio/flutter/view/p;, ""
.end method

.method public onResume()V
    .locals 7

    iget-object v0, p0, Lio/flutter/app/d;->b:Landroid/app/Activity;

    .local v0, "$r2":Landroid/app/Activity;, ""
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .local v1, "$r1":Landroid/content/Context;, ""
    move-object v3, v1

    check-cast v3, Landroid/app/Application;

    move-object v2, v3

    .local v2, "$r3":Landroid/app/Application;, ""
    instance-of v4, v2, Lio/flutter/app/FlutterApplication;

    .local v4, "$z0":Z, ""
    if-eqz v4, :cond_0

    move-object v6, v2

    check-cast v6, Lio/flutter/app/FlutterApplication;

    move-object v5, v6

    .local v5, "$r4":Lio/flutter/app/FlutterApplication;, ""
    iget-object v0, p0, Lio/flutter/app/d;->b:Landroid/app/Activity;

    invoke-virtual {v5, v0}, Lio/flutter/app/FlutterApplication;->a(Landroid/app/Activity;)V

    :cond_0
    return-void
    .end local v0    # "$r2":Landroid/app/Activity;, ""
    .end local v1    # "$r1":Landroid/content/Context;, ""
    .end local v2    # "$r3":Landroid/app/Application;, ""
    .end local v4    # "$z0":Z, ""
    .end local v5    # "$r4":Lio/flutter/app/FlutterApplication;, ""
.end method

.method public onStart()V
    .locals 1

    iget-object v0, p0, Lio/flutter/app/d;->d:Lio/flutter/view/p;

    .local v0, "$r1":Lio/flutter/view/p;, ""
    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/flutter/app/d;->d:Lio/flutter/view/p;

    invoke-virtual {v0}, Lio/flutter/view/p;->b()V

    :cond_0
    return-void
    .end local v0    # "$r1":Lio/flutter/view/p;, ""
.end method

.method public onStop()V
    .locals 1

    iget-object v0, p0, Lio/flutter/app/d;->d:Lio/flutter/view/p;

    .local v0, "$r1":Lio/flutter/view/p;, ""
    invoke-virtual {v0}, Lio/flutter/view/p;->e()V

    return-void
    .end local v0    # "$r1":Lio/flutter/view/p;, ""
.end method

.method public onTrimMemory(I)V
    .locals 2

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    iget-object v1, p0, Lio/flutter/app/d;->d:Lio/flutter/view/p;

    .local v1, "$r1":Lio/flutter/view/p;, ""
    invoke-virtual {v1}, Lio/flutter/view/p;->f()V

    :cond_0
    return-void
    .end local v1    # "$r1":Lio/flutter/view/p;, ""
.end method

.method public onUserLeaveHint()V
    .locals 2

    iget-object v0, p0, Lio/flutter/app/d;->d:Lio/flutter/view/p;

    .local v0, "$r2":Lio/flutter/view/p;, ""
    invoke-virtual {v0}, Lio/flutter/view/p;->getPluginRegistry()Lio/flutter/app/f;

    move-result-object v1

    .local v1, "$r1":Lio/flutter/app/f;, ""
    invoke-virtual {v1}, Lio/flutter/app/f;->onUserLeaveHint()V

    return-void
    .end local v1    # "$r1":Lio/flutter/app/f;, ""
    .end local v0    # "$r2":Lio/flutter/view/p;, ""
.end method
