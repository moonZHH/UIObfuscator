.class final Lb/a/b/a/d$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/a/b/a/e$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/b/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "IncomingReplyHandler"
.end annotation


# instance fields
.field private final a:Lb/a/b/a/d$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/a/b/a/d$d",
            "<TT;>;"
        }
    .end annotation
.end field

.field final synthetic b:Lb/a/b/a/d;


# direct methods
.method private constructor <init>(Lb/a/b/a/d;Lb/a/b/a/d$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/a/b/a/d$d",
            "<TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lb/a/b/a/d$b;->b:Lb/a/b/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lb/a/b/a/d$b;->a:Lb/a/b/a/d$d;

    return-void
.end method

.method synthetic constructor <init>(Lb/a/b/a/d;Lb/a/b/a/d$d;Lb/a/b/a/b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lb/a/b/a/d$b;-><init>(Lb/a/b/a/d;Lb/a/b/a/d$d;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/nio/ByteBuffer;)V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lb/a/b/a/d$b;->a:Lb/a/b/a/d$d;

    .local v0, "$r2":Lb/a/b/a/d$d;, ""
    iget-object v1, p0, Lb/a/b/a/d$b;->b:Lb/a/b/a/d;

    .local v1, "$r3":Lb/a/b/a/d;, ""
    invoke-static {v1}, Lb/a/b/a/d;->a(Lb/a/b/a/d;)Lb/a/b/a/j;

    move-result-object v2

    .local v2, "$r4":Lb/a/b/a/j;, ""
    invoke-interface {v2, p1}, Lb/a/b/a/j;->a(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object v3

    .local v3, "$r5":Ljava/lang/Object;, ""
    invoke-interface {v0, v3}, Lb/a/b/a/d$d;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v4

    .local v4, "$r6":Ljava/lang/RuntimeException;, ""
    new-instance v5, Ljava/lang/StringBuilder;

    .local v5, "$r7":Ljava/lang/StringBuilder;, ""
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BasicMessageChannel#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/a/b/a/d$b;->b:Lb/a/b/a/d;

    invoke-static {v1}, Lb/a/b/a/d;->b(Lb/a/b/a/d;)Ljava/lang/String;

    move-result-object v7

    .local v7, "$r8":Ljava/lang/String;, ""
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v6, "Failed to handle message reply"

    invoke-static {v7, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
    .end local v1    # "$r3":Lb/a/b/a/d;, ""
    .end local v3    # "$r5":Ljava/lang/Object;, ""
    .end local v4    # "$r6":Ljava/lang/RuntimeException;, ""
    .end local v2    # "$r4":Lb/a/b/a/j;, ""
    .end local v0    # "$r2":Lb/a/b/a/d$d;, ""
    .end local v5    # "$r7":Ljava/lang/StringBuilder;, ""
    .end local v7    # "$r8":Ljava/lang/String;, ""
.end method
