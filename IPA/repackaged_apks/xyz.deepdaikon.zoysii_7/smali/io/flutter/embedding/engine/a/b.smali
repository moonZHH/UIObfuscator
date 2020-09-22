.class public Lio/flutter/embedding/engine/a/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/a/b/a/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/embedding/engine/a/a;,
        Lio/flutter/embedding/engine/a/b$b;,
        Lio/flutter/embedding/engine/a/b$a;
    }
.end annotation


# instance fields
.field private final a:Lio/flutter/embedding/engine/FlutterJNI;

.field private final b:Landroid/content/res/AssetManager;

.field private final c:Lio/flutter/embedding/engine/a/c;

.field private final d:Lb/a/b/a/e;

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Lio/flutter/embedding/engine/a/b$b;

.field private final h:Lb/a/b/a/e$a;


# direct methods
.method public constructor <init>(Lio/flutter/embedding/engine/FlutterJNI;Landroid/content/res/AssetManager;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/flutter/embedding/engine/a/b;->e:Z

    new-instance v1, Lio/flutter/embedding/engine/a/a;

    .local v1, "$r3":Lio/flutter/embedding/engine/a/a;, ""
    invoke-direct {v1, p0}, Lio/flutter/embedding/engine/a/a;-><init>(Lio/flutter/embedding/engine/a/b;)V

    iput-object v1, p0, Lio/flutter/embedding/engine/a/b;->h:Lb/a/b/a/e$a;

    iput-object p1, p0, Lio/flutter/embedding/engine/a/b;->a:Lio/flutter/embedding/engine/FlutterJNI;

    iput-object p2, p0, Lio/flutter/embedding/engine/a/b;->b:Landroid/content/res/AssetManager;

    new-instance v2, Lio/flutter/embedding/engine/a/c;

    .local v2, "$r4":Lio/flutter/embedding/engine/a/c;, ""
    invoke-direct {v2, p1}, Lio/flutter/embedding/engine/a/c;-><init>(Lio/flutter/embedding/engine/FlutterJNI;)V

    iput-object v2, p0, Lio/flutter/embedding/engine/a/b;->c:Lio/flutter/embedding/engine/a/c;

    iget-object v2, p0, Lio/flutter/embedding/engine/a/b;->c:Lio/flutter/embedding/engine/a/c;

    iget-object v3, p0, Lio/flutter/embedding/engine/a/b;->h:Lb/a/b/a/e$a;

    .local v3, "$r5":Lb/a/b/a/e$a;, ""
    const-string v4, "flutter/isolate"

    invoke-virtual {v2, v4, v3}, Lio/flutter/embedding/engine/a/c;->a(Ljava/lang/String;Lb/a/b/a/e$a;)V

    new-instance v5, Lio/flutter/embedding/engine/a/b$a;

    .local v5, "$r6":Lio/flutter/embedding/engine/a/b$a;, ""
    iget-object v2, p0, Lio/flutter/embedding/engine/a/b;->c:Lio/flutter/embedding/engine/a/c;

    const/4 v6, 0x0

    invoke-direct {v5, v2, v6}, Lio/flutter/embedding/engine/a/b$a;-><init>(Lio/flutter/embedding/engine/a/c;Lio/flutter/embedding/engine/a/a;)V

    iput-object v5, p0, Lio/flutter/embedding/engine/a/b;->d:Lb/a/b/a/e;

    return-void
    .end local v2    # "$r4":Lio/flutter/embedding/engine/a/c;, ""
    .end local v5    # "$r6":Lio/flutter/embedding/engine/a/b$a;, ""
    .end local v3    # "$r5":Lb/a/b/a/e$a;, ""
    .end local v1    # "$r3":Lio/flutter/embedding/engine/a/a;, ""
.end method

.method static synthetic a(Lio/flutter/embedding/engine/a/b;)Lio/flutter/embedding/engine/a/b$b;
    .locals 1

    iget-object v0, p0, Lio/flutter/embedding/engine/a/b;->g:Lio/flutter/embedding/engine/a/b$b;

    .local v0, "r1":Lio/flutter/embedding/engine/a/b$b;, ""
    return-object v0
    .end local v0    # "r1":Lio/flutter/embedding/engine/a/b$b;, ""
.end method

.method static synthetic a(Lio/flutter/embedding/engine/a/b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lio/flutter/embedding/engine/a/b;->f:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lio/flutter/embedding/engine/a/b;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/flutter/embedding/engine/a/b;->f:Ljava/lang/String;

    .local v0, "r1":Ljava/lang/String;, ""
    return-object v0
    .end local v0    # "r1":Ljava/lang/String;, ""
.end method


# virtual methods
.method public a()V
    .locals 4

    const-string v0, "DartExecutor"

    const-string v1, "Attached to JNI. Registering the platform message handler for this Dart execution context."

    invoke-static {v0, v1}, Lb/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lio/flutter/embedding/engine/a/b;->a:Lio/flutter/embedding/engine/FlutterJNI;

    .local v2, "$r1":Lio/flutter/embedding/engine/FlutterJNI;, ""
    iget-object v3, p0, Lio/flutter/embedding/engine/a/b;->c:Lio/flutter/embedding/engine/a/c;

    .local v3, "$r2":Lio/flutter/embedding/engine/a/c;, ""
    invoke-virtual {v2, v3}, Lio/flutter/embedding/engine/FlutterJNI;->setPlatformMessageHandler(Lio/flutter/embedding/engine/a/d;)V

    return-void
    .end local v3    # "$r2":Lio/flutter/embedding/engine/a/c;, ""
    .end local v2    # "$r1":Lio/flutter/embedding/engine/FlutterJNI;, ""
.end method

.method public a(Ljava/lang/String;Lb/a/b/a/e$a;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lio/flutter/embedding/engine/a/b;->d:Lb/a/b/a/e;

    .local v0, "$r3":Lb/a/b/a/e;, ""
    invoke-interface {v0, p1, p2}, Lb/a/b/a/e;->a(Ljava/lang/String;Lb/a/b/a/e$a;)V

    return-void
    .end local v0    # "$r3":Lb/a/b/a/e;, ""
.end method

.method public a(Ljava/lang/String;Ljava/nio/ByteBuffer;Lb/a/b/a/e$b;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lio/flutter/embedding/engine/a/b;->d:Lb/a/b/a/e;

    .local v0, "$r4":Lb/a/b/a/e;, ""
    invoke-interface {v0, p1, p2, p3}, Lb/a/b/a/e;->a(Ljava/lang/String;Ljava/nio/ByteBuffer;Lb/a/b/a/e$b;)V

    return-void
    .end local v0    # "$r4":Lb/a/b/a/e;, ""
.end method

.method public b()V
    .locals 4

    const-string v0, "DartExecutor"

    const-string v1, "Detached from JNI. De-registering the platform message handler for this Dart execution context."

    invoke-static {v0, v1}, Lb/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lio/flutter/embedding/engine/a/b;->a:Lio/flutter/embedding/engine/FlutterJNI;

    .local v2, "$r1":Lio/flutter/embedding/engine/FlutterJNI;, ""
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lio/flutter/embedding/engine/FlutterJNI;->setPlatformMessageHandler(Lio/flutter/embedding/engine/a/d;)V

    return-void
    .end local v2    # "$r1":Lio/flutter/embedding/engine/FlutterJNI;, ""
.end method

.method public c()Lb/a/b/a/e;
    .locals 1

    iget-object v0, p0, Lio/flutter/embedding/engine/a/b;->d:Lb/a/b/a/e;

    .local v0, "r1":Lb/a/b/a/e;, ""
    return-object v0
    .end local v0    # "r1":Lb/a/b/a/e;, ""
.end method
