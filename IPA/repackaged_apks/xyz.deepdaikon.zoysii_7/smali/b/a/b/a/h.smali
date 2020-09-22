.class public final Lb/a/b/a/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/a/b/a/n;


# static fields
.field public static final a:Lb/a/b/a/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lb/a/b/a/h;

    .local v0, "$r0":Lb/a/b/a/h;, ""
    invoke-direct {v0}, Lb/a/b/a/h;-><init>()V

    sput-object v0, Lb/a/b/a/h;->a:Lb/a/b/a/h;

    return-void
    .end local v0    # "$r0":Lb/a/b/a/h;, ""
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/nio/ByteBuffer;)Lb/a/b/a/k;
    .locals 14

    sget-object v0, Lb/a/b/a/g;->a:Lb/a/b/a/g;

    .local v0, "$r2":Lb/a/b/a/g;, ""
    :try_start_0
    invoke-virtual {v0, p1}, Lb/a/b/a/g;->a(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .local v1, "$r3":Ljava/lang/Object;, ""
    instance-of v2, v1, Lorg/json/JSONObject;

    .local v2, "$z0":Z, ""
    if-eqz v2, :cond_0

    move-object v4, v1

    check-cast v4, Lorg/json/JSONObject;

    move-object v3, v4

    .local v3, "$r4":Lorg/json/JSONObject;, ""
    :try_start_1
    const-string v6, "method"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .local v5, "$r5":Ljava/lang/Object;, ""
    const-string v6, "args"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .local v7, "$r6":Ljava/lang/Object;, ""
    invoke-virtual {p0, v7}, Lb/a/b/a/h;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    instance-of v2, v5, Ljava/lang/String;

    if-eqz v2, :cond_0

    new-instance v8, Lb/a/b/a/k;

    .local v8, "$r7":Lb/a/b/a/k;, ""
    move-object v10, v5

    check-cast v10, Ljava/lang/String;

    move-object v9, v10

    .local v9, "$r8":Ljava/lang/String;, ""
    :try_start_2
    invoke-direct {v8, v9, v7}, Lb/a/b/a/k;-><init>(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v8

    :cond_0
    new-instance v11, Ljava/lang/IllegalArgumentException;

    .local v11, "$r9":Ljava/lang/IllegalArgumentException;, ""
    new-instance v12, Ljava/lang/StringBuilder;

    .local v12, "$r10":Ljava/lang/StringBuilder;, ""
    :try_start_3
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid method call: "

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v11, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    throw v11

    :catch_0
    move-exception v13

    .local v13, "$r11":Lorg/json/JSONException;, ""
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v6, "Invalid JSON"

    invoke-direct {v11, v6, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11
    .end local v9    # "$r8":Ljava/lang/String;, ""
    .end local v11    # "$r9":Ljava/lang/IllegalArgumentException;, ""
    .end local v3    # "$r4":Lorg/json/JSONObject;, ""
    .end local v7    # "$r6":Ljava/lang/Object;, ""
    .end local v13    # "$r11":Lorg/json/JSONException;, ""
    .end local v1    # "$r3":Ljava/lang/Object;, ""
    .end local v5    # "$r5":Ljava/lang/Object;, ""
    .end local v8    # "$r7":Lb/a/b/a/k;, ""
    .end local v2    # "$z0":Z, ""
    .end local v0    # "$r2":Lb/a/b/a/g;, ""
    .end local v12    # "$r10":Ljava/lang/StringBuilder;, ""
.end method

.method public a(Lb/a/b/a/k;)Ljava/nio/ByteBuffer;
    .locals 8

    new-instance v0, Lorg/json/JSONObject;

    .local v0, "$r3":Lorg/json/JSONObject;, ""
    :try_start_0
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p1, Lb/a/b/a/k;->a:Ljava/lang/String;

    .local v1, "$r1":Ljava/lang/String;, ""
    :try_start_1
    const-string v2, "method"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    iget-object v3, p1, Lb/a/b/a/k;->b:Ljava/lang/Object;

    .local v3, "$r4":Ljava/lang/Object;, ""
    :try_start_2
    invoke-static {v3}, Lb/a/b/a/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v2, "args"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    sget-object v4, Lb/a/b/a/g;->a:Lb/a/b/a/g;

    .local v4, "$r5":Lb/a/b/a/g;, ""
    :try_start_3
    invoke-virtual {v4, v0}, Lb/a/b/a/g;->a(Ljava/lang/Object;)Ljava/nio/ByteBuffer;

    move-result-object v5
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    .local v5, "$r6":Ljava/nio/ByteBuffer;, ""
    return-object v5

    :catch_0
    move-exception v6

    .local v6, "$r7":Lorg/json/JSONException;, ""
    new-instance v7, Ljava/lang/IllegalArgumentException;

    .local v7, "$r8":Ljava/lang/IllegalArgumentException;, ""
    const-string v2, "Invalid JSON"

    invoke-direct {v7, v2, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
    .end local v1    # "$r1":Ljava/lang/String;, ""
    .end local v4    # "$r5":Lb/a/b/a/g;, ""
    .end local v5    # "$r6":Ljava/nio/ByteBuffer;, ""
    .end local v0    # "$r3":Lorg/json/JSONObject;, ""
    .end local v3    # "$r4":Ljava/lang/Object;, ""
    .end local v6    # "$r7":Lorg/json/JSONException;, ""
    .end local v7    # "$r8":Ljava/lang/IllegalArgumentException;, ""
.end method

.method public a(Ljava/lang/Object;)Ljava/nio/ByteBuffer;
    .locals 3

    sget-object v0, Lb/a/b/a/g;->a:Lb/a/b/a/g;

    .local v0, "$r1":Lb/a/b/a/g;, ""
    new-instance v1, Lorg/json/JSONArray;

    .local v1, "$r2":Lorg/json/JSONArray;, ""
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-static {p1}, Lb/a/b/a/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .local p1, "$r3":Ljava/lang/Object;, ""
    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/a/b/a/g;->a(Ljava/lang/Object;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .local v2, "$r4":Ljava/nio/ByteBuffer;, ""
    return-object v2
    .end local p1    # "$r3":Ljava/lang/Object;, ""
    .end local v0    # "$r1":Lb/a/b/a/g;, ""
    .end local v1    # "$r2":Lorg/json/JSONArray;, ""
    .end local v2    # "$r4":Ljava/nio/ByteBuffer;, ""
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/nio/ByteBuffer;
    .locals 4

    sget-object v0, Lb/a/b/a/g;->a:Lb/a/b/a/g;

    .local v0, "$r2":Lb/a/b/a/g;, ""
    new-instance v1, Lorg/json/JSONArray;

    .local v1, "$r3":Lorg/json/JSONArray;, ""
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {p2}, Lb/a/b/a/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .local v2, "$r6":Ljava/lang/Object;, ""
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {p3}, Lb/a/b/a/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .local p3, "$r1":Ljava/lang/Object;, ""
    invoke-virtual {v1, p3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/a/b/a/g;->a(Ljava/lang/Object;)Ljava/nio/ByteBuffer;

    move-result-object v3

    .local v3, "$r7":Ljava/nio/ByteBuffer;, ""
    return-object v3
    .end local v3    # "$r7":Ljava/nio/ByteBuffer;, ""
    .end local v2    # "$r6":Ljava/lang/Object;, ""
    .end local v1    # "$r3":Lorg/json/JSONArray;, ""
    .end local p3    # "$r1":Ljava/lang/Object;, ""
    .end local v0    # "$r2":Lb/a/b/a/g;, ""
.end method

.method b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    .local v0, "$r1":Ljava/lang/Object;, ""
    if-ne p1, v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    return-object p1
    .end local v0    # "$r1":Ljava/lang/Object;, ""
.end method

.method public b(Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .locals 22

    sget-object v3, Lb/a/b/a/g;->a:Lb/a/b/a/g;

    .local v3, "$r2":Lb/a/b/a/g;, ""
    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lb/a/b/a/g;->a(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .local v4, "$r3":Ljava/lang/Object;, ""
    instance-of v5, v4, Lorg/json/JSONArray;

    .local v5, "$z0":Z, ""
    if-eqz v5, :cond_2

    move-object v7, v4

    check-cast v7, Lorg/json/JSONArray;

    move-object v6, v7

    .local v6, "$r4":Lorg/json/JSONArray;, ""
    :try_start_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v8
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .local v8, "$i0":I, ""
    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    :try_start_2
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lb/a/b/a/h;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v4

    :cond_0
    :try_start_3
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v8
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    const/4 v9, 0x3

    if-ne v8, v9, :cond_2

    :try_start_4
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    .local v10, "$r5":Ljava/lang/Object;, ""
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v11

    .local v11, "$r6":Ljava/lang/Object;, ""
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lb/a/b/a/h;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    const/4 v9, 0x2

    invoke-virtual {v6, v9}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v12

    .local v12, "$r7":Ljava/lang/Object;, ""
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lb/a/b/a/h;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    instance-of v5, v10, Ljava/lang/String;

    if-eqz v5, :cond_2

    if-eqz v11, :cond_1

    instance-of v5, v11, Ljava/lang/String;

    if-eqz v5, :cond_2

    :cond_1
    new-instance v13, Lb/a/b/a/f;

    .local v13, "$r8":Lb/a/b/a/f;, ""
    move-object v15, v10

    check-cast v15, Ljava/lang/String;

    move-object v14, v15

    .local v14, "$r9":Ljava/lang/String;, ""
    move-object/from16 v17, v11

    check-cast v17, Ljava/lang/String;

    move-object/from16 v16, v17

    .local v16, "$r10":Ljava/lang/String;, ""
    :try_start_5
    move-object/from16 v0, v16

    invoke-direct {v13, v14, v0, v12}, Lb/a/b/a/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    throw v13

    :cond_2
    new-instance v18, Ljava/lang/IllegalArgumentException;

    .local v18, "$r11":Ljava/lang/IllegalArgumentException;, ""
    new-instance v19, Ljava/lang/StringBuilder;

    .local v19, "$r12":Ljava/lang/StringBuilder;, ""
    :try_start_6
    move-object/from16 v0, v19

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Invalid envelope: "

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v19

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, v18

    invoke-direct {v0, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0

    throw v18

    :catch_0
    move-exception v21

    .local v21, "$r13":Lorg/json/JSONException;, ""
    new-instance v18, Ljava/lang/IllegalArgumentException;

    const-string v20, "Invalid JSON"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v18
    .end local v19    # "$r12":Ljava/lang/StringBuilder;, ""
    .end local v16    # "$r10":Ljava/lang/String;, ""
    .end local v6    # "$r4":Lorg/json/JSONArray;, ""
    .end local v8    # "$i0":I, ""
    .end local v4    # "$r3":Ljava/lang/Object;, ""
    .end local v12    # "$r7":Ljava/lang/Object;, ""
    .end local v18    # "$r11":Ljava/lang/IllegalArgumentException;, ""
    .end local v21    # "$r13":Lorg/json/JSONException;, ""
    .end local v14    # "$r9":Ljava/lang/String;, ""
    .end local v3    # "$r2":Lb/a/b/a/g;, ""
    .end local v11    # "$r6":Ljava/lang/Object;, ""
    .end local v13    # "$r8":Lb/a/b/a/f;, ""
    .end local v5    # "$z0":Z, ""
    .end local v10    # "$r5":Ljava/lang/Object;, ""
.end method
