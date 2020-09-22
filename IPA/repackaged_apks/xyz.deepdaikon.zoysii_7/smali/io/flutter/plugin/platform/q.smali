.class Lio/flutter/plugin/platform/q;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x14
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/plugin/platform/o;,
        Lio/flutter/plugin/platform/q$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lio/flutter/plugin/platform/b;

.field private final c:I

.field private final d:Lio/flutter/view/r$a;

.field private final e:Landroid/view/View$OnFocusChangeListener;

.field private f:Landroid/hardware/display/VirtualDisplay;

.field private g:Lio/flutter/plugin/platform/SingleViewPresentation;

.field private h:Landroid/view/Surface;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lio/flutter/plugin/platform/b;Landroid/hardware/display/VirtualDisplay;Lio/flutter/plugin/platform/g;Landroid/view/Surface;Lio/flutter/view/r$a;Landroid/view/View$OnFocusChangeListener;ILjava/lang/Object;)V
    .locals 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/plugin/platform/q;->a:Landroid/content/Context;

    iput-object p2, p0, Lio/flutter/plugin/platform/q;->b:Lio/flutter/plugin/platform/b;

    move-object/from16 v0, p6

    iput-object v0, p0, Lio/flutter/plugin/platform/q;->d:Lio/flutter/view/r$a;

    move-object/from16 v0, p7

    iput-object v0, p0, Lio/flutter/plugin/platform/q;->e:Landroid/view/View$OnFocusChangeListener;

    move-object/from16 v0, p5

    iput-object v0, p0, Lio/flutter/plugin/platform/q;->h:Landroid/view/Surface;

    move-object/from16 v0, p3

    iput-object v0, p0, Lio/flutter/plugin/platform/q;->f:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .local v8, "$r10":Landroid/content/res/Resources;, ""
    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    .local v9, "$r11":Landroid/util/DisplayMetrics;, ""
    iget v10, v9, Landroid/util/DisplayMetrics;->densityDpi:I

    .local v10, "$i1":I, ""
    iput v10, p0, Lio/flutter/plugin/platform/q;->c:I

    new-instance v11, Lio/flutter/plugin/platform/SingleViewPresentation;

    .local v11, "$r9":Lio/flutter/plugin/platform/SingleViewPresentation;, ""
    iget-object v0, p0, Lio/flutter/plugin/platform/q;->f:Landroid/hardware/display/VirtualDisplay;

    .local v0, "$r3":Landroid/hardware/display/VirtualDisplay;, ""
    move-object/from16 p3, v0

    .end local v0    # "$r3":Landroid/hardware/display/VirtualDisplay;, ""
    .local p3, "$r3":Landroid/hardware/display/VirtualDisplay;, ""
    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v12

    .local v12, "$r12":Landroid/view/Display;, ""
    move-object v0, v11

    move-object v1, p1

    move-object v2, v12

    move-object/from16 v3, p4

    move-object v4, p2

    move/from16 v5, p8

    move-object/from16 v6, p9

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lio/flutter/plugin/platform/SingleViewPresentation;-><init>(Landroid/content/Context;Landroid/view/Display;Lio/flutter/plugin/platform/g;Lio/flutter/plugin/platform/b;ILjava/lang/Object;Landroid/view/View$OnFocusChangeListener;)V

    iput-object v11, p0, Lio/flutter/plugin/platform/q;->g:Lio/flutter/plugin/platform/SingleViewPresentation;

    iget-object v11, p0, Lio/flutter/plugin/platform/q;->g:Lio/flutter/plugin/platform/SingleViewPresentation;

    invoke-virtual {v11}, Landroid/app/Presentation;->show()V

    return-void
    .end local v9    # "$r11":Landroid/util/DisplayMetrics;, ""
    .end local v12    # "$r12":Landroid/view/Display;, ""
    .end local v10    # "$i1":I, ""
    .end local v11    # "$r9":Lio/flutter/plugin/platform/SingleViewPresentation;, ""
    .end local p3    # "$r3":Landroid/hardware/display/VirtualDisplay;, ""
    .end local v8    # "$r10":Landroid/content/res/Resources;, ""
.end method

.method public static a(Landroid/content/Context;Lio/flutter/plugin/platform/b;Lio/flutter/plugin/platform/g;Lio/flutter/view/r$a;IIILjava/lang/Object;Landroid/view/View$OnFocusChangeListener;)Lio/flutter/plugin/platform/q;
    .locals 23

    move-object/from16 v0, p3

    invoke-interface {v0}, Lio/flutter/view/r$a;->b()Landroid/graphics/SurfaceTexture;

    move-result-object v10

    .local v10, "$r7":Landroid/graphics/SurfaceTexture;, ""
    move/from16 v0, p4

    move/from16 v1, p5

    invoke-virtual {v10, v0, v1}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    new-instance v11, Landroid/view/Surface;

    .local v11, "$r8":Landroid/view/Surface;, ""
    move-object/from16 v0, p3

    invoke-interface {v0}, Lio/flutter/view/r$a;->b()Landroid/graphics/SurfaceTexture;

    move-result-object v10

    invoke-direct {v11, v10}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    const-string v13, "display"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    .local v12, "$r9":Ljava/lang/Object;, ""
    move-object v15, v12

    check-cast v15, Landroid/hardware/display/DisplayManager;

    move-object v14, v15

    .local v14, "$r10":Landroid/hardware/display/DisplayManager;, ""
    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    .local v16, "$r11":Landroid/content/res/Resources;, ""
    move-object/from16 v0, v16

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v17

    .local v17, "$r12":Landroid/util/DisplayMetrics;, ""
    move-object/from16 v0, v17

    .local v0, "$i3":I, ""
    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    move/from16 v18, v0

    .end local v0    # "$i3":I, ""
    .local v18, "$i3":I, ""
    const-string v13, "flutter-vd"

    const/16 v20, 0x0

    move-object v0, v14

    move-object v1, v13

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, v18

    move-object v5, v11

    move/from16 v6, v20

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/display/DisplayManager;->createVirtualDisplay(Ljava/lang/String;IIILandroid/view/Surface;I)Landroid/hardware/display/VirtualDisplay;

    move-result-object v19

    .local v19, "$r13":Landroid/hardware/display/VirtualDisplay;, ""
    if-nez v19, :cond_0

    const/16 v21, 0x0

    return-object v21

    :cond_0
    new-instance v22, Lio/flutter/plugin/platform/q;

    .local v22, "$r6":Lio/flutter/plugin/platform/q;, ""
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, v19

    move-object/from16 v4, p2

    move-object v5, v11

    move-object/from16 v6, p3

    move-object/from16 v7, p8

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lio/flutter/plugin/platform/q;-><init>(Landroid/content/Context;Lio/flutter/plugin/platform/b;Landroid/hardware/display/VirtualDisplay;Lio/flutter/plugin/platform/g;Landroid/view/Surface;Lio/flutter/view/r$a;Landroid/view/View$OnFocusChangeListener;ILjava/lang/Object;)V

    return-object v22
    .end local v12    # "$r9":Ljava/lang/Object;, ""
    .end local v22    # "$r6":Lio/flutter/plugin/platform/q;, ""
    .end local v14    # "$r10":Landroid/hardware/display/DisplayManager;, ""
    .end local v10    # "$r7":Landroid/graphics/SurfaceTexture;, ""
    .end local v18    # "$i3":I, ""
    .end local v16    # "$r11":Landroid/content/res/Resources;, ""
    .end local v17    # "$r12":Landroid/util/DisplayMetrics;, ""
    .end local v19    # "$r13":Landroid/hardware/display/VirtualDisplay;, ""
    .end local v11    # "$r8":Landroid/view/Surface;, ""
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Lio/flutter/plugin/platform/q;->g:Lio/flutter/plugin/platform/SingleViewPresentation;

    .local v0, "$r2":Lio/flutter/plugin/platform/SingleViewPresentation;, ""
    invoke-virtual {v0}, Lio/flutter/plugin/platform/SingleViewPresentation;->getView()Lio/flutter/plugin/platform/f;

    move-result-object v1

    .local v1, "$r1":Lio/flutter/plugin/platform/f;, ""
    iget-object v0, p0, Lio/flutter/plugin/platform/q;->g:Lio/flutter/plugin/platform/SingleViewPresentation;

    invoke-virtual {v0}, Landroid/app/Presentation;->cancel()V

    iget-object v0, p0, Lio/flutter/plugin/platform/q;->g:Lio/flutter/plugin/platform/SingleViewPresentation;

    invoke-virtual {v0}, Lio/flutter/plugin/platform/SingleViewPresentation;->detachState()Lio/flutter/plugin/platform/SingleViewPresentation$e;

    invoke-interface {v1}, Lio/flutter/plugin/platform/f;->b()V

    iget-object v2, p0, Lio/flutter/plugin/platform/q;->f:Landroid/hardware/display/VirtualDisplay;

    .local v2, "$r3":Landroid/hardware/display/VirtualDisplay;, ""
    invoke-virtual {v2}, Landroid/hardware/display/VirtualDisplay;->release()V

    iget-object v3, p0, Lio/flutter/plugin/platform/q;->d:Lio/flutter/view/r$a;

    .local v3, "$r4":Lio/flutter/view/r$a;, ""
    invoke-interface {v3}, Lio/flutter/view/r$a;->a()V

    return-void
    .end local v3    # "$r4":Lio/flutter/view/r$a;, ""
    .end local v0    # "$r2":Lio/flutter/plugin/platform/SingleViewPresentation;, ""
    .end local v1    # "$r1":Lio/flutter/plugin/platform/f;, ""
    .end local v2    # "$r3":Landroid/hardware/display/VirtualDisplay;, ""
.end method

.method public a(IILjava/lang/Runnable;)V
    .locals 27

    move-object/from16 v0, p0

    invoke-virtual {v0}, Lio/flutter/plugin/platform/q;->d()Landroid/view/View;

    move-result-object v7

    .local v7, "$r5":Landroid/view/View;, ""
    invoke-virtual {v7}, Landroid/view/View;->isFocused()Z

    move-result v8

    .local v8, "$z0":Z, ""
    move-object/from16 v0, p0

    .local v9, "$r6":Lio/flutter/plugin/platform/SingleViewPresentation;, ""
    iget-object v9, v0, Lio/flutter/plugin/platform/q;->g:Lio/flutter/plugin/platform/SingleViewPresentation;

    invoke-virtual {v9}, Lio/flutter/plugin/platform/SingleViewPresentation;->detachState()Lio/flutter/plugin/platform/SingleViewPresentation$e;

    move-result-object v10

    .local v10, "$r7":Lio/flutter/plugin/platform/SingleViewPresentation$e;, ""
    move-object/from16 v0, p0

    .local v11, "$r8":Landroid/hardware/display/VirtualDisplay;, ""
    iget-object v11, v0, Lio/flutter/plugin/platform/q;->f:Landroid/hardware/display/VirtualDisplay;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/hardware/display/VirtualDisplay;->setSurface(Landroid/view/Surface;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lio/flutter/plugin/platform/q;->f:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v11}, Landroid/hardware/display/VirtualDisplay;->release()V

    move-object/from16 v0, p0

    .local v13, "$r9":Lio/flutter/view/r$a;, ""
    iget-object v13, v0, Lio/flutter/plugin/platform/q;->d:Lio/flutter/view/r$a;

    invoke-interface {v13}, Lio/flutter/view/r$a;->b()Landroid/graphics/SurfaceTexture;

    move-result-object v14

    .local v14, "$r10":Landroid/graphics/SurfaceTexture;, ""
    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v14, v0, v1}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    move-object/from16 v0, p0

    .local v15, "$r11":Landroid/content/Context;, ""
    iget-object v15, v0, Lio/flutter/plugin/platform/q;->a:Landroid/content/Context;

    const-string v17, "display"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    .local v16, "$r12":Ljava/lang/Object;, ""
    move-object/from16 v19, v16

    check-cast v19, Landroid/hardware/display/DisplayManager;

    move-object/from16 v18, v19

    .local v18, "$r13":Landroid/hardware/display/DisplayManager;, ""
    move-object/from16 v0, p0

    .local v0, "$i2":I, ""
    iget v0, v0, Lio/flutter/plugin/platform/q;->c:I

    move/from16 v20, v0

    .end local v0    # "$i2":I, ""
    .local v20, "$i2":I, ""
    move-object/from16 v0, p0

    .local v0, "$r4":Landroid/view/Surface;, ""
    iget-object v0, v0, Lio/flutter/plugin/platform/q;->h:Landroid/view/Surface;

    move-object/from16 v21, v0

    .end local v0    # "$r4":Landroid/view/Surface;, ""
    .local v21, "$r4":Landroid/view/Surface;, ""
    const-string v17, "flutter-vd"

    const/16 v22, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, v20

    move-object/from16 v5, v21

    move/from16 v6, v22

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/display/DisplayManager;->createVirtualDisplay(Ljava/lang/String;IIILandroid/view/Surface;I)Landroid/hardware/display/VirtualDisplay;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lio/flutter/plugin/platform/q;->f:Landroid/hardware/display/VirtualDisplay;

    move-object/from16 v0, p0

    invoke-virtual {v0}, Lio/flutter/plugin/platform/q;->d()Landroid/view/View;

    move-result-object v7

    new-instance v23, Lio/flutter/plugin/platform/o;

    .local v23, "$r14":Lio/flutter/plugin/platform/o;, ""
    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v7, v2}, Lio/flutter/plugin/platform/o;-><init>(Lio/flutter/plugin/platform/q;Landroid/view/View;Ljava/lang/Runnable;)V

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    new-instance v9, Lio/flutter/plugin/platform/SingleViewPresentation;

    move-object/from16 v0, p0

    iget-object v15, v0, Lio/flutter/plugin/platform/q;->a:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v11, v0, Lio/flutter/plugin/platform/q;->f:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v11}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v24

    .local v24, "$r15":Landroid/view/Display;, ""
    move-object/from16 v0, p0

    .local v0, "$r2":Lio/flutter/plugin/platform/b;, ""
    iget-object v0, v0, Lio/flutter/plugin/platform/q;->b:Lio/flutter/plugin/platform/b;

    move-object/from16 v25, v0

    .end local v0    # "$r2":Lio/flutter/plugin/platform/b;, ""
    .local v25, "$r2":Lio/flutter/plugin/platform/b;, ""
    move-object/from16 v0, p0

    .local v0, "$r3":Landroid/view/View$OnFocusChangeListener;, ""
    iget-object v0, v0, Lio/flutter/plugin/platform/q;->e:Landroid/view/View$OnFocusChangeListener;

    move-object/from16 v26, v0

    .end local v0    # "$r3":Landroid/view/View$OnFocusChangeListener;, ""
    .local v26, "$r3":Landroid/view/View$OnFocusChangeListener;, ""
    move-object v0, v9

    move-object v1, v15

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    move-object v4, v10

    move-object/from16 v5, v26

    move v6, v8

    invoke-direct/range {v0 .. v6}, Lio/flutter/plugin/platform/SingleViewPresentation;-><init>(Landroid/content/Context;Landroid/view/Display;Lio/flutter/plugin/platform/b;Lio/flutter/plugin/platform/SingleViewPresentation$e;Landroid/view/View$OnFocusChangeListener;Z)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lio/flutter/plugin/platform/q;->g:Lio/flutter/plugin/platform/SingleViewPresentation;

    move-object/from16 v0, p0

    iget-object v9, v0, Lio/flutter/plugin/platform/q;->g:Lio/flutter/plugin/platform/SingleViewPresentation;

    invoke-virtual {v9}, Landroid/app/Presentation;->show()V

    return-void
    .end local v14    # "$r10":Landroid/graphics/SurfaceTexture;, ""
    .end local v15    # "$r11":Landroid/content/Context;, ""
    .end local v18    # "$r13":Landroid/hardware/display/DisplayManager;, ""
    .end local v25    # "$r2":Lio/flutter/plugin/platform/b;, ""
    .end local v8    # "$z0":Z, ""
    .end local v9    # "$r6":Lio/flutter/plugin/platform/SingleViewPresentation;, ""
    .end local v24    # "$r15":Landroid/view/Display;, ""
    .end local v21    # "$r4":Landroid/view/Surface;, ""
    .end local v10    # "$r7":Lio/flutter/plugin/platform/SingleViewPresentation$e;, ""
    .end local v16    # "$r12":Ljava/lang/Object;, ""
    .end local v13    # "$r9":Lio/flutter/view/r$a;, ""
    .end local v20    # "$i2":I, ""
    .end local v7    # "$r5":Landroid/view/View;, ""
    .end local v11    # "$r8":Landroid/hardware/display/VirtualDisplay;, ""
    .end local v26    # "$r3":Landroid/view/View$OnFocusChangeListener;, ""
    .end local v23    # "$r14":Lio/flutter/plugin/platform/o;, ""
.end method

.method a(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lio/flutter/plugin/platform/q;->g:Lio/flutter/plugin/platform/SingleViewPresentation;

    .local v0, "$r2":Lio/flutter/plugin/platform/SingleViewPresentation;, ""
    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/flutter/plugin/platform/q;->g:Lio/flutter/plugin/platform/SingleViewPresentation;

    invoke-virtual {v0}, Lio/flutter/plugin/platform/SingleViewPresentation;->getView()Lio/flutter/plugin/platform/f;

    move-result-object v1

    .local v1, "$r3":Lio/flutter/plugin/platform/f;, ""
    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lio/flutter/plugin/platform/q;->g:Lio/flutter/plugin/platform/SingleViewPresentation;

    invoke-virtual {v0}, Lio/flutter/plugin/platform/SingleViewPresentation;->getView()Lio/flutter/plugin/platform/f;

    move-result-object v1

    invoke-interface {v1, p1}, Lio/flutter/plugin/platform/f;->a(Landroid/view/View;)V

    :cond_1
    return-void
    .end local v0    # "$r2":Lio/flutter/plugin/platform/SingleViewPresentation;, ""
    .end local v1    # "$r3":Lio/flutter/plugin/platform/f;, ""
.end method

.method b()V
    .locals 2

    iget-object v0, p0, Lio/flutter/plugin/platform/q;->g:Lio/flutter/plugin/platform/SingleViewPresentation;

    .local v0, "$r1":Lio/flutter/plugin/platform/SingleViewPresentation;, ""
    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/flutter/plugin/platform/q;->g:Lio/flutter/plugin/platform/SingleViewPresentation;

    invoke-virtual {v0}, Lio/flutter/plugin/platform/SingleViewPresentation;->getView()Lio/flutter/plugin/platform/f;

    move-result-object v1

    .local v1, "$r2":Lio/flutter/plugin/platform/f;, ""
    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lio/flutter/plugin/platform/q;->g:Lio/flutter/plugin/platform/SingleViewPresentation;

    invoke-virtual {v0}, Lio/flutter/plugin/platform/SingleViewPresentation;->getView()Lio/flutter/plugin/platform/f;

    move-result-object v1

    invoke-interface {v1}, Lio/flutter/plugin/platform/f;->a()V

    :cond_1
    return-void
    .end local v0    # "$r1":Lio/flutter/plugin/platform/SingleViewPresentation;, ""
    .end local v1    # "$r2":Lio/flutter/plugin/platform/f;, ""
.end method

.method c()V
    .locals 2

    iget-object v0, p0, Lio/flutter/plugin/platform/q;->g:Lio/flutter/plugin/platform/SingleViewPresentation;

    .local v0, "$r1":Lio/flutter/plugin/platform/SingleViewPresentation;, ""
    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/flutter/plugin/platform/q;->g:Lio/flutter/plugin/platform/SingleViewPresentation;

    invoke-virtual {v0}, Lio/flutter/plugin/platform/SingleViewPresentation;->getView()Lio/flutter/plugin/platform/f;

    move-result-object v1

    .local v1, "$r2":Lio/flutter/plugin/platform/f;, ""
    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lio/flutter/plugin/platform/q;->g:Lio/flutter/plugin/platform/SingleViewPresentation;

    invoke-virtual {v0}, Lio/flutter/plugin/platform/SingleViewPresentation;->getView()Lio/flutter/plugin/platform/f;

    move-result-object v1

    invoke-interface {v1}, Lio/flutter/plugin/platform/f;->c()V

    :cond_1
    return-void
    .end local v1    # "$r2":Lio/flutter/plugin/platform/f;, ""
    .end local v0    # "$r1":Lio/flutter/plugin/platform/SingleViewPresentation;, ""
.end method

.method public d()Landroid/view/View;
    .locals 4

    iget-object v0, p0, Lio/flutter/plugin/platform/q;->g:Lio/flutter/plugin/platform/SingleViewPresentation;

    .local v0, "$r1":Lio/flutter/plugin/platform/SingleViewPresentation;, ""
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    iget-object v0, p0, Lio/flutter/plugin/platform/q;->g:Lio/flutter/plugin/platform/SingleViewPresentation;

    invoke-virtual {v0}, Lio/flutter/plugin/platform/SingleViewPresentation;->getView()Lio/flutter/plugin/platform/f;

    move-result-object v2

    .local v2, "$r2":Lio/flutter/plugin/platform/f;, ""
    invoke-interface {v2}, Lio/flutter/plugin/platform/f;->d()Landroid/view/View;

    move-result-object v3

    .local v3, "$r3":Landroid/view/View;, ""
    return-object v3
    .end local v2    # "$r2":Lio/flutter/plugin/platform/f;, ""
    .end local v3    # "$r3":Landroid/view/View;, ""
    .end local v0    # "$r1":Lio/flutter/plugin/platform/SingleViewPresentation;, ""
.end method
