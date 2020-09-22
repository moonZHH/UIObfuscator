.class public Lio/flutter/plugin/platform/m;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/flutter/plugin/platform/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/plugin/platform/l;
    }
.end annotation


# instance fields
.field private final a:Lio/flutter/plugin/platform/i;

.field private b:Landroid/content/Context;

.field private c:Landroid/view/View;

.field private d:Lio/flutter/view/r;

.field private e:Lb/a/b/b/c;

.field private f:Lio/flutter/embedding/engine/e/l;

.field private final g:Lio/flutter/plugin/platform/b;

.field final h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lio/flutter/plugin/platform/q;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/Context;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lio/flutter/embedding/engine/e/l$d;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/flutter/plugin/platform/l;

    .local v0, "$r1":Lio/flutter/plugin/platform/l;, ""
    invoke-direct {v0, p0}, Lio/flutter/plugin/platform/l;-><init>(Lio/flutter/plugin/platform/m;)V

    iput-object v0, p0, Lio/flutter/plugin/platform/m;->j:Lio/flutter/embedding/engine/e/l$d;

    new-instance v1, Lio/flutter/plugin/platform/i;

    .local v1, "$r2":Lio/flutter/plugin/platform/i;, ""
    invoke-direct {v1}, Lio/flutter/plugin/platform/i;-><init>()V

    iput-object v1, p0, Lio/flutter/plugin/platform/m;->a:Lio/flutter/plugin/platform/i;

    new-instance v2, Ljava/util/HashMap;

    .local v2, "$r3":Ljava/util/HashMap;, ""
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lio/flutter/plugin/platform/m;->h:Ljava/util/HashMap;

    new-instance v3, Lio/flutter/plugin/platform/b;

    .local v3, "$r4":Lio/flutter/plugin/platform/b;, ""
    invoke-direct {v3}, Lio/flutter/plugin/platform/b;-><init>()V

    iput-object v3, p0, Lio/flutter/plugin/platform/m;->g:Lio/flutter/plugin/platform/b;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lio/flutter/plugin/platform/m;->i:Ljava/util/HashMap;

    return-void
    .end local v2    # "$r3":Ljava/util/HashMap;, ""
    .end local v1    # "$r2":Lio/flutter/plugin/platform/i;, ""
    .end local v3    # "$r4":Lio/flutter/plugin/platform/b;, ""
    .end local v0    # "$r1":Lio/flutter/plugin/platform/l;, ""
.end method

.method private a(D)I
    .locals 9

    iget-object v0, p0, Lio/flutter/plugin/platform/m;->b:Landroid/content/Context;

    .local v0, "$r1":Landroid/content/Context;, ""
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .local v1, "$r2":Landroid/content/res/Resources;, ""
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .local v2, "$r3":Landroid/util/DisplayMetrics;, ""
    iget v3, v2, Landroid/util/DisplayMetrics;->density:F

    .local v3, "$f0":F, ""
    float-to-double v4, v3

    .local v4, "$d1":D, ""
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double/2addr p1, v4

    .local p1, "$d0":D, ""
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    .local v6, "$l0":J, ""
    long-to-int v8, v6

    .local v8, "$i1":I, ""
    return v8
    .end local v8    # "$i1":I, ""
    .end local v6    # "$l0":J, ""
    .end local v0    # "$r1":Landroid/content/Context;, ""
    .end local v2    # "$r3":Landroid/util/DisplayMetrics;, ""
    .end local v1    # "$r2":Landroid/content/res/Resources;, ""
    .end local v3    # "$f0":F, ""
    .end local v4    # "$d1":D, ""
    .end local p1    # "$d0":D, ""
.end method

.method static synthetic a(Lio/flutter/plugin/platform/m;D)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lio/flutter/plugin/platform/m;->a(D)I

    move-result v0

    .local v0, "$i0":I, ""
    return v0
    .end local v0    # "$i0":I, ""
.end method

.method static synthetic a(Lio/flutter/plugin/platform/m;)Lio/flutter/plugin/platform/i;
    .locals 1

    iget-object v0, p0, Lio/flutter/plugin/platform/m;->a:Lio/flutter/plugin/platform/i;

    .local v0, "r1":Lio/flutter/plugin/platform/i;, ""
    return-object v0
    .end local v0    # "r1":Lio/flutter/plugin/platform/i;, ""
.end method

.method static synthetic a(Ljava/lang/Object;)Ljava/util/List;
    .locals 1

    invoke-static {p0}, Lio/flutter/plugin/platform/m;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .local v0, "$r0":Ljava/util/List;, ""
    return-object v0
    .end local v0    # "$r0":Ljava/util/List;, ""
.end method

.method static synthetic a(Ljava/lang/Object;F)Ljava/util/List;
    .locals 1

    invoke-static {p0, p1}, Lio/flutter/plugin/platform/m;->b(Ljava/lang/Object;F)Ljava/util/List;

    move-result-object v0

    .local v0, "$r0":Ljava/util/List;, ""
    return-object v0
    .end local v0    # "$r0":Ljava/util/List;, ""
.end method

.method private a(II)V
    .locals 7

    iget-object v0, p0, Lio/flutter/plugin/platform/m;->b:Landroid/content/Context;

    .local v0, "$r1":Landroid/content/Context;, ""
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .local v1, "$r2":Landroid/content/res/Resources;, ""
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .local v2, "$r3":Landroid/util/DisplayMetrics;, ""
    iget v3, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .local v3, "$i2":I, ""
    if-gt p2, v3, :cond_0

    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le p1, v3, :cond_1

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    .local v4, "$r4":Ljava/lang/StringBuilder;, ""
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Creating a virtual display of size: ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] may result in problems(https://github.com/flutter/flutter/issues/2897).It is larger than the device screen size: ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .local p1, "$i0":I, ""
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "]."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .local v6, "$r5":Ljava/lang/String;, ""
    const-string v5, "PlatformViewsController"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
    .end local v0    # "$r1":Landroid/content/Context;, ""
    .end local v6    # "$r5":Ljava/lang/String;, ""
    .end local v1    # "$r2":Landroid/content/res/Resources;, ""
    .end local v4    # "$r4":Ljava/lang/StringBuilder;, ""
    .end local p1    # "$i0":I, ""
    .end local v2    # "$r3":Landroid/util/DisplayMetrics;, ""
    .end local v3    # "$i2":I, ""
.end method

.method static synthetic a(Lio/flutter/plugin/platform/m;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/flutter/plugin/platform/m;->a(II)V

    return-void
.end method

.method static synthetic a(Lio/flutter/plugin/platform/m;Lio/flutter/plugin/platform/q;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/flutter/plugin/platform/m;->a(Lio/flutter/plugin/platform/q;)V

    return-void
.end method

.method private a(Lio/flutter/plugin/platform/q;)V
    .locals 1

    iget-object v0, p0, Lio/flutter/plugin/platform/m;->e:Lb/a/b/b/c;

    .local v0, "$r2":Lb/a/b/b/c;, ""
    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lio/flutter/plugin/platform/m;->e:Lb/a/b/b/c;

    invoke-virtual {v0}, Lb/a/b/b/c;->b()V

    invoke-virtual {p1}, Lio/flutter/plugin/platform/q;->b()V

    return-void
    .end local v0    # "$r2":Lb/a/b/b/c;, ""
.end method

.method static synthetic a(I)Z
    .locals 1

    invoke-static {p0}, Lio/flutter/plugin/platform/m;->b(I)Z

    move-result v0

    .local v0, "$z0":Z, ""
    return v0
    .end local v0    # "$z0":Z, ""
.end method

.method static synthetic b(Lio/flutter/plugin/platform/m;)Lio/flutter/view/r;
    .locals 1

    iget-object v0, p0, Lio/flutter/plugin/platform/m;->d:Lio/flutter/view/r;

    .local v0, "r1":Lio/flutter/view/r;, ""
    return-object v0
    .end local v0    # "r1":Lio/flutter/view/r;, ""
.end method

.method private static b(Ljava/lang/Object;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/view/MotionEvent$PointerProperties;",
            ">;"
        }
    .end annotation

    move-object v1, p0

    check-cast v1, Ljava/util/List;

    move-object v0, v1

    .local v0, "$r2":Ljava/util/List;, ""
    new-instance v2, Ljava/util/ArrayList;

    .local v2, "$r0":Ljava/util/ArrayList;, ""
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "$r3":Ljava/util/Iterator;, ""
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    .local v4, "$z0":Z, ""
    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    .local p0, "$r1":Ljava/lang/Object;, ""
    invoke-static {p0}, Lio/flutter/plugin/platform/m;->c(Ljava/lang/Object;)Landroid/view/MotionEvent$PointerProperties;

    move-result-object v5

    .local v5, "$r4":Landroid/view/MotionEvent$PointerProperties;, ""
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v2
    .end local v0    # "$r2":Ljava/util/List;, ""
    .end local v2    # "$r0":Ljava/util/ArrayList;, ""
    .end local p0    # "$r1":Ljava/lang/Object;, ""
    .end local v4    # "$z0":Z, ""
    .end local v5    # "$r4":Landroid/view/MotionEvent$PointerProperties;, ""
    .end local v3    # "$r3":Ljava/util/Iterator;, ""
.end method

.method private static b(Ljava/lang/Object;F)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "F)",
            "Ljava/util/List",
            "<",
            "Landroid/view/MotionEvent$PointerCoords;",
            ">;"
        }
    .end annotation

    move-object v1, p0

    check-cast v1, Ljava/util/List;

    move-object v0, v1

    .local v0, "$r2":Ljava/util/List;, ""
    new-instance v2, Ljava/util/ArrayList;

    .local v2, "$r0":Ljava/util/ArrayList;, ""
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "$r3":Ljava/util/Iterator;, ""
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    .local v4, "$z0":Z, ""
    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    .local p0, "$r1":Ljava/lang/Object;, ""
    invoke-static {p0, p1}, Lio/flutter/plugin/platform/m;->c(Ljava/lang/Object;F)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v5

    .local v5, "$r4":Landroid/view/MotionEvent$PointerCoords;, ""
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v2
    .end local v2    # "$r0":Ljava/util/ArrayList;, ""
    .end local v5    # "$r4":Landroid/view/MotionEvent$PointerCoords;, ""
    .end local v4    # "$z0":Z, ""
    .end local v3    # "$r3":Ljava/util/Iterator;, ""
    .end local p0    # "$r1":Ljava/lang/Object;, ""
    .end local v0    # "$r2":Ljava/util/List;, ""
.end method

.method static synthetic b(Lio/flutter/plugin/platform/m;Lio/flutter/plugin/platform/q;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/flutter/plugin/platform/m;->b(Lio/flutter/plugin/platform/q;)V

    return-void
.end method

.method private b(Lio/flutter/plugin/platform/q;)V
    .locals 1

    iget-object v0, p0, Lio/flutter/plugin/platform/m;->e:Lb/a/b/b/c;

    .local v0, "$r2":Lb/a/b/b/c;, ""
    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lio/flutter/plugin/platform/m;->e:Lb/a/b/b/c;

    invoke-virtual {v0}, Lb/a/b/b/c;->c()V

    invoke-virtual {p1}, Lio/flutter/plugin/platform/q;->c()V

    return-void
    .end local v0    # "$r2":Lb/a/b/b/c;, ""
.end method

.method private static b(I)Z
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic c(Lio/flutter/plugin/platform/m;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lio/flutter/plugin/platform/m;->b:Landroid/content/Context;

    .local v0, "r1":Landroid/content/Context;, ""
    return-object v0
    .end local v0    # "r1":Landroid/content/Context;, ""
.end method

.method private static c(Ljava/lang/Object;F)Landroid/view/MotionEvent$PointerCoords;
    .locals 18

    move-object/from16 v2, p0

    check-cast v2, Ljava/util/List;

    move-object v1, v2

    .local v1, "$r2":Ljava/util/List;, ""
    new-instance v3, Landroid/view/MotionEvent$PointerCoords;

    .local v3, "$r0":Landroid/view/MotionEvent$PointerCoords;, ""
    invoke-direct {v3}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .local p0, "$r1":Ljava/lang/Object;, ""
    move-object/from16 v6, p0

    check-cast v6, Ljava/lang/Double;

    move-object v5, v6

    .local v5, "$r3":Ljava/lang/Double;, ""
    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    .local v7, "$d0":D, ""
    double-to-float v9, v7

    .local v9, "$f1":F, ""
    iput v9, v3, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    const/4 v4, 0x1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object/from16 v10, p0

    check-cast v10, Ljava/lang/Double;

    move-object v5, v10

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    double-to-float v9, v7

    iput v9, v3, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    const/4 v4, 0x2

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object/from16 v11, p0

    check-cast v11, Ljava/lang/Double;

    move-object v5, v11

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    double-to-float v9, v7

    iput v9, v3, Landroid/view/MotionEvent$PointerCoords;->size:F

    const/4 v4, 0x3

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object/from16 v12, p0

    check-cast v12, Ljava/lang/Double;

    move-object v5, v12

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    double-to-float v9, v7

    move/from16 v0, p1

    mul-float/2addr v9, v0

    iput v9, v3, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    const/4 v4, 0x4

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object/from16 v13, p0

    check-cast v13, Ljava/lang/Double;

    move-object v5, v13

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    double-to-float v9, v7

    move/from16 v0, p1

    mul-float/2addr v9, v0

    iput v9, v3, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    const/4 v4, 0x5

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object/from16 v14, p0

    check-cast v14, Ljava/lang/Double;

    move-object v5, v14

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    double-to-float v9, v7

    move/from16 v0, p1

    mul-float/2addr v9, v0

    iput v9, v3, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    const/4 v4, 0x6

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object/from16 v15, p0

    check-cast v15, Ljava/lang/Double;

    move-object/from16 v5, v15

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    double-to-float v9, v7

    move/from16 v0, p1

    mul-float/2addr v9, v0

    iput v9, v3, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    const/4 v4, 0x7

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object/from16 v16, p0

    check-cast v16, Ljava/lang/Double;

    move-object/from16 v5, v16

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    double-to-float v9, v7

    move/from16 v0, p1

    mul-float/2addr v9, v0

    iput v9, v3, Landroid/view/MotionEvent$PointerCoords;->x:F

    const/16 v4, 0x8

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object/from16 v17, p0

    check-cast v17, Ljava/lang/Double;

    move-object/from16 v5, v17

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    double-to-float v9, v7

    mul-float p1, v9, p1

    .local p1, "$f0":F, ""
    move/from16 v0, p1

    iput v0, v3, Landroid/view/MotionEvent$PointerCoords;->y:F

    return-object v3
    .end local v7    # "$d0":D, ""
    .end local v3    # "$r0":Landroid/view/MotionEvent$PointerCoords;, ""
    .end local v5    # "$r3":Ljava/lang/Double;, ""
    .end local p0    # "$r1":Ljava/lang/Object;, ""
    .end local v9    # "$f1":F, ""
    .end local v1    # "$r2":Ljava/util/List;, ""
    .end local p1    # "$f0":F, ""
.end method

.method private static c(Ljava/lang/Object;)Landroid/view/MotionEvent$PointerProperties;
    .locals 8

    move-object v1, p0

    check-cast v1, Ljava/util/List;

    move-object v0, v1

    .local v0, "$r2":Ljava/util/List;, ""
    new-instance v2, Landroid/view/MotionEvent$PointerProperties;

    .local v2, "$r0":Landroid/view/MotionEvent$PointerProperties;, ""
    invoke-direct {v2}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .local p0, "$r1":Ljava/lang/Object;, ""
    move-object v5, p0

    check-cast v5, Ljava/lang/Integer;

    move-object v4, v5

    .local v4, "$r3":Ljava/lang/Integer;, ""
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .local v6, "$i0":I, ""
    iput v6, v2, Landroid/view/MotionEvent$PointerProperties;->id:I

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v7, p0

    check-cast v7, Ljava/lang/Integer;

    move-object v4, v7

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v2, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    return-object v2
    .end local v4    # "$r3":Ljava/lang/Integer;, ""
    .end local v2    # "$r0":Landroid/view/MotionEvent$PointerProperties;, ""
    .end local v6    # "$i0":I, ""
    .end local p0    # "$r1":Ljava/lang/Object;, ""
    .end local v0    # "$r2":Ljava/util/List;, ""
.end method

.method static synthetic d(Lio/flutter/plugin/platform/m;)Lio/flutter/plugin/platform/b;
    .locals 1

    iget-object v0, p0, Lio/flutter/plugin/platform/m;->g:Lio/flutter/plugin/platform/b;

    .local v0, "r1":Lio/flutter/plugin/platform/b;, ""
    return-object v0
    .end local v0    # "r1":Lio/flutter/plugin/platform/b;, ""
.end method

.method static synthetic e(Lio/flutter/plugin/platform/m;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lio/flutter/plugin/platform/m;->c:Landroid/view/View;

    .local v0, "r1":Landroid/view/View;, ""
    return-object v0
    .end local v0    # "r1":Landroid/view/View;, ""
.end method

.method private e()V
    .locals 7

    iget-object v0, p0, Lio/flutter/plugin/platform/m;->h:Ljava/util/HashMap;

    .local v0, "$r1":Ljava/util/HashMap;, ""
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    .local v1, "$r2":Ljava/util/Collection;, ""
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "$r3":Ljava/util/Iterator;, ""
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    .local v3, "$z0":Z, ""
    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "$r4":Ljava/lang/Object;, ""
    move-object v6, v4

    check-cast v6, Lio/flutter/plugin/platform/q;

    move-object v5, v6

    .local v5, "$r5":Lio/flutter/plugin/platform/q;, ""
    invoke-virtual {v5}, Lio/flutter/plugin/platform/q;->a()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/flutter/plugin/platform/m;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
    .end local v0    # "$r1":Ljava/util/HashMap;, ""
    .end local v1    # "$r2":Ljava/util/Collection;, ""
    .end local v2    # "$r3":Ljava/util/Iterator;, ""
    .end local v3    # "$z0":Z, ""
    .end local v5    # "$r5":Lio/flutter/plugin/platform/q;, ""
    .end local v4    # "$r4":Ljava/lang/Object;, ""
.end method

.method static synthetic f(Lio/flutter/plugin/platform/m;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lio/flutter/plugin/platform/m;->i:Ljava/util/HashMap;

    .local v0, "r1":Ljava/util/HashMap;, ""
    return-object v0
    .end local v0    # "r1":Ljava/util/HashMap;, ""
.end method

.method static synthetic g(Lio/flutter/plugin/platform/m;)Lb/a/b/b/c;
    .locals 1

    iget-object v0, p0, Lio/flutter/plugin/platform/m;->e:Lb/a/b/b/c;

    .local v0, "r1":Lb/a/b/b/c;, ""
    return-object v0
    .end local v0    # "r1":Lb/a/b/b/c;, ""
.end method

.method static synthetic h(Lio/flutter/plugin/platform/m;)Lio/flutter/embedding/engine/e/l;
    .locals 1

    iget-object v0, p0, Lio/flutter/plugin/platform/m;->f:Lio/flutter/embedding/engine/e/l;

    .local v0, "r1":Lio/flutter/embedding/engine/e/l;, ""
    return-object v0
    .end local v0    # "r1":Lio/flutter/embedding/engine/e/l;, ""
.end method


# virtual methods
.method public a(Ljava/lang/Integer;)Landroid/view/View;
    .locals 6

    iget-object v0, p0, Lio/flutter/plugin/platform/m;->h:Ljava/util/HashMap;

    .local v0, "$r1":Ljava/util/HashMap;, ""
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .local v1, "$r3":Ljava/lang/Object;, ""
    move-object v3, v1

    check-cast v3, Lio/flutter/plugin/platform/q;

    move-object v2, v3

    .local v2, "$r4":Lio/flutter/plugin/platform/q;, ""
    if-nez v2, :cond_0

    const/4 v4, 0x0

    return-object v4

    :cond_0
    invoke-virtual {v2}, Lio/flutter/plugin/platform/q;->d()Landroid/view/View;

    move-result-object v5

    .local v5, "$r5":Landroid/view/View;, ""
    return-object v5
    .end local v5    # "$r5":Landroid/view/View;, ""
    .end local v1    # "$r3":Ljava/lang/Object;, ""
    .end local v2    # "$r4":Lio/flutter/plugin/platform/q;, ""
    .end local v0    # "$r1":Ljava/util/HashMap;, ""
.end method

.method public a()V
    .locals 2

    iget-object v0, p0, Lio/flutter/plugin/platform/m;->g:Lio/flutter/plugin/platform/b;

    .local v0, "$r1":Lio/flutter/plugin/platform/b;, ""
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/flutter/plugin/platform/b;->a(Lio/flutter/view/g;)V

    return-void
    .end local v0    # "$r1":Lio/flutter/plugin/platform/b;, ""
.end method

.method public a(Landroid/content/Context;Lio/flutter/view/r;Lio/flutter/embedding/engine/a/b;)V
    .locals 5

    iget-object v0, p0, Lio/flutter/plugin/platform/m;->b:Landroid/content/Context;

    .local v0, "$r2":Landroid/content/Context;, ""
    if-nez v0, :cond_0

    iput-object p1, p0, Lio/flutter/plugin/platform/m;->b:Landroid/content/Context;

    iput-object p2, p0, Lio/flutter/plugin/platform/m;->d:Lio/flutter/view/r;

    new-instance v1, Lio/flutter/embedding/engine/e/l;

    .local v1, "$r5":Lio/flutter/embedding/engine/e/l;, ""
    invoke-direct {v1, p3}, Lio/flutter/embedding/engine/e/l;-><init>(Lio/flutter/embedding/engine/a/b;)V

    iput-object v1, p0, Lio/flutter/plugin/platform/m;->f:Lio/flutter/embedding/engine/e/l;

    iget-object v1, p0, Lio/flutter/plugin/platform/m;->f:Lio/flutter/embedding/engine/e/l;

    iget-object v2, p0, Lio/flutter/plugin/platform/m;->j:Lio/flutter/embedding/engine/e/l$d;

    .local v2, "$r6":Lio/flutter/embedding/engine/e/l$d;, ""
    invoke-virtual {v1, v2}, Lio/flutter/embedding/engine/e/l;->a(Lio/flutter/embedding/engine/e/l$d;)V

    return-void

    :cond_0
    new-instance v3, Ljava/lang/AssertionError;

    .local v3, "$r7":Ljava/lang/AssertionError;, ""
    const-string v4, "A PlatformViewsController can only be attached to a single output target.\nattach was called while the PlatformViewsController was already attached."

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
    .end local v0    # "$r2":Landroid/content/Context;, ""
    .end local v2    # "$r6":Lio/flutter/embedding/engine/e/l$d;, ""
    .end local v3    # "$r7":Ljava/lang/AssertionError;, ""
    .end local v1    # "$r5":Lio/flutter/embedding/engine/e/l;, ""
.end method

.method public a(Lb/a/b/b/c;)V
    .locals 0

    iput-object p1, p0, Lio/flutter/plugin/platform/m;->e:Lb/a/b/b/c;

    return-void
.end method

.method public a(Lio/flutter/view/g;)V
    .locals 1

    iget-object v0, p0, Lio/flutter/plugin/platform/m;->g:Lio/flutter/plugin/platform/b;

    .local v0, "$r2":Lio/flutter/plugin/platform/b;, ""
    invoke-virtual {v0, p1}, Lio/flutter/plugin/platform/b;->a(Lio/flutter/view/g;)V

    return-void
    .end local v0    # "$r2":Lio/flutter/plugin/platform/b;, ""
.end method

.method public a(Landroid/view/View;)Z
    .locals 7

    iget-object v0, p0, Lio/flutter/plugin/platform/m;->i:Ljava/util/HashMap;

    .local v0, "$r2":Ljava/util/HashMap;, ""
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .local v1, "$r3":Landroid/content/Context;, ""
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    .local v2, "$z0":Z, ""
    if-nez v2, :cond_0

    const/4 v3, 0x0

    return v3

    :cond_0
    iget-object v0, p0, Lio/flutter/plugin/platform/m;->i:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .local v4, "$r4":Ljava/lang/Object;, ""
    move-object v6, v4

    check-cast v6, Landroid/view/View;

    move-object v5, v6

    .local v5, "$r5":Landroid/view/View;, ""
    if-ne v5, p1, :cond_1

    const/4 v3, 0x1

    return v3

    :cond_1
    invoke-virtual {v5, p1}, Landroid/view/View;->checkInputConnectionProxy(Landroid/view/View;)Z

    move-result v2

    return v2
    .end local v4    # "$r4":Ljava/lang/Object;, ""
    .end local v5    # "$r5":Landroid/view/View;, ""
    .end local v1    # "$r3":Landroid/content/Context;, ""
    .end local v0    # "$r2":Ljava/util/HashMap;, ""
    .end local v2    # "$z0":Z, ""
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lio/flutter/plugin/platform/m;->f:Lio/flutter/embedding/engine/e/l;

    .local v0, "$r1":Lio/flutter/embedding/engine/e/l;, ""
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/e/l;->a(Lio/flutter/embedding/engine/e/l$d;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lio/flutter/plugin/platform/m;->f:Lio/flutter/embedding/engine/e/l;

    const/4 v1, 0x0

    iput-object v1, p0, Lio/flutter/plugin/platform/m;->b:Landroid/content/Context;

    const/4 v1, 0x0

    iput-object v1, p0, Lio/flutter/plugin/platform/m;->d:Lio/flutter/view/r;

    return-void
    .end local v0    # "$r1":Lio/flutter/embedding/engine/e/l;, ""
.end method

.method public c()V
    .locals 0

    invoke-direct {p0}, Lio/flutter/plugin/platform/m;->e()V

    return-void
.end method

.method public d()V
    .locals 0

    invoke-direct {p0}, Lio/flutter/plugin/platform/m;->e()V

    return-void
.end method
