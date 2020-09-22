.class Lio/flutter/view/g$c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/view/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CustomAccessibilityAction"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lio/flutter/view/g$c;->a:I

    const/4 v0, -0x1

    iput v0, p0, Lio/flutter/view/g$c;->b:I

    const/4 v0, -0x1

    iput v0, p0, Lio/flutter/view/g$c;->c:I

    return-void
.end method

.method static synthetic a(Lio/flutter/view/g$c;I)I
    .locals 0

    iput p1, p0, Lio/flutter/view/g$c;->b:I

    return p1
.end method

.method static synthetic a(Lio/flutter/view/g$c;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/flutter/view/g$c;->e:Ljava/lang/String;

    .local v0, "r1":Ljava/lang/String;, ""
    return-object v0
    .end local v0    # "r1":Ljava/lang/String;, ""
.end method

.method static synthetic a(Lio/flutter/view/g$c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lio/flutter/view/g$c;->d:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lio/flutter/view/g$c;)I
    .locals 1

    iget v0, p0, Lio/flutter/view/g$c;->a:I

    .local v0, "i0":I, ""
    return v0
    .end local v0    # "i0":I, ""
.end method

.method static synthetic b(Lio/flutter/view/g$c;I)I
    .locals 0

    iput p1, p0, Lio/flutter/view/g$c;->a:I

    return p1
.end method

.method static synthetic b(Lio/flutter/view/g$c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lio/flutter/view/g$c;->e:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lio/flutter/view/g$c;I)I
    .locals 0

    iput p1, p0, Lio/flutter/view/g$c;->c:I

    return p1
.end method

.method static synthetic c(Lio/flutter/view/g$c;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/flutter/view/g$c;->d:Ljava/lang/String;

    .local v0, "r1":Ljava/lang/String;, ""
    return-object v0
    .end local v0    # "r1":Ljava/lang/String;, ""
.end method

.method static synthetic d(Lio/flutter/view/g$c;)I
    .locals 1

    iget v0, p0, Lio/flutter/view/g$c;->b:I

    .local v0, "i0":I, ""
    return v0
    .end local v0    # "i0":I, ""
.end method

.method static synthetic e(Lio/flutter/view/g$c;)I
    .locals 1

    iget v0, p0, Lio/flutter/view/g$c;->c:I

    .local v0, "i0":I, ""
    return v0
    .end local v0    # "i0":I, ""
.end method
