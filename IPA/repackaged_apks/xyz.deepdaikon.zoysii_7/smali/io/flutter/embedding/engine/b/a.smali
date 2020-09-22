.class public Lio/flutter/embedding/engine/b/a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/embedding/engine/b/a$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/lang/String;

.field private static final d:Ljava/lang/String;

.field private static e:Lio/flutter/embedding/engine/b/a;


# instance fields
.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Z

.field private k:Lio/flutter/embedding/engine/b/e;

.field private l:Lio/flutter/embedding/engine/b/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    .local v0, "$r0":Ljava/lang/StringBuilder;, ""
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lio/flutter/embedding/engine/b/a;

    .local v1, "$r1":Ljava/lang/Class;, ""
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .local v2, "$r2":Ljava/lang/String;, ""
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2e

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v4, "aot-shared-library-name"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lio/flutter/embedding/engine/b/a;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lio/flutter/embedding/engine/b/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2e

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v4, "vm-snapshot-data"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lio/flutter/embedding/engine/b/a;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lio/flutter/embedding/engine/b/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2e

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v4, "isolate-snapshot-data"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lio/flutter/embedding/engine/b/a;->c:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lio/flutter/embedding/engine/b/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2e

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v4, "flutter-assets-dir"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lio/flutter/embedding/engine/b/a;->d:Ljava/lang/String;

    return-void
    .end local v2    # "$r2":Ljava/lang/String;, ""
    .end local v1    # "$r1":Ljava/lang/Class;, ""
    .end local v0    # "$r0":Ljava/lang/StringBuilder;, ""
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "libapp.so"

    iput-object v0, p0, Lio/flutter/embedding/engine/b/a;->f:Ljava/lang/String;

    const-string v0, "vm_snapshot_data"

    iput-object v0, p0, Lio/flutter/embedding/engine/b/a;->g:Ljava/lang/String;

    const-string v0, "isolate_snapshot_data"

    iput-object v0, p0, Lio/flutter/embedding/engine/b/a;->h:Ljava/lang/String;

    const-string v0, "flutter_assets"

    iput-object v0, p0, Lio/flutter/embedding/engine/b/a;->i:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lio/flutter/embedding/engine/b/a;->j:Z

    return-void
.end method

.method public static a()Lio/flutter/embedding/engine/b/a;
    .locals 1

    sget-object v0, Lio/flutter/embedding/engine/b/a;->e:Lio/flutter/embedding/engine/b/a;

    .local v0, "$r0":Lio/flutter/embedding/engine/b/a;, ""
    if-nez v0, :cond_0

    new-instance v0, Lio/flutter/embedding/engine/b/a;

    invoke-direct {v0}, Lio/flutter/embedding/engine/b/a;-><init>()V

    sput-object v0, Lio/flutter/embedding/engine/b/a;->e:Lio/flutter/embedding/engine/b/a;

    :cond_0
    sget-object v0, Lio/flutter/embedding/engine/b/a;->e:Lio/flutter/embedding/engine/b/a;

    return-object v0
    .end local v0    # "$r0":Lio/flutter/embedding/engine/b/a;, ""
.end method

.method private b(Landroid/content/Context;)Landroid/content/pm/ApplicationInfo;
    .locals 6

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .local v0, "$r2":Landroid/content/pm/PackageManager;, ""
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .local v1, "$r3":Ljava/lang/String;, ""
    const/16 v3, 0x80

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .local v2, "$r4":Landroid/content/pm/ApplicationInfo;, ""
    return-object v2

    :catch_0
    move-exception v4

    .local v4, "$r5":Landroid/content/pm/PackageManager$NameNotFoundException;, ""
    new-instance v5, Ljava/lang/RuntimeException;

    .local v5, "$r6":Ljava/lang/RuntimeException;, ""
    invoke-direct {v5, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5
    .end local v2    # "$r4":Landroid/content/pm/ApplicationInfo;, ""
    .end local v0    # "$r2":Landroid/content/pm/PackageManager;, ""
    .end local v1    # "$r3":Ljava/lang/String;, ""
    .end local v4    # "$r5":Landroid/content/pm/PackageManager$NameNotFoundException;, ""
    .end local v5    # "$r6":Ljava/lang/RuntimeException;, ""
.end method

.method private c(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0, p1}, Lio/flutter/embedding/engine/b/a;->b(Landroid/content/Context;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .local v0, "$r2":Landroid/content/pm/ApplicationInfo;, ""
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .local v1, "$r3":Landroid/os/Bundle;, ""
    if-nez v1, :cond_0

    return-void

    :cond_0
    sget-object v2, Lio/flutter/embedding/engine/b/a;->a:Ljava/lang/String;

    .local v2, "$r4":Ljava/lang/String;, ""
    const-string v3, "libapp.so"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lio/flutter/embedding/engine/b/a;->f:Ljava/lang/String;

    sget-object v2, Lio/flutter/embedding/engine/b/a;->d:Ljava/lang/String;

    const-string v3, "flutter_assets"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lio/flutter/embedding/engine/b/a;->i:Ljava/lang/String;

    sget-object v2, Lio/flutter/embedding/engine/b/a;->b:Ljava/lang/String;

    const-string v3, "vm_snapshot_data"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lio/flutter/embedding/engine/b/a;->g:Ljava/lang/String;

    sget-object v2, Lio/flutter/embedding/engine/b/a;->c:Ljava/lang/String;

    const-string v3, "isolate_snapshot_data"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lio/flutter/embedding/engine/b/a;->h:Ljava/lang/String;

    return-void
    .end local v0    # "$r2":Landroid/content/pm/ApplicationInfo;, ""
    .end local v2    # "$r4":Ljava/lang/String;, ""
    .end local v1    # "$r3":Landroid/os/Bundle;, ""
.end method

.method private d(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lio/flutter/embedding/engine/b/d;

    .local v0, "$r2":Lio/flutter/embedding/engine/b/d;, ""
    invoke-direct {v0, p1}, Lio/flutter/embedding/engine/b/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lio/flutter/embedding/engine/b/d;->a()V

    return-void
    .end local v0    # "$r2":Lio/flutter/embedding/engine/b/d;, ""
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lio/flutter/embedding/engine/b/a$a;

    .local v0, "$r2":Lio/flutter/embedding/engine/b/a$a;, ""
    invoke-direct {v0}, Lio/flutter/embedding/engine/b/a$a;-><init>()V

    invoke-virtual {p0, p1, v0}, Lio/flutter/embedding/engine/b/a;->a(Landroid/content/Context;Lio/flutter/embedding/engine/b/a$a;)V

    return-void
    .end local v0    # "$r2":Lio/flutter/embedding/engine/b/a$a;, ""
.end method

.method public a(Landroid/content/Context;Lio/flutter/embedding/engine/b/a$a;)V
    .locals 13

    iget-object v0, p0, Lio/flutter/embedding/engine/b/a;->l:Lio/flutter/embedding/engine/b/a$a;

    .local v0, "$r3":Lio/flutter/embedding/engine/b/a$a;, ""
    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    .local v1, "$r4":Landroid/os/Looper;, ""
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    .local v2, "$r5":Landroid/os/Looper;, ""
    if-ne v1, v2, :cond_1

    iput-object p2, p0, Lio/flutter/embedding/engine/b/a;->l:Lio/flutter/embedding/engine/b/a$a;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .local v3, "$l0":J, ""
    invoke-direct {p0, p1}, Lio/flutter/embedding/engine/b/a;->c(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lio/flutter/embedding/engine/b/a;->d(Landroid/content/Context;)V

    const-string v5, "flutter"

    invoke-static {v5}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v5, "window"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .local v6, "$r6":Ljava/lang/Object;, ""
    move-object v8, v6

    check-cast v8, Landroid/view/WindowManager;

    move-object v7, v8

    .local v7, "$r7":Landroid/view/WindowManager;, ""
    invoke-static {v7}, Lio/flutter/view/u;->a(Landroid/view/WindowManager;)Lio/flutter/view/u;

    move-result-object v9

    .local v9, "$r8":Lio/flutter/view/u;, ""
    invoke-virtual {v9}, Lio/flutter/view/u;->a()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .local v10, "$l1":J, ""
    sub-long v3, v10, v3

    invoke-static {v3, v4}, Lio/flutter/embedding/engine/FlutterJNI;->nativeRecordStartTimestamp(J)V

    return-void

    :cond_1
    new-instance v12, Ljava/lang/IllegalStateException;

    .local v12, "$r9":Ljava/lang/IllegalStateException;, ""
    const-string v5, "startInitialization must be called on the main thread"

    invoke-direct {v12, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v12
    .end local v7    # "$r7":Landroid/view/WindowManager;, ""
    .end local v9    # "$r8":Lio/flutter/view/u;, ""
    .end local v6    # "$r6":Ljava/lang/Object;, ""
    .end local v1    # "$r4":Landroid/os/Looper;, ""
    .end local v2    # "$r5":Landroid/os/Looper;, ""
    .end local v0    # "$r3":Lio/flutter/embedding/engine/b/a$a;, ""
    .end local v3    # "$l0":J, ""
    .end local v10    # "$l1":J, ""
    .end local v12    # "$r9":Ljava/lang/IllegalStateException;, ""
.end method

.method public a(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 22

    move-object/from16 v0, p0

    .local v3, "$z0":Z, ""
    iget-boolean v3, v0, Lio/flutter/embedding/engine/b/a;->j:Z

    if-eqz v3, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    .local v4, "$r3":Landroid/os/Looper;, ""
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    .local v5, "$r4":Landroid/os/Looper;, ""
    if-ne v4, v5, :cond_5

    move-object/from16 v0, p0

    .local v6, "$r5":Lio/flutter/embedding/engine/b/a$a;, ""
    iget-object v6, v0, Lio/flutter/embedding/engine/b/a;->l:Lio/flutter/embedding/engine/b/a$a;

    if-eqz v6, :cond_4

    :try_start_0
    move-object/from16 v0, p0

    .local v7, "$r6":Lio/flutter/embedding/engine/b/e;, ""
    iget-object v7, v0, Lio/flutter/embedding/engine/b/a;->k:Lio/flutter/embedding/engine/b/e;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v7, :cond_1

    :try_start_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lio/flutter/embedding/engine/b/a;->k:Lio/flutter/embedding/engine/b/e;

    invoke-virtual {v7}, Lio/flutter/embedding/engine/b/e;->a()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    new-instance v8, Ljava/util/ArrayList;

    .local v8, "$r7":Ljava/util/ArrayList;, ""
    :try_start_2
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const-string v9, "--icu-symbol-prefix=_binary_icudtl_dat"

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lio/flutter/embedding/engine/b/a;->b(Landroid/content/Context;)Landroid/content/pm/ApplicationInfo;

    move-result-object v10
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .local v10, "$r8":Landroid/content/pm/ApplicationInfo;, ""
    new-instance v11, Ljava/lang/StringBuilder;

    .local v11, "$r9":Ljava/lang/StringBuilder;, ""
    :try_start_3
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "--icu-native-lib-path="

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v10, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .local v12, "$r10":Ljava/lang/String;, ""
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    :try_start_4
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "libflutter.so"

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    if-eqz p2, :cond_2

    :try_start_5
    move-object/from16 v0, p2

    invoke-static {v8, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :cond_2
    new-instance v11, Ljava/lang/StringBuilder;

    :try_start_6
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "--aot-shared-library-name="

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v12, v0, Lio/flutter/embedding/engine/b/a;->f:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    new-instance v11, Ljava/lang/StringBuilder;

    :try_start_7
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "--aot-shared-library-name="

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v10, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    :try_start_8
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v12, v0, Lio/flutter/embedding/engine/b/a;->f:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    new-instance v11, Ljava/lang/StringBuilder;

    :try_start_9
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "--cache-dir-path="

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    invoke-static {v0}, Lb/a/d/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v6, v0, Lio/flutter/embedding/engine/b/a;->l:Lio/flutter/embedding/engine/b/a$a;

    invoke-virtual {v6}, Lio/flutter/embedding/engine/b/a$a;->a()Ljava/lang/String;

    move-result-object v12
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    if-eqz v12, :cond_3

    new-instance v11, Ljava/lang/StringBuilder;

    :try_start_a
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "--log-tag="

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v6, v0, Lio/flutter/embedding/engine/b/a;->l:Lio/flutter/embedding/engine/b/a$a;

    invoke-virtual {v6}, Lio/flutter/embedding/engine/b/a$a;->a()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    move-object/from16 v0, p1

    invoke-static {v0}, Lb/a/d/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-static {v0}, Lb/a/d/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    .local v13, "$r11":Ljava/lang/String;, ""
    const/4 v14, 0x0

    new-array v0, v14, [Ljava/lang/String;

    .local v0, "$r2":[Ljava/lang/String;, ""
    move-object/from16 p2, v0

    .end local v0    # "$r2":[Ljava/lang/String;, ""
    .local p2, "$r2":[Ljava/lang/String;, ""
    invoke-interface {v8, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v15

    .local v15, "$r12":[Ljava/lang/Object;, ""
    move-object/from16 v16, v15

    check-cast v16, [Ljava/lang/String;

    move-object/from16 p2, v16

    const/16 v17, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2, v12, v13}, Lio/flutter/embedding/engine/FlutterJNI;->nativeInit(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lio/flutter/embedding/engine/b/a;->j:Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    return-void

    :catch_0
    move-exception v18

    .local v18, "$r13":Ljava/lang/Exception;, ""
    const-string v9, "FlutterLoader"

    const-string v19, "Flutter initialization failed."

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v9, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v20, Ljava/lang/RuntimeException;

    .local v20, "$r14":Ljava/lang/RuntimeException;, ""
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v20

    :cond_4
    new-instance v21, Ljava/lang/IllegalStateException;

    .local v21, "$r15":Ljava/lang/IllegalStateException;, ""
    const-string v9, "ensureInitializationComplete must be called after startInitialization"

    move-object/from16 v0, v21

    invoke-direct {v0, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v21

    :cond_5
    new-instance v21, Ljava/lang/IllegalStateException;

    const-string v9, "ensureInitializationComplete must be called on the main thread"

    move-object/from16 v0, v21

    invoke-direct {v0, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v21
    .end local v5    # "$r4":Landroid/os/Looper;, ""
    .end local v21    # "$r15":Ljava/lang/IllegalStateException;, ""
    .end local v18    # "$r13":Ljava/lang/Exception;, ""
    .end local v12    # "$r10":Ljava/lang/String;, ""
    .end local v20    # "$r14":Ljava/lang/RuntimeException;, ""
    .end local v10    # "$r8":Landroid/content/pm/ApplicationInfo;, ""
    .end local v4    # "$r3":Landroid/os/Looper;, ""
    .end local v6    # "$r5":Lio/flutter/embedding/engine/b/a$a;, ""
    .end local p2    # "$r2":[Ljava/lang/String;, ""
    .end local v7    # "$r6":Lio/flutter/embedding/engine/b/e;, ""
    .end local v3    # "$z0":Z, ""
    .end local v8    # "$r7":Ljava/util/ArrayList;, ""
    .end local v13    # "$r11":Ljava/lang/String;, ""
    .end local v11    # "$r9":Ljava/lang/StringBuilder;, ""
    .end local v15    # "$r12":[Ljava/lang/Object;, ""
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/flutter/embedding/engine/b/a;->i:Ljava/lang/String;

    .local v0, "r1":Ljava/lang/String;, ""
    return-object v0
    .end local v0    # "r1":Ljava/lang/String;, ""
.end method
