.class Lio/flutter/embedding/engine/e/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/a/b/a/m$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/engine/e/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/flutter/embedding/engine/e/i;


# direct methods
.method constructor <init>(Lio/flutter/embedding/engine/e/i;)V
    .locals 0

    iput-object p1, p0, Lio/flutter/embedding/engine/e/g;->a:Lio/flutter/embedding/engine/e/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/a/b/a/k;Lb/a/b/a/m$d;)V
    .locals 41

    move-object/from16 v0, p0

    .local v2, "$r4":Lio/flutter/embedding/engine/e/i;, ""
    iget-object v2, v0, Lio/flutter/embedding/engine/e/g;->a:Lio/flutter/embedding/engine/e/i;

    invoke-static {v2}, Lio/flutter/embedding/engine/e/i;->a(Lio/flutter/embedding/engine/e/i;)Lio/flutter/embedding/engine/e/i$f;

    move-result-object v3

    .local v3, "$r5":Lio/flutter/embedding/engine/e/i$f;, ""
    if-nez v3, :cond_0

    return-void

    :cond_0
    move-object/from16 v0, p1

    .local v4, "$r6":Ljava/lang/String;, ""
    iget-object v4, v0, Lb/a/b/a/k;->a:Ljava/lang/String;

    move-object/from16 v0, p1

    .local v5, "$r7":Ljava/lang/Object;, ""
    iget-object v5, v0, Lb/a/b/a/k;->b:Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    .local v6, "$r8":Ljava/lang/StringBuilder;, ""
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\' message."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .local v8, "$r9":Ljava/lang/String;, ""
    const-string v7, "PlatformChannel"

    invoke-static {v7, v8}, Lb/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, -0x1

    .local v9, "$b0":B, ""
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v10
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_6

    .local v10, "$i1":I, ""
    sparse-switch v10, :sswitch_data_0

    goto :goto_0

    :goto_0
    goto :goto_1

    :sswitch_0
    :try_start_1
    const-string v7, "SystemChrome.setPreferredOrientations"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_6

    .local v11, "$z0":Z, ""
    if-eqz v11, :cond_1

    const/4 v9, 0x2

    goto :goto_1

    :sswitch_1
    :try_start_2
    const-string v7, "SystemChrome.setEnabledSystemUIOverlays"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_6

    if-eqz v11, :cond_1

    const/4 v9, 0x4

    goto :goto_1

    :sswitch_2
    :try_start_3
    const-string v7, "Clipboard.getData"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_6

    if-eqz v11, :cond_1

    const/16 v9, 0xa

    goto :goto_1

    :sswitch_3
    :try_start_4
    const-string v7, "SystemChrome.setSystemUIOverlayStyle"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_6

    if-eqz v11, :cond_1

    const/4 v9, 0x6

    goto :goto_1

    :sswitch_4
    :try_start_5
    const-string v7, "SystemChrome.restoreSystemUIOverlays"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_6

    if-eqz v11, :cond_1

    const/4 v9, 0x5

    goto :goto_1

    :sswitch_5
    :try_start_6
    const-string v7, "SystemGestures.setSystemGestureExclusionRects"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_6

    if-eqz v11, :cond_1

    const/16 v9, 0x9

    goto :goto_1

    :sswitch_6
    :try_start_7
    const-string v7, "SystemGestures.getSystemGestureExclusionRects"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_6

    if-eqz v11, :cond_1

    const/16 v9, 0x8

    goto :goto_1

    :sswitch_7
    :try_start_8
    const-string v7, "SystemSound.play"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_6

    if-eqz v11, :cond_1

    const/4 v9, 0x0

    goto :goto_1

    :sswitch_8
    :try_start_9
    const-string v7, "HapticFeedback.vibrate"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_6

    if-eqz v11, :cond_1

    const/4 v9, 0x1

    goto :goto_1

    :sswitch_9
    :try_start_a
    const-string v7, "SystemChrome.setApplicationSwitcherDescription"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_6

    if-eqz v11, :cond_1

    const/4 v9, 0x3

    goto :goto_1

    :sswitch_a
    :try_start_b
    const-string v7, "Clipboard.setData"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_6

    if-eqz v11, :cond_1

    const/16 v9, 0xb

    goto :goto_1

    :sswitch_b
    :try_start_c
    const-string v7, "SystemNavigator.pop"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_6

    if-eqz v11, :cond_1

    const/4 v9, 0x7

    :cond_1
    :goto_1
    sparse-switch v9, :sswitch_data_1

    goto :goto_2

    :goto_2
    :try_start_d
    move-object/from16 v0, p2

    invoke-interface {v0}, Lb/a/b/a/m$d;->a()V
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_6

    return-void

    :sswitch_c
    move-object v13, v5

    check-cast v13, Lorg/json/JSONObject;

    move-object v12, v13

    .local v12, "$r10":Lorg/json/JSONObject;, ""
    :try_start_e
    const-string v7, "text"

    invoke-virtual {v12, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lio/flutter/embedding/engine/e/g;->a:Lio/flutter/embedding/engine/e/i;

    :try_start_f
    invoke-static {v2}, Lio/flutter/embedding/engine/e/i;->a(Lio/flutter/embedding/engine/e/i;)Lio/flutter/embedding/engine/e/i$f;

    move-result-object v3

    invoke-interface {v3, v4}, Lio/flutter/embedding/engine/e/i$f;->a(Ljava/lang/String;)V

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Lb/a/b/a/m$d;->a(Ljava/lang/Object;)V
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_f} :catch_6

    return-void

    :sswitch_d
    move-object/from16 v15, v5

    check-cast v15, Ljava/lang/String;

    move-object/from16 v4, v15

    if-eqz v4, :cond_2

    :try_start_10
    invoke-static {v4}, Lio/flutter/embedding/engine/e/i$c;->a(Ljava/lang/String;)Lio/flutter/embedding/engine/e/i$c;

    move-result-object v16
    :try_end_10
    .catch Ljava/lang/NoSuchFieldException; {:try_start_10 .. :try_end_10} :catch_7
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_10} :catch_6

    .local v16, "$r11":Lio/flutter/embedding/engine/e/i$c;, ""
    goto :goto_4

    :goto_3
    new-instance v6, Ljava/lang/StringBuilder;

    :try_start_11
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No such clipboard content format: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v7, "error"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v7, v4, v14}, Lb/a/b/a/m$d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_11} :catch_6

    :cond_2
    const/16 v16, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/flutter/embedding/engine/e/g;->a:Lio/flutter/embedding/engine/e/i;

    :try_start_12
    invoke-static {v2}, Lio/flutter/embedding/engine/e/i;->a(Lio/flutter/embedding/engine/e/i;)Lio/flutter/embedding/engine/e/i$f;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-interface {v3, v0}, Lio/flutter/embedding/engine/e/i$f;->a(Lio/flutter/embedding/engine/e/i$c;)Ljava/lang/CharSequence;

    move-result-object v17
    :try_end_12
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_12} :catch_6

    .local v17, "$r12":Ljava/lang/CharSequence;, ""
    if-eqz v17, :cond_3

    new-instance v12, Lorg/json/JSONObject;

    :try_start_13
    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "text"

    move-object/from16 v0, v17

    invoke-virtual {v12, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Lb/a/b/a/m$d;->a(Ljava/lang/Object;)V
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_13} :catch_6

    return-void

    :cond_3
    :try_start_14
    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Lb/a/b/a/m$d;->a(Ljava/lang/Object;)V
    :try_end_14
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_14} :catch_6

    return-void

    :sswitch_e
    instance-of v11, v5, Lorg/json/JSONArray;

    if-nez v11, :cond_4

    :try_start_15
    const-string v7, "inputTypeError"

    const-string v18, "Input type is incorrect. Ensure that a List<Map<String, int>> is passed as the input for SystemGestureExclusionRects.setSystemGestureExclusionRects."

    const/4 v14, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v7, v1, v14}, Lb/a/b/a/m$d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_15
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_15} :catch_6

    return-void

    :cond_4
    move-object/from16 v20, v5

    check-cast v20, Lorg/json/JSONArray;

    move-object/from16 v19, v20

    .local v19, "$r13":Lorg/json/JSONArray;, ""
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/flutter/embedding/engine/e/g;->a:Lio/flutter/embedding/engine/e/i;

    :try_start_16
    move-object/from16 v0, v19

    invoke-static {v2, v0}, Lio/flutter/embedding/engine/e/i;->c(Lio/flutter/embedding/engine/e/i;Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v21
    :try_end_16
    .catch Lorg/json/JSONException; {:try_start_16 .. :try_end_16} :catch_6

    .local v21, "$r14":Ljava/util/ArrayList;, ""
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/flutter/embedding/engine/e/g;->a:Lio/flutter/embedding/engine/e/i;

    :try_start_17
    invoke-static {v2}, Lio/flutter/embedding/engine/e/i;->a(Lio/flutter/embedding/engine/e/i;)Lio/flutter/embedding/engine/e/i$f;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-interface {v3, v0}, Lio/flutter/embedding/engine/e/i$f;->a(Ljava/util/ArrayList;)V

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Lb/a/b/a/m$d;->a(Ljava/lang/Object;)V
    :try_end_17
    .catch Lorg/json/JSONException; {:try_start_17 .. :try_end_17} :catch_6

    return-void

    :sswitch_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/flutter/embedding/engine/e/g;->a:Lio/flutter/embedding/engine/e/i;

    :try_start_18
    invoke-static {v2}, Lio/flutter/embedding/engine/e/i;->a(Lio/flutter/embedding/engine/e/i;)Lio/flutter/embedding/engine/e/i$f;

    move-result-object v3

    invoke-interface {v3}, Lio/flutter/embedding/engine/e/i$f;->c()Ljava/util/List;

    move-result-object v22
    :try_end_18
    .catch Lorg/json/JSONException; {:try_start_18 .. :try_end_18} :catch_6

    .local v22, "$r15":Ljava/util/List;, ""
    if-nez v22, :cond_5

    :try_start_19
    const-string v7, "error"

    const-string v18, "Exclusion rects only exist for Android API 29+."

    const/4 v14, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v7, v1, v14}, Lb/a/b/a/m$d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_19
    .catch Lorg/json/JSONException; {:try_start_19 .. :try_end_19} :catch_6

    return-void

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/flutter/embedding/engine/e/g;->a:Lio/flutter/embedding/engine/e/i;

    :try_start_1a
    move-object/from16 v0, v22

    invoke-static {v2, v0}, Lio/flutter/embedding/engine/e/i;->a(Lio/flutter/embedding/engine/e/i;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v21

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lb/a/b/a/m$d;->a(Ljava/lang/Object;)V
    :try_end_1a
    .catch Lorg/json/JSONException; {:try_start_1a .. :try_end_1a} :catch_6

    return-void

    :sswitch_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/flutter/embedding/engine/e/g;->a:Lio/flutter/embedding/engine/e/i;

    :try_start_1b
    invoke-static {v2}, Lio/flutter/embedding/engine/e/i;->a(Lio/flutter/embedding/engine/e/i;)Lio/flutter/embedding/engine/e/i$f;

    move-result-object v3

    invoke-interface {v3}, Lio/flutter/embedding/engine/e/i$f;->a()V

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Lb/a/b/a/m$d;->a(Ljava/lang/Object;)V
    :try_end_1b
    .catch Lorg/json/JSONException; {:try_start_1b .. :try_end_1b} :catch_6

    return-void

    :sswitch_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/flutter/embedding/engine/e/g;->a:Lio/flutter/embedding/engine/e/i;

    move-object/from16 v23, v5

    check-cast v23, Lorg/json/JSONObject;

    move-object/from16 v12, v23

    :try_start_1c
    invoke-static {v2, v12}, Lio/flutter/embedding/engine/e/i;->b(Lio/flutter/embedding/engine/e/i;Lorg/json/JSONObject;)Lio/flutter/embedding/engine/e/i$h;

    move-result-object v24
    :try_end_1c
    .catch Lorg/json/JSONException; {:try_start_1c .. :try_end_1c} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1c .. :try_end_1c} :catch_0

    .local v24, "$r16":Lio/flutter/embedding/engine/e/i$h;, ""
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/flutter/embedding/engine/e/g;->a:Lio/flutter/embedding/engine/e/i;

    :try_start_1d
    invoke-static {v2}, Lio/flutter/embedding/engine/e/i;->a(Lio/flutter/embedding/engine/e/i;)Lio/flutter/embedding/engine/e/i$f;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-interface {v3, v0}, Lio/flutter/embedding/engine/e/i$f;->a(Lio/flutter/embedding/engine/e/i$h;)V

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Lb/a/b/a/m$d;->a(Ljava/lang/Object;)V
    :try_end_1d
    .catch Lorg/json/JSONException; {:try_start_1d .. :try_end_1d} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1d .. :try_end_1d} :catch_0

    return-void

    :catch_0
    move-exception v25

    .local v25, "$r17":Ljava/lang/Exception;, ""
    :try_start_1e
    move-object/from16 v0, v25

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    const-string v7, "error"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v7, v4, v14}, Lb/a/b/a/m$d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1e
    .catch Lorg/json/JSONException; {:try_start_1e .. :try_end_1e} :catch_6

    return-void

    :sswitch_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/flutter/embedding/engine/e/g;->a:Lio/flutter/embedding/engine/e/i;

    :try_start_1f
    invoke-static {v2}, Lio/flutter/embedding/engine/e/i;->a(Lio/flutter/embedding/engine/e/i;)Lio/flutter/embedding/engine/e/i$f;

    move-result-object v3

    invoke-interface {v3}, Lio/flutter/embedding/engine/e/i$f;->b()V

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Lb/a/b/a/m$d;->a(Ljava/lang/Object;)V
    :try_end_1f
    .catch Lorg/json/JSONException; {:try_start_1f .. :try_end_1f} :catch_6

    return-void

    :sswitch_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/flutter/embedding/engine/e/g;->a:Lio/flutter/embedding/engine/e/i;

    move-object/from16 v26, v5

    check-cast v26, Lorg/json/JSONArray;

    move-object/from16 v19, v26

    :try_start_20
    move-object/from16 v0, v19

    invoke-static {v2, v0}, Lio/flutter/embedding/engine/e/i;->b(Lio/flutter/embedding/engine/e/i;Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v22
    :try_end_20
    .catch Lorg/json/JSONException; {:try_start_20 .. :try_end_20} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_20 .. :try_end_20} :catch_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lio/flutter/embedding/engine/e/g;->a:Lio/flutter/embedding/engine/e/i;

    :try_start_21
    invoke-static {v2}, Lio/flutter/embedding/engine/e/i;->a(Lio/flutter/embedding/engine/e/i;)Lio/flutter/embedding/engine/e/i$f;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-interface {v3, v0}, Lio/flutter/embedding/engine/e/i$f;->a(Ljava/util/List;)V

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Lb/a/b/a/m$d;->a(Ljava/lang/Object;)V
    :try_end_21
    .catch Lorg/json/JSONException; {:try_start_21 .. :try_end_21} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_21 .. :try_end_21} :catch_1

    return-void

    :catch_1
    move-exception v27

    .local v27, "$r18":Ljava/lang/Exception;, ""
    :try_start_22
    move-object/from16 v0, v27

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    const-string v7, "error"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v7, v4, v14}, Lb/a/b/a/m$d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_22
    .catch Lorg/json/JSONException; {:try_start_22 .. :try_end_22} :catch_6

    return-void

    :sswitch_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/flutter/embedding/engine/e/g;->a:Lio/flutter/embedding/engine/e/i;

    move-object/from16 v28, v5

    check-cast v28, Lorg/json/JSONObject;

    move-object/from16 v12, v28

    :try_start_23
    invoke-static {v2, v12}, Lio/flutter/embedding/engine/e/i;->a(Lio/flutter/embedding/engine/e/i;Lorg/json/JSONObject;)Lio/flutter/embedding/engine/e/i$a;

    move-result-object v29
    :try_end_23
    .catch Lorg/json/JSONException; {:try_start_23 .. :try_end_23} :catch_2

    .local v29, "$r19":Lio/flutter/embedding/engine/e/i$a;, ""
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/flutter/embedding/engine/e/g;->a:Lio/flutter/embedding/engine/e/i;

    :try_start_24
    invoke-static {v2}, Lio/flutter/embedding/engine/e/i;->a(Lio/flutter/embedding/engine/e/i;)Lio/flutter/embedding/engine/e/i$f;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-interface {v3, v0}, Lio/flutter/embedding/engine/e/i$f;->a(Lio/flutter/embedding/engine/e/i$a;)V

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Lb/a/b/a/m$d;->a(Ljava/lang/Object;)V
    :try_end_24
    .catch Lorg/json/JSONException; {:try_start_24 .. :try_end_24} :catch_2

    return-void

    :catch_2
    move-exception v30

    .local v30, "$r20":Lorg/json/JSONException;, ""
    :try_start_25
    move-object/from16 v0, v30

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    const-string v7, "error"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v7, v4, v14}, Lb/a/b/a/m$d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_25
    .catch Lorg/json/JSONException; {:try_start_25 .. :try_end_25} :catch_6

    return-void

    :sswitch_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/flutter/embedding/engine/e/g;->a:Lio/flutter/embedding/engine/e/i;

    move-object/from16 v31, v5

    check-cast v31, Lorg/json/JSONArray;

    move-object/from16 v19, v31

    :try_start_26
    move-object/from16 v0, v19

    invoke-static {v2, v0}, Lio/flutter/embedding/engine/e/i;->a(Lio/flutter/embedding/engine/e/i;Lorg/json/JSONArray;)I

    move-result v10
    :try_end_26
    .catch Lorg/json/JSONException; {:try_start_26 .. :try_end_26} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_26 .. :try_end_26} :catch_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lio/flutter/embedding/engine/e/g;->a:Lio/flutter/embedding/engine/e/i;

    :try_start_27
    invoke-static {v2}, Lio/flutter/embedding/engine/e/i;->a(Lio/flutter/embedding/engine/e/i;)Lio/flutter/embedding/engine/e/i$f;

    move-result-object v3

    invoke-interface {v3, v10}, Lio/flutter/embedding/engine/e/i$f;->a(I)V

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Lb/a/b/a/m$d;->a(Ljava/lang/Object;)V
    :try_end_27
    .catch Lorg/json/JSONException; {:try_start_27 .. :try_end_27} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_27 .. :try_end_27} :catch_3

    return-void

    :catch_3
    move-exception v32

    .local v32, "$r21":Ljava/lang/Exception;, ""
    :try_start_28
    move-object/from16 v0, v32

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    const-string v7, "error"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v7, v4, v14}, Lb/a/b/a/m$d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_28
    .catch Lorg/json/JSONException; {:try_start_28 .. :try_end_28} :catch_6

    return-void

    :sswitch_16
    move-object/from16 v33, v5

    check-cast v33, Ljava/lang/String;

    move-object/from16 v4, v33

    :try_start_29
    invoke-static {v4}, Lio/flutter/embedding/engine/e/i$e;->a(Ljava/lang/String;)Lio/flutter/embedding/engine/e/i$e;

    move-result-object v34
    :try_end_29
    .catch Ljava/lang/NoSuchFieldException; {:try_start_29 .. :try_end_29} :catch_4
    .catch Lorg/json/JSONException; {:try_start_29 .. :try_end_29} :catch_6

    .local v34, "$r22":Lio/flutter/embedding/engine/e/i$e;, ""
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/flutter/embedding/engine/e/g;->a:Lio/flutter/embedding/engine/e/i;

    :try_start_2a
    invoke-static {v2}, Lio/flutter/embedding/engine/e/i;->a(Lio/flutter/embedding/engine/e/i;)Lio/flutter/embedding/engine/e/i$f;

    move-result-object v3

    move-object/from16 v0, v34

    invoke-interface {v3, v0}, Lio/flutter/embedding/engine/e/i$f;->a(Lio/flutter/embedding/engine/e/i$e;)V

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Lb/a/b/a/m$d;->a(Ljava/lang/Object;)V
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2a .. :try_end_2a} :catch_4
    .catch Lorg/json/JSONException; {:try_start_2a .. :try_end_2a} :catch_6

    return-void

    :catch_4
    move-exception v35

    .local v35, "$r23":Ljava/lang/NoSuchFieldException;, ""
    :try_start_2b
    move-object/from16 v0, v35

    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->getMessage()Ljava/lang/String;

    move-result-object v4

    const-string v7, "error"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v7, v4, v14}, Lb/a/b/a/m$d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2b
    .catch Lorg/json/JSONException; {:try_start_2b .. :try_end_2b} :catch_6

    return-void

    :sswitch_17
    move-object/from16 v36, v5

    check-cast v36, Ljava/lang/String;

    move-object/from16 v4, v36

    :try_start_2c
    invoke-static {v4}, Lio/flutter/embedding/engine/e/i$g;->a(Ljava/lang/String;)Lio/flutter/embedding/engine/e/i$g;

    move-result-object v37
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2c .. :try_end_2c} :catch_5
    .catch Lorg/json/JSONException; {:try_start_2c .. :try_end_2c} :catch_6

    .local v37, "$r24":Lio/flutter/embedding/engine/e/i$g;, ""
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/flutter/embedding/engine/e/g;->a:Lio/flutter/embedding/engine/e/i;

    :try_start_2d
    invoke-static {v2}, Lio/flutter/embedding/engine/e/i;->a(Lio/flutter/embedding/engine/e/i;)Lio/flutter/embedding/engine/e/i$f;

    move-result-object v3

    move-object/from16 v0, v37

    invoke-interface {v3, v0}, Lio/flutter/embedding/engine/e/i$f;->a(Lio/flutter/embedding/engine/e/i$g;)V

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Lb/a/b/a/m$d;->a(Ljava/lang/Object;)V
    :try_end_2d
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2d .. :try_end_2d} :catch_5
    .catch Lorg/json/JSONException; {:try_start_2d .. :try_end_2d} :catch_6

    return-void

    :catch_5
    move-exception v38

    .local v38, "$r25":Ljava/lang/NoSuchFieldException;, ""
    :try_start_2e
    move-object/from16 v0, v38

    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->getMessage()Ljava/lang/String;

    move-result-object v4

    const-string v7, "error"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v7, v4, v14}, Lb/a/b/a/m$d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2e
    .catch Lorg/json/JSONException; {:try_start_2e .. :try_end_2e} :catch_6

    return-void

    :catch_6
    move-exception v39

    .local v39, "$r26":Lorg/json/JSONException;, ""
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "JSON error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v39

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v7, "error"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v7, v4, v14}, Lb/a/b/a/m$d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :catch_7
    move-exception v40

    .local v40, "$r2":Ljava/lang/NoSuchFieldException;, ""
    goto/32 :goto_3

    nop

    :sswitch_data_0
    .sparse-switch
        -0x2dad73d5 -> :sswitch_b
        -0x2af4a94c -> :sswitch_a
        -0x20b0f718 -> :sswitch_9
        -0xebc6f23 -> :sswitch_8
        -0xcd4cf9e -> :sswitch_7
        0x5bf243a -> :sswitch_6
        0xdd72fae -> :sswitch_5
        0xe6a45af -> :sswitch_4
        0x52e10221 -> :sswitch_3
        0x5a408fa8 -> :sswitch_2
        0x63cbfa4a -> :sswitch_1
        0x7e576127 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_17
        0x1 -> :sswitch_16
        0x2 -> :sswitch_15
        0x3 -> :sswitch_14
        0x4 -> :sswitch_13
        0x5 -> :sswitch_12
        0x6 -> :sswitch_11
        0x7 -> :sswitch_10
        0x8 -> :sswitch_f
        0x9 -> :sswitch_e
        0xa -> :sswitch_d
        0xb -> :sswitch_c
    .end sparse-switch
    .end local v16    # "$r11":Lio/flutter/embedding/engine/e/i$c;, ""
    .end local v8    # "$r9":Ljava/lang/String;, ""
    .end local v9    # "$b0":B, ""
    .end local v2    # "$r4":Lio/flutter/embedding/engine/e/i;, ""
    .end local v4    # "$r6":Ljava/lang/String;, ""
    .end local v29    # "$r19":Lio/flutter/embedding/engine/e/i$a;, ""
    .end local v11    # "$z0":Z, ""
    .end local v40    # "$r2":Ljava/lang/NoSuchFieldException;, ""
    .end local v37    # "$r24":Lio/flutter/embedding/engine/e/i$g;, ""
    .end local v39    # "$r26":Lorg/json/JSONException;, ""
    .end local v38    # "$r25":Ljava/lang/NoSuchFieldException;, ""
    .end local v30    # "$r20":Lorg/json/JSONException;, ""
    .end local v35    # "$r23":Ljava/lang/NoSuchFieldException;, ""
    .end local v32    # "$r21":Ljava/lang/Exception;, ""
    .end local v3    # "$r5":Lio/flutter/embedding/engine/e/i$f;, ""
    .end local v12    # "$r10":Lorg/json/JSONObject;, ""
    .end local v10    # "$i1":I, ""
    .end local v17    # "$r12":Ljava/lang/CharSequence;, ""
    .end local v27    # "$r18":Ljava/lang/Exception;, ""
    .end local v6    # "$r8":Ljava/lang/StringBuilder;, ""
    .end local v22    # "$r15":Ljava/util/List;, ""
    .end local v24    # "$r16":Lio/flutter/embedding/engine/e/i$h;, ""
    .end local v34    # "$r22":Lio/flutter/embedding/engine/e/i$e;, ""
    .end local v25    # "$r17":Ljava/lang/Exception;, ""
    .end local v21    # "$r14":Ljava/util/ArrayList;, ""
    .end local v19    # "$r13":Lorg/json/JSONArray;, ""
    .end local v5    # "$r7":Ljava/lang/Object;, ""
.end method
