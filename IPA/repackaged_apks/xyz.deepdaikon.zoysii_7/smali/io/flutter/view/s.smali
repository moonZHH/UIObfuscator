.class Lio/flutter/view/s;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/view/t;->a(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lio/flutter/view/t;


# direct methods
.method constructor <init>(Lio/flutter/view/t;J)V
    .locals 0

    iput-object p1, p0, Lio/flutter/view/s;->b:Lio/flutter/view/t;

    iput-wide p2, p0, Lio/flutter/view/s;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 19

    move-object/from16 v0, p0

    .local v6, "$r1":Lio/flutter/view/t;, ""
    iget-object v6, v0, Lio/flutter/view/s;->b:Lio/flutter/view/t;

    iget-object v7, v6, Lio/flutter/view/t;->a:Lio/flutter/view/u;

    .local v7, "$r2":Lio/flutter/view/u;, ""
    invoke-static {v7}, Lio/flutter/view/u;->a(Lio/flutter/view/u;)Landroid/view/WindowManager;

    move-result-object v8

    .local v8, "$r3":Landroid/view/WindowManager;, ""
    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v9

    .local v9, "$r4":Landroid/view/Display;, ""
    invoke-virtual {v9}, Landroid/view/Display;->getRefreshRate()F

    move-result v10

    .local v10, "$f0":F, ""
    float-to-double v11, v10

    .local v11, "$d0":D, ""
    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    const-wide v13, 0x41cdcd6500000000L    # 1.0E9

    div-double v11, v13, v11

    double-to-long v0, v11

    .local v0, "$l1":J, ""
    move-wide/from16 v15, v0

    .end local v0    # "$l1":J, ""
    .local v15, "$l1":J, ""
    add-long v15, p1, v15

    move-object/from16 v0, p0

    .local v0, "$l2":J, ""
    iget-wide v0, v0, Lio/flutter/view/s;->a:J

    move-wide/from16 v17, v0

    .end local v0    # "$l2":J, ""
    .local v17, "$l2":J, ""
    move-wide/from16 v0, p1

    move-wide/from16 v2, v15

    move-wide/from16 v4, v17

    invoke-static/range {v0 .. v5}, Lio/flutter/embedding/engine/FlutterJNI;->nativeOnVsync(JJJ)V

    return-void
    .end local v15    # "$l1":J, ""
    .end local v8    # "$r3":Landroid/view/WindowManager;, ""
    .end local v6    # "$r1":Lio/flutter/view/t;, ""
    .end local v7    # "$r2":Lio/flutter/view/u;, ""
    .end local v10    # "$f0":F, ""
    .end local v17    # "$l2":J, ""
    .end local v11    # "$d0":D, ""
    .end local v9    # "$r4":Landroid/view/Display;, ""
.end method
