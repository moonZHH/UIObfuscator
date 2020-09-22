.class public final Lb/a/b/a/r;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/a/b/a/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lb/a/b/a/j",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/nio/charset/Charset;

.field public static final b:Lb/a/b/a/r;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v1, "UTF8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .local v0, "$r0":Ljava/nio/charset/Charset;, ""
    sput-object v0, Lb/a/b/a/r;->a:Ljava/nio/charset/Charset;

    new-instance v2, Lb/a/b/a/r;

    .local v2, "$r1":Lb/a/b/a/r;, ""
    invoke-direct {v2}, Lb/a/b/a/r;-><init>()V

    sput-object v2, Lb/a/b/a/r;->b:Lb/a/b/a/r;

    return-void
    .end local v0    # "$r0":Ljava/nio/charset/Charset;, ""
    .end local v2    # "$r1":Lb/a/b/a/r;, ""
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lb/a/b/a/r;->b(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    .local v0, "$r1":Ljava/lang/String;, ""
    return-object v0
    .end local v0    # "$r1":Ljava/lang/String;, ""
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/nio/ByteBuffer;
    .locals 3

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    move-object v0, v1

    .local v0, "$r3":Ljava/lang/String;, ""
    invoke-virtual {p0, v0}, Lb/a/b/a/r;->a(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .local v2, "$r1":Ljava/nio/ByteBuffer;, ""
    return-object v2
    .end local v0    # "$r3":Ljava/lang/String;, ""
    .end local v2    # "$r1":Ljava/nio/ByteBuffer;, ""
.end method

.method public a(Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 5

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    sget-object v1, Lb/a/b/a/r;->a:Ljava/nio/charset/Charset;

    .local v1, "$r2":Ljava/nio/charset/Charset;, ""
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    .local v2, "$r3":[B, ""
    array-length v3, v2

    .local v3, "$i0":I, ""
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .local v4, "$r4":Ljava/nio/ByteBuffer;, ""
    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-object v4
    .end local v1    # "$r2":Ljava/nio/charset/Charset;, ""
    .end local v4    # "$r4":Ljava/nio/ByteBuffer;, ""
    .end local v2    # "$r3":[B, ""
    .end local v3    # "$i0":I, ""
.end method

.method public b(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 7

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    .local v1, "$i0":I, ""
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v2

    .local v2, "$z0":Z, ""
    if-eqz v2, :cond_1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    .local v3, "$r4":[B, ""
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    .local v4, "$i1":I, ""
    goto :goto_0

    :cond_1
    new-array v3, v1, [B

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/4 v4, 0x0

    :goto_0
    new-instance v5, Ljava/lang/String;

    .local v5, "$r1":Ljava/lang/String;, ""
    sget-object v6, Lb/a/b/a/r;->a:Ljava/nio/charset/Charset;

    .local v6, "$r2":Ljava/nio/charset/Charset;, ""
    invoke-direct {v5, v3, v4, v1, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v5
    .end local v6    # "$r2":Ljava/nio/charset/Charset;, ""
    .end local v5    # "$r1":Ljava/lang/String;, ""
    .end local v3    # "$r4":[B, ""
    .end local v4    # "$i1":I, ""
    .end local v1    # "$i0":I, ""
    .end local v2    # "$z0":Z, ""
.end method
