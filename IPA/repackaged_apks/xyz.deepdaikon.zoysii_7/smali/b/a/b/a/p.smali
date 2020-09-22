.class public Lb/a/b/a/p;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/a/b/a/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/b/a/p$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lb/a/b/a/j",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lb/a/b/a/p;

.field private static final b:Z

.field private static final c:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lb/a/b/a/p;

    .local v0, "$r1":Lb/a/b/a/p;, ""
    invoke-direct {v0}, Lb/a/b/a/p;-><init>()V

    sput-object v0, Lb/a/b/a/p;->a:Lb/a/b/a/p;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    .local v1, "$r2":Ljava/nio/ByteOrder;, ""
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .local v2, "$r0":Ljava/nio/ByteOrder;, ""
    if-ne v1, v2, :cond_0

    const/4 v3, 0x1

    .local v3, "$z0":Z, ""
    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    sput-boolean v3, Lb/a/b/a/p;->b:Z

    const-string v5, "UTF8"

    invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    .local v4, "$r3":Ljava/nio/charset/Charset;, ""
    sput-object v4, Lb/a/b/a/p;->c:Ljava/nio/charset/Charset;

    return-void
    .end local v4    # "$r3":Ljava/nio/charset/Charset;, ""
    .end local v2    # "$r0":Ljava/nio/ByteOrder;, ""
    .end local v3    # "$z0":Z, ""
    .end local v0    # "$r1":Lb/a/b/a/p;, ""
    .end local v1    # "$r2":Ljava/nio/ByteOrder;, ""
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static final a(Ljava/io/ByteArrayOutputStream;D)V
    .locals 2

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .local v0, "$l0":J, ""
    invoke-static {p0, v0, v1}, Lb/a/b/a/p;->a(Ljava/io/ByteArrayOutputStream;J)V

    return-void
    .end local v0    # "$l0":J, ""
.end method

.method protected static final a(Ljava/io/ByteArrayOutputStream;I)V
    .locals 1

    const/16 v0, 0xfe

    if-ge p1, v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void

    :cond_0
    const v0, 0xffff

    if-gt p1, v0, :cond_1

    const/16 v0, 0xfe

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-static {p0, p1}, Lb/a/b/a/p;->b(Ljava/io/ByteArrayOutputStream;I)V

    return-void

    :cond_1
    const/16 v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-static {p0, p1}, Lb/a/b/a/p;->c(Ljava/io/ByteArrayOutputStream;I)V

    return-void
.end method

.method protected static final a(Ljava/io/ByteArrayOutputStream;J)V
    .locals 6

    sget-boolean v0, Lb/a/b/a/p;->b:Z

    .local v0, "$z0":Z, ""
    if-eqz v0, :cond_0

    long-to-int v1, p1

    .local v1, "$i1":I, ""
    int-to-byte v2, v1

    .local v2, "$b2":B, ""
    invoke-virtual {p0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v5, 0x8

    ushr-long v3, p1, v5

    .local v3, "$l3":J, ""
    long-to-int v1, v3

    int-to-byte v2, v1

    invoke-virtual {p0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v5, 0x10

    ushr-long v3, p1, v5

    long-to-int v1, v3

    int-to-byte v2, v1

    invoke-virtual {p0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v5, 0x18

    ushr-long v3, p1, v5

    long-to-int v1, v3

    int-to-byte v2, v1

    invoke-virtual {p0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v5, 0x20

    ushr-long v3, p1, v5

    long-to-int v1, v3

    int-to-byte v2, v1

    invoke-virtual {p0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v5, 0x28

    ushr-long v3, p1, v5

    long-to-int v1, v3

    int-to-byte v2, v1

    invoke-virtual {p0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v5, 0x30

    ushr-long v3, p1, v5

    long-to-int v1, v3

    int-to-byte v2, v1

    invoke-virtual {p0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v5, 0x38

    ushr-long/2addr p1, v5

    .local p1, "$l0":J, ""
    long-to-int v1, p1

    int-to-byte v2, v1

    invoke-virtual {p0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void

    :cond_0
    const/16 v5, 0x38

    ushr-long v3, p1, v5

    long-to-int v1, v3

    int-to-byte v2, v1

    invoke-virtual {p0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v5, 0x30

    ushr-long v3, p1, v5

    long-to-int v1, v3

    int-to-byte v2, v1

    invoke-virtual {p0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v5, 0x28

    ushr-long v3, p1, v5

    long-to-int v1, v3

    int-to-byte v2, v1

    invoke-virtual {p0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v5, 0x20

    ushr-long v3, p1, v5

    long-to-int v1, v3

    int-to-byte v2, v1

    invoke-virtual {p0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v5, 0x18

    ushr-long v3, p1, v5

    long-to-int v1, v3

    int-to-byte v2, v1

    invoke-virtual {p0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v5, 0x10

    ushr-long v3, p1, v5

    long-to-int v1, v3

    int-to-byte v2, v1

    invoke-virtual {p0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v5, 0x8

    ushr-long v3, p1, v5

    long-to-int v1, v3

    int-to-byte v2, v1

    invoke-virtual {p0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    long-to-int v1, p1

    int-to-byte v2, v1

    invoke-virtual {p0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void
    .end local v0    # "$z0":Z, ""
    .end local v2    # "$b2":B, ""
    .end local v1    # "$i1":I, ""
    .end local v3    # "$l3":J, ""
    .end local p1    # "$l0":J, ""
.end method

.method protected static final a(Ljava/io/ByteArrayOutputStream;[B)V
    .locals 2

    array-length v0, p1

    .local v0, "$i0":I, ""
    invoke-static {p0, v0}, Lb/a/b/a/p;->a(Ljava/io/ByteArrayOutputStream;I)V

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    return-void
    .end local v0    # "$i0":I, ""
.end method

.method protected static final a(Ljava/nio/ByteBuffer;I)V
    .locals 2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .local v0, "$i1":I, ""
    rem-int/2addr v0, p1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .local v1, "$i2":I, ""
    add-int p1, v1, p1

    .local p1, "$i0":I, ""
    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_0
    return-void
    .end local v1    # "$i2":I, ""
    .end local v0    # "$i1":I, ""
    .end local p1    # "$i0":I, ""
.end method

.method protected static final b(Ljava/nio/ByteBuffer;)I
    .locals 9

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    .local v0, "$z0":Z, ""
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    .local v1, "$b0":B, ""
    const/16 v3, 0xff

    and-int v4, v1, v3

    int-to-short v2, v4

    .local v3, "$s1":S, ""
    const/16 v3, 0xfe

    if-ge v2, v3, :cond_0

    return v2

    :cond_0
    const/16 v3, 0xfe

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getChar()C

    move-result v5

    .local v5, "$c2":C, ""
    return v5

    :cond_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    .local v6, "$i3":I, ""
    return v6

    :cond_2
    new-instance v7, Ljava/lang/IllegalArgumentException;

    .local v7, "$r1":Ljava/lang/IllegalArgumentException;, ""
    const-string v8, "Message corrupted"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7
    .end local v7    # "$r1":Ljava/lang/IllegalArgumentException;, ""
    .end local v0    # "$z0":Z, ""
    .end local v5    # "$c2":C, ""
    .end local v1    # "$b0":B, ""
    .end local v6    # "$i3":I, ""
    .end local v3    # "$s1":S, ""
.end method

.method protected static final b(Ljava/io/ByteArrayOutputStream;I)V
    .locals 2

    sget-boolean v0, Lb/a/b/a/p;->b:Z

    .local v0, "$z0":Z, ""
    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    ushr-int/lit8 p1, p1, 0x8

    .local p1, "$i0":I, ""
    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void

    :cond_0
    ushr-int/lit8 v1, p1, 0x8

    .local v1, "$i1":I, ""
    invoke-virtual {p0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void
    .end local v0    # "$z0":Z, ""
    .end local v1    # "$i1":I, ""
    .end local p1    # "$i0":I, ""
.end method

.method protected static final c(Ljava/io/ByteArrayOutputStream;I)V
    .locals 2

    sget-boolean v0, Lb/a/b/a/p;->b:Z

    .local v0, "$z0":Z, ""
    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    ushr-int/lit8 v1, p1, 0x8

    .local v1, "$i1":I, ""
    invoke-virtual {p0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    ushr-int/lit8 v1, p1, 0x10

    invoke-virtual {p0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    ushr-int/lit8 p1, p1, 0x18

    .local p1, "$i0":I, ""
    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void

    :cond_0
    ushr-int/lit8 v1, p1, 0x18

    invoke-virtual {p0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    ushr-int/lit8 v1, p1, 0x10

    invoke-virtual {p0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    ushr-int/lit8 v1, p1, 0x8

    invoke-virtual {p0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void
    .end local v0    # "$z0":Z, ""
    .end local v1    # "$i1":I, ""
    .end local p1    # "$i0":I, ""
.end method

.method protected static final c(Ljava/nio/ByteBuffer;)[B
    .locals 2

    invoke-static {p0}, Lb/a/b/a/p;->b(Ljava/nio/ByteBuffer;)I

    move-result v0

    .local v0, "$i0":I, ""
    new-array v1, v0, [B

    .local v1, "$r1":[B, ""
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object v1
    .end local v0    # "$i0":I, ""
    .end local v1    # "$r1":[B, ""
.end method

.method protected static final d(Ljava/io/ByteArrayOutputStream;I)V
    .locals 4

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    .local v0, "$i1":I, ""
    rem-int v1, v0, p1

    .local v1, "$i2":I, ""
    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .local v2, "$i3":I, ""
    :goto_0
    sub-int v0, p1, v1

    if-ge v2, v0, :cond_0

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
    .end local v2    # "$i3":I, ""
    .end local v1    # "$i2":I, ""
    .end local v0    # "$i1":I, ""
.end method


# virtual methods
.method protected a(BLjava/nio/ByteBuffer;)Ljava/lang/Object;
    .locals 36

    const/4 v3, 0x0

    .local v3, "$i1":I, ""
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :goto_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    .local v4, "r17":Ljava/lang/IllegalArgumentException;, ""
    const-string v5, "Message corrupted"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :sswitch_0
    move-object/from16 v0, p2

    invoke-static {v0}, Lb/a/b/a/p;->b(Ljava/nio/ByteBuffer;)I

    move-result v6

    .local v6, "$i2":I, ""
    new-instance v7, Ljava/util/HashMap;

    .local v7, "r18":Ljava/util/HashMap;, ""
    move-object v8, v7

    .local v8, "$r2":Ljava/util/HashMap;, ""
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    :goto_1
    if-ge v3, v6, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lb/a/b/a/p;->d(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object v9

    .local v9, "$r3":Ljava/lang/Object;, ""
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lb/a/b/a/p;->d(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object v10

    .local v10, "$r4":Ljava/lang/Object;, ""
    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :sswitch_1
    move-object/from16 v0, p2

    invoke-static {v0}, Lb/a/b/a/p;->b(Ljava/nio/ByteBuffer;)I

    move-result v6

    new-instance v11, Ljava/util/ArrayList;

    .local v11, "r19":Ljava/util/ArrayList;, ""
    move-object v12, v11

    .local v12, "$r5":Ljava/util/ArrayList;, ""
    invoke-direct {v11, v6}, Ljava/util/ArrayList;-><init>(I)V

    :goto_2
    if-ge v3, v6, :cond_1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lb/a/b/a/p;->d(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :sswitch_2
    move-object/from16 v0, p2

    invoke-static {v0}, Lb/a/b/a/p;->b(Ljava/nio/ByteBuffer;)I

    move-result v6

    new-array v13, v6, [D

    .local v13, "$r6":Ljava/io/Serializable;, ""
    const/16 v14, 0x8

    move-object/from16 v0, p2

    invoke-static {v0, v14}, Lb/a/b/a/p;->a(Ljava/nio/ByteBuffer;I)V

    move-object/from16 v0, p2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asDoubleBuffer()Ljava/nio/DoubleBuffer;

    move-result-object v15

    .local v15, "$r7":Ljava/nio/DoubleBuffer;, ""
    move-object/from16 v17, v13

    check-cast v17, [D

    move-object/from16 v16, v17

    .local v16, "r22":[D, ""
    move-object/from16 v0, v16

    invoke-virtual {v15, v0}, Ljava/nio/DoubleBuffer;->get([D)Ljava/nio/DoubleBuffer;

    move-object/from16 v0, p2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    mul-int/lit8 v6, v6, 0x8

    add-int/2addr v3, v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_3

    :sswitch_3
    move-object/from16 v0, p2

    invoke-static {v0}, Lb/a/b/a/p;->b(Ljava/nio/ByteBuffer;)I

    move-result v6

    new-array v13, v6, [J

    const/16 v14, 0x8

    move-object/from16 v0, p2

    invoke-static {v0, v14}, Lb/a/b/a/p;->a(Ljava/nio/ByteBuffer;I)V

    move-object/from16 v0, p2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object v18

    .local v18, "$r8":Ljava/nio/LongBuffer;, ""
    move-object/from16 v20, v13

    check-cast v20, [J

    move-object/from16 v19, v20

    .local v19, "r23":[J, ""
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/nio/LongBuffer;->get([J)Ljava/nio/LongBuffer;

    move-object/from16 v0, p2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    mul-int/lit8 v6, v6, 0x8

    add-int/2addr v3, v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :goto_3
    return-object v13

    :sswitch_4
    move-object/from16 v0, p2

    invoke-static {v0}, Lb/a/b/a/p;->b(Ljava/nio/ByteBuffer;)I

    move-result v6

    new-array v0, v6, [I

    .local v0, "$r9":[I, ""
    move-object/from16 v21, v0

    .end local v0    # "$r9":[I, ""
    .local v21, "$r9":[I, ""
    const/4 v14, 0x4

    move-object/from16 v0, p2

    invoke-static {v0, v14}, Lb/a/b/a/p;->a(Ljava/nio/ByteBuffer;I)V

    move-object/from16 v0, p2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v22

    .local v22, "$r10":Ljava/nio/IntBuffer;, ""
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->get([I)Ljava/nio/IntBuffer;

    move-object/from16 v0, p2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    mul-int/lit8 v6, v6, 0x4

    add-int/2addr v3, v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-object v21

    :sswitch_5
    move-object/from16 v0, p2

    invoke-static {v0}, Lb/a/b/a/p;->c(Ljava/nio/ByteBuffer;)[B

    move-result-object v23

    .local v23, "$r11":[B, ""
    return-object v23

    :sswitch_6
    move-object/from16 v0, p2

    invoke-static {v0}, Lb/a/b/a/p;->c(Ljava/nio/ByteBuffer;)[B

    move-result-object v23

    new-instance v24, Ljava/lang/String;

    .local v24, "r20":Ljava/lang/String;, ""
    sget-object v25, Lb/a/b/a/p;->c:Ljava/nio/charset/Charset;

    .local v25, "$r12":Ljava/nio/charset/Charset;, ""
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v24

    :sswitch_7
    const/16 v14, 0x8

    move-object/from16 v0, p2

    invoke-static {v0, v14}, Lb/a/b/a/p;->a(Ljava/nio/ByteBuffer;I)V

    move-object/from16 v0, p2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide v26

    .local v26, "$d0":D, ""
    move-wide/from16 v0, v26

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v28

    .local v28, "$r13":Ljava/lang/Double;, ""
    return-object v28

    :sswitch_8
    move-object/from16 v0, p2

    invoke-static {v0}, Lb/a/b/a/p;->c(Ljava/nio/ByteBuffer;)[B

    move-result-object v23

    new-instance v29, Ljava/math/BigInteger;

    .local v29, "r21":Ljava/math/BigInteger;, ""
    new-instance v24, Ljava/lang/String;

    sget-object v25, Lb/a/b/a/p;->c:Ljava/nio/charset/Charset;

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const/16 v14, 0x10

    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v14}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    return-object v29

    :sswitch_9
    move-object/from16 v0, p2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v30

    .local v30, "$l3":J, ""
    move-wide/from16 v0, v30

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v32

    .local v32, "$r14":Ljava/lang/Long;, ""
    return-object v32

    :sswitch_a
    move-object/from16 v0, p2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    .local v33, "$r15":Ljava/lang/Integer;, ""
    return-object v33

    :sswitch_b
    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v34

    .local v34, "$r16":Ljava/lang/Boolean;, ""
    return-object v34

    :sswitch_c
    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v34

    return-object v34

    :sswitch_d
    const/16 v35, 0x0

    return-object v35

    :cond_0
    return-object v8

    :cond_1
    return-object v12

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_d
        0x1 -> :sswitch_c
        0x2 -> :sswitch_b
        0x3 -> :sswitch_a
        0x4 -> :sswitch_9
        0x5 -> :sswitch_8
        0x6 -> :sswitch_7
        0x7 -> :sswitch_6
        0x8 -> :sswitch_5
        0x9 -> :sswitch_4
        0xa -> :sswitch_3
        0xb -> :sswitch_2
        0xc -> :sswitch_1
        0xd -> :sswitch_0
    .end sparse-switch
    .end local v10    # "$r4":Ljava/lang/Object;, ""
    .end local v6    # "$i2":I, ""
    .end local v7    # "r18":Ljava/util/HashMap;, ""
    .end local v22    # "$r10":Ljava/nio/IntBuffer;, ""
    .end local v21    # "$r9":[I, ""
    .end local v16    # "r22":[D, ""
    .end local v15    # "$r7":Ljava/nio/DoubleBuffer;, ""
    .end local v29    # "r21":Ljava/math/BigInteger;, ""
    .end local v9    # "$r3":Ljava/lang/Object;, ""
    .end local v18    # "$r8":Ljava/nio/LongBuffer;, ""
    .end local v13    # "$r6":Ljava/io/Serializable;, ""
    .end local v24    # "r20":Ljava/lang/String;, ""
    .end local v12    # "$r5":Ljava/util/ArrayList;, ""
    .end local v11    # "r19":Ljava/util/ArrayList;, ""
    .end local v32    # "$r14":Ljava/lang/Long;, ""
    .end local v19    # "r23":[J, ""
    .end local v3    # "$i1":I, ""
    .end local v4    # "r17":Ljava/lang/IllegalArgumentException;, ""
    .end local v25    # "$r12":Ljava/nio/charset/Charset;, ""
    .end local v28    # "$r13":Ljava/lang/Double;, ""
    .end local v23    # "$r11":[B, ""
    .end local v33    # "$r15":Ljava/lang/Integer;, ""
    .end local v8    # "$r2":Ljava/util/HashMap;, ""
    .end local v26    # "$d0":D, ""
    .end local v30    # "$l3":J, ""
    .end local v34    # "$r16":Ljava/lang/Boolean;, ""
.end method

.method public a(Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .locals 6

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    .local v1, "$r2":Ljava/nio/ByteOrder;, ""
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Lb/a/b/a/p;->d(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object v2

    .local v2, "$r3":Ljava/lang/Object;, ""
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    .local v3, "$z0":Z, ""
    if-nez v3, :cond_1

    return-object v2

    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    .local v4, "$r4":Ljava/lang/IllegalArgumentException;, ""
    const-string v5, "Message corrupted"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    .end local v2    # "$r3":Ljava/lang/Object;, ""
    .end local v1    # "$r2":Ljava/nio/ByteOrder;, ""
    .end local v3    # "$z0":Z, ""
    .end local v4    # "$r4":Ljava/lang/IllegalArgumentException;, ""
.end method

.method public a(Ljava/lang/Object;)Ljava/nio/ByteBuffer;
    .locals 6

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v1, Lb/a/b/a/p$a;

    .local v1, "$r2":Lb/a/b/a/p$a;, ""
    invoke-direct {v1}, Lb/a/b/a/p$a;-><init>()V

    invoke-virtual {p0, v1, p1}, Lb/a/b/a/p;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    .local v2, "$i0":I, ""
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .local v3, "$r3":Ljava/nio/ByteBuffer;, ""
    invoke-virtual {v1}, Lb/a/b/a/p$a;->a()[B

    move-result-object v4

    .local v4, "$r4":[B, ""
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return-object v3
    .end local v2    # "$i0":I, ""
    .end local v4    # "$r4":[B, ""
    .end local v3    # "$r3":Ljava/nio/ByteBuffer;, ""
    .end local v1    # "$r2":Lb/a/b/a/p$a;, ""
.end method

.method protected a(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V
    .locals 45

    const/4 v4, 0x0

    .local v4, "$i0":I, ""
    if-eqz p2, :cond_11

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    .local v5, "$z0":Z, ""
    if-eqz v5, :cond_0

    goto/32 :goto_7

    :cond_0
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .local v7, "$r3":Ljava/lang/Boolean;, ""
    move-object/from16 v0, p2

    if-ne v0, v7, :cond_1

    const/4 v8, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void

    :cond_1
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, p2

    if-ne v0, v7, :cond_2

    const/4 v8, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void

    :cond_2
    move-object/from16 v0, p2

    instance-of v5, v0, Ljava/lang/Number;

    if-eqz v5, :cond_9

    move-object/from16 v0, p2

    instance-of v5, v0, Ljava/lang/Integer;

    if-nez v5, :cond_8

    move-object/from16 v0, p2

    instance-of v5, v0, Ljava/lang/Short;

    if-nez v5, :cond_8

    move-object/from16 v0, p2

    instance-of v5, v0, Ljava/lang/Byte;

    if-eqz v5, :cond_3

    goto/32 :goto_1

    :cond_3
    move-object/from16 v0, p2

    instance-of v5, v0, Ljava/lang/Long;

    if-eqz v5, :cond_4

    const/4 v8, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move-object/from16 v10, p2

    check-cast v10, Ljava/lang/Long;

    move-object v9, v10

    .local v9, "$r4":Ljava/lang/Long;, ""
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .local v11, "$l1":J, ""
    move-object/from16 v0, p1

    invoke-static {v0, v11, v12}, Lb/a/b/a/p;->a(Ljava/io/ByteArrayOutputStream;J)V

    return-void

    :cond_4
    move-object/from16 v0, p2

    instance-of v5, v0, Ljava/lang/Float;

    if-nez v5, :cond_7

    move-object/from16 v0, p2

    instance-of v5, v0, Ljava/lang/Double;

    if-eqz v5, :cond_5

    goto :goto_0

    :cond_5
    move-object/from16 v0, p2

    instance-of v5, v0, Ljava/math/BigInteger;

    if-eqz v5, :cond_6

    const/4 v8, 0x5

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move-object/from16 v14, p2

    check-cast v14, Ljava/math/BigInteger;

    move-object v13, v14

    .local v13, "$r5":Ljava/math/BigInteger;, ""
    const/16 v8, 0x10

    invoke-virtual {v13, v8}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v15

    .local v15, "$r6":Ljava/lang/String;, ""
    sget-object v16, Lb/a/b/a/p;->c:Ljava/nio/charset/Charset;

    .local v16, "$r7":Ljava/nio/charset/Charset;, ""
    move-object/from16 v0, v16

    invoke-virtual {v15, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v17

    .local v17, "$r8":[B, ""
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lb/a/b/a/p;->a(Ljava/io/ByteArrayOutputStream;[B)V

    return-void

    :cond_6
    new-instance v18, Ljava/lang/IllegalArgumentException;

    .local v18, "$r9":Ljava/lang/IllegalArgumentException;, ""
    new-instance v19, Ljava/lang/StringBuilder;

    .local v19, "$r10":Ljava/lang/StringBuilder;, ""
    move-object/from16 v0, v19

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Unsupported Number type: "

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v21

    .local v21, "$r11":Ljava/lang/Class;, ""
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v19

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v18

    invoke-direct {v0, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    :cond_7
    :goto_0
    const/4 v8, 0x6

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v8, 0x8

    move-object/from16 v0, p1

    invoke-static {v0, v8}, Lb/a/b/a/p;->d(Ljava/io/ByteArrayOutputStream;I)V

    move-object/from16 v23, p2

    check-cast v23, Ljava/lang/Number;

    move-object/from16 v22, v23

    .local v22, "$r12":Ljava/lang/Number;, ""
    move-object/from16 v0, v22

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v24

    .local v24, "$d0":D, ""
    move-object/from16 v0, p1

    move-wide/from16 v1, v24

    invoke-static {v0, v1, v2}, Lb/a/b/a/p;->a(Ljava/io/ByteArrayOutputStream;D)V

    return-void

    :cond_8
    :goto_1
    const/4 v8, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move-object/from16 v26, p2

    check-cast v26, Ljava/lang/Number;

    move-object/from16 v22, v26

    move-object/from16 v0, v22

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v4

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lb/a/b/a/p;->c(Ljava/io/ByteArrayOutputStream;I)V

    return-void

    :cond_9
    move-object/from16 v0, p2

    instance-of v5, v0, Ljava/lang/String;

    if-eqz v5, :cond_a

    const/4 v8, 0x7

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move-object/from16 v27, p2

    check-cast v27, Ljava/lang/String;

    move-object/from16 v15, v27

    sget-object v16, Lb/a/b/a/p;->c:Ljava/nio/charset/Charset;

    move-object/from16 v0, v16

    invoke-virtual {v15, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lb/a/b/a/p;->a(Ljava/io/ByteArrayOutputStream;[B)V

    return-void

    :cond_a
    move-object/from16 v0, p2

    instance-of v5, v0, [B

    if-eqz v5, :cond_b

    const/16 v8, 0x8

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move-object/from16 v28, p2

    check-cast v28, [B

    move-object/from16 v17, v28

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lb/a/b/a/p;->a(Ljava/io/ByteArrayOutputStream;[B)V

    return-void

    :cond_b
    move-object/from16 v0, p2

    instance-of v5, v0, [I

    if-eqz v5, :cond_c

    const/16 v8, 0x9

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move-object/from16 v30, p2

    check-cast v30, [I

    move-object/from16 v29, v30

    .local v29, "$r13":[I, ""
    move-object/from16 v0, v29

    .local v0, "$i2":I, ""
    array-length v0, v0

    move/from16 v31, v0

    .end local v0    # "$i2":I, ""
    .local v31, "$i2":I, ""
    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-static {v0, v1}, Lb/a/b/a/p;->a(Ljava/io/ByteArrayOutputStream;I)V

    const/4 v8, 0x4

    move-object/from16 v0, p1

    invoke-static {v0, v8}, Lb/a/b/a/p;->d(Ljava/io/ByteArrayOutputStream;I)V

    move-object/from16 v0, v29

    .end local v31    # "$i2":I, ""
    .local v0, "$i2":I, ""
    array-length v0, v0

    move/from16 v31, v0

    .end local v0    # "$i2":I, ""
    .local v31, "$i2":I, ""
    :goto_2
    move/from16 v0, v31

    if-ge v4, v0, :cond_12

    aget v32, v29, v4

    .local v32, "$i3":I, ""
    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-static {v0, v1}, Lb/a/b/a/p;->c(Ljava/io/ByteArrayOutputStream;I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_c
    move-object/from16 v0, p2

    instance-of v5, v0, [J

    if-eqz v5, :cond_d

    const/16 v8, 0xa

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move-object/from16 v34, p2

    check-cast v34, [J

    move-object/from16 v33, v34

    .local v33, "$r14":[J, ""
    move-object/from16 v0, v33

    .end local v31    # "$i2":I, ""
    .local v0, "$i2":I, ""
    array-length v0, v0

    move/from16 v31, v0

    .end local v0    # "$i2":I, ""
    .local v31, "$i2":I, ""
    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-static {v0, v1}, Lb/a/b/a/p;->a(Ljava/io/ByteArrayOutputStream;I)V

    const/16 v8, 0x8

    move-object/from16 v0, p1

    invoke-static {v0, v8}, Lb/a/b/a/p;->d(Ljava/io/ByteArrayOutputStream;I)V

    move-object/from16 v0, v33

    .end local v31    # "$i2":I, ""
    .local v0, "$i2":I, ""
    array-length v0, v0

    move/from16 v31, v0

    .end local v0    # "$i2":I, ""
    .local v31, "$i2":I, ""
    :goto_3
    move/from16 v0, v31

    if-ge v4, v0, :cond_12

    aget-wide v11, v33, v4

    move-object/from16 v0, p1

    invoke-static {v0, v11, v12}, Lb/a/b/a/p;->a(Ljava/io/ByteArrayOutputStream;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_d
    move-object/from16 v0, p2

    instance-of v5, v0, [D

    if-eqz v5, :cond_e

    const/16 v8, 0xb

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move-object/from16 v36, p2

    check-cast v36, [D

    move-object/from16 v35, v36

    .local v35, "$r15":[D, ""
    move-object/from16 v0, v35

    .end local v31    # "$i2":I, ""
    .local v0, "$i2":I, ""
    array-length v0, v0

    move/from16 v31, v0

    .end local v0    # "$i2":I, ""
    .local v31, "$i2":I, ""
    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-static {v0, v1}, Lb/a/b/a/p;->a(Ljava/io/ByteArrayOutputStream;I)V

    const/16 v8, 0x8

    move-object/from16 v0, p1

    invoke-static {v0, v8}, Lb/a/b/a/p;->d(Ljava/io/ByteArrayOutputStream;I)V

    move-object/from16 v0, v35

    .end local v31    # "$i2":I, ""
    .local v0, "$i2":I, ""
    array-length v0, v0

    move/from16 v31, v0

    .end local v0    # "$i2":I, ""
    .local v31, "$i2":I, ""
    :goto_4
    move/from16 v0, v31

    if-ge v4, v0, :cond_12

    aget-wide v24, v35, v4

    move-object/from16 v0, p1

    move-wide/from16 v1, v24

    invoke-static {v0, v1, v2}, Lb/a/b/a/p;->a(Ljava/io/ByteArrayOutputStream;D)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_e
    move-object/from16 v0, p2

    instance-of v5, v0, Ljava/util/List;

    if-eqz v5, :cond_f

    const/16 v8, 0xc

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move-object/from16 v38, p2

    check-cast v38, Ljava/util/List;

    move-object/from16 v37, v38

    .local v37, "$r16":Ljava/util/List;, ""
    move-object/from16 v0, v37

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lb/a/b/a/p;->a(Ljava/io/ByteArrayOutputStream;I)V

    move-object/from16 v0, v37

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v39

    .local v39, "$r17":Ljava/util/Iterator;, ""
    :goto_5
    move-object/from16 v0, v39

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12

    move-object/from16 v0, v39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    .local p2, "$r2":Ljava/lang/Object;, ""
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lb/a/b/a/p;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    goto :goto_5

    :cond_f
    move-object/from16 v0, p2

    instance-of v5, v0, Ljava/util/Map;

    if-eqz v5, :cond_10

    const/16 v8, 0xd

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move-object/from16 v41, p2

    check-cast v41, Ljava/util/Map;

    move-object/from16 v40, v41

    .local v40, "$r18":Ljava/util/Map;, ""
    move-object/from16 v0, v40

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v4

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lb/a/b/a/p;->a(Ljava/io/ByteArrayOutputStream;I)V

    move-object/from16 v0, v40

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v42

    .local v42, "$r19":Ljava/util/Set;, ""
    move-object/from16 v0, v42

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v39

    :goto_6
    move-object/from16 v0, v39

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12

    move-object/from16 v0, v39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object/from16 v44, p2

    check-cast v44, Ljava/util/Map$Entry;

    move-object/from16 v43, v44

    .local v43, "$r20":Ljava/util/Map$Entry;, ""
    move-object/from16 v0, v43

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lb/a/b/a/p;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    move-object/from16 v0, v43

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lb/a/b/a/p;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    goto :goto_6

    :cond_10
    new-instance v18, Ljava/lang/IllegalArgumentException;

    new-instance v19, Ljava/lang/StringBuilder;

    move-object/from16 v0, v19

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Unsupported value: "

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v19

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v18

    invoke-direct {v0, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    :cond_11
    :goto_7
    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_12
    return-void
    .end local v39    # "$r17":Ljava/util/Iterator;, ""
    .end local v32    # "$i3":I, ""
    .end local v33    # "$r14":[J, ""
    .end local v7    # "$r3":Ljava/lang/Boolean;, ""
    .end local v13    # "$r5":Ljava/math/BigInteger;, ""
    .end local v11    # "$l1":J, ""
    .end local v16    # "$r7":Ljava/nio/charset/Charset;, ""
    .end local p2    # "$r2":Ljava/lang/Object;, ""
    .end local v35    # "$r15":[D, ""
    .end local v24    # "$d0":D, ""
    .end local v9    # "$r4":Ljava/lang/Long;, ""
    .end local v43    # "$r20":Ljava/util/Map$Entry;, ""
    .end local v42    # "$r19":Ljava/util/Set;, ""
    .end local v18    # "$r9":Ljava/lang/IllegalArgumentException;, ""
    .end local v29    # "$r13":[I, ""
    .end local v5    # "$z0":Z, ""
    .end local v37    # "$r16":Ljava/util/List;, ""
    .end local v17    # "$r8":[B, ""
    .end local v4    # "$i0":I, ""
    .end local v40    # "$r18":Ljava/util/Map;, ""
    .end local v15    # "$r6":Ljava/lang/String;, ""
    .end local v21    # "$r11":Ljava/lang/Class;, ""
    .end local v19    # "$r10":Ljava/lang/StringBuilder;, ""
    .end local v31    # "$i2":I, ""
    .end local v22    # "$r12":Ljava/lang/Number;, ""
.end method

.method protected final d(Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .locals 5

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    .local v0, "$z0":Z, ""
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    .local v1, "$b0":B, ""
    invoke-virtual {p0, v1, p1}, Lb/a/b/a/p;->a(BLjava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object v2

    .local v2, "$r2":Ljava/lang/Object;, ""
    return-object v2

    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .local v3, "$r3":Ljava/lang/IllegalArgumentException;, ""
    const-string v4, "Message corrupted"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    .end local v2    # "$r2":Ljava/lang/Object;, ""
    .end local v3    # "$r3":Ljava/lang/IllegalArgumentException;, ""
    .end local v1    # "$b0":B, ""
    .end local v0    # "$z0":Z, ""
.end method
