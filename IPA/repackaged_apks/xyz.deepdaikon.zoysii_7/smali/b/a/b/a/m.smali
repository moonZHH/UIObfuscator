.class public final Lb/a/b/a/m;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/b/a/m$b;,
        Lb/a/b/a/m$a;,
        Lb/a/b/a/m$d;,
        Lb/a/b/a/m$c;
    }
.end annotation


# instance fields
.field private final a:Lb/a/b/a/e;

.field private final b:Ljava/lang/String;

.field private final c:Lb/a/b/a/n;


# direct methods
.method public constructor <init>(Lb/a/b/a/e;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lb/a/b/a/q;->a:Lb/a/b/a/q;

    .local v0, "$r3":Lb/a/b/a/q;, ""
    invoke-direct {p0, p1, p2, v0}, Lb/a/b/a/m;-><init>(Lb/a/b/a/e;Ljava/lang/String;Lb/a/b/a/n;)V

    return-void
    .end local v0    # "$r3":Lb/a/b/a/q;, ""
.end method

.method public constructor <init>(Lb/a/b/a/e;Ljava/lang/String;Lb/a/b/a/n;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/a/b/a/m;->a:Lb/a/b/a/e;

    iput-object p2, p0, Lb/a/b/a/m;->b:Ljava/lang/String;

    iput-object p3, p0, Lb/a/b/a/m;->c:Lb/a/b/a/n;

    return-void
.end method

.method static synthetic a(Lb/a/b/a/m;)Lb/a/b/a/n;
    .locals 1

    iget-object v0, p0, Lb/a/b/a/m;->c:Lb/a/b/a/n;

    .local v0, "r1":Lb/a/b/a/n;, ""
    return-object v0
    .end local v0    # "r1":Lb/a/b/a/n;, ""
.end method

.method static synthetic b(Lb/a/b/a/m;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lb/a/b/a/m;->b:Ljava/lang/String;

    .local v0, "r1":Ljava/lang/String;, ""
    return-object v0
    .end local v0    # "r1":Ljava/lang/String;, ""
.end method


# virtual methods
.method public a(Lb/a/b/a/m$c;)V
    .locals 3

    iget-object v0, p0, Lb/a/b/a/m;->a:Lb/a/b/a/e;

    .local v0, "$r1":Lb/a/b/a/e;, ""
    iget-object v1, p0, Lb/a/b/a/m;->b:Ljava/lang/String;

    .local v1, "$r2":Ljava/lang/String;, ""
    if-nez p1, :cond_0

    const/4 v2, 0x0

    .local v2, "$r3":Lb/a/b/a/m$a;, ""
    goto :goto_0

    :cond_0
    new-instance v2, Lb/a/b/a/m$a;

    invoke-direct {v2, p0, p1}, Lb/a/b/a/m$a;-><init>(Lb/a/b/a/m;Lb/a/b/a/m$c;)V

    :goto_0
    invoke-interface {v0, v1, v2}, Lb/a/b/a/e;->a(Ljava/lang/String;Lb/a/b/a/e$a;)V

    return-void
    .end local v2    # "$r3":Lb/a/b/a/m$a;, ""
    .end local v0    # "$r1":Lb/a/b/a/e;, ""
    .end local v1    # "$r2":Ljava/lang/String;, ""
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lb/a/b/a/m;->a(Ljava/lang/String;Ljava/lang/Object;Lb/a/b/a/m$d;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;Lb/a/b/a/m$d;)V
    .locals 6

    iget-object v0, p0, Lb/a/b/a/m;->a:Lb/a/b/a/e;

    .local v0, "$r2":Lb/a/b/a/e;, ""
    iget-object v1, p0, Lb/a/b/a/m;->b:Ljava/lang/String;

    .local v1, "$r3":Ljava/lang/String;, ""
    iget-object v2, p0, Lb/a/b/a/m;->c:Lb/a/b/a/n;

    .local v2, "$r4":Lb/a/b/a/n;, ""
    new-instance v3, Lb/a/b/a/k;

    .local v3, "$r5":Lb/a/b/a/k;, ""
    invoke-direct {v3, p1, p2}, Lb/a/b/a/k;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Lb/a/b/a/n;->a(Lb/a/b/a/k;)Ljava/nio/ByteBuffer;

    move-result-object v4

    .local v4, "$r6":Ljava/nio/ByteBuffer;, ""
    if-nez p3, :cond_0

    const/4 v5, 0x0

    .local v5, "$r9":Lb/a/b/a/m$b;, ""
    goto :goto_0

    :cond_0
    new-instance v5, Lb/a/b/a/m$b;

    invoke-direct {v5, p0, p3}, Lb/a/b/a/m$b;-><init>(Lb/a/b/a/m;Lb/a/b/a/m$d;)V

    :goto_0
    invoke-interface {v0, v1, v4, v5}, Lb/a/b/a/e;->a(Ljava/lang/String;Ljava/nio/ByteBuffer;Lb/a/b/a/e$b;)V

    return-void
    .end local v4    # "$r6":Ljava/nio/ByteBuffer;, ""
    .end local v2    # "$r4":Lb/a/b/a/n;, ""
    .end local v3    # "$r5":Lb/a/b/a/k;, ""
    .end local v0    # "$r2":Lb/a/b/a/e;, ""
    .end local v1    # "$r3":Ljava/lang/String;, ""
    .end local v5    # "$r9":Lb/a/b/a/m$b;, ""
.end method
