.class abstract synthetic Lio/flutter/embedding/engine/e/h;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/engine/e/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    invoke-static {}, Lio/flutter/embedding/engine/e/i$i;->values()[Lio/flutter/embedding/engine/e/i$i;

    move-result-object v0

    .local v0, "$r6":[Lio/flutter/embedding/engine/e/i$i;, ""
    array-length v1, v0

    .local v1, "$i0":I, ""
    new-array v2, v1, [I

    .local v2, "$r7":[I, ""
    sput-object v2, Lio/flutter/embedding/engine/e/h;->b:[I

    :try_start_0
    sget-object v2, Lio/flutter/embedding/engine/e/h;->b:[I

    sget-object v3, Lio/flutter/embedding/engine/e/i$i;->a:Lio/flutter/embedding/engine/e/i$i;

    .local v3, "$r8":Lio/flutter/embedding/engine/e/i$i;, ""
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x1

    aput v4, v2, v1

    :goto_0
    :try_start_1
    sget-object v2, Lio/flutter/embedding/engine/e/h;->b:[I

    sget-object v3, Lio/flutter/embedding/engine/e/i$i;->b:Lio/flutter/embedding/engine/e/i$i;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v4, 0x2

    aput v4, v2, v1

    :goto_1
    invoke-static {}, Lio/flutter/embedding/engine/e/i$d;->values()[Lio/flutter/embedding/engine/e/i$d;

    move-result-object v5

    .local v5, "$r9":[Lio/flutter/embedding/engine/e/i$d;, ""
    array-length v1, v5

    new-array v2, v1, [I

    sput-object v2, Lio/flutter/embedding/engine/e/h;->a:[I

    :try_start_2
    sget-object v2, Lio/flutter/embedding/engine/e/h;->a:[I

    sget-object v6, Lio/flutter/embedding/engine/e/i$d;->a:Lio/flutter/embedding/engine/e/i$d;

    .local v6, "$r10":Lio/flutter/embedding/engine/e/i$d;, ""
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    const/4 v4, 0x1

    aput v4, v2, v1

    :goto_2
    :try_start_3
    sget-object v2, Lio/flutter/embedding/engine/e/h;->a:[I

    sget-object v6, Lio/flutter/embedding/engine/e/i$d;->b:Lio/flutter/embedding/engine/e/i$d;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    const/4 v4, 0x2

    aput v4, v2, v1

    :goto_3
    :try_start_4
    sget-object v2, Lio/flutter/embedding/engine/e/h;->a:[I

    sget-object v6, Lio/flutter/embedding/engine/e/i$d;->c:Lio/flutter/embedding/engine/e/i$d;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    const/4 v4, 0x3

    aput v4, v2, v1

    :goto_4
    :try_start_5
    sget-object v2, Lio/flutter/embedding/engine/e/h;->a:[I

    sget-object v6, Lio/flutter/embedding/engine/e/i$d;->d:Lio/flutter/embedding/engine/e/i$d;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    const/4 v4, 0x4

    aput v4, v2, v1

    return-void

    :catch_0
    move-exception v7

    .local v7, "$r0":Ljava/lang/NoSuchFieldError;, ""
    goto :goto_0

    :catch_1
    move-exception v8

    .local v8, "$r1":Ljava/lang/NoSuchFieldError;, ""
    goto :goto_1

    :catch_2
    move-exception v9

    .local v9, "$r2":Ljava/lang/NoSuchFieldError;, ""
    goto :goto_2

    :catch_3
    move-exception v10

    .local v10, "$r3":Ljava/lang/NoSuchFieldError;, ""
    goto :goto_3

    :catch_4
    move-exception v11

    .local v11, "$r4":Ljava/lang/NoSuchFieldError;, ""
    goto :goto_4

    :catch_5
    move-exception v12

    .local v12, "$r5":Ljava/lang/NoSuchFieldError;, ""
    return-void
    .end local v6    # "$r10":Lio/flutter/embedding/engine/e/i$d;, ""
    .end local v9    # "$r2":Ljava/lang/NoSuchFieldError;, ""
    .end local v5    # "$r9":[Lio/flutter/embedding/engine/e/i$d;, ""
    .end local v12    # "$r5":Ljava/lang/NoSuchFieldError;, ""
    .end local v3    # "$r8":Lio/flutter/embedding/engine/e/i$i;, ""
    .end local v0    # "$r6":[Lio/flutter/embedding/engine/e/i$i;, ""
    .end local v1    # "$i0":I, ""
    .end local v11    # "$r4":Ljava/lang/NoSuchFieldError;, ""
    .end local v2    # "$r7":[I, ""
    .end local v8    # "$r1":Ljava/lang/NoSuchFieldError;, ""
    .end local v7    # "$r0":Ljava/lang/NoSuchFieldError;, ""
    .end local v10    # "$r3":Ljava/lang/NoSuchFieldError;, ""
.end method
