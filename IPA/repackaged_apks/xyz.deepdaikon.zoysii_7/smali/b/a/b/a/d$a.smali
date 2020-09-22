.class final Lb/a/b/a/d$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/a/b/a/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/b/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "IncomingMessageHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/b/a/c;
    }
.end annotation


# instance fields
.field private final a:Lb/a/b/a/d$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/a/b/a/d$c",
            "<TT;>;"
        }
    .end annotation
.end field

.field final synthetic b:Lb/a/b/a/d;


# direct methods
.method private constructor <init>(Lb/a/b/a/d;Lb/a/b/a/d$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/a/b/a/d$c",
            "<TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lb/a/b/a/d$a;->b:Lb/a/b/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lb/a/b/a/d$a;->a:Lb/a/b/a/d$c;

    return-void
.end method

.method synthetic constructor <init>(Lb/a/b/a/d;Lb/a/b/a/d$c;Lb/a/b/a/b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lb/a/b/a/d$a;-><init>(Lb/a/b/a/d;Lb/a/b/a/d$c;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/nio/ByteBuffer;Lb/a/b/a/e$b;)V
    .locals 10

    :try_start_0
    iget-object v0, p0, Lb/a/b/a/d$a;->a:Lb/a/b/a/d$c;

    .local v0, "$r3":Lb/a/b/a/d$c;, ""
    iget-object v1, p0, Lb/a/b/a/d$a;->b:Lb/a/b/a/d;

    .local v1, "$r4":Lb/a/b/a/d;, ""
    invoke-static {v1}, Lb/a/b/a/d;->a(Lb/a/b/a/d;)Lb/a/b/a/j;

    move-result-object v2

    .local v2, "$r5":Lb/a/b/a/j;, ""
    invoke-interface {v2, p1}, Lb/a/b/a/j;->a(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .local v3, "$r6":Ljava/lang/Object;, ""
    new-instance v4, Lb/a/b/a/c;

    .local v4, "$r7":Lb/a/b/a/c;, ""
    :try_start_1
    invoke-direct {v4, p0, p2}, Lb/a/b/a/c;-><init>(Lb/a/b/a/d$a;Lb/a/b/a/e$b;)V

    invoke-interface {v0, v3, v4}, Lb/a/b/a/d$c;->a(Ljava/lang/Object;Lb/a/b/a/d$d;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v5

    .local v5, "$r8":Ljava/lang/RuntimeException;, ""
    new-instance v6, Ljava/lang/StringBuilder;

    .local v6, "$r9":Ljava/lang/StringBuilder;, ""
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BasicMessageChannel#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/a/b/a/d$a;->b:Lb/a/b/a/d;

    invoke-static {v1}, Lb/a/b/a/d;->b(Lb/a/b/a/d;)Ljava/lang/String;

    move-result-object v8

    .local v8, "$r10":Ljava/lang/String;, ""
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v7, "Failed to handle message"

    invoke-static {v8, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v9, 0x0

    invoke-interface {p2, v9}, Lb/a/b/a/e$b;->a(Ljava/nio/ByteBuffer;)V

    return-void
    .end local v2    # "$r5":Lb/a/b/a/j;, ""
    .end local v6    # "$r9":Ljava/lang/StringBuilder;, ""
    .end local v1    # "$r4":Lb/a/b/a/d;, ""
    .end local v5    # "$r8":Ljava/lang/RuntimeException;, ""
    .end local v3    # "$r6":Ljava/lang/Object;, ""
    .end local v0    # "$r3":Lb/a/b/a/d$c;, ""
    .end local v4    # "$r7":Lb/a/b/a/c;, ""
    .end local v8    # "$r10":Ljava/lang/String;, ""
.end method
