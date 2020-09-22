.class final Lb/a/b/a/m$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/a/b/a/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/b/a/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "IncomingMethodCallHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/b/a/l;
    }
.end annotation


# instance fields
.field private final a:Lb/a/b/a/m$c;

.field final synthetic b:Lb/a/b/a/m;


# direct methods
.method constructor <init>(Lb/a/b/a/m;Lb/a/b/a/m$c;)V
    .locals 0

    iput-object p1, p0, Lb/a/b/a/m$a;->b:Lb/a/b/a/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lb/a/b/a/m$a;->a:Lb/a/b/a/m$c;

    return-void
.end method


# virtual methods
.method public a(Ljava/nio/ByteBuffer;Lb/a/b/a/e$b;)V
    .locals 10

    iget-object v0, p0, Lb/a/b/a/m$a;->b:Lb/a/b/a/m;

    .local v0, "$r3":Lb/a/b/a/m;, ""
    invoke-static {v0}, Lb/a/b/a/m;->a(Lb/a/b/a/m;)Lb/a/b/a/n;

    move-result-object v1

    .local v1, "$r4":Lb/a/b/a/n;, ""
    invoke-interface {v1, p1}, Lb/a/b/a/n;->a(Ljava/nio/ByteBuffer;)Lb/a/b/a/k;

    move-result-object v2

    .local v2, "$r5":Lb/a/b/a/k;, ""
    :try_start_0
    iget-object v3, p0, Lb/a/b/a/m$a;->a:Lb/a/b/a/m$c;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .local v3, "$r6":Lb/a/b/a/m$c;, ""
    new-instance v4, Lb/a/b/a/l;

    .local v4, "$r7":Lb/a/b/a/l;, ""
    :try_start_1
    invoke-direct {v4, p0, p2}, Lb/a/b/a/l;-><init>(Lb/a/b/a/m$a;Lb/a/b/a/e$b;)V

    invoke-interface {v3, v2, v4}, Lb/a/b/a/m$c;->a(Lb/a/b/a/k;Lb/a/b/a/m$d;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v5

    .local v5, "$r8":Ljava/lang/RuntimeException;, ""
    new-instance v6, Ljava/lang/StringBuilder;

    .local v6, "$r9":Ljava/lang/StringBuilder;, ""
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MethodChannel#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lb/a/b/a/m$a;->b:Lb/a/b/a/m;

    invoke-static {v0}, Lb/a/b/a/m;->b(Lb/a/b/a/m;)Ljava/lang/String;

    move-result-object v8

    .local v8, "$r10":Ljava/lang/String;, ""
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v7, "Failed to handle method call"

    invoke-static {v8, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lb/a/b/a/m$a;->b:Lb/a/b/a/m;

    invoke-static {v0}, Lb/a/b/a/m;->a(Lb/a/b/a/m;)Lb/a/b/a/n;

    move-result-object v1

    invoke-virtual {v5}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v8

    const-string v7, "error"

    const/4 v9, 0x0

    invoke-interface {v1, v7, v8, v9}, Lb/a/b/a/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/nio/ByteBuffer;

    move-result-object p1

    .local p1, "$r2":Ljava/nio/ByteBuffer;, ""
    invoke-interface {p2, p1}, Lb/a/b/a/e$b;->a(Ljava/nio/ByteBuffer;)V

    return-void
    .end local v1    # "$r4":Lb/a/b/a/n;, ""
    .end local v6    # "$r9":Ljava/lang/StringBuilder;, ""
    .end local v8    # "$r10":Ljava/lang/String;, ""
    .end local v3    # "$r6":Lb/a/b/a/m$c;, ""
    .end local v5    # "$r8":Ljava/lang/RuntimeException;, ""
    .end local v4    # "$r7":Lb/a/b/a/l;, ""
    .end local p1    # "$r2":Ljava/nio/ByteBuffer;, ""
    .end local v0    # "$r3":Lb/a/b/a/m;, ""
    .end local v2    # "$r5":Lb/a/b/a/k;, ""
.end method
