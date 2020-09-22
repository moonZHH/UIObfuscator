.class final enum Lio/flutter/view/p$e;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/view/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ZeroSides"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/flutter/view/p$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lio/flutter/view/p$e;

.field public static final enum b:Lio/flutter/view/p$e;

.field public static final enum c:Lio/flutter/view/p$e;

.field public static final enum d:Lio/flutter/view/p$e;

.field private static final synthetic e:[Lio/flutter/view/p$e;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lio/flutter/view/p$e;

    .local v0, "$r0":Lio/flutter/view/p$e;, ""
    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/flutter/view/p$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/flutter/view/p$e;->a:Lio/flutter/view/p$e;

    new-instance v0, Lio/flutter/view/p$e;

    const-string v1, "LEFT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/flutter/view/p$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/flutter/view/p$e;->b:Lio/flutter/view/p$e;

    new-instance v0, Lio/flutter/view/p$e;

    const-string v1, "RIGHT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lio/flutter/view/p$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/flutter/view/p$e;->c:Lio/flutter/view/p$e;

    new-instance v0, Lio/flutter/view/p$e;

    const-string v1, "BOTH"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lio/flutter/view/p$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/flutter/view/p$e;->d:Lio/flutter/view/p$e;

    const/4 v2, 0x4

    new-array v3, v2, [Lio/flutter/view/p$e;

    .local v3, "$r1":[Lio/flutter/view/p$e;, ""
    sget-object v0, Lio/flutter/view/p$e;->a:Lio/flutter/view/p$e;

    const/4 v2, 0x0

    aput-object v0, v3, v2

    sget-object v0, Lio/flutter/view/p$e;->b:Lio/flutter/view/p$e;

    const/4 v2, 0x1

    aput-object v0, v3, v2

    sget-object v0, Lio/flutter/view/p$e;->c:Lio/flutter/view/p$e;

    const/4 v2, 0x2

    aput-object v0, v3, v2

    sget-object v0, Lio/flutter/view/p$e;->d:Lio/flutter/view/p$e;

    const/4 v2, 0x3

    aput-object v0, v3, v2

    sput-object v3, Lio/flutter/view/p$e;->e:[Lio/flutter/view/p$e;

    return-void
    .end local v3    # "$r1":[Lio/flutter/view/p$e;, ""
    .end local v0    # "$r0":Lio/flutter/view/p$e;, ""
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/flutter/view/p$e;
    .locals 4

    const-class v1, Lio/flutter/view/p$e;

    invoke-static {v1, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    .local v0, "$r0":Ljava/lang/Enum;, ""
    move-object v3, v0

    check-cast v3, Lio/flutter/view/p$e;

    move-object v2, v3

    .local v2, "$r2":Lio/flutter/view/p$e;, ""
    return-object v2
    .end local v0    # "$r0":Ljava/lang/Enum;, ""
    .end local v2    # "$r2":Lio/flutter/view/p$e;, ""
.end method

.method public static values()[Lio/flutter/view/p$e;
    .locals 3

    sget-object v0, Lio/flutter/view/p$e;->e:[Lio/flutter/view/p$e;

    .local v0, "$r1":[Lio/flutter/view/p$e;, ""
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    .local v1, "$r0":Ljava/lang/Object;, ""
    move-object v2, v1

    check-cast v2, [Lio/flutter/view/p$e;

    move-object v0, v2

    return-object v0
    .end local v1    # "$r0":Ljava/lang/Object;, ""
    .end local v0    # "$r1":[Lio/flutter/view/p$e;, ""
.end method
