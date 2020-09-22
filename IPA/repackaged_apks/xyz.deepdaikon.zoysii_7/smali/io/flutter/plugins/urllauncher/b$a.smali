.class final enum Lio/flutter/plugins/urllauncher/b$a;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugins/urllauncher/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "LaunchStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/flutter/plugins/urllauncher/b$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lio/flutter/plugins/urllauncher/b$a;

.field public static final enum b:Lio/flutter/plugins/urllauncher/b$a;

.field private static final synthetic c:[Lio/flutter/plugins/urllauncher/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lio/flutter/plugins/urllauncher/b$a;

    .local v0, "$r0":Lio/flutter/plugins/urllauncher/b$a;, ""
    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/flutter/plugins/urllauncher/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/flutter/plugins/urllauncher/b$a;->a:Lio/flutter/plugins/urllauncher/b$a;

    new-instance v0, Lio/flutter/plugins/urllauncher/b$a;

    const-string v1, "NO_ACTIVITY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/flutter/plugins/urllauncher/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/flutter/plugins/urllauncher/b$a;->b:Lio/flutter/plugins/urllauncher/b$a;

    const/4 v2, 0x2

    new-array v3, v2, [Lio/flutter/plugins/urllauncher/b$a;

    .local v3, "$r1":[Lio/flutter/plugins/urllauncher/b$a;, ""
    sget-object v0, Lio/flutter/plugins/urllauncher/b$a;->a:Lio/flutter/plugins/urllauncher/b$a;

    const/4 v2, 0x0

    aput-object v0, v3, v2

    sget-object v0, Lio/flutter/plugins/urllauncher/b$a;->b:Lio/flutter/plugins/urllauncher/b$a;

    const/4 v2, 0x1

    aput-object v0, v3, v2

    sput-object v3, Lio/flutter/plugins/urllauncher/b$a;->c:[Lio/flutter/plugins/urllauncher/b$a;

    return-void
    .end local v0    # "$r0":Lio/flutter/plugins/urllauncher/b$a;, ""
    .end local v3    # "$r1":[Lio/flutter/plugins/urllauncher/b$a;, ""
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

.method public static valueOf(Ljava/lang/String;)Lio/flutter/plugins/urllauncher/b$a;
    .locals 4

    const-class v1, Lio/flutter/plugins/urllauncher/b$a;

    invoke-static {v1, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    .local v0, "$r0":Ljava/lang/Enum;, ""
    move-object v3, v0

    check-cast v3, Lio/flutter/plugins/urllauncher/b$a;

    move-object v2, v3

    .local v2, "$r2":Lio/flutter/plugins/urllauncher/b$a;, ""
    return-object v2
    .end local v0    # "$r0":Ljava/lang/Enum;, ""
    .end local v2    # "$r2":Lio/flutter/plugins/urllauncher/b$a;, ""
.end method

.method public static values()[Lio/flutter/plugins/urllauncher/b$a;
    .locals 3

    sget-object v0, Lio/flutter/plugins/urllauncher/b$a;->c:[Lio/flutter/plugins/urllauncher/b$a;

    .local v0, "$r1":[Lio/flutter/plugins/urllauncher/b$a;, ""
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    .local v1, "$r0":Ljava/lang/Object;, ""
    move-object v2, v1

    check-cast v2, [Lio/flutter/plugins/urllauncher/b$a;

    move-object v0, v2

    return-object v0
    .end local v1    # "$r0":Ljava/lang/Object;, ""
    .end local v0    # "$r1":[Lio/flutter/plugins/urllauncher/b$a;, ""
.end method
