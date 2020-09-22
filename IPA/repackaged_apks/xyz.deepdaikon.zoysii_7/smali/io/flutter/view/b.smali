.class public final synthetic Lio/flutter/view/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lb/a/d/c;


# static fields
.field public static final synthetic a:Lio/flutter/view/b;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/flutter/view/b;

    .local v0, "$r0":Lio/flutter/view/b;, ""
    invoke-direct {v0}, Lio/flutter/view/b;-><init>()V

    sput-object v0, Lio/flutter/view/b;->a:Lio/flutter/view/b;

    return-void
    .end local v0    # "$r0":Lio/flutter/view/b;, ""
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 3

    move-object v1, p1

    check-cast v1, Lio/flutter/view/g$f;

    move-object v0, v1

    .local v0, "$r2":Lio/flutter/view/g$f;, ""
    invoke-static {v0}, Lio/flutter/view/g;->a(Lio/flutter/view/g$f;)Z

    move-result v2

    .local v2, "$z0":Z, ""
    return v2
    .end local v2    # "$z0":Z, ""
    .end local v0    # "$r2":Lio/flutter/view/g$f;, ""
.end method
