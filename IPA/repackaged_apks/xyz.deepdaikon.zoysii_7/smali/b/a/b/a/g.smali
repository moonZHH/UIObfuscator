.class public final Lb/a/b/a/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/a/b/a/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lb/a/b/a/j",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lb/a/b/a/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lb/a/b/a/g;

    .local v0, "$r0":Lb/a/b/a/g;, ""
    invoke-direct {v0}, Lb/a/b/a/g;-><init>()V

    sput-object v0, Lb/a/b/a/g;->a:Lb/a/b/a/g;

    return-void
    .end local v0    # "$r0":Lb/a/b/a/g;, ""
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .locals 9

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    sget-object v1, Lb/a/b/a/r;->b:Lb/a/b/a/r;

    .local v1, "$r2":Lb/a/b/a/r;, ""
    :try_start_0
    invoke-virtual {v1, p1}, Lb/a/b/a/r;->b(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .local v2, "$r3":Ljava/lang/String;, ""
    new-instance v3, Lorg/json/JSONTokener;

    .local v3, "$r4":Lorg/json/JSONTokener;, ""
    :try_start_1
    invoke-direct {v3, v2}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v4

    .local v4, "$r5":Ljava/lang/Object;, ""
    invoke-virtual {v3}, Lorg/json/JSONTokener;->more()Z

    move-result v5
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .local v5, "$z0":Z, ""
    if-nez v5, :cond_1

    return-object v4

    :cond_1
    new-instance v6, Ljava/lang/IllegalArgumentException;

    .local v6, "$r6":Ljava/lang/IllegalArgumentException;, ""
    :try_start_2
    const-string v7, "Invalid JSON"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    throw v6

    :catch_0
    move-exception v8

    .local v8, "$r7":Lorg/json/JSONException;, ""
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Invalid JSON"

    invoke-direct {v6, v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
    .end local v5    # "$z0":Z, ""
    .end local v6    # "$r6":Ljava/lang/IllegalArgumentException;, ""
    .end local v1    # "$r2":Lb/a/b/a/r;, ""
    .end local v2    # "$r3":Ljava/lang/String;, ""
    .end local v8    # "$r7":Lorg/json/JSONException;, ""
    .end local v3    # "$r4":Lorg/json/JSONTokener;, ""
    .end local v4    # "$r5":Ljava/lang/Object;, ""
.end method

.method public a(Ljava/lang/Object;)Ljava/nio/ByteBuffer;
    .locals 6

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {p1}, Lb/a/b/a/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .local p1, "$r1":Ljava/lang/Object;, ""
    instance-of v1, p1, Ljava/lang/String;

    .local v1, "$z0":Z, ""
    if-eqz v1, :cond_1

    sget-object v2, Lb/a/b/a/r;->b:Lb/a/b/a/r;

    .local v2, "$r2":Lb/a/b/a/r;, ""
    move-object v4, p1

    check-cast v4, Ljava/lang/String;

    move-object v3, v4

    .local v3, "$r3":Ljava/lang/String;, ""
    invoke-static {v3}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lb/a/b/a/r;->a(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v5

    .local v5, "$r4":Ljava/nio/ByteBuffer;, ""
    return-object v5

    :cond_1
    sget-object v2, Lb/a/b/a/r;->b:Lb/a/b/a/r;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lb/a/b/a/r;->a(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v5

    return-object v5
    .end local p1    # "$r1":Ljava/lang/Object;, ""
    .end local v3    # "$r3":Ljava/lang/String;, ""
    .end local v1    # "$z0":Z, ""
    .end local v5    # "$r4":Ljava/nio/ByteBuffer;, ""
    .end local v2    # "$r2":Lb/a/b/a/r;, ""
.end method
