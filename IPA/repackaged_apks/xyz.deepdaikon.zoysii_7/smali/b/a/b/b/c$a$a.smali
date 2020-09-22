.class final enum Lb/a/b/b/c$a$a;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/b/b/c$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lb/a/b/b/c$a$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lb/a/b/b/c$a$a;

.field public static final enum b:Lb/a/b/b/c$a$a;

.field public static final enum c:Lb/a/b/b/c$a$a;

.field private static final synthetic d:[Lb/a/b/b/c$a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lb/a/b/b/c$a$a;

    .local v0, "$r0":Lb/a/b/b/c$a$a;, ""
    const-string v1, "NO_TARGET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lb/a/b/b/c$a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/a/b/b/c$a$a;->a:Lb/a/b/b/c$a$a;

    new-instance v0, Lb/a/b/b/c$a$a;

    const-string v1, "FRAMEWORK_CLIENT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lb/a/b/b/c$a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/a/b/b/c$a$a;->b:Lb/a/b/b/c$a$a;

    new-instance v0, Lb/a/b/b/c$a$a;

    const-string v1, "PLATFORM_VIEW"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lb/a/b/b/c$a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/a/b/b/c$a$a;->c:Lb/a/b/b/c$a$a;

    const/4 v2, 0x3

    new-array v3, v2, [Lb/a/b/b/c$a$a;

    .local v3, "$r1":[Lb/a/b/b/c$a$a;, ""
    sget-object v0, Lb/a/b/b/c$a$a;->a:Lb/a/b/b/c$a$a;

    const/4 v2, 0x0

    aput-object v0, v3, v2

    sget-object v0, Lb/a/b/b/c$a$a;->b:Lb/a/b/b/c$a$a;

    const/4 v2, 0x1

    aput-object v0, v3, v2

    sget-object v0, Lb/a/b/b/c$a$a;->c:Lb/a/b/b/c$a$a;

    const/4 v2, 0x2

    aput-object v0, v3, v2

    sput-object v3, Lb/a/b/b/c$a$a;->d:[Lb/a/b/b/c$a$a;

    return-void
    .end local v3    # "$r1":[Lb/a/b/b/c$a$a;, ""
    .end local v0    # "$r0":Lb/a/b/b/c$a$a;, ""
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

.method public static valueOf(Ljava/lang/String;)Lb/a/b/b/c$a$a;
    .locals 4

    const-class v1, Lb/a/b/b/c$a$a;

    invoke-static {v1, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    .local v0, "$r0":Ljava/lang/Enum;, ""
    move-object v3, v0

    check-cast v3, Lb/a/b/b/c$a$a;

    move-object v2, v3

    .local v2, "$r2":Lb/a/b/b/c$a$a;, ""
    return-object v2
    .end local v2    # "$r2":Lb/a/b/b/c$a$a;, ""
    .end local v0    # "$r0":Ljava/lang/Enum;, ""
.end method

.method public static values()[Lb/a/b/b/c$a$a;
    .locals 3

    sget-object v0, Lb/a/b/b/c$a$a;->d:[Lb/a/b/b/c$a$a;

    .local v0, "$r1":[Lb/a/b/b/c$a$a;, ""
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    .local v1, "$r0":Ljava/lang/Object;, ""
    move-object v2, v1

    check-cast v2, [Lb/a/b/b/c$a$a;

    move-object v0, v2

    return-object v0
    .end local v0    # "$r1":[Lb/a/b/b/c$a$a;, ""
    .end local v1    # "$r0":Ljava/lang/Object;, ""
.end method
