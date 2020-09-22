.class public Lio/flutter/embedding/engine/e/l;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/embedding/engine/e/k;,
        Lio/flutter/embedding/engine/e/l$d;,
        Lio/flutter/embedding/engine/e/l$c;,
        Lio/flutter/embedding/engine/e/l$b;,
        Lio/flutter/embedding/engine/e/l$a;
    }
.end annotation


# instance fields
.field private final a:Lb/a/b/a/m;

.field private b:Lio/flutter/embedding/engine/e/l$d;

.field private final c:Lb/a/b/a/m$c;


# direct methods
.method public constructor <init>(Lio/flutter/embedding/engine/a/b;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/flutter/embedding/engine/e/k;

    .local v0, "$r3":Lio/flutter/embedding/engine/e/k;, ""
    invoke-direct {v0, p0}, Lio/flutter/embedding/engine/e/k;-><init>(Lio/flutter/embedding/engine/e/l;)V

    iput-object v0, p0, Lio/flutter/embedding/engine/e/l;->c:Lb/a/b/a/m$c;

    new-instance v1, Lb/a/b/a/m;

    .local v1, "$r4":Lb/a/b/a/m;, ""
    sget-object v2, Lb/a/b/a/q;->a:Lb/a/b/a/q;

    .local v2, "$r1":Lb/a/b/a/q;, ""
    const-string v3, "flutter/platform_views"

    invoke-direct {v1, p1, v3, v2}, Lb/a/b/a/m;-><init>(Lb/a/b/a/e;Ljava/lang/String;Lb/a/b/a/n;)V

    iput-object v1, p0, Lio/flutter/embedding/engine/e/l;->a:Lb/a/b/a/m;

    iget-object v1, p0, Lio/flutter/embedding/engine/e/l;->a:Lb/a/b/a/m;

    iget-object v4, p0, Lio/flutter/embedding/engine/e/l;->c:Lb/a/b/a/m$c;

    .local v4, "$r5":Lb/a/b/a/m$c;, ""
    invoke-virtual {v1, v4}, Lb/a/b/a/m;->a(Lb/a/b/a/m$c;)V

    return-void
    .end local v4    # "$r5":Lb/a/b/a/m$c;, ""
    .end local v0    # "$r3":Lio/flutter/embedding/engine/e/k;, ""
    .end local v2    # "$r1":Lb/a/b/a/q;, ""
    .end local v1    # "$r4":Lb/a/b/a/m;, ""
.end method

.method static synthetic a(Lio/flutter/embedding/engine/e/l;)Lio/flutter/embedding/engine/e/l$d;
    .locals 1

    iget-object v0, p0, Lio/flutter/embedding/engine/e/l;->b:Lio/flutter/embedding/engine/e/l$d;

    .local v0, "r1":Lio/flutter/embedding/engine/e/l$d;, ""
    return-object v0
    .end local v0    # "r1":Lio/flutter/embedding/engine/e/l$d;, ""
.end method

.method static synthetic a(Ljava/lang/Exception;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lio/flutter/embedding/engine/e/l;->b(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    .local v0, "$r0":Ljava/lang/String;, ""
    return-object v0
    .end local v0    # "$r0":Ljava/lang/String;, ""
.end method

.method private static b(Ljava/lang/Exception;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/io/StringWriter;

    .local v0, "$r0":Ljava/io/StringWriter;, ""
    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    .local v1, "$r1":Ljava/io/PrintWriter;, ""
    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, "$r2":Ljava/lang/String;, ""
    return-object v2
    .end local v2    # "$r2":Ljava/lang/String;, ""
    .end local v0    # "$r0":Ljava/io/StringWriter;, ""
    .end local v1    # "$r1":Ljava/io/PrintWriter;, ""
.end method


# virtual methods
.method public a(I)V
    .locals 3

    iget-object v0, p0, Lio/flutter/embedding/engine/e/l;->a:Lb/a/b/a/m;

    .local v0, "$r2":Lb/a/b/a/m;, ""
    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lio/flutter/embedding/engine/e/l;->a:Lb/a/b/a/m;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .local v1, "$r1":Ljava/lang/Integer;, ""
    const-string v2, "viewFocused"

    invoke-virtual {v0, v2, v1}, Lb/a/b/a/m;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
    .end local v0    # "$r2":Lb/a/b/a/m;, ""
    .end local v1    # "$r1":Ljava/lang/Integer;, ""
.end method

.method public a(Lio/flutter/embedding/engine/e/l$d;)V
    .locals 0

    iput-object p1, p0, Lio/flutter/embedding/engine/e/l;->b:Lio/flutter/embedding/engine/e/l$d;

    return-void
.end method
