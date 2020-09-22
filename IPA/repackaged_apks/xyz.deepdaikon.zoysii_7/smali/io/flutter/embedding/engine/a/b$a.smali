.class Lio/flutter/embedding/engine/a/b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/a/b/a/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/engine/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultBinaryMessenger"
.end annotation


# instance fields
.field private final a:Lio/flutter/embedding/engine/a/c;


# direct methods
.method private constructor <init>(Lio/flutter/embedding/engine/a/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/embedding/engine/a/b$a;->a:Lio/flutter/embedding/engine/a/c;

    return-void
.end method

.method synthetic constructor <init>(Lio/flutter/embedding/engine/a/c;Lio/flutter/embedding/engine/a/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/flutter/embedding/engine/a/b$a;-><init>(Lio/flutter/embedding/engine/a/c;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lb/a/b/a/e$a;)V
    .locals 1

    iget-object v0, p0, Lio/flutter/embedding/engine/a/b$a;->a:Lio/flutter/embedding/engine/a/c;

    .local v0, "$r3":Lio/flutter/embedding/engine/a/c;, ""
    invoke-virtual {v0, p1, p2}, Lio/flutter/embedding/engine/a/c;->a(Ljava/lang/String;Lb/a/b/a/e$a;)V

    return-void
    .end local v0    # "$r3":Lio/flutter/embedding/engine/a/c;, ""
.end method

.method public a(Ljava/lang/String;Ljava/nio/ByteBuffer;Lb/a/b/a/e$b;)V
    .locals 1

    iget-object v0, p0, Lio/flutter/embedding/engine/a/b$a;->a:Lio/flutter/embedding/engine/a/c;

    .local v0, "$r4":Lio/flutter/embedding/engine/a/c;, ""
    invoke-virtual {v0, p1, p2, p3}, Lio/flutter/embedding/engine/a/c;->a(Ljava/lang/String;Ljava/nio/ByteBuffer;Lb/a/b/a/e$b;)V

    return-void
    .end local v0    # "$r4":Lio/flutter/embedding/engine/a/c;, ""
.end method
