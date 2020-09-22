.class public abstract Lb/a/b/a/i;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    if-nez p0, :cond_0

    sget-object p0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    .local p0, "$r1":Ljava/lang/Object;, ""
    return-object p0

    :cond_0
    move-object/from16 v0, p0

    .local v2, "$z0":Z, ""
    instance-of v2, v0, Lorg/json/JSONArray;

    if-nez v2, :cond_c

    move-object/from16 v0, p0

    instance-of v2, v0, Lorg/json/JSONObject;

    if-eqz v2, :cond_1

    return-object p0

    :cond_1
    sget-object v3, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    .local v3, "$r2":Ljava/lang/Object;, ""
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object p0

    :cond_2
    move-object/from16 v0, p0

    instance-of v2, v0, Ljava/util/Collection;

    if-eqz v2, :cond_4

    new-instance v4, Lorg/json/JSONArray;

    .local v4, "$r3":Lorg/json/JSONArray;, ""
    :try_start_0
    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    move-object/from16 v6, p0

    check-cast v6, Ljava/util/Collection;

    move-object v5, v6

    .local v5, "$r4":Ljava/util/Collection;, ""
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "$r5":Ljava/util/Iterator;, ""
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_3

    :try_start_1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    move-object/from16 v0, p0

    invoke-static {v0}, Lb/a/b/a/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_3
    return-object v4

    :cond_4
    :try_start_2
    move-object/from16 v0, p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    .local v8, "$r6":Ljava/lang/Class;, ""
    invoke-virtual {v8}, Ljava/lang/Class;->isArray()Z

    move-result v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v2, :cond_6

    new-instance v4, Lorg/json/JSONArray;

    :try_start_3
    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    move-object/from16 v0, p0

    invoke-static {v0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v9
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .local v9, "$i0":I, ""
    const/4 v10, 0x0

    .local v10, "$i1":I, ""
    :goto_1
    if-ge v10, v9, :cond_5

    :try_start_4
    move-object/from16 v0, p0

    invoke-static {v0, v10}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lb/a/b/a/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_5
    return-object v4

    :cond_6
    move-object/from16 v0, p0

    instance-of v2, v0, Ljava/util/Map;

    if-eqz v2, :cond_8

    new-instance v11, Lorg/json/JSONObject;

    .local v11, "$r7":Lorg/json/JSONObject;, ""
    :try_start_5
    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v13, p0

    check-cast v13, Ljava/util/Map;

    move-object v12, v13

    .local v12, "$r8":Ljava/util/Map;, ""
    invoke-interface {v12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v14

    .local v14, "$r9":Ljava/util/Set;, ""
    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    if-eqz v2, :cond_7

    :try_start_6
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    move-object/from16 v16, p0

    check-cast v16, Ljava/util/Map$Entry;

    move-object/from16 v15, v16

    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    move-object/from16 v18, p0

    check-cast v18, Ljava/lang/String;

    move-object/from16 v17, v18

    .local v17, "$r11":Ljava/lang/String;, ""
    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    move-object/from16 v0, p0

    invoke-static {v0}, Lb/a/b/a/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_2

    :cond_7
    return-object v11

    :cond_8
    move-object/from16 v0, p0

    instance-of v2, v0, Ljava/lang/Boolean;

    if-nez v2, :cond_a

    move-object/from16 v0, p0

    instance-of v2, v0, Ljava/lang/Byte;

    if-nez v2, :cond_d

    move-object/from16 v0, p0

    instance-of v2, v0, Ljava/lang/Character;

    if-nez v2, :cond_d

    move-object/from16 v0, p0

    instance-of v2, v0, Ljava/lang/Double;

    if-nez v2, :cond_d

    move-object/from16 v0, p0

    instance-of v2, v0, Ljava/lang/Float;

    if-nez v2, :cond_d

    move-object/from16 v0, p0

    instance-of v2, v0, Ljava/lang/Integer;

    if-nez v2, :cond_d

    move-object/from16 v0, p0

    instance-of v2, v0, Ljava/lang/Long;

    if-nez v2, :cond_d

    move-object/from16 v0, p0

    instance-of v2, v0, Ljava/lang/Short;

    if-nez v2, :cond_d

    move-object/from16 v0, p0

    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_9

    return-object p0

    :cond_9
    :try_start_7
    move-object/from16 v0, p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v19

    .local v19, "$r12":Ljava/lang/Package;, ""
    move-object/from16 v0, v19

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v17

    const-string v20, "java."

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    if-eqz v2, :cond_b

    :try_start_8
    move-object/from16 v0, p0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    return-object v17

    :cond_a
    return-object p0

    :cond_b
    :goto_3
    const/16 v21, 0x0

    return-object v21

    :cond_c
    return-object p0

    :catch_0
    move-exception v22

    .local v22, "$r0":Ljava/lang/Exception;, ""
    goto :goto_3

    :cond_d
    return-object p0
    .end local v11    # "$r7":Lorg/json/JSONObject;, ""
    .end local v19    # "$r12":Ljava/lang/Package;, ""
    .end local v14    # "$r9":Ljava/util/Set;, ""
    .end local v5    # "$r4":Ljava/util/Collection;, ""
    .end local v12    # "$r8":Ljava/util/Map;, ""
    .end local v3    # "$r2":Ljava/lang/Object;, ""
    .end local v10    # "$i1":I, ""
    .end local v9    # "$i0":I, ""
    .end local p0    # "$r1":Ljava/lang/Object;, ""
    .end local v17    # "$r11":Ljava/lang/String;, ""
    .end local v22    # "$r0":Ljava/lang/Exception;, ""
    .end local v8    # "$r6":Ljava/lang/Class;, ""
    .end local v2    # "$z0":Z, ""
    .end local v4    # "$r3":Lorg/json/JSONArray;, ""
    .end local v7    # "$r5":Ljava/util/Iterator;, ""
.end method
