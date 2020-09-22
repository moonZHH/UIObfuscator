.class final enum Lio/flutter/view/g$g;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/view/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "TextDirection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/flutter/view/g$g;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lio/flutter/view/g$g;

.field public static final enum b:Lio/flutter/view/g$g;

.field public static final enum c:Lio/flutter/view/g$g;

.field private static final synthetic d:[Lio/flutter/view/g$g;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lio/flutter/view/g$g;

    .local v0, "$r0":Lio/flutter/view/g$g;, ""
    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/flutter/view/g$g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/flutter/view/g$g;->a:Lio/flutter/view/g$g;

    new-instance v0, Lio/flutter/view/g$g;

    const-string v1, "LTR"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/flutter/view/g$g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/flutter/view/g$g;->b:Lio/flutter/view/g$g;

    new-instance v0, Lio/flutter/view/g$g;

    const-string v1, "RTL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lio/flutter/view/g$g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/flutter/view/g$g;->c:Lio/flutter/view/g$g;

    const/4 v2, 0x3

    new-array v3, v2, [Lio/flutter/view/g$g;

    .local v3, "$r1":[Lio/flutter/view/g$g;, ""
    sget-object v0, Lio/flutter/view/g$g;->a:Lio/flutter/view/g$g;

    const/4 v2, 0x0

    aput-object v0, v3, v2

    sget-object v0, Lio/flutter/view/g$g;->b:Lio/flutter/view/g$g;

    const/4 v2, 0x1

    aput-object v0, v3, v2

    sget-object v0, Lio/flutter/view/g$g;->c:Lio/flutter/view/g$g;

    const/4 v2, 0x2

    aput-object v0, v3, v2

    sput-object v3, Lio/flutter/view/g$g;->d:[Lio/flutter/view/g$g;

    return-void
    .end local v3    # "$r1":[Lio/flutter/view/g$g;, ""
    .end local v0    # "$r0":Lio/flutter/view/g$g;, ""
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

.method public static a(I)Lio/flutter/view/g$g;
    .locals 1

    sparse-switch p0, :sswitch_data_0

    goto :goto_0

    :goto_0
    sget-object v0, Lio/flutter/view/g$g;->a:Lio/flutter/view/g$g;

    .local v0, "r0":Lio/flutter/view/g$g;, ""
    return-object v0

    :sswitch_0
    sget-object v0, Lio/flutter/view/g$g;->b:Lio/flutter/view/g$g;

    return-object v0

    :sswitch_1
    sget-object v0, Lio/flutter/view/g$g;->c:Lio/flutter/view/g$g;

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
    .end sparse-switch
    .end local v0    # "r0":Lio/flutter/view/g$g;, ""
.end method

.method public static valueOf(Ljava/lang/String;)Lio/flutter/view/g$g;
    .locals 4

    const-class v1, Lio/flutter/view/g$g;

    invoke-static {v1, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    .local v0, "$r0":Ljava/lang/Enum;, ""
    move-object v3, v0

    check-cast v3, Lio/flutter/view/g$g;

    move-object v2, v3

    .local v2, "$r2":Lio/flutter/view/g$g;, ""
    return-object v2
    .end local v0    # "$r0":Ljava/lang/Enum;, ""
    .end local v2    # "$r2":Lio/flutter/view/g$g;, ""
.end method

.method public static values()[Lio/flutter/view/g$g;
    .locals 3

    sget-object v0, Lio/flutter/view/g$g;->d:[Lio/flutter/view/g$g;

    .local v0, "$r1":[Lio/flutter/view/g$g;, ""
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    .local v1, "$r0":Ljava/lang/Object;, ""
    move-object v2, v1

    check-cast v2, [Lio/flutter/view/g$g;

    move-object v0, v2

    return-object v0
    .end local v0    # "$r1":[Lio/flutter/view/g$g;, ""
    .end local v1    # "$r0":Ljava/lang/Object;, ""
.end method
