.class public final enum Lio/flutter/embedding/engine/e/i$e;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/engine/e/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HapticFeedbackType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/flutter/embedding/engine/e/i$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lio/flutter/embedding/engine/e/i$e;

.field public static final enum b:Lio/flutter/embedding/engine/e/i$e;

.field public static final enum c:Lio/flutter/embedding/engine/e/i$e;

.field public static final enum d:Lio/flutter/embedding/engine/e/i$e;

.field public static final enum e:Lio/flutter/embedding/engine/e/i$e;

.field private static final synthetic f:[Lio/flutter/embedding/engine/e/i$e;


# instance fields
.field private final g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lio/flutter/embedding/engine/e/i$e;

    .local v0, "$r0":Lio/flutter/embedding/engine/e/i$e;, ""
    const-string v1, "STANDARD"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lio/flutter/embedding/engine/e/i$e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/flutter/embedding/engine/e/i$e;->a:Lio/flutter/embedding/engine/e/i$e;

    new-instance v0, Lio/flutter/embedding/engine/e/i$e;

    const-string v1, "LIGHT_IMPACT"

    const/4 v2, 0x1

    const-string v4, "HapticFeedbackType.lightImpact"

    invoke-direct {v0, v1, v2, v4}, Lio/flutter/embedding/engine/e/i$e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/flutter/embedding/engine/e/i$e;->b:Lio/flutter/embedding/engine/e/i$e;

    new-instance v0, Lio/flutter/embedding/engine/e/i$e;

    const-string v1, "MEDIUM_IMPACT"

    const/4 v2, 0x2

    const-string v4, "HapticFeedbackType.mediumImpact"

    invoke-direct {v0, v1, v2, v4}, Lio/flutter/embedding/engine/e/i$e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/flutter/embedding/engine/e/i$e;->c:Lio/flutter/embedding/engine/e/i$e;

    new-instance v0, Lio/flutter/embedding/engine/e/i$e;

    const-string v1, "HEAVY_IMPACT"

    const/4 v2, 0x3

    const-string v4, "HapticFeedbackType.heavyImpact"

    invoke-direct {v0, v1, v2, v4}, Lio/flutter/embedding/engine/e/i$e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/flutter/embedding/engine/e/i$e;->d:Lio/flutter/embedding/engine/e/i$e;

    new-instance v0, Lio/flutter/embedding/engine/e/i$e;

    const-string v1, "SELECTION_CLICK"

    const/4 v2, 0x4

    const-string v4, "HapticFeedbackType.selectionClick"

    invoke-direct {v0, v1, v2, v4}, Lio/flutter/embedding/engine/e/i$e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/flutter/embedding/engine/e/i$e;->e:Lio/flutter/embedding/engine/e/i$e;

    const/4 v2, 0x5

    new-array v5, v2, [Lio/flutter/embedding/engine/e/i$e;

    .local v5, "$r1":[Lio/flutter/embedding/engine/e/i$e;, ""
    sget-object v0, Lio/flutter/embedding/engine/e/i$e;->a:Lio/flutter/embedding/engine/e/i$e;

    const/4 v2, 0x0

    aput-object v0, v5, v2

    sget-object v0, Lio/flutter/embedding/engine/e/i$e;->b:Lio/flutter/embedding/engine/e/i$e;

    const/4 v2, 0x1

    aput-object v0, v5, v2

    sget-object v0, Lio/flutter/embedding/engine/e/i$e;->c:Lio/flutter/embedding/engine/e/i$e;

    const/4 v2, 0x2

    aput-object v0, v5, v2

    sget-object v0, Lio/flutter/embedding/engine/e/i$e;->d:Lio/flutter/embedding/engine/e/i$e;

    const/4 v2, 0x3

    aput-object v0, v5, v2

    sget-object v0, Lio/flutter/embedding/engine/e/i$e;->e:Lio/flutter/embedding/engine/e/i$e;

    const/4 v2, 0x4

    aput-object v0, v5, v2

    sput-object v5, Lio/flutter/embedding/engine/e/i$e;->f:[Lio/flutter/embedding/engine/e/i$e;

    return-void
    .end local v5    # "$r1":[Lio/flutter/embedding/engine/e/i$e;, ""
    .end local v0    # "$r0":Lio/flutter/embedding/engine/e/i$e;, ""
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lio/flutter/embedding/engine/e/i$e;->g:Ljava/lang/String;

    return-void
.end method

.method static a(Ljava/lang/String;)Lio/flutter/embedding/engine/e/i$e;
    .locals 9

    invoke-static {}, Lio/flutter/embedding/engine/e/i$e;->values()[Lio/flutter/embedding/engine/e/i$e;

    move-result-object v0

    .local v0, "$r2":[Lio/flutter/embedding/engine/e/i$e;, ""
    array-length v1, v0

    .local v1, "$i0":I, ""
    const/4 v2, 0x0

    .local v2, "$i1":I, ""
    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .local v3, "$r0":Lio/flutter/embedding/engine/e/i$e;, ""
    iget-object v4, v3, Lio/flutter/embedding/engine/e/i$e;->g:Ljava/lang/String;

    .local v4, "$r3":Ljava/lang/String;, ""
    if-nez v4, :cond_0

    if-eqz p0, :cond_3

    :cond_0
    iget-object v4, v3, Lio/flutter/embedding/engine/e/i$e;->g:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, v3, Lio/flutter/embedding/engine/e/i$e;->g:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .local v5, "$z0":Z, ""
    if-eqz v5, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    new-instance v6, Ljava/lang/NoSuchFieldException;

    .local v6, "$r4":Ljava/lang/NoSuchFieldException;, ""
    new-instance v7, Ljava/lang/StringBuilder;

    .local v7, "$r5":Ljava/lang/StringBuilder;, ""
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No such HapticFeedbackType: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .local p0, "$r1":Ljava/lang/String;, ""
    invoke-direct {v6, p0}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_3
    return-object v3
    .end local v0    # "$r2":[Lio/flutter/embedding/engine/e/i$e;, ""
    .end local v3    # "$r0":Lio/flutter/embedding/engine/e/i$e;, ""
    .end local v5    # "$z0":Z, ""
    .end local v2    # "$i1":I, ""
    .end local v1    # "$i0":I, ""
    .end local v7    # "$r5":Ljava/lang/StringBuilder;, ""
    .end local v6    # "$r4":Ljava/lang/NoSuchFieldException;, ""
    .end local p0    # "$r1":Ljava/lang/String;, ""
    .end local v4    # "$r3":Ljava/lang/String;, ""
.end method

.method public static valueOf(Ljava/lang/String;)Lio/flutter/embedding/engine/e/i$e;
    .locals 4

    const-class v1, Lio/flutter/embedding/engine/e/i$e;

    invoke-static {v1, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    .local v0, "$r0":Ljava/lang/Enum;, ""
    move-object v3, v0

    check-cast v3, Lio/flutter/embedding/engine/e/i$e;

    move-object v2, v3

    .local v2, "$r2":Lio/flutter/embedding/engine/e/i$e;, ""
    return-object v2
    .end local v0    # "$r0":Ljava/lang/Enum;, ""
    .end local v2    # "$r2":Lio/flutter/embedding/engine/e/i$e;, ""
.end method

.method public static values()[Lio/flutter/embedding/engine/e/i$e;
    .locals 3

    sget-object v0, Lio/flutter/embedding/engine/e/i$e;->f:[Lio/flutter/embedding/engine/e/i$e;

    .local v0, "$r1":[Lio/flutter/embedding/engine/e/i$e;, ""
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    .local v1, "$r0":Ljava/lang/Object;, ""
    move-object v2, v1

    check-cast v2, [Lio/flutter/embedding/engine/e/i$e;

    move-object v0, v2

    return-object v0
    .end local v1    # "$r0":Ljava/lang/Object;, ""
    .end local v0    # "$r1":[Lio/flutter/embedding/engine/e/i$e;, ""
.end method
