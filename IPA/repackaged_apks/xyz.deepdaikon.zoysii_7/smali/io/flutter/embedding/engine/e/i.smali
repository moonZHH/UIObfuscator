.class public Lio/flutter/embedding/engine/e/i;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/embedding/engine/e/i$i;,
        Lio/flutter/embedding/engine/e/i$h;,
        Lio/flutter/embedding/engine/e/i$g;,
        Lio/flutter/embedding/engine/e/i$f;,
        Lio/flutter/embedding/engine/e/i$e;,
        Lio/flutter/embedding/engine/e/i$d;,
        Lio/flutter/embedding/engine/e/i$c;,
        Lio/flutter/embedding/engine/e/i$b;,
        Lio/flutter/embedding/engine/e/i$a;,
        Lio/flutter/embedding/engine/e/h;,
        Lio/flutter/embedding/engine/e/g;
    }
.end annotation


# instance fields
.field public final a:Lb/a/b/a/m;

.field private b:Lio/flutter/embedding/engine/e/i$f;

.field protected final c:Lb/a/b/a/m$c;


# direct methods
.method public constructor <init>(Lio/flutter/embedding/engine/a/b;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/flutter/embedding/engine/e/g;

    .local v0, "$r3":Lio/flutter/embedding/engine/e/g;, ""
    invoke-direct {v0, p0}, Lio/flutter/embedding/engine/e/g;-><init>(Lio/flutter/embedding/engine/e/i;)V

    iput-object v0, p0, Lio/flutter/embedding/engine/e/i;->c:Lb/a/b/a/m$c;

    new-instance v1, Lb/a/b/a/m;

    .local v1, "$r4":Lb/a/b/a/m;, ""
    sget-object v2, Lb/a/b/a/h;->a:Lb/a/b/a/h;

    .local v2, "$r1":Lb/a/b/a/h;, ""
    const-string v3, "flutter/platform"

    invoke-direct {v1, p1, v3, v2}, Lb/a/b/a/m;-><init>(Lb/a/b/a/e;Ljava/lang/String;Lb/a/b/a/n;)V

    iput-object v1, p0, Lio/flutter/embedding/engine/e/i;->a:Lb/a/b/a/m;

    iget-object v1, p0, Lio/flutter/embedding/engine/e/i;->a:Lb/a/b/a/m;

    iget-object v4, p0, Lio/flutter/embedding/engine/e/i;->c:Lb/a/b/a/m$c;

    .local v4, "$r5":Lb/a/b/a/m$c;, ""
    invoke-virtual {v1, v4}, Lb/a/b/a/m;->a(Lb/a/b/a/m$c;)V

    return-void
    .end local v4    # "$r5":Lb/a/b/a/m$c;, ""
    .end local v1    # "$r4":Lb/a/b/a/m;, ""
    .end local v0    # "$r3":Lio/flutter/embedding/engine/e/g;, ""
    .end local v2    # "$r1":Lb/a/b/a/h;, ""
.end method

.method static synthetic a(Lio/flutter/embedding/engine/e/i;Lorg/json/JSONArray;)I
    .locals 1

    invoke-direct {p0, p1}, Lio/flutter/embedding/engine/e/i;->a(Lorg/json/JSONArray;)I

    move-result v0

    .local v0, "$i0":I, ""
    return v0
    .end local v0    # "$i0":I, ""
.end method

.method private a(Lorg/json/JSONArray;)I
    .locals 12

    const/4 v0, 0x0

    .local v0, "$i0":I, ""
    const/4 v1, 0x0

    .local v1, "$b1":B, ""
    const/4 v2, 0x0

    .local v2, "$b2":B, ""
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    .local v3, "$i3":I, ""
    if-ge v0, v3, :cond_1

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .local v4, "$r3":Ljava/lang/String;, ""
    invoke-static {v4}, Lio/flutter/embedding/engine/e/i$d;->a(Ljava/lang/String;)Lio/flutter/embedding/engine/e/i$d;

    move-result-object v5

    .local v5, "$r4":Lio/flutter/embedding/engine/e/i$d;, ""
    sget-object v6, Lio/flutter/embedding/engine/e/h;->a:[I

    .local v6, "$r1":[I, ""
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v6, v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_1

    :goto_1
    goto :goto_2

    :sswitch_0
    const/16 v7, 0x8

    or-int v8, v1, v7

    int-to-byte v1, v8

    .end local v1    # "$b1":B, ""
    .local v3, "$b1":B, ""
    goto :goto_2

    :sswitch_1
    const/4 v7, 0x2

    or-int v9, v1, v7

    int-to-byte v1, v9

    goto :goto_2

    :sswitch_2
    const/4 v7, 0x4

    or-int v10, v1, v7

    int-to-byte v1, v10

    goto :goto_2

    :sswitch_3
    const/4 v7, 0x1

    or-int v11, v1, v7

    int-to-byte v1, v11

    :goto_2
    if-nez v2, :cond_0

    move v2, v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sparse-switch v1, :sswitch_data_1

    goto :goto_3

    :goto_3
    const/4 v7, 0x1

    return v7

    :sswitch_4
    const/16 v7, 0xd

    return v7

    :sswitch_5
    const/4 v7, 0x2

    return v7

    :sswitch_6
    const/16 v7, 0xb

    return v7

    :sswitch_7
    const/16 v7, 0x8

    return v7

    :sswitch_8
    const/16 v7, 0xc

    return v7

    :sswitch_9
    const/16 v7, 0x9

    return v7

    :sswitch_a
    const/4 v7, 0x4

    if-eq v2, v7, :cond_3

    const/16 v7, 0x8

    if-eq v2, v7, :cond_2

    sparse-switch v2, :sswitch_data_2

    goto :goto_4

    :goto_4
    const/4 v7, 0x1

    return v7

    :sswitch_b
    const/4 v7, 0x0

    return v7

    :sswitch_c
    const/4 v7, 0x1

    return v7

    :cond_2
    const/16 v7, 0x8

    return v7

    :cond_3
    const/16 v7, 0x9

    return v7

    :sswitch_d
    const/4 v7, 0x0

    return v7

    :sswitch_e
    const/4 v7, 0x1

    return v7

    :sswitch_f
    const/4 v7, -0x1

    return v7

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_2
        0x3 -> :sswitch_1
        0x4 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_f
        0x1 -> :sswitch_e
        0x2 -> :sswitch_d
        0x3 -> :sswitch_a
        0x4 -> :sswitch_9
        0x5 -> :sswitch_8
        0x6 -> :sswitch_a
        0x7 -> :sswitch_a
        0x8 -> :sswitch_7
        0x9 -> :sswitch_a
        0xa -> :sswitch_6
        0xb -> :sswitch_5
        0xc -> :sswitch_a
        0xd -> :sswitch_a
        0xe -> :sswitch_a
        0xf -> :sswitch_4
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x1 -> :sswitch_c
        0x2 -> :sswitch_b
    .end sparse-switch
    .end local v4    # "$r3":Ljava/lang/String;, ""
    .end local v2    # "$b2":B, ""
    .end local v6    # "$r1":[I, ""
    .end local v0    # "$i0":I, ""
    .end local v5    # "$r4":Lio/flutter/embedding/engine/e/i$d;, ""
    .end local v3    # "$b1":B, ""
    .end local v3
.end method

.method static synthetic a(Lio/flutter/embedding/engine/e/i;Lorg/json/JSONObject;)Lio/flutter/embedding/engine/e/i$a;
    .locals 1

    invoke-direct {p0, p1}, Lio/flutter/embedding/engine/e/i;->a(Lorg/json/JSONObject;)Lio/flutter/embedding/engine/e/i$a;

    move-result-object v0

    .local v0, "$r1":Lio/flutter/embedding/engine/e/i$a;, ""
    return-object v0
    .end local v0    # "$r1":Lio/flutter/embedding/engine/e/i$a;, ""
.end method

.method private a(Lorg/json/JSONObject;)Lio/flutter/embedding/engine/e/i$a;
    .locals 6

    const-string v1, "primaryColor"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .local v0, "$i0":I, ""
    move v2, v0

    .local v2, "$i1":I, ""
    if-eqz v0, :cond_0

    const v3, -0x1000000

    or-int v2, v0, v3

    :cond_0
    const-string v1, "label"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, "$r2":Ljava/lang/String;, ""
    new-instance v5, Lio/flutter/embedding/engine/e/i$a;

    .local v5, "$r3":Lio/flutter/embedding/engine/e/i$a;, ""
    invoke-direct {v5, v2, v4}, Lio/flutter/embedding/engine/e/i$a;-><init>(ILjava/lang/String;)V

    return-object v5
    .end local v4    # "$r2":Ljava/lang/String;, ""
    .end local v2    # "$i1":I, ""
    .end local v0    # "$i0":I, ""
    .end local v5    # "$r3":Lio/flutter/embedding/engine/e/i$a;, ""
.end method

.method static synthetic a(Lio/flutter/embedding/engine/e/i;)Lio/flutter/embedding/engine/e/i$f;
    .locals 1

    iget-object v0, p0, Lio/flutter/embedding/engine/e/i;->b:Lio/flutter/embedding/engine/e/i$f;

    .local v0, "r1":Lio/flutter/embedding/engine/e/i$f;, ""
    return-object v0
    .end local v0    # "r1":Lio/flutter/embedding/engine/e/i$f;, ""
.end method

.method static synthetic a(Lio/flutter/embedding/engine/e/i;Ljava/util/List;)Ljava/util/ArrayList;
    .locals 1

    invoke-direct {p0, p1}, Lio/flutter/embedding/engine/e/i;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    .local v0, "$r1":Ljava/util/ArrayList;, ""
    return-object v0
    .end local v0    # "$r1":Ljava/util/ArrayList;, ""
.end method

.method private a(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Rect;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    .local v0, "$r1":Ljava/util/ArrayList;, ""
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "$r4":Ljava/util/Iterator;, ""
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    .local v2, "$z0":Z, ""
    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "$r5":Ljava/lang/Object;, ""
    move-object v5, v3

    check-cast v5, Landroid/graphics/Rect;

    move-object v4, v5

    .local v4, "$r6":Landroid/graphics/Rect;, ""
    new-instance v6, Ljava/util/HashMap;

    .local v6, "$r2":Ljava/util/HashMap;, ""
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iget v7, v4, Landroid/graphics/Rect;->top:I

    .local v7, "$i0":I, ""
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .local v8, "$r7":Ljava/lang/Integer;, ""
    const-string v9, "top"

    invoke-virtual {v6, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v7, v4, Landroid/graphics/Rect;->right:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "right"

    invoke-virtual {v6, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v7, v4, Landroid/graphics/Rect;->bottom:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "bottom"

    invoke-virtual {v6, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v7, v4, Landroid/graphics/Rect;->left:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "left"

    invoke-virtual {v6, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
    .end local v1    # "$r4":Ljava/util/Iterator;, ""
    .end local v3    # "$r5":Ljava/lang/Object;, ""
    .end local v7    # "$i0":I, ""
    .end local v2    # "$z0":Z, ""
    .end local v8    # "$r7":Ljava/lang/Integer;, ""
    .end local v0    # "$r1":Ljava/util/ArrayList;, ""
    .end local v6    # "$r2":Ljava/util/HashMap;, ""
    .end local v4    # "$r6":Landroid/graphics/Rect;, ""
.end method

.method static synthetic b(Lio/flutter/embedding/engine/e/i;Lorg/json/JSONObject;)Lio/flutter/embedding/engine/e/i$h;
    .locals 1

    invoke-direct {p0, p1}, Lio/flutter/embedding/engine/e/i;->b(Lorg/json/JSONObject;)Lio/flutter/embedding/engine/e/i$h;

    move-result-object v0

    .local v0, "$r1":Lio/flutter/embedding/engine/e/i$h;, ""
    return-object v0
    .end local v0    # "$r1":Lio/flutter/embedding/engine/e/i$h;, ""
.end method

.method private b(Lorg/json/JSONObject;)Lio/flutter/embedding/engine/e/i$h;
    .locals 16

    const-string v7, "systemNavigationBarIconBrightness"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    .local v6, "$z0":Z, ""
    const/4 v8, 0x0

    .local v8, "$r2":Ljava/lang/Integer;, ""
    if-nez v6, :cond_0

    const-string v7, "systemNavigationBarIconBrightness"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .local v9, "$r3":Ljava/lang/String;, ""
    invoke-static {v9}, Lio/flutter/embedding/engine/e/i$b;->a(Ljava/lang/String;)Lio/flutter/embedding/engine/e/i$b;

    move-result-object v10

    .local v10, "$r4":Lio/flutter/embedding/engine/e/i$b;, ""
    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    :goto_0
    const-string v7, "systemNavigationBarColor"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v7, "systemNavigationBarColor"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    .local v11, "$i0":I, ""
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .local v12, "$r5":Ljava/lang/Integer;, ""
    goto :goto_1

    :cond_1
    const/4 v12, 0x0

    :goto_1
    const-string v7, "statusBarIconBrightness"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v7, "statusBarIconBrightness"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lio/flutter/embedding/engine/e/i$b;->a(Ljava/lang/String;)Lio/flutter/embedding/engine/e/i$b;

    move-result-object v13

    .local v13, "$r6":Lio/flutter/embedding/engine/e/i$b;, ""
    goto :goto_2

    :cond_2
    const/4 v13, 0x0

    :goto_2
    const-string v7, "statusBarColor"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v7, "statusBarColor"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .local v14, "$r7":Ljava/lang/Integer;, ""
    goto :goto_3

    :cond_3
    const/4 v14, 0x0

    :goto_3
    const-string v7, "systemNavigationBarDividerColor"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v7, "systemNavigationBarDividerColor"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    :cond_4
    new-instance v15, Lio/flutter/embedding/engine/e/i$h;

    .local v15, "$r8":Lio/flutter/embedding/engine/e/i$h;, ""
    move-object v0, v15

    move-object v1, v14

    move-object v2, v13

    move-object v3, v12

    move-object v4, v10

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Lio/flutter/embedding/engine/e/i$h;-><init>(Ljava/lang/Integer;Lio/flutter/embedding/engine/e/i$b;Ljava/lang/Integer;Lio/flutter/embedding/engine/e/i$b;Ljava/lang/Integer;)V

    return-object v15
    .end local v6    # "$z0":Z, ""
    .end local v12    # "$r5":Ljava/lang/Integer;, ""
    .end local v13    # "$r6":Lio/flutter/embedding/engine/e/i$b;, ""
    .end local v11    # "$i0":I, ""
    .end local v9    # "$r3":Ljava/lang/String;, ""
    .end local v15    # "$r8":Lio/flutter/embedding/engine/e/i$h;, ""
    .end local v8    # "$r2":Ljava/lang/Integer;, ""
    .end local v14    # "$r7":Ljava/lang/Integer;, ""
    .end local v10    # "$r4":Lio/flutter/embedding/engine/e/i$b;, ""
.end method

.method private b(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    .local v0, "$r3":Ljava/util/ArrayList;, ""
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .local v1, "$i0":I, ""
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    .local v2, "$i1":I, ""
    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .local v3, "$r4":Lorg/json/JSONObject;, ""
    :try_start_0
    const-string v4, "top"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v4, "right"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .local v5, "$i2":I, ""
    const-string v4, "bottom"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    .local v6, "$i3":I, ""
    const-string v4, "left"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .local v7, "$i4":I, ""
    new-instance v8, Landroid/graphics/Rect;

    .local v8, "$r5":Landroid/graphics/Rect;, ""
    invoke-direct {v8, v7, v2, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :goto_1
    new-instance v9, Lorg/json/JSONException;

    .local v9, "$r1":Lorg/json/JSONException;, ""
    const-string v4, "Incorrect JSON data shape. To set system gesture exclusion rects, \na JSONObject with top, right, bottom and left values need to be set to int values."

    invoke-direct {v9, v4}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v9

    :catch_0
    move-exception v9

    goto :goto_1

    :cond_0
    return-object v0
    .end local v0    # "$r3":Ljava/util/ArrayList;, ""
    .end local v3    # "$r4":Lorg/json/JSONObject;, ""
    .end local v7    # "$i4":I, ""
    .end local v9    # "$r1":Lorg/json/JSONException;, ""
    .end local v6    # "$i3":I, ""
    .end local v8    # "$r5":Landroid/graphics/Rect;, ""
    .end local v1    # "$i0":I, ""
    .end local v2    # "$i1":I, ""
    .end local v5    # "$i2":I, ""
.end method

.method static synthetic b(Lio/flutter/embedding/engine/e/i;Lorg/json/JSONArray;)Ljava/util/List;
    .locals 1

    invoke-direct {p0, p1}, Lio/flutter/embedding/engine/e/i;->c(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    .local v0, "$r1":Ljava/util/List;, ""
    return-object v0
    .end local v0    # "$r1":Ljava/util/List;, ""
.end method

.method static synthetic c(Lio/flutter/embedding/engine/e/i;Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 1

    invoke-direct {p0, p1}, Lio/flutter/embedding/engine/e/i;->b(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    .local v0, "$r1":Ljava/util/ArrayList;, ""
    return-object v0
    .end local v0    # "$r1":Ljava/util/ArrayList;, ""
.end method

.method private c(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Lio/flutter/embedding/engine/e/i$i;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    .local v0, "$r2":Ljava/util/ArrayList;, ""
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .local v1, "$i0":I, ""
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    .local v2, "$i1":I, ""
    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .local v3, "$r4":Ljava/lang/String;, ""
    invoke-static {v3}, Lio/flutter/embedding/engine/e/i$i;->a(Ljava/lang/String;)Lio/flutter/embedding/engine/e/i$i;

    move-result-object v4

    .local v4, "$r5":Lio/flutter/embedding/engine/e/i$i;, ""
    sget-object v5, Lio/flutter/embedding/engine/e/h;->b:[I

    .local v5, "$r3":[I, ""
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v5, v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_1

    :goto_1
    goto :goto_2

    :sswitch_0
    sget-object v4, Lio/flutter/embedding/engine/e/i$i;->b:Lio/flutter/embedding/engine/e/i$i;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :sswitch_1
    sget-object v4, Lio/flutter/embedding/engine/e/i$i;->a:Lio/flutter/embedding/engine/e/i$i;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
    .end sparse-switch
    .end local v1    # "$i0":I, ""
    .end local v5    # "$r3":[I, ""
    .end local v4    # "$r5":Lio/flutter/embedding/engine/e/i$i;, ""
    .end local v0    # "$r2":Ljava/util/ArrayList;, ""
    .end local v2    # "$i1":I, ""
    .end local v3    # "$r4":Ljava/lang/String;, ""
.end method


# virtual methods
.method public a(Lio/flutter/embedding/engine/e/i$f;)V
    .locals 0

    iput-object p1, p0, Lio/flutter/embedding/engine/e/i;->b:Lio/flutter/embedding/engine/e/i$f;

    return-void
.end method
