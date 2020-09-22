.class public Lio/flutter/embedding/engine/e/p$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/engine/e/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Configuration"
.end annotation


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:Z

.field public final d:Lio/flutter/embedding/engine/e/p$c;

.field public final e:Lio/flutter/embedding/engine/e/p$b;

.field public final f:Ljava/lang/Integer;

.field public final g:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZZZLio/flutter/embedding/engine/e/p$c;Lio/flutter/embedding/engine/e/p$b;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lio/flutter/embedding/engine/e/p$a;->a:Z

    iput-boolean p2, p0, Lio/flutter/embedding/engine/e/p$a;->b:Z

    iput-boolean p3, p0, Lio/flutter/embedding/engine/e/p$a;->c:Z

    iput-object p4, p0, Lio/flutter/embedding/engine/e/p$a;->d:Lio/flutter/embedding/engine/e/p$c;

    iput-object p5, p0, Lio/flutter/embedding/engine/e/p$a;->e:Lio/flutter/embedding/engine/e/p$b;

    iput-object p6, p0, Lio/flutter/embedding/engine/e/p$a;->f:Ljava/lang/Integer;

    iput-object p7, p0, Lio/flutter/embedding/engine/e/p$a;->g:Ljava/lang/String;

    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lio/flutter/embedding/engine/e/p$a;
    .locals 21

    const-string v9, "inputAction"

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .local v8, "$r1":Ljava/lang/String;, ""
    if-eqz v8, :cond_1

    invoke-static {v8}, Lio/flutter/embedding/engine/e/p$a;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    .local v10, "$r2":Ljava/lang/Integer;, ""
    new-instance v11, Lio/flutter/embedding/engine/e/p$a;

    .local v11, "$r3":Lio/flutter/embedding/engine/e/p$a;, ""
    const-string v9, "obscureText"

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v12

    .local v12, "$z0":Z, ""
    const-string v9, "autocorrect"

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v14}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v13

    .local v13, "$z1":Z, ""
    const-string v9, "enableSuggestions"

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v15

    .local v15, "$z2":Z, ""
    const-string v9, "textCapitalization"

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lio/flutter/embedding/engine/e/p$c;->a(Ljava/lang/String;)Lio/flutter/embedding/engine/e/p$c;

    move-result-object v16

    .local v16, "$r4":Lio/flutter/embedding/engine/e/p$c;, ""
    const-string v9, "inputType"

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v17

    .local v17, "$r5":Lorg/json/JSONObject;, ""
    move-object/from16 v0, v17

    invoke-static {v0}, Lio/flutter/embedding/engine/e/p$b;->a(Lorg/json/JSONObject;)Lio/flutter/embedding/engine/e/p$b;

    move-result-object v18

    .local v18, "$r6":Lio/flutter/embedding/engine/e/p$b;, ""
    const-string v9, "actionLabel"

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v19

    .local v19, "$z3":Z, ""
    if-eqz v19, :cond_0

    const/4 v8, 0x0

    :goto_0
    goto :goto_1

    :cond_0
    const-string v9, "actionLabel"

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :goto_1
    move-object v0, v11

    move v1, v12

    move v2, v13

    move v3, v15

    move-object/from16 v4, v16

    move-object/from16 v5, v18

    move-object v6, v10

    move-object v7, v8

    invoke-direct/range {v0 .. v7}, Lio/flutter/embedding/engine/e/p$a;-><init>(ZZZLio/flutter/embedding/engine/e/p$c;Lio/flutter/embedding/engine/e/p$b;Ljava/lang/Integer;Ljava/lang/String;)V

    return-object v11

    :cond_1
    new-instance v20, Lorg/json/JSONException;

    .local v20, "$r7":Lorg/json/JSONException;, ""
    const-string v9, "Configuration JSON missing \'inputAction\' property."

    move-object/from16 v0, v20

    invoke-direct {v0, v9}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v20
    .end local v11    # "$r3":Lio/flutter/embedding/engine/e/p$a;, ""
    .end local v18    # "$r6":Lio/flutter/embedding/engine/e/p$b;, ""
    .end local v19    # "$z3":Z, ""
    .end local v16    # "$r4":Lio/flutter/embedding/engine/e/p$c;, ""
    .end local v15    # "$z2":Z, ""
    .end local v8    # "$r1":Ljava/lang/String;, ""
    .end local v12    # "$z0":Z, ""
    .end local v20    # "$r7":Lorg/json/JSONException;, ""
    .end local v13    # "$z1":Z, ""
    .end local v17    # "$r5":Lorg/json/JSONObject;, ""
    .end local v10    # "$r2":Ljava/lang/Integer;, ""
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .local v0, "$i0":I, ""
    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :goto_0
    goto :goto_1

    :sswitch_0
    const-string v2, "TextInputAction.previous"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .local v1, "$z0":Z, ""
    if-eqz v1, :cond_0

    const/16 v3, 0x8

    .local v3, "$b1":B, ""
    goto :goto_2

    :sswitch_1
    const-string v2, "TextInputAction.newline"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v3, 0x0

    goto :goto_2

    :sswitch_2
    const-string v2, "TextInputAction.go"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v3, 0x4

    goto :goto_2

    :sswitch_3
    const-string v2, "TextInputAction.search"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v3, 0x5

    goto :goto_2

    :sswitch_4
    const-string v2, "TextInputAction.send"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v3, 0x6

    goto :goto_2

    :sswitch_5
    const-string v2, "TextInputAction.none"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    goto :goto_2

    :sswitch_6
    const-string v2, "TextInputAction.next"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v3, 0x7

    goto :goto_2

    :sswitch_7
    const-string v2, "TextInputAction.done"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v3, 0x3

    goto :goto_2

    :sswitch_8
    const-string v2, "TextInputAction.unspecified"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v3, 0x2

    goto :goto_2

    :cond_0
    :goto_1
    const/4 v3, -0x1

    :goto_2
    sparse-switch v3, :sswitch_data_1

    goto :goto_3

    :goto_3
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .local v4, "$r1":Ljava/lang/Integer;, ""
    return-object v4

    :sswitch_9
    const/4 v5, 0x7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    return-object v4

    :sswitch_a
    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    return-object v4

    :sswitch_b
    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    return-object v4

    :sswitch_c
    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    return-object v4

    :sswitch_d
    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    return-object v4

    :sswitch_e
    const/4 v5, 0x6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    return-object v4

    :sswitch_f
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    return-object v4

    :sswitch_10
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    return-object v4

    :sswitch_11
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    return-object v4

    nop

    :sswitch_data_0
    .sparse-switch
        -0x30567324 -> :sswitch_8
        -0x2bf37e83 -> :sswitch_7
        -0x2bef1712 -> :sswitch_6
        -0x2beef2cd -> :sswitch_5
        -0x2becd27d -> :sswitch_4
        0x1bf830e3 -> :sswitch_3
        0x4a02ada3 -> :sswitch_2
        0x5bc225b9 -> :sswitch_1
        0x7dcba372 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_11
        0x1 -> :sswitch_10
        0x2 -> :sswitch_f
        0x3 -> :sswitch_e
        0x4 -> :sswitch_d
        0x5 -> :sswitch_c
        0x6 -> :sswitch_b
        0x7 -> :sswitch_a
        0x8 -> :sswitch_9
    .end sparse-switch
    .end local v3    # "$b1":B, ""
    .end local v0    # "$i0":I, ""
    .end local v1    # "$z0":Z, ""
    .end local v4    # "$r1":Ljava/lang/Integer;, ""
.end method
