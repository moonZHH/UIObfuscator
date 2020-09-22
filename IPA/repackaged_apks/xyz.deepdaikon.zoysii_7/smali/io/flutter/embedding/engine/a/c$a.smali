.class Lio/flutter/embedding/engine/a/c$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/a/b/a/e$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/engine/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Reply"
.end annotation


# instance fields
.field private final a:Lio/flutter/embedding/engine/FlutterJNI;

.field private final b:I

.field private final c:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lio/flutter/embedding/engine/FlutterJNI;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .local v0, "$r2":Ljava/util/concurrent/atomic/AtomicBoolean;, ""
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lio/flutter/embedding/engine/a/c$a;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lio/flutter/embedding/engine/a/c$a;->a:Lio/flutter/embedding/engine/FlutterJNI;

    iput p2, p0, Lio/flutter/embedding/engine/a/c$a;->b:I

    return-void
    .end local v0    # "$r2":Ljava/util/concurrent/atomic/AtomicBoolean;, ""
.end method


# virtual methods
.method public a(Ljava/nio/ByteBuffer;)V
    .locals 8

    iget-object v0, p0, Lio/flutter/embedding/engine/a/c$a;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .local v0, "$r2":Ljava/util/concurrent/atomic/AtomicBoolean;, ""
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    .local v1, "$z0":Z, ""
    if-nez v1, :cond_1

    if-nez p1, :cond_0

    iget-object v3, p0, Lio/flutter/embedding/engine/a/c$a;->a:Lio/flutter/embedding/engine/FlutterJNI;

    .local v3, "$r3":Lio/flutter/embedding/engine/FlutterJNI;, ""
    iget v4, p0, Lio/flutter/embedding/engine/a/c$a;->b:I

    .local v4, "$i0":I, ""
    invoke-virtual {v3, v4}, Lio/flutter/embedding/engine/FlutterJNI;->invokePlatformMessageEmptyResponseCallback(I)V

    return-void

    :cond_0
    iget-object v3, p0, Lio/flutter/embedding/engine/a/c$a;->a:Lio/flutter/embedding/engine/FlutterJNI;

    iget v4, p0, Lio/flutter/embedding/engine/a/c$a;->b:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    .local v5, "$i1":I, ""
    invoke-virtual {v3, v4, p1, v5}, Lio/flutter/embedding/engine/FlutterJNI;->invokePlatformMessageResponseCallback(ILjava/nio/ByteBuffer;I)V

    return-void

    :cond_1
    new-instance v6, Ljava/lang/IllegalStateException;

    .local v6, "$r4":Ljava/lang/IllegalStateException;, ""
    const-string v7, "Reply already submitted"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
    .end local v6    # "$r4":Ljava/lang/IllegalStateException;, ""
    .end local v0    # "$r2":Ljava/util/concurrent/atomic/AtomicBoolean;, ""
    .end local v4    # "$i0":I, ""
    .end local v1    # "$z0":Z, ""
    .end local v5    # "$i1":I, ""
    .end local v3    # "$r3":Lio/flutter/embedding/engine/FlutterJNI;, ""
.end method
