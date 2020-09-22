.class public final Lb/a/b/a/q;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/a/b/a/n;


# static fields
.field public static final a:Lb/a/b/a/q;


# instance fields
.field private final b:Lb/a/b/a/p;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lb/a/b/a/q;

    .local v0, "$r0":Lb/a/b/a/q;, ""
    sget-object v1, Lb/a/b/a/p;->a:Lb/a/b/a/p;

    .local v1, "$r1":Lb/a/b/a/p;, ""
    invoke-direct {v0, v1}, Lb/a/b/a/q;-><init>(Lb/a/b/a/p;)V

    sput-object v0, Lb/a/b/a/q;->a:Lb/a/b/a/q;

    return-void
    .end local v1    # "$r1":Lb/a/b/a/p;, ""
    .end local v0    # "$r0":Lb/a/b/a/q;, ""
.end method

.method public constructor <init>(Lb/a/b/a/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/a/b/a/q;->b:Lb/a/b/a/p;

    return-void
.end method


# virtual methods
.method public a(Ljava/nio/ByteBuffer;)Lb/a/b/a/k;
    .locals 10

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    .local v0, "$r2":Ljava/nio/ByteOrder;, ""
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lb/a/b/a/q;->b:Lb/a/b/a/p;

    .local v1, "$r3":Lb/a/b/a/p;, ""
    invoke-virtual {v1, p1}, Lb/a/b/a/p;->d(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object v2

    .local v2, "$r4":Ljava/lang/Object;, ""
    iget-object v1, p0, Lb/a/b/a/q;->b:Lb/a/b/a/p;

    invoke-virtual {v1, p1}, Lb/a/b/a/p;->d(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object v3

    .local v3, "$r5":Ljava/lang/Object;, ""
    instance-of v4, v2, Ljava/lang/String;

    .local v4, "$z0":Z, ""
    if-eqz v4, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v5, Lb/a/b/a/k;

    .local v5, "$r6":Lb/a/b/a/k;, ""
    move-object v7, v2

    check-cast v7, Ljava/lang/String;

    move-object v6, v7

    .local v6, "$r7":Ljava/lang/String;, ""
    invoke-direct {v5, v6, v3}, Lb/a/b/a/k;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v5

    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    .local v8, "$r8":Ljava/lang/IllegalArgumentException;, ""
    const-string v9, "Method call corrupted"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8
    .end local v4    # "$z0":Z, ""
    .end local v2    # "$r4":Ljava/lang/Object;, ""
    .end local v5    # "$r6":Lb/a/b/a/k;, ""
    .end local v6    # "$r7":Ljava/lang/String;, ""
    .end local v3    # "$r5":Ljava/lang/Object;, ""
    .end local v0    # "$r2":Ljava/nio/ByteOrder;, ""
    .end local v1    # "$r3":Lb/a/b/a/p;, ""
    .end local v8    # "$r8":Ljava/lang/IllegalArgumentException;, ""
.end method

.method public a(Lb/a/b/a/k;)Ljava/nio/ByteBuffer;
    .locals 8

    new-instance v0, Lb/a/b/a/p$a;

    .local v0, "$r2":Lb/a/b/a/p$a;, ""
    invoke-direct {v0}, Lb/a/b/a/p$a;-><init>()V

    iget-object v1, p0, Lb/a/b/a/q;->b:Lb/a/b/a/p;

    .local v1, "$r3":Lb/a/b/a/p;, ""
    iget-object v2, p1, Lb/a/b/a/k;->a:Ljava/lang/String;

    .local v2, "$r4":Ljava/lang/String;, ""
    invoke-virtual {v1, v0, v2}, Lb/a/b/a/p;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    iget-object v1, p0, Lb/a/b/a/q;->b:Lb/a/b/a/p;

    iget-object v3, p1, Lb/a/b/a/k;->b:Ljava/lang/Object;

    .local v3, "$r5":Ljava/lang/Object;, ""
    invoke-virtual {v1, v0, v3}, Lb/a/b/a/p;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    .local v4, "$i0":I, ""
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .local v5, "$r6":Ljava/nio/ByteBuffer;, ""
    invoke-virtual {v0}, Lb/a/b/a/p$a;->a()[B

    move-result-object v6

    .local v6, "$r7":[B, ""
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return-object v5
    .end local v0    # "$r2":Lb/a/b/a/p$a;, ""
    .end local v3    # "$r5":Ljava/lang/Object;, ""
    .end local v2    # "$r4":Ljava/lang/String;, ""
    .end local v4    # "$i0":I, ""
    .end local v6    # "$r7":[B, ""
    .end local v5    # "$r6":Ljava/nio/ByteBuffer;, ""
    .end local v1    # "$r3":Lb/a/b/a/p;, ""
.end method

.method public a(Ljava/lang/Object;)Ljava/nio/ByteBuffer;
    .locals 6

    new-instance v0, Lb/a/b/a/p$a;

    .local v0, "$r2":Lb/a/b/a/p$a;, ""
    invoke-direct {v0}, Lb/a/b/a/p$a;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget-object v2, p0, Lb/a/b/a/q;->b:Lb/a/b/a/p;

    .local v2, "$r3":Lb/a/b/a/p;, ""
    invoke-virtual {v2, v0, p1}, Lb/a/b/a/p;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    .local v3, "$i0":I, ""
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .local v4, "$r4":Ljava/nio/ByteBuffer;, ""
    invoke-virtual {v0}, Lb/a/b/a/p$a;->a()[B

    move-result-object v5

    .local v5, "$r5":[B, ""
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    const/4 v1, 0x0

    invoke-virtual {v4, v5, v1, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return-object v4
    .end local v5    # "$r5":[B, ""
    .end local v4    # "$r4":Ljava/nio/ByteBuffer;, ""
    .end local v3    # "$i0":I, ""
    .end local v0    # "$r2":Lb/a/b/a/p$a;, ""
    .end local v2    # "$r3":Lb/a/b/a/p;, ""
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/nio/ByteBuffer;
    .locals 6

    new-instance v0, Lb/a/b/a/p$a;

    .local v0, "$r4":Lb/a/b/a/p$a;, ""
    invoke-direct {v0}, Lb/a/b/a/p$a;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget-object v2, p0, Lb/a/b/a/q;->b:Lb/a/b/a/p;

    .local v2, "$r5":Lb/a/b/a/p;, ""
    invoke-virtual {v2, v0, p1}, Lb/a/b/a/p;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    iget-object v2, p0, Lb/a/b/a/q;->b:Lb/a/b/a/p;

    invoke-virtual {v2, v0, p2}, Lb/a/b/a/p;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    iget-object v2, p0, Lb/a/b/a/q;->b:Lb/a/b/a/p;

    invoke-virtual {v2, v0, p3}, Lb/a/b/a/p;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    .local v3, "$i0":I, ""
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .local v4, "$r6":Ljava/nio/ByteBuffer;, ""
    invoke-virtual {v0}, Lb/a/b/a/p$a;->a()[B

    move-result-object v5

    .local v5, "$r7":[B, ""
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    const/4 v1, 0x0

    invoke-virtual {v4, v5, v1, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return-object v4
    .end local v4    # "$r6":Ljava/nio/ByteBuffer;, ""
    .end local v2    # "$r5":Lb/a/b/a/p;, ""
    .end local v3    # "$i0":I, ""
    .end local v5    # "$r7":[B, ""
    .end local v0    # "$r4":Lb/a/b/a/p$a;, ""
.end method

.method public b(Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .locals 14

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    .local v0, "$r2":Ljava/nio/ByteOrder;, ""
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    .local v1, "$b0":B, ""
    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :goto_0
    goto :goto_1

    :sswitch_0
    iget-object v2, p0, Lb/a/b/a/q;->b:Lb/a/b/a/p;

    .local v2, "$r3":Lb/a/b/a/p;, ""
    invoke-virtual {v2, p1}, Lb/a/b/a/p;->d(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object v3

    .local v3, "$r4":Ljava/lang/Object;, ""
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    .local v4, "$z0":Z, ""
    if-nez v4, :cond_0

    return-object v3

    :cond_0
    :sswitch_1
    iget-object v2, p0, Lb/a/b/a/q;->b:Lb/a/b/a/p;

    invoke-virtual {v2, p1}, Lb/a/b/a/p;->d(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object v3

    iget-object v2, p0, Lb/a/b/a/q;->b:Lb/a/b/a/p;

    invoke-virtual {v2, p1}, Lb/a/b/a/p;->d(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object v5

    .local v5, "$r5":Ljava/lang/Object;, ""
    iget-object v2, p0, Lb/a/b/a/q;->b:Lb/a/b/a/p;

    invoke-virtual {v2, p1}, Lb/a/b/a/p;->d(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object v6

    .local v6, "$r6":Ljava/lang/Object;, ""
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_2

    if-eqz v5, :cond_1

    instance-of v4, v5, Ljava/lang/String;

    if-eqz v4, :cond_2

    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v7, Lb/a/b/a/f;

    .local v7, "$r7":Lb/a/b/a/f;, ""
    move-object v9, v3

    check-cast v9, Ljava/lang/String;

    move-object v8, v9

    .local v8, "$r8":Ljava/lang/String;, ""
    move-object v11, v5

    check-cast v11, Ljava/lang/String;

    move-object v10, v11

    .local v10, "$r9":Ljava/lang/String;, ""
    invoke-direct {v7, v8, v10, v6}, Lb/a/b/a/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    throw v7

    :cond_2
    :goto_1
    new-instance v12, Ljava/lang/IllegalArgumentException;

    .local v12, "$r10":Ljava/lang/IllegalArgumentException;, ""
    const-string v13, "Envelope corrupted"

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
    .end sparse-switch
    .end local v6    # "$r6":Ljava/lang/Object;, ""
    .end local v1    # "$b0":B, ""
    .end local v3    # "$r4":Ljava/lang/Object;, ""
    .end local v10    # "$r9":Ljava/lang/String;, ""
    .end local v4    # "$z0":Z, ""
    .end local v2    # "$r3":Lb/a/b/a/p;, ""
    .end local v0    # "$r2":Ljava/nio/ByteOrder;, ""
    .end local v7    # "$r7":Lb/a/b/a/f;, ""
    .end local v12    # "$r10":Ljava/lang/IllegalArgumentException;, ""
    .end local v8    # "$r8":Ljava/lang/String;, ""
    .end local v5    # "$r5":Ljava/lang/Object;, ""
.end method
