.class abstract Lio/flutter/embedding/engine/b/e;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lio/flutter/embedding/engine/b/e;->b()[Ljava/lang/String;

    move-result-object v0

    .local v0, "$r0":[Ljava/lang/String;, ""
    sput-object v0, Lio/flutter/embedding/engine/b/e;->a:[Ljava/lang/String;

    return-void
    .end local v0    # "$r0":[Ljava/lang/String;, ""
.end method

.method private static b()[Ljava/lang/String;
    .locals 10

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .local v0, "$i0":I, ""
    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    sget-object v2, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .local v2, "$r1":[Ljava/lang/String;, ""
    return-object v2

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    .local v3, "$r0":Ljava/util/ArrayList;, ""
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    sget-object v4, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .local v4, "$r2":Ljava/lang/String;, ""
    const/4 v1, 0x0

    aput-object v4, v2, v1

    sget-object v4, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    const/4 v1, 0x1

    aput-object v4, v2, v1

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .local v5, "$r3":Ljava/util/List;, ""
    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v6, 0x0

    aput-object v6, v2, v1

    const/4 v1, 0x1

    const-string v7, ""

    aput-object v7, v2, v1

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    .local v8, "$r4":[Ljava/lang/Object;, ""
    move-object v9, v8

    check-cast v9, [Ljava/lang/String;

    move-object v2, v9

    return-object v2
    .end local v4    # "$r2":Ljava/lang/String;, ""
    .end local v5    # "$r3":Ljava/util/List;, ""
    .end local v3    # "$r0":Ljava/util/ArrayList;, ""
    .end local v2    # "$r1":[Ljava/lang/String;, ""
    .end local v8    # "$r4":[Ljava/lang/Object;, ""
    .end local v0    # "$i0":I, ""
.end method


# virtual methods
.method abstract a()V
.end method
