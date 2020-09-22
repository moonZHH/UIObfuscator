.class public Lb/a/a/a/b;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Lio/flutter/embedding/engine/d/c;


# direct methods
.method public constructor <init>(Lio/flutter/embedding/engine/d/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/a/a/a/b;->a:Lio/flutter/embedding/engine/d/c;

    return-void
.end method

.method private a(I)I
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x4

    return v0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/4 v0, 0x6

    return v0

    :cond_1
    const/4 v0, 0x5

    if-ne p1, v0, :cond_2

    const/4 v0, 0x4

    return v0

    :cond_2
    const/4 v0, 0x6

    if-ne p1, v0, :cond_3

    const/4 v0, 0x6

    return v0

    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    const/4 v0, 0x5

    return v0

    :cond_4
    const/4 v0, 0x7

    if-ne p1, v0, :cond_5

    const/4 v0, 0x3

    return v0

    :cond_5
    const/4 v0, 0x3

    if-ne p1, v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    const/16 v0, 0x8

    if-ne p1, v0, :cond_7

    const/4 v0, 0x3

    return v0

    :cond_7
    const/4 v0, -0x1

    return v0
.end method

.method private a(Landroid/view/MotionEvent;IIILjava/nio/ByteBuffer;)V
    .locals 22

    const/4 v4, -0x1

    move/from16 v0, p3

    if-ne v0, v4, :cond_0

    return-void

    :cond_0
    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v5

    .local v5, "$i3":I, ""
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lb/a/a/a/b;->b(I)I

    move-result v5

    move-object/from16 v0, p1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    .local v6, "$i4":I, ""
    const/16 v4, 0x8

    if-ne v6, v4, :cond_1

    const/4 v7, 0x1

    .local v7, "$z0":Z, ""
    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    :goto_0
    move-object/from16 v0, p1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    .local v8, "$l5":J, ""
    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    move-object/from16 v0, p5

    invoke-virtual {v0, v8, v9}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move/from16 v0, p3

    int-to-long v8, v0

    move-object/from16 v0, p5

    invoke-virtual {v0, v8, v9}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    int-to-long v8, v5

    move-object/from16 v0, p5

    invoke-virtual {v0, v8, v9}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    int-to-long v8, v7

    move-object/from16 v0, p5

    invoke-virtual {v0, v8, v9}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    int-to-long v8, v6

    move-object/from16 v0, p5

    invoke-virtual {v0, v8, v9}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    const-wide/16 v10, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v10, v11}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v12

    .local v12, "$f0":F, ""
    float-to-double v13, v12

    .local v13, "$d0":D, ""
    move-object/from16 v0, p5

    invoke-virtual {v0, v13, v14}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    float-to-double v13, v12

    move-object/from16 v0, p5

    invoke-virtual {v0, v13, v14}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    const-wide/16 v15, 0x0

    move-object/from16 v0, p5

    move-wide/from16 v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    const-wide/16 v15, 0x0

    move-object/from16 v0, p5

    move-wide/from16 v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    const/4 v4, 0x1

    if-ne v5, v4, :cond_3

    move-object/from16 v0, p1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v6

    and-int/lit8 v6, v6, 0x1f

    int-to-long v8, v6

    const-wide/16 v10, 0x0

    cmp-long v17, v8, v10

    .local v17, "$b6":B, ""
    if-nez v17, :cond_5

    move-object/from16 v0, p1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getSource()I

    move-result v6

    const/16 v4, 0x2002

    if-ne v6, v4, :cond_5

    const/4 v4, 0x4

    move/from16 v0, p3

    if-eq v0, v4, :cond_2

    const/4 v4, 0x5

    move/from16 v0, p3

    if-ne v0, v4, :cond_5

    :cond_2
    const-wide/16 v8, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x2

    if-ne v5, v4, :cond_4

    move-object/from16 v0, p1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getButtonState()I

    move-result p3

    .local p3, "$i1":I, ""
    shr-int/lit8 p3, p3, 0x4

    and-int/lit8 p3, p3, 0xf

    move/from16 v0, p3

    int-to-long v8, v0

    goto :goto_1

    :cond_4
    const-wide/16 v8, 0x0

    :cond_5
    :goto_1
    move-object/from16 v0, p5

    invoke-virtual {v0, v8, v9}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    const-wide/16 v10, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v10, v11}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    const-wide/16 v10, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v10, v11}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v12

    float-to-double v13, v12

    move-object/from16 v0, p5

    invoke-virtual {v0, v13, v14}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    const-wide v13, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v18

    .local v18, "$r3":Landroid/view/InputDevice;, ""
    if-eqz v18, :cond_6

    move-object/from16 v0, p1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v18

    const/4 v4, 0x2

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    move-result-object v19

    .local v19, "$r4":Landroid/view/InputDevice$MotionRange;, ""
    if-eqz v19, :cond_6

    move-object/from16 v0, v19

    invoke-virtual {v0}, Landroid/view/InputDevice$MotionRange;->getMin()F

    move-result v12

    float-to-double v0, v12

    .local v0, "$d1":D, ""
    move-wide/from16 v20, v0

    .end local v0    # "$d1":D, ""
    .local v20, "$d1":D, ""
    move-object/from16 v0, v19

    invoke-virtual {v0}, Landroid/view/InputDevice$MotionRange;->getMax()F

    move-result v12

    float-to-double v13, v12

    goto :goto_2

    :cond_6
    const-wide/16 v20, 0x0

    :goto_2
    move-object/from16 v0, p5

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    move-object/from16 v0, p5

    invoke-virtual {v0, v13, v14}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    const/4 v4, 0x2

    if-ne v5, v4, :cond_7

    const/16 v4, 0x18

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v0, v4, v1}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v12

    float-to-double v13, v12

    move-object/from16 v0, p5

    invoke-virtual {v0, v13, v14}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    const-wide/16 v15, 0x0

    move-object/from16 v0, p5

    move-wide/from16 v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    goto :goto_3

    :cond_7
    const-wide/16 v15, 0x0

    move-object/from16 v0, p5

    move-wide/from16 v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    const-wide/16 v15, 0x0

    move-object/from16 v0, p5

    move-wide/from16 v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    :goto_3
    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getSize(I)F

    move-result v12

    float-to-double v13, v12

    move-object/from16 v0, p5

    invoke-virtual {v0, v13, v14}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getToolMajor(I)F

    move-result v12

    float-to-double v13, v12

    move-object/from16 v0, p5

    invoke-virtual {v0, v13, v14}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getToolMinor(I)F

    move-result v12

    float-to-double v13, v12

    move-object/from16 v0, p5

    invoke-virtual {v0, v13, v14}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    const-wide/16 v15, 0x0

    move-object/from16 v0, p5

    move-wide/from16 v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    const-wide/16 v15, 0x0

    move-object/from16 v0, p5

    move-wide/from16 v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    const/16 v4, 0x8

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v0, v4, v1}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v12

    float-to-double v13, v12

    move-object/from16 v0, p5

    invoke-virtual {v0, v13, v14}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    const/4 v4, 0x2

    if-ne v5, v4, :cond_8

    const/16 v4, 0x19

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v0, v4, v1}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v12

    float-to-double v13, v12

    move-object/from16 v0, p5

    invoke-virtual {v0, v13, v14}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    :goto_4
    goto :goto_5

    :cond_8
    const-wide/16 v15, 0x0

    move-object/from16 v0, p5

    move-wide/from16 v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    goto :goto_4

    :goto_5
    move/from16 v0, p4

    int-to-long v8, v0

    move-object/from16 v0, p5

    invoke-virtual {v0, v8, v9}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    const/4 v4, 0x1

    if-ne v7, v4, :cond_9

    const/16 v4, 0xa

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v12

    neg-float v12, v12

    float-to-double v13, v12

    move-object/from16 v0, p5

    invoke-virtual {v0, v13, v14}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    const/16 v4, 0x9

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v12

    neg-float v12, v12

    float-to-double v13, v12

    move-object/from16 v0, p5

    invoke-virtual {v0, v13, v14}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    return-void

    :cond_9
    const-wide/16 v15, 0x0

    move-object/from16 v0, p5

    move-wide/from16 v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    const-wide/16 v15, 0x0

    move-object/from16 v0, p5

    move-wide/from16 v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    return-void
    .end local v6    # "$i4":I, ""
    .end local v17    # "$b6":B, ""
    .end local v13    # "$d0":D, ""
    .end local v18    # "$r3":Landroid/view/InputDevice;, ""
    .end local v8    # "$l5":J, ""
    .end local v12    # "$f0":F, ""
    .end local v19    # "$r4":Landroid/view/InputDevice$MotionRange;, ""
    .end local p3    # "$i1":I, ""
    .end local v20    # "$d1":D, ""
    .end local v5    # "$i3":I, ""
    .end local v7    # "$z0":Z, ""
.end method

.method private b(I)I
    .locals 1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :goto_0
    const/4 v0, 0x4

    return v0

    :sswitch_0
    const/4 v0, 0x3

    return v0

    :sswitch_1
    const/4 v0, 0x1

    return v0

    :sswitch_2
    const/4 v0, 0x2

    return v0

    :sswitch_3
    const/4 v0, 0x0

    return v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_2
        0x3 -> :sswitch_1
        0x4 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public a(Landroid/view/MotionEvent;)Z
    .locals 19

    move-object/from16 v0, p1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    .local v6, "$i0":I, ""
    mul-int/lit8 v7, v6, 0x1c

    .local v7, "$i1":I, ""
    mul-int/lit8 v7, v7, 0x8

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    .local v8, "$r2":Ljava/nio/ByteBuffer;, ""
    sget-object v9, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .local v9, "$r3":Ljava/nio/ByteOrder;, ""
    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-object/from16 v0, p1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v10

    .local v10, "$i2":I, ""
    move-object/from16 v0, p1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lb/a/a/a/b;->a(I)I

    move-result v7

    if-eqz v10, :cond_1

    const/4 v11, 0x5

    if-ne v10, v11, :cond_0

    goto :goto_0

    :cond_0
    const/4 v12, 0x0

    .local v12, "$z0":Z, ""
    goto :goto_1

    :cond_1
    :goto_0
    const/4 v12, 0x1

    :goto_1
    if-nez v12, :cond_3

    const/4 v11, 0x1

    if-eq v10, v11, :cond_2

    const/4 v11, 0x6

    if-ne v10, v11, :cond_3

    :cond_2
    const/4 v13, 0x1

    .local v13, "$z1":Z, ""
    goto :goto_2

    :cond_3
    const/4 v13, 0x0

    :goto_2
    if-eqz v12, :cond_4

    move-object/from16 v0, p1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v6

    const/4 v11, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v6

    move v3, v7

    move v4, v11

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Lb/a/a/a/b;->a(Landroid/view/MotionEvent;IIILjava/nio/ByteBuffer;)V

    goto :goto_5

    :cond_4
    if-eqz v13, :cond_7

    const/4 v10, 0x0

    :goto_3
    if-ge v10, v6, :cond_6

    move-object/from16 v0, p1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v14

    .local v14, "$i3":I, ""
    if-eq v10, v14, :cond_5

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v14

    const/4 v11, 0x1

    if-ne v14, v11, :cond_5

    const/4 v11, 0x5

    const/4 v15, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v10

    move v3, v11

    move v4, v15

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Lb/a/a/a/b;->a(Landroid/view/MotionEvent;IIILjava/nio/ByteBuffer;)V

    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_6
    move-object/from16 v0, p1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v6

    const/4 v11, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v6

    move v3, v7

    move v4, v11

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Lb/a/a/a/b;->a(Landroid/view/MotionEvent;IIILjava/nio/ByteBuffer;)V

    goto :goto_5

    :cond_7
    const/4 v10, 0x0

    :goto_4
    if-ge v10, v6, :cond_8

    const/4 v11, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v10

    move v3, v7

    move v4, v11

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Lb/a/a/a/b;->a(Landroid/view/MotionEvent;IIILjava/nio/ByteBuffer;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_8
    :goto_5
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    rem-int/lit16 v6, v6, 0xe0

    if-nez v6, :cond_9

    move-object/from16 v0, p0

    .local v0, "$r4":Lio/flutter/embedding/engine/d/c;, ""
    iget-object v0, v0, Lb/a/a/a/b;->a:Lio/flutter/embedding/engine/d/c;

    move-object/from16 v16, v0

    .end local v0    # "$r4":Lio/flutter/embedding/engine/d/c;, ""
    .local v16, "$r4":Lio/flutter/embedding/engine/d/c;, ""
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    move-object/from16 v0, v16

    invoke-virtual {v0, v8, v6}, Lio/flutter/embedding/engine/d/c;->a(Ljava/nio/ByteBuffer;I)V

    const/4 v11, 0x1

    return v11

    :cond_9
    new-instance v17, Ljava/lang/AssertionError;

    .local v17, "$r5":Ljava/lang/AssertionError;, ""
    const-string v18, "Packet position is not on field boundary"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v17
    .end local v10    # "$i2":I, ""
    .end local v13    # "$z1":Z, ""
    .end local v6    # "$i0":I, ""
    .end local v17    # "$r5":Ljava/lang/AssertionError;, ""
    .end local v8    # "$r2":Ljava/nio/ByteBuffer;, ""
    .end local v14    # "$i3":I, ""
    .end local v9    # "$r3":Ljava/nio/ByteOrder;, ""
    .end local v16    # "$r4":Lio/flutter/embedding/engine/d/c;, ""
    .end local v7    # "$i1":I, ""
    .end local v12    # "$z0":Z, ""
.end method

.method public b(Landroid/view/MotionEvent;)Z
    .locals 16

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .local v6, "$i0":I, ""
    const/16 v7, 0x12

    if-lt v6, v7, :cond_0

    const/4 v7, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v8

    .local v8, "$z0":Z, ""
    if-eqz v8, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :goto_0
    move-object/from16 v0, p1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    const/4 v7, 0x7

    if-eq v6, v7, :cond_2

    move-object/from16 v0, p1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_1

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    .local v9, "$z1":Z, ""
    goto :goto_2

    :cond_2
    :goto_1
    const/4 v9, 0x1

    :goto_2
    if-eqz v8, :cond_5

    if-nez v9, :cond_3

    const/4 v7, 0x0

    return v7

    :cond_3
    move-object/from16 v0, p1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lb/a/a/a/b;->a(I)I

    move-result v6

    move-object/from16 v0, p1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v10

    .local v10, "$i1":I, ""
    mul-int/lit8 v10, v10, 0x1c

    mul-int/lit8 v10, v10, 0x8

    invoke-static {v10}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v11

    .local v11, "$r2":Ljava/nio/ByteBuffer;, ""
    sget-object v12, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .local v12, "$r3":Ljava/nio/ByteOrder;, ""
    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-object/from16 v0, p1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v10

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v10

    move v3, v6

    move v4, v7

    move-object v5, v11

    invoke-direct/range {v0 .. v5}, Lb/a/a/a/b;->a(Landroid/view/MotionEvent;IIILjava/nio/ByteBuffer;)V

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    rem-int/lit16 v6, v6, 0xe0

    if-nez v6, :cond_4

    move-object/from16 v0, p0

    .local v13, "$r4":Lio/flutter/embedding/engine/d/c;, ""
    iget-object v13, v0, Lb/a/a/a/b;->a:Lio/flutter/embedding/engine/d/c;

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    invoke-virtual {v13, v11, v6}, Lio/flutter/embedding/engine/d/c;->a(Ljava/nio/ByteBuffer;I)V

    const/4 v7, 0x1

    return v7

    :cond_4
    new-instance v14, Ljava/lang/AssertionError;

    .local v14, "$r5":Ljava/lang/AssertionError;, ""
    const-string v15, "Packet position is not on field boundary."

    invoke-direct {v14, v15}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v14

    :cond_5
    const/4 v7, 0x0

    return v7
    .end local v14    # "$r5":Ljava/lang/AssertionError;, ""
    .end local v6    # "$i0":I, ""
    .end local v8    # "$z0":Z, ""
    .end local v11    # "$r2":Ljava/nio/ByteBuffer;, ""
    .end local v9    # "$z1":Z, ""
    .end local v13    # "$r4":Lio/flutter/embedding/engine/d/c;, ""
    .end local v12    # "$r3":Ljava/nio/ByteOrder;, ""
    .end local v10    # "$i1":I, ""
.end method
