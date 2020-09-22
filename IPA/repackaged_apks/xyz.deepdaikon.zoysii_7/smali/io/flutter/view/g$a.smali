.class final enum Lio/flutter/view/g$a;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/view/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "AccessibilityFeature"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/flutter/view/g$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lio/flutter/view/g$a;

.field public static final enum b:Lio/flutter/view/g$a;

.field public static final enum c:Lio/flutter/view/g$a;

.field private static final synthetic d:[Lio/flutter/view/g$a;


# instance fields
.field final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lio/flutter/view/g$a;

    .local v0, "$r0":Lio/flutter/view/g$a;, ""
    const-string v1, "ACCESSIBLE_NAVIGATION"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lio/flutter/view/g$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/flutter/view/g$a;->a:Lio/flutter/view/g$a;

    new-instance v0, Lio/flutter/view/g$a;

    const-string v1, "INVERT_COLORS"

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lio/flutter/view/g$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/flutter/view/g$a;->b:Lio/flutter/view/g$a;

    new-instance v0, Lio/flutter/view/g$a;

    const-string v1, "DISABLE_ANIMATIONS"

    const/4 v2, 0x2

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Lio/flutter/view/g$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/flutter/view/g$a;->c:Lio/flutter/view/g$a;

    const/4 v2, 0x3

    new-array v4, v2, [Lio/flutter/view/g$a;

    .local v4, "$r1":[Lio/flutter/view/g$a;, ""
    sget-object v0, Lio/flutter/view/g$a;->a:Lio/flutter/view/g$a;

    const/4 v2, 0x0

    aput-object v0, v4, v2

    sget-object v0, Lio/flutter/view/g$a;->b:Lio/flutter/view/g$a;

    const/4 v2, 0x1

    aput-object v0, v4, v2

    sget-object v0, Lio/flutter/view/g$a;->c:Lio/flutter/view/g$a;

    const/4 v2, 0x2

    aput-object v0, v4, v2

    sput-object v4, Lio/flutter/view/g$a;->d:[Lio/flutter/view/g$a;

    return-void
    .end local v4    # "$r1":[Lio/flutter/view/g$a;, ""
    .end local v0    # "$r0":Lio/flutter/view/g$a;, ""
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lio/flutter/view/g$a;->e:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/flutter/view/g$a;
    .locals 4

    const-class v1, Lio/flutter/view/g$a;

    invoke-static {v1, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    .local v0, "$r0":Ljava/lang/Enum;, ""
    move-object v3, v0

    check-cast v3, Lio/flutter/view/g$a;

    move-object v2, v3

    .local v2, "$r2":Lio/flutter/view/g$a;, ""
    return-object v2
    .end local v0    # "$r0":Ljava/lang/Enum;, ""
    .end local v2    # "$r2":Lio/flutter/view/g$a;, ""
.end method

.method public static values()[Lio/flutter/view/g$a;
    .locals 3

    sget-object v0, Lio/flutter/view/g$a;->d:[Lio/flutter/view/g$a;

    .local v0, "$r1":[Lio/flutter/view/g$a;, ""
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    .local v1, "$r0":Ljava/lang/Object;, ""
    move-object v2, v1

    check-cast v2, [Lio/flutter/view/g$a;

    move-object v0, v2

    return-object v0
    .end local v0    # "$r1":[Lio/flutter/view/g$a;, ""
    .end local v1    # "$r0":Ljava/lang/Object;, ""
.end method
