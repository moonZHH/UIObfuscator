.class public Lio/flutter/view/p;
.super Landroid/view/SurfaceView;
.source ""

# interfaces
.implements Lb/a/b/a/e;
.implements Lio/flutter/view/r;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/view/n;,
        Lio/flutter/view/o;,
        Lio/flutter/view/p$e;,
        Lio/flutter/view/p$d;,
        Lio/flutter/view/p$c;,
        Lio/flutter/view/p$b;,
        Lio/flutter/view/p$a;,
        Lio/flutter/view/m;
    }
.end annotation


# instance fields
.field private final a:Lio/flutter/embedding/engine/a/b;

.field private final b:Lio/flutter/embedding/engine/d/c;

.field private final c:Lio/flutter/embedding/engine/e/f;

.field private final d:Lio/flutter/embedding/engine/e/c;

.field private final e:Lio/flutter/embedding/engine/e/d;

.field private final f:Lio/flutter/embedding/engine/e/e;

.field private final g:Lio/flutter/embedding/engine/e/i;

.field private final h:Lio/flutter/embedding/engine/e/m;

.field private final i:Lio/flutter/embedding/engine/e/n;

.field private final j:Landroid/view/inputmethod/InputMethodManager;

.field private final k:Lb/a/b/b/c;

.field private final l:Lb/a/a/a/a;

.field private final m:Lb/a/a/a/b;

.field private n:Lio/flutter/view/g;

.field private final o:Landroid/view/SurfaceHolder$Callback;

.field private final p:Lio/flutter/view/p$d;

.field private final q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lb/a/b/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private final r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/flutter/view/p$a;",
            ">;"
        }
    .end annotation
.end field

.field private final s:Ljava/util/concurrent/atomic/AtomicLong;

.field private t:Lio/flutter/view/k;

.field private u:Z

.field private v:Z

.field private final w:Lio/flutter/view/g$e;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lio/flutter/view/k;)V
    .locals 42

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v3, Ljava/util/concurrent/atomic/AtomicLong;

    .local v3, "$r4":Ljava/util/concurrent/atomic/AtomicLong;, ""
    const-wide/16 v4, 0x0

    invoke-direct {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lio/flutter/view/p;->s:Ljava/util/concurrent/atomic/AtomicLong;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lio/flutter/view/p;->u:Z

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lio/flutter/view/p;->v:Z

    new-instance v7, Lio/flutter/view/m;

    .local v7, "$r5":Lio/flutter/view/m;, ""
    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lio/flutter/view/m;-><init>(Lio/flutter/view/p;)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lio/flutter/view/p;->w:Lio/flutter/view/g$e;

    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object v8

    .local v8, "$r6":Landroid/content/Context;, ""
    invoke-static {v8}, Lio/flutter/view/p;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v9

    .local v9, "$r7":Landroid/app/Activity;, ""
    if-eqz v9, :cond_1

    if-nez p3, :cond_0

    new-instance p3, Lio/flutter/view/k;

    .local p3, "$r3":Lio/flutter/view/k;, ""
    invoke-virtual {v9}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    move-object/from16 v0, p3

    invoke-direct {v0, v8}, Lio/flutter/view/k;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lio/flutter/view/p;->t:Lio/flutter/view/k;

    goto :goto_0

    :cond_0
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lio/flutter/view/p;->t:Lio/flutter/view/k;

    :goto_0
    move-object/from16 v0, p0

    .end local p3    # "$r3":Lio/flutter/view/k;, ""
    .local v0, "$r3":Lio/flutter/view/k;, ""
    iget-object v0, v0, Lio/flutter/view/p;->t:Lio/flutter/view/k;

    move-object/from16 p3, v0

    .end local v0    # "$r3":Lio/flutter/view/k;, ""
    .local p3, "$r3":Lio/flutter/view/k;, ""
    invoke-virtual {v0}, Lio/flutter/view/k;->c()Lio/flutter/embedding/engine/a/b;

    move-result-object v10

    .local v10, "$r8":Lio/flutter/embedding/engine/a/b;, ""
    move-object/from16 v0, p0

    iput-object v10, v0, Lio/flutter/view/p;->a:Lio/flutter/embedding/engine/a/b;

    new-instance v11, Lio/flutter/embedding/engine/d/c;

    .local v11, "$r9":Lio/flutter/embedding/engine/d/c;, ""
    move-object/from16 v0, p0

    .end local p3    # "$r3":Lio/flutter/view/k;, ""
    .local v0, "$r3":Lio/flutter/view/k;, ""
    iget-object v0, v0, Lio/flutter/view/p;->t:Lio/flutter/view/k;

    move-object/from16 p3, v0

    .end local v0    # "$r3":Lio/flutter/view/k;, ""
    .local p3, "$r3":Lio/flutter/view/k;, ""
    invoke-virtual {v0}, Lio/flutter/view/k;->h()Lio/flutter/embedding/engine/FlutterJNI;

    move-result-object v12

    .local v12, "$r10":Lio/flutter/embedding/engine/FlutterJNI;, ""
    invoke-direct {v11, v12}, Lio/flutter/embedding/engine/d/c;-><init>(Lio/flutter/embedding/engine/FlutterJNI;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lio/flutter/view/p;->b:Lio/flutter/embedding/engine/d/c;

    move-object/from16 v0, p0

    .end local p3    # "$r3":Lio/flutter/view/k;, ""
    .local v0, "$r3":Lio/flutter/view/k;, ""
    iget-object v0, v0, Lio/flutter/view/p;->t:Lio/flutter/view/k;

    move-object/from16 p3, v0

    .end local v0    # "$r3":Lio/flutter/view/k;, ""
    .local p3, "$r3":Lio/flutter/view/k;, ""
    invoke-virtual {v0}, Lio/flutter/view/k;->h()Lio/flutter/embedding/engine/FlutterJNI;

    move-result-object v12

    invoke-virtual {v12}, Lio/flutter/embedding/engine/FlutterJNI;->nativeGetIsSoftwareRenderingEnabled()Z

    move-result v13

    .local v13, "$z0":Z, ""
    move-object/from16 v0, p0

    iput-boolean v13, v0, Lio/flutter/view/p;->u:Z

    new-instance v14, Lio/flutter/view/p$d;

    .local v14, "$r11":Lio/flutter/view/p$d;, ""
    invoke-direct {v14}, Lio/flutter/view/p$d;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lio/flutter/view/p;->p:Lio/flutter/view/p$d;

    move-object/from16 v0, p0

    iget-object v14, v0, Lio/flutter/view/p;->p:Lio/flutter/view/p$d;

    move-object/from16 v0, p1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    .local v15, "$r12":Landroid/content/res/Resources;, ""
    invoke-virtual {v15}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v16

    .local v16, "$r13":Landroid/util/DisplayMetrics;, ""
    move-object/from16 v0, v16

    .local v0, "$f0":F, ""
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v17, v0

    .end local v0    # "$f0":F, ""
    .local v17, "$f0":F, ""
    iput v0, v14, Lio/flutter/view/p$d;->a:F

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/view/SurfaceView;->setFocusable(Z)V

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/view/SurfaceView;->setFocusableInTouchMode(Z)V

    move-object/from16 v0, p0

    .end local p3    # "$r3":Lio/flutter/view/k;, ""
    .local v0, "$r3":Lio/flutter/view/k;, ""
    iget-object v0, v0, Lio/flutter/view/p;->t:Lio/flutter/view/k;

    move-object/from16 p3, v0

    .end local v0    # "$r3":Lio/flutter/view/k;, ""
    .local p3, "$r3":Lio/flutter/view/k;, ""
    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v9}, Lio/flutter/view/k;->a(Lio/flutter/view/p;Landroid/app/Activity;)V

    new-instance v18, Lio/flutter/view/n;

    .local v18, "$r14":Lio/flutter/view/n;, ""
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lio/flutter/view/n;-><init>(Lio/flutter/view/p;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lio/flutter/view/p;->o:Landroid/view/SurfaceHolder$Callback;

    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v19

    .local v19, "$r15":Landroid/view/SurfaceHolder;, ""
    move-object/from16 v0, p0

    .local v0, "$r16":Landroid/view/SurfaceHolder$Callback;, ""
    iget-object v0, v0, Lio/flutter/view/p;->o:Landroid/view/SurfaceHolder$Callback;

    move-object/from16 v20, v0

    .end local v0    # "$r16":Landroid/view/SurfaceHolder$Callback;, ""
    .local v20, "$r16":Landroid/view/SurfaceHolder$Callback;, ""
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    new-instance v21, Ljava/util/ArrayList;

    .local v21, "$r17":Ljava/util/ArrayList;, ""
    move-object/from16 v0, v21

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lio/flutter/view/p;->q:Ljava/util/List;

    new-instance v21, Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lio/flutter/view/p;->r:Ljava/util/List;

    new-instance v22, Lio/flutter/embedding/engine/e/f;

    .local v22, "$r18":Lio/flutter/embedding/engine/e/f;, ""
    move-object/from16 v0, p0

    iget-object v10, v0, Lio/flutter/view/p;->a:Lio/flutter/embedding/engine/a/b;

    move-object/from16 v0, v22

    invoke-direct {v0, v10}, Lio/flutter/embedding/engine/e/f;-><init>(Lio/flutter/embedding/engine/a/b;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lio/flutter/view/p;->c:Lio/flutter/embedding/engine/e/f;

    new-instance v23, Lio/flutter/embedding/engine/e/c;

    .local v23, "$r19":Lio/flutter/embedding/engine/e/c;, ""
    move-object/from16 v0, p0

    iget-object v10, v0, Lio/flutter/view/p;->a:Lio/flutter/embedding/engine/a/b;

    move-object/from16 v0, v23

    invoke-direct {v0, v10}, Lio/flutter/embedding/engine/e/c;-><init>(Lio/flutter/embedding/engine/a/b;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lio/flutter/view/p;->d:Lio/flutter/embedding/engine/e/c;

    new-instance v24, Lio/flutter/embedding/engine/e/d;

    .local v24, "$r20":Lio/flutter/embedding/engine/e/d;, ""
    move-object/from16 v0, p0

    iget-object v10, v0, Lio/flutter/view/p;->a:Lio/flutter/embedding/engine/a/b;

    move-object/from16 v0, v24

    invoke-direct {v0, v10}, Lio/flutter/embedding/engine/e/d;-><init>(Lio/flutter/embedding/engine/a/b;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lio/flutter/view/p;->e:Lio/flutter/embedding/engine/e/d;

    new-instance v25, Lio/flutter/embedding/engine/e/e;

    .local v25, "$r21":Lio/flutter/embedding/engine/e/e;, ""
    move-object/from16 v0, p0

    iget-object v10, v0, Lio/flutter/view/p;->a:Lio/flutter/embedding/engine/a/b;

    move-object/from16 v0, v25

    invoke-direct {v0, v10}, Lio/flutter/embedding/engine/e/e;-><init>(Lio/flutter/embedding/engine/a/b;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lio/flutter/view/p;->f:Lio/flutter/embedding/engine/e/e;

    new-instance v26, Lio/flutter/embedding/engine/e/i;

    .local v26, "$r22":Lio/flutter/embedding/engine/e/i;, ""
    move-object/from16 v0, p0

    iget-object v10, v0, Lio/flutter/view/p;->a:Lio/flutter/embedding/engine/a/b;

    move-object/from16 v0, v26

    invoke-direct {v0, v10}, Lio/flutter/embedding/engine/e/i;-><init>(Lio/flutter/embedding/engine/a/b;)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lio/flutter/view/p;->g:Lio/flutter/embedding/engine/e/i;

    new-instance v27, Lio/flutter/embedding/engine/e/n;

    .local v27, "$r23":Lio/flutter/embedding/engine/e/n;, ""
    move-object/from16 v0, p0

    iget-object v10, v0, Lio/flutter/view/p;->a:Lio/flutter/embedding/engine/a/b;

    move-object/from16 v0, v27

    invoke-direct {v0, v10}, Lio/flutter/embedding/engine/e/n;-><init>(Lio/flutter/embedding/engine/a/b;)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lio/flutter/view/p;->i:Lio/flutter/embedding/engine/e/n;

    new-instance v28, Lio/flutter/embedding/engine/e/m;

    .local v28, "$r24":Lio/flutter/embedding/engine/e/m;, ""
    move-object/from16 v0, p0

    iget-object v10, v0, Lio/flutter/view/p;->a:Lio/flutter/embedding/engine/a/b;

    move-object/from16 v0, v28

    invoke-direct {v0, v10}, Lio/flutter/embedding/engine/e/m;-><init>(Lio/flutter/embedding/engine/a/b;)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lio/flutter/view/p;->h:Lio/flutter/embedding/engine/e/m;

    new-instance v29, Lio/flutter/plugin/platform/e;

    .local v29, "$r25":Lio/flutter/plugin/platform/e;, ""
    move-object/from16 v0, p0

    .end local v26    # "$r22":Lio/flutter/embedding/engine/e/i;, ""
    .local v0, "$r22":Lio/flutter/embedding/engine/e/i;, ""
    iget-object v0, v0, Lio/flutter/view/p;->g:Lio/flutter/embedding/engine/e/i;

    move-object/from16 v26, v0

    .end local v0    # "$r22":Lio/flutter/embedding/engine/e/i;, ""
    .local v26, "$r22":Lio/flutter/embedding/engine/e/i;, ""
    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-direct {v0, v9, v1}, Lio/flutter/plugin/platform/e;-><init>(Landroid/app/Activity;Lio/flutter/embedding/engine/e/i;)V

    new-instance v30, Lio/flutter/view/o;

    .local v30, "$r26":Lio/flutter/view/o;, ""
    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lio/flutter/view/o;-><init>(Lio/flutter/view/p;Lio/flutter/plugin/platform/e;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lio/flutter/view/p;->a(Lb/a/b/a/a;)V

    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object p1

    .local p1, "$r1":Landroid/content/Context;, ""
    const-string v32, "input_method"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v31

    .local v31, "$r27":Ljava/lang/Object;, ""
    move-object/from16 v34, v31

    check-cast v34, Landroid/view/inputmethod/InputMethodManager;

    move-object/from16 v33, v34

    .local v33, "$r28":Landroid/view/inputmethod/InputMethodManager;, ""
    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lio/flutter/view/p;->j:Landroid/view/inputmethod/InputMethodManager;

    move-object/from16 v0, p0

    .end local p3    # "$r3":Lio/flutter/view/k;, ""
    .local v0, "$r3":Lio/flutter/view/k;, ""
    iget-object v0, v0, Lio/flutter/view/p;->t:Lio/flutter/view/k;

    move-object/from16 p3, v0

    .end local v0    # "$r3":Lio/flutter/view/k;, ""
    .local p3, "$r3":Lio/flutter/view/k;, ""
    invoke-virtual {v0}, Lio/flutter/view/k;->d()Lio/flutter/app/f;

    move-result-object v35

    .local v35, "$r29":Lio/flutter/app/f;, ""
    move-object/from16 v0, v35

    invoke-virtual {v0}, Lio/flutter/app/f;->c()Lio/flutter/plugin/platform/m;

    move-result-object v36

    .local v36, "$r30":Lio/flutter/plugin/platform/m;, ""
    new-instance v37, Lb/a/b/b/c;

    .local v37, "$r31":Lb/a/b/b/c;, ""
    move-object/from16 v0, p0

    iget-object v10, v0, Lio/flutter/view/p;->a:Lio/flutter/embedding/engine/a/b;

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v10, v2}, Lb/a/b/b/c;-><init>(Landroid/view/View;Lio/flutter/embedding/engine/a/b;Lio/flutter/plugin/platform/m;)V

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lio/flutter/view/p;->k:Lb/a/b/b/c;

    new-instance v38, Lb/a/a/a/a;

    .local v38, "$r32":Lb/a/a/a/a;, ""
    move-object/from16 v0, p0

    .end local v23    # "$r19":Lio/flutter/embedding/engine/e/c;, ""
    .local v0, "$r19":Lio/flutter/embedding/engine/e/c;, ""
    iget-object v0, v0, Lio/flutter/view/p;->d:Lio/flutter/embedding/engine/e/c;

    move-object/from16 v23, v0

    .end local v0    # "$r19":Lio/flutter/embedding/engine/e/c;, ""
    .local v23, "$r19":Lio/flutter/embedding/engine/e/c;, ""
    move-object/from16 v0, p0

    .end local v37    # "$r31":Lb/a/b/b/c;, ""
    .local v0, "$r31":Lb/a/b/b/c;, ""
    iget-object v0, v0, Lio/flutter/view/p;->k:Lb/a/b/b/c;

    move-object/from16 v37, v0

    .end local v0    # "$r31":Lb/a/b/b/c;, ""
    .local v37, "$r31":Lb/a/b/b/c;, ""
    move-object/from16 v0, v38

    move-object/from16 v1, v23

    move-object/from16 v2, v37

    invoke-direct {v0, v1, v2}, Lb/a/a/a/a;-><init>(Lio/flutter/embedding/engine/e/c;Lb/a/b/b/c;)V

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lio/flutter/view/p;->l:Lb/a/a/a/a;

    new-instance v39, Lb/a/a/a/b;

    .local v39, "$r33":Lb/a/a/a/b;, ""
    move-object/from16 v0, p0

    iget-object v11, v0, Lio/flutter/view/p;->b:Lio/flutter/embedding/engine/d/c;

    move-object/from16 v0, v39

    invoke-direct {v0, v11}, Lb/a/a/a/b;-><init>(Lio/flutter/embedding/engine/d/c;)V

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    iput-object v0, v1, Lio/flutter/view/p;->m:Lb/a/a/a/b;

    move-object/from16 v0, p0

    .end local p3    # "$r3":Lio/flutter/view/k;, ""
    .local v0, "$r3":Lio/flutter/view/k;, ""
    iget-object v0, v0, Lio/flutter/view/p;->t:Lio/flutter/view/k;

    move-object/from16 p3, v0

    .end local v0    # "$r3":Lio/flutter/view/k;, ""
    .local p3, "$r3":Lio/flutter/view/k;, ""
    invoke-virtual {v0}, Lio/flutter/view/k;->d()Lio/flutter/app/f;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0}, Lio/flutter/app/f;->c()Lio/flutter/plugin/platform/m;

    move-result-object v36

    move-object/from16 v0, p0

    .end local v37    # "$r31":Lb/a/b/b/c;, ""
    .local v0, "$r31":Lb/a/b/b/c;, ""
    iget-object v0, v0, Lio/flutter/view/p;->k:Lb/a/b/b/c;

    move-object/from16 v37, v0

    .end local v0    # "$r31":Lb/a/b/b/c;, ""
    .local v37, "$r31":Lb/a/b/b/c;, ""
    move-object/from16 v0, v36

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lio/flutter/plugin/platform/m;->a(Lb/a/b/b/c;)V

    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v40

    .local v40, "$r34":Landroid/content/res/Configuration;, ""
    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lio/flutter/view/p;->a(Landroid/content/res/Configuration;)V

    move-object/from16 v0, p0

    invoke-direct {v0}, Lio/flutter/view/p;->n()V

    return-void

    :cond_1
    new-instance v41, Ljava/lang/IllegalArgumentException;

    .local v41, "$r35":Ljava/lang/IllegalArgumentException;, ""
    const-string v32, "Bad context"

    move-object/from16 v0, v41

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v41
    .end local v8    # "$r6":Landroid/content/Context;, ""
    .end local v9    # "$r7":Landroid/app/Activity;, ""
    .end local v27    # "$r23":Lio/flutter/embedding/engine/e/n;, ""
    .end local v7    # "$r5":Lio/flutter/view/m;, ""
    .end local v12    # "$r10":Lio/flutter/embedding/engine/FlutterJNI;, ""
    .end local v26    # "$r22":Lio/flutter/embedding/engine/e/i;, ""
    .end local v10    # "$r8":Lio/flutter/embedding/engine/a/b;, ""
    .end local v19    # "$r15":Landroid/view/SurfaceHolder;, ""
    .end local v40    # "$r34":Landroid/content/res/Configuration;, ""
    .end local p3    # "$r3":Lio/flutter/view/k;, ""
    .end local v33    # "$r28":Landroid/view/inputmethod/InputMethodManager;, ""
    .end local v20    # "$r16":Landroid/view/SurfaceHolder$Callback;, ""
    .end local v17    # "$f0":F, ""
    .end local v39    # "$r33":Lb/a/a/a/b;, ""
    .end local v21    # "$r17":Ljava/util/ArrayList;, ""
    .end local v15    # "$r12":Landroid/content/res/Resources;, ""
    .end local v24    # "$r20":Lio/flutter/embedding/engine/e/d;, ""
    .end local v22    # "$r18":Lio/flutter/embedding/engine/e/f;, ""
    .end local v11    # "$r9":Lio/flutter/embedding/engine/d/c;, ""
    .end local v38    # "$r32":Lb/a/a/a/a;, ""
    .end local v16    # "$r13":Landroid/util/DisplayMetrics;, ""
    .end local v14    # "$r11":Lio/flutter/view/p$d;, ""
    .end local v29    # "$r25":Lio/flutter/plugin/platform/e;, ""
    .end local v35    # "$r29":Lio/flutter/app/f;, ""
    .end local v25    # "$r21":Lio/flutter/embedding/engine/e/e;, ""
    .end local v31    # "$r27":Ljava/lang/Object;, ""
    .end local v3    # "$r4":Ljava/util/concurrent/atomic/AtomicLong;, ""
    .end local v37    # "$r31":Lb/a/b/b/c;, ""
    .end local v23    # "$r19":Lio/flutter/embedding/engine/e/c;, ""
    .end local v18    # "$r14":Lio/flutter/view/n;, ""
    .end local v13    # "$z0":Z, ""
    .end local p1    # "$r1":Landroid/content/Context;, ""
    .end local v41    # "$r35":Ljava/lang/IllegalArgumentException;, ""
    .end local v28    # "$r24":Lio/flutter/embedding/engine/e/m;, ""
    .end local v30    # "$r26":Lio/flutter/view/o;, ""
    .end local v36    # "$r30":Lio/flutter/plugin/platform/m;, ""
.end method

.method private static a(Landroid/content/Context;)Landroid/app/Activity;
    .locals 6

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    instance-of v1, p0, Landroid/app/Activity;

    .local v1, "$z0":Z, ""
    if-eqz v1, :cond_1

    move-object v3, p0

    check-cast v3, Landroid/app/Activity;

    move-object v2, v3

    .local v2, "$r1":Landroid/app/Activity;, ""
    return-object v2

    :cond_1
    instance-of v1, p0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_2

    move-object v5, p0

    check-cast v5, Landroid/content/ContextWrapper;

    move-object v4, v5

    .local v4, "$r2":Landroid/content/ContextWrapper;, ""
    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    .local p0, "$r0":Landroid/content/Context;, ""
    invoke-static {p0}, Lio/flutter/view/p;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v2

    return-object v2

    :cond_2
    const/4 v0, 0x0

    return-object v0
    .end local v4    # "$r2":Landroid/content/ContextWrapper;, ""
    .end local v1    # "$z0":Z, ""
    .end local p0    # "$r0":Landroid/content/Context;, ""
    .end local v2    # "$r1":Landroid/app/Activity;, ""
.end method

.method static synthetic a(Lio/flutter/view/p;)Lio/flutter/view/k;
    .locals 1

    iget-object v0, p0, Lio/flutter/view/p;->t:Lio/flutter/view/k;

    .local v0, "r1":Lio/flutter/view/k;, ""
    return-object v0
    .end local v0    # "r1":Lio/flutter/view/k;, ""
.end method

.method private a(Landroid/content/res/Configuration;)V
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    .local v0, "$r1":Ljava/util/ArrayList;, ""
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .local v1, "$i0":I, ""
    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v3

    .local v3, "$r3":Landroid/os/LocaleList;, ""
    invoke-virtual {v3}, Landroid/os/LocaleList;->size()I

    move-result v1

    const/4 v4, 0x0

    .local v4, "$i1":I, ""
    :goto_0
    if-ge v4, v1, :cond_1

    invoke-virtual {v3, v4}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v5

    .local v5, "$r4":Ljava/util/Locale;, ""
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-object v5, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v6, p0, Lio/flutter/view/p;->f:Lio/flutter/embedding/engine/e/e;

    .local v6, "$r5":Lio/flutter/embedding/engine/e/e;, ""
    invoke-virtual {v6, v0}, Lio/flutter/embedding/engine/e/e;->a(Ljava/util/List;)V

    return-void
    .end local v4    # "$i1":I, ""
    .end local v0    # "$r1":Ljava/util/ArrayList;, ""
    .end local v3    # "$r3":Landroid/os/LocaleList;, ""
    .end local v1    # "$i0":I, ""
    .end local v6    # "$r5":Lio/flutter/embedding/engine/e/e;, ""
    .end local v5    # "$r4":Ljava/util/Locale;, ""
.end method

.method static synthetic a(Lio/flutter/view/p;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/flutter/view/p;->a(ZZ)V

    return-void
.end method

.method private a(ZZ)V
    .locals 3

    iget-boolean v0, p0, Lio/flutter/view/p;->u:Z

    .local v0, "$z2":Z, ""
    const/4 v1, 0x0

    .local v1, "$z3":Z, ""
    if-nez v0, :cond_1

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {p0, v1}, Landroid/view/SurfaceView;->setWillNotDraw(Z)V

    return-void

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/view/SurfaceView;->setWillNotDraw(Z)V

    return-void
    .end local v0    # "$z2":Z, ""
    .end local v1    # "$z3":Z, ""
.end method

.method private n()V
    .locals 10

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .local v0, "$r1":Landroid/content/res/Resources;, ""
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .local v1, "$r2":Landroid/content/res/Configuration;, ""
    iget v2, v1, Landroid/content/res/Configuration;->uiMode:I

    .local v2, "$i0":I, ""
    and-int/lit8 v2, v2, 0x30

    const/16 v3, 0x20

    if-ne v2, v3, :cond_0

    const/4 v4, 0x1

    .local v4, "$z0":Z, ""
    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_1

    sget-object v5, Lio/flutter/embedding/engine/e/m$b;->b:Lio/flutter/embedding/engine/e/m$b;

    .local v5, "$r3":Lio/flutter/embedding/engine/e/m$b;, ""
    goto :goto_1

    :cond_1
    sget-object v5, Lio/flutter/embedding/engine/e/m$b;->a:Lio/flutter/embedding/engine/e/m$b;

    :goto_1
    iget-object v6, p0, Lio/flutter/view/p;->h:Lio/flutter/embedding/engine/e/m;

    .local v6, "$r4":Lio/flutter/embedding/engine/e/m;, ""
    invoke-virtual {v6}, Lio/flutter/embedding/engine/e/m;->a()Lio/flutter/embedding/engine/e/m$a;

    move-result-object v7

    .local v7, "$r5":Lio/flutter/embedding/engine/e/m$a;, ""
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v8, v1, Landroid/content/res/Configuration;->fontScale:F

    .local v8, "$f0":F, ""
    invoke-virtual {v7, v8}, Lio/flutter/embedding/engine/e/m$a;->a(F)Lio/flutter/embedding/engine/e/m$a;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object v9

    .local v9, "$r6":Landroid/content/Context;, ""
    invoke-static {v9}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v4

    invoke-virtual {v7, v4}, Lio/flutter/embedding/engine/e/m$a;->a(Z)Lio/flutter/embedding/engine/e/m$a;

    invoke-virtual {v7, v5}, Lio/flutter/embedding/engine/e/m$a;->a(Lio/flutter/embedding/engine/e/m$b;)Lio/flutter/embedding/engine/e/m$a;

    invoke-virtual {v7}, Lio/flutter/embedding/engine/e/m$a;->a()V

    return-void
    .end local v0    # "$r1":Landroid/content/res/Resources;, ""
    .end local v5    # "$r3":Lio/flutter/embedding/engine/e/m$b;, ""
    .end local v7    # "$r5":Lio/flutter/embedding/engine/e/m$a;, ""
    .end local v8    # "$f0":F, ""
    .end local v9    # "$r6":Landroid/content/Context;, ""
    .end local v1    # "$r2":Landroid/content/res/Configuration;, ""
    .end local v2    # "$i0":I, ""
    .end local v6    # "$r4":Lio/flutter/embedding/engine/e/m;, ""
    .end local v4    # "$z0":Z, ""
.end method

.method private o()Z
    .locals 3

    iget-object v0, p0, Lio/flutter/view/p;->t:Lio/flutter/view/k;

    .local v0, "$r1":Lio/flutter/view/k;, ""
    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/flutter/view/p;->t:Lio/flutter/view/k;

    invoke-virtual {v0}, Lio/flutter/view/k;->e()Z

    move-result v1

    .local v1, "$z0":Z, ""
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    const/4 v2, 0x0

    return v2
    .end local v0    # "$r1":Lio/flutter/view/k;, ""
    .end local v1    # "$z0":Z, ""
.end method

.method private p()V
    .locals 0

    invoke-virtual {p0}, Lio/flutter/view/p;->l()V

    return-void
.end method

.method private q()V
    .locals 0

    return-void
.end method

.method private r()V
    .locals 35

    move-object/from16 v0, p0

    invoke-direct {v0}, Lio/flutter/view/p;->o()Z

    move-result v16

    .local v16, "$z0":Z, ""
    if-nez v16, :cond_0

    return-void

    :cond_0
    move-object/from16 v0, p0

    .local v0, "$r1":Lio/flutter/view/k;, ""
    iget-object v0, v0, Lio/flutter/view/p;->t:Lio/flutter/view/k;

    move-object/from16 v17, v0

    .end local v0    # "$r1":Lio/flutter/view/k;, ""
    .local v17, "$r1":Lio/flutter/view/k;, ""
    invoke-virtual {v0}, Lio/flutter/view/k;->h()Lio/flutter/embedding/engine/FlutterJNI;

    move-result-object v18

    .local v18, "$r2":Lio/flutter/embedding/engine/FlutterJNI;, ""
    move-object/from16 v0, p0

    .local v0, "$r3":Lio/flutter/view/p$d;, ""
    iget-object v0, v0, Lio/flutter/view/p;->p:Lio/flutter/view/p$d;

    move-object/from16 v19, v0

    .end local v0    # "$r3":Lio/flutter/view/p$d;, ""
    .local v19, "$r3":Lio/flutter/view/p$d;, ""
    iget v0, v0, Lio/flutter/view/p$d;->a:F

    .local v0, "$f0":F, ""
    move/from16 v20, v0

    .end local v0    # "$f0":F, ""
    .local v20, "$f0":F, ""
    move-object/from16 v0, p0

    .end local v19    # "$r3":Lio/flutter/view/p$d;, ""
    .local v0, "$r3":Lio/flutter/view/p$d;, ""
    iget-object v0, v0, Lio/flutter/view/p;->p:Lio/flutter/view/p$d;

    move-object/from16 v19, v0

    .end local v0    # "$r3":Lio/flutter/view/p$d;, ""
    .local v19, "$r3":Lio/flutter/view/p$d;, ""
    iget v0, v0, Lio/flutter/view/p$d;->b:I

    .local v0, "$i0":I, ""
    move/from16 v21, v0

    .end local v0    # "$i0":I, ""
    .local v21, "$i0":I, ""
    move-object/from16 v0, p0

    .end local v19    # "$r3":Lio/flutter/view/p$d;, ""
    .local v0, "$r3":Lio/flutter/view/p$d;, ""
    iget-object v0, v0, Lio/flutter/view/p;->p:Lio/flutter/view/p$d;

    move-object/from16 v19, v0

    .end local v0    # "$r3":Lio/flutter/view/p$d;, ""
    .local v19, "$r3":Lio/flutter/view/p$d;, ""
    iget v0, v0, Lio/flutter/view/p$d;->c:I

    .local v0, "$i1":I, ""
    move/from16 v22, v0

    .end local v0    # "$i1":I, ""
    .local v22, "$i1":I, ""
    move-object/from16 v0, p0

    .end local v19    # "$r3":Lio/flutter/view/p$d;, ""
    .local v0, "$r3":Lio/flutter/view/p$d;, ""
    iget-object v0, v0, Lio/flutter/view/p;->p:Lio/flutter/view/p$d;

    move-object/from16 v19, v0

    .end local v0    # "$r3":Lio/flutter/view/p$d;, ""
    .local v19, "$r3":Lio/flutter/view/p$d;, ""
    iget v0, v0, Lio/flutter/view/p$d;->d:I

    .local v0, "$i2":I, ""
    move/from16 v23, v0

    .end local v0    # "$i2":I, ""
    .local v23, "$i2":I, ""
    move-object/from16 v0, p0

    .end local v19    # "$r3":Lio/flutter/view/p$d;, ""
    .local v0, "$r3":Lio/flutter/view/p$d;, ""
    iget-object v0, v0, Lio/flutter/view/p;->p:Lio/flutter/view/p$d;

    move-object/from16 v19, v0

    .end local v0    # "$r3":Lio/flutter/view/p$d;, ""
    .local v19, "$r3":Lio/flutter/view/p$d;, ""
    iget v0, v0, Lio/flutter/view/p$d;->e:I

    .local v0, "$i3":I, ""
    move/from16 v24, v0

    .end local v0    # "$i3":I, ""
    .local v24, "$i3":I, ""
    move-object/from16 v0, p0

    .end local v19    # "$r3":Lio/flutter/view/p$d;, ""
    .local v0, "$r3":Lio/flutter/view/p$d;, ""
    iget-object v0, v0, Lio/flutter/view/p;->p:Lio/flutter/view/p$d;

    move-object/from16 v19, v0

    .end local v0    # "$r3":Lio/flutter/view/p$d;, ""
    .local v19, "$r3":Lio/flutter/view/p$d;, ""
    iget v0, v0, Lio/flutter/view/p$d;->f:I

    .local v0, "$i4":I, ""
    move/from16 v25, v0

    .end local v0    # "$i4":I, ""
    .local v25, "$i4":I, ""
    move-object/from16 v0, p0

    .end local v19    # "$r3":Lio/flutter/view/p$d;, ""
    .local v0, "$r3":Lio/flutter/view/p$d;, ""
    iget-object v0, v0, Lio/flutter/view/p;->p:Lio/flutter/view/p$d;

    move-object/from16 v19, v0

    .end local v0    # "$r3":Lio/flutter/view/p$d;, ""
    .local v19, "$r3":Lio/flutter/view/p$d;, ""
    iget v0, v0, Lio/flutter/view/p$d;->g:I

    .local v0, "$i5":I, ""
    move/from16 v26, v0

    .end local v0    # "$i5":I, ""
    .local v26, "$i5":I, ""
    move-object/from16 v0, p0

    .end local v19    # "$r3":Lio/flutter/view/p$d;, ""
    .local v0, "$r3":Lio/flutter/view/p$d;, ""
    iget-object v0, v0, Lio/flutter/view/p;->p:Lio/flutter/view/p$d;

    move-object/from16 v19, v0

    .end local v0    # "$r3":Lio/flutter/view/p$d;, ""
    .local v19, "$r3":Lio/flutter/view/p$d;, ""
    iget v0, v0, Lio/flutter/view/p$d;->h:I

    .local v0, "$i6":I, ""
    move/from16 v27, v0

    .end local v0    # "$i6":I, ""
    .local v27, "$i6":I, ""
    move-object/from16 v0, p0

    .end local v19    # "$r3":Lio/flutter/view/p$d;, ""
    .local v0, "$r3":Lio/flutter/view/p$d;, ""
    iget-object v0, v0, Lio/flutter/view/p;->p:Lio/flutter/view/p$d;

    move-object/from16 v19, v0

    .end local v0    # "$r3":Lio/flutter/view/p$d;, ""
    .local v19, "$r3":Lio/flutter/view/p$d;, ""
    iget v0, v0, Lio/flutter/view/p$d;->i:I

    .local v0, "$i7":I, ""
    move/from16 v28, v0

    .end local v0    # "$i7":I, ""
    .local v28, "$i7":I, ""
    move-object/from16 v0, p0

    .end local v19    # "$r3":Lio/flutter/view/p$d;, ""
    .local v0, "$r3":Lio/flutter/view/p$d;, ""
    iget-object v0, v0, Lio/flutter/view/p;->p:Lio/flutter/view/p$d;

    move-object/from16 v19, v0

    .end local v0    # "$r3":Lio/flutter/view/p$d;, ""
    .local v19, "$r3":Lio/flutter/view/p$d;, ""
    iget v0, v0, Lio/flutter/view/p$d;->j:I

    .local v0, "$i8":I, ""
    move/from16 v29, v0

    .end local v0    # "$i8":I, ""
    .local v29, "$i8":I, ""
    move-object/from16 v0, p0

    .end local v19    # "$r3":Lio/flutter/view/p$d;, ""
    .local v0, "$r3":Lio/flutter/view/p$d;, ""
    iget-object v0, v0, Lio/flutter/view/p;->p:Lio/flutter/view/p$d;

    move-object/from16 v19, v0

    .end local v0    # "$r3":Lio/flutter/view/p$d;, ""
    .local v19, "$r3":Lio/flutter/view/p$d;, ""
    iget v0, v0, Lio/flutter/view/p$d;->k:I

    .local v0, "$i9":I, ""
    move/from16 v30, v0

    .end local v0    # "$i9":I, ""
    .local v30, "$i9":I, ""
    move-object/from16 v0, p0

    .end local v19    # "$r3":Lio/flutter/view/p$d;, ""
    .local v0, "$r3":Lio/flutter/view/p$d;, ""
    iget-object v0, v0, Lio/flutter/view/p;->p:Lio/flutter/view/p$d;

    move-object/from16 v19, v0

    .end local v0    # "$r3":Lio/flutter/view/p$d;, ""
    .local v19, "$r3":Lio/flutter/view/p$d;, ""
    iget v0, v0, Lio/flutter/view/p$d;->l:I

    .local v0, "$i10":I, ""
    move/from16 v31, v0

    .end local v0    # "$i10":I, ""
    .local v31, "$i10":I, ""
    move-object/from16 v0, p0

    .end local v19    # "$r3":Lio/flutter/view/p$d;, ""
    .local v0, "$r3":Lio/flutter/view/p$d;, ""
    iget-object v0, v0, Lio/flutter/view/p;->p:Lio/flutter/view/p$d;

    move-object/from16 v19, v0

    .end local v0    # "$r3":Lio/flutter/view/p$d;, ""
    .local v19, "$r3":Lio/flutter/view/p$d;, ""
    iget v0, v0, Lio/flutter/view/p$d;->m:I

    .local v0, "$i11":I, ""
    move/from16 v32, v0

    .end local v0    # "$i11":I, ""
    .local v32, "$i11":I, ""
    move-object/from16 v0, p0

    .end local v19    # "$r3":Lio/flutter/view/p$d;, ""
    .local v0, "$r3":Lio/flutter/view/p$d;, ""
    iget-object v0, v0, Lio/flutter/view/p;->p:Lio/flutter/view/p$d;

    move-object/from16 v19, v0

    .end local v0    # "$r3":Lio/flutter/view/p$d;, ""
    .local v19, "$r3":Lio/flutter/view/p$d;, ""
    iget v0, v0, Lio/flutter/view/p$d;->n:I

    .local v0, "$i12":I, ""
    move/from16 v33, v0

    .end local v0    # "$i12":I, ""
    .local v33, "$i12":I, ""
    move-object/from16 v0, p0

    .end local v19    # "$r3":Lio/flutter/view/p$d;, ""
    .local v0, "$r3":Lio/flutter/view/p$d;, ""
    iget-object v0, v0, Lio/flutter/view/p;->p:Lio/flutter/view/p$d;

    move-object/from16 v19, v0

    .end local v0    # "$r3":Lio/flutter/view/p$d;, ""
    .local v19, "$r3":Lio/flutter/view/p$d;, ""
    iget v0, v0, Lio/flutter/view/p$d;->o:I

    .local v0, "$i13":I, ""
    move/from16 v34, v0

    .end local v0    # "$i13":I, ""
    .local v34, "$i13":I, ""
    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    move/from16 v5, v24

    move/from16 v6, v25

    move/from16 v7, v26

    move/from16 v8, v27

    move/from16 v9, v28

    move/from16 v10, v29

    move/from16 v11, v30

    move/from16 v12, v31

    move/from16 v13, v32

    move/from16 v14, v33

    move/from16 v15, v34

    invoke-virtual/range {v0 .. v15}, Lio/flutter/embedding/engine/FlutterJNI;->setViewportMetrics(FIIIIIIIIIIIIII)V

    return-void
    .end local v33    # "$i12":I, ""
    .end local v23    # "$i2":I, ""
    .end local v32    # "$i11":I, ""
    .end local v21    # "$i0":I, ""
    .end local v31    # "$i10":I, ""
    .end local v30    # "$i9":I, ""
    .end local v25    # "$i4":I, ""
    .end local v17    # "$r1":Lio/flutter/view/k;, ""
    .end local v27    # "$i6":I, ""
    .end local v24    # "$i3":I, ""
    .end local v26    # "$i5":I, ""
    .end local v34    # "$i13":I, ""
    .end local v16    # "$z0":Z, ""
    .end local v20    # "$f0":F, ""
    .end local v28    # "$i7":I, ""
    .end local v18    # "$r2":Lio/flutter/embedding/engine/FlutterJNI;, ""
    .end local v22    # "$i1":I, ""
    .end local v19    # "$r3":Lio/flutter/view/p$d;, ""
    .end local v29    # "$i8":I, ""
.end method


# virtual methods
.method a(Landroid/view/WindowInsets;)I
    .locals 11
    .annotation build Landroid/annotation/TargetApi;
        value = 0x14
    .end annotation

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getRootView()Landroid/view/View;

    move-result-object v0

    .local v0, "$r2":Landroid/view/View;, ""
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    .local v1, "$i0":I, ""
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v2

    .local v2, "$i1":I, ""
    int-to-double v3, v2

    .local v3, "$d0":D, ""
    int-to-double v5, v1

    .local v5, "$d1":D, ""
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    const-wide v7, 0x3fc70a3d70a3d70aL    # 0.18

    mul-double/2addr v5, v7

    cmpg-double v9, v3, v5

    .local v9, "$b2":B, ""
    if-gez v9, :cond_0

    const/4 v10, 0x0

    return v10

    :cond_0
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v1

    return v1
    .end local v9    # "$b2":B, ""
    .end local v0    # "$r2":Landroid/view/View;, ""
    .end local v3    # "$d0":D, ""
    .end local v5    # "$d1":D, ""
    .end local v1    # "$i0":I, ""
    .end local v2    # "$i1":I, ""
.end method

.method public a()Lio/flutter/view/r$a;
    .locals 8

    new-instance v0, Landroid/graphics/SurfaceTexture;

    .local v0, "$r1":Landroid/graphics/SurfaceTexture;, ""
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->detachFromGLContext()V

    new-instance v2, Lio/flutter/view/p$c;

    .local v2, "$r2":Lio/flutter/view/p$c;, ""
    iget-object v3, p0, Lio/flutter/view/p;->s:Ljava/util/concurrent/atomic/AtomicLong;

    .local v3, "$r3":Ljava/util/concurrent/atomic/AtomicLong;, ""
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v4

    .local v4, "$l0":J, ""
    invoke-direct {v2, p0, v4, v5, v0}, Lio/flutter/view/p$c;-><init>(Lio/flutter/view/p;JLandroid/graphics/SurfaceTexture;)V

    iget-object v6, p0, Lio/flutter/view/p;->t:Lio/flutter/view/k;

    .local v6, "$r4":Lio/flutter/view/k;, ""
    invoke-virtual {v6}, Lio/flutter/view/k;->h()Lio/flutter/embedding/engine/FlutterJNI;

    move-result-object v7

    .local v7, "$r5":Lio/flutter/embedding/engine/FlutterJNI;, ""
    invoke-virtual {v2}, Lio/flutter/view/p$c;->c()J

    move-result-wide v4

    invoke-virtual {v7, v4, v5, v0}, Lio/flutter/embedding/engine/FlutterJNI;->registerTexture(JLandroid/graphics/SurfaceTexture;)V

    return-object v2
    .end local v4    # "$l0":J, ""
    .end local v3    # "$r3":Ljava/util/concurrent/atomic/AtomicLong;, ""
    .end local v0    # "$r1":Landroid/graphics/SurfaceTexture;, ""
    .end local v7    # "$r5":Lio/flutter/embedding/engine/FlutterJNI;, ""
    .end local v2    # "$r2":Lio/flutter/view/p$c;, ""
    .end local v6    # "$r4":Lio/flutter/view/k;, ""
.end method

.method public a(Lb/a/b/a/a;)V
    .locals 1

    iget-object v0, p0, Lio/flutter/view/p;->q:Ljava/util/List;

    .local v0, "$r2":Ljava/util/List;, ""
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
    .end local v0    # "$r2":Ljava/util/List;, ""
.end method

.method public a(Lio/flutter/view/l;)V
    .locals 1

    invoke-virtual {p0}, Lio/flutter/view/p;->k()V

    invoke-direct {p0}, Lio/flutter/view/p;->p()V

    iget-object v0, p0, Lio/flutter/view/p;->t:Lio/flutter/view/k;

    .local v0, "$r2":Lio/flutter/view/k;, ""
    invoke-virtual {v0, p1}, Lio/flutter/view/k;->a(Lio/flutter/view/l;)V

    invoke-direct {p0}, Lio/flutter/view/p;->q()V

    return-void
    .end local v0    # "$r2":Lio/flutter/view/k;, ""
.end method

.method public a(Lio/flutter/view/p$a;)V
    .locals 1

    iget-object v0, p0, Lio/flutter/view/p;->r:Ljava/util/List;

    .local v0, "$r2":Ljava/util/List;, ""
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
    .end local v0    # "$r2":Ljava/util/List;, ""
.end method

.method public a(Ljava/lang/String;Lb/a/b/a/e$a;)V
    .locals 1

    iget-object v0, p0, Lio/flutter/view/p;->t:Lio/flutter/view/k;

    .local v0, "$r3":Lio/flutter/view/k;, ""
    invoke-virtual {v0, p1, p2}, Lio/flutter/view/k;->a(Ljava/lang/String;Lb/a/b/a/e$a;)V

    return-void
    .end local v0    # "$r3":Lio/flutter/view/k;, ""
.end method

.method public a(Ljava/lang/String;Ljava/nio/ByteBuffer;Lb/a/b/a/e$b;)V
    .locals 4

    invoke-direct {p0}, Lio/flutter/view/p;->o()Z

    move-result v0

    .local v0, "$z0":Z, ""
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    .local v1, "$r4":Ljava/lang/StringBuilder;, ""
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FlutterView.send called on a detached view, channel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .local p1, "$r1":Ljava/lang/String;, ""
    const-string v2, "FlutterView"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v3, p0, Lio/flutter/view/p;->t:Lio/flutter/view/k;

    .local v3, "$r5":Lio/flutter/view/k;, ""
    invoke-virtual {v3, p1, p2, p3}, Lio/flutter/view/k;->a(Ljava/lang/String;Ljava/nio/ByteBuffer;Lb/a/b/a/e$b;)V

    return-void
    .end local v3    # "$r5":Lio/flutter/view/k;, ""
    .end local v0    # "$z0":Z, ""
    .end local v1    # "$r4":Ljava/lang/StringBuilder;, ""
    .end local p1    # "$r1":Ljava/lang/String;, ""
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lio/flutter/view/p;->e:Lio/flutter/embedding/engine/e/d;

    .local v0, "$r1":Lio/flutter/embedding/engine/e/d;, ""
    invoke-virtual {v0}, Lio/flutter/embedding/engine/e/d;->a()V

    return-void
    .end local v0    # "$r1":Lio/flutter/embedding/engine/e/d;, ""
.end method

.method public b(Lio/flutter/view/p$a;)V
    .locals 1

    iget-object v0, p0, Lio/flutter/view/p;->r:Ljava/util/List;

    .local v0, "$r2":Ljava/util/List;, ""
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
    .end local v0    # "$r2":Ljava/util/List;, ""
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lio/flutter/view/p;->e:Lio/flutter/embedding/engine/e/d;

    .local v0, "$r1":Lio/flutter/embedding/engine/e/d;, ""
    invoke-virtual {v0}, Lio/flutter/embedding/engine/e/d;->a()V

    return-void
    .end local v0    # "$r1":Lio/flutter/embedding/engine/e/d;, ""
.end method

.method public checkInputConnectionProxy(Landroid/view/View;)Z
    .locals 4

    iget-object v0, p0, Lio/flutter/view/p;->t:Lio/flutter/view/k;

    .local v0, "$r2":Lio/flutter/view/k;, ""
    invoke-virtual {v0}, Lio/flutter/view/k;->d()Lio/flutter/app/f;

    move-result-object v1

    .local v1, "$r3":Lio/flutter/app/f;, ""
    invoke-virtual {v1}, Lio/flutter/app/f;->c()Lio/flutter/plugin/platform/m;

    move-result-object v2

    .local v2, "$r4":Lio/flutter/plugin/platform/m;, ""
    invoke-virtual {v2, p1}, Lio/flutter/plugin/platform/m;->a(Landroid/view/View;)Z

    move-result v3

    .local v3, "$z0":Z, ""
    return v3
    .end local v3    # "$z0":Z, ""
    .end local v0    # "$r2":Lio/flutter/view/k;, ""
    .end local v1    # "$r3":Lio/flutter/app/f;, ""
    .end local v2    # "$r4":Lio/flutter/plugin/platform/m;, ""
.end method

.method public d()V
    .locals 7

    iget-object v0, p0, Lio/flutter/view/p;->q:Ljava/util/List;

    .local v0, "$r1":Ljava/util/List;, ""
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "$r2":Ljava/util/Iterator;, ""
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    .local v2, "$z0":Z, ""
    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "$r3":Ljava/lang/Object;, ""
    move-object v5, v3

    check-cast v5, Lb/a/b/a/a;

    move-object v4, v5

    .local v4, "$r4":Lb/a/b/a/a;, ""
    invoke-interface {v4}, Lb/a/b/a/a;->onPostResume()V

    goto :goto_0

    :cond_0
    iget-object v6, p0, Lio/flutter/view/p;->e:Lio/flutter/embedding/engine/e/d;

    .local v6, "$r5":Lio/flutter/embedding/engine/e/d;, ""
    invoke-virtual {v6}, Lio/flutter/embedding/engine/e/d;->b()V

    return-void
    .end local v2    # "$z0":Z, ""
    .end local v0    # "$r1":Ljava/util/List;, ""
    .end local v1    # "$r2":Ljava/util/Iterator;, ""
    .end local v3    # "$r3":Ljava/lang/Object;, ""
    .end local v4    # "$r4":Lb/a/b/a/a;, ""
    .end local v6    # "$r5":Lio/flutter/embedding/engine/e/d;, ""
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lio/flutter/view/p;->e:Lio/flutter/embedding/engine/e/d;

    .local v0, "$r1":Lio/flutter/embedding/engine/e/d;, ""
    invoke-virtual {v0}, Lio/flutter/embedding/engine/e/d;->c()V

    return-void
    .end local v0    # "$r1":Lio/flutter/embedding/engine/e/d;, ""
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lio/flutter/view/p;->i:Lio/flutter/embedding/engine/e/n;

    .local v0, "$r1":Lio/flutter/embedding/engine/e/n;, ""
    invoke-virtual {v0}, Lio/flutter/embedding/engine/e/n;->a()V

    return-void
    .end local v0    # "$r1":Lio/flutter/embedding/engine/e/n;, ""
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .local v0, "$i0":I, ""
    const/16 v1, 0x13

    if-gt v0, v1, :cond_0

    iget-object v2, p0, Lio/flutter/view/p;->p:Lio/flutter/view/p$d;

    .local v2, "$r2":Lio/flutter/view/p$d;, ""
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iput v0, v2, Lio/flutter/view/p$d;->d:I

    iget-object v2, p0, Lio/flutter/view/p;->p:Lio/flutter/view/p$d;

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iput v0, v2, Lio/flutter/view/p$d;->e:I

    iget-object v2, p0, Lio/flutter/view/p;->p:Lio/flutter/view/p$d;

    const/4 v1, 0x0

    iput v1, v2, Lio/flutter/view/p$d;->f:I

    iget-object v2, p0, Lio/flutter/view/p;->p:Lio/flutter/view/p$d;

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iput v0, v2, Lio/flutter/view/p$d;->g:I

    iget-object v2, p0, Lio/flutter/view/p;->p:Lio/flutter/view/p$d;

    const/4 v1, 0x0

    iput v1, v2, Lio/flutter/view/p$d;->h:I

    iget-object v2, p0, Lio/flutter/view/p;->p:Lio/flutter/view/p$d;

    const/4 v1, 0x0

    iput v1, v2, Lio/flutter/view/p$d;->i:I

    iget-object v2, p0, Lio/flutter/view/p;->p:Lio/flutter/view/p$d;

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iput v0, v2, Lio/flutter/view/p$d;->j:I

    iget-object v2, p0, Lio/flutter/view/p;->p:Lio/flutter/view/p$d;

    const/4 v1, 0x0

    iput v1, v2, Lio/flutter/view/p$d;->k:I

    invoke-direct {p0}, Lio/flutter/view/p;->r()V

    const/4 v1, 0x1

    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->fitSystemWindows(Landroid/graphics/Rect;)Z

    move-result v3

    .local v3, "$z0":Z, ""
    return v3
    .end local v2    # "$r2":Lio/flutter/view/p$d;, ""
    .end local v0    # "$i0":I, ""
    .end local v3    # "$z0":Z, ""
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lio/flutter/view/p;->c:Lio/flutter/embedding/engine/e/f;

    .local v0, "$r1":Lio/flutter/embedding/engine/e/f;, ""
    invoke-virtual {v0}, Lio/flutter/embedding/engine/e/f;->a()V

    return-void
    .end local v0    # "$r1":Lio/flutter/embedding/engine/e/f;, ""
.end method

.method public getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 3

    iget-object v0, p0, Lio/flutter/view/p;->n:Lio/flutter/view/g;

    .local v0, "$r1":Lio/flutter/view/g;, ""
    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/flutter/view/p;->n:Lio/flutter/view/g;

    invoke-virtual {v0}, Lio/flutter/view/g;->b()Z

    move-result v1

    .local v1, "$z0":Z, ""
    if-eqz v1, :cond_0

    iget-object v0, p0, Lio/flutter/view/p;->n:Lio/flutter/view/g;

    return-object v0

    :cond_0
    const/4 v2, 0x0

    return-object v2
    .end local v0    # "$r1":Lio/flutter/view/g;, ""
    .end local v1    # "$z0":Z, ""
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 3

    invoke-virtual {p0}, Lio/flutter/view/p;->k()V

    iget-object v0, p0, Lio/flutter/view/p;->t:Lio/flutter/view/k;

    .local v0, "$r1":Lio/flutter/view/k;, ""
    invoke-virtual {v0}, Lio/flutter/view/k;->h()Lio/flutter/embedding/engine/FlutterJNI;

    move-result-object v1

    .local v1, "$r2":Lio/flutter/embedding/engine/FlutterJNI;, ""
    invoke-virtual {v1}, Lio/flutter/embedding/engine/FlutterJNI;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .local v2, "$r3":Landroid/graphics/Bitmap;, ""
    return-object v2
    .end local v0    # "$r1":Lio/flutter/view/k;, ""
    .end local v2    # "$r3":Landroid/graphics/Bitmap;, ""
    .end local v1    # "$r2":Lio/flutter/embedding/engine/FlutterJNI;, ""
.end method

.method public getDartExecutor()Lio/flutter/embedding/engine/a/b;
    .locals 1

    iget-object v0, p0, Lio/flutter/view/p;->a:Lio/flutter/embedding/engine/a/b;

    .local v0, "r1":Lio/flutter/embedding/engine/a/b;, ""
    return-object v0
    .end local v0    # "r1":Lio/flutter/embedding/engine/a/b;, ""
.end method

.method getDevicePixelRatio()F
    .locals 2

    iget-object v0, p0, Lio/flutter/view/p;->p:Lio/flutter/view/p$d;

    .local v0, "$r1":Lio/flutter/view/p$d;, ""
    iget v1, v0, Lio/flutter/view/p$d;->a:F

    .local v1, "f0":F, ""
    return v1
    .end local v0    # "$r1":Lio/flutter/view/p$d;, ""
    .end local v1    # "f0":F, ""
.end method

.method public getFlutterNativeView()Lio/flutter/view/k;
    .locals 1

    iget-object v0, p0, Lio/flutter/view/p;->t:Lio/flutter/view/k;

    .local v0, "r1":Lio/flutter/view/k;, ""
    return-object v0
    .end local v0    # "r1":Lio/flutter/view/k;, ""
.end method

.method public getPluginRegistry()Lio/flutter/app/f;
    .locals 2

    iget-object v0, p0, Lio/flutter/view/p;->t:Lio/flutter/view/k;

    .local v0, "$r2":Lio/flutter/view/k;, ""
    invoke-virtual {v0}, Lio/flutter/view/k;->d()Lio/flutter/app/f;

    move-result-object v1

    .local v1, "$r1":Lio/flutter/app/f;, ""
    return-object v1
    .end local v0    # "$r2":Lio/flutter/view/k;, ""
    .end local v1    # "$r1":Lio/flutter/app/f;, ""
.end method

.method public h()Lio/flutter/view/k;
    .locals 5

    invoke-direct {p0}, Lio/flutter/view/p;->o()Z

    move-result v0

    .local v0, "$z0":Z, ""
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    .local v2, "$r2":Landroid/view/SurfaceHolder;, ""
    iget-object v3, p0, Lio/flutter/view/p;->o:Landroid/view/SurfaceHolder$Callback;

    .local v3, "$r1":Landroid/view/SurfaceHolder$Callback;, ""
    invoke-interface {v2, v3}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    iget-object v4, p0, Lio/flutter/view/p;->t:Lio/flutter/view/k;

    .local v4, "$r3":Lio/flutter/view/k;, ""
    invoke-virtual {v4}, Lio/flutter/view/k;->a()V

    iget-object v4, p0, Lio/flutter/view/p;->t:Lio/flutter/view/k;

    const/4 v1, 0x0

    iput-object v1, p0, Lio/flutter/view/p;->t:Lio/flutter/view/k;

    return-object v4
    .end local v3    # "$r1":Landroid/view/SurfaceHolder$Callback;, ""
    .end local v4    # "$r3":Lio/flutter/view/k;, ""
    .end local v0    # "$z0":Z, ""
    .end local v2    # "$r2":Landroid/view/SurfaceHolder;, ""
.end method

.method public i()V
    .locals 5

    invoke-direct {p0}, Lio/flutter/view/p;->o()Z

    move-result v0

    .local v0, "$z0":Z, ""
    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    .local v1, "$r2":Landroid/view/SurfaceHolder;, ""
    iget-object v2, p0, Lio/flutter/view/p;->o:Landroid/view/SurfaceHolder$Callback;

    .local v2, "$r1":Landroid/view/SurfaceHolder$Callback;, ""
    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    iget-object v3, p0, Lio/flutter/view/p;->t:Lio/flutter/view/k;

    .local v3, "$r3":Lio/flutter/view/k;, ""
    invoke-virtual {v3}, Lio/flutter/view/k;->b()V

    const/4 v4, 0x0

    iput-object v4, p0, Lio/flutter/view/p;->t:Lio/flutter/view/k;

    return-void
    .end local v3    # "$r3":Lio/flutter/view/k;, ""
    .end local v0    # "$z0":Z, ""
    .end local v2    # "$r1":Landroid/view/SurfaceHolder$Callback;, ""
    .end local v1    # "$r2":Landroid/view/SurfaceHolder;, ""
.end method

.method j()Lio/flutter/view/p$e;
    .locals 11

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    .local v0, "$r1":Landroid/content/Context;, ""
    move-object v2, v0

    check-cast v2, Landroid/app/Activity;

    move-object v1, v2

    .local v1, "$r2":Landroid/app/Activity;, ""
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .local v3, "$r3":Landroid/content/res/Resources;, ""
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    .local v4, "$r4":Landroid/content/res/Configuration;, ""
    iget v5, v4, Landroid/content/res/Configuration;->orientation:I

    .local v5, "$i0":I, ""
    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    .local v6, "$r5":Landroid/view/WindowManager;, ""
    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    .local v7, "$r6":Landroid/view/Display;, ""
    invoke-virtual {v7}, Landroid/view/Display;->getRotation()I

    move-result v8

    .local v8, "$i1":I, ""
    const/4 v9, 0x2

    if-ne v5, v9, :cond_4

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    sget-object v10, Lio/flutter/view/p$e;->c:Lio/flutter/view/p$e;

    .local v10, "r7":Lio/flutter/view/p$e;, ""
    return-object v10

    :cond_0
    const/4 v9, 0x3

    if-ne v8, v9, :cond_2

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x17

    if-lt v5, v9, :cond_1

    sget-object v10, Lio/flutter/view/p$e;->b:Lio/flutter/view/p$e;

    return-object v10

    :cond_1
    sget-object v10, Lio/flutter/view/p$e;->c:Lio/flutter/view/p$e;

    return-object v10

    :cond_2
    if-eqz v8, :cond_3

    const/4 v9, 0x2

    if-ne v8, v9, :cond_4

    :cond_3
    sget-object v10, Lio/flutter/view/p$e;->d:Lio/flutter/view/p$e;

    return-object v10

    :cond_4
    sget-object v10, Lio/flutter/view/p$e;->a:Lio/flutter/view/p$e;

    return-object v10
    .end local v0    # "$r1":Landroid/content/Context;, ""
    .end local v6    # "$r5":Landroid/view/WindowManager;, ""
    .end local v1    # "$r2":Landroid/app/Activity;, ""
    .end local v8    # "$i1":I, ""
    .end local v10    # "r7":Lio/flutter/view/p$e;, ""
    .end local v5    # "$i0":I, ""
    .end local v3    # "$r3":Landroid/content/res/Resources;, ""
    .end local v4    # "$r4":Landroid/content/res/Configuration;, ""
    .end local v7    # "$r6":Landroid/view/Display;, ""
.end method

.method k()V
    .locals 3

    invoke-direct {p0}, Lio/flutter/view/p;->o()Z

    move-result v0

    .local v0, "$z0":Z, ""
    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    .local v1, "$r1":Ljava/lang/AssertionError;, ""
    const-string v2, "Platform view is not attached"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
    .end local v0    # "$z0":Z, ""
    .end local v1    # "$r1":Ljava/lang/AssertionError;, ""
.end method

.method l()V
    .locals 1

    iget-object v0, p0, Lio/flutter/view/p;->n:Lio/flutter/view/g;

    .local v0, "$r1":Lio/flutter/view/g;, ""
    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/flutter/view/p;->n:Lio/flutter/view/g;

    invoke-virtual {v0}, Lio/flutter/view/g;->d()V

    :cond_0
    return-void
    .end local v0    # "$r1":Lio/flutter/view/g;, ""
.end method

.method public m()V
    .locals 8

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/flutter/view/p;->v:Z

    new-instance v1, Ljava/util/ArrayList;

    .local v1, "$r1":Ljava/util/ArrayList;, ""
    iget-object v2, p0, Lio/flutter/view/p;->r:Ljava/util/List;

    .local v2, "$r2":Ljava/util/List;, ""
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "$r3":Ljava/util/Iterator;, ""
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    .local v4, "$z0":Z, ""
    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .local v5, "$r4":Ljava/lang/Object;, ""
    move-object v7, v5

    check-cast v7, Lio/flutter/view/p$a;

    move-object v6, v7

    .local v6, "$r5":Lio/flutter/view/p$a;, ""
    invoke-interface {v6}, Lio/flutter/view/p$a;->a()V

    goto :goto_0

    :cond_0
    return-void
    .end local v4    # "$z0":Z, ""
    .end local v6    # "$r5":Lio/flutter/view/p$a;, ""
    .end local v1    # "$r1":Ljava/util/ArrayList;, ""
    .end local v3    # "$r3":Ljava/util/Iterator;, ""
    .end local v5    # "$r4":Ljava/lang/Object;, ""
    .end local v2    # "$r2":Ljava/util/List;, ""
.end method

.method public final onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi",
            "NewApi"
        }
    .end annotation

    .annotation build Landroid/annotation/TargetApi;
        value = 0x14
    .end annotation

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getWindowSystemUiVisibility()I

    move-result v0

    .local v0, "$i0":I, ""
    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x1

    .local v1, "$z0":Z, ""
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    .local v2, "$z1":Z, ""
    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getWindowSystemUiVisibility()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    sget-object v3, Lio/flutter/view/p$e;->a:Lio/flutter/view/p$e;

    .local v3, "$r2":Lio/flutter/view/p$e;, ""
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lio/flutter/view/p;->j()Lio/flutter/view/p$e;

    move-result-object v3

    :cond_2
    iget-object v4, p0, Lio/flutter/view/p;->p:Lio/flutter/view/p$d;

    .local v4, "$r3":Lio/flutter/view/p$d;, ""
    if-eqz v2, :cond_3

    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v0

    :goto_2
    iput v0, v4, Lio/flutter/view/p$d;->d:I

    iget-object v4, p0, Lio/flutter/view/p;->p:Lio/flutter/view/p$d;

    sget-object v5, Lio/flutter/view/p$e;->c:Lio/flutter/view/p$e;

    .local v5, "$r4":Lio/flutter/view/p$e;, ""
    if-eq v3, v5, :cond_5

    sget-object v5, Lio/flutter/view/p$e;->d:Lio/flutter/view/p$e;

    if-ne v3, v5, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v0

    goto :goto_4

    :cond_5
    :goto_3
    const/4 v0, 0x0

    :goto_4
    iput v0, v4, Lio/flutter/view/p$d;->e:I

    iget-object v4, p0, Lio/flutter/view/p;->p:Lio/flutter/view/p$d;

    const/4 v6, 0x0

    iput v6, v4, Lio/flutter/view/p$d;->f:I

    iget-object v4, p0, Lio/flutter/view/p;->p:Lio/flutter/view/p$d;

    sget-object v5, Lio/flutter/view/p$e;->b:Lio/flutter/view/p$e;

    if-eq v3, v5, :cond_7

    sget-object v5, Lio/flutter/view/p$e;->d:Lio/flutter/view/p$e;

    if-ne v3, v5, :cond_6

    goto :goto_5

    :cond_6
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v0

    goto :goto_6

    :cond_7
    :goto_5
    const/4 v0, 0x0

    :goto_6
    iput v0, v4, Lio/flutter/view/p$d;->g:I

    iget-object v4, p0, Lio/flutter/view/p;->p:Lio/flutter/view/p$d;

    const/4 v6, 0x0

    iput v6, v4, Lio/flutter/view/p$d;->h:I

    iget-object v4, p0, Lio/flutter/view/p;->p:Lio/flutter/view/p$d;

    const/4 v6, 0x0

    iput v6, v4, Lio/flutter/view/p$d;->i:I

    iget-object v4, p0, Lio/flutter/view/p;->p:Lio/flutter/view/p$d;

    if-eqz v1, :cond_8

    invoke-virtual {p0, p1}, Lio/flutter/view/p;->a(Landroid/view/WindowInsets;)I

    move-result v0

    goto :goto_7

    :cond_8
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v0

    :goto_7
    iput v0, v4, Lio/flutter/view/p$d;->j:I

    iget-object v4, p0, Lio/flutter/view/p;->p:Lio/flutter/view/p$d;

    const/4 v6, 0x0

    iput v6, v4, Lio/flutter/view/p$d;->k:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1d

    if-lt v0, v6, :cond_9

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemGestureInsets()Landroid/graphics/Insets;

    move-result-object v7

    .local v7, "$r5":Landroid/graphics/Insets;, ""
    iget-object v4, p0, Lio/flutter/view/p;->p:Lio/flutter/view/p$d;

    iget v0, v7, Landroid/graphics/Insets;->top:I

    iput v0, v4, Lio/flutter/view/p$d;->l:I

    iget-object v4, p0, Lio/flutter/view/p;->p:Lio/flutter/view/p$d;

    iget v0, v7, Landroid/graphics/Insets;->right:I

    iput v0, v4, Lio/flutter/view/p$d;->m:I

    iget-object v4, p0, Lio/flutter/view/p;->p:Lio/flutter/view/p$d;

    iget v0, v7, Landroid/graphics/Insets;->bottom:I

    iput v0, v4, Lio/flutter/view/p$d;->n:I

    iget-object v4, p0, Lio/flutter/view/p;->p:Lio/flutter/view/p$d;

    iget v0, v7, Landroid/graphics/Insets;->left:I

    iput v0, v4, Lio/flutter/view/p$d;->o:I

    :cond_9
    invoke-direct {p0}, Lio/flutter/view/p;->r()V

    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    .local p1, "$r1":Landroid/view/WindowInsets;, ""
    return-object p1
    .end local v2    # "$z1":Z, ""
    .end local p1    # "$r1":Landroid/view/WindowInsets;, ""
    .end local v3    # "$r2":Lio/flutter/view/p$e;, ""
    .end local v5    # "$r4":Lio/flutter/view/p$e;, ""
    .end local v7    # "$r5":Landroid/graphics/Insets;, ""
    .end local v0    # "$i0":I, ""
    .end local v4    # "$r3":Lio/flutter/view/p$d;, ""
    .end local v1    # "$z0":Z, ""
.end method

.method protected onAttachedToWindow()V
    .locals 22

    move-object/from16 v0, p0

    invoke-super {v0}, Landroid/view/SurfaceView;->onAttachedToWindow()V

    move-object/from16 v0, p0

    invoke-virtual {v0}, Lio/flutter/view/p;->getPluginRegistry()Lio/flutter/app/f;

    move-result-object v6

    .local v6, "$r2":Lio/flutter/app/f;, ""
    invoke-virtual {v6}, Lio/flutter/app/f;->c()Lio/flutter/plugin/platform/m;

    move-result-object v7

    .local v7, "$r3":Lio/flutter/plugin/platform/m;, ""
    new-instance v8, Lio/flutter/view/g;

    .local v8, "$r4":Lio/flutter/view/g;, ""
    new-instance v9, Lio/flutter/embedding/engine/e/b;

    .local v9, "$r1":Lio/flutter/embedding/engine/e/b;, ""
    move-object/from16 v0, p0

    .local v10, "$r5":Lio/flutter/embedding/engine/a/b;, ""
    iget-object v10, v0, Lio/flutter/view/p;->a:Lio/flutter/embedding/engine/a/b;

    move-object/from16 v0, p0

    invoke-virtual {v0}, Lio/flutter/view/p;->getFlutterNativeView()Lio/flutter/view/k;

    move-result-object v11

    .local v11, "$r6":Lio/flutter/view/k;, ""
    invoke-virtual {v11}, Lio/flutter/view/k;->h()Lio/flutter/embedding/engine/FlutterJNI;

    move-result-object v12

    .local v12, "$r7":Lio/flutter/embedding/engine/FlutterJNI;, ""
    invoke-direct {v9, v10, v12}, Lio/flutter/embedding/engine/e/b;-><init>(Lio/flutter/embedding/engine/a/b;Lio/flutter/embedding/engine/FlutterJNI;)V

    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object v13

    .local v13, "$r8":Landroid/content/Context;, ""
    const-string v15, "accessibility"

    invoke-virtual {v13, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    .local v14, "$r9":Ljava/lang/Object;, ""
    move-object/from16 v17, v14

    check-cast v17, Landroid/view/accessibility/AccessibilityManager;

    move-object/from16 v16, v17

    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    .local v18, "$r11":Landroid/content/ContentResolver;, ""
    move-object v0, v8

    move-object/from16 v1, p0

    move-object v2, v9

    move-object/from16 v3, v16

    move-object/from16 v4, v18

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lio/flutter/view/g;-><init>(Landroid/view/View;Lio/flutter/embedding/engine/e/b;Landroid/view/accessibility/AccessibilityManager;Landroid/content/ContentResolver;Lio/flutter/plugin/platform/j;)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lio/flutter/view/p;->n:Lio/flutter/view/g;

    move-object/from16 v0, p0

    iget-object v8, v0, Lio/flutter/view/p;->n:Lio/flutter/view/g;

    move-object/from16 v0, p0

    .local v0, "$r12":Lio/flutter/view/g$e;, ""
    iget-object v0, v0, Lio/flutter/view/p;->w:Lio/flutter/view/g$e;

    move-object/from16 v19, v0

    .end local v0    # "$r12":Lio/flutter/view/g$e;, ""
    .local v19, "$r12":Lio/flutter/view/g$e;, ""
    invoke-virtual {v8, v0}, Lio/flutter/view/g;->a(Lio/flutter/view/g$e;)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lio/flutter/view/p;->n:Lio/flutter/view/g;

    invoke-virtual {v8}, Lio/flutter/view/g;->b()Z

    move-result v20

    .local v20, "$z0":Z, ""
    move-object/from16 v0, p0

    iget-object v8, v0, Lio/flutter/view/p;->n:Lio/flutter/view/g;

    invoke-virtual {v8}, Lio/flutter/view/g;->c()Z

    move-result v21

    .local v21, "$z1":Z, ""
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lio/flutter/view/p;->a(ZZ)V

    return-void
    .end local v21    # "$z1":Z, ""
    .end local v14    # "$r9":Ljava/lang/Object;, ""
    .end local v10    # "$r5":Lio/flutter/embedding/engine/a/b;, ""
    .end local v8    # "$r4":Lio/flutter/view/g;, ""
    .end local v11    # "$r6":Lio/flutter/view/k;, ""
    .end local v13    # "$r8":Landroid/content/Context;, ""
    .end local v18    # "$r11":Landroid/content/ContentResolver;, ""
    .end local v20    # "$z0":Z, ""
    .end local v6    # "$r2":Lio/flutter/app/f;, ""
    .end local v12    # "$r7":Lio/flutter/embedding/engine/FlutterJNI;, ""
    .end local v9    # "$r1":Lio/flutter/embedding/engine/e/b;, ""
    .end local v7    # "$r3":Lio/flutter/plugin/platform/m;, ""
    .end local v19    # "$r12":Lio/flutter/view/g$e;, ""
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0, p1}, Lio/flutter/view/p;->a(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lio/flutter/view/p;->n()V

    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2

    iget-object v0, p0, Lio/flutter/view/p;->k:Lb/a/b/b/c;

    .local v0, "$r1":Lb/a/b/b/c;, ""
    invoke-virtual {v0, p0, p1}, Lb/a/b/b/c;->a(Landroid/view/View;Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .local v1, "$r2":Landroid/view/inputmethod/InputConnection;, ""
    return-object v1
    .end local v0    # "$r1":Lb/a/b/b/c;, ""
    .end local v1    # "$r2":Landroid/view/inputmethod/InputConnection;, ""
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/SurfaceView;->onDetachedFromWindow()V

    iget-object v0, p0, Lio/flutter/view/p;->n:Lio/flutter/view/g;

    .local v0, "$r1":Lio/flutter/view/g;, ""
    invoke-virtual {v0}, Lio/flutter/view/g;->a()V

    const/4 v1, 0x0

    iput-object v1, p0, Lio/flutter/view/p;->n:Lio/flutter/view/g;

    return-void
    .end local v0    # "$r1":Lio/flutter/view/g;, ""
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-direct {p0}, Lio/flutter/view/p;->o()Z

    move-result v0

    .local v0, "$z0":Z, ""
    if-eqz v0, :cond_0

    iget-object v1, p0, Lio/flutter/view/p;->m:Lb/a/a/a/b;

    .local v1, "$r2":Lb/a/a/a/b;, ""
    invoke-virtual {v1, p1}, Lb/a/a/a/b;->b(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v2, 0x1

    return v2

    :cond_1
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
    .end local v0    # "$z0":Z, ""
    .end local v1    # "$r2":Lb/a/a/a/b;, ""
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-direct {p0}, Lio/flutter/view/p;->o()Z

    move-result v0

    .local v0, "$z0":Z, ""
    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_0
    iget-object v1, p0, Lio/flutter/view/p;->n:Lio/flutter/view/g;

    .local v1, "$r2":Lio/flutter/view/g;, ""
    invoke-virtual {v1, p1}, Lio/flutter/view/g;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
    .end local v1    # "$r2":Lio/flutter/view/g;, ""
    .end local v0    # "$z0":Z, ""
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    invoke-direct {p0}, Lio/flutter/view/p;->o()Z

    move-result v0

    .local v0, "$z0":Z, ""
    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :cond_0
    iget-object v1, p0, Lio/flutter/view/p;->l:Lb/a/a/a/a;

    .local v1, "$r2":Lb/a/a/a/a;, ""
    invoke-virtual {v1, p2}, Lb/a/a/a/a;->b(Landroid/view/KeyEvent;)V

    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
    .end local v1    # "$r2":Lb/a/a/a/a;, ""
    .end local v0    # "$z0":Z, ""
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    invoke-direct {p0}, Lio/flutter/view/p;->o()Z

    move-result v0

    .local v0, "$z0":Z, ""
    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :cond_0
    iget-object v1, p0, Lio/flutter/view/p;->l:Lb/a/a/a/a;

    .local v1, "$r2":Lb/a/a/a/a;, ""
    invoke-virtual {v1, p2}, Lb/a/a/a/a;->a(Landroid/view/KeyEvent;)V

    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
    .end local v0    # "$z0":Z, ""
    .end local v1    # "$r2":Lb/a/a/a/a;, ""
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    iget-object v0, p0, Lio/flutter/view/p;->p:Lio/flutter/view/p$d;

    .local v0, "$r1":Lio/flutter/view/p$d;, ""
    iput p1, v0, Lio/flutter/view/p$d;->b:I

    iget-object v0, p0, Lio/flutter/view/p;->p:Lio/flutter/view/p$d;

    iput p2, v0, Lio/flutter/view/p$d;->c:I

    invoke-direct {p0}, Lio/flutter/view/p;->r()V

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/SurfaceView;->onSizeChanged(IIII)V

    return-void
    .end local v0    # "$r1":Lio/flutter/view/p$d;, ""
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-direct {p0}, Lio/flutter/view/p;->o()Z

    move-result v0

    .local v0, "$z0":Z, ""
    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .local v1, "$i0":I, ""
    const/16 v2, 0x15

    if-lt v1, v2, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/SurfaceView;->requestUnbufferedDispatch(Landroid/view/MotionEvent;)V

    :cond_1
    iget-object v3, p0, Lio/flutter/view/p;->m:Lb/a/a/a/b;

    .local v3, "$r2":Lb/a/a/a/b;, ""
    invoke-virtual {v3, p1}, Lb/a/a/a/b;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
    .end local v0    # "$z0":Z, ""
    .end local v1    # "$i0":I, ""
    .end local v3    # "$r2":Lb/a/a/a/b;, ""
.end method

.method public setInitialRoute(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lio/flutter/view/p;->c:Lio/flutter/embedding/engine/e/f;

    .local v0, "$r2":Lio/flutter/embedding/engine/e/f;, ""
    invoke-virtual {v0, p1}, Lio/flutter/embedding/engine/e/f;->a(Ljava/lang/String;)V

    return-void
    .end local v0    # "$r2":Lio/flutter/embedding/engine/e/f;, ""
.end method
