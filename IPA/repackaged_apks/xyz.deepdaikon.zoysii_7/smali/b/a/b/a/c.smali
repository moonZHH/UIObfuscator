.class Lb/a/b/a/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/a/b/a/d$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/a/b/a/d$a;->a(Ljava/nio/ByteBuffer;Lb/a/b/a/e$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lb/a/b/a/d$d",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lb/a/b/a/e$b;

.field final synthetic b:Lb/a/b/a/d$a;


# direct methods
.method constructor <init>(Lb/a/b/a/d$a;Lb/a/b/a/e$b;)V
    .locals 0

    iput-object p1, p0, Lb/a/b/a/c;->b:Lb/a/b/a/d$a;

    iput-object p2, p0, Lb/a/b/a/c;->a:Lb/a/b/a/e$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lb/a/b/a/c;->a:Lb/a/b/a/e$b;

    .local v0, "$r1":Lb/a/b/a/e$b;, ""
    iget-object v1, p0, Lb/a/b/a/c;->b:Lb/a/b/a/d$a;

    .local v1, "$r3":Lb/a/b/a/d$a;, ""
    iget-object v2, v1, Lb/a/b/a/d$a;->b:Lb/a/b/a/d;

    .local v2, "$r4":Lb/a/b/a/d;, ""
    invoke-static {v2}, Lb/a/b/a/d;->a(Lb/a/b/a/d;)Lb/a/b/a/j;

    move-result-object v3

    .local v3, "$r5":Lb/a/b/a/j;, ""
    invoke-interface {v3, p1}, Lb/a/b/a/j;->a(Ljava/lang/Object;)Ljava/nio/ByteBuffer;

    move-result-object v4

    .local v4, "$r6":Ljava/nio/ByteBuffer;, ""
    invoke-interface {v0, v4}, Lb/a/b/a/e$b;->a(Ljava/nio/ByteBuffer;)V

    return-void
    .end local v3    # "$r5":Lb/a/b/a/j;, ""
    .end local v2    # "$r4":Lb/a/b/a/d;, ""
    .end local v0    # "$r1":Lb/a/b/a/e$b;, ""
    .end local v1    # "$r3":Lb/a/b/a/d$a;, ""
    .end local v4    # "$r6":Ljava/nio/ByteBuffer;, ""
.end method
