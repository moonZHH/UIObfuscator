.class public final enum Lio/flutter/embedding/engine/e/m$b;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/engine/e/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PlatformBrightness"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/flutter/embedding/engine/e/m$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lio/flutter/embedding/engine/e/m$b;

.field public static final enum b:Lio/flutter/embedding/engine/e/m$b;

.field private static final synthetic c:[Lio/flutter/embedding/engine/e/m$b;


# instance fields
.field public d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lio/flutter/embedding/engine/e/m$b;

    .local v0, "$r0":Lio/flutter/embedding/engine/e/m$b;, ""
    const-string v1, "light"

    const/4 v2, 0x0

    const-string v3, "light"

    invoke-direct {v0, v1, v2, v3}, Lio/flutter/embedding/engine/e/m$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/flutter/embedding/engine/e/m$b;->a:Lio/flutter/embedding/engine/e/m$b;

    new-instance v0, Lio/flutter/embedding/engine/e/m$b;

    const-string v1, "dark"

    const/4 v2, 0x1

    const-string v3, "dark"

    invoke-direct {v0, v1, v2, v3}, Lio/flutter/embedding/engine/e/m$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/flutter/embedding/engine/e/m$b;->b:Lio/flutter/embedding/engine/e/m$b;

    const/4 v2, 0x2

    new-array v4, v2, [Lio/flutter/embedding/engine/e/m$b;

    .local v4, "$r1":[Lio/flutter/embedding/engine/e/m$b;, ""
    sget-object v0, Lio/flutter/embedding/engine/e/m$b;->a:Lio/flutter/embedding/engine/e/m$b;

    const/4 v2, 0x0

    aput-object v0, v4, v2

    sget-object v0, Lio/flutter/embedding/engine/e/m$b;->b:Lio/flutter/embedding/engine/e/m$b;

    const/4 v2, 0x1

    aput-object v0, v4, v2

    sput-object v4, Lio/flutter/embedding/engine/e/m$b;->c:[Lio/flutter/embedding/engine/e/m$b;

    return-void
    .end local v4    # "$r1":[Lio/flutter/embedding/engine/e/m$b;, ""
    .end local v0    # "$r0":Lio/flutter/embedding/engine/e/m$b;, ""
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

    iput-object p3, p0, Lio/flutter/embedding/engine/e/m$b;->d:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/flutter/embedding/engine/e/m$b;
    .locals 4

    const-class v1, Lio/flutter/embedding/engine/e/m$b;

    invoke-static {v1, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    .local v0, "$r0":Ljava/lang/Enum;, ""
    move-object v3, v0

    check-cast v3, Lio/flutter/embedding/engine/e/m$b;

    move-object v2, v3

    .local v2, "$r2":Lio/flutter/embedding/engine/e/m$b;, ""
    return-object v2
    .end local v2    # "$r2":Lio/flutter/embedding/engine/e/m$b;, ""
    .end local v0    # "$r0":Ljava/lang/Enum;, ""
.end method

.method public static values()[Lio/flutter/embedding/engine/e/m$b;
    .locals 3

    sget-object v0, Lio/flutter/embedding/engine/e/m$b;->c:[Lio/flutter/embedding/engine/e/m$b;

    .local v0, "$r1":[Lio/flutter/embedding/engine/e/m$b;, ""
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    .local v1, "$r0":Ljava/lang/Object;, ""
    move-object v2, v1

    check-cast v2, [Lio/flutter/embedding/engine/e/m$b;

    move-object v0, v2

    return-object v0
    .end local v0    # "$r1":[Lio/flutter/embedding/engine/e/m$b;, ""
    .end local v1    # "$r0":Ljava/lang/Object;, ""
.end method
