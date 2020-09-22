.class Lio/flutter/embedding/engine/e/k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/a/b/a/m$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/engine/e/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/embedding/engine/e/j;
    }
.end annotation


# instance fields
.field final synthetic a:Lio/flutter/embedding/engine/e/l;


# direct methods
.method constructor <init>(Lio/flutter/embedding/engine/e/l;)V
    .locals 0

    iput-object p1, p0, Lio/flutter/embedding/engine/e/k;->a:Lio/flutter/embedding/engine/e/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b(Lb/a/b/a/k;Lb/a/b/a/m$d;)V
    .locals 39

    move-object/from16 v0, p1

    invoke-virtual {v0}, Lb/a/b/a/k;->a()Ljava/lang/Object;

    move-result-object v9

    .local v9, "$r4":Ljava/lang/Object;, ""
    move-object v11, v9

    check-cast v11, Ljava/util/Map;

    move-object v10, v11

    .local v10, "$r5":Ljava/util/Map;, ""
    new-instance v12, Lio/flutter/embedding/engine/e/l$a;

    .local v12, "$r2":Lio/flutter/embedding/engine/e/l$a;, ""
    const-string v13, "id"

    invoke-interface {v10, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v15, v9

    check-cast v15, Ljava/lang/Integer;

    move-object v14, v15

    .local v14, "$r6":Ljava/lang/Integer;, ""
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .local v16, "$i0":I, ""
    const-string v13, "viewType"

    invoke-interface {v10, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v18, v9

    check-cast v18, Ljava/lang/String;

    move-object/from16 v17, v18

    const-string v13, "width"

    invoke-interface {v10, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v20, v9

    check-cast v20, Ljava/lang/Double;

    move-object/from16 v19, v20

    move-object/from16 v0, v19

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v21

    .local v21, "$d0":D, ""
    const-string v13, "height"

    invoke-interface {v10, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v23, v9

    check-cast v23, Ljava/lang/Double;

    move-object/from16 v19, v23

    .local v19, "$r8":Ljava/lang/Double;, ""
    move-object/from16 v0, v19

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v24

    .local v24, "$d1":D, ""
    const-string v13, "direction"

    invoke-interface {v10, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v26, v9

    check-cast v26, Ljava/lang/Integer;

    move-object/from16 v14, v26

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v27

    .local v27, "$i1":I, ""
    const-string v13, "params"

    invoke-interface {v10, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v28

    .local v28, "$z0":Z, ""
    if-eqz v28, :cond_0

    const-string v13, "params"

    invoke-interface {v10, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v30, v9

    check-cast v30, [B

    move-object/from16 v29, v30

    .local v29, "$r9":[B, ""
    move-object/from16 v0, v29

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v31

    .local v31, "$r10":Ljava/nio/ByteBuffer;, ""
    goto :goto_0

    :cond_0
    const/16 v31, 0x0

    :goto_0
    move-object v0, v12

    move/from16 v1, v16

    move-object/from16 v2, v17

    move-wide/from16 v3, v21

    move-wide/from16 v5, v24

    move/from16 v7, v27

    move-object/from16 v8, v31

    invoke-direct/range {v0 .. v8}, Lio/flutter/embedding/engine/e/l$a;-><init>(ILjava/lang/String;DDILjava/nio/ByteBuffer;)V

    move-object/from16 v0, p0

    .local v0, "$r11":Lio/flutter/embedding/engine/e/l;, ""
    iget-object v0, v0, Lio/flutter/embedding/engine/e/k;->a:Lio/flutter/embedding/engine/e/l;

    move-object/from16 v32, v0

    .end local v0    # "$r11":Lio/flutter/embedding/engine/e/l;, ""
    .local v32, "$r11":Lio/flutter/embedding/engine/e/l;, ""
    :try_start_0
    move-object/from16 v0, v32

    invoke-static {v0}, Lio/flutter/embedding/engine/e/l;->a(Lio/flutter/embedding/engine/e/l;)Lio/flutter/embedding/engine/e/l$d;

    move-result-object v33

    .local v33, "$r12":Lio/flutter/embedding/engine/e/l$d;, ""
    move-object/from16 v0, v33

    invoke-interface {v0, v12}, Lio/flutter/embedding/engine/e/l$d;->a(Lio/flutter/embedding/engine/e/l$a;)J

    move-result-wide v34

    .local v34, "$l2":J, ""
    move-wide/from16 v0, v34

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v36

    .local v36, "$r13":Ljava/lang/Long;, ""
    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lb/a/b/a/m$d;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v37

    .local v37, "$r14":Ljava/lang/IllegalStateException;, ""
    move-object/from16 v0, v37

    invoke-static {v0}, Lio/flutter/embedding/engine/e/l;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v17

    .local v17, "$r7":Ljava/lang/String;, ""
    const-string v13, "error"

    const/16 v38, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move-object/from16 v2, v38

    invoke-interface {v0, v13, v1, v2}, Lb/a/b/a/m$d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
    .end local v33    # "$r12":Lio/flutter/embedding/engine/e/l$d;, ""
    .end local v17    # "$r7":Ljava/lang/String;, ""
    .end local v16    # "$i0":I, ""
    .end local v9    # "$r4":Ljava/lang/Object;, ""
    .end local v36    # "$r13":Ljava/lang/Long;, ""
    .end local v12    # "$r2":Lio/flutter/embedding/engine/e/l$a;, ""
    .end local v29    # "$r9":[B, ""
    .end local v24    # "$d1":D, ""
    .end local v14    # "$r6":Ljava/lang/Integer;, ""
    .end local v10    # "$r5":Ljava/util/Map;, ""
    .end local v27    # "$i1":I, ""
    .end local v32    # "$r11":Lio/flutter/embedding/engine/e/l;, ""
    .end local v31    # "$r10":Ljava/nio/ByteBuffer;, ""
    .end local v28    # "$z0":Z, ""
    .end local v37    # "$r14":Ljava/lang/IllegalStateException;, ""
    .end local v19    # "$r8":Ljava/lang/Double;, ""
    .end local v34    # "$l2":J, ""
    .end local v21    # "$d0":D, ""
.end method

.method private c(Lb/a/b/a/k;Lb/a/b/a/m$d;)V
    .locals 10

    invoke-virtual {p1}, Lb/a/b/a/k;->a()Ljava/lang/Object;

    move-result-object v0

    .local v0, "$r3":Ljava/lang/Object;, ""
    move-object v2, v0

    check-cast v2, Ljava/lang/Integer;

    move-object v1, v2

    .local v1, "$r4":Ljava/lang/Integer;, ""
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .local v3, "$i0":I, ""
    iget-object v4, p0, Lio/flutter/embedding/engine/e/k;->a:Lio/flutter/embedding/engine/e/l;

    .local v4, "$r5":Lio/flutter/embedding/engine/e/l;, ""
    :try_start_0
    invoke-static {v4}, Lio/flutter/embedding/engine/e/l;->a(Lio/flutter/embedding/engine/e/l;)Lio/flutter/embedding/engine/e/l$d;

    move-result-object v5

    .local v5, "$r6":Lio/flutter/embedding/engine/e/l$d;, ""
    invoke-interface {v5, v3}, Lio/flutter/embedding/engine/e/l$d;->a(I)V

    const/4 v6, 0x0

    invoke-interface {p2, v6}, Lb/a/b/a/m$d;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v7

    .local v7, "$r7":Ljava/lang/IllegalStateException;, ""
    invoke-static {v7}, Lio/flutter/embedding/engine/e/l;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v8

    .local v8, "$r8":Ljava/lang/String;, ""
    const-string v9, "error"

    const/4 v6, 0x0

    invoke-interface {p2, v9, v8, v6}, Lb/a/b/a/m$d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
    .end local v3    # "$i0":I, ""
    .end local v1    # "$r4":Ljava/lang/Integer;, ""
    .end local v7    # "$r7":Ljava/lang/IllegalStateException;, ""
    .end local v0    # "$r3":Ljava/lang/Object;, ""
    .end local v5    # "$r6":Lio/flutter/embedding/engine/e/l$d;, ""
    .end local v4    # "$r5":Lio/flutter/embedding/engine/e/l;, ""
    .end local v8    # "$r8":Ljava/lang/String;, ""
.end method

.method private d(Lb/a/b/a/k;Lb/a/b/a/m$d;)V
    .locals 27

    move-object/from16 v0, p1

    invoke-virtual {v0}, Lb/a/b/a/k;->a()Ljava/lang/Object;

    move-result-object v6

    .local v6, "$r4":Ljava/lang/Object;, ""
    move-object v8, v6

    check-cast v8, Ljava/util/Map;

    move-object v7, v8

    .local v7, "$r5":Ljava/util/Map;, ""
    new-instance v9, Lio/flutter/embedding/engine/e/l$b;

    .local v9, "$r2":Lio/flutter/embedding/engine/e/l$b;, ""
    const-string v10, "id"

    invoke-interface {v7, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v12, v6

    check-cast v12, Ljava/lang/Integer;

    move-object v11, v12

    .local v11, "$r6":Ljava/lang/Integer;, ""
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .local v13, "$i0":I, ""
    const-string v10, "width"

    invoke-interface {v7, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v15, v6

    check-cast v15, Ljava/lang/Double;

    move-object v14, v15

    .local v14, "$r7":Ljava/lang/Double;, ""
    invoke-virtual {v14}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v16

    .local v16, "$d0":D, ""
    const-string v10, "height"

    invoke-interface {v7, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v18, v6

    check-cast v18, Ljava/lang/Double;

    move-object/from16 v14, v18

    invoke-virtual {v14}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v19

    .local v19, "$d1":D, ""
    move-object v0, v9

    move v1, v13

    move-wide/from16 v2, v16

    move-wide/from16 v4, v19

    invoke-direct/range {v0 .. v5}, Lio/flutter/embedding/engine/e/l$b;-><init>(IDD)V

    move-object/from16 v0, p0

    .local v0, "$r8":Lio/flutter/embedding/engine/e/l;, ""
    iget-object v0, v0, Lio/flutter/embedding/engine/e/k;->a:Lio/flutter/embedding/engine/e/l;

    move-object/from16 v21, v0

    .end local v0    # "$r8":Lio/flutter/embedding/engine/e/l;, ""
    .local v21, "$r8":Lio/flutter/embedding/engine/e/l;, ""
    :try_start_0
    move-object/from16 v0, v21

    invoke-static {v0}, Lio/flutter/embedding/engine/e/l;->a(Lio/flutter/embedding/engine/e/l;)Lio/flutter/embedding/engine/e/l$d;

    move-result-object v22
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .local v22, "$r9":Lio/flutter/embedding/engine/e/l$d;, ""
    new-instance v23, Lio/flutter/embedding/engine/e/j;

    .local v23, "$r10":Lio/flutter/embedding/engine/e/j;, ""
    :try_start_1
    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lio/flutter/embedding/engine/e/j;-><init>(Lio/flutter/embedding/engine/e/k;Lb/a/b/a/m$d;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v0, v9, v1}, Lio/flutter/embedding/engine/e/l$d;->a(Lio/flutter/embedding/engine/e/l$b;Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v24

    .local v24, "$r11":Ljava/lang/IllegalStateException;, ""
    move-object/from16 v0, v24

    invoke-static {v0}, Lio/flutter/embedding/engine/e/l;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v25

    .local v25, "$r12":Ljava/lang/String;, ""
    const-string v10, "error"

    const/16 v26, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v10, v1, v2}, Lb/a/b/a/m$d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
    .end local v14    # "$r7":Ljava/lang/Double;, ""
    .end local v25    # "$r12":Ljava/lang/String;, ""
    .end local v19    # "$d1":D, ""
    .end local v23    # "$r10":Lio/flutter/embedding/engine/e/j;, ""
    .end local v6    # "$r4":Ljava/lang/Object;, ""
    .end local v13    # "$i0":I, ""
    .end local v9    # "$r2":Lio/flutter/embedding/engine/e/l$b;, ""
    .end local v7    # "$r5":Ljava/util/Map;, ""
    .end local v16    # "$d0":D, ""
    .end local v11    # "$r6":Ljava/lang/Integer;, ""
    .end local v24    # "$r11":Ljava/lang/IllegalStateException;, ""
    .end local v21    # "$r8":Lio/flutter/embedding/engine/e/l;, ""
    .end local v22    # "$r9":Lio/flutter/embedding/engine/e/l$d;, ""
.end method

.method private e(Lb/a/b/a/k;Lb/a/b/a/m$d;)V
    .locals 60

    move-object/from16 v0, p1

    invoke-virtual {v0}, Lb/a/b/a/k;->a()Ljava/lang/Object;

    move-result-object v16

    .local v16, "$r3":Ljava/lang/Object;, ""
    move-object/from16 v18, v16

    check-cast v18, Ljava/util/List;

    move-object/from16 v17, v18

    new-instance v19, Lio/flutter/embedding/engine/e/l$c;

    .local v19, "$r5":Lio/flutter/embedding/engine/e/l$c;, ""
    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v22, v16

    check-cast v22, Ljava/lang/Integer;

    move-object/from16 v21, v22

    move-object/from16 v0, v21

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v23

    .local v23, "$i0":I, ""
    const/16 v20, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v25, v16

    check-cast v25, Ljava/lang/Number;

    move-object/from16 v24, v25

    const/16 v20, 0x2

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v27, v16

    check-cast v27, Ljava/lang/Number;

    move-object/from16 v26, v27

    const/16 v20, 0x3

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v28, v16

    check-cast v28, Ljava/lang/Integer;

    move-object/from16 v21, v28

    move-object/from16 v0, v21

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v29

    .local v29, "$i1":I, ""
    const/16 v20, 0x4

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v30, v16

    check-cast v30, Ljava/lang/Integer;

    move-object/from16 v21, v30

    .local v21, "$r6":Ljava/lang/Integer;, ""
    move-object/from16 v0, v21

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v31

    .local v31, "$i2":I, ""
    const/16 v20, 0x5

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    const/16 v20, 0x6

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v32

    .local v32, "$r9":Ljava/lang/Object;, ""
    const/16 v20, 0x7

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v33

    .local v33, "$r10":Ljava/lang/Object;, ""
    move-object/from16 v34, v33

    check-cast v34, Ljava/lang/Integer;

    move-object/from16 v21, v34

    move-object/from16 v0, v21

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v35

    .local v35, "$i3":I, ""
    const/16 v20, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v33

    move-object/from16 v36, v33

    check-cast v36, Ljava/lang/Integer;

    move-object/from16 v21, v36

    move-object/from16 v0, v21

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v37

    .local v37, "$i4":I, ""
    const/16 v20, 0x9

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v33

    move-object/from16 v39, v33

    check-cast v39, Ljava/lang/Double;

    move-object/from16 v38, v39

    .local v38, "$r11":Ljava/lang/Double;, ""
    move-object/from16 v0, v38

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v40

    .local v40, "$d0":D, ""
    move-wide/from16 v0, v40

    .local v0, "$f0":F, ""
    double-to-float v0, v0

    move/from16 v42, v0

    .end local v0    # "$f0":F, ""
    .local v42, "$f0":F, ""
    const/16 v20, 0xa

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v33

    move-object/from16 v43, v33

    check-cast v43, Ljava/lang/Double;

    move-object/from16 v38, v43

    move-object/from16 v0, v38

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v40

    move-wide/from16 v0, v40

    .local v0, "$f1":F, ""
    double-to-float v0, v0

    move/from16 v44, v0

    .end local v0    # "$f1":F, ""
    .local v44, "$f1":F, ""
    const/16 v20, 0xb

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v33

    move-object/from16 v45, v33

    check-cast v45, Ljava/lang/Integer;

    move-object/from16 v21, v45

    move-object/from16 v0, v21

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v46

    .local v46, "$i5":I, ""
    const/16 v20, 0xc

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v33

    move-object/from16 v47, v33

    check-cast v47, Ljava/lang/Integer;

    move-object/from16 v21, v47

    move-object/from16 v0, v21

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v48

    .local v48, "$i6":I, ""
    const/16 v20, 0xd

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v33

    move-object/from16 v49, v33

    check-cast v49, Ljava/lang/Integer;

    move-object/from16 v21, v49

    move-object/from16 v0, v21

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v50

    .local v50, "$i7":I, ""
    const/16 v20, 0xe

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v33

    move-object/from16 v51, v33

    check-cast v51, Ljava/lang/Integer;

    move-object/from16 v21, v51

    move-object/from16 v0, v21

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v52

    .local v52, "$i8":I, ""
    move-object/from16 v0, v19

    move/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v26

    move/from16 v4, v29

    move/from16 v5, v31

    move-object/from16 v6, v16

    move-object/from16 v7, v32

    move/from16 v8, v35

    move/from16 v9, v37

    move/from16 v10, v42

    move/from16 v11, v44

    move/from16 v12, v46

    move/from16 v13, v48

    move/from16 v14, v50

    move/from16 v15, v52

    invoke-direct/range {v0 .. v15}, Lio/flutter/embedding/engine/e/l$c;-><init>(ILjava/lang/Number;Ljava/lang/Number;IILjava/lang/Object;Ljava/lang/Object;IIFFIIII)V

    move-object/from16 v0, p0

    .local v0, "$r12":Lio/flutter/embedding/engine/e/l;, ""
    iget-object v0, v0, Lio/flutter/embedding/engine/e/k;->a:Lio/flutter/embedding/engine/e/l;

    move-object/from16 v53, v0

    .end local v0    # "$r12":Lio/flutter/embedding/engine/e/l;, ""
    .local v53, "$r12":Lio/flutter/embedding/engine/e/l;, ""
    :try_start_0
    move-object/from16 v0, v53

    invoke-static {v0}, Lio/flutter/embedding/engine/e/l;->a(Lio/flutter/embedding/engine/e/l;)Lio/flutter/embedding/engine/e/l$d;

    move-result-object v54

    .local v54, "$r13":Lio/flutter/embedding/engine/e/l$d;, ""
    move-object/from16 v0, v54

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lio/flutter/embedding/engine/e/l$d;->a(Lio/flutter/embedding/engine/e/l$c;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v55, p2

    .local v55, "$r14":Lb/a/b/a/m$d;, ""
    :try_start_1
    const/16 v56, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v56

    invoke-interface {v0, v1}, Lb/a/b/a/m$d;->a(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v57

    .local v57, "$r15":Ljava/lang/IllegalStateException;, ""
    goto :goto_0

    :catch_1
    move-exception v57

    move-object/from16 v55, p2

    :goto_0
    move-object/from16 v0, v57

    invoke-static {v0}, Lio/flutter/embedding/engine/e/l;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v58

    .local v58, "$r16":Ljava/lang/String;, ""
    const-string v59, "error"

    const/16 v56, 0x0

    move-object/from16 v0, v55

    move-object/from16 v1, v59

    move-object/from16 v2, v58

    move-object/from16 v3, v56

    invoke-interface {v0, v1, v2, v3}, Lb/a/b/a/m$d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
    .end local v48    # "$i6":I, ""
    .end local v57    # "$r15":Ljava/lang/IllegalStateException;, ""
    .end local v35    # "$i3":I, ""
    .end local v29    # "$i1":I, ""
    .end local v53    # "$r12":Lio/flutter/embedding/engine/e/l;, ""
    .end local v44    # "$f1":F, ""
    .end local v21    # "$r6":Ljava/lang/Integer;, ""
    .end local v31    # "$i2":I, ""
    .end local v58    # "$r16":Ljava/lang/String;, ""
    .end local v40    # "$d0":D, ""
    .end local v50    # "$i7":I, ""
    .end local v33    # "$r10":Ljava/lang/Object;, ""
    .end local v19    # "$r5":Lio/flutter/embedding/engine/e/l$c;, ""
    .end local v42    # "$f0":F, ""
    .end local v37    # "$i4":I, ""
    .end local v32    # "$r9":Ljava/lang/Object;, ""
    .end local v52    # "$i8":I, ""
    .end local v38    # "$r11":Ljava/lang/Double;, ""
    .end local v46    # "$i5":I, ""
    .end local v23    # "$i0":I, ""
    .end local v54    # "$r13":Lio/flutter/embedding/engine/e/l$d;, ""
    .end local v55    # "$r14":Lb/a/b/a/m$d;, ""
    .end local v16    # "$r3":Ljava/lang/Object;, ""
.end method

.method private f(Lb/a/b/a/k;Lb/a/b/a/m$d;)V
    .locals 15

    move-object/from16 v0, p1

    invoke-virtual {v0}, Lb/a/b/a/k;->a()Ljava/lang/Object;

    move-result-object v1

    .local v1, "$r3":Ljava/lang/Object;, ""
    move-object v3, v1

    check-cast v3, Ljava/util/Map;

    move-object v2, v3

    .local v2, "$r4":Ljava/util/Map;, ""
    const-string v4, "id"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ljava/lang/Integer;

    move-object v5, v6

    .local v5, "$r5":Ljava/lang/Integer;, ""
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .local v7, "$i0":I, ""
    const-string v4, "direction"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Ljava/lang/Integer;

    move-object v5, v8

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .local v9, "$i1":I, ""
    iget-object v10, p0, Lio/flutter/embedding/engine/e/k;->a:Lio/flutter/embedding/engine/e/l;

    .local v10, "$r6":Lio/flutter/embedding/engine/e/l;, ""
    :try_start_0
    invoke-static {v10}, Lio/flutter/embedding/engine/e/l;->a(Lio/flutter/embedding/engine/e/l;)Lio/flutter/embedding/engine/e/l$d;

    move-result-object v11

    .local v11, "$r7":Lio/flutter/embedding/engine/e/l$d;, ""
    invoke-interface {v11, v7, v9}, Lio/flutter/embedding/engine/e/l$d;->a(II)V

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Lb/a/b/a/m$d;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v13

    .local v13, "$r8":Ljava/lang/IllegalStateException;, ""
    invoke-static {v13}, Lio/flutter/embedding/engine/e/l;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v14

    .local v14, "$r9":Ljava/lang/String;, ""
    const-string v4, "error"

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v4, v14, v12}, Lb/a/b/a/m$d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
    .end local v13    # "$r8":Ljava/lang/IllegalStateException;, ""
    .end local v14    # "$r9":Ljava/lang/String;, ""
    .end local v9    # "$i1":I, ""
    .end local v2    # "$r4":Ljava/util/Map;, ""
    .end local v1    # "$r3":Ljava/lang/Object;, ""
    .end local v11    # "$r7":Lio/flutter/embedding/engine/e/l$d;, ""
    .end local v5    # "$r5":Ljava/lang/Integer;, ""
    .end local v10    # "$r6":Lio/flutter/embedding/engine/e/l;, ""
    .end local v7    # "$i0":I, ""
.end method

.method private g(Lb/a/b/a/k;Lb/a/b/a/m$d;)V
    .locals 10

    invoke-virtual {p1}, Lb/a/b/a/k;->a()Ljava/lang/Object;

    move-result-object v0

    .local v0, "$r3":Ljava/lang/Object;, ""
    move-object v2, v0

    check-cast v2, Ljava/lang/Integer;

    move-object v1, v2

    .local v1, "$r4":Ljava/lang/Integer;, ""
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .local v3, "$i0":I, ""
    iget-object v4, p0, Lio/flutter/embedding/engine/e/k;->a:Lio/flutter/embedding/engine/e/l;

    .local v4, "$r5":Lio/flutter/embedding/engine/e/l;, ""
    :try_start_0
    invoke-static {v4}, Lio/flutter/embedding/engine/e/l;->a(Lio/flutter/embedding/engine/e/l;)Lio/flutter/embedding/engine/e/l$d;

    move-result-object v5

    .local v5, "$r6":Lio/flutter/embedding/engine/e/l$d;, ""
    invoke-interface {v5, v3}, Lio/flutter/embedding/engine/e/l$d;->b(I)V

    const/4 v6, 0x0

    invoke-interface {p2, v6}, Lb/a/b/a/m$d;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v7

    .local v7, "$r7":Ljava/lang/IllegalStateException;, ""
    invoke-static {v7}, Lio/flutter/embedding/engine/e/l;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v8

    .local v8, "$r8":Ljava/lang/String;, ""
    const-string v9, "error"

    const/4 v6, 0x0

    invoke-interface {p2, v9, v8, v6}, Lb/a/b/a/m$d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
    .end local v7    # "$r7":Ljava/lang/IllegalStateException;, ""
    .end local v0    # "$r3":Ljava/lang/Object;, ""
    .end local v3    # "$i0":I, ""
    .end local v8    # "$r8":Ljava/lang/String;, ""
    .end local v1    # "$r4":Ljava/lang/Integer;, ""
    .end local v5    # "$r6":Lio/flutter/embedding/engine/e/l$d;, ""
    .end local v4    # "$r5":Lio/flutter/embedding/engine/e/l;, ""
.end method


# virtual methods
.method public a(Lb/a/b/a/k;Lb/a/b/a/m$d;)V
    .locals 8

    iget-object v0, p0, Lio/flutter/embedding/engine/e/k;->a:Lio/flutter/embedding/engine/e/l;

    .local v0, "$r3":Lio/flutter/embedding/engine/e/l;, ""
    invoke-static {v0}, Lio/flutter/embedding/engine/e/l;->a(Lio/flutter/embedding/engine/e/l;)Lio/flutter/embedding/engine/e/l$d;

    move-result-object v1

    .local v1, "$r4":Lio/flutter/embedding/engine/e/l$d;, ""
    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .local v2, "$r5":Ljava/lang/StringBuilder;, ""
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lb/a/b/a/k;->a:Ljava/lang/String;

    .local v4, "$r6":Ljava/lang/String;, ""
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' message."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v3, "PlatformViewsChannel"

    invoke-static {v3, v4}, Lb/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p1, Lb/a/b/a/k;->a:Ljava/lang/String;

    const/4 v5, -0x1

    .local v5, "$b0":B, ""
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    .local v6, "$i1":I, ""
    sparse-switch v6, :sswitch_data_0

    goto :goto_0

    :goto_0
    goto :goto_1

    :sswitch_0
    const-string v3, "dispose"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .local v7, "$z0":Z, ""
    if-eqz v7, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :sswitch_1
    const-string v3, "setDirection"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v5, 0x4

    goto :goto_1

    :sswitch_2
    const-string v3, "touch"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v5, 0x3

    goto :goto_1

    :sswitch_3
    const-string v3, "clearFocus"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v5, 0x5

    goto :goto_1

    :sswitch_4
    const-string v3, "resize"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v5, 0x2

    goto :goto_1

    :sswitch_5
    const-string v3, "create"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v5, 0x0

    :cond_1
    :goto_1
    sparse-switch v5, :sswitch_data_1

    goto :goto_2

    :goto_2
    invoke-interface {p2}, Lb/a/b/a/m$d;->a()V

    return-void

    :sswitch_6
    invoke-direct {p0, p1, p2}, Lio/flutter/embedding/engine/e/k;->g(Lb/a/b/a/k;Lb/a/b/a/m$d;)V

    return-void

    :sswitch_7
    invoke-direct {p0, p1, p2}, Lio/flutter/embedding/engine/e/k;->f(Lb/a/b/a/k;Lb/a/b/a/m$d;)V

    return-void

    :sswitch_8
    invoke-direct {p0, p1, p2}, Lio/flutter/embedding/engine/e/k;->e(Lb/a/b/a/k;Lb/a/b/a/m$d;)V

    return-void

    :sswitch_9
    invoke-direct {p0, p1, p2}, Lio/flutter/embedding/engine/e/k;->d(Lb/a/b/a/k;Lb/a/b/a/m$d;)V

    return-void

    :sswitch_a
    invoke-direct {p0, p1, p2}, Lio/flutter/embedding/engine/e/k;->c(Lb/a/b/a/k;Lb/a/b/a/m$d;)V

    return-void

    :sswitch_b
    invoke-direct {p0, p1, p2}, Lio/flutter/embedding/engine/e/k;->b(Lb/a/b/a/k;Lb/a/b/a/m$d;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x509a5f04 -> :sswitch_5
        -0x37b2634c -> :sswitch_4
        -0x2d106975 -> :sswitch_3
        0x696df3f -> :sswitch_2
        0x2261393d -> :sswitch_1
        0x63a5261f -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_b
        0x1 -> :sswitch_a
        0x2 -> :sswitch_9
        0x3 -> :sswitch_8
        0x4 -> :sswitch_7
        0x5 -> :sswitch_6
    .end sparse-switch
    .end local v5    # "$b0":B, ""
    .end local v6    # "$i1":I, ""
    .end local v7    # "$z0":Z, ""
    .end local v0    # "$r3":Lio/flutter/embedding/engine/e/l;, ""
    .end local v1    # "$r4":Lio/flutter/embedding/engine/e/l$d;, ""
    .end local v2    # "$r5":Ljava/lang/StringBuilder;, ""
    .end local v4    # "$r6":Ljava/lang/String;, ""
.end method
