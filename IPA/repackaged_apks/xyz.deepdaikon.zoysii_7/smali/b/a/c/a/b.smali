.class Lb/a/c/a/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/a/b/a/m$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/c/a/a;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v1, "FlutterSharedPreferences"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .local v0, "$r1":Landroid/content/SharedPreferences;, ""
    iput-object v0, p0, Lb/a/c/a/b;->a:Landroid/content/SharedPreferences;

    return-void
    .end local v0    # "$r1":Landroid/content/SharedPreferences;, ""
.end method

.method private a(Ljava/util/List;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    .local v0, "$r4":Ljava/io/ObjectOutputStream;, ""
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    .local v1, "$r1":Ljava/io/ByteArrayOutputStream;, ""
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/io/ObjectOutputStream;

    .local v2, "$r2":Ljava/io/ObjectOutputStream;, ""
    invoke-direct {v2, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v2, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .local v3, "$r5":[B, ""
    const/4 v5, 0x0

    invoke-static {v3, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .local v4, "$r6":Ljava/lang/String;, ""
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V

    return-object v4

    :catch_0
    move-exception v6

    .local v6, "$r7":Ljava/lang/Throwable;, ""
    move-object v0, v2

    goto :goto_0

    :catch_1
    move-exception v6

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V

    :cond_0
    throw v6
    .end local v0    # "$r4":Ljava/io/ObjectOutputStream;, ""
    .end local v1    # "$r1":Ljava/io/ByteArrayOutputStream;, ""
    .end local v4    # "$r6":Ljava/lang/String;, ""
    .end local v3    # "$r5":[B, ""
    .end local v6    # "$r7":Ljava/lang/Throwable;, ""
    .end local v2    # "$r2":Ljava/io/ObjectOutputStream;, ""
.end method

.method private a(Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .local v0, "$r3":Ljava/io/ObjectInputStream;, ""
    new-instance v1, Ljava/io/ObjectInputStream;

    .local v1, "$r4":Ljava/io/ObjectInputStream;, ""
    new-instance v2, Ljava/io/ByteArrayInputStream;

    .local v2, "$r1":Ljava/io/ByteArrayInputStream;, ""
    :try_start_0
    const/4 v4, 0x0

    invoke-static {p1, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    .local v3, "$r5":[B, ""
    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .local v5, "$r6":Ljava/lang/Object;, ""
    :try_start_2
    move-object v7, v5

    check-cast v7, Ljava/util/List;

    move-object v6, v7
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .local v6, "$r7":Ljava/util/List;, ""
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    return-object v6

    :catch_0
    move-exception v8

    .local v8, "$r8":Ljava/lang/Throwable;, ""
    move-object v0, v1

    goto :goto_1

    :catch_1
    move-exception v9

    .local v9, "$r9":Ljava/lang/ClassNotFoundException;, ""
    move-object v0, v1

    goto :goto_0

    :catch_2
    move-exception v8

    goto :goto_1

    :catch_3
    move-exception v9

    :goto_0
    :try_start_3
    new-instance v10, Ljava/io/IOException;

    .local v10, "$r10":Ljava/io/IOException;, ""
    invoke-direct {v10, v9}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v10
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V

    :cond_0
    throw v8
    .end local v2    # "$r1":Ljava/io/ByteArrayInputStream;, ""
    .end local v3    # "$r5":[B, ""
    .end local v0    # "$r3":Ljava/io/ObjectInputStream;, ""
    .end local v1    # "$r4":Ljava/io/ObjectInputStream;, ""
    .end local v5    # "$r6":Ljava/lang/Object;, ""
    .end local v8    # "$r8":Ljava/lang/Throwable;, ""
    .end local v10    # "$r10":Ljava/io/IOException;, ""
    .end local v6    # "$r7":Ljava/util/List;, ""
    .end local v9    # "$r9":Ljava/lang/ClassNotFoundException;, ""
.end method

.method private a()Ljava/util/Map;
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .local v2, "$r1":Landroid/content/SharedPreferences;, ""
    iget-object v2, v0, Lb/a/c/a/b;->a:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v3

    .local v3, "$r2":Ljava/util/Map;, ""
    new-instance v4, Ljava/util/HashMap;

    .local v4, "r15":Ljava/util/HashMap;, ""
    move-object v5, v4

    .local v5, "$r3":Ljava/util/HashMap;, ""
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    .local v6, "$r4":Ljava/util/Set;, ""
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "$r5":Ljava/util/Iterator;, ""
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    .local v8, "$z0":Z, ""
    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .local v9, "$r6":Ljava/lang/Object;, ""
    move-object v11, v9

    check-cast v11, Ljava/lang/String;

    move-object v10, v11

    .local v10, "$r7":Ljava/lang/String;, ""
    const-string v12, "flutter."

    invoke-virtual {v10, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v3, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v13, v9

    .local v13, "$r8":Ljava/lang/Object;, ""
    instance-of v8, v9, Ljava/lang/String;

    if-eqz v8, :cond_3

    move-object v15, v9

    check-cast v15, Ljava/lang/String;

    move-object v14, v15

    .local v14, "$r9":Ljava/lang/String;, ""
    const-string v12, "VGhpcyBpcyB0aGUgcHJlZml4IGZvciBhIGxpc3Qu"

    invoke-virtual {v14, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v16, "VGhpcyBpcyB0aGUgcHJlZml4IGZvciBhIGxpc3Qu"

    .local v16, "$r10":Ljava/lang/String;, ""
    move-object/from16 v0, v16

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v17

    .local v17, "$i0":I, ""
    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lb/a/c/a/b;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    goto/32 :goto_2

    :cond_1
    const-string v12, "VGhpcyBpcyB0aGUgcHJlZml4IGZvciBCaWdJbnRlZ2Vy"

    invoke-virtual {v14, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v16, "VGhpcyBpcyB0aGUgcHJlZml4IGZvciBCaWdJbnRlZ2Vy"

    move-object/from16 v0, v16

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    new-instance v18, Ljava/math/BigInteger;

    .local v18, "r16":Ljava/math/BigInteger;, ""
    move-object/from16 v19, v18

    .local v19, "$r12":Ljava/io/Serializable;, ""
    const/16 v20, 0x24

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-direct {v0, v14, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    goto :goto_1

    :cond_2
    const-string v12, "VGhpcyBpcyB0aGUgcHJlZml4IGZvciBEb3VibGUu"

    invoke-virtual {v14, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    const-string v16, "VGhpcyBpcyB0aGUgcHJlZml4IGZvciBEb3VibGUu"

    move-object/from16 v0, v16

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v13

    goto :goto_2

    :cond_3
    instance-of v8, v9, Ljava/util/Set;

    if-eqz v8, :cond_5

    new-instance v21, Ljava/util/ArrayList;

    .local v21, "r17":Ljava/util/ArrayList;, ""
    move-object/from16 v19, v21

    move-object/from16 v22, v9

    check-cast v22, Ljava/util/Set;

    move-object/from16 v6, v22

    move-object/from16 v0, v21

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lb/a/c/a/b;->a:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v23

    .local v23, "$r13":Landroid/content/SharedPreferences$Editor;, ""
    move-object/from16 v0, v23

    invoke-interface {v0, v10}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v23

    new-instance v24, Ljava/lang/StringBuilder;

    .local v24, "r18":Ljava/lang/StringBuilder;, ""
    move-object/from16 v25, v24

    .local v25, "$r14":Ljava/lang/StringBuilder;, ""
    move-object/from16 v0, v24

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "VGhpcyBpcyB0aGUgcHJlZml4IGZvciBhIGxpc3Qu"

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v27, v19

    check-cast v27, Ljava/util/List;

    move-object/from16 v26, v27

    .local v26, "$r11":Ljava/util/List;, ""
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lb/a/c/a/b;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v25

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, v23

    invoke-interface {v0, v10, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v8

    if-eqz v8, :cond_4

    :goto_1
    move-object/from16 v13, v19

    goto :goto_2

    :cond_4
    new-instance v28, Ljava/io/IOException;

    .local v28, "r19":Ljava/io/IOException;, ""
    const-string v12, "Could not migrate set to list"

    move-object/from16 v0, v28

    invoke-direct {v0, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v28

    :cond_5
    :goto_2
    invoke-interface {v5, v10, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_0

    :cond_6
    return-object v5
    .end local v23    # "$r13":Landroid/content/SharedPreferences$Editor;, ""
    .end local v8    # "$z0":Z, ""
    .end local v5    # "$r3":Ljava/util/HashMap;, ""
    .end local v9    # "$r6":Ljava/lang/Object;, ""
    .end local v19    # "$r12":Ljava/io/Serializable;, ""
    .end local v7    # "$r5":Ljava/util/Iterator;, ""
    .end local v14    # "$r9":Ljava/lang/String;, ""
    .end local v2    # "$r1":Landroid/content/SharedPreferences;, ""
    .end local v3    # "$r2":Ljava/util/Map;, ""
    .end local v21    # "r17":Ljava/util/ArrayList;, ""
    .end local v13    # "$r8":Ljava/lang/Object;, ""
    .end local v26    # "$r11":Ljava/util/List;, ""
    .end local v18    # "r16":Ljava/math/BigInteger;, ""
    .end local v24    # "r18":Ljava/lang/StringBuilder;, ""
    .end local v6    # "$r4":Ljava/util/Set;, ""
    .end local v10    # "$r7":Ljava/lang/String;, ""
    .end local v25    # "$r14":Ljava/lang/StringBuilder;, ""
    .end local v4    # "r15":Ljava/util/HashMap;, ""
    .end local v16    # "$r10":Ljava/lang/String;, ""
    .end local v17    # "$i0":I, ""
    .end local v28    # "r19":Ljava/io/IOException;, ""
.end method

.method private a(Landroid/content/SharedPreferences$Editor;Lb/a/b/a/m$d;)V
    .locals 3

    new-instance v0, Lb/a/c/a/a;

    .local v0, "$r2":Lb/a/c/a/a;, ""
    invoke-direct {v0, p0, p1, p2}, Lb/a/c/a/a;-><init>(Lb/a/c/a/b;Landroid/content/SharedPreferences$Editor;Lb/a/b/a/m$d;)V

    const/4 v2, 0x0

    new-array v1, v2, [Ljava/lang/Void;

    .local v1, "$r4":[Ljava/lang/Void;, ""
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
    .end local v0    # "$r2":Lb/a/c/a/a;, ""
    .end local v1    # "$r4":[Ljava/lang/Void;, ""
.end method


# virtual methods
.method public a(Lb/a/b/a/k;Lb/a/b/a/m$d;)V
    .locals 36

    const-string v4, "key"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lb/a/b/a/k;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .local v3, "$r3":Ljava/lang/Object;, ""
    move-object v6, v3

    check-cast v6, Ljava/lang/String;

    move-object v5, v6

    .local v5, "$r4":Ljava/lang/String;, ""
    move-object/from16 v0, p1

    .local v7, "$r5":Ljava/lang/String;, ""
    iget-object v7, v0, Lb/a/b/a/k;->a:Ljava/lang/String;

    const/4 v8, -0x1

    .local v8, "$b0":B, ""
    :try_start_0
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v9
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .local v9, "$i1":I, ""
    sparse-switch v9, :sswitch_data_0

    goto :goto_0

    :goto_0
    goto :goto_1

    :sswitch_0
    :try_start_1
    const-string v4, "setBool"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .local v10, "$z0":Z, ""
    if-eqz v10, :cond_0

    const/4 v8, 0x0

    goto :goto_1

    :sswitch_1
    :try_start_2
    const-string v4, "setString"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v10, :cond_0

    const/4 v8, 0x3

    goto :goto_1

    :sswitch_2
    :try_start_3
    const-string v4, "setDouble"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    if-eqz v10, :cond_0

    const/4 v8, 0x1

    goto :goto_1

    :sswitch_3
    :try_start_4
    const-string v4, "clear"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    if-eqz v10, :cond_0

    const/16 v8, 0x8

    goto :goto_1

    :sswitch_4
    :try_start_5
    const-string v4, "setInt"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    if-eqz v10, :cond_0

    const/4 v8, 0x2

    goto :goto_1

    :sswitch_5
    :try_start_6
    const-string v4, "remove"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    if-eqz v10, :cond_0

    const/4 v8, 0x7

    goto :goto_1

    :sswitch_6
    :try_start_7
    const-string v4, "setStringList"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    if-eqz v10, :cond_0

    const/4 v8, 0x4

    goto :goto_1

    :sswitch_7
    :try_start_8
    const-string v4, "getAll"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    if-eqz v10, :cond_0

    const/4 v8, 0x6

    goto :goto_1

    :sswitch_8
    :try_start_9
    const-string v4, "commit"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    if-eqz v10, :cond_0

    const/4 v8, 0x5

    :cond_0
    :goto_1
    sparse-switch v8, :sswitch_data_1

    goto :goto_2

    :goto_2
    :try_start_a
    move-object/from16 v0, p2

    invoke-interface {v0}, Lb/a/b/a/m$d;->a()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    return-void

    :sswitch_9
    :try_start_b
    move-object/from16 v0, p0

    invoke-direct {v0}, Lb/a/c/a/b;->a()Ljava/util/Map;

    move-result-object v11

    .local v11, "$r6":Ljava/util/Map;, ""
    invoke-interface {v11}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v12
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0

    .local v12, "$r7":Ljava/util/Set;, ""
    move-object/from16 v0, p0

    .local v13, "$r8":Landroid/content/SharedPreferences;, ""
    iget-object v13, v0, Lb/a/c/a/b;->a:Landroid/content/SharedPreferences;

    :try_start_c
    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    .local v14, "$r9":Landroid/content/SharedPreferences$Editor;, ""
    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "$r10":Ljava/util/Iterator;, ""
    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v10
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0

    if-eqz v10, :cond_1

    :try_start_d
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0

    move-object/from16 v16, v3

    check-cast v16, Ljava/lang/String;

    move-object/from16 v5, v16

    :try_start_e
    invoke-interface {v14, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_0

    goto :goto_3

    :cond_1
    :try_start_f
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v14, v1}, Lb/a/c/a/b;->a(Landroid/content/SharedPreferences$Editor;Lb/a/b/a/m$d;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_0

    return-void

    :sswitch_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lb/a/c/a/b;->a:Landroid/content/SharedPreferences;

    :try_start_10
    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    invoke-interface {v14, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v14, v1}, Lb/a/c/a/b;->a(Landroid/content/SharedPreferences$Editor;Lb/a/b/a/m$d;)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_0

    return-void

    :sswitch_b
    :try_start_11
    move-object/from16 v0, p0

    invoke-direct {v0}, Lb/a/c/a/b;->a()Ljava/util/Map;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Lb/a/b/a/m$d;->a(Ljava/lang/Object;)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_0

    return-void

    :sswitch_c
    :try_start_12
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    .local v17, "$r11":Ljava/lang/Boolean;, ""
    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lb/a/b/a/m$d;->a(Ljava/lang/Object;)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_0

    return-void

    :sswitch_d
    :try_start_13
    const-string v4, "value"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lb/a/b/a/k;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_0

    move-object/from16 v20, v3

    check-cast v20, Ljava/util/List;

    move-object/from16 v19, v20

    .local v19, "$r12":Ljava/util/List;, ""
    move-object/from16 v0, p0

    iget-object v13, v0, Lb/a/c/a/b;->a:Landroid/content/SharedPreferences;

    :try_start_14
    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v14
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_0

    new-instance v21, Ljava/lang/StringBuilder;

    .local v21, "$r13":Ljava/lang/StringBuilder;, ""
    :try_start_15
    move-object/from16 v0, v21

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VGhpcyBpcyB0aGUgcHJlZml4IGZvciBhIGxpc3Qu"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lb/a/c/a/b;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v21

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v14, v5, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v14, v1}, Lb/a/c/a/b;->a(Landroid/content/SharedPreferences$Editor;Lb/a/b/a/m$d;)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_0

    return-void

    :sswitch_e
    :try_start_16
    const-string v4, "value"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lb/a/b/a/k;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_0

    move-object/from16 v22, v3

    check-cast v22, Ljava/lang/String;

    move-object/from16 v7, v22

    :try_start_17
    const-string v4, "VGhpcyBpcyB0aGUgcHJlZml4IGZvciBhIGxpc3Qu"

    invoke-virtual {v7, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_0

    if-nez v10, :cond_3

    :try_start_18
    const-string v4, "VGhpcyBpcyB0aGUgcHJlZml4IGZvciBCaWdJbnRlZ2Vy"

    invoke-virtual {v7, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_0

    if-eqz v10, :cond_2

    goto :goto_4

    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lb/a/c/a/b;->a:Landroid/content/SharedPreferences;

    :try_start_19
    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    invoke-interface {v14, v5, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v14, v1}, Lb/a/c/a/b;->a(Landroid/content/SharedPreferences$Editor;Lb/a/b/a/m$d;)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_0

    return-void

    :cond_3
    :goto_4
    :try_start_1a
    const-string v4, "StorageError"

    const-string v23, "This string cannot be stored as it clashes with special identifier prefixes."

    const/16 v24, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v4, v1, v2}, Lb/a/b/a/m$d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_0

    return-void

    :sswitch_f
    :try_start_1b
    const-string v4, "value"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lb/a/b/a/k;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_0

    move-object/from16 v26, v3

    check-cast v26, Ljava/lang/Number;

    move-object/from16 v25, v26

    .local v25, "$r14":Ljava/lang/Number;, ""
    move-object/from16 v0, v25

    instance-of v10, v0, Ljava/math/BigInteger;

    if-eqz v10, :cond_4

    move-object/from16 v28, v25

    check-cast v28, Ljava/math/BigInteger;

    move-object/from16 v27, v28

    .local v27, "$r15":Ljava/math/BigInteger;, ""
    move-object/from16 v0, p0

    iget-object v13, v0, Lb/a/c/a/b;->a:Landroid/content/SharedPreferences;

    :try_start_1c
    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v14
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_0

    new-instance v21, Ljava/lang/StringBuilder;

    :try_start_1d
    move-object/from16 v0, v21

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VGhpcyBpcyB0aGUgcHJlZml4IGZvciBCaWdJbnRlZ2Vy"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v18, 0x24

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v21

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v14, v5, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v14, v1}, Lb/a/c/a/b;->a(Landroid/content/SharedPreferences$Editor;Lb/a/b/a/m$d;)V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_0

    return-void

    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lb/a/c/a/b;->a:Landroid/content/SharedPreferences;

    :try_start_1e
    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    move-object/from16 v0, v25

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v29

    .local v29, "$l2":J, ""
    move-wide/from16 v0, v29

    invoke-interface {v14, v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v14, v1}, Lb/a/c/a/b;->a(Landroid/content/SharedPreferences$Editor;Lb/a/b/a/m$d;)V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_0

    return-void

    :sswitch_10
    :try_start_1f
    const-string v4, "value"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lb/a/b/a/k;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_0

    move-object/from16 v31, v3

    check-cast v31, Ljava/lang/Number;

    move-object/from16 v25, v31

    :try_start_20
    move-object/from16 v0, v25

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v32

    .local v32, "$d0":D, ""
    move-wide/from16 v0, v32

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v7
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lb/a/c/a/b;->a:Landroid/content/SharedPreferences;

    :try_start_21
    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v14
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_0

    new-instance v21, Ljava/lang/StringBuilder;

    :try_start_22
    move-object/from16 v0, v21

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VGhpcyBpcyB0aGUgcHJlZml4IGZvciBEb3VibGUu"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v21

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v14, v5, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v14, v1}, Lb/a/c/a/b;->a(Landroid/content/SharedPreferences$Editor;Lb/a/b/a/m$d;)V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_0

    return-void

    :sswitch_11
    move-object/from16 v0, p0

    iget-object v13, v0, Lb/a/c/a/b;->a:Landroid/content/SharedPreferences;

    :try_start_23
    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    const-string v4, "value"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lb/a/b/a/k;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_0

    move-object/from16 v34, v3

    check-cast v34, Ljava/lang/Boolean;

    move-object/from16 v17, v34

    :try_start_24
    move-object/from16 v0, v17

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-interface {v14, v5, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v14, v1}, Lb/a/c/a/b;->a(Landroid/content/SharedPreferences$Editor;Lb/a/b/a/m$d;)V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_24} :catch_0

    return-void

    :catch_0
    move-exception v35

    .local v35, "$r16":Ljava/io/IOException;, ""
    move-object/from16 v0, p1

    iget-object v5, v0, Lb/a/b/a/k;->a:Ljava/lang/String;

    const-string v4, "IOException encountered"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-interface {v0, v4, v5, v1}, Lb/a/b/a/m$d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x50c0d6c9 -> :sswitch_8
        -0x4a77d595 -> :sswitch_7
        -0x4161e5af -> :sswitch_6
        -0x37b5077c -> :sswitch_5
        -0x35fd8fd3 -> :sswitch_4
        0x5a5b64d -> :sswitch_3
        0x943d2d3 -> :sswitch_2
        0x2321b713 -> :sswitch_1
        0x76486a6c -> :sswitch_0
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
    .end local v12    # "$r7":Ljava/util/Set;, ""
    .end local v27    # "$r15":Ljava/math/BigInteger;, ""
    .end local v32    # "$d0":D, ""
    .end local v11    # "$r6":Ljava/util/Map;, ""
    .end local v10    # "$z0":Z, ""
    .end local v8    # "$b0":B, ""
    .end local v7    # "$r5":Ljava/lang/String;, ""
    .end local v25    # "$r14":Ljava/lang/Number;, ""
    .end local v15    # "$r10":Ljava/util/Iterator;, ""
    .end local v14    # "$r9":Landroid/content/SharedPreferences$Editor;, ""
    .end local v17    # "$r11":Ljava/lang/Boolean;, ""
    .end local v29    # "$l2":J, ""
    .end local v13    # "$r8":Landroid/content/SharedPreferences;, ""
    .end local v21    # "$r13":Ljava/lang/StringBuilder;, ""
    .end local v3    # "$r3":Ljava/lang/Object;, ""
    .end local v5    # "$r4":Ljava/lang/String;, ""
    .end local v9    # "$i1":I, ""
    .end local v19    # "$r12":Ljava/util/List;, ""
    .end local v35    # "$r16":Ljava/io/IOException;, ""
.end method
