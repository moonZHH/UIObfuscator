.class Lio/flutter/view/g$f;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/view/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SemanticsNode"
.end annotation


# instance fields
.field private A:F

.field private B:F

.field private C:Ljava/lang/String;

.field private D:Ljava/lang/String;

.field private E:F

.field private F:F

.field private G:F

.field private H:F

.field private I:[F

.field private J:Lio/flutter/view/g$f;

.field private K:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/flutter/view/g$f;",
            ">;"
        }
    .end annotation
.end field

.field private L:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/flutter/view/g$f;",
            ">;"
        }
    .end annotation
.end field

.field private M:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/flutter/view/g$c;",
            ">;"
        }
    .end annotation
.end field

.field private N:Lio/flutter/view/g$c;

.field private O:Lio/flutter/view/g$c;

.field private P:Z

.field private Q:[F

.field private R:Z

.field private S:[F

.field private T:Landroid/graphics/Rect;

.field final a:Lio/flutter/view/g;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:F

.field private m:F

.field private n:F

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Lio/flutter/view/g$g;

.field private u:Z

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:F


# direct methods
.method constructor <init>(Lio/flutter/view/g;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lio/flutter/view/g$f;->b:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/flutter/view/g$f;->u:Z

    new-instance v1, Ljava/util/ArrayList;

    .local v1, "$r2":Ljava/util/ArrayList;, ""
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lio/flutter/view/g$f;->K:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lio/flutter/view/g$f;->L:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/flutter/view/g$f;->P:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/flutter/view/g$f;->R:Z

    iput-object p1, p0, Lio/flutter/view/g$f;->a:Lio/flutter/view/g;

    return-void
    .end local v1    # "$r2":Ljava/util/ArrayList;, ""
.end method

.method static synthetic A(Lio/flutter/view/g$f;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/flutter/view/g$f;->D:Ljava/lang/String;

    .local v0, "r1":Ljava/lang/String;, ""
    return-object v0
    .end local v0    # "r1":Ljava/lang/String;, ""
.end method

.method static synthetic B(Lio/flutter/view/g$f;)Z
    .locals 1

    invoke-direct {p0}, Lio/flutter/view/g$f;->b()Z

    move-result v0

    .local v0, "$z0":Z, ""
    return v0
    .end local v0    # "$z0":Z, ""
.end method

.method static synthetic C(Lio/flutter/view/g$f;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/flutter/view/g$f;->C:Ljava/lang/String;

    .local v0, "r1":Ljava/lang/String;, ""
    return-object v0
    .end local v0    # "r1":Ljava/lang/String;, ""
.end method

.method static synthetic D(Lio/flutter/view/g$f;)I
    .locals 1

    iget v0, p0, Lio/flutter/view/g$f;->x:I

    .local v0, "i0":I, ""
    return v0
    .end local v0    # "i0":I, ""
.end method

.method static synthetic E(Lio/flutter/view/g$f;)I
    .locals 1

    iget v0, p0, Lio/flutter/view/g$f;->y:I

    .local v0, "i0":I, ""
    return v0
    .end local v0    # "i0":I, ""
.end method

.method static synthetic F(Lio/flutter/view/g$f;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lio/flutter/view/g$f;->f()Ljava/lang/String;

    move-result-object v0

    .local v0, "$r0":Ljava/lang/String;, ""
    return-object v0
    .end local v0    # "$r0":Ljava/lang/String;, ""
.end method

.method private a(FFFF)F
    .locals 0

    invoke-static {p3, p4}, Ljava/lang/Math;->min(FF)F

    move-result p3

    .local p3, "$f3":F, ""
    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .local p2, "$f2":F, ""
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .local p1, "$f1":F, ""
    return p1
    .end local p3    # "$f3":F, ""
    .end local p1    # "$f1":F, ""
    .end local p2    # "$f2":F, ""
.end method

.method static synthetic a(Lio/flutter/view/g$f;)I
    .locals 1

    iget v0, p0, Lio/flutter/view/g$f;->j:I

    .local v0, "i0":I, ""
    return v0
    .end local v0    # "i0":I, ""
.end method

.method static synthetic a(Lio/flutter/view/g$f;I)I
    .locals 0

    iput p1, p0, Lio/flutter/view/g$f;->b:I

    return p1
.end method

.method private a(Lb/a/d/c;)Lio/flutter/view/g$f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/a/d/c",
            "<",
            "Lio/flutter/view/g$f;",
            ">;)",
            "Lio/flutter/view/g$f;"
        }
    .end annotation

    iget-object p0, p0, Lio/flutter/view/g$f;->J:Lio/flutter/view/g$f;

    .local p0, "$r0":Lio/flutter/view/g$f;, ""
    :goto_0
    if-eqz p0, :cond_1

    invoke-interface {p1, p0}, Lb/a/d/c;->test(Ljava/lang/Object;)Z

    move-result v0

    .local v0, "$z0":Z, ""
    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    iget-object p0, p0, Lio/flutter/view/g$f;->J:Lio/flutter/view/g$f;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return-object v1
    .end local p0    # "$r0":Lio/flutter/view/g$f;, ""
    .end local v0    # "$z0":Z, ""
.end method

.method static synthetic a(Lio/flutter/view/g$f;Lio/flutter/view/g$f;)Lio/flutter/view/g$f;
    .locals 0

    iput-object p1, p0, Lio/flutter/view/g$f;->J:Lio/flutter/view/g$f;

    return-object p1
.end method

.method static synthetic a(Lio/flutter/view/g$f;[F)Lio/flutter/view/g$f;
    .locals 0

    invoke-direct {p0, p1}, Lio/flutter/view/g$f;->a([F)Lio/flutter/view/g$f;

    move-result-object p0

    .local p0, "$r1":Lio/flutter/view/g$f;, ""
    return-object p0
    .end local p0    # "$r1":Lio/flutter/view/g$f;, ""
.end method

.method private a([F)Lio/flutter/view/g$f;
    .locals 23

    const/4 v7, 0x3

    aget v6, p1, v7

    .local v6, "$f0":F, ""
    const/4 v7, 0x0

    aget v8, p1, v7

    .local v8, "$f1":F, ""
    div-float/2addr v8, v6

    const/4 v7, 0x1

    aget v9, p1, v7

    .local v9, "$f2":F, ""
    div-float v6, v9, v6

    move-object/from16 v0, p0

    iget v9, v0, Lio/flutter/view/g$f;->E:F

    cmpg-float v10, v8, v9

    .local v10, "$b0":B, ""
    if-ltz v10, :cond_4

    move-object/from16 v0, p0

    iget v9, v0, Lio/flutter/view/g$f;->G:F

    cmpl-float v10, v8, v9

    if-gez v10, :cond_4

    move-object/from16 v0, p0

    iget v8, v0, Lio/flutter/view/g$f;->F:F

    cmpg-float v10, v6, v8

    if-ltz v10, :cond_4

    move-object/from16 v0, p0

    iget v8, v0, Lio/flutter/view/g$f;->H:F

    cmpl-float v10, v6, v8

    if-ltz v10, :cond_0

    goto :goto_1

    :cond_0
    const/4 v7, 0x4

    new-array v11, v7, [F

    .local v11, "$r3":[F, ""
    move-object/from16 v0, p0

    .local v12, "$r4":Ljava/util/List;, ""
    iget-object v12, v0, Lio/flutter/view/g$f;->L:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "$r5":Ljava/util/Iterator;, ""
    :cond_1
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    .local v14, "$z0":Z, ""
    if-eqz v14, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    .local v15, "$r6":Ljava/lang/Object;, ""
    move-object/from16 v17, v15

    check-cast v17, Lio/flutter/view/g$f;

    move-object/from16 v16, v17

    sget-object v18, Lio/flutter/view/g$d;->n:Lio/flutter/view/g$d;

    .local v18, "$r8":Lio/flutter/view/g$d;, ""
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lio/flutter/view/g$f;->a(Lio/flutter/view/g$d;)Z

    move-result v14

    if-eqz v14, :cond_2

    goto :goto_0

    :cond_2
    move-object/from16 v0, v16

    invoke-direct {v0}, Lio/flutter/view/g$f;->c()V

    move-object/from16 v0, v16

    .local v0, "$r1":[F, ""
    iget-object v0, v0, Lio/flutter/view/g$f;->Q:[F

    move-object/from16 v19, v0

    .end local v0    # "$r1":[F, ""
    .local v19, "$r1":[F, ""
    const/4 v7, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v0, v11

    move v1, v7

    move-object/from16 v2, v19

    move/from16 v3, v20

    move-object/from16 v4, p1

    move/from16 v5, v21

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    move-object/from16 v0, v16

    invoke-direct {v0, v11}, Lio/flutter/view/g$f;->a([F)Lio/flutter/view/g$f;

    move-result-object v16

    .local v16, "$r7":Lio/flutter/view/g$f;, ""
    if-eqz v16, :cond_1

    return-object v16

    :cond_3
    return-object p0

    :cond_4
    :goto_1
    const/16 v22, 0x0

    return-object v22
    .end local v14    # "$z0":Z, ""
    .end local v15    # "$r6":Ljava/lang/Object;, ""
    .end local v16    # "$r7":Lio/flutter/view/g$f;, ""
    .end local v8    # "$f1":F, ""
    .end local v9    # "$f2":F, ""
    .end local v11    # "$r3":[F, ""
    .end local v19    # "$r1":[F, ""
    .end local v6    # "$f0":F, ""
    .end local v10    # "$b0":B, ""
    .end local v18    # "$r8":Lio/flutter/view/g$d;, ""
    .end local v13    # "$r5":Ljava/util/Iterator;, ""
    .end local v12    # "$r4":Ljava/util/List;, ""
.end method

.method static synthetic a(Lio/flutter/view/g$f;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lio/flutter/view/g$f;->p:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lio/flutter/view/g$f;Ljava/nio/ByteBuffer;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/flutter/view/g$f;->a(Ljava/nio/ByteBuffer;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lio/flutter/view/g$f;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/flutter/view/g$f;->a(Ljava/util/List;)V

    return-void
.end method

.method static synthetic a(Lio/flutter/view/g$f;[FLjava/util/Set;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lio/flutter/view/g$f;->a([FLjava/util/Set;Z)V

    return-void
.end method

.method private a(Ljava/nio/ByteBuffer;[Ljava/lang/String;)V
    .locals 17

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lio/flutter/view/g$f;->u:Z

    move-object/from16 v0, p0

    .local v2, "$r3":Ljava/lang/String;, ""
    iget-object v2, v0, Lio/flutter/view/g$f;->p:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lio/flutter/view/g$f;->C:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lio/flutter/view/g$f;->o:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lio/flutter/view/g$f;->D:Ljava/lang/String;

    move-object/from16 v0, p0

    .local v3, "$i0":I, ""
    iget v3, v0, Lio/flutter/view/g$f;->c:I

    move-object/from16 v0, p0

    iput v3, v0, Lio/flutter/view/g$f;->v:I

    move-object/from16 v0, p0

    iget v3, v0, Lio/flutter/view/g$f;->d:I

    move-object/from16 v0, p0

    iput v3, v0, Lio/flutter/view/g$f;->w:I

    move-object/from16 v0, p0

    iget v3, v0, Lio/flutter/view/g$f;->g:I

    move-object/from16 v0, p0

    iput v3, v0, Lio/flutter/view/g$f;->x:I

    move-object/from16 v0, p0

    iget v3, v0, Lio/flutter/view/g$f;->h:I

    move-object/from16 v0, p0

    iput v3, v0, Lio/flutter/view/g$f;->y:I

    move-object/from16 v0, p0

    .local v4, "$f0":F, ""
    iget v4, v0, Lio/flutter/view/g$f;->l:F

    move-object/from16 v0, p0

    iput v4, v0, Lio/flutter/view/g$f;->z:F

    move-object/from16 v0, p0

    iget v4, v0, Lio/flutter/view/g$f;->m:F

    move-object/from16 v0, p0

    iput v4, v0, Lio/flutter/view/g$f;->A:F

    move-object/from16 v0, p0

    iget v4, v0, Lio/flutter/view/g$f;->n:F

    move-object/from16 v0, p0

    iput v4, v0, Lio/flutter/view/g$f;->B:F

    move-object/from16 v0, p1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lio/flutter/view/g$f;->c:I

    move-object/from16 v0, p1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lio/flutter/view/g$f;->d:I

    move-object/from16 v0, p1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lio/flutter/view/g$f;->e:I

    move-object/from16 v0, p1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lio/flutter/view/g$f;->f:I

    move-object/from16 v0, p1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lio/flutter/view/g$f;->g:I

    move-object/from16 v0, p1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lio/flutter/view/g$f;->h:I

    move-object/from16 v0, p1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lio/flutter/view/g$f;->i:I

    move-object/from16 v0, p1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lio/flutter/view/g$f;->j:I

    move-object/from16 v0, p1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lio/flutter/view/g$f;->k:I

    move-object/from16 v0, p1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lio/flutter/view/g$f;->l:F

    move-object/from16 v0, p1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lio/flutter/view/g$f;->m:F

    move-object/from16 v0, p1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lio/flutter/view/g$f;->n:F

    move-object/from16 v0, p1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    const/4 v1, -0x1

    if-ne v3, v1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    aget-object v2, p2, v3

    :goto_0
    move-object/from16 v0, p0

    iput-object v2, v0, Lio/flutter/view/g$f;->o:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    const/4 v1, -0x1

    if-ne v3, v1, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    aget-object v2, p2, v3

    :goto_1
    move-object/from16 v0, p0

    iput-object v2, v0, Lio/flutter/view/g$f;->p:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    const/4 v1, -0x1

    if-ne v3, v1, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    aget-object v2, p2, v3

    :goto_2
    move-object/from16 v0, p0

    iput-object v2, v0, Lio/flutter/view/g$f;->q:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    const/4 v1, -0x1

    if-ne v3, v1, :cond_3

    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    aget-object v2, p2, v3

    :goto_3
    move-object/from16 v0, p0

    iput-object v2, v0, Lio/flutter/view/g$f;->r:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    const/4 v1, -0x1

    if-ne v3, v1, :cond_4

    const/4 v2, 0x0

    goto :goto_4

    :cond_4
    aget-object v2, p2, v3

    :goto_4
    move-object/from16 v0, p0

    iput-object v2, v0, Lio/flutter/view/g$f;->s:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    invoke-static {v3}, Lio/flutter/view/g$g;->a(I)Lio/flutter/view/g$g;

    move-result-object v5

    .local v5, "$r4":Lio/flutter/view/g$g;, ""
    move-object/from16 v0, p0

    iput-object v5, v0, Lio/flutter/view/g$f;->t:Lio/flutter/view/g$g;

    move-object/from16 v0, p1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lio/flutter/view/g$f;->E:F

    move-object/from16 v0, p1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lio/flutter/view/g$f;->F:F

    move-object/from16 v0, p1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lio/flutter/view/g$f;->G:F

    move-object/from16 v0, p1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lio/flutter/view/g$f;->H:F

    move-object/from16 v0, p0

    .local v6, "$r5":[F, ""
    iget-object v6, v0, Lio/flutter/view/g$f;->I:[F

    if-nez v6, :cond_5

    const/16 v1, 0x10

    new-array v6, v1, [F

    move-object/from16 v0, p0

    iput-object v6, v0, Lio/flutter/view/g$f;->I:[F

    :cond_5
    const/4 v3, 0x0

    const/4 v7, 0x0

    .local v7, "$i1":I, ""
    :goto_5
    const/16 v1, 0x10

    if-ge v7, v1, :cond_6

    move-object/from16 v0, p0

    iget-object v6, v0, Lio/flutter/view/g$f;->I:[F

    move-object/from16 v0, p1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v4

    aput v4, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_6
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lio/flutter/view/g$f;->P:Z

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lio/flutter/view/g$f;->R:Z

    move-object/from16 v0, p1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    move-object/from16 v0, p0

    .local v8, "$r6":Ljava/util/List;, ""
    iget-object v8, v0, Lio/flutter/view/g$f;->K:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    move-object/from16 v0, p0

    iget-object v8, v0, Lio/flutter/view/g$f;->L:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    const/4 v9, 0x0

    .local v9, "$i2":I, ""
    :goto_6
    if-ge v9, v7, :cond_7

    move-object/from16 v0, p0

    .local v10, "$r7":Lio/flutter/view/g;, ""
    iget-object v10, v0, Lio/flutter/view/g$f;->a:Lio/flutter/view/g;

    move-object/from16 v0, p1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v11

    .local v11, "$i3":I, ""
    invoke-static {v10, v11}, Lio/flutter/view/g;->b(Lio/flutter/view/g;I)Lio/flutter/view/g$f;

    move-result-object v12

    .local v12, "$r8":Lio/flutter/view/g$f;, ""
    move-object/from16 v0, p0

    iput-object v0, v12, Lio/flutter/view/g$f;->J:Lio/flutter/view/g$f;

    move-object/from16 v0, p0

    iget-object v8, v0, Lio/flutter/view/g$f;->K:Ljava/util/List;

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_7
    const/4 v9, 0x0

    :goto_7
    if-ge v9, v7, :cond_8

    move-object/from16 v0, p0

    iget-object v10, v0, Lio/flutter/view/g$f;->a:Lio/flutter/view/g;

    move-object/from16 v0, p1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v11

    invoke-static {v10, v11}, Lio/flutter/view/g;->b(Lio/flutter/view/g;I)Lio/flutter/view/g$f;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v0, v12, Lio/flutter/view/g$f;->J:Lio/flutter/view/g$f;

    move-object/from16 v0, p0

    iget-object v8, v0, Lio/flutter/view/g$f;->L:Ljava/util/List;

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    :cond_8
    move-object/from16 v0, p1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    if-nez v7, :cond_9

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lio/flutter/view/g$f;->M:Ljava/util/List;

    return-void

    :cond_9
    move-object/from16 v0, p0

    iget-object v8, v0, Lio/flutter/view/g$f;->M:Ljava/util/List;

    if-nez v8, :cond_a

    new-instance v14, Ljava/util/ArrayList;

    .local v14, "$r9":Ljava/util/ArrayList;, ""
    invoke-direct {v14, v7}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lio/flutter/view/g$f;->M:Ljava/util/List;

    goto :goto_8

    :cond_a
    move-object/from16 v0, p0

    iget-object v8, v0, Lio/flutter/view/g$f;->M:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    :goto_8
    if-ge v3, v7, :cond_d

    move-object/from16 v0, p0

    iget-object v10, v0, Lio/flutter/view/g$f;->a:Lio/flutter/view/g;

    move-object/from16 v0, p1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v9

    invoke-static {v10, v9}, Lio/flutter/view/g;->c(Lio/flutter/view/g;I)Lio/flutter/view/g$c;

    move-result-object v15

    .local v15, "$r10":Lio/flutter/view/g$c;, ""
    invoke-static {v15}, Lio/flutter/view/g$c;->e(Lio/flutter/view/g$c;)I

    move-result v9

    sget-object v16, Lio/flutter/view/g$b;->a:Lio/flutter/view/g$b;

    .local v16, "$r11":Lio/flutter/view/g$b;, ""
    move-object/from16 v0, v16

    iget v11, v0, Lio/flutter/view/g$b;->w:I

    if-ne v9, v11, :cond_b

    move-object/from16 v0, p0

    iput-object v15, v0, Lio/flutter/view/g$f;->N:Lio/flutter/view/g$c;

    goto :goto_9

    :cond_b
    invoke-static {v15}, Lio/flutter/view/g$c;->e(Lio/flutter/view/g$c;)I

    move-result v9

    sget-object v16, Lio/flutter/view/g$b;->b:Lio/flutter/view/g$b;

    move-object/from16 v0, v16

    iget v11, v0, Lio/flutter/view/g$b;->w:I

    if-ne v9, v11, :cond_c

    move-object/from16 v0, p0

    iput-object v15, v0, Lio/flutter/view/g$f;->O:Lio/flutter/view/g$c;

    goto :goto_9

    :cond_c
    move-object/from16 v0, p0

    iget-object v8, v0, Lio/flutter/view/g$f;->M:Ljava/util/List;

    invoke-interface {v8, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_9
    move-object/from16 v0, p0

    iget-object v8, v0, Lio/flutter/view/g$f;->M:Ljava/util/List;

    invoke-interface {v8, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_d
    return-void
    .end local v8    # "$r6":Ljava/util/List;, ""
    .end local v10    # "$r7":Lio/flutter/view/g;, ""
    .end local v4    # "$f0":F, ""
    .end local v6    # "$r5":[F, ""
    .end local v12    # "$r8":Lio/flutter/view/g$f;, ""
    .end local v9    # "$i2":I, ""
    .end local v11    # "$i3":I, ""
    .end local v2    # "$r3":Ljava/lang/String;, ""
    .end local v3    # "$i0":I, ""
    .end local v7    # "$i1":I, ""
    .end local v15    # "$r10":Lio/flutter/view/g$c;, ""
    .end local v16    # "$r11":Lio/flutter/view/g$b;, ""
    .end local v14    # "$r9":Ljava/util/ArrayList;, ""
    .end local v5    # "$r4":Lio/flutter/view/g$g;, ""
.end method

.method private a(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lio/flutter/view/g$f;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lio/flutter/view/g$d;->l:Lio/flutter/view/g$d;

    .local v0, "$r2":Lio/flutter/view/g$d;, ""
    invoke-direct {p0, v0}, Lio/flutter/view/g$f;->a(Lio/flutter/view/g$d;)Z

    move-result v1

    .local v1, "$z0":Z, ""
    if-eqz v1, :cond_0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v2, p0, Lio/flutter/view/g$f;->K:Ljava/util/List;

    .local v2, "$r3":Ljava/util/List;, ""
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "$r4":Ljava/util/Iterator;, ""
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "$r5":Ljava/lang/Object;, ""
    move-object v5, v4

    check-cast v5, Lio/flutter/view/g$f;

    move-object p0, v5

    .local p0, "$r0":Lio/flutter/view/g$f;, ""
    invoke-direct {p0, p1}, Lio/flutter/view/g$f;->a(Ljava/util/List;)V

    goto :goto_0

    :cond_1
    return-void
    .end local v1    # "$z0":Z, ""
    .end local v4    # "$r5":Ljava/lang/Object;, ""
    .end local p0    # "$r0":Lio/flutter/view/g$f;, ""
    .end local v0    # "$r2":Lio/flutter/view/g$d;, ""
    .end local v2    # "$r3":Ljava/util/List;, ""
    .end local v3    # "$r4":Ljava/util/Iterator;, ""
.end method

.method private a([FLjava/util/Set;Z)V
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F",
            "Ljava/util/Set",
            "<",
            "Lio/flutter/view/g$f;",
            ">;Z)V"
        }
    .end annotation

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    .local v6, "$z1":Z, ""
    iget-boolean v6, v0, Lio/flutter/view/g$f;->R:Z

    if-eqz v6, :cond_0

    const/16 p3, 0x1

    :cond_0
    if-eqz p3, :cond_3

    move-object/from16 v0, p0

    .local v7, "$r3":[F, ""
    iget-object v7, v0, Lio/flutter/view/g$f;->S:[F

    if-nez v7, :cond_1

    const/16 v8, 0x10

    new-array v7, v8, [F

    move-object/from16 v0, p0

    iput-object v7, v0, Lio/flutter/view/g$f;->S:[F

    :cond_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lio/flutter/view/g$f;->S:[F

    move-object/from16 v0, p0

    .local v9, "$r4":[F, ""
    iget-object v9, v0, Lio/flutter/view/g$f;->I:[F

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, v7

    move v1, v8

    move-object/from16 v2, p1

    move v3, v10

    move-object v4, v9

    move v5, v11

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    const/4 v8, 0x4

    new-array v0, v8, [F

    .local v0, "$r2":[F, ""
    move-object/from16 p1, v0

    .end local v0    # "$r2":[F, ""
    .local p1, "$r2":[F, ""
    const/4 v12, 0x0

    .local v12, "$f0":F, ""
    const/4 v8, 0x2

    aput v12, p1, v8

    const v12, 0x4e7e0000

    const/4 v8, 0x3

    aput v12, p1, v8

    const/4 v8, 0x4

    new-array v7, v8, [F

    const/4 v8, 0x4

    new-array v9, v8, [F

    const/4 v8, 0x4

    new-array v13, v8, [F

    .local v13, "$r5":[F, ""
    const/4 v8, 0x4

    new-array v14, v8, [F

    .local v14, "$r6":[F, ""
    move-object/from16 v0, p0

    iget v12, v0, Lio/flutter/view/g$f;->E:F

    const/4 v8, 0x0

    aput v12, p1, v8

    move-object/from16 v0, p0

    iget v12, v0, Lio/flutter/view/g$f;->F:F

    const/4 v8, 0x1

    aput v12, p1, v8

    move-object/from16 v0, p0

    .local v15, "$r7":[F, ""
    iget-object v15, v0, Lio/flutter/view/g$f;->S:[F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v7, v15, v1}, Lio/flutter/view/g$f;->a([F[F[F)V

    move-object/from16 v0, p0

    iget v12, v0, Lio/flutter/view/g$f;->G:F

    const/4 v8, 0x0

    aput v12, p1, v8

    move-object/from16 v0, p0

    iget v12, v0, Lio/flutter/view/g$f;->F:F

    const/4 v8, 0x1

    aput v12, p1, v8

    move-object/from16 v0, p0

    iget-object v15, v0, Lio/flutter/view/g$f;->S:[F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v9, v15, v1}, Lio/flutter/view/g$f;->a([F[F[F)V

    move-object/from16 v0, p0

    iget v12, v0, Lio/flutter/view/g$f;->G:F

    const/4 v8, 0x0

    aput v12, p1, v8

    move-object/from16 v0, p0

    iget v12, v0, Lio/flutter/view/g$f;->H:F

    const/4 v8, 0x1

    aput v12, p1, v8

    move-object/from16 v0, p0

    iget-object v15, v0, Lio/flutter/view/g$f;->S:[F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v13, v15, v1}, Lio/flutter/view/g$f;->a([F[F[F)V

    move-object/from16 v0, p0

    iget v12, v0, Lio/flutter/view/g$f;->E:F

    const/4 v8, 0x0

    aput v12, p1, v8

    move-object/from16 v0, p0

    iget v12, v0, Lio/flutter/view/g$f;->H:F

    const/4 v8, 0x1

    aput v12, p1, v8

    move-object/from16 v0, p0

    iget-object v15, v0, Lio/flutter/view/g$f;->S:[F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v14, v15, v1}, Lio/flutter/view/g$f;->a([F[F[F)V

    move-object/from16 v0, p0

    .local v0, "$r8":Landroid/graphics/Rect;, ""
    iget-object v0, v0, Lio/flutter/view/g$f;->T:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    .end local v0    # "$r8":Landroid/graphics/Rect;, ""
    .local v16, "$r8":Landroid/graphics/Rect;, ""
    if-nez v16, :cond_2

    new-instance v17, Landroid/graphics/Rect;

    .local v17, "r13":Landroid/graphics/Rect;, ""
    move-object/from16 v0, v17

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lio/flutter/view/g$f;->T:Landroid/graphics/Rect;

    :cond_2
    move-object/from16 v0, p0

    .end local v16    # "$r8":Landroid/graphics/Rect;, ""
    .local v0, "$r8":Landroid/graphics/Rect;, ""
    iget-object v0, v0, Lio/flutter/view/g$f;->T:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    .end local v0    # "$r8":Landroid/graphics/Rect;, ""
    .local v16, "$r8":Landroid/graphics/Rect;, ""
    const/4 v8, 0x0

    aget v12, v7, v8

    const/4 v8, 0x0

    aget v18, v9, v8

    .local v18, "$f1":F, ""
    const/4 v8, 0x0

    aget v19, v13, v8

    .local v19, "$f2":F, ""
    const/4 v8, 0x0

    aget v20, v14, v8

    .local v20, "$f3":F, ""
    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v0, v12, v1, v2, v3}, Lio/flutter/view/g$f;->a(FFFF)F

    move-result v12

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v21

    .local v21, "$i0":I, ""
    const/4 v8, 0x1

    aget v12, v7, v8

    const/4 v8, 0x1

    aget v18, v9, v8

    const/4 v8, 0x1

    aget v19, v13, v8

    const/4 v8, 0x1

    aget v20, v14, v8

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v0, v12, v1, v2, v3}, Lio/flutter/view/g$f;->a(FFFF)F

    move-result v12

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v22

    .local v22, "$i1":I, ""
    const/4 v8, 0x0

    aget v18, v7, v8

    const/4 v8, 0x0

    aget v19, v9, v8

    const/4 v8, 0x0

    aget v20, v13, v8

    const/4 v8, 0x0

    aget v12, v14, v8

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3, v12}, Lio/flutter/view/g$f;->b(FFFF)F

    move-result v12

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v23

    .local v23, "$i2":I, ""
    const/4 v8, 0x1

    aget v12, v7, v8

    const/4 v8, 0x1

    aget v18, v9, v8

    const/4 v8, 0x1

    aget v19, v13, v8

    const/4 v8, 0x1

    aget v20, v14, v8

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v0, v12, v1, v2, v3}, Lio/flutter/view/g$f;->b(FFFF)F

    move-result v12

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v24

    .local v24, "$i3":I, ""
    move-object/from16 v0, v16

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iput-boolean v8, v0, Lio/flutter/view/g$f;->R:Z

    :cond_3
    move-object/from16 v0, p0

    .local v0, "$r9":Ljava/util/List;, ""
    iget-object v0, v0, Lio/flutter/view/g$f;->K:Ljava/util/List;

    move-object/from16 v25, v0

    .end local v0    # "$r9":Ljava/util/List;, ""
    .local v25, "$r9":Ljava/util/List;, ""
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v26

    .local v26, "$r10":Ljava/util/Iterator;, ""
    :goto_0
    move-object/from16 v0, v26

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    move-object/from16 v0, v26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    .local v27, "$r11":Ljava/lang/Object;, ""
    move-object/from16 v29, v27

    check-cast v29, Lio/flutter/view/g$f;

    move-object/from16 v28, v29

    .local v28, "$r12":Lio/flutter/view/g$f;, ""
    move-object/from16 v0, p0

    .end local p1    # "$r2":[F, ""
    .local v0, "$r2":[F, ""
    iget-object v0, v0, Lio/flutter/view/g$f;->S:[F

    move-object/from16 p1, v0

    .end local v0    # "$r2":[F, ""
    .local p1, "$r2":[F, ""
    move-object/from16 v0, v28

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lio/flutter/view/g$f;->a([FLjava/util/Set;Z)V

    goto :goto_0

    :cond_4
    return-void
    .end local v19    # "$f2":F, ""
    .end local v23    # "$i2":I, ""
    .end local v14    # "$r6":[F, ""
    .end local v18    # "$f1":F, ""
    .end local v26    # "$r10":Ljava/util/Iterator;, ""
    .end local v28    # "$r12":Lio/flutter/view/g$f;, ""
    .end local v21    # "$i0":I, ""
    .end local p1    # "$r2":[F, ""
    .end local v12    # "$f0":F, ""
    .end local v22    # "$i1":I, ""
    .end local v7    # "$r3":[F, ""
    .end local v9    # "$r4":[F, ""
    .end local v16    # "$r8":Landroid/graphics/Rect;, ""
    .end local v17    # "r13":Landroid/graphics/Rect;, ""
    .end local v25    # "$r9":Ljava/util/List;, ""
    .end local v27    # "$r11":Ljava/lang/Object;, ""
    .end local v6    # "$z1":Z, ""
    .end local v20    # "$f3":F, ""
    .end local v13    # "$r5":[F, ""
    .end local v24    # "$i3":I, ""
    .end local v15    # "$r7":[F, ""
.end method

.method private a([F[F[F)V
    .locals 12

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p1

    move v1, v6

    move-object v2, p2

    move v3, v7

    move-object v4, p3

    move v5, v8

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    const/4 v6, 0x3

    aget v9, p1, v6

    .local v9, "$f0":F, ""
    const/4 v6, 0x0

    aget v10, p1, v6

    .local v10, "$f1":F, ""
    div-float/2addr v10, v9

    const/4 v6, 0x0

    aput v10, p1, v6

    const/4 v6, 0x1

    aget v10, p1, v6

    div-float/2addr v10, v9

    const/4 v6, 0x1

    aput v10, p1, v6

    const/4 v6, 0x2

    aget v10, p1, v6

    div-float v9, v10, v9

    const/4 v6, 0x2

    aput v9, p1, v6

    const/4 v6, 0x3

    const/4 v11, 0x0

    aput v11, p1, v6

    return-void
    .end local v9    # "$f0":F, ""
    .end local v10    # "$f1":F, ""
.end method

.method private a()Z
    .locals 5

    iget v0, p0, Lio/flutter/view/g$f;->l:F

    .local v0, "$f0":F, ""
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    .local v1, "$z0":Z, ""
    if-nez v1, :cond_0

    iget v0, p0, Lio/flutter/view/g$f;->z:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_0

    iget v2, p0, Lio/flutter/view/g$f;->z:F

    .local v2, "$f1":F, ""
    iget v0, p0, Lio/flutter/view/g$f;->l:F

    cmpl-float v3, v2, v0

    .local v3, "$b0":B, ""
    if-eqz v3, :cond_0

    const/4 v4, 0x1

    return v4

    :cond_0
    const/4 v4, 0x0

    return v4
    .end local v1    # "$z0":Z, ""
    .end local v3    # "$b0":B, ""
    .end local v2    # "$f1":F, ""
    .end local v0    # "$f0":F, ""
.end method

.method private a(Lio/flutter/view/g$b;)Z
    .locals 3

    iget v0, p0, Lio/flutter/view/g$f;->d:I

    .local v0, "$i0":I, ""
    iget v1, p1, Lio/flutter/view/g$b;->w:I

    .local v1, "$i1":I, ""
    and-int v0, v1, v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    const/4 v2, 0x0

    return v2
    .end local v1    # "$i1":I, ""
    .end local v0    # "$i0":I, ""
.end method

.method private a(Lio/flutter/view/g$d;)Z
    .locals 3

    iget v0, p0, Lio/flutter/view/g$f;->c:I

    .local v0, "$i0":I, ""
    iget v1, p1, Lio/flutter/view/g$d;->x:I

    .local v1, "$i1":I, ""
    and-int v0, v1, v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    const/4 v2, 0x0

    return v2
    .end local v1    # "$i1":I, ""
    .end local v0    # "$i0":I, ""
.end method

.method static synthetic a(Lio/flutter/view/g$f;Lb/a/d/c;)Z
    .locals 1

    invoke-static {p0, p1}, Lio/flutter/view/g$f;->b(Lio/flutter/view/g$f;Lb/a/d/c;)Z

    move-result v0

    .local v0, "$z0":Z, ""
    return v0
    .end local v0    # "$z0":Z, ""
.end method

.method static synthetic a(Lio/flutter/view/g$f;Lio/flutter/view/g$b;)Z
    .locals 1

    invoke-direct {p0, p1}, Lio/flutter/view/g$f;->a(Lio/flutter/view/g$b;)Z

    move-result v0

    .local v0, "$z0":Z, ""
    return v0
    .end local v0    # "$z0":Z, ""
.end method

.method static synthetic a(Lio/flutter/view/g$f;Lio/flutter/view/g$d;)Z
    .locals 1

    invoke-direct {p0, p1}, Lio/flutter/view/g$f;->a(Lio/flutter/view/g$d;)Z

    move-result v0

    .local v0, "$z0":Z, ""
    return v0
    .end local v0    # "$z0":Z, ""
.end method

.method static synthetic a(Lio/flutter/view/g$f;Z)Z
    .locals 0

    iput-boolean p1, p0, Lio/flutter/view/g$f;->R:Z

    return p1
.end method

.method private b(FFFF)F
    .locals 0

    invoke-static {p3, p4}, Ljava/lang/Math;->max(FF)F

    move-result p3

    .local p3, "$f3":F, ""
    invoke-static {p2, p3}, Ljava/lang/Math;->max(FF)F

    move-result p2

    .local p2, "$f2":F, ""
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .local p1, "$f1":F, ""
    return p1
    .end local p3    # "$f3":F, ""
    .end local p2    # "$f2":F, ""
    .end local p1    # "$f1":F, ""
.end method

.method static synthetic b(Lio/flutter/view/g$f;)I
    .locals 1

    iget v0, p0, Lio/flutter/view/g$f;->i:I

    .local v0, "i0":I, ""
    return v0
    .end local v0    # "i0":I, ""
.end method

.method private b()Z
    .locals 4

    iget-object v0, p0, Lio/flutter/view/g$f;->o:Ljava/lang/String;

    .local v0, "$r1":Ljava/lang/String;, ""
    if-nez v0, :cond_0

    iget-object v0, p0, Lio/flutter/view/g$f;->D:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    iget-object v0, p0, Lio/flutter/view/g$f;->o:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/flutter/view/g$f;->D:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lio/flutter/view/g$f;->o:Ljava/lang/String;

    .local v2, "$r2":Ljava/lang/String;, ""
    iget-object v0, p0, Lio/flutter/view/g$f;->D:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .local v3, "$z0":Z, ""
    if-nez v3, :cond_2

    :cond_1
    const/4 v1, 0x1

    return v1

    :cond_2
    const/4 v1, 0x0

    return v1
    .end local v3    # "$z0":Z, ""
    .end local v2    # "$r2":Ljava/lang/String;, ""
    .end local v0    # "$r1":Ljava/lang/String;, ""
.end method

.method private b(Lio/flutter/view/g$b;)Z
    .locals 3

    iget v0, p0, Lio/flutter/view/g$f;->w:I

    .local v0, "$i0":I, ""
    iget v1, p1, Lio/flutter/view/g$b;->w:I

    .local v1, "$i1":I, ""
    and-int v0, v1, v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    const/4 v2, 0x0

    return v2
    .end local v0    # "$i0":I, ""
    .end local v1    # "$i1":I, ""
.end method

.method private b(Lio/flutter/view/g$d;)Z
    .locals 3

    iget v0, p0, Lio/flutter/view/g$f;->v:I

    .local v0, "$i0":I, ""
    iget v1, p1, Lio/flutter/view/g$d;->x:I

    .local v1, "$i1":I, ""
    and-int v0, v1, v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    const/4 v2, 0x0

    return v2
    .end local v0    # "$i0":I, ""
    .end local v1    # "$i1":I, ""
.end method

.method private static b(Lio/flutter/view/g$f;Lb/a/d/c;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/flutter/view/g$f;",
            "Lb/a/d/c",
            "<",
            "Lio/flutter/view/g$f;",
            ">;)Z"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-direct {p0, p1}, Lio/flutter/view/g$f;->a(Lb/a/d/c;)Lio/flutter/view/g$f;

    move-result-object p0

    .local p0, "$r1":Lio/flutter/view/g$f;, ""
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
    .end local p0    # "$r1":Lio/flutter/view/g$f;, ""
.end method

.method static synthetic b(Lio/flutter/view/g$f;Lio/flutter/view/g$b;)Z
    .locals 1

    invoke-direct {p0, p1}, Lio/flutter/view/g$f;->b(Lio/flutter/view/g$b;)Z

    move-result v0

    .local v0, "$z0":Z, ""
    return v0
    .end local v0    # "$z0":Z, ""
.end method

.method static synthetic b(Lio/flutter/view/g$f;Lio/flutter/view/g$d;)Z
    .locals 1

    invoke-direct {p0, p1}, Lio/flutter/view/g$f;->b(Lio/flutter/view/g$d;)Z

    move-result v0

    .local v0, "$z0":Z, ""
    return v0
    .end local v0    # "$z0":Z, ""
.end method

.method static synthetic b(Lio/flutter/view/g$f;Z)Z
    .locals 0

    iput-boolean p1, p0, Lio/flutter/view/g$f;->P:Z

    return p1
.end method

.method static synthetic c(Lio/flutter/view/g$f;)Landroid/graphics/Rect;
    .locals 1

    invoke-direct {p0}, Lio/flutter/view/g$f;->d()Landroid/graphics/Rect;

    move-result-object v0

    .local v0, "$r0":Landroid/graphics/Rect;, ""
    return-object v0
    .end local v0    # "$r0":Landroid/graphics/Rect;, ""
.end method

.method private c()V
    .locals 6

    iget-boolean v0, p0, Lio/flutter/view/g$f;->P:Z

    .local v0, "$z0":Z, ""
    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lio/flutter/view/g$f;->P:Z

    iget-object v2, p0, Lio/flutter/view/g$f;->Q:[F

    .local v2, "$r1":[F, ""
    if-nez v2, :cond_1

    const/16 v1, 0x10

    new-array v2, v1, [F

    iput-object v2, p0, Lio/flutter/view/g$f;->Q:[F

    :cond_1
    iget-object v3, p0, Lio/flutter/view/g$f;->Q:[F

    .local v3, "$r2":[F, ""
    iget-object v2, p0, Lio/flutter/view/g$f;->I:[F

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-static {v3, v1, v2, v4}, Landroid/opengl/Matrix;->invertM([FI[FI)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v2, p0, Lio/flutter/view/g$f;->Q:[F

    const/4 v5, 0x0

    invoke-static {v2, v5}, Ljava/util/Arrays;->fill([FF)V

    :cond_2
    return-void
    .end local v0    # "$z0":Z, ""
    .end local v2    # "$r1":[F, ""
    .end local v3    # "$r2":[F, ""
.end method

.method static synthetic d(Lio/flutter/view/g$f;)I
    .locals 1

    iget v0, p0, Lio/flutter/view/g$f;->b:I

    .local v0, "i0":I, ""
    return v0
    .end local v0    # "i0":I, ""
.end method

.method private d()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lio/flutter/view/g$f;->T:Landroid/graphics/Rect;

    .local v0, "r1":Landroid/graphics/Rect;, ""
    return-object v0
    .end local v0    # "r1":Landroid/graphics/Rect;, ""
.end method

.method private e()Z
    .locals 7

    sget-object v0, Lio/flutter/view/g$d;->l:Lio/flutter/view/g$d;

    .local v0, "$r1":Lio/flutter/view/g$d;, ""
    invoke-direct {p0, v0}, Lio/flutter/view/g$f;->a(Lio/flutter/view/g$d;)Z

    move-result v1

    .local v1, "$z0":Z, ""
    if-eqz v1, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_0
    sget-object v0, Lio/flutter/view/g$d;->u:Lio/flutter/view/g$d;

    invoke-direct {p0, v0}, Lio/flutter/view/g$f;->a(Lio/flutter/view/g$d;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    return v2

    :cond_1
    sget-object v3, Lio/flutter/view/g$b;->d:Lio/flutter/view/g$b;

    .local v3, "$r2":Lio/flutter/view/g$b;, ""
    iget v4, v3, Lio/flutter/view/g$b;->w:I

    .local v4, "$i0":I, ""
    sget-object v3, Lio/flutter/view/g$b;->c:Lio/flutter/view/g$b;

    iget v5, v3, Lio/flutter/view/g$b;->w:I

    .local v5, "$i1":I, ""
    or-int/2addr v4, v5

    sget-object v3, Lio/flutter/view/g$b;->e:Lio/flutter/view/g$b;

    iget v5, v3, Lio/flutter/view/g$b;->w:I

    or-int/2addr v4, v5

    sget-object v3, Lio/flutter/view/g$b;->f:Lio/flutter/view/g$b;

    iget v5, v3, Lio/flutter/view/g$b;->w:I

    or-int v5, v4, v5

    iget v4, p0, Lio/flutter/view/g$f;->d:I

    not-int v5, v5

    and-int v4, v5, v4

    if-nez v4, :cond_4

    iget v4, p0, Lio/flutter/view/g$f;->c:I

    if-nez v4, :cond_4

    iget-object v6, p0, Lio/flutter/view/g$f;->o:Ljava/lang/String;

    .local v6, "$r3":Ljava/lang/String;, ""
    if-eqz v6, :cond_2

    iget-object v6, p0, Lio/flutter/view/g$f;->o:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    iget-object v6, p0, Lio/flutter/view/g$f;->p:Ljava/lang/String;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lio/flutter/view/g$f;->p:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    iget-object v6, p0, Lio/flutter/view/g$f;->s:Ljava/lang/String;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lio/flutter/view/g$f;->s:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    const/4 v2, 0x1

    return v2

    :cond_5
    const/4 v2, 0x0

    return v2
    .end local v6    # "$r3":Ljava/lang/String;, ""
    .end local v0    # "$r1":Lio/flutter/view/g$d;, ""
    .end local v1    # "$z0":Z, ""
    .end local v4    # "$i0":I, ""
    .end local v3    # "$r2":Lio/flutter/view/g$b;, ""
    .end local v5    # "$i1":I, ""
.end method

.method static synthetic e(Lio/flutter/view/g$f;)Z
    .locals 1

    invoke-direct {p0}, Lio/flutter/view/g$f;->e()Z

    move-result v0

    .local v0, "$z0":Z, ""
    return v0
    .end local v0    # "$z0":Z, ""
.end method

.method static synthetic f(Lio/flutter/view/g$f;)I
    .locals 1

    iget v0, p0, Lio/flutter/view/g$f;->g:I

    .local v0, "i0":I, ""
    return v0
    .end local v0    # "i0":I, ""
.end method

.method private f()Ljava/lang/String;
    .locals 8

    sget-object v0, Lio/flutter/view/g$d;->m:Lio/flutter/view/g$d;

    .local v0, "$r1":Lio/flutter/view/g$d;, ""
    invoke-direct {p0, v0}, Lio/flutter/view/g$f;->a(Lio/flutter/view/g$d;)Z

    move-result v1

    .local v1, "$z0":Z, ""
    if-eqz v1, :cond_0

    iget-object v2, p0, Lio/flutter/view/g$f;->o:Ljava/lang/String;

    .local v2, "$r2":Ljava/lang/String;, ""
    if-eqz v2, :cond_0

    iget-object v2, p0, Lio/flutter/view/g$f;->o:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v2, p0, Lio/flutter/view/g$f;->o:Ljava/lang/String;

    return-object v2

    :cond_0
    iget-object v3, p0, Lio/flutter/view/g$f;->K:Ljava/util/List;

    .local v3, "$r3":Ljava/util/List;, ""
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "$r4":Ljava/util/Iterator;, ""
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .local v5, "$r5":Ljava/lang/Object;, ""
    move-object v6, v5

    check-cast v6, Lio/flutter/view/g$f;

    move-object p0, v6

    .local p0, "$r0":Lio/flutter/view/g$f;, ""
    invoke-direct {p0}, Lio/flutter/view/g$f;->f()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    return-object v2

    :cond_2
    const/4 v7, 0x0

    return-object v7
    .end local v0    # "$r1":Lio/flutter/view/g$d;, ""
    .end local v2    # "$r2":Ljava/lang/String;, ""
    .end local p0    # "$r0":Lio/flutter/view/g$f;, ""
    .end local v1    # "$z0":Z, ""
    .end local v4    # "$r4":Ljava/util/Iterator;, ""
    .end local v5    # "$r5":Ljava/lang/Object;, ""
    .end local v3    # "$r3":Ljava/util/List;, ""
.end method

.method static synthetic g(Lio/flutter/view/g$f;)I
    .locals 1

    iget v0, p0, Lio/flutter/view/g$f;->h:I

    .local v0, "i0":I, ""
    return v0
    .end local v0    # "i0":I, ""
.end method

.method private g()Ljava/lang/String;
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    .local v0, "$r1":Ljava/lang/StringBuilder;, ""
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x3

    new-array v1, v2, [Ljava/lang/String;

    .local v1, "$r2":[Ljava/lang/String;, ""
    iget-object v3, p0, Lio/flutter/view/g$f;->p:Ljava/lang/String;

    .local v3, "$r3":Ljava/lang/String;, ""
    const/4 v4, 0x0

    .local v4, "$i0":I, ""
    const/4 v2, 0x0

    aput-object v3, v1, v2

    iget-object v3, p0, Lio/flutter/view/g$f;->o:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v3, v1, v2

    iget-object v3, p0, Lio/flutter/view/g$f;->s:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v3, v1, v2

    array-length v5, v1

    .local v5, "$i1":I, ""
    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v3, v1, v4

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    .local v6, "$i2":I, ""
    if-lez v6, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_0

    const-string v7, ", "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_3
    const/4 v8, 0x0

    return-object v8
    .end local v3    # "$r3":Ljava/lang/String;, ""
    .end local v4    # "$i0":I, ""
    .end local v6    # "$i2":I, ""
    .end local v1    # "$r2":[Ljava/lang/String;, ""
    .end local v0    # "$r1":Ljava/lang/StringBuilder;, ""
    .end local v5    # "$i1":I, ""
.end method

.method static synthetic h(Lio/flutter/view/g$f;)I
    .locals 1

    iget v0, p0, Lio/flutter/view/g$f;->e:I

    .local v0, "i0":I, ""
    return v0
    .end local v0    # "i0":I, ""
.end method

.method static synthetic i(Lio/flutter/view/g$f;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/flutter/view/g$f;->p:Ljava/lang/String;

    .local v0, "r1":Ljava/lang/String;, ""
    return-object v0
    .end local v0    # "r1":Ljava/lang/String;, ""
.end method

.method static synthetic j(Lio/flutter/view/g$f;)I
    .locals 1

    iget v0, p0, Lio/flutter/view/g$f;->f:I

    .local v0, "i0":I, ""
    return v0
    .end local v0    # "i0":I, ""
.end method

.method static synthetic k(Lio/flutter/view/g$f;)Lio/flutter/view/g$f;
    .locals 0

    iget-object p0, p0, Lio/flutter/view/g$f;->J:Lio/flutter/view/g$f;

    .local p0, "$r0":Lio/flutter/view/g$f;, ""
    return-object p0
    .end local p0    # "$r0":Lio/flutter/view/g$f;, ""
.end method

.method static synthetic l(Lio/flutter/view/g$f;)Lio/flutter/view/g$c;
    .locals 1

    iget-object v0, p0, Lio/flutter/view/g$f;->N:Lio/flutter/view/g$c;

    .local v0, "r1":Lio/flutter/view/g$c;, ""
    return-object v0
    .end local v0    # "r1":Lio/flutter/view/g$c;, ""
.end method

.method static synthetic m(Lio/flutter/view/g$f;)Lio/flutter/view/g$c;
    .locals 1

    iget-object v0, p0, Lio/flutter/view/g$f;->O:Lio/flutter/view/g$c;

    .local v0, "r1":Lio/flutter/view/g$c;, ""
    return-object v0
    .end local v0    # "r1":Lio/flutter/view/g$c;, ""
.end method

.method static synthetic n(Lio/flutter/view/g$f;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lio/flutter/view/g$f;->g()Ljava/lang/String;

    move-result-object v0

    .local v0, "$r0":Ljava/lang/String;, ""
    return-object v0
    .end local v0    # "$r0":Ljava/lang/String;, ""
.end method

.method static synthetic o(Lio/flutter/view/g$f;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lio/flutter/view/g$f;->M:Ljava/util/List;

    .local v0, "r1":Ljava/util/List;, ""
    return-object v0
    .end local v0    # "r1":Ljava/util/List;, ""
.end method

.method static synthetic p(Lio/flutter/view/g$f;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lio/flutter/view/g$f;->K:Ljava/util/List;

    .local v0, "r1":Ljava/util/List;, ""
    return-object v0
    .end local v0    # "r1":Ljava/util/List;, ""
.end method

.method static synthetic q(Lio/flutter/view/g$f;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/flutter/view/g$f;->q:Ljava/lang/String;

    .local v0, "r1":Ljava/lang/String;, ""
    return-object v0
    .end local v0    # "r1":Ljava/lang/String;, ""
.end method

.method static synthetic r(Lio/flutter/view/g$f;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/flutter/view/g$f;->r:Ljava/lang/String;

    .local v0, "r1":Ljava/lang/String;, ""
    return-object v0
    .end local v0    # "r1":Ljava/lang/String;, ""
.end method

.method static synthetic s(Lio/flutter/view/g$f;)Z
    .locals 1

    iget-boolean v0, p0, Lio/flutter/view/g$f;->u:Z

    .local v0, "z0":Z, ""
    return v0
    .end local v0    # "z0":Z, ""
.end method

.method static synthetic t(Lio/flutter/view/g$f;)Z
    .locals 1

    invoke-direct {p0}, Lio/flutter/view/g$f;->a()Z

    move-result v0

    .local v0, "$z0":Z, ""
    return v0
    .end local v0    # "$z0":Z, ""
.end method

.method static synthetic u(Lio/flutter/view/g$f;)F
    .locals 1

    iget v0, p0, Lio/flutter/view/g$f;->l:F

    .local v0, "f0":F, ""
    return v0
    .end local v0    # "f0":F, ""
.end method

.method static synthetic v(Lio/flutter/view/g$f;)F
    .locals 1

    iget v0, p0, Lio/flutter/view/g$f;->m:F

    .local v0, "f0":F, ""
    return v0
    .end local v0    # "f0":F, ""
.end method

.method static synthetic w(Lio/flutter/view/g$f;)F
    .locals 1

    iget v0, p0, Lio/flutter/view/g$f;->n:F

    .local v0, "f0":F, ""
    return v0
    .end local v0    # "f0":F, ""
.end method

.method static synthetic x(Lio/flutter/view/g$f;)I
    .locals 1

    iget v0, p0, Lio/flutter/view/g$f;->k:I

    .local v0, "i0":I, ""
    return v0
    .end local v0    # "i0":I, ""
.end method

.method static synthetic y(Lio/flutter/view/g$f;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lio/flutter/view/g$f;->L:Ljava/util/List;

    .local v0, "r1":Ljava/util/List;, ""
    return-object v0
    .end local v0    # "r1":Ljava/util/List;, ""
.end method

.method static synthetic z(Lio/flutter/view/g$f;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/flutter/view/g$f;->o:Ljava/lang/String;

    .local v0, "r1":Ljava/lang/String;, ""
    return-object v0
    .end local v0    # "r1":Ljava/lang/String;, ""
.end method
