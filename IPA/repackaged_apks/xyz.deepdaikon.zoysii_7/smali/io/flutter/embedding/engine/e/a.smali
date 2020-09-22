.class Lio/flutter/embedding/engine/e/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/a/b/a/d$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/engine/e/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lb/a/b/a/d$c",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lio/flutter/embedding/engine/e/b;


# direct methods
.method constructor <init>(Lio/flutter/embedding/engine/e/b;)V
    .locals 0

    iput-object p1, p0, Lio/flutter/embedding/engine/e/a;->a:Lio/flutter/embedding/engine/e/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lb/a/b/a/d$d;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lb/a/b/a/d$d",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    .local v1, "$r3":Lio/flutter/embedding/engine/e/b;, ""
    iget-object v1, v0, Lio/flutter/embedding/engine/e/a;->a:Lio/flutter/embedding/engine/e/b;

    move-object/from16 p0, v0

    .end local v1    # "$r3":Lio/flutter/embedding/engine/e/b;, ""
    .local v0, "$r3":Lio/flutter/embedding/engine/e/b;, ""
    invoke-static {v1}, Lio/flutter/embedding/engine/e/b;->a(Lio/flutter/embedding/engine/e/b;)Lio/flutter/embedding/engine/e/b$a;

    move-result-object v2

    .local v2, "$r4":Lio/flutter/embedding/engine/e/b$a;, ""
    if-nez v2, :cond_0

    return-void

    :cond_0
    move-object/from16 v4, p1

    check-cast v4, Ljava/util/HashMap;

    move-object v3, v4

    .local v3, "$r5":Ljava/util/HashMap;, ""
    const-string v5, "type"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .local p1, "$r1":Ljava/lang/Object;, ""
    move-object/from16 v7, p1

    check-cast v7, Ljava/lang/String;

    move-object v6, v7

    .local v6, "$r6":Ljava/lang/String;, ""
    const-string v5, "data"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object/from16 v9, p1

    check-cast v9, Ljava/util/HashMap;

    move-object v8, v9

    .local v8, "$r7":Ljava/util/HashMap;, ""
    new-instance v10, Ljava/lang/StringBuilder;

    .local v10, "$r8":Ljava/lang/StringBuilder;, ""
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received "

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " message."

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .local v11, "$r9":Ljava/lang/String;, ""
    const-string v5, "AccessibilityChannel"

    invoke-static {v5, v11}, Lb/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v12, -0x1

    .local v12, "$b0":B, ""
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v13

    .local v13, "$i1":I, ""
    const v14, -0x43f42ffd

    if-eq v13, v14, :cond_4

    const v14, -0x26b86b97

    if-eq v13, v14, :cond_3

    const v14, 0x1bfa3

    if-eq v13, v14, :cond_2

    const v14, 0x6ce9b27

    if-eq v13, v14, :cond_1

    goto :goto_0

    :cond_1
    const-string v5, "longPress"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    .local v15, "$z0":Z, ""
    if-eqz v15, :cond_5

    const/4 v12, 0x2

    goto :goto_0

    :cond_2
    const-string v5, "tap"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    const/4 v12, 0x1

    goto :goto_0

    :cond_3
    const-string v5, "announce"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    const/4 v12, 0x0

    goto :goto_0

    :cond_4
    const-string v5, "tooltip"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    const/4 v12, 0x3

    :cond_5
    :goto_0
    sparse-switch v12, :sswitch_data_0

    goto :goto_1

    :goto_1
    return-void

    :sswitch_0
    const-string v5, "message"

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object/from16 v16, p1

    check-cast v16, Ljava/lang/String;

    move-object/from16 v6, v16

    if-eqz v6, :cond_6

    move-object/from16 v0, p0

    .end local v0    # "$r3":Lio/flutter/embedding/engine/e/b;, ""
    .local v1, "$r3":Lio/flutter/embedding/engine/e/b;, ""
    iget-object v1, v0, Lio/flutter/embedding/engine/e/a;->a:Lio/flutter/embedding/engine/e/b;

    move-object/from16 p0, v0

    .end local v1    # "$r3":Lio/flutter/embedding/engine/e/b;, ""
    .local v0, "$r3":Lio/flutter/embedding/engine/e/b;, ""
    invoke-static {v1}, Lio/flutter/embedding/engine/e/b;->a(Lio/flutter/embedding/engine/e/b;)Lio/flutter/embedding/engine/e/b$a;

    move-result-object v2

    invoke-interface {v2, v6}, Lio/flutter/embedding/engine/e/b$a;->b(Ljava/lang/String;)V

    return-void

    :sswitch_1
    const-string v5, "nodeId"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object/from16 v18, p1

    check-cast v18, Ljava/lang/Integer;

    move-object/from16 v17, v18

    .local v17, "$r10":Ljava/lang/Integer;, ""
    if-eqz v17, :cond_6

    move-object/from16 v0, p0

    .end local v0    # "$r3":Lio/flutter/embedding/engine/e/b;, ""
    .local v1, "$r3":Lio/flutter/embedding/engine/e/b;, ""
    iget-object v1, v0, Lio/flutter/embedding/engine/e/a;->a:Lio/flutter/embedding/engine/e/b;

    move-object/from16 p0, v0

    .end local v1    # "$r3":Lio/flutter/embedding/engine/e/b;, ""
    .local v0, "$r3":Lio/flutter/embedding/engine/e/b;, ""
    invoke-static {v1}, Lio/flutter/embedding/engine/e/b;->a(Lio/flutter/embedding/engine/e/b;)Lio/flutter/embedding/engine/e/b$a;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-interface {v2, v13}, Lio/flutter/embedding/engine/e/b$a;->b(I)V

    return-void

    :sswitch_2
    const-string v5, "nodeId"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object/from16 v19, p1

    check-cast v19, Ljava/lang/Integer;

    move-object/from16 v17, v19

    if-eqz v17, :cond_6

    move-object/from16 v0, p0

    .end local v0    # "$r3":Lio/flutter/embedding/engine/e/b;, ""
    .local v1, "$r3":Lio/flutter/embedding/engine/e/b;, ""
    iget-object v1, v0, Lio/flutter/embedding/engine/e/a;->a:Lio/flutter/embedding/engine/e/b;

    move-object/from16 p0, v0

    .end local v1    # "$r3":Lio/flutter/embedding/engine/e/b;, ""
    .local v0, "$r3":Lio/flutter/embedding/engine/e/b;, ""
    invoke-static {v1}, Lio/flutter/embedding/engine/e/b;->a(Lio/flutter/embedding/engine/e/b;)Lio/flutter/embedding/engine/e/b$a;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-interface {v2, v13}, Lio/flutter/embedding/engine/e/b$a;->a(I)V

    return-void

    :sswitch_3
    const-string v5, "message"

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object/from16 v20, p1

    check-cast v20, Ljava/lang/String;

    move-object/from16 v6, v20

    if-eqz v6, :cond_6

    move-object/from16 v0, p0

    .end local v0    # "$r3":Lio/flutter/embedding/engine/e/b;, ""
    .local v1, "$r3":Lio/flutter/embedding/engine/e/b;, ""
    iget-object v1, v0, Lio/flutter/embedding/engine/e/a;->a:Lio/flutter/embedding/engine/e/b;

    move-object/from16 p0, v0

    .end local v1    # "$r3":Lio/flutter/embedding/engine/e/b;, ""
    .local v0, "$r3":Lio/flutter/embedding/engine/e/b;, ""
    invoke-static {v1}, Lio/flutter/embedding/engine/e/b;->a(Lio/flutter/embedding/engine/e/b;)Lio/flutter/embedding/engine/e/b$a;

    move-result-object v2

    invoke-interface {v2, v6}, Lio/flutter/embedding/engine/e/b$a;->a(Ljava/lang/String;)V

    :cond_6
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x1 -> :sswitch_2
        0x2 -> :sswitch_1
        0x3 -> :sswitch_0
    .end sparse-switch
    .end local v10    # "$r8":Ljava/lang/StringBuilder;, ""
    .end local v17    # "$r10":Ljava/lang/Integer;, ""
    .end local v11    # "$r9":Ljava/lang/String;, ""
    .end local v3    # "$r5":Ljava/util/HashMap;, ""
    .end local v0    # "$r3":Lio/flutter/embedding/engine/e/b;, ""
    .end local v15    # "$z0":Z, ""
    .end local v13    # "$i1":I, ""
    .end local v8    # "$r7":Ljava/util/HashMap;, ""
    .end local v6    # "$r6":Ljava/lang/String;, ""
    .end local v12    # "$b0":B, ""
    .end local v2    # "$r4":Lio/flutter/embedding/engine/e/b$a;, ""
    .end local p1    # "$r1":Ljava/lang/Object;, ""
.end method
