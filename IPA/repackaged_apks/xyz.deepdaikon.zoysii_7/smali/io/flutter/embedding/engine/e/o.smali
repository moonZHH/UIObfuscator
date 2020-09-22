.class Lio/flutter/embedding/engine/e/o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/a/b/a/m$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/engine/e/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/flutter/embedding/engine/e/p;


# direct methods
.method constructor <init>(Lio/flutter/embedding/engine/e/p;)V
    .locals 0

    iput-object p1, p0, Lio/flutter/embedding/engine/e/o;->a:Lio/flutter/embedding/engine/e/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/a/b/a/k;Lb/a/b/a/m$d;)V
    .locals 24

    move-object/from16 v0, p0

    .local v2, "$r3":Lio/flutter/embedding/engine/e/p;, ""
    iget-object v2, v0, Lio/flutter/embedding/engine/e/o;->a:Lio/flutter/embedding/engine/e/p;

    invoke-static {v2}, Lio/flutter/embedding/engine/e/p;->a(Lio/flutter/embedding/engine/e/p;)Lio/flutter/embedding/engine/e/p$e;

    move-result-object v3

    .local v3, "$r4":Lio/flutter/embedding/engine/e/p$e;, ""
    if-nez v3, :cond_0

    return-void

    :cond_0
    move-object/from16 v0, p1

    .local v4, "$r5":Ljava/lang/String;, ""
    iget-object v4, v0, Lb/a/b/a/k;->a:Ljava/lang/String;

    move-object/from16 v0, p1

    .local v5, "$r6":Ljava/lang/Object;, ""
    iget-object v5, v0, Lb/a/b/a/k;->b:Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    .local v6, "$r7":Ljava/lang/StringBuilder;, ""
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\' message."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .local v8, "$r8":Ljava/lang/String;, ""
    const-string v7, "TextInputChannel"

    invoke-static {v7, v8}, Lb/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, -0x1

    .local v9, "$b0":B, ""
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v10

    .local v10, "$i1":I, ""
    sparse-switch v10, :sswitch_data_0

    goto :goto_0

    :goto_0
    goto :goto_1

    :sswitch_0
    const-string v7, "TextInput.clearClient"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    .local v11, "$z0":Z, ""
    if-eqz v11, :cond_1

    const/4 v9, 0x5

    goto :goto_1

    :sswitch_1
    const-string v7, "TextInput.show"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    const/4 v9, 0x0

    goto :goto_1

    :sswitch_2
    const-string v7, "TextInput.hide"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    const/4 v9, 0x1

    goto :goto_1

    :sswitch_3
    const-string v7, "TextInput.setClient"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    const/4 v9, 0x2

    goto :goto_1

    :sswitch_4
    const-string v7, "TextInput.setEditingState"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    const/4 v9, 0x4

    goto :goto_1

    :sswitch_5
    const-string v7, "TextInput.setPlatformViewClient"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    const/4 v9, 0x3

    :cond_1
    :goto_1
    sparse-switch v9, :sswitch_data_1

    goto :goto_2

    :goto_2
    move-object/from16 v0, p2

    invoke-interface {v0}, Lb/a/b/a/m$d;->a()V

    return-void

    :sswitch_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/flutter/embedding/engine/e/o;->a:Lio/flutter/embedding/engine/e/p;

    invoke-static {v2}, Lio/flutter/embedding/engine/e/p;->a(Lio/flutter/embedding/engine/e/p;)Lio/flutter/embedding/engine/e/p$e;

    move-result-object v3

    invoke-interface {v3}, Lio/flutter/embedding/engine/e/p$e;->a()V

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Lb/a/b/a/m$d;->a(Ljava/lang/Object;)V

    return-void

    :sswitch_7
    move-object v14, v5

    check-cast v14, Lorg/json/JSONObject;

    move-object v13, v14

    .local v13, "$r9":Lorg/json/JSONObject;, ""
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/flutter/embedding/engine/e/o;->a:Lio/flutter/embedding/engine/e/p;

    :try_start_0
    invoke-static {v2}, Lio/flutter/embedding/engine/e/p;->a(Lio/flutter/embedding/engine/e/p;)Lio/flutter/embedding/engine/e/p$e;

    move-result-object v3

    invoke-static {v13}, Lio/flutter/embedding/engine/e/p$d;->a(Lorg/json/JSONObject;)Lio/flutter/embedding/engine/e/p$d;

    move-result-object v15

    .local v15, "$r10":Lio/flutter/embedding/engine/e/p$d;, ""
    invoke-interface {v3, v15}, Lio/flutter/embedding/engine/e/p$e;->a(Lio/flutter/embedding/engine/e/p$d;)V

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Lb/a/b/a/m$d;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v16

    .local v16, "$r11":Lorg/json/JSONException;, ""
    move-object/from16 v0, v16

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    const-string v7, "error"

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v7, v4, v12}, Lb/a/b/a/m$d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :sswitch_8
    move-object/from16 v18, v5

    check-cast v18, Ljava/lang/Integer;

    move-object/from16 v17, v18

    .local v17, "$r12":Ljava/lang/Integer;, ""
    move-object/from16 v0, v17

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lio/flutter/embedding/engine/e/o;->a:Lio/flutter/embedding/engine/e/p;

    invoke-static {v2}, Lio/flutter/embedding/engine/e/p;->a(Lio/flutter/embedding/engine/e/p;)Lio/flutter/embedding/engine/e/p$e;

    move-result-object v3

    invoke-interface {v3, v10}, Lio/flutter/embedding/engine/e/p$e;->a(I)V

    return-void

    :sswitch_9
    move-object/from16 v20, v5

    check-cast v20, Lorg/json/JSONArray;

    move-object/from16 v19, v20

    .local v19, "$r13":Lorg/json/JSONArray;, ""
    :try_start_1
    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v10

    const/16 v21, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lio/flutter/embedding/engine/e/o;->a:Lio/flutter/embedding/engine/e/p;

    :try_start_2
    invoke-static {v2}, Lio/flutter/embedding/engine/e/p;->a(Lio/flutter/embedding/engine/e/p;)Lio/flutter/embedding/engine/e/p$e;

    move-result-object v3

    invoke-static {v13}, Lio/flutter/embedding/engine/e/p$a;->a(Lorg/json/JSONObject;)Lio/flutter/embedding/engine/e/p$a;

    move-result-object v22

    .local v22, "$r14":Lio/flutter/embedding/engine/e/p$a;, ""
    move-object/from16 v0, v22

    invoke-interface {v3, v10, v0}, Lio/flutter/embedding/engine/e/p$e;->a(ILio/flutter/embedding/engine/e/p$a;)V

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Lb/a/b/a/m$d;->a(Ljava/lang/Object;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception v23

    .local v23, "$r15":Ljava/lang/Exception;, ""
    move-object/from16 v0, v23

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    const-string v7, "error"

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v7, v4, v12}, Lb/a/b/a/m$d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :sswitch_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/flutter/embedding/engine/e/o;->a:Lio/flutter/embedding/engine/e/p;

    invoke-static {v2}, Lio/flutter/embedding/engine/e/p;->a(Lio/flutter/embedding/engine/e/p;)Lio/flutter/embedding/engine/e/p$e;

    move-result-object v3

    invoke-interface {v3}, Lio/flutter/embedding/engine/e/p$e;->c()V

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Lb/a/b/a/m$d;->a(Ljava/lang/Object;)V

    return-void

    :sswitch_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/flutter/embedding/engine/e/o;->a:Lio/flutter/embedding/engine/e/p;

    invoke-static {v2}, Lio/flutter/embedding/engine/e/p;->a(Lio/flutter/embedding/engine/e/p;)Lio/flutter/embedding/engine/e/p$e;

    move-result-object v3

    invoke-interface {v3}, Lio/flutter/embedding/engine/e/p$e;->b()V

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Lb/a/b/a/m$d;->a(Ljava/lang/Object;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6a0a6d0c -> :sswitch_5
        -0x3c861a16 -> :sswitch_4
        -0x23d2364 -> :sswitch_3
        0x101f2613 -> :sswitch_2
        0x102423ce -> :sswitch_1
        0x71834287 -> :sswitch_0
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
    .end local v13    # "$r9":Lorg/json/JSONObject;, ""
    .end local v19    # "$r13":Lorg/json/JSONArray;, ""
    .end local v10    # "$i1":I, ""
    .end local v2    # "$r3":Lio/flutter/embedding/engine/e/p;, ""
    .end local v23    # "$r15":Ljava/lang/Exception;, ""
    .end local v16    # "$r11":Lorg/json/JSONException;, ""
    .end local v3    # "$r4":Lio/flutter/embedding/engine/e/p$e;, ""
    .end local v15    # "$r10":Lio/flutter/embedding/engine/e/p$d;, ""
    .end local v9    # "$b0":B, ""
    .end local v17    # "$r12":Ljava/lang/Integer;, ""
    .end local v6    # "$r7":Ljava/lang/StringBuilder;, ""
    .end local v11    # "$z0":Z, ""
    .end local v22    # "$r14":Lio/flutter/embedding/engine/e/p$a;, ""
    .end local v4    # "$r5":Ljava/lang/String;, ""
    .end local v8    # "$r8":Ljava/lang/String;, ""
    .end local v5    # "$r6":Ljava/lang/Object;, ""
.end method
