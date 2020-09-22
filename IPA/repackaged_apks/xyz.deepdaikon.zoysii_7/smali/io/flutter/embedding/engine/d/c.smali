.class public Lio/flutter/embedding/engine/d/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/flutter/view/r;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/embedding/engine/d/a;,
        Lio/flutter/embedding/engine/d/c$a;
    }
.end annotation


# instance fields
.field private final a:Lio/flutter/embedding/engine/FlutterJNI;

.field private final b:Ljava/util/concurrent/atomic/AtomicLong;

.field private c:Z

.field private final d:Lio/flutter/embedding/engine/d/d;


# direct methods
.method public constructor <init>(Lio/flutter/embedding/engine/FlutterJNI;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    .local v0, "$r2":Ljava/util/concurrent/atomic/AtomicLong;, ""
    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lio/flutter/embedding/engine/d/c;->b:Ljava/util/concurrent/atomic/AtomicLong;

    const/4 v3, 0x0

    iput-boolean v3, p0, Lio/flutter/embedding/engine/d/c;->c:Z

    new-instance v4, Lio/flutter/embedding/engine/d/a;

    .local v4, "$r3":Lio/flutter/embedding/engine/d/a;, ""
    invoke-direct {v4, p0}, Lio/flutter/embedding/engine/d/a;-><init>(Lio/flutter/embedding/engine/d/c;)V

    iput-object v4, p0, Lio/flutter/embedding/engine/d/c;->d:Lio/flutter/embedding/engine/d/d;

    iput-object p1, p0, Lio/flutter/embedding/engine/d/c;->a:Lio/flutter/embedding/engine/FlutterJNI;

    iget-object p1, p0, Lio/flutter/embedding/engine/d/c;->a:Lio/flutter/embedding/engine/FlutterJNI;

    .local p1, "$r1":Lio/flutter/embedding/engine/FlutterJNI;, ""
    iget-object v5, p0, Lio/flutter/embedding/engine/d/c;->d:Lio/flutter/embedding/engine/d/d;

    .local v5, "$r4":Lio/flutter/embedding/engine/d/d;, ""
    invoke-virtual {p1, v5}, Lio/flutter/embedding/engine/FlutterJNI;->addIsDisplayingFlutterUiListener(Lio/flutter/embedding/engine/d/d;)V

    return-void
    .end local v5    # "$r4":Lio/flutter/embedding/engine/d/d;, ""
    .end local p1    # "$r1":Lio/flutter/embedding/engine/FlutterJNI;, ""
    .end local v4    # "$r3":Lio/flutter/embedding/engine/d/a;, ""
    .end local v0    # "$r2":Ljava/util/concurrent/atomic/AtomicLong;, ""
.end method

.method private a(J)V
    .locals 1

    iget-object v0, p0, Lio/flutter/embedding/engine/d/c;->a:Lio/flutter/embedding/engine/FlutterJNI;

    .local v0, "$r1":Lio/flutter/embedding/engine/FlutterJNI;, ""
    invoke-virtual {v0, p1, p2}, Lio/flutter/embedding/engine/FlutterJNI;->markTextureFrameAvailable(J)V

    return-void
    .end local v0    # "$r1":Lio/flutter/embedding/engine/FlutterJNI;, ""
.end method

.method private a(JLandroid/graphics/SurfaceTexture;)V
    .locals 1

    iget-object v0, p0, Lio/flutter/embedding/engine/d/c;->a:Lio/flutter/embedding/engine/FlutterJNI;

    .local v0, "$r2":Lio/flutter/embedding/engine/FlutterJNI;, ""
    invoke-virtual {v0, p1, p2, p3}, Lio/flutter/embedding/engine/FlutterJNI;->registerTexture(JLandroid/graphics/SurfaceTexture;)V

    return-void
    .end local v0    # "$r2":Lio/flutter/embedding/engine/FlutterJNI;, ""
.end method

.method static synthetic a(Lio/flutter/embedding/engine/d/c;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/flutter/embedding/engine/d/c;->a(J)V

    return-void
.end method

.method static synthetic a(Lio/flutter/embedding/engine/d/c;Z)Z
    .locals 0

    iput-boolean p1, p0, Lio/flutter/embedding/engine/d/c;->c:Z

    return p1
.end method

.method private b(J)V
    .locals 1

    iget-object v0, p0, Lio/flutter/embedding/engine/d/c;->a:Lio/flutter/embedding/engine/FlutterJNI;

    .local v0, "$r1":Lio/flutter/embedding/engine/FlutterJNI;, ""
    invoke-virtual {v0, p1, p2}, Lio/flutter/embedding/engine/FlutterJNI;->unregisterTexture(J)V

    return-void
    .end local v0    # "$r1":Lio/flutter/embedding/engine/FlutterJNI;, ""
.end method

.method static synthetic b(Lio/flutter/embedding/engine/d/c;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/flutter/embedding/engine/d/c;->b(J)V

    return-void
.end method


# virtual methods
.method public a()Lio/flutter/view/r$a;
    .locals 10

    const-string v0, "FlutterRenderer"

    const-string v1, "Creating a SurfaceTexture."

    invoke-static {v0, v1}, Lb/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/graphics/SurfaceTexture;

    .local v2, "$r1":Landroid/graphics/SurfaceTexture;, ""
    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    invoke-virtual {v2}, Landroid/graphics/SurfaceTexture;->detachFromGLContext()V

    new-instance v4, Lio/flutter/embedding/engine/d/c$a;

    .local v4, "$r2":Lio/flutter/embedding/engine/d/c$a;, ""
    iget-object v5, p0, Lio/flutter/embedding/engine/d/c;->b:Ljava/util/concurrent/atomic/AtomicLong;

    .local v5, "$r3":Ljava/util/concurrent/atomic/AtomicLong;, ""
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v6

    .local v6, "$l0":J, ""
    invoke-direct {v4, p0, v6, v7, v2}, Lio/flutter/embedding/engine/d/c$a;-><init>(Lio/flutter/embedding/engine/d/c;JLandroid/graphics/SurfaceTexture;)V

    new-instance v8, Ljava/lang/StringBuilder;

    .local v8, "$r4":Ljava/lang/StringBuilder;, ""
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "New SurfaceTexture ID: "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lio/flutter/embedding/engine/d/c$a;->c()J

    move-result-wide v6

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .local v9, "$r5":Ljava/lang/String;, ""
    const-string v0, "FlutterRenderer"

    invoke-static {v0, v9}, Lb/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lio/flutter/embedding/engine/d/c$a;->c()J

    move-result-wide v6

    invoke-direct {p0, v6, v7, v2}, Lio/flutter/embedding/engine/d/c;->a(JLandroid/graphics/SurfaceTexture;)V

    return-object v4
    .end local v2    # "$r1":Landroid/graphics/SurfaceTexture;, ""
    .end local v4    # "$r2":Lio/flutter/embedding/engine/d/c$a;, ""
    .end local v8    # "$r4":Ljava/lang/StringBuilder;, ""
    .end local v5    # "$r3":Ljava/util/concurrent/atomic/AtomicLong;, ""
    .end local v9    # "$r5":Ljava/lang/String;, ""
    .end local v6    # "$l0":J, ""
.end method

.method public a(Ljava/nio/ByteBuffer;I)V
    .locals 1

    iget-object v0, p0, Lio/flutter/embedding/engine/d/c;->a:Lio/flutter/embedding/engine/FlutterJNI;

    .local v0, "$r2":Lio/flutter/embedding/engine/FlutterJNI;, ""
    invoke-virtual {v0, p1, p2}, Lio/flutter/embedding/engine/FlutterJNI;->dispatchPointerDataPacket(Ljava/nio/ByteBuffer;I)V

    return-void
    .end local v0    # "$r2":Lio/flutter/embedding/engine/FlutterJNI;, ""
.end method
