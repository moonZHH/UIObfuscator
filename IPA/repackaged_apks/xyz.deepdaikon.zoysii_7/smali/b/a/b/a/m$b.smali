.class final Lb/a/b/a/m$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/a/b/a/e$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/b/a/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "IncomingResultHandler"
.end annotation


# instance fields
.field private final a:Lb/a/b/a/m$d;

.field final synthetic b:Lb/a/b/a/m;


# direct methods
.method constructor <init>(Lb/a/b/a/m;Lb/a/b/a/m$d;)V
    .locals 0

    iput-object p1, p0, Lb/a/b/a/m$b;->b:Lb/a/b/a/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lb/a/b/a/m$b;->a:Lb/a/b/a/m$d;

    return-void
.end method


# virtual methods
.method public a(Ljava/nio/ByteBuffer;)V
    .locals 10

    if-nez p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lb/a/b/a/m$b;->a:Lb/a/b/a/m$d;

    .local v0, "$r2":Lb/a/b/a/m$d;, ""
    invoke-interface {v0}, Lb/a/b/a/m$d;->a()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .local v1, "$r3":Ljava/lang/RuntimeException;, ""
    goto :goto_0

    :cond_0
    iget-object v0, p0, Lb/a/b/a/m$b;->a:Lb/a/b/a/m$d;

    iget-object v2, p0, Lb/a/b/a/m$b;->b:Lb/a/b/a/m;

    .local v2, "$r4":Lb/a/b/a/m;, ""
    :try_start_1
    invoke-static {v2}, Lb/a/b/a/m;->a(Lb/a/b/a/m;)Lb/a/b/a/n;

    move-result-object v3

    .local v3, "$r5":Lb/a/b/a/n;, ""
    invoke-interface {v3, p1}, Lb/a/b/a/n;->b(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object v4

    .local v4, "$r6":Ljava/lang/Object;, ""
    invoke-interface {v0, v4}, Lb/a/b/a/m$d;->a(Ljava/lang/Object;)V
    :try_end_1
    .catch Lb/a/b/a/f; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_1
    move-exception v5

    .local v5, "$r7":Lb/a/b/a/f;, ""
    :try_start_2
    iget-object v0, p0, Lb/a/b/a/m$b;->a:Lb/a/b/a/m$d;

    iget-object v6, v5, Lb/a/b/a/f;->a:Ljava/lang/String;

    .local v6, "$r8":Ljava/lang/String;, ""
    invoke-virtual {v5}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v7

    .local v7, "$r9":Ljava/lang/String;, ""
    iget-object v4, v5, Lb/a/b/a/f;->b:Ljava/lang/Object;

    invoke-interface {v0, v6, v7, v4}, Lb/a/b/a/m$d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    .local v8, "$r10":Ljava/lang/StringBuilder;, ""
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MethodChannel#"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lb/a/b/a/m$b;->b:Lb/a/b/a/m;

    invoke-static {v2}, Lb/a/b/a/m;->b(Lb/a/b/a/m;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v9, "Failed to handle method call result"

    invoke-static {v6, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
    .end local v6    # "$r8":Ljava/lang/String;, ""
    .end local v7    # "$r9":Ljava/lang/String;, ""
    .end local v2    # "$r4":Lb/a/b/a/m;, ""
    .end local v8    # "$r10":Ljava/lang/StringBuilder;, ""
    .end local v5    # "$r7":Lb/a/b/a/f;, ""
    .end local v1    # "$r3":Ljava/lang/RuntimeException;, ""
    .end local v0    # "$r2":Lb/a/b/a/m$d;, ""
    .end local v3    # "$r5":Lb/a/b/a/n;, ""
    .end local v4    # "$r6":Ljava/lang/Object;, ""
.end method
