.class public final Lb/a/b/a/d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/b/a/d$c;,
        Lb/a/b/a/d$b;,
        Lb/a/b/a/d$d;,
        Lb/a/b/a/d$a;,
        Lb/a/b/a/b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lb/a/b/a/e;

.field private final b:Ljava/lang/String;

.field private final c:Lb/a/b/a/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/a/b/a/j",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lb/a/b/a/e;Ljava/lang/String;Lb/a/b/a/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/a/b/a/e;",
            "Ljava/lang/String;",
            "Lb/a/b/a/j",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/a/b/a/d;->a:Lb/a/b/a/e;

    iput-object p2, p0, Lb/a/b/a/d;->b:Ljava/lang/String;

    iput-object p3, p0, Lb/a/b/a/d;->c:Lb/a/b/a/j;

    return-void
.end method

.method static synthetic a(Lb/a/b/a/d;)Lb/a/b/a/j;
    .locals 1

    iget-object v0, p0, Lb/a/b/a/d;->c:Lb/a/b/a/j;

    .local v0, "r1":Lb/a/b/a/j;, ""
    return-object v0
    .end local v0    # "r1":Lb/a/b/a/j;, ""
.end method

.method static synthetic b(Lb/a/b/a/d;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lb/a/b/a/d;->b:Ljava/lang/String;

    .local v0, "r1":Ljava/lang/String;, ""
    return-object v0
    .end local v0    # "r1":Ljava/lang/String;, ""
.end method


# virtual methods
.method public a(Lb/a/b/a/d$c;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/a/b/a/d$c",
            "<TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lb/a/b/a/d;->a:Lb/a/b/a/e;

    .local v0, "$r2":Lb/a/b/a/e;, ""
    iget-object v1, p0, Lb/a/b/a/d;->b:Ljava/lang/String;

    .local v1, "$r3":Ljava/lang/String;, ""
    const/4 v2, 0x0

    .local v2, "$r4":Lb/a/b/a/d$a;, ""
    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Lb/a/b/a/d$a;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3}, Lb/a/b/a/d$a;-><init>(Lb/a/b/a/d;Lb/a/b/a/d$c;Lb/a/b/a/b;)V

    :goto_0
    invoke-interface {v0, v1, v2}, Lb/a/b/a/e;->a(Ljava/lang/String;Lb/a/b/a/e$a;)V

    return-void
    .end local v2    # "$r4":Lb/a/b/a/d$a;, ""
    .end local v1    # "$r3":Ljava/lang/String;, ""
    .end local v0    # "$r2":Lb/a/b/a/e;, ""
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lb/a/b/a/d;->a(Ljava/lang/Object;Lb/a/b/a/d$d;)V

    return-void
.end method

.method public a(Ljava/lang/Object;Lb/a/b/a/d$d;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lb/a/b/a/d$d",
            "<TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lb/a/b/a/d;->a:Lb/a/b/a/e;

    .local v0, "$r2":Lb/a/b/a/e;, ""
    iget-object v1, p0, Lb/a/b/a/d;->b:Ljava/lang/String;

    .local v1, "$r3":Ljava/lang/String;, ""
    iget-object v2, p0, Lb/a/b/a/d;->c:Lb/a/b/a/j;

    .local v2, "$r7":Lb/a/b/a/j;, ""
    invoke-interface {v2, p1}, Lb/a/b/a/j;->a(Ljava/lang/Object;)Ljava/nio/ByteBuffer;

    move-result-object v3

    .local v3, "$r5":Ljava/nio/ByteBuffer;, ""
    const/4 v4, 0x0

    .local v4, "$r4":Lb/a/b/a/d$b;, ""
    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v4, Lb/a/b/a/d$b;

    const/4 v5, 0x0

    invoke-direct {v4, p0, p2, v5}, Lb/a/b/a/d$b;-><init>(Lb/a/b/a/d;Lb/a/b/a/d$d;Lb/a/b/a/b;)V

    :goto_0
    invoke-interface {v0, v1, v3, v4}, Lb/a/b/a/e;->a(Ljava/lang/String;Ljava/nio/ByteBuffer;Lb/a/b/a/e$b;)V

    return-void
    .end local v4    # "$r4":Lb/a/b/a/d$b;, ""
    .end local v2    # "$r7":Lb/a/b/a/j;, ""
    .end local v0    # "$r2":Lb/a/b/a/e;, ""
    .end local v3    # "$r5":Ljava/nio/ByteBuffer;, ""
    .end local v1    # "$r3":Ljava/lang/String;, ""
.end method
