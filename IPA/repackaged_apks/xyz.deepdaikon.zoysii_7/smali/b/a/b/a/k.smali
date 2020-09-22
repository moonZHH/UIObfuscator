.class public final Lb/a/b/a/k;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/a/b/a/k;->a:Ljava/lang/String;

    iput-object p2, p0, Lb/a/b/a/k;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    iget-object v0, p0, Lb/a/b/a/k;->b:Ljava/lang/Object;

    .local v0, "r1":Ljava/lang/Object;, ""
    return-object v0
    .end local v0    # "r1":Ljava/lang/Object;, ""
.end method

.method public a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lb/a/b/a/k;->b:Ljava/lang/Object;

    .local v0, "$r2":Ljava/lang/Object;, ""
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    iget-object v0, p0, Lb/a/b/a/k;->b:Ljava/lang/Object;

    instance-of v2, v0, Ljava/util/Map;

    .local v2, "$z0":Z, ""
    if-eqz v2, :cond_1

    iget-object v0, p0, Lb/a/b/a/k;->b:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Ljava/util/Map;

    move-object v3, v4

    .local v3, "$r3":Ljava/util/Map;, ""
    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lb/a/b/a/k;->b:Ljava/lang/Object;

    instance-of v2, v0, Lorg/json/JSONObject;

    if-eqz v2, :cond_2

    iget-object v0, p0, Lb/a/b/a/k;->b:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lorg/json/JSONObject;

    move-object v5, v6

    .local v5, "$r4":Lorg/json/JSONObject;, ""
    invoke-virtual {v5, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v7, Ljava/lang/ClassCastException;

    .local v7, "$r5":Ljava/lang/ClassCastException;, ""
    invoke-direct {v7}, Ljava/lang/ClassCastException;-><init>()V

    throw v7
    .end local v7    # "$r5":Ljava/lang/ClassCastException;, ""
    .end local v3    # "$r3":Ljava/util/Map;, ""
    .end local v2    # "$z0":Z, ""
    .end local v0    # "$r2":Ljava/lang/Object;, ""
    .end local v5    # "$r4":Lorg/json/JSONObject;, ""
.end method
