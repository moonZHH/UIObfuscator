.class abstract synthetic Lio/flutter/plugin/platform/d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugin/platform/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I

.field static final synthetic c:[I


# direct methods
.method static constructor <clinit>()V
    .locals 18

    invoke-static {}, Lio/flutter/embedding/engine/e/i$b;->values()[Lio/flutter/embedding/engine/e/i$b;

    move-result-object v0

    .local v0, "$r9":[Lio/flutter/embedding/engine/e/i$b;, ""
    array-length v1, v0

    .local v1, "$i0":I, ""
    new-array v2, v1, [I

    .local v2, "$r10":[I, ""
    sput-object v2, Lio/flutter/plugin/platform/d;->c:[I

    :try_start_0
    sget-object v2, Lio/flutter/plugin/platform/d;->c:[I

    sget-object v3, Lio/flutter/embedding/engine/e/i$b;->b:Lio/flutter/embedding/engine/e/i$b;

    .local v3, "$r11":Lio/flutter/embedding/engine/e/i$b;, ""
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x1

    aput v4, v2, v1

    :goto_0
    :try_start_1
    sget-object v2, Lio/flutter/plugin/platform/d;->c:[I

    sget-object v3, Lio/flutter/embedding/engine/e/i$b;->a:Lio/flutter/embedding/engine/e/i$b;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v4, 0x2

    aput v4, v2, v1

    :goto_1
    invoke-static {}, Lio/flutter/embedding/engine/e/i$i;->values()[Lio/flutter/embedding/engine/e/i$i;

    move-result-object v5

    .local v5, "$r12":[Lio/flutter/embedding/engine/e/i$i;, ""
    array-length v1, v5

    new-array v2, v1, [I

    sput-object v2, Lio/flutter/plugin/platform/d;->b:[I

    :try_start_2
    sget-object v2, Lio/flutter/plugin/platform/d;->b:[I

    sget-object v6, Lio/flutter/embedding/engine/e/i$i;->a:Lio/flutter/embedding/engine/e/i$i;

    .local v6, "$r13":Lio/flutter/embedding/engine/e/i$i;, ""
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    const/4 v4, 0x1

    aput v4, v2, v1

    :goto_2
    :try_start_3
    sget-object v2, Lio/flutter/plugin/platform/d;->b:[I

    sget-object v6, Lio/flutter/embedding/engine/e/i$i;->b:Lio/flutter/embedding/engine/e/i$i;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    const/4 v4, 0x2

    aput v4, v2, v1

    :goto_3
    invoke-static {}, Lio/flutter/embedding/engine/e/i$e;->values()[Lio/flutter/embedding/engine/e/i$e;

    move-result-object v7

    .local v7, "$r14":[Lio/flutter/embedding/engine/e/i$e;, ""
    array-length v1, v7

    new-array v2, v1, [I

    sput-object v2, Lio/flutter/plugin/platform/d;->a:[I

    :try_start_4
    sget-object v2, Lio/flutter/plugin/platform/d;->a:[I

    sget-object v8, Lio/flutter/embedding/engine/e/i$e;->a:Lio/flutter/embedding/engine/e/i$e;

    .local v8, "$r15":Lio/flutter/embedding/engine/e/i$e;, ""
    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    const/4 v4, 0x1

    aput v4, v2, v1

    :goto_4
    :try_start_5
    sget-object v2, Lio/flutter/plugin/platform/d;->a:[I

    sget-object v8, Lio/flutter/embedding/engine/e/i$e;->b:Lio/flutter/embedding/engine/e/i$e;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    const/4 v4, 0x2

    aput v4, v2, v1

    :goto_5
    :try_start_6
    sget-object v2, Lio/flutter/plugin/platform/d;->a:[I

    sget-object v8, Lio/flutter/embedding/engine/e/i$e;->c:Lio/flutter/embedding/engine/e/i$e;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    const/4 v4, 0x3

    aput v4, v2, v1

    :goto_6
    :try_start_7
    sget-object v2, Lio/flutter/plugin/platform/d;->a:[I

    sget-object v8, Lio/flutter/embedding/engine/e/i$e;->d:Lio/flutter/embedding/engine/e/i$e;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    const/4 v4, 0x4

    aput v4, v2, v1

    :goto_7
    :try_start_8
    sget-object v2, Lio/flutter/plugin/platform/d;->a:[I

    sget-object v8, Lio/flutter/embedding/engine/e/i$e;->e:Lio/flutter/embedding/engine/e/i$e;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    const/4 v4, 0x5

    aput v4, v2, v1

    return-void

    :catch_0
    move-exception v9

    .local v9, "$r0":Ljava/lang/NoSuchFieldError;, ""
    goto :goto_0

    :catch_1
    move-exception v10

    .local v10, "$r1":Ljava/lang/NoSuchFieldError;, ""
    goto :goto_1

    :catch_2
    move-exception v11

    .local v11, "$r2":Ljava/lang/NoSuchFieldError;, ""
    goto :goto_2

    :catch_3
    move-exception v12

    .local v12, "$r3":Ljava/lang/NoSuchFieldError;, ""
    goto :goto_3

    :catch_4
    move-exception v13

    .local v13, "$r4":Ljava/lang/NoSuchFieldError;, ""
    goto :goto_4

    :catch_5
    move-exception v14

    .local v14, "$r5":Ljava/lang/NoSuchFieldError;, ""
    goto :goto_5

    :catch_6
    move-exception v15

    .local v15, "$r6":Ljava/lang/NoSuchFieldError;, ""
    goto :goto_6

    :catch_7
    move-exception v16

    .local v16, "$r7":Ljava/lang/NoSuchFieldError;, ""
    goto :goto_7

    :catch_8
    move-exception v17

    .local v17, "$r8":Ljava/lang/NoSuchFieldError;, ""
    return-void
    .end local v10    # "$r1":Ljava/lang/NoSuchFieldError;, ""
    .end local v13    # "$r4":Ljava/lang/NoSuchFieldError;, ""
    .end local v5    # "$r12":[Lio/flutter/embedding/engine/e/i$i;, ""
    .end local v1    # "$i0":I, ""
    .end local v16    # "$r7":Ljava/lang/NoSuchFieldError;, ""
    .end local v7    # "$r14":[Lio/flutter/embedding/engine/e/i$e;, ""
    .end local v11    # "$r2":Ljava/lang/NoSuchFieldError;, ""
    .end local v0    # "$r9":[Lio/flutter/embedding/engine/e/i$b;, ""
    .end local v2    # "$r10":[I, ""
    .end local v3    # "$r11":Lio/flutter/embedding/engine/e/i$b;, ""
    .end local v15    # "$r6":Ljava/lang/NoSuchFieldError;, ""
    .end local v8    # "$r15":Lio/flutter/embedding/engine/e/i$e;, ""
    .end local v17    # "$r8":Ljava/lang/NoSuchFieldError;, ""
    .end local v9    # "$r0":Ljava/lang/NoSuchFieldError;, ""
    .end local v6    # "$r13":Lio/flutter/embedding/engine/e/i$i;, ""
    .end local v14    # "$r5":Ljava/lang/NoSuchFieldError;, ""
    .end local v12    # "$r3":Ljava/lang/NoSuchFieldError;, ""
.end method
