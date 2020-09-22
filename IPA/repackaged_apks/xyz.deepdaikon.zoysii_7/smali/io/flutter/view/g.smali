.class public Lio/flutter/view/g;
.super Landroid/view/accessibility/AccessibilityNodeProvider;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/view/g$f;,
        Lio/flutter/view/g$e;,
        Lio/flutter/view/g$d;,
        Lio/flutter/view/g$c;,
        Lio/flutter/view/d;,
        Lio/flutter/view/e;,
        Lio/flutter/view/g$g;,
        Lio/flutter/view/c;,
        Lio/flutter/view/f;,
        Lio/flutter/view/g$b;,
        Lio/flutter/view/g$a;
    }
.end annotation


# static fields
.field private static a:I = 0xff00001


# instance fields
.field private final b:Landroid/view/View;

.field private final c:Lio/flutter/embedding/engine/e/b;

.field private final d:Landroid/view/accessibility/AccessibilityManager;

.field private final e:Lio/flutter/view/AccessibilityViewEmbedder;

.field private final f:Lio/flutter/plugin/platform/j;

.field private final g:Landroid/content/ContentResolver;

.field private final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lio/flutter/view/g$f;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lio/flutter/view/g$c;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lio/flutter/view/g$f;

.field private k:Ljava/lang/Integer;

.field private l:Ljava/lang/Integer;

.field private m:I

.field private n:Lio/flutter/view/g$f;

.field private o:Lio/flutter/view/g$f;

.field private p:Lio/flutter/view/g$f;

.field private final q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private r:I

.field private s:Ljava/lang/Integer;

.field private t:Lio/flutter/view/g$e;

.field private final u:Lio/flutter/embedding/engine/e/b$a;

.field private final v:Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;

.field private final w:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation
.end field

.field private final x:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/view/View;Lio/flutter/embedding/engine/e/b;Landroid/view/accessibility/AccessibilityManager;Landroid/content/ContentResolver;Lio/flutter/plugin/platform/j;)V
    .locals 22

    move-object/from16 v0, p0

    invoke-direct {v0}, Landroid/view/accessibility/AccessibilityNodeProvider;-><init>()V

    new-instance v3, Ljava/util/HashMap;

    .local v3, "$r7":Ljava/util/HashMap;, ""
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lio/flutter/view/g;->h:Ljava/util/Map;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lio/flutter/view/g;->i:Ljava/util/Map;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lio/flutter/view/g;->m:I

    new-instance v5, Ljava/util/ArrayList;

    .local v5, "$r8":Ljava/util/ArrayList;, ""
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lio/flutter/view/g;->q:Ljava/util/List;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lio/flutter/view/g;->r:I

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .local v6, "$r9":Ljava/lang/Integer;, ""
    move-object/from16 v0, p0

    iput-object v6, v0, Lio/flutter/view/g;->s:Ljava/lang/Integer;

    new-instance v7, Lio/flutter/view/c;

    .local v7, "$r10":Lio/flutter/view/c;, ""
    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lio/flutter/view/c;-><init>(Lio/flutter/view/g;)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lio/flutter/view/g;->u:Lio/flutter/embedding/engine/e/b$a;

    new-instance v8, Lio/flutter/view/d;

    .local v8, "$r11":Lio/flutter/view/d;, ""
    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lio/flutter/view/d;-><init>(Lio/flutter/view/g;)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lio/flutter/view/g;->v:Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;

    new-instance v9, Lio/flutter/view/e;

    .local v9, "$r12":Lio/flutter/view/e;, ""
    new-instance v10, Landroid/os/Handler;

    .local v10, "$r3":Landroid/os/Handler;, ""
    invoke-direct {v10}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v10}, Lio/flutter/view/e;-><init>(Lio/flutter/view/g;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lio/flutter/view/g;->x:Landroid/database/ContentObserver;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lio/flutter/view/g;->b:Landroid/view/View;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lio/flutter/view/g;->c:Lio/flutter/embedding/engine/e/b;

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lio/flutter/view/g;->d:Landroid/view/accessibility/AccessibilityManager;

    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lio/flutter/view/g;->g:Landroid/content/ContentResolver;

    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lio/flutter/view/g;->f:Lio/flutter/plugin/platform/j;

    move-object/from16 v0, p0

    .local v11, "$r13":Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;, ""
    iget-object v11, v0, Lio/flutter/view/g;->v:Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;

    move-object/from16 v0, p3

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v12

    .local v12, "$z0":Z, ""
    invoke-interface {v11, v12}, Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;->onAccessibilityStateChanged(Z)V

    move-object/from16 v0, p0

    .local v13, "$r14":Landroid/view/accessibility/AccessibilityManager;, ""
    iget-object v13, v0, Lio/flutter/view/g;->d:Landroid/view/accessibility/AccessibilityManager;

    move-object/from16 v0, p0

    iget-object v11, v0, Lio/flutter/view/g;->v:Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;

    invoke-virtual {v13, v11}, Landroid/view/accessibility/AccessibilityManager;->addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    .local v14, "$i0":I, ""
    const/16 v4, 0x13

    if-lt v14, v4, :cond_0

    new-instance v15, Lio/flutter/view/f;

    .local v15, "$r15":Lio/flutter/view/f;, ""
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v15, v0, v1}, Lio/flutter/view/f;-><init>(Lio/flutter/view/g;Landroid/view/accessibility/AccessibilityManager;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lio/flutter/view/g;->w:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    move-object/from16 v0, p0

    .local v0, "$r16":Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;, ""
    iget-object v0, v0, Lio/flutter/view/g;->w:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    move-object/from16 v16, v0

    .end local v0    # "$r16":Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;, ""
    .local v16, "$r16":Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;, ""
    move-object/from16 v0, p3

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v12

    move-object/from16 v0, v16

    invoke-interface {v0, v12}, Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;->onTouchExplorationStateChanged(Z)V

    move-object/from16 v0, p0

    .local v0, "$r5":Landroid/view/accessibility/AccessibilityManager;, ""
    iget-object v0, v0, Lio/flutter/view/g;->d:Landroid/view/accessibility/AccessibilityManager;

    move-object/from16 p3, v0

    .end local v0    # "$r5":Landroid/view/accessibility/AccessibilityManager;, ""
    .local p3, "$r5":Landroid/view/accessibility/AccessibilityManager;, ""
    move-object/from16 v0, p0

    .end local v16    # "$r16":Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;, ""
    .local v0, "$r16":Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;, ""
    iget-object v0, v0, Lio/flutter/view/g;->w:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    move-object/from16 v16, v0

    .end local v0    # "$r16":Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;, ""
    .local v16, "$r16":Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;, ""
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    goto :goto_0

    :cond_0
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lio/flutter/view/g;->w:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    :goto_0
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v14, v4, :cond_1

    move-object/from16 v0, p0

    .local v0, "$r17":Landroid/database/ContentObserver;, ""
    iget-object v0, v0, Lio/flutter/view/g;->x:Landroid/database/ContentObserver;

    move-object/from16 v18, v0

    .end local v0    # "$r17":Landroid/database/ContentObserver;, ""
    .local v18, "$r17":Landroid/database/ContentObserver;, ""
    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/database/ContentObserver;->onChange(Z)V

    const-string v20, "transition_animation_scale"

    move-object/from16 v0, v20

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    .local v19, "$r18":Landroid/net/Uri;, ""
    move-object/from16 v0, p0

    .local v0, "$r6":Landroid/content/ContentResolver;, ""
    iget-object v0, v0, Lio/flutter/view/g;->g:Landroid/content/ContentResolver;

    move-object/from16 p4, v0

    .end local v0    # "$r6":Landroid/content/ContentResolver;, ""
    .local p4, "$r6":Landroid/content/ContentResolver;, ""
    move-object/from16 v0, p0

    .end local v18    # "$r17":Landroid/database/ContentObserver;, ""
    .local v0, "$r17":Landroid/database/ContentObserver;, ""
    iget-object v0, v0, Lio/flutter/view/g;->x:Landroid/database/ContentObserver;

    move-object/from16 v18, v0

    .end local v0    # "$r17":Landroid/database/ContentObserver;, ""
    .local v18, "$r17":Landroid/database/ContentObserver;, ""
    const/4 v4, 0x0

    move-object/from16 v0, p4

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_1
    if-eqz p5, :cond_2

    move-object/from16 v0, p5

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lio/flutter/plugin/platform/j;->a(Lio/flutter/view/g;)V

    :cond_2
    new-instance v21, Lio/flutter/view/AccessibilityViewEmbedder;

    .local v21, "$r19":Lio/flutter/view/AccessibilityViewEmbedder;, ""
    const v4, 0x10000

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lio/flutter/view/AccessibilityViewEmbedder;-><init>(Landroid/view/View;I)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lio/flutter/view/g;->e:Lio/flutter/view/AccessibilityViewEmbedder;

    return-void
    .end local v21    # "$r19":Lio/flutter/view/AccessibilityViewEmbedder;, ""
    .end local v8    # "$r11":Lio/flutter/view/d;, ""
    .end local v14    # "$i0":I, ""
    .end local v13    # "$r14":Landroid/view/accessibility/AccessibilityManager;, ""
    .end local v16    # "$r16":Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;, ""
    .end local v10    # "$r3":Landroid/os/Handler;, ""
    .end local v11    # "$r13":Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;, ""
    .end local v7    # "$r10":Lio/flutter/view/c;, ""
    .end local v12    # "$z0":Z, ""
    .end local v18    # "$r17":Landroid/database/ContentObserver;, ""
    .end local p4    # "$r6":Landroid/content/ContentResolver;, ""
    .end local v3    # "$r7":Ljava/util/HashMap;, ""
    .end local v6    # "$r9":Ljava/lang/Integer;, ""
    .end local v9    # "$r12":Lio/flutter/view/e;, ""
    .end local v15    # "$r15":Lio/flutter/view/f;, ""
    .end local v5    # "$r8":Ljava/util/ArrayList;, ""
    .end local v19    # "$r18":Landroid/net/Uri;, ""
    .end local p3    # "$r5":Landroid/view/accessibility/AccessibilityManager;, ""
.end method

.method static synthetic a(Lio/flutter/view/g;I)I
    .locals 0

    iput p1, p0, Lio/flutter/view/g;->m:I

    return p1
.end method

.method static synthetic a(Lio/flutter/view/g;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lio/flutter/view/g;->b:Landroid/view/View;

    .local v0, "r1":Landroid/view/View;, ""
    return-object v0
    .end local v0    # "r1":Landroid/view/View;, ""
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;)Landroid/view/accessibility/AccessibilityEvent;
    .locals 8

    const/16 v1, 0x10

    invoke-direct {p0, p1, v1}, Lio/flutter/view/g;->b(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .local v0, "$r3":Landroid/view/accessibility/AccessibilityEvent;, ""
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityEvent;->setBeforeText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    .local v2, "$r4":Ljava/util/List;, ""
    invoke-interface {v2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .local p1, "$i0":I, ""
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    .local v3, "$i1":I, ""
    if-ge p1, v3, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge p1, v3, :cond_1

    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .local v4, "$c2":C, ""
    invoke-virtual {p3, p1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .local v5, "$c3":C, ""
    if-eq v4, v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-lt p1, v3, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    if-lt p1, v3, :cond_2

    const/4 v6, 0x0

    return-object v6

    :cond_2
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v7, v3, -0x1

    .local v7, "$i4":I, ""
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_2
    if-lt v7, p1, :cond_4

    if-lt v3, p1, :cond_4

    invoke-virtual {p2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {p3, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v7, v7, -0x1

    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_4
    :goto_3
    sub-int/2addr v7, p1

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v0, v7}, Landroid/view/accessibility/AccessibilityEvent;->setRemovedCount(I)V

    sub-int p1, v3, p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setAddedCount(I)V

    return-object v0
    .end local v2    # "$r4":Ljava/util/List;, ""
    .end local p1    # "$i0":I, ""
    .end local v5    # "$c3":C, ""
    .end local v4    # "$c2":C, ""
    .end local v7    # "$i4":I, ""
    .end local v3    # "$i1":I, ""
    .end local v0    # "$r3":Landroid/view/accessibility/AccessibilityEvent;, ""
.end method

.method private a(I)Lio/flutter/view/g$f;
    .locals 5

    iget-object v0, p0, Lio/flutter/view/g;->h:Ljava/util/Map;

    .local v0, "$r1":Ljava/util/Map;, ""
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .local v1, "$r2":Ljava/lang/Integer;, ""
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .local v2, "$r3":Ljava/lang/Object;, ""
    move-object v4, v2

    check-cast v4, Lio/flutter/view/g$f;

    move-object v3, v4

    .local v3, "$r4":Lio/flutter/view/g$f;, ""
    if-nez v3, :cond_0

    new-instance v3, Lio/flutter/view/g$f;

    invoke-direct {v3, p0}, Lio/flutter/view/g$f;-><init>(Lio/flutter/view/g;)V

    invoke-static {v3, p1}, Lio/flutter/view/g$f;->a(Lio/flutter/view/g$f;I)I

    iget-object v0, p0, Lio/flutter/view/g;->h:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v3
    .end local v3    # "$r4":Lio/flutter/view/g$f;, ""
    .end local v2    # "$r3":Ljava/lang/Object;, ""
    .end local v0    # "$r1":Ljava/util/Map;, ""
    .end local v1    # "$r2":Ljava/lang/Integer;, ""
.end method

.method private a(FF)V
    .locals 7

    iget-object v0, p0, Lio/flutter/view/g;->h:Ljava/util/Map;

    .local v0, "$r1":Ljava/util/Map;, ""
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    .local v1, "$z0":Z, ""
    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lio/flutter/view/g;->f()Lio/flutter/view/g$f;

    move-result-object v2

    .local v2, "$r2":Lio/flutter/view/g$f;, ""
    const/4 v4, 0x4

    new-array v3, v4, [F

    .local v3, "$r3":[F, ""
    const/4 v4, 0x0

    aput p1, v3, v4

    const/4 v4, 0x1

    aput p2, v3, v4

    const/4 p1, 0x0

    .local p1, "$f0":F, ""
    const/4 v4, 0x2

    aput p1, v3, v4

    const p1, 0x4e7e0000

    const/4 v4, 0x3

    aput p1, v3, v4

    invoke-static {v2, v3}, Lio/flutter/view/g$f;->a(Lio/flutter/view/g$f;[F)Lio/flutter/view/g$f;

    move-result-object v2

    iget-object v5, p0, Lio/flutter/view/g;->p:Lio/flutter/view/g$f;

    .local v5, "$r4":Lio/flutter/view/g$f;, ""
    if-eq v2, v5, :cond_3

    if-eqz v2, :cond_1

    invoke-static {v2}, Lio/flutter/view/g$f;->d(Lio/flutter/view/g$f;)I

    move-result v6

    .local v6, "$i0":I, ""
    const/16 v4, 0x80

    invoke-direct {p0, v6, v4}, Lio/flutter/view/g;->a(II)V

    :cond_1
    iget-object v5, p0, Lio/flutter/view/g;->p:Lio/flutter/view/g$f;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lio/flutter/view/g;->p:Lio/flutter/view/g$f;

    invoke-static {v5}, Lio/flutter/view/g$f;->d(Lio/flutter/view/g$f;)I

    move-result v6

    const/16 v4, 0x100

    invoke-direct {p0, v6, v4}, Lio/flutter/view/g;->a(II)V

    :cond_2
    iput-object v2, p0, Lio/flutter/view/g;->p:Lio/flutter/view/g$f;

    :cond_3
    return-void
    .end local v1    # "$z0":Z, ""
    .end local v3    # "$r3":[F, ""
    .end local v5    # "$r4":Lio/flutter/view/g$f;, ""
    .end local v0    # "$r1":Ljava/util/Map;, ""
    .end local v2    # "$r2":Lio/flutter/view/g$f;, ""
    .end local v6    # "$i0":I, ""
    .end local p1    # "$f0":F, ""
.end method

.method private a(II)V
    .locals 4

    iget-object v0, p0, Lio/flutter/view/g;->d:Landroid/view/accessibility/AccessibilityManager;

    .local v0, "$r1":Landroid/view/accessibility/AccessibilityManager;, ""
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    .local v1, "$z0":Z, ""
    if-nez v1, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    iget-object v2, p0, Lio/flutter/view/g;->b:Landroid/view/View;

    .local v2, "$r2":Landroid/view/View;, ""
    invoke-virtual {v2, p2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    return-void

    :cond_1
    invoke-direct {p0, p1, p2}, Lio/flutter/view/g;->b(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v3

    .local v3, "$r3":Landroid/view/accessibility/AccessibilityEvent;, ""
    invoke-direct {p0, v3}, Lio/flutter/view/g;->a(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
    .end local v2    # "$r2":Landroid/view/View;, ""
    .end local v0    # "$r1":Landroid/view/accessibility/AccessibilityManager;, ""
    .end local v1    # "$z0":Z, ""
    .end local v3    # "$r3":Landroid/view/accessibility/AccessibilityEvent;, ""
.end method

.method private a(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4

    iget-object v0, p0, Lio/flutter/view/g;->d:Landroid/view/accessibility/AccessibilityManager;

    .local v0, "$r3":Landroid/view/accessibility/AccessibilityManager;, ""
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    .local v1, "$z0":Z, ""
    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lio/flutter/view/g;->b:Landroid/view/View;

    .local v2, "$r2":Landroid/view/View;, ""
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .local v3, "$r4":Landroid/view/ViewParent;, ""
    iget-object v2, p0, Lio/flutter/view/g;->b:Landroid/view/View;

    invoke-interface {v3, v2, p1}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    return-void
    .end local v2    # "$r2":Landroid/view/View;, ""
    .end local v1    # "$z0":Z, ""
    .end local v0    # "$r3":Landroid/view/accessibility/AccessibilityManager;, ""
    .end local v3    # "$r4":Landroid/view/ViewParent;, ""
.end method

.method static synthetic a(Lio/flutter/view/g;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/flutter/view/g;->a(II)V

    return-void
.end method

.method static synthetic a(Lio/flutter/view/g;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/flutter/view/g;->a(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method static synthetic a(Lio/flutter/view/g$f;)Z
    .locals 2

    sget-object v0, Lio/flutter/view/g$d;->s:Lio/flutter/view/g$d;

    .local v0, "$r0":Lio/flutter/view/g$d;, ""
    invoke-static {p0, v0}, Lio/flutter/view/g$f;->a(Lio/flutter/view/g$f;Lio/flutter/view/g$d;)Z

    move-result v1

    .local v1, "$z0":Z, ""
    return v1
    .end local v1    # "$z0":Z, ""
    .end local v0    # "$r0":Lio/flutter/view/g$d;, ""
.end method

.method private a(Lio/flutter/view/g$f;ILandroid/os/Bundle;Z)Z
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    const-string v1, "ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .local v0, "$i1":I, ""
    const-string v1, "ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .local v2, "$z1":Z, ""
    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :goto_0
    goto :goto_1

    :sswitch_0
    if-eqz p4, :cond_0

    sget-object v3, Lio/flutter/view/g$b;->t:Lio/flutter/view/g$b;

    .local v3, "$r3":Lio/flutter/view/g$b;, ""
    invoke-static {p1, v3}, Lio/flutter/view/g$f;->a(Lio/flutter/view/g$f;Lio/flutter/view/g$b;)Z

    move-result v4

    .local v4, "$z2":Z, ""
    if-eqz v4, :cond_0

    iget-object v5, p0, Lio/flutter/view/g;->c:Lio/flutter/embedding/engine/e/b;

    .local v5, "$r4":Lio/flutter/embedding/engine/e/b;, ""
    sget-object v3, Lio/flutter/view/g$b;->t:Lio/flutter/view/g$b;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .local v6, "$r5":Ljava/lang/Boolean;, ""
    invoke-virtual {v5, p2, v3, v6}, Lio/flutter/embedding/engine/e/b;->a(ILio/flutter/view/g$b;Ljava/lang/Object;)V

    const/4 v7, 0x1

    return v7

    :cond_0
    if-nez p4, :cond_2

    sget-object v3, Lio/flutter/view/g$b;->u:Lio/flutter/view/g$b;

    invoke-static {p1, v3}, Lio/flutter/view/g$f;->a(Lio/flutter/view/g$f;Lio/flutter/view/g$b;)Z

    move-result p4

    .local p4, "$z0":Z, ""
    if-eqz p4, :cond_2

    iget-object v5, p0, Lio/flutter/view/g;->c:Lio/flutter/embedding/engine/e/b;

    sget-object v3, Lio/flutter/view/g$b;->u:Lio/flutter/view/g$b;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, p2, v3, v6}, Lio/flutter/embedding/engine/e/b;->a(ILio/flutter/view/g$b;Ljava/lang/Object;)V

    const/4 v7, 0x1

    return v7

    :sswitch_1
    if-eqz p4, :cond_1

    sget-object v3, Lio/flutter/view/g$b;->j:Lio/flutter/view/g$b;

    invoke-static {p1, v3}, Lio/flutter/view/g$f;->a(Lio/flutter/view/g$f;Lio/flutter/view/g$b;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v5, p0, Lio/flutter/view/g;->c:Lio/flutter/embedding/engine/e/b;

    sget-object v3, Lio/flutter/view/g$b;->j:Lio/flutter/view/g$b;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, p2, v3, v6}, Lio/flutter/embedding/engine/e/b;->a(ILio/flutter/view/g$b;Ljava/lang/Object;)V

    const/4 v7, 0x1

    return v7

    :cond_1
    if-nez p4, :cond_2

    sget-object v3, Lio/flutter/view/g$b;->k:Lio/flutter/view/g$b;

    invoke-static {p1, v3}, Lio/flutter/view/g$f;->a(Lio/flutter/view/g$f;Lio/flutter/view/g$b;)Z

    move-result p4

    if-eqz p4, :cond_2

    iget-object v5, p0, Lio/flutter/view/g;->c:Lio/flutter/embedding/engine/e/b;

    sget-object v3, Lio/flutter/view/g$b;->k:Lio/flutter/view/g$b;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, p2, v3, v6}, Lio/flutter/embedding/engine/e/b;->a(ILio/flutter/view/g$b;Ljava/lang/Object;)V

    const/4 v7, 0x1

    return v7

    :cond_2
    :goto_1
    const/4 v7, 0x0

    return v7

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
    .end sparse-switch
    .end local v3    # "$r3":Lio/flutter/view/g$b;, ""
    .end local v5    # "$r4":Lio/flutter/embedding/engine/e/b;, ""
    .end local v6    # "$r5":Ljava/lang/Boolean;, ""
    .end local v0    # "$i1":I, ""
    .end local v2    # "$z1":Z, ""
    .end local v4    # "$z2":Z, ""
    .end local p4    # "$z0":Z, ""
.end method

.method static synthetic a(Lio/flutter/view/g$f;Lio/flutter/view/g$f;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private b(II)Landroid/view/accessibility/AccessibilityEvent;
    .locals 4

    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .local v0, "$r1":Landroid/view/accessibility/AccessibilityEvent;, ""
    iget-object v1, p0, Lio/flutter/view/g;->b:Landroid/view/View;

    .local v1, "$r2":Landroid/view/View;, ""
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .local v2, "$r3":Landroid/content/Context;, ""
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .local v3, "$r4":Ljava/lang/String;, ""
    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lio/flutter/view/g;->b:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    return-object v0
    .end local v2    # "$r3":Landroid/content/Context;, ""
    .end local v0    # "$r1":Landroid/view/accessibility/AccessibilityEvent;, ""
    .end local v1    # "$r2":Landroid/view/View;, ""
    .end local v3    # "$r4":Ljava/lang/String;, ""
.end method

.method static synthetic b(Lio/flutter/view/g;II)Landroid/view/accessibility/AccessibilityEvent;
    .locals 1

    invoke-direct {p0, p1, p2}, Lio/flutter/view/g;->b(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .local v0, "$r0":Landroid/view/accessibility/AccessibilityEvent;, ""
    return-object v0
    .end local v0    # "$r0":Landroid/view/accessibility/AccessibilityEvent;, ""
.end method

.method static synthetic b(Lio/flutter/view/g;)Lio/flutter/embedding/engine/e/b$a;
    .locals 1

    iget-object v0, p0, Lio/flutter/view/g;->u:Lio/flutter/embedding/engine/e/b$a;

    .local v0, "r1":Lio/flutter/embedding/engine/e/b$a;, ""
    return-object v0
    .end local v0    # "r1":Lio/flutter/embedding/engine/e/b$a;, ""
.end method

.method private b(I)Lio/flutter/view/g$c;
    .locals 6

    iget-object v0, p0, Lio/flutter/view/g;->i:Ljava/util/Map;

    .local v0, "$r1":Ljava/util/Map;, ""
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .local v1, "$r2":Ljava/lang/Integer;, ""
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .local v2, "$r3":Ljava/lang/Object;, ""
    move-object v4, v2

    check-cast v4, Lio/flutter/view/g$c;

    move-object v3, v4

    .local v3, "$r4":Lio/flutter/view/g$c;, ""
    if-nez v3, :cond_0

    new-instance v3, Lio/flutter/view/g$c;

    invoke-direct {v3}, Lio/flutter/view/g$c;-><init>()V

    invoke-static {v3, p1}, Lio/flutter/view/g$c;->a(Lio/flutter/view/g$c;I)I

    sget v5, Lio/flutter/view/g;->a:I

    .local v5, "$i1":I, ""
    add-int/2addr v5, p1

    invoke-static {v3, v5}, Lio/flutter/view/g$c;->b(Lio/flutter/view/g$c;I)I

    iget-object v0, p0, Lio/flutter/view/g;->i:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v3
    .end local v5    # "$i1":I, ""
    .end local v2    # "$r3":Ljava/lang/Object;, ""
    .end local v0    # "$r1":Ljava/util/Map;, ""
    .end local v1    # "$r2":Ljava/lang/Integer;, ""
    .end local v3    # "$r4":Lio/flutter/view/g$c;, ""
.end method

.method static synthetic b(Lio/flutter/view/g;I)Lio/flutter/view/g$f;
    .locals 1

    invoke-direct {p0, p1}, Lio/flutter/view/g;->a(I)Lio/flutter/view/g$f;

    move-result-object v0

    .local v0, "$r0":Lio/flutter/view/g$f;, ""
    return-object v0
    .end local v0    # "$r0":Lio/flutter/view/g$f;, ""
.end method

.method private b(Lio/flutter/view/g$f;)Z
    .locals 6

    invoke-static {p1}, Lio/flutter/view/g$f;->a(Lio/flutter/view/g$f;)I

    move-result v0

    .local v0, "$i0":I, ""
    if-lez v0, :cond_1

    iget-object v1, p0, Lio/flutter/view/g;->j:Lio/flutter/view/g$f;

    .local v1, "$r3":Lio/flutter/view/g$f;, ""
    new-instance v2, Lio/flutter/view/a;

    .local v2, "$r1":Lio/flutter/view/a;, ""
    invoke-direct {v2, p1}, Lio/flutter/view/a;-><init>(Lio/flutter/view/g$f;)V

    invoke-static {v1, v2}, Lio/flutter/view/g$f;->a(Lio/flutter/view/g$f;Lb/a/d/c;)Z

    move-result v3

    .local v3, "$z0":Z, ""
    if-nez v3, :cond_0

    iget-object p1, p0, Lio/flutter/view/g;->j:Lio/flutter/view/g$f;

    .local p1, "$r2":Lio/flutter/view/g$f;, ""
    sget-object v4, Lio/flutter/view/b;->a:Lio/flutter/view/b;

    .local v4, "$r4":Lio/flutter/view/b;, ""
    invoke-static {p1, v4}, Lio/flutter/view/g$f;->a(Lio/flutter/view/g$f;Lb/a/d/c;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    const/4 v5, 0x1

    return v5

    :cond_1
    const/4 v5, 0x0

    return v5
    .end local v1    # "$r3":Lio/flutter/view/g$f;, ""
    .end local v3    # "$z0":Z, ""
    .end local p1    # "$r2":Lio/flutter/view/g$f;, ""
    .end local v2    # "$r1":Lio/flutter/view/a;, ""
    .end local v0    # "$i0":I, ""
    .end local v4    # "$r4":Lio/flutter/view/b;, ""
.end method

.method static synthetic c(Lio/flutter/view/g;)Lio/flutter/embedding/engine/e/b;
    .locals 1

    iget-object v0, p0, Lio/flutter/view/g;->c:Lio/flutter/embedding/engine/e/b;

    .local v0, "r1":Lio/flutter/embedding/engine/e/b;, ""
    return-object v0
    .end local v0    # "r1":Lio/flutter/embedding/engine/e/b;, ""
.end method

.method static synthetic c(Lio/flutter/view/g;I)Lio/flutter/view/g$c;
    .locals 1

    invoke-direct {p0, p1}, Lio/flutter/view/g;->b(I)Lio/flutter/view/g$c;

    move-result-object v0

    .local v0, "$r0":Lio/flutter/view/g$c;, ""
    return-object v0
    .end local v0    # "$r0":Lio/flutter/view/g$c;, ""
.end method

.method private c(I)V
    .locals 2

    const/16 v1, 0x800

    invoke-direct {p0, p1, v1}, Lio/flutter/view/g;->b(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .local v0, "$r1":Landroid/view/accessibility/AccessibilityEvent;, ""
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .local p1, "$i0":I, ""
    const/16 v1, 0x13

    if-lt p1, v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setContentChangeTypes(I)V

    :cond_0
    invoke-direct {p0, v0}, Lio/flutter/view/g;->a(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
    .end local v0    # "$r1":Landroid/view/accessibility/AccessibilityEvent;, ""
    .end local p1    # "$i0":I, ""
.end method

.method private c(Lio/flutter/view/g$f;)V
    .locals 5

    invoke-static {p1}, Lio/flutter/view/g$f;->d(Lio/flutter/view/g$f;)I

    move-result v0

    .local v0, "$i0":I, ""
    const/16 v2, 0x20

    invoke-direct {p0, v0, v2}, Lio/flutter/view/g;->b(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .local v1, "$r2":Landroid/view/accessibility/AccessibilityEvent;, ""
    invoke-static {p1}, Lio/flutter/view/g$f;->F(Lio/flutter/view/g$f;)Ljava/lang/String;

    move-result-object v3

    .local v3, "$r3":Ljava/lang/String;, ""
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v4

    .local v4, "$r4":Ljava/util/List;, ""
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v1}, Lio/flutter/view/g;->a(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
    .end local v3    # "$r3":Ljava/lang/String;, ""
    .end local v4    # "$r4":Ljava/util/List;, ""
    .end local v0    # "$i0":I, ""
    .end local v1    # "$r2":Landroid/view/accessibility/AccessibilityEvent;, ""
.end method

.method static synthetic d(Lio/flutter/view/g;)Lio/flutter/view/g$e;
    .locals 1

    iget-object v0, p0, Lio/flutter/view/g;->t:Lio/flutter/view/g$e;

    .local v0, "r1":Lio/flutter/view/g$e;, ""
    return-object v0
    .end local v0    # "r1":Lio/flutter/view/g$e;, ""
.end method

.method private d(Lio/flutter/view/g$f;)V
    .locals 4

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lio/flutter/view/g$f;->a(Lio/flutter/view/g$f;Lio/flutter/view/g$f;)Lio/flutter/view/g$f;

    iget-object v1, p0, Lio/flutter/view/g;->j:Lio/flutter/view/g$f;

    .local v1, "$r2":Lio/flutter/view/g$f;, ""
    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lio/flutter/view/g;->j:Lio/flutter/view/g$f;

    invoke-static {v1}, Lio/flutter/view/g$f;->d(Lio/flutter/view/g$f;)I

    move-result v2

    .local v2, "$i0":I, ""
    const v3, 0x10000

    invoke-direct {p0, v2, v3}, Lio/flutter/view/g;->a(II)V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/flutter/view/g;->j:Lio/flutter/view/g$f;

    :cond_0
    iget-object v1, p0, Lio/flutter/view/g;->n:Lio/flutter/view/g$f;

    if-ne v1, p1, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lio/flutter/view/g;->n:Lio/flutter/view/g$f;

    :cond_1
    iget-object v1, p0, Lio/flutter/view/g;->p:Lio/flutter/view/g$f;

    if-ne v1, p1, :cond_2

    const/4 v0, 0x0

    iput-object v0, p0, Lio/flutter/view/g;->p:Lio/flutter/view/g$f;

    :cond_2
    return-void
    .end local v2    # "$i0":I, ""
    .end local v1    # "$r2":Lio/flutter/view/g$f;, ""
.end method

.method static synthetic e(Lio/flutter/view/g;)Landroid/view/accessibility/AccessibilityManager;
    .locals 1

    iget-object v0, p0, Lio/flutter/view/g;->d:Landroid/view/accessibility/AccessibilityManager;

    .local v0, "r1":Landroid/view/accessibility/AccessibilityManager;, ""
    return-object v0
    .end local v0    # "r1":Landroid/view/accessibility/AccessibilityManager;, ""
.end method

.method private e()V
    .locals 2

    iget-object v0, p0, Lio/flutter/view/g;->c:Lio/flutter/embedding/engine/e/b;

    .local v0, "$r1":Lio/flutter/embedding/engine/e/b;, ""
    iget v1, p0, Lio/flutter/view/g;->m:I

    .local v1, "$i0":I, ""
    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/e/b;->a(I)V

    return-void
    .end local v0    # "$r1":Lio/flutter/embedding/engine/e/b;, ""
    .end local v1    # "$i0":I, ""
.end method

.method static synthetic f(Lio/flutter/view/g;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lio/flutter/view/g;->g:Landroid/content/ContentResolver;

    .local v0, "r1":Landroid/content/ContentResolver;, ""
    return-object v0
    .end local v0    # "r1":Landroid/content/ContentResolver;, ""
.end method

.method private f()Lio/flutter/view/g$f;
    .locals 6

    iget-object v0, p0, Lio/flutter/view/g;->h:Ljava/util/Map;

    .local v0, "$r1":Ljava/util/Map;, ""
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .local v1, "$r2":Ljava/lang/Integer;, ""
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .local v3, "$r3":Ljava/lang/Object;, ""
    move-object v5, v3

    check-cast v5, Lio/flutter/view/g$f;

    move-object v4, v5

    .local v4, "$r4":Lio/flutter/view/g$f;, ""
    return-object v4
    .end local v3    # "$r3":Ljava/lang/Object;, ""
    .end local v4    # "$r4":Lio/flutter/view/g$f;, ""
    .end local v0    # "$r1":Ljava/util/Map;, ""
    .end local v1    # "$r2":Ljava/lang/Integer;, ""
.end method

.method static synthetic g(Lio/flutter/view/g;)I
    .locals 1

    iget v0, p0, Lio/flutter/view/g;->m:I

    .local v0, "i0":I, ""
    return v0
    .end local v0    # "i0":I, ""
.end method

.method private g()V
    .locals 4

    iget-object v0, p0, Lio/flutter/view/g;->p:Lio/flutter/view/g$f;

    .local v0, "$r1":Lio/flutter/view/g$f;, ""
    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/flutter/view/g;->p:Lio/flutter/view/g$f;

    invoke-static {v0}, Lio/flutter/view/g$f;->d(Lio/flutter/view/g$f;)I

    move-result v1

    .local v1, "$i0":I, ""
    const/16 v2, 0x100

    invoke-direct {p0, v1, v2}, Lio/flutter/view/g;->a(II)V

    const/4 v3, 0x0

    iput-object v3, p0, Lio/flutter/view/g;->p:Lio/flutter/view/g$f;

    :cond_0
    return-void
    .end local v1    # "$i0":I, ""
    .end local v0    # "$r1":Lio/flutter/view/g$f;, ""
.end method

.method static synthetic h(Lio/flutter/view/g;)V
    .locals 0

    invoke-direct {p0}, Lio/flutter/view/g;->e()V

    return-void
.end method

.method static synthetic i(Lio/flutter/view/g;)V
    .locals 0

    invoke-direct {p0}, Lio/flutter/view/g;->g()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 9

    iget-object v0, p0, Lio/flutter/view/g;->f:Lio/flutter/plugin/platform/j;

    .local v0, "$r1":Lio/flutter/plugin/platform/j;, ""
    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/flutter/view/g;->f:Lio/flutter/plugin/platform/j;

    invoke-interface {v0}, Lio/flutter/plugin/platform/j;->a()V

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lio/flutter/view/g;->a(Lio/flutter/view/g$e;)V

    iget-object v2, p0, Lio/flutter/view/g;->d:Landroid/view/accessibility/AccessibilityManager;

    .local v2, "$r2":Landroid/view/accessibility/AccessibilityManager;, ""
    iget-object v3, p0, Lio/flutter/view/g;->v:Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;

    .local v3, "$r3":Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;, ""
    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityManager;->removeAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .local v4, "$i0":I, ""
    const/16 v5, 0x13

    if-lt v4, v5, :cond_1

    iget-object v2, p0, Lio/flutter/view/g;->d:Landroid/view/accessibility/AccessibilityManager;

    iget-object v6, p0, Lio/flutter/view/g;->w:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    .local v6, "$r4":Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;, ""
    invoke-virtual {v2, v6}, Landroid/view/accessibility/AccessibilityManager;->removeTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    :cond_1
    iget-object v7, p0, Lio/flutter/view/g;->g:Landroid/content/ContentResolver;

    .local v7, "$r5":Landroid/content/ContentResolver;, ""
    iget-object v8, p0, Lio/flutter/view/g;->x:Landroid/database/ContentObserver;

    .local v8, "$r6":Landroid/database/ContentObserver;, ""
    invoke-virtual {v7, v8}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
    .end local v0    # "$r1":Lio/flutter/plugin/platform/j;, ""
    .end local v3    # "$r3":Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;, ""
    .end local v4    # "$i0":I, ""
    .end local v7    # "$r5":Landroid/content/ContentResolver;, ""
    .end local v8    # "$r6":Landroid/database/ContentObserver;, ""
    .end local v2    # "$r2":Landroid/view/accessibility/AccessibilityManager;, ""
    .end local v6    # "$r4":Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;, ""
.end method

.method public a(Lio/flutter/view/g$e;)V
    .locals 0

    iput-object p1, p0, Lio/flutter/view/g;->t:Lio/flutter/view/g$e;

    return-void
.end method

.method a(Ljava/nio/ByteBuffer;[Ljava/lang/String;)V
    .locals 6

    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    .local v0, "$z0":Z, ""
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .local v1, "$i0":I, ""
    invoke-direct {p0, v1}, Lio/flutter/view/g;->b(I)Lio/flutter/view/g$c;

    move-result-object v2

    .local v2, "$r3":Lio/flutter/view/g$c;, ""
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    invoke-static {v2, v1}, Lio/flutter/view/g$c;->c(Lio/flutter/view/g$c;I)I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    const/4 v3, 0x0

    .local v3, "$r4":Ljava/lang/String;, ""
    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    const/4 v5, 0x0

    .local v5, "$r5":Ljava/lang/String;, ""
    goto :goto_1

    :cond_0
    aget-object v5, p2, v1

    :goto_1
    invoke-static {v2, v5}, Lio/flutter/view/g$c;->a(Lio/flutter/view/g$c;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    const/4 v4, -0x1

    if-ne v1, v4, :cond_1

    goto :goto_2

    :cond_1
    aget-object v3, p2, v1

    :goto_2
    invoke-static {v2, v3}, Lio/flutter/view/g$c;->b(Lio/flutter/view/g$c;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_2
    return-void
    .end local v1    # "$i0":I, ""
    .end local v0    # "$z0":Z, ""
    .end local v2    # "$r3":Lio/flutter/view/g$c;, ""
    .end local v3    # "$r4":Ljava/lang/String;, ""
    .end local v5    # "$r5":Ljava/lang/String;, ""
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 14

    iget-object v0, p0, Lio/flutter/view/g;->d:Landroid/view/accessibility/AccessibilityManager;

    .local v0, "$r2":Landroid/view/accessibility/AccessibilityManager;, ""
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    .local v1, "$z0":Z, ""
    if-nez v1, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_0
    iget-object v3, p0, Lio/flutter/view/g;->h:Ljava/util/Map;

    .local v3, "$r3":Ljava/util/Map;, ""
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    return v2

    :cond_1
    invoke-direct {p0}, Lio/flutter/view/g;->f()Lio/flutter/view/g$f;

    move-result-object v4

    .local v4, "$r4":Lio/flutter/view/g$f;, ""
    const/4 v2, 0x4

    new-array v5, v2, [F

    .local v5, "$r5":[F, ""
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    .local v6, "$f0":F, ""
    const/4 v2, 0x0

    aput v6, v5, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    const/4 v2, 0x1

    aput v6, v5, v2

    const/4 v6, 0x0

    const/4 v2, 0x2

    aput v6, v5, v2

    const v6, 0x4e7e0000

    const/4 v2, 0x3

    aput v6, v5, v2

    invoke-static {v4, v5}, Lio/flutter/view/g$f;->a(Lio/flutter/view/g$f;[F)Lio/flutter/view/g$f;

    move-result-object v4

    invoke-static {v4}, Lio/flutter/view/g$f;->b(Lio/flutter/view/g$f;)I

    move-result v7

    .local v7, "$i0":I, ""
    const/4 v2, -0x1

    if-eq v7, v2, :cond_2

    iget-object v8, p0, Lio/flutter/view/g;->e:Lio/flutter/view/AccessibilityViewEmbedder;

    .local v8, "$r6":Lio/flutter/view/AccessibilityViewEmbedder;, ""
    invoke-static {v4}, Lio/flutter/view/g$f;->d(Lio/flutter/view/g$f;)I

    move-result v7

    invoke-virtual {v8, v7, p1}, Lio/flutter/view/AccessibilityViewEmbedder;->onAccessibilityHoverEvent(ILandroid/view/MotionEvent;)Z

    move-result v1

    return v1

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    const/16 v2, 0x9

    if-eq v7, v2, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    const/4 v2, 0x7

    if-ne v7, v2, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    const/16 v2, 0xa

    if-ne v7, v2, :cond_4

    invoke-direct {p0}, Lio/flutter/view/g;->g()V

    const/4 v2, 0x1

    return v2

    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    .local v9, "r9":Ljava/lang/StringBuilder;, ""
    move-object v10, v9

    .local v10, "$r7":Ljava/lang/StringBuilder;, ""
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "unexpected accessibility hover event: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .local v12, "$r8":Ljava/lang/String;, ""
    const-string v11, "flutter"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2

    :cond_5
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    .local v13, "$f1":F, ""
    invoke-direct {p0, v6, v13}, Lio/flutter/view/g;->a(FF)V

    const/4 v2, 0x1

    return v2
    .end local v3    # "$r3":Ljava/util/Map;, ""
    .end local v9    # "r9":Ljava/lang/StringBuilder;, ""
    .end local v13    # "$f1":F, ""
    .end local v5    # "$r5":[F, ""
    .end local v10    # "$r7":Ljava/lang/StringBuilder;, ""
    .end local v7    # "$i0":I, ""
    .end local v4    # "$r4":Lio/flutter/view/g$f;, ""
    .end local v6    # "$f0":F, ""
    .end local v8    # "$r6":Lio/flutter/view/AccessibilityViewEmbedder;, ""
    .end local v0    # "$r2":Landroid/view/accessibility/AccessibilityManager;, ""
    .end local v1    # "$z0":Z, ""
    .end local v12    # "$r8":Ljava/lang/String;, ""
.end method

.method public a(Landroid/view/View;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 6

    iget-object v0, p0, Lio/flutter/view/g;->e:Lio/flutter/view/AccessibilityViewEmbedder;

    .local v0, "$r4":Lio/flutter/view/AccessibilityViewEmbedder;, ""
    invoke-virtual {v0, p1, p2, p3}, Lio/flutter/view/AccessibilityViewEmbedder;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    .local v1, "$z0":Z, ""
    if-nez v1, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_0
    iget-object v0, p0, Lio/flutter/view/g;->e:Lio/flutter/view/AccessibilityViewEmbedder;

    invoke-virtual {v0, p1, p3}, Lio/flutter/view/AccessibilityViewEmbedder;->getRecordFlutterId(Landroid/view/View;Landroid/view/accessibility/AccessibilityRecord;)Ljava/lang/Integer;

    move-result-object v3

    .local v3, "$r5":Ljava/lang/Integer;, ""
    if-nez v3, :cond_1

    const/4 v2, 0x0

    return v2

    :cond_1
    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v4

    .local v4, "$i0":I, ""
    const/16 v2, 0x8

    if-eq v4, v2, :cond_5

    const/16 v2, 0x80

    if-eq v4, v2, :cond_4

    const v2, 0x8000

    if-eq v4, v2, :cond_3

    const v2, 0x10000

    if-eq v4, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    iput-object v5, p0, Lio/flutter/view/g;->l:Ljava/lang/Integer;

    const/4 v5, 0x0

    iput-object v5, p0, Lio/flutter/view/g;->k:Ljava/lang/Integer;

    goto :goto_0

    :cond_3
    iput-object v3, p0, Lio/flutter/view/g;->k:Ljava/lang/Integer;

    const/4 v5, 0x0

    iput-object v5, p0, Lio/flutter/view/g;->j:Lio/flutter/view/g$f;

    goto :goto_0

    :cond_4
    const/4 v5, 0x0

    iput-object v5, p0, Lio/flutter/view/g;->p:Lio/flutter/view/g$f;

    goto :goto_0

    :cond_5
    iput-object v3, p0, Lio/flutter/view/g;->l:Ljava/lang/Integer;

    const/4 v5, 0x0

    iput-object v5, p0, Lio/flutter/view/g;->n:Lio/flutter/view/g$f;

    :goto_0
    const/4 v2, 0x1

    return v2
    .end local v1    # "$z0":Z, ""
    .end local v3    # "$r5":Ljava/lang/Integer;, ""
    .end local v0    # "$r4":Lio/flutter/view/AccessibilityViewEmbedder;, ""
    .end local v4    # "$i0":I, ""
.end method

.method b(Ljava/nio/ByteBuffer;[Ljava/lang/String;)V
    .locals 44

    new-instance v3, Ljava/util/ArrayList;

    .local v3, "$r3":Ljava/util/ArrayList;, ""
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    :goto_0
    move-object/from16 v0, p1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    .local v4, "$z0":Z, ""
    if-eqz v4, :cond_3

    move-object/from16 v0, p1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    .local v5, "$i0":I, ""
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lio/flutter/view/g;->a(I)Lio/flutter/view/g$f;

    move-result-object v6

    .local v6, "$r4":Lio/flutter/view/g$f;, ""
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v6, v0, v1}, Lio/flutter/view/g$f;->a(Lio/flutter/view/g$f;Ljava/nio/ByteBuffer;[Ljava/lang/String;)V

    sget-object v7, Lio/flutter/view/g$d;->n:Lio/flutter/view/g$d;

    .local v7, "$r5":Lio/flutter/view/g$d;, ""
    invoke-static {v6, v7}, Lio/flutter/view/g$f;->a(Lio/flutter/view/g$f;Lio/flutter/view/g$d;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    sget-object v7, Lio/flutter/view/g$d;->f:Lio/flutter/view/g$d;

    invoke-static {v6, v7}, Lio/flutter/view/g$f;->a(Lio/flutter/view/g$f;Lio/flutter/view/g$d;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iput-object v6, v0, Lio/flutter/view/g;->n:Lio/flutter/view/g$f;

    :cond_2
    invoke-static {v6}, Lio/flutter/view/g$f;->s(Lio/flutter/view/g$f;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    new-instance v8, Ljava/util/HashSet;

    .local v8, "$r6":Ljava/util/HashSet;, ""
    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, p0

    invoke-direct {v0}, Lio/flutter/view/g;->f()Lio/flutter/view/g$f;

    move-result-object v6

    new-instance v9, Ljava/util/ArrayList;

    .local v9, "$r7":Ljava/util/ArrayList;, ""
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    if-eqz v6, :cond_6

    const/16 v11, 0x10

    new-array v10, v11, [F

    .local v10, "$r8":[F, ""
    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x17

    if-lt v5, v11, :cond_5

    move-object/from16 v0, p0

    .local v12, "$r9":Landroid/view/View;, ""
    iget-object v12, v0, Lio/flutter/view/g;->b:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v13

    .local v13, "$r10":Landroid/view/WindowInsets;, ""
    if-eqz v13, :cond_5

    move-object/from16 v0, p0

    .local v14, "$r11":Ljava/lang/Integer;, ""
    iget-object v14, v0, Lio/flutter/view/g;->s:Ljava/lang/Integer;

    invoke-virtual {v13}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .local v15, "$r12":Ljava/lang/Integer;, ""
    invoke-virtual {v14, v15}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const/4 v11, 0x1

    invoke-static {v6, v11}, Lio/flutter/view/g$f;->a(Lio/flutter/view/g$f;Z)Z

    const/4 v11, 0x1

    invoke-static {v6, v11}, Lio/flutter/view/g$f;->b(Lio/flutter/view/g$f;Z)Z

    :cond_4
    invoke-virtual {v13}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lio/flutter/view/g;->s:Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v14, v0, Lio/flutter/view/g;->s:Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-float v0, v5

    .local v0, "$f0":F, ""
    move/from16 v16, v0

    .end local v0    # "$f0":F, ""
    .local v16, "$f0":F, ""
    const/4 v11, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v10, v11, v0, v1, v2}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    :cond_5
    const/4 v11, 0x0

    invoke-static {v6, v10, v8, v11}, Lio/flutter/view/g$f;->a(Lio/flutter/view/g$f;[FLjava/util/Set;Z)V

    invoke-static {v6, v9}, Lio/flutter/view/g$f;->a(Lio/flutter/view/g$f;Ljava/util/List;)V

    :cond_6
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "$r13":Ljava/util/Iterator;, ""
    const/4 v6, 0x0

    :cond_7
    :goto_1
    move-object/from16 v0, v19

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    move-object/from16 v0, v19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    .local v20, "$r14":Ljava/lang/Object;, ""
    move-object/from16 v22, v20

    check-cast v22, Lio/flutter/view/g$f;

    move-object/from16 v21, v22

    .local v21, "$r15":Lio/flutter/view/g$f;, ""
    move-object/from16 v0, p0

    .local v0, "$r16":Ljava/util/List;, ""
    iget-object v0, v0, Lio/flutter/view/g;->q:Ljava/util/List;

    move-object/from16 v23, v0

    .end local v0    # "$r16":Ljava/util/List;, ""
    .local v23, "$r16":Ljava/util/List;, ""
    move-object/from16 v0, v21

    invoke-static {v0}, Lio/flutter/view/g$f;->d(Lio/flutter/view/g$f;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v0, v23

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    move-object/from16 v6, v21

    goto :goto_1

    :cond_8
    if-nez v6, :cond_9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v5

    const/4 v11, 0x1

    sub-int/2addr v5, v11

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v24, v20

    check-cast v24, Lio/flutter/view/g$f;

    move-object/from16 v6, v24

    :cond_9
    if-eqz v6, :cond_a

    invoke-static {v6}, Lio/flutter/view/g$f;->d(Lio/flutter/view/g$f;)I

    move-result v5

    move-object/from16 v0, p0

    .local v0, "$i1":I, ""
    iget v0, v0, Lio/flutter/view/g;->r:I

    move/from16 v25, v0

    .end local v0    # "$i1":I, ""
    .local v25, "$i1":I, ""
    if-eq v5, v0, :cond_a

    invoke-static {v6}, Lio/flutter/view/g$f;->d(Lio/flutter/view/g$f;)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lio/flutter/view/g;->r:I

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lio/flutter/view/g;->c(Lio/flutter/view/g$f;)V

    :cond_a
    move-object/from16 v0, p0

    .end local v23    # "$r16":Ljava/util/List;, ""
    .local v0, "$r16":Ljava/util/List;, ""
    iget-object v0, v0, Lio/flutter/view/g;->q:Ljava/util/List;

    move-object/from16 v23, v0

    .end local v0    # "$r16":Ljava/util/List;, ""
    .local v23, "$r16":Ljava/util/List;, ""
    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_2
    move-object/from16 v0, v19

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    move-object/from16 v0, v19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v26, v20

    check-cast v26, Lio/flutter/view/g$f;

    move-object/from16 v6, v26

    move-object/from16 v0, p0

    .end local v23    # "$r16":Ljava/util/List;, ""
    .local v0, "$r16":Ljava/util/List;, ""
    iget-object v0, v0, Lio/flutter/view/g;->q:Ljava/util/List;

    move-object/from16 v23, v0

    .end local v0    # "$r16":Ljava/util/List;, ""
    .local v23, "$r16":Ljava/util/List;, ""
    invoke-static {v6}, Lio/flutter/view/g$f;->d(Lio/flutter/view/g$f;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v0, v23

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_b
    move-object/from16 v0, p0

    .local v0, "$r17":Ljava/util/Map;, ""
    iget-object v0, v0, Lio/flutter/view/g;->h:Ljava/util/Map;

    move-object/from16 v27, v0

    .end local v0    # "$r17":Ljava/util/Map;, ""
    .local v27, "$r17":Ljava/util/Map;, ""
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v28

    .local v28, "$r18":Ljava/util/Set;, ""
    move-object/from16 v0, v28

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_c
    :goto_3
    move-object/from16 v0, v19

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    move-object/from16 v0, v19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v30, v20

    check-cast v30, Ljava/util/Map$Entry;

    move-object/from16 v29, v30

    .local v29, "$r19":Ljava/util/Map$Entry;, ""
    move-object/from16 v0, v29

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v31, v20

    check-cast v31, Lio/flutter/view/g$f;

    move-object/from16 v6, v31

    invoke-interface {v8, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lio/flutter/view/g;->d(Lio/flutter/view/g$f;)V

    move-object/from16 v0, v19

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    :cond_d
    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lio/flutter/view/g;->c(I)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_e
    :goto_4
    move-object/from16 v0, v19

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_29

    move-object/from16 v0, v19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v32, v20

    check-cast v32, Lio/flutter/view/g$f;

    move-object/from16 v6, v32

    invoke-static {v6}, Lio/flutter/view/g$f;->t(Lio/flutter/view/g$f;)Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-static {v6}, Lio/flutter/view/g$f;->d(Lio/flutter/view/g$f;)I

    move-result v5

    const/16 v11, 0x1000

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v11}, Lio/flutter/view/g;->b(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v33

    .local v33, "$r20":Landroid/view/accessibility/AccessibilityEvent;, ""
    invoke-static {v6}, Lio/flutter/view/g$f;->u(Lio/flutter/view/g$f;)F

    move-result v34

    .local v34, "$f1":F, ""
    move/from16 v16, v34

    invoke-static {v6}, Lio/flutter/view/g$f;->v(Lio/flutter/view/g$f;)F

    move-result v35

    .local v35, "$f2":F, ""
    invoke-static {v6}, Lio/flutter/view/g$f;->v(Lio/flutter/view/g$f;)F

    move-result v36

    .local v36, "$f3":F, ""
    move/from16 v0, v36

    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v4

    if-eqz v4, :cond_10

    const v17, 0x4788b800    # 70000.0f

    cmpl-float v37, v34, v17

    .local v37, "$b2":B, ""
    if-lez v37, :cond_f

    const v16, 0x4788b800    # 70000.0f

    :cond_f
    const v35, 0x47c35000    # 100000.0f

    :cond_10
    invoke-static {v6}, Lio/flutter/view/g$f;->w(Lio/flutter/view/g$f;)F

    move-result v34

    move/from16 v0, v34

    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v4

    if-eqz v4, :cond_12

    const v17, 0x47c35000    # 100000.0f

    move/from16 v0, v35

    .end local v35    # "$f2":F, ""
    .local v0, "$f2":F, ""
    move/from16 v1, v17

    add-float/2addr v0, v1

    move/from16 v35, v0

    const v17, -0x38774800    # -70000.0f

    cmpg-float v37, v16, v17

    if-gez v37, :cond_11

    const v16, -0x38774800    # -70000.0f

    :cond_11
    const v17, 0x47c35000    # 100000.0f

    move/from16 v0, v16

    .end local v16    # "$f0":F, ""
    .local v0, "$f0":F, ""
    move/from16 v1, v17

    add-float/2addr v0, v1

    move/from16 v16, v0

    goto :goto_5

    :cond_12
    invoke-static {v6}, Lio/flutter/view/g$f;->w(Lio/flutter/view/g$f;)F

    move-result v34

    move/from16 v0, v35

    move/from16 v1, v34

    sub-float/2addr v0, v1

    move/from16 v35, v0

    invoke-static {v6}, Lio/flutter/view/g$f;->w(Lio/flutter/view/g$f;)F

    move-result v34

    move/from16 v0, v16

    move/from16 v1, v34

    sub-float/2addr v0, v1

    move/from16 v16, v0

    :goto_5
    sget-object v38, Lio/flutter/view/g$b;->e:Lio/flutter/view/g$b;

    .local v38, "$r21":Lio/flutter/view/g$b;, ""
    move-object/from16 v0, v38

    invoke-static {v6, v0}, Lio/flutter/view/g$f;->b(Lio/flutter/view/g$f;Lio/flutter/view/g$b;)Z

    move-result v4

    if-nez v4, :cond_15

    sget-object v38, Lio/flutter/view/g$b;->f:Lio/flutter/view/g$b;

    move-object/from16 v0, v38

    invoke-static {v6, v0}, Lio/flutter/view/g$f;->b(Lio/flutter/view/g$f;Lio/flutter/view/g$b;)Z

    move-result v4

    if-eqz v4, :cond_13

    goto :goto_6

    :cond_13
    sget-object v38, Lio/flutter/view/g$b;->c:Lio/flutter/view/g$b;

    move-object/from16 v0, v38

    invoke-static {v6, v0}, Lio/flutter/view/g$f;->b(Lio/flutter/view/g$f;Lio/flutter/view/g$b;)Z

    move-result v4

    if-nez v4, :cond_14

    sget-object v38, Lio/flutter/view/g$b;->d:Lio/flutter/view/g$b;

    move-object/from16 v0, v38

    invoke-static {v6, v0}, Lio/flutter/view/g$f;->b(Lio/flutter/view/g$f;Lio/flutter/view/g$b;)Z

    move-result v4

    if-eqz v4, :cond_16

    :cond_14
    move/from16 v0, v16

    float-to-int v5, v0

    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Landroid/view/accessibility/AccessibilityEvent;->setScrollX(I)V

    move/from16 v0, v35

    float-to-int v5, v0

    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollX(I)V

    goto :goto_7

    :cond_15
    :goto_6
    move/from16 v0, v16

    float-to-int v5, v0

    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    move/from16 v0, v35

    float-to-int v5, v0

    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    :cond_16
    :goto_7
    invoke-static {v6}, Lio/flutter/view/g$f;->a(Lio/flutter/view/g$f;)I

    move-result v5

    if-lez v5, :cond_19

    invoke-static {v6}, Lio/flutter/view/g$f;->a(Lio/flutter/view/g$f;)I

    move-result v5

    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    invoke-static {v6}, Lio/flutter/view/g$f;->x(Lio/flutter/view/g$f;)I

    move-result v5

    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    invoke-static {v6}, Lio/flutter/view/g$f;->y(Lio/flutter/view/g$f;)Ljava/util/List;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v39

    .local v39, "$r22":Ljava/util/Iterator;, ""
    const/4 v5, 0x0

    :cond_17
    :goto_8
    move-object/from16 v0, v39

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_18

    move-object/from16 v0, v39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v40, v20

    check-cast v40, Lio/flutter/view/g$f;

    move-object/from16 v21, v40

    sget-object v7, Lio/flutter/view/g$d;->n:Lio/flutter/view/g$d;

    move-object/from16 v0, v21

    invoke-static {v0, v7}, Lio/flutter/view/g$f;->a(Lio/flutter/view/g$f;Lio/flutter/view/g$d;)Z

    move-result v4

    if-nez v4, :cond_17

    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_18
    invoke-static {v6}, Lio/flutter/view/g$f;->x(Lio/flutter/view/g$f;)I

    move-result v25

    add-int v5, v25, v5

    const/4 v11, 0x1

    sub-int/2addr v5, v11

    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    :cond_19
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lio/flutter/view/g;->a(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_1a
    sget-object v7, Lio/flutter/view/g$d;->p:Lio/flutter/view/g$d;

    invoke-static {v6, v7}, Lio/flutter/view/g$f;->a(Lio/flutter/view/g$f;Lio/flutter/view/g$d;)Z

    move-result v4

    if-eqz v4, :cond_1e

    invoke-static {v6}, Lio/flutter/view/g$f;->z(Lio/flutter/view/g$f;)Ljava/lang/String;

    move-result-object v41

    .local v41, "$r23":Ljava/lang/String;, ""
    if-nez v41, :cond_1b

    const-string v41, ""

    goto :goto_9

    :cond_1b
    invoke-static {v6}, Lio/flutter/view/g$f;->z(Lio/flutter/view/g$f;)Ljava/lang/String;

    move-result-object v41

    :goto_9
    invoke-static {v6}, Lio/flutter/view/g$f;->A(Lio/flutter/view/g$f;)Ljava/lang/String;

    move-result-object v42

    .local v42, "$r24":Ljava/lang/String;, ""
    if-nez v42, :cond_1c

    const-string v42, ""

    goto :goto_a

    :cond_1c
    invoke-static {v6}, Lio/flutter/view/g$f;->z(Lio/flutter/view/g$f;)Ljava/lang/String;

    move-result-object v42

    :goto_a
    move-object/from16 v0, v41

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    sget-object v7, Lio/flutter/view/g$d;->p:Lio/flutter/view/g$d;

    invoke-static {v6, v7}, Lio/flutter/view/g$f;->b(Lio/flutter/view/g$f;Lio/flutter/view/g$d;)Z

    move-result v4

    if-nez v4, :cond_1f

    :cond_1d
    invoke-static {v6}, Lio/flutter/view/g$f;->d(Lio/flutter/view/g$f;)I

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lio/flutter/view/g;->c(I)V

    goto :goto_b

    :cond_1e
    sget-object v7, Lio/flutter/view/g$d;->e:Lio/flutter/view/g$d;

    invoke-static {v6, v7}, Lio/flutter/view/g$f;->a(Lio/flutter/view/g$f;Lio/flutter/view/g$d;)Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-static {v6}, Lio/flutter/view/g$f;->B(Lio/flutter/view/g$f;)Z

    move-result v4

    if-eqz v4, :cond_1f

    move-object/from16 v0, p0

    .end local v21    # "$r15":Lio/flutter/view/g$f;, ""
    .local v0, "$r15":Lio/flutter/view/g$f;, ""
    iget-object v0, v0, Lio/flutter/view/g;->n:Lio/flutter/view/g$f;

    move-object/from16 v21, v0

    .end local v0    # "$r15":Lio/flutter/view/g$f;, ""
    .local v21, "$r15":Lio/flutter/view/g$f;, ""
    if-eqz v21, :cond_1f

    move-object/from16 v0, p0

    .end local v21    # "$r15":Lio/flutter/view/g$f;, ""
    .local v0, "$r15":Lio/flutter/view/g$f;, ""
    iget-object v0, v0, Lio/flutter/view/g;->n:Lio/flutter/view/g$f;

    move-object/from16 v21, v0

    .end local v0    # "$r15":Lio/flutter/view/g$f;, ""
    .local v21, "$r15":Lio/flutter/view/g$f;, ""
    invoke-static {v0}, Lio/flutter/view/g$f;->d(Lio/flutter/view/g$f;)I

    move-result v5

    invoke-static {v6}, Lio/flutter/view/g$f;->d(Lio/flutter/view/g$f;)I

    move-result v25

    move/from16 v0, v25

    if-ne v5, v0, :cond_1f

    invoke-static {v6}, Lio/flutter/view/g$f;->d(Lio/flutter/view/g$f;)I

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lio/flutter/view/g;->c(I)V

    :cond_1f
    :goto_b
    move-object/from16 v0, p0

    .end local v21    # "$r15":Lio/flutter/view/g$f;, ""
    .local v0, "$r15":Lio/flutter/view/g$f;, ""
    iget-object v0, v0, Lio/flutter/view/g;->j:Lio/flutter/view/g$f;

    move-object/from16 v21, v0

    .end local v0    # "$r15":Lio/flutter/view/g$f;, ""
    .local v21, "$r15":Lio/flutter/view/g$f;, ""
    if-eqz v21, :cond_20

    move-object/from16 v0, p0

    .end local v21    # "$r15":Lio/flutter/view/g$f;, ""
    .local v0, "$r15":Lio/flutter/view/g$f;, ""
    iget-object v0, v0, Lio/flutter/view/g;->j:Lio/flutter/view/g$f;

    move-object/from16 v21, v0

    .end local v0    # "$r15":Lio/flutter/view/g$f;, ""
    .local v21, "$r15":Lio/flutter/view/g$f;, ""
    invoke-static {v0}, Lio/flutter/view/g$f;->d(Lio/flutter/view/g$f;)I

    move-result v5

    invoke-static {v6}, Lio/flutter/view/g$f;->d(Lio/flutter/view/g$f;)I

    move-result v25

    move/from16 v0, v25

    if-ne v5, v0, :cond_20

    sget-object v7, Lio/flutter/view/g$d;->c:Lio/flutter/view/g$d;

    invoke-static {v6, v7}, Lio/flutter/view/g$f;->b(Lio/flutter/view/g$f;Lio/flutter/view/g$d;)Z

    move-result v4

    if-nez v4, :cond_20

    sget-object v7, Lio/flutter/view/g$d;->c:Lio/flutter/view/g$d;

    invoke-static {v6, v7}, Lio/flutter/view/g$f;->a(Lio/flutter/view/g$f;Lio/flutter/view/g$d;)Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-static {v6}, Lio/flutter/view/g$f;->d(Lio/flutter/view/g$f;)I

    move-result v5

    const/4 v11, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v11}, Lio/flutter/view/g;->b(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v23

    invoke-static {v6}, Lio/flutter/view/g$f;->z(Lio/flutter/view/g$f;)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v23

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lio/flutter/view/g;->a(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_20
    move-object/from16 v0, p0

    .end local v21    # "$r15":Lio/flutter/view/g$f;, ""
    .local v0, "$r15":Lio/flutter/view/g$f;, ""
    iget-object v0, v0, Lio/flutter/view/g;->n:Lio/flutter/view/g$f;

    move-object/from16 v21, v0

    .end local v0    # "$r15":Lio/flutter/view/g$f;, ""
    .local v21, "$r15":Lio/flutter/view/g$f;, ""
    if-eqz v21, :cond_22

    move-object/from16 v0, p0

    .end local v21    # "$r15":Lio/flutter/view/g$f;, ""
    .local v0, "$r15":Lio/flutter/view/g$f;, ""
    iget-object v0, v0, Lio/flutter/view/g;->n:Lio/flutter/view/g$f;

    move-object/from16 v21, v0

    .end local v0    # "$r15":Lio/flutter/view/g$f;, ""
    .local v21, "$r15":Lio/flutter/view/g$f;, ""
    invoke-static {v0}, Lio/flutter/view/g$f;->d(Lio/flutter/view/g$f;)I

    move-result v5

    invoke-static {v6}, Lio/flutter/view/g$f;->d(Lio/flutter/view/g$f;)I

    move-result v25

    move/from16 v0, v25

    if-ne v5, v0, :cond_22

    move-object/from16 v0, p0

    .end local v21    # "$r15":Lio/flutter/view/g$f;, ""
    .local v0, "$r15":Lio/flutter/view/g$f;, ""
    iget-object v0, v0, Lio/flutter/view/g;->o:Lio/flutter/view/g$f;

    move-object/from16 v21, v0

    .end local v0    # "$r15":Lio/flutter/view/g$f;, ""
    .local v21, "$r15":Lio/flutter/view/g$f;, ""
    if-eqz v21, :cond_21

    move-object/from16 v0, p0

    .end local v21    # "$r15":Lio/flutter/view/g$f;, ""
    .local v0, "$r15":Lio/flutter/view/g$f;, ""
    iget-object v0, v0, Lio/flutter/view/g;->o:Lio/flutter/view/g$f;

    move-object/from16 v21, v0

    .end local v0    # "$r15":Lio/flutter/view/g$f;, ""
    .local v21, "$r15":Lio/flutter/view/g$f;, ""
    invoke-static {v0}, Lio/flutter/view/g$f;->d(Lio/flutter/view/g$f;)I

    move-result v5

    move-object/from16 v0, p0

    .end local v21    # "$r15":Lio/flutter/view/g$f;, ""
    .local v0, "$r15":Lio/flutter/view/g$f;, ""
    iget-object v0, v0, Lio/flutter/view/g;->n:Lio/flutter/view/g$f;

    move-object/from16 v21, v0

    .end local v0    # "$r15":Lio/flutter/view/g$f;, ""
    .local v21, "$r15":Lio/flutter/view/g$f;, ""
    invoke-static {v0}, Lio/flutter/view/g$f;->d(Lio/flutter/view/g$f;)I

    move-result v25

    move/from16 v0, v25

    if-eq v5, v0, :cond_22

    :cond_21
    move-object/from16 v0, p0

    .end local v21    # "$r15":Lio/flutter/view/g$f;, ""
    .local v0, "$r15":Lio/flutter/view/g$f;, ""
    iget-object v0, v0, Lio/flutter/view/g;->n:Lio/flutter/view/g$f;

    move-object/from16 v21, v0

    .end local v0    # "$r15":Lio/flutter/view/g$f;, ""
    .local v21, "$r15":Lio/flutter/view/g$f;, ""
    move-object/from16 v1, p0

    iput-object v0, v1, Lio/flutter/view/g;->o:Lio/flutter/view/g$f;

    invoke-static {v6}, Lio/flutter/view/g$f;->d(Lio/flutter/view/g$f;)I

    move-result v5

    const/16 v11, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v11}, Lio/flutter/view/g;->b(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lio/flutter/view/g;->a(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_c

    :cond_22
    move-object/from16 v0, p0

    .end local v21    # "$r15":Lio/flutter/view/g$f;, ""
    .local v0, "$r15":Lio/flutter/view/g$f;, ""
    iget-object v0, v0, Lio/flutter/view/g;->n:Lio/flutter/view/g$f;

    move-object/from16 v21, v0

    .end local v0    # "$r15":Lio/flutter/view/g$f;, ""
    .local v21, "$r15":Lio/flutter/view/g$f;, ""
    if-nez v21, :cond_23

    const/16 v43, 0x0

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    iput-object v0, v1, Lio/flutter/view/g;->o:Lio/flutter/view/g$f;

    :cond_23
    :goto_c
    move-object/from16 v0, p0

    .end local v21    # "$r15":Lio/flutter/view/g$f;, ""
    .local v0, "$r15":Lio/flutter/view/g$f;, ""
    iget-object v0, v0, Lio/flutter/view/g;->n:Lio/flutter/view/g$f;

    move-object/from16 v21, v0

    .end local v0    # "$r15":Lio/flutter/view/g$f;, ""
    .local v21, "$r15":Lio/flutter/view/g$f;, ""
    if-eqz v21, :cond_e

    move-object/from16 v0, p0

    .end local v21    # "$r15":Lio/flutter/view/g$f;, ""
    .local v0, "$r15":Lio/flutter/view/g$f;, ""
    iget-object v0, v0, Lio/flutter/view/g;->n:Lio/flutter/view/g$f;

    move-object/from16 v21, v0

    .end local v0    # "$r15":Lio/flutter/view/g$f;, ""
    .local v21, "$r15":Lio/flutter/view/g$f;, ""
    invoke-static {v0}, Lio/flutter/view/g$f;->d(Lio/flutter/view/g$f;)I

    move-result v5

    invoke-static {v6}, Lio/flutter/view/g$f;->d(Lio/flutter/view/g$f;)I

    move-result v25

    move/from16 v0, v25

    if-ne v5, v0, :cond_e

    sget-object v7, Lio/flutter/view/g$d;->e:Lio/flutter/view/g$d;

    invoke-static {v6, v7}, Lio/flutter/view/g$f;->b(Lio/flutter/view/g$f;Lio/flutter/view/g$d;)Z

    move-result v4

    if-eqz v4, :cond_e

    sget-object v7, Lio/flutter/view/g$d;->e:Lio/flutter/view/g$d;

    invoke-static {v6, v7}, Lio/flutter/view/g$f;->a(Lio/flutter/view/g$f;Lio/flutter/view/g$d;)Z

    move-result v4

    if-eqz v4, :cond_e

    move-object/from16 v0, p0

    .end local v21    # "$r15":Lio/flutter/view/g$f;, ""
    .local v0, "$r15":Lio/flutter/view/g$f;, ""
    iget-object v0, v0, Lio/flutter/view/g;->j:Lio/flutter/view/g$f;

    move-object/from16 v21, v0

    .end local v0    # "$r15":Lio/flutter/view/g$f;, ""
    .local v21, "$r15":Lio/flutter/view/g$f;, ""
    if-eqz v21, :cond_24

    move-object/from16 v0, p0

    .end local v21    # "$r15":Lio/flutter/view/g$f;, ""
    .local v0, "$r15":Lio/flutter/view/g$f;, ""
    iget-object v0, v0, Lio/flutter/view/g;->j:Lio/flutter/view/g$f;

    move-object/from16 v21, v0

    .end local v0    # "$r15":Lio/flutter/view/g$f;, ""
    .local v21, "$r15":Lio/flutter/view/g$f;, ""
    invoke-static {v0}, Lio/flutter/view/g$f;->d(Lio/flutter/view/g$f;)I

    move-result v5

    move-object/from16 v0, p0

    .end local v21    # "$r15":Lio/flutter/view/g$f;, ""
    .local v0, "$r15":Lio/flutter/view/g$f;, ""
    iget-object v0, v0, Lio/flutter/view/g;->n:Lio/flutter/view/g$f;

    move-object/from16 v21, v0

    .end local v0    # "$r15":Lio/flutter/view/g$f;, ""
    .local v21, "$r15":Lio/flutter/view/g$f;, ""
    invoke-static {v0}, Lio/flutter/view/g$f;->d(Lio/flutter/view/g$f;)I

    move-result v25

    move/from16 v0, v25

    if-ne v5, v0, :cond_e

    :cond_24
    invoke-static {v6}, Lio/flutter/view/g$f;->C(Lio/flutter/view/g$f;)Ljava/lang/String;

    move-result-object v41

    if-eqz v41, :cond_25

    invoke-static {v6}, Lio/flutter/view/g$f;->C(Lio/flutter/view/g$f;)Ljava/lang/String;

    move-result-object v41

    goto :goto_d

    :cond_25
    const-string v41, ""

    :goto_d
    invoke-static {v6}, Lio/flutter/view/g$f;->i(Lio/flutter/view/g$f;)Ljava/lang/String;

    move-result-object v42

    if-eqz v42, :cond_26

    invoke-static {v6}, Lio/flutter/view/g$f;->i(Lio/flutter/view/g$f;)Ljava/lang/String;

    move-result-object v42

    goto :goto_e

    :cond_26
    const-string v42, ""

    :goto_e
    invoke-static {v6}, Lio/flutter/view/g$f;->d(Lio/flutter/view/g$f;)I

    move-result v5

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-direct {v0, v5, v1, v2}, Lio/flutter/view/g;->a(ILjava/lang/String;Ljava/lang/String;)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v33

    if-eqz v33, :cond_27

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lio/flutter/view/g;->a(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_27
    invoke-static {v6}, Lio/flutter/view/g$f;->D(Lio/flutter/view/g$f;)I

    move-result v5

    invoke-static {v6}, Lio/flutter/view/g$f;->f(Lio/flutter/view/g$f;)I

    move-result v25

    move/from16 v0, v25

    if-ne v5, v0, :cond_28

    invoke-static {v6}, Lio/flutter/view/g$f;->E(Lio/flutter/view/g$f;)I

    move-result v5

    invoke-static {v6}, Lio/flutter/view/g$f;->g(Lio/flutter/view/g$f;)I

    move-result v25

    move/from16 v0, v25

    if-eq v5, v0, :cond_e

    :cond_28
    invoke-static {v6}, Lio/flutter/view/g$f;->d(Lio/flutter/view/g$f;)I

    move-result v5

    const/16 v11, 0x2000

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v11}, Lio/flutter/view/g;->b(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v42

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v6}, Lio/flutter/view/g$f;->f(Lio/flutter/view/g$f;)I

    move-result v5

    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    invoke-static {v6}, Lio/flutter/view/g$f;->g(Lio/flutter/view/g$f;)I

    move-result v5

    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    move-object/from16 v0, v42

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lio/flutter/view/g;->a(Landroid/view/accessibility/AccessibilityEvent;)V

    goto/32 :goto_4

    :cond_29
    return-void
    .end local v41    # "$r23":Ljava/lang/String;, ""
    .end local v25    # "$i1":I, ""
    .end local v7    # "$r5":Lio/flutter/view/g$d;, ""
    .end local v19    # "$r13":Ljava/util/Iterator;, ""
    .end local v5    # "$i0":I, ""
    .end local v10    # "$r8":[F, ""
    .end local v38    # "$r21":Lio/flutter/view/g$b;, ""
    .end local v20    # "$r14":Ljava/lang/Object;, ""
    .end local v0
    .end local v36    # "$f3":F, ""
    .end local v9    # "$r7":Ljava/util/ArrayList;, ""
    .end local v28    # "$r18":Ljava/util/Set;, ""
    .end local v37    # "$b2":B, ""
    .end local v0
    .end local v15    # "$r12":Ljava/lang/Integer;, ""
    .end local v42    # "$r24":Ljava/lang/String;, ""
    .end local v8    # "$r6":Ljava/util/HashSet;, ""
    .end local v4    # "$z0":Z, ""
    .end local v14    # "$r11":Ljava/lang/Integer;, ""
    .end local v39    # "$r22":Ljava/util/Iterator;, ""
    .end local v6    # "$r4":Lio/flutter/view/g$f;, ""
    .end local v34    # "$f1":F, ""
    .end local v13    # "$r10":Landroid/view/WindowInsets;, ""
    .end local v33    # "$r20":Landroid/view/accessibility/AccessibilityEvent;, ""
    .end local v12    # "$r9":Landroid/view/View;, ""
    .end local v29    # "$r19":Ljava/util/Map$Entry;, ""
    .end local v21    # "$r15":Lio/flutter/view/g$f;, ""
    .end local v23    # "$r16":Ljava/util/List;, ""
    .end local v3    # "$r3":Ljava/util/ArrayList;, ""
    .end local v27    # "$r17":Ljava/util/Map;, ""
.end method

.method public b()Z
    .locals 2

    iget-object v0, p0, Lio/flutter/view/g;->d:Landroid/view/accessibility/AccessibilityManager;

    .local v0, "$r1":Landroid/view/accessibility/AccessibilityManager;, ""
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    .local v1, "$z0":Z, ""
    return v1
    .end local v0    # "$r1":Landroid/view/accessibility/AccessibilityManager;, ""
    .end local v1    # "$z0":Z, ""
.end method

.method public c()Z
    .locals 2

    iget-object v0, p0, Lio/flutter/view/g;->d:Landroid/view/accessibility/AccessibilityManager;

    .local v0, "$r1":Landroid/view/accessibility/AccessibilityManager;, ""
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    .local v1, "$z0":Z, ""
    return v1
    .end local v1    # "$z0":Z, ""
    .end local v0    # "$r1":Landroid/view/accessibility/AccessibilityManager;, ""
.end method

.method public createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 37
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const v3, 0x10000

    move/from16 v0, p1

    if-lt v0, v3, :cond_0

    move-object/from16 v0, p0

    .local v4, "$r1":Lio/flutter/view/AccessibilityViewEmbedder;, ""
    iget-object v4, v0, Lio/flutter/view/g;->e:Lio/flutter/view/AccessibilityViewEmbedder;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Lio/flutter/view/AccessibilityViewEmbedder;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v5

    .local v5, "$r2":Landroid/view/accessibility/AccessibilityNodeInfo;, ""
    return-object v5

    :cond_0
    const/4 v6, 0x0

    .local v6, "$z0":Z, ""
    const/4 v3, -0x1

    move/from16 v0, p1

    if-ne v0, v3, :cond_1

    move-object/from16 v0, p0

    .local v7, "$r3":Landroid/view/View;, ""
    iget-object v7, v0, Lio/flutter/view/g;->b:Landroid/view/View;

    invoke-static {v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lio/flutter/view/g;->b:Landroid/view/View;

    invoke-virtual {v7, v5}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    move-object/from16 v0, p0

    .local v8, "$r4":Ljava/util/Map;, ""
    iget-object v8, v0, Lio/flutter/view/g;->h:Ljava/util/Map;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .local v9, "$r5":Ljava/lang/Integer;, ""
    invoke-interface {v8, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3a

    move-object/from16 v0, p0

    iget-object v7, v0, Lio/flutter/view/g;->b:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v5, v7, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    return-object v5

    :cond_1
    move-object/from16 v0, p0

    iget-object v8, v0, Lio/flutter/view/g;->h:Ljava/util/Map;

    move/from16 v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .local v10, "$r6":Ljava/lang/Object;, ""
    move-object v12, v10

    check-cast v12, Lio/flutter/view/g$f;

    move-object v11, v12

    .local v11, "$r7":Lio/flutter/view/g$f;, ""
    if-nez v11, :cond_2

    const/4 v13, 0x0

    return-object v13

    :cond_2
    invoke-static {v11}, Lio/flutter/view/g$f;->b(Lio/flutter/view/g$f;)I

    move-result v14

    .local v14, "$i1":I, ""
    const/4 v3, -0x1

    if-eq v14, v3, :cond_3

    move-object/from16 v0, p0

    .local v15, "$r8":Lio/flutter/plugin/platform/j;, ""
    iget-object v15, v0, Lio/flutter/view/g;->f:Lio/flutter/plugin/platform/j;

    invoke-static {v11}, Lio/flutter/view/g$f;->b(Lio/flutter/view/g$f;)I

    move-result p1

    .local p1, "$i0":I, ""
    move/from16 v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v15, v9}, Lio/flutter/plugin/platform/j;->a(Ljava/lang/Integer;)Landroid/view/View;

    move-result-object v7

    invoke-static {v11}, Lio/flutter/view/g$f;->c(Lio/flutter/view/g$f;)Landroid/graphics/Rect;

    move-result-object v16

    .local v16, "$r9":Landroid/graphics/Rect;, ""
    move-object/from16 v0, p0

    iget-object v4, v0, Lio/flutter/view/g;->e:Lio/flutter/view/AccessibilityViewEmbedder;

    invoke-static {v11}, Lio/flutter/view/g$f;->d(Lio/flutter/view/g$f;)I

    move-result p1

    move/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v4, v7, v0, v1}, Lio/flutter/view/AccessibilityViewEmbedder;->getRootNode(Landroid/view/View;ILandroid/graphics/Rect;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v5

    return-object v5

    :cond_3
    move-object/from16 v0, p0

    iget-object v7, v0, Lio/flutter/view/g;->b:Landroid/view/View;

    move/from16 v0, p1

    invoke-static {v7, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/View;I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v5

    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-lt v14, v3, :cond_4

    const-string v17, ""

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setViewIdResourceName(Ljava/lang/String;)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v7, v0, Lio/flutter/view/g;->b:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v18

    .local v18, "$r10":Landroid/content/Context;, ""
    move-object/from16 v0, v18

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v19

    .local v19, "$r11":Ljava/lang/String;, ""
    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    const-string v17, "android.view.View"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lio/flutter/view/g;->b:Landroid/view/View;

    move/from16 v0, p1

    invoke-virtual {v5, v7, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    invoke-static {v11}, Lio/flutter/view/g$f;->e(Lio/flutter/view/g$f;)Z

    move-result v20

    .local v20, "$z1":Z, ""
    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocusable(Z)V

    move-object/from16 v0, p0

    .local v0, "$r12":Lio/flutter/view/g$f;, ""
    iget-object v0, v0, Lio/flutter/view/g;->n:Lio/flutter/view/g$f;

    move-object/from16 v21, v0

    .end local v0    # "$r12":Lio/flutter/view/g$f;, ""
    .local v21, "$r12":Lio/flutter/view/g$f;, ""
    if-eqz v21, :cond_6

    move-object/from16 v0, p0

    .end local v21    # "$r12":Lio/flutter/view/g$f;, ""
    .local v0, "$r12":Lio/flutter/view/g$f;, ""
    iget-object v0, v0, Lio/flutter/view/g;->n:Lio/flutter/view/g$f;

    move-object/from16 v21, v0

    .end local v0    # "$r12":Lio/flutter/view/g$f;, ""
    .local v21, "$r12":Lio/flutter/view/g$f;, ""
    invoke-static {v0}, Lio/flutter/view/g$f;->d(Lio/flutter/view/g$f;)I

    move-result v14

    move/from16 v0, p1

    if-ne v14, v0, :cond_5

    const/16 v20, 0x1

    goto :goto_0

    :cond_5
    const/16 v20, 0x0

    :goto_0
    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocused(Z)V

    :cond_6
    move-object/from16 v0, p0

    .end local v21    # "$r12":Lio/flutter/view/g$f;, ""
    .local v0, "$r12":Lio/flutter/view/g$f;, ""
    iget-object v0, v0, Lio/flutter/view/g;->j:Lio/flutter/view/g$f;

    move-object/from16 v21, v0

    .end local v0    # "$r12":Lio/flutter/view/g$f;, ""
    .local v21, "$r12":Lio/flutter/view/g$f;, ""
    if-eqz v21, :cond_8

    move-object/from16 v0, p0

    .end local v21    # "$r12":Lio/flutter/view/g$f;, ""
    .local v0, "$r12":Lio/flutter/view/g$f;, ""
    iget-object v0, v0, Lio/flutter/view/g;->j:Lio/flutter/view/g$f;

    move-object/from16 v21, v0

    .end local v0    # "$r12":Lio/flutter/view/g$f;, ""
    .local v21, "$r12":Lio/flutter/view/g$f;, ""
    invoke-static {v0}, Lio/flutter/view/g$f;->d(Lio/flutter/view/g$f;)I

    move-result v14

    move/from16 v0, p1

    if-ne v14, v0, :cond_7

    const/16 v20, 0x1

    goto :goto_1

    :cond_7
    const/16 v20, 0x0

    :goto_1
    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    :cond_8
    sget-object v22, Lio/flutter/view/g$d;->e:Lio/flutter/view/g$d;

    .local v22, "$r13":Lio/flutter/view/g$d;, ""
    move-object/from16 v0, v22

    invoke-static {v11, v0}, Lio/flutter/view/g$f;->a(Lio/flutter/view/g$f;Lio/flutter/view/g$d;)Z

    move-result v20

    if-eqz v20, :cond_11

    sget-object v22, Lio/flutter/view/g$d;->k:Lio/flutter/view/g$d;

    move-object/from16 v0, v22

    invoke-static {v11, v0}, Lio/flutter/view/g$f;->a(Lio/flutter/view/g$f;Lio/flutter/view/g$d;)Z

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPassword(Z)V

    sget-object v22, Lio/flutter/view/g$d;->t:Lio/flutter/view/g$d;

    move-object/from16 v0, v22

    invoke-static {v11, v0}, Lio/flutter/view/g$f;->a(Lio/flutter/view/g$f;Lio/flutter/view/g$d;)Z

    move-result v20

    if-nez v20, :cond_9

    const-string v17, "android.widget.EditText"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    :cond_9
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-lt v14, v3, :cond_b

    sget-object v22, Lio/flutter/view/g$d;->t:Lio/flutter/view/g$d;

    move-object/from16 v0, v22

    invoke-static {v11, v0}, Lio/flutter/view/g$f;->a(Lio/flutter/view/g$f;Lio/flutter/view/g$d;)Z

    move-result v20

    const/4 v3, 0x1

    xor-int v23, v20, v3

    move/from16 v20, v23

    .end local v20    # "$z1":Z, ""
    .local v19, "$z1":Z, ""
    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEditable(Z)V

    invoke-static {v11}, Lio/flutter/view/g$f;->f(Lio/flutter/view/g$f;)I

    move-result v14

    const/4 v3, -0x1

    if-eq v14, v3, :cond_a

    invoke-static {v11}, Lio/flutter/view/g$f;->g(Lio/flutter/view/g$f;)I

    move-result v14

    const/4 v3, -0x1

    if-eq v14, v3, :cond_a

    invoke-static {v11}, Lio/flutter/view/g$f;->f(Lio/flutter/view/g$f;)I

    move-result v14

    invoke-static {v11}, Lio/flutter/view/g$f;->g(Lio/flutter/view/g$f;)I

    move-result v24

    .local v24, "$i2":I, ""
    move/from16 v0, v24

    invoke-virtual {v5, v14, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTextSelection(II)V

    :cond_a
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-le v14, v3, :cond_b

    move-object/from16 v0, p0

    .end local v21    # "$r12":Lio/flutter/view/g$f;, ""
    .local v0, "$r12":Lio/flutter/view/g$f;, ""
    iget-object v0, v0, Lio/flutter/view/g;->j:Lio/flutter/view/g$f;

    move-object/from16 v21, v0

    .end local v0    # "$r12":Lio/flutter/view/g$f;, ""
    .local v21, "$r12":Lio/flutter/view/g$f;, ""
    if-eqz v21, :cond_b

    move-object/from16 v0, p0

    .end local v21    # "$r12":Lio/flutter/view/g$f;, ""
    .local v0, "$r12":Lio/flutter/view/g$f;, ""
    iget-object v0, v0, Lio/flutter/view/g;->j:Lio/flutter/view/g$f;

    move-object/from16 v21, v0

    .end local v0    # "$r12":Lio/flutter/view/g$f;, ""
    .local v21, "$r12":Lio/flutter/view/g$f;, ""
    invoke-static {v0}, Lio/flutter/view/g$f;->d(Lio/flutter/view/g$f;)I

    move-result v14

    move/from16 v0, p1

    if-ne v14, v0, :cond_b

    const/4 v3, 0x1

    invoke-virtual {v5, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLiveRegion(I)V

    :cond_b
    sget-object v25, Lio/flutter/view/g$b;->j:Lio/flutter/view/g$b;

    .local v25, "$r14":Lio/flutter/view/g$b;, ""
    move-object/from16 v0, v25

    invoke-static {v11, v0}, Lio/flutter/view/g$f;->a(Lio/flutter/view/g$f;Lio/flutter/view/g$b;)Z

    move-result v20

    .end local v19    # "$z1":Z, ""
    .local v20, "$z1":Z, ""
    if-eqz v20, :cond_c

    const/16 v3, 0x100

    invoke-virtual {v5, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    const/4 v14, 0x1

    goto :goto_2

    :cond_c
    const/4 v14, 0x0

    :goto_2
    sget-object v25, Lio/flutter/view/g$b;->k:Lio/flutter/view/g$b;

    move-object/from16 v0, v25

    invoke-static {v11, v0}, Lio/flutter/view/g$f;->a(Lio/flutter/view/g$f;Lio/flutter/view/g$b;)Z

    move-result v20

    if-eqz v20, :cond_d

    const/16 v3, 0x200

    invoke-virtual {v5, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    or-int/lit8 v14, v14, 0x1

    :cond_d
    sget-object v25, Lio/flutter/view/g$b;->t:Lio/flutter/view/g$b;

    move-object/from16 v0, v25

    invoke-static {v11, v0}, Lio/flutter/view/g$f;->a(Lio/flutter/view/g$f;Lio/flutter/view/g$b;)Z

    move-result v20

    if-eqz v20, :cond_e

    const/16 v3, 0x100

    invoke-virtual {v5, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    or-int/lit8 v14, v14, 0x2

    :cond_e
    sget-object v25, Lio/flutter/view/g$b;->u:Lio/flutter/view/g$b;

    move-object/from16 v0, v25

    invoke-static {v11, v0}, Lio/flutter/view/g$f;->a(Lio/flutter/view/g$f;Lio/flutter/view/g$b;)Z

    move-result v20

    if-eqz v20, :cond_f

    const/16 v3, 0x200

    invoke-virtual {v5, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    or-int/lit8 v14, v14, 0x2

    :cond_f
    invoke-virtual {v5, v14}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMovementGranularities(I)V

    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v14, v3, :cond_11

    invoke-static {v11}, Lio/flutter/view/g$f;->h(Lio/flutter/view/g$f;)I

    move-result v14

    if-ltz v14, :cond_11

    invoke-static {v11}, Lio/flutter/view/g$f;->i(Lio/flutter/view/g$f;)Ljava/lang/String;

    move-result-object v19

    if-nez v19, :cond_10

    const/4 v14, 0x0

    goto :goto_3

    :cond_10
    invoke-static {v11}, Lio/flutter/view/g$f;->i(Lio/flutter/view/g$f;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v14

    :goto_3
    invoke-static {v11}, Lio/flutter/view/g$f;->j(Lio/flutter/view/g$f;)I

    invoke-static {v11}, Lio/flutter/view/g$f;->h(Lio/flutter/view/g$f;)I

    invoke-static {v11}, Lio/flutter/view/g$f;->j(Lio/flutter/view/g$f;)I

    move-result v24

    move/from16 v0, v24

    sub-int/2addr v14, v0

    invoke-static {v11}, Lio/flutter/view/g$f;->h(Lio/flutter/view/g$f;)I

    move-result v24

    move/from16 v0, v24

    add-int/2addr v14, v0

    invoke-virtual {v5, v14}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMaxTextLength(I)V

    :cond_11
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-le v14, v3, :cond_15

    sget-object v25, Lio/flutter/view/g$b;->l:Lio/flutter/view/g$b;

    move-object/from16 v0, v25

    invoke-static {v11, v0}, Lio/flutter/view/g$f;->a(Lio/flutter/view/g$f;Lio/flutter/view/g$b;)Z

    move-result v20

    if-eqz v20, :cond_12

    const v3, 0x20000

    invoke-virtual {v5, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_12
    sget-object v25, Lio/flutter/view/g$b;->m:Lio/flutter/view/g$b;

    move-object/from16 v0, v25

    invoke-static {v11, v0}, Lio/flutter/view/g$f;->a(Lio/flutter/view/g$f;Lio/flutter/view/g$b;)Z

    move-result v20

    if-eqz v20, :cond_13

    const/16 v3, 0x4000

    invoke-virtual {v5, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_13
    sget-object v25, Lio/flutter/view/g$b;->n:Lio/flutter/view/g$b;

    move-object/from16 v0, v25

    invoke-static {v11, v0}, Lio/flutter/view/g$f;->a(Lio/flutter/view/g$f;Lio/flutter/view/g$b;)Z

    move-result v20

    if-eqz v20, :cond_14

    const v3, 0x10000

    invoke-virtual {v5, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_14
    sget-object v25, Lio/flutter/view/g$b;->o:Lio/flutter/view/g$b;

    move-object/from16 v0, v25

    invoke-static {v11, v0}, Lio/flutter/view/g$f;->a(Lio/flutter/view/g$f;Lio/flutter/view/g$b;)Z

    move-result v20

    if-eqz v20, :cond_15

    const v3, 0x8000

    invoke-virtual {v5, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_15
    sget-object v22, Lio/flutter/view/g$d;->d:Lio/flutter/view/g$d;

    move-object/from16 v0, v22

    invoke-static {v11, v0}, Lio/flutter/view/g$f;->a(Lio/flutter/view/g$f;Lio/flutter/view/g$d;)Z

    move-result v20

    if-nez v20, :cond_16

    sget-object v22, Lio/flutter/view/g$d;->v:Lio/flutter/view/g$d;

    move-object/from16 v0, v22

    invoke-static {v11, v0}, Lio/flutter/view/g$f;->a(Lio/flutter/view/g$f;Lio/flutter/view/g$d;)Z

    move-result v20

    if-eqz v20, :cond_17

    :cond_16
    const-string v17, "android.widget.Button"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    :cond_17
    sget-object v22, Lio/flutter/view/g$d;->o:Lio/flutter/view/g$d;

    move-object/from16 v0, v22

    invoke-static {v11, v0}, Lio/flutter/view/g$f;->a(Lio/flutter/view/g$f;Lio/flutter/view/g$d;)Z

    move-result v20

    if-eqz v20, :cond_18

    const-string v17, "android.widget.ImageView"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    :cond_18
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-le v14, v3, :cond_19

    sget-object v25, Lio/flutter/view/g$b;->s:Lio/flutter/view/g$b;

    move-object/from16 v0, v25

    invoke-static {v11, v0}, Lio/flutter/view/g$f;->a(Lio/flutter/view/g$f;Lio/flutter/view/g$b;)Z

    move-result v20

    if-eqz v20, :cond_19

    const/4 v3, 0x1

    invoke-virtual {v5, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setDismissable(Z)V

    const v3, 0x100000

    invoke-virtual {v5, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_19
    invoke-static {v11}, Lio/flutter/view/g$f;->k(Lio/flutter/view/g$f;)Lio/flutter/view/g$f;

    move-result-object v21

    if-eqz v21, :cond_1a

    move-object/from16 v0, p0

    iget-object v7, v0, Lio/flutter/view/g;->b:Landroid/view/View;

    invoke-static {v11}, Lio/flutter/view/g$f;->k(Lio/flutter/view/g$f;)Lio/flutter/view/g$f;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v0}, Lio/flutter/view/g$f;->d(Lio/flutter/view/g$f;)I

    move-result v14

    invoke-virtual {v5, v7, v14}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;I)V

    goto :goto_4

    :cond_1a
    move-object/from16 v0, p0

    iget-object v7, v0, Lio/flutter/view/g;->b:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    :goto_4
    invoke-static {v11}, Lio/flutter/view/g$f;->c(Lio/flutter/view/g$f;)Landroid/graphics/Rect;

    move-result-object v16

    invoke-static {v11}, Lio/flutter/view/g$f;->k(Lio/flutter/view/g$f;)Lio/flutter/view/g$f;

    move-result-object v21

    if-eqz v21, :cond_1b

    invoke-static {v11}, Lio/flutter/view/g$f;->k(Lio/flutter/view/g$f;)Lio/flutter/view/g$f;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v0}, Lio/flutter/view/g$f;->c(Lio/flutter/view/g$f;)Landroid/graphics/Rect;

    move-result-object v26

    .local v26, "$r15":Landroid/graphics/Rect;, ""
    new-instance v27, Landroid/graphics/Rect;

    .local v27, "$r16":Landroid/graphics/Rect;, ""
    move-object/from16 v0, v27

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object/from16 v0, v26

    iget v14, v0, Landroid/graphics/Rect;->left:I

    neg-int v14, v14

    move-object/from16 v0, v26

    .end local v24    # "$i2":I, ""
    .local v0, "$i2":I, ""
    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    .end local v0    # "$i2":I, ""
    .local v24, "$i2":I, ""
    neg-int v0, v0

    .end local v24    # "$i2":I, ""
    .local v0, "$i2":I, ""
    move/from16 v24, v0

    .end local v0    # "$i2":I, ""
    .local v24, "$i2":I, ""
    move-object/from16 v0, v27

    move/from16 v1, v24

    invoke-virtual {v0, v14, v1}, Landroid/graphics/Rect;->offset(II)V

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    goto :goto_5

    :cond_1b
    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    :goto_5
    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    const/4 v3, 0x1

    invoke-virtual {v5, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    sget-object v22, Lio/flutter/view/g$d;->g:Lio/flutter/view/g$d;

    move-object/from16 v0, v22

    invoke-static {v11, v0}, Lio/flutter/view/g$f;->a(Lio/flutter/view/g$f;Lio/flutter/view/g$d;)Z

    move-result v20

    if-eqz v20, :cond_1d

    sget-object v22, Lio/flutter/view/g$d;->h:Lio/flutter/view/g$d;

    move-object/from16 v0, v22

    invoke-static {v11, v0}, Lio/flutter/view/g$f;->a(Lio/flutter/view/g$f;Lio/flutter/view/g$d;)Z

    move-result v20

    if-eqz v20, :cond_1c

    goto :goto_6

    :cond_1c
    const/16 v20, 0x0

    goto :goto_7

    :cond_1d
    :goto_6
    const/16 v20, 0x1

    :goto_7
    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    sget-object v25, Lio/flutter/view/g$b;->a:Lio/flutter/view/g$b;

    move-object/from16 v0, v25

    invoke-static {v11, v0}, Lio/flutter/view/g$f;->a(Lio/flutter/view/g$f;Lio/flutter/view/g$b;)Z

    move-result v20

    if-eqz v20, :cond_1f

    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v14, v3, :cond_1e

    invoke-static {v11}, Lio/flutter/view/g$f;->l(Lio/flutter/view/g$f;)Lio/flutter/view/g$c;

    move-result-object v28

    .local v28, "$r17":Lio/flutter/view/g$c;, ""
    if-eqz v28, :cond_1e

    new-instance v29, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .local v29, "$r18":Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;, ""
    invoke-static {v11}, Lio/flutter/view/g$f;->l(Lio/flutter/view/g$f;)Lio/flutter/view/g$c;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-static {v0}, Lio/flutter/view/g$c;->a(Lio/flutter/view/g$c;)Ljava/lang/String;

    move-result-object v19

    const/16 v3, 0x10

    move-object/from16 v0, v29

    move-object/from16 v1, v19

    invoke-direct {v0, v3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    const/4 v3, 0x1

    invoke-virtual {v5, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    goto :goto_8

    :cond_1e
    const/16 v3, 0x10

    invoke-virtual {v5, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    const/4 v3, 0x1

    invoke-virtual {v5, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    :cond_1f
    :goto_8
    sget-object v25, Lio/flutter/view/g$b;->b:Lio/flutter/view/g$b;

    move-object/from16 v0, v25

    invoke-static {v11, v0}, Lio/flutter/view/g$f;->a(Lio/flutter/view/g$f;Lio/flutter/view/g$b;)Z

    move-result v20

    if-eqz v20, :cond_21

    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v14, v3, :cond_20

    invoke-static {v11}, Lio/flutter/view/g$f;->m(Lio/flutter/view/g$f;)Lio/flutter/view/g$c;

    move-result-object v28

    if-eqz v28, :cond_20

    new-instance v29, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-static {v11}, Lio/flutter/view/g$f;->m(Lio/flutter/view/g$f;)Lio/flutter/view/g$c;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-static {v0}, Lio/flutter/view/g$c;->a(Lio/flutter/view/g$c;)Ljava/lang/String;

    move-result-object v19

    const/16 v3, 0x20

    move-object/from16 v0, v29

    move-object/from16 v1, v19

    invoke-direct {v0, v3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    const/4 v3, 0x1

    invoke-virtual {v5, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    goto :goto_9

    :cond_20
    const/16 v3, 0x20

    invoke-virtual {v5, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    const/4 v3, 0x1

    invoke-virtual {v5, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    :cond_21
    :goto_9
    sget-object v25, Lio/flutter/view/g$b;->c:Lio/flutter/view/g$b;

    move-object/from16 v0, v25

    invoke-static {v11, v0}, Lio/flutter/view/g$f;->a(Lio/flutter/view/g$f;Lio/flutter/view/g$b;)Z

    move-result v20

    if-nez v20, :cond_22

    sget-object v25, Lio/flutter/view/g$b;->e:Lio/flutter/view/g$b;

    move-object/from16 v0, v25

    invoke-static {v11, v0}, Lio/flutter/view/g$f;->a(Lio/flutter/view/g$f;Lio/flutter/view/g$b;)Z

    move-result v20

    if-nez v20, :cond_22

    sget-object v25, Lio/flutter/view/g$b;->d:Lio/flutter/view/g$b;

    move-object/from16 v0, v25

    invoke-static {v11, v0}, Lio/flutter/view/g$f;->a(Lio/flutter/view/g$f;Lio/flutter/view/g$b;)Z

    move-result v20

    if-nez v20, :cond_22

    sget-object v25, Lio/flutter/view/g$b;->f:Lio/flutter/view/g$b;

    move-object/from16 v0, v25

    invoke-static {v11, v0}, Lio/flutter/view/g$f;->a(Lio/flutter/view/g$f;Lio/flutter/view/g$b;)Z

    move-result v20

    if-eqz v20, :cond_2b

    :cond_22
    const/4 v3, 0x1

    invoke-virtual {v5, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    sget-object v22, Lio/flutter/view/g$d;->s:Lio/flutter/view/g$d;

    move-object/from16 v0, v22

    invoke-static {v11, v0}, Lio/flutter/view/g$f;->a(Lio/flutter/view/g$f;Lio/flutter/view/g$d;)Z

    move-result v20

    if-eqz v20, :cond_27

    sget-object v25, Lio/flutter/view/g$b;->c:Lio/flutter/view/g$b;

    move-object/from16 v0, v25

    invoke-static {v11, v0}, Lio/flutter/view/g$f;->a(Lio/flutter/view/g$f;Lio/flutter/view/g$b;)Z

    move-result v20

    if-nez v20, :cond_25

    sget-object v25, Lio/flutter/view/g$b;->d:Lio/flutter/view/g$b;

    move-object/from16 v0, v25

    invoke-static {v11, v0}, Lio/flutter/view/g$f;->a(Lio/flutter/view/g$f;Lio/flutter/view/g$b;)Z

    move-result v20

    if-eqz v20, :cond_23

    goto :goto_a

    :cond_23
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-le v14, v3, :cond_24

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lio/flutter/view/g;->b(Lio/flutter/view/g$f;)Z

    move-result v20

    if-eqz v20, :cond_24

    invoke-static {v11}, Lio/flutter/view/g$f;->a(Lio/flutter/view/g$f;)I

    move-result v14

    const/4 v3, 0x0

    const/16 v31, 0x0

    move/from16 v0, v31

    invoke-static {v14, v3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object v30

    .local v30, "$r19":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;, ""
    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    goto :goto_b

    :cond_24
    const-string v17, "android.widget.ScrollView"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    goto :goto_b

    :cond_25
    :goto_a
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-le v14, v3, :cond_26

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lio/flutter/view/g;->b(Lio/flutter/view/g$f;)Z

    move-result v20

    if-eqz v20, :cond_26

    invoke-static {v11}, Lio/flutter/view/g$f;->a(Lio/flutter/view/g$f;)I

    move-result v14

    const/4 v3, 0x0

    const/16 v31, 0x0

    move/from16 v0, v31

    invoke-static {v3, v14, v0}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    goto :goto_b

    :cond_26
    const-string v17, "android.widget.HorizontalScrollView"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    :cond_27
    :goto_b
    sget-object v25, Lio/flutter/view/g$b;->c:Lio/flutter/view/g$b;

    move-object/from16 v0, v25

    invoke-static {v11, v0}, Lio/flutter/view/g$f;->a(Lio/flutter/view/g$f;Lio/flutter/view/g$b;)Z

    move-result v20

    if-nez v20, :cond_28

    sget-object v25, Lio/flutter/view/g$b;->e:Lio/flutter/view/g$b;

    move-object/from16 v0, v25

    invoke-static {v11, v0}, Lio/flutter/view/g$f;->a(Lio/flutter/view/g$f;Lio/flutter/view/g$b;)Z

    move-result v20

    if-eqz v20, :cond_29

    :cond_28
    const/16 v3, 0x1000

    invoke-virtual {v5, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_29
    sget-object v25, Lio/flutter/view/g$b;->d:Lio/flutter/view/g$b;

    move-object/from16 v0, v25

    invoke-static {v11, v0}, Lio/flutter/view/g$f;->a(Lio/flutter/view/g$f;Lio/flutter/view/g$b;)Z

    move-result v20

    if-nez v20, :cond_2a

    sget-object v25, Lio/flutter/view/g$b;->f:Lio/flutter/view/g$b;

    move-object/from16 v0, v25

    invoke-static {v11, v0}, Lio/flutter/view/g$f;->a(Lio/flutter/view/g$f;Lio/flutter/view/g$b;)Z

    move-result v20

    if-eqz v20, :cond_2b

    :cond_2a
    const/16 v3, 0x2000

    invoke-virtual {v5, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_2b
    sget-object v25, Lio/flutter/view/g$b;->g:Lio/flutter/view/g$b;

    move-object/from16 v0, v25

    invoke-static {v11, v0}, Lio/flutter/view/g$f;->a(Lio/flutter/view/g$f;Lio/flutter/view/g$b;)Z

    move-result v20

    if-nez v20, :cond_2c

    sget-object v25, Lio/flutter/view/g$b;->h:Lio/flutter/view/g$b;

    move-object/from16 v0, v25

    invoke-static {v11, v0}, Lio/flutter/view/g$f;->a(Lio/flutter/view/g$f;Lio/flutter/view/g$b;)Z

    move-result v20

    if-eqz v20, :cond_2e

    :cond_2c
    const-string v17, "android.widget.SeekBar"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    sget-object v25, Lio/flutter/view/g$b;->g:Lio/flutter/view/g$b;

    move-object/from16 v0, v25

    invoke-static {v11, v0}, Lio/flutter/view/g$f;->a(Lio/flutter/view/g$f;Lio/flutter/view/g$b;)Z

    move-result v20

    if-eqz v20, :cond_2d

    const/16 v3, 0x1000

    invoke-virtual {v5, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_2d
    sget-object v25, Lio/flutter/view/g$b;->h:Lio/flutter/view/g$b;

    move-object/from16 v0, v25

    invoke-static {v11, v0}, Lio/flutter/view/g$f;->a(Lio/flutter/view/g$f;Lio/flutter/view/g$b;)Z

    move-result v20

    if-eqz v20, :cond_2e

    const/16 v3, 0x2000

    invoke-virtual {v5, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_2e
    sget-object v22, Lio/flutter/view/g$d;->p:Lio/flutter/view/g$d;

    move-object/from16 v0, v22

    invoke-static {v11, v0}, Lio/flutter/view/g$f;->a(Lio/flutter/view/g$f;Lio/flutter/view/g$d;)Z

    move-result v20

    if-eqz v20, :cond_2f

    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-le v14, v3, :cond_2f

    const/4 v3, 0x1

    invoke-virtual {v5, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLiveRegion(I)V

    :cond_2f
    sget-object v22, Lio/flutter/view/g$d;->a:Lio/flutter/view/g$d;

    move-object/from16 v0, v22

    invoke-static {v11, v0}, Lio/flutter/view/g$f;->a(Lio/flutter/view/g$f;Lio/flutter/view/g$d;)Z

    move-result v20

    sget-object v22, Lio/flutter/view/g$d;->q:Lio/flutter/view/g$d;

    move-object/from16 v0, v22

    invoke-static {v11, v0}, Lio/flutter/view/g$f;->a(Lio/flutter/view/g$f;Lio/flutter/view/g$d;)Z

    move-result v32

    .local v32, "$z2":Z, ""
    if-nez v20, :cond_30

    if-eqz v32, :cond_31

    :cond_30
    const/4 v6, 0x1

    :cond_31
    invoke-virtual {v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    if-eqz v20, :cond_33

    sget-object v22, Lio/flutter/view/g$d;->b:Lio/flutter/view/g$d;

    move-object/from16 v0, v22

    invoke-static {v11, v0}, Lio/flutter/view/g$f;->a(Lio/flutter/view/g$f;Lio/flutter/view/g$d;)Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    invoke-static {v11}, Lio/flutter/view/g$f;->n(Lio/flutter/view/g$f;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    sget-object v22, Lio/flutter/view/g$d;->i:Lio/flutter/view/g$d;

    move-object/from16 v0, v22

    invoke-static {v11, v0}, Lio/flutter/view/g$f;->a(Lio/flutter/view/g$f;Lio/flutter/view/g$d;)Z

    move-result v6

    if-eqz v6, :cond_32

    const-string v17, "android.widget.RadioButton"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    goto :goto_c

    :cond_32
    const-string v17, "android.widget.CheckBox"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    goto :goto_c

    :cond_33
    if-eqz v32, :cond_34

    sget-object v22, Lio/flutter/view/g$d;->r:Lio/flutter/view/g$d;

    move-object/from16 v0, v22

    invoke-static {v11, v0}, Lio/flutter/view/g$f;->a(Lio/flutter/view/g$f;Lio/flutter/view/g$d;)Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    const-string v17, "android.widget.Switch"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    invoke-static {v11}, Lio/flutter/view/g$f;->n(Lio/flutter/view/g$f;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_c

    :cond_34
    sget-object v22, Lio/flutter/view/g$d;->l:Lio/flutter/view/g$d;

    move-object/from16 v0, v22

    invoke-static {v11, v0}, Lio/flutter/view/g$f;->a(Lio/flutter/view/g$f;Lio/flutter/view/g$d;)Z

    move-result v6

    if-nez v6, :cond_35

    invoke-static {v11}, Lio/flutter/view/g$f;->n(Lio/flutter/view/g$f;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    :cond_35
    :goto_c
    sget-object v22, Lio/flutter/view/g$d;->c:Lio/flutter/view/g$d;

    move-object/from16 v0, v22

    invoke-static {v11, v0}, Lio/flutter/view/g$f;->a(Lio/flutter/view/g$f;Lio/flutter/view/g$d;)Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v14, v3, :cond_36

    sget-object v22, Lio/flutter/view/g$d;->j:Lio/flutter/view/g$d;

    move-object/from16 v0, v22

    invoke-static {v11, v0}, Lio/flutter/view/g$f;->a(Lio/flutter/view/g$f;Lio/flutter/view/g$d;)Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setHeading(Z)V

    :cond_36
    move-object/from16 v0, p0

    .end local v21    # "$r12":Lio/flutter/view/g$f;, ""
    .local v0, "$r12":Lio/flutter/view/g$f;, ""
    iget-object v0, v0, Lio/flutter/view/g;->j:Lio/flutter/view/g$f;

    move-object/from16 v21, v0

    .end local v0    # "$r12":Lio/flutter/view/g$f;, ""
    .local v21, "$r12":Lio/flutter/view/g$f;, ""
    if-eqz v21, :cond_37

    move-object/from16 v0, p0

    .end local v21    # "$r12":Lio/flutter/view/g$f;, ""
    .local v0, "$r12":Lio/flutter/view/g$f;, ""
    iget-object v0, v0, Lio/flutter/view/g;->j:Lio/flutter/view/g$f;

    move-object/from16 v21, v0

    .end local v0    # "$r12":Lio/flutter/view/g$f;, ""
    .local v21, "$r12":Lio/flutter/view/g$f;, ""
    invoke-static {v0}, Lio/flutter/view/g$f;->d(Lio/flutter/view/g$f;)I

    move-result v14

    move/from16 v0, p1

    if-ne v14, v0, :cond_37

    const/16 v3, 0x80

    invoke-virtual {v5, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    goto :goto_d

    :cond_37
    const/16 v3, 0x40

    invoke-virtual {v5, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :goto_d
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    move/from16 v0, p1

    if-lt v0, v3, :cond_38

    invoke-static {v11}, Lio/flutter/view/g$f;->o(Lio/flutter/view/g$f;)Ljava/util/List;

    move-result-object v33

    .local v33, "$r20":Ljava/util/List;, ""
    if-eqz v33, :cond_38

    invoke-static {v11}, Lio/flutter/view/g$f;->o(Lio/flutter/view/g$f;)Ljava/util/List;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v34

    .local v34, "$r21":Ljava/util/Iterator;, ""
    :goto_e
    move-object/from16 v0, v34

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_38

    move-object/from16 v0, v34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v35, v10

    check-cast v35, Lio/flutter/view/g$c;

    move-object/from16 v28, v35

    new-instance v29, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    move-object/from16 v0, v28

    invoke-static {v0}, Lio/flutter/view/g$c;->b(Lio/flutter/view/g$c;)I

    move-result p1

    move-object/from16 v0, v28

    invoke-static {v0}, Lio/flutter/view/g$c;->c(Lio/flutter/view/g$c;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v29

    move/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    goto :goto_e

    :cond_38
    invoke-static {v11}, Lio/flutter/view/g$f;->p(Lio/flutter/view/g$f;)Ljava/util/List;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v34

    :cond_39
    :goto_f
    move-object/from16 v0, v34

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3a

    move-object/from16 v0, v34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v36, v10

    check-cast v36, Lio/flutter/view/g$f;

    move-object/from16 v11, v36

    sget-object v22, Lio/flutter/view/g$d;->n:Lio/flutter/view/g$d;

    move-object/from16 v0, v22

    invoke-static {v11, v0}, Lio/flutter/view/g$f;->a(Lio/flutter/view/g$f;Lio/flutter/view/g$d;)Z

    move-result v6

    if-nez v6, :cond_39

    move-object/from16 v0, p0

    iget-object v7, v0, Lio/flutter/view/g;->b:Landroid/view/View;

    invoke-static {v11}, Lio/flutter/view/g$f;->d(Lio/flutter/view/g$f;)I

    move-result p1

    move/from16 v0, p1

    invoke-virtual {v5, v7, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    goto :goto_f

    :cond_3a
    return-object v5
    .end local v16    # "$r9":Landroid/graphics/Rect;, ""
    .end local v18    # "$r10":Landroid/content/Context;, ""
    .end local v29    # "$r18":Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;, ""
    .end local p1    # "$i0":I, ""
    .end local v10    # "$r6":Ljava/lang/Object;, ""
    .end local v30    # "$r19":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;, ""
    .end local v8    # "$r4":Ljava/util/Map;, ""
    .end local v11    # "$r7":Lio/flutter/view/g$f;, ""
    .end local v34    # "$r21":Ljava/util/Iterator;, ""
    .end local v14    # "$i1":I, ""
    .end local v33    # "$r20":Ljava/util/List;, ""
    .end local v5    # "$r2":Landroid/view/accessibility/AccessibilityNodeInfo;, ""
    .end local v24    # "$i2":I, ""
    .end local v4    # "$r1":Lio/flutter/view/AccessibilityViewEmbedder;, ""
    .end local v20    # "$z1":Z, ""
    .end local v9    # "$r5":Ljava/lang/Integer;, ""
    .end local v19
    .end local v21    # "$r12":Lio/flutter/view/g$f;, ""
    .end local v25    # "$r14":Lio/flutter/view/g$b;, ""
    .end local v26    # "$r15":Landroid/graphics/Rect;, ""
    .end local v7    # "$r3":Landroid/view/View;, ""
    .end local v22    # "$r13":Lio/flutter/view/g$d;, ""
    .end local v28    # "$r17":Lio/flutter/view/g$c;, ""
    .end local v15    # "$r8":Lio/flutter/plugin/platform/j;, ""
    .end local v6    # "$z0":Z, ""
    .end local v32    # "$z2":Z, ""
    .end local v27    # "$r16":Landroid/graphics/Rect;, ""
.end method

.method public d()V
    .locals 5

    iget-object v0, p0, Lio/flutter/view/g;->h:Ljava/util/Map;

    .local v0, "$r1":Ljava/util/Map;, ""
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v1, p0, Lio/flutter/view/g;->j:Lio/flutter/view/g$f;

    .local v1, "$r2":Lio/flutter/view/g$f;, ""
    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/flutter/view/g;->j:Lio/flutter/view/g$f;

    invoke-static {v1}, Lio/flutter/view/g$f;->d(Lio/flutter/view/g$f;)I

    move-result v2

    .local v2, "$i0":I, ""
    const v3, 0x10000

    invoke-direct {p0, v2, v3}, Lio/flutter/view/g;->a(II)V

    :cond_0
    const/4 v4, 0x0

    iput-object v4, p0, Lio/flutter/view/g;->j:Lio/flutter/view/g$f;

    const/4 v4, 0x0

    iput-object v4, p0, Lio/flutter/view/g;->p:Lio/flutter/view/g$f;

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lio/flutter/view/g;->c(I)V

    return-void
    .end local v0    # "$r1":Ljava/util/Map;, ""
    .end local v2    # "$i0":I, ""
    .end local v1    # "$r2":Lio/flutter/view/g$f;, ""
.end method

.method public findFocus(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 4

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :goto_0
    goto :goto_1

    :sswitch_0
    iget-object v0, p0, Lio/flutter/view/g;->n:Lio/flutter/view/g$f;

    .local v0, "$r1":Lio/flutter/view/g$f;, ""
    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/flutter/view/g;->n:Lio/flutter/view/g$f;

    invoke-static {v0}, Lio/flutter/view/g$f;->d(Lio/flutter/view/g$f;)I

    move-result p1

    .local p1, "$i0":I, ""
    invoke-virtual {p0, p1}, Lio/flutter/view/g;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    .local v1, "$r2":Landroid/view/accessibility/AccessibilityNodeInfo;, ""
    return-object v1

    :cond_0
    iget-object v2, p0, Lio/flutter/view/g;->l:Ljava/lang/Integer;

    .local v2, "$r3":Ljava/lang/Integer;, ""
    if-eqz v2, :cond_1

    iget-object v2, p0, Lio/flutter/view/g;->l:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lio/flutter/view/g;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    return-object v1

    :cond_1
    :sswitch_1
    iget-object v0, p0, Lio/flutter/view/g;->j:Lio/flutter/view/g$f;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/flutter/view/g;->j:Lio/flutter/view/g$f;

    invoke-static {v0}, Lio/flutter/view/g$f;->d(Lio/flutter/view/g$f;)I

    move-result p1

    invoke-virtual {p0, p1}, Lio/flutter/view/g;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    return-object v1

    :cond_2
    iget-object v2, p0, Lio/flutter/view/g;->k:Ljava/lang/Integer;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lio/flutter/view/g;->k:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lio/flutter/view/g;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    return-object v1

    :cond_3
    :goto_1
    const/4 v3, 0x0

    return-object v3

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
    .end sparse-switch
    .end local p1    # "$i0":I, ""
    .end local v2    # "$r3":Ljava/lang/Integer;, ""
    .end local v0    # "$r1":Lio/flutter/view/g$f;, ""
    .end local v1    # "$r2":Landroid/view/accessibility/AccessibilityNodeInfo;, ""
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .locals 23

    const v3, 0x10000

    move/from16 v0, p1

    if-lt v0, v3, :cond_0

    move-object/from16 v0, p0

    .local v4, "$r2":Lio/flutter/view/AccessibilityViewEmbedder;, ""
    iget-object v4, v0, Lio/flutter/view/g;->e:Lio/flutter/view/AccessibilityViewEmbedder;

    move/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v4, v0, v1, v2}, Lio/flutter/view/AccessibilityViewEmbedder;->performAction(IILandroid/os/Bundle;)Z

    move-result v5

    .local v5, "$z0":Z, ""
    if-eqz v5, :cond_10

    const/16 v3, 0x80

    move/from16 v0, p2

    if-ne v0, v3, :cond_10

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-object v6, v0, Lio/flutter/view/g;->k:Ljava/lang/Integer;

    return v5

    :cond_0
    move-object/from16 v0, p0

    .local v7, "$r3":Ljava/util/Map;, ""
    iget-object v7, v0, Lio/flutter/view/g;->h:Ljava/util/Map;

    move/from16 v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .local v8, "$r4":Ljava/lang/Integer;, ""
    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .local v9, "$r5":Ljava/lang/Object;, ""
    move-object v11, v9

    check-cast v11, Lio/flutter/view/g$f;

    move-object v10, v11

    .local v10, "$r6":Lio/flutter/view/g$f;, ""
    const/4 v5, 0x0

    if-nez v10, :cond_1

    const/4 v3, 0x0

    return v3

    :cond_1
    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    :goto_0
    sget v12, Lio/flutter/view/g;->a:I

    .local v12, "$i2":I, ""
    move/from16 v0, p2

    .local v0, "$i1":I, ""
    sub-int/2addr v0, v12

    move/from16 p2, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lio/flutter/view/g;->i:Ljava/util/Map;

    move/from16 v0, p2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v14, v9

    check-cast v14, Lio/flutter/view/g$c;

    move-object v13, v14

    .local v13, "$r7":Lio/flutter/view/g$c;, ""
    if-eqz v13, :cond_f

    move-object/from16 v0, p0

    .local v15, "$r8":Lio/flutter/embedding/engine/e/b;, ""
    iget-object v15, v0, Lio/flutter/view/g;->c:Lio/flutter/embedding/engine/e/b;

    sget-object v16, Lio/flutter/view/g$b;->r:Lio/flutter/view/g$b;

    .local v16, "$r9":Lio/flutter/view/g$b;, ""
    invoke-static {v13}, Lio/flutter/view/g$c;->d(Lio/flutter/view/g$c;)I

    move-result p2

    .end local v0    # "$i1":I, ""
    .local p2, "$i1":I, ""
    move/from16 v0, p2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v15, v0, v1, v8}, Lio/flutter/embedding/engine/e/b;->a(ILio/flutter/view/g$b;Ljava/lang/Object;)V

    const/4 v3, 0x1

    return v3

    :sswitch_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lio/flutter/view/g;->c:Lio/flutter/embedding/engine/e/b;

    sget-object v16, Lio/flutter/view/g$b;->i:Lio/flutter/view/g$b;

    move/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Lio/flutter/embedding/engine/e/b;->a(ILio/flutter/view/g$b;)V

    const/4 v3, 0x1

    return v3

    :sswitch_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lio/flutter/view/g;->c:Lio/flutter/embedding/engine/e/b;

    sget-object v16, Lio/flutter/view/g$b;->s:Lio/flutter/view/g$b;

    move/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Lio/flutter/embedding/engine/e/b;->a(ILio/flutter/view/g$b;)V

    const/4 v3, 0x1

    return v3

    :sswitch_2
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    move/from16 v0, p2

    if-ge v0, v3, :cond_2

    const/4 v3, 0x0

    return v3

    :cond_2
    new-instance v17, Ljava/util/HashMap;

    .local v17, "$r10":Ljava/util/HashMap;, ""
    move-object/from16 v0, v17

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p3, :cond_3

    const-string v19, "ACTION_ARGUMENT_SELECTION_START_INT"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v18

    .local v18, "$z1":Z, ""
    if-eqz v18, :cond_3

    const-string v19, "ACTION_ARGUMENT_SELECTION_END_INT"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_3

    const/4 v5, 0x1

    :cond_3
    if-eqz v5, :cond_4

    const-string v19, "ACTION_ARGUMENT_SELECTION_START_INT"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    move/from16 v0, p2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v19, "base"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v19, "ACTION_ARGUMENT_SELECTION_END_INT"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    move/from16 v0, p2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v19, "extent"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    invoke-static {v10}, Lio/flutter/view/g$f;->g(Lio/flutter/view/g$f;)I

    move-result p2

    move/from16 v0, p2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v19, "base"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v10}, Lio/flutter/view/g$f;->g(Lio/flutter/view/g$f;)I

    move-result p2

    move/from16 v0, p2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v19, "extent"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lio/flutter/view/g;->c:Lio/flutter/embedding/engine/e/b;

    sget-object v16, Lio/flutter/view/g$b;->l:Lio/flutter/view/g$b;

    move/from16 v0, p1

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v15, v0, v1, v2}, Lio/flutter/embedding/engine/e/b;->a(ILio/flutter/view/g$b;Ljava/lang/Object;)V

    const/4 v3, 0x1

    return v3

    :sswitch_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lio/flutter/view/g;->c:Lio/flutter/embedding/engine/e/b;

    sget-object v16, Lio/flutter/view/g$b;->n:Lio/flutter/view/g$b;

    move/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Lio/flutter/embedding/engine/e/b;->a(ILio/flutter/view/g$b;)V

    const/4 v3, 0x1

    return v3

    :sswitch_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lio/flutter/view/g;->c:Lio/flutter/embedding/engine/e/b;

    sget-object v16, Lio/flutter/view/g$b;->o:Lio/flutter/view/g$b;

    move/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Lio/flutter/embedding/engine/e/b;->a(ILio/flutter/view/g$b;)V

    const/4 v3, 0x1

    return v3

    :sswitch_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lio/flutter/view/g;->c:Lio/flutter/embedding/engine/e/b;

    sget-object v16, Lio/flutter/view/g$b;->m:Lio/flutter/view/g$b;

    move/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Lio/flutter/embedding/engine/e/b;->a(ILio/flutter/view/g$b;)V

    const/4 v3, 0x1

    return v3

    :sswitch_6
    sget-object v16, Lio/flutter/view/g$b;->f:Lio/flutter/view/g$b;

    move-object/from16 v0, v16

    invoke-static {v10, v0}, Lio/flutter/view/g$f;->a(Lio/flutter/view/g$f;Lio/flutter/view/g$b;)Z

    move-result v5

    if-eqz v5, :cond_5

    move-object/from16 v0, p0

    iget-object v15, v0, Lio/flutter/view/g;->c:Lio/flutter/embedding/engine/e/b;

    sget-object v16, Lio/flutter/view/g$b;->f:Lio/flutter/view/g$b;

    move/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Lio/flutter/embedding/engine/e/b;->a(ILio/flutter/view/g$b;)V

    const/4 v3, 0x1

    return v3

    :cond_5
    sget-object v16, Lio/flutter/view/g$b;->d:Lio/flutter/view/g$b;

    move-object/from16 v0, v16

    invoke-static {v10, v0}, Lio/flutter/view/g$f;->a(Lio/flutter/view/g$f;Lio/flutter/view/g$b;)Z

    move-result v5

    if-eqz v5, :cond_6

    move-object/from16 v0, p0

    iget-object v15, v0, Lio/flutter/view/g;->c:Lio/flutter/embedding/engine/e/b;

    sget-object v16, Lio/flutter/view/g$b;->d:Lio/flutter/view/g$b;

    move/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Lio/flutter/embedding/engine/e/b;->a(ILio/flutter/view/g$b;)V

    const/4 v3, 0x1

    return v3

    :cond_6
    sget-object v16, Lio/flutter/view/g$b;->h:Lio/flutter/view/g$b;

    move-object/from16 v0, v16

    invoke-static {v10, v0}, Lio/flutter/view/g$f;->a(Lio/flutter/view/g$f;Lio/flutter/view/g$b;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-static {v10}, Lio/flutter/view/g$f;->r(Lio/flutter/view/g$f;)Ljava/lang/String;

    move-result-object v20

    .local v20, "$r11":Ljava/lang/String;, ""
    move-object/from16 v0, v20

    invoke-static {v10, v0}, Lio/flutter/view/g$f;->a(Lio/flutter/view/g$f;Ljava/lang/String;)Ljava/lang/String;

    const/4 v3, 0x4

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lio/flutter/view/g;->a(II)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lio/flutter/view/g;->c:Lio/flutter/embedding/engine/e/b;

    sget-object v16, Lio/flutter/view/g$b;->h:Lio/flutter/view/g$b;

    move/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Lio/flutter/embedding/engine/e/b;->a(ILio/flutter/view/g$b;)V

    const/4 v3, 0x1

    return v3

    :cond_7
    const/4 v3, 0x0

    return v3

    :sswitch_7
    sget-object v16, Lio/flutter/view/g$b;->e:Lio/flutter/view/g$b;

    move-object/from16 v0, v16

    invoke-static {v10, v0}, Lio/flutter/view/g$f;->a(Lio/flutter/view/g$f;Lio/flutter/view/g$b;)Z

    move-result v5

    if-eqz v5, :cond_8

    move-object/from16 v0, p0

    iget-object v15, v0, Lio/flutter/view/g;->c:Lio/flutter/embedding/engine/e/b;

    sget-object v16, Lio/flutter/view/g$b;->e:Lio/flutter/view/g$b;

    move/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Lio/flutter/embedding/engine/e/b;->a(ILio/flutter/view/g$b;)V

    const/4 v3, 0x1

    return v3

    :cond_8
    sget-object v16, Lio/flutter/view/g$b;->c:Lio/flutter/view/g$b;

    move-object/from16 v0, v16

    invoke-static {v10, v0}, Lio/flutter/view/g$f;->a(Lio/flutter/view/g$f;Lio/flutter/view/g$b;)Z

    move-result v5

    if-eqz v5, :cond_9

    move-object/from16 v0, p0

    iget-object v15, v0, Lio/flutter/view/g;->c:Lio/flutter/embedding/engine/e/b;

    sget-object v16, Lio/flutter/view/g$b;->c:Lio/flutter/view/g$b;

    move/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Lio/flutter/embedding/engine/e/b;->a(ILio/flutter/view/g$b;)V

    const/4 v3, 0x1

    return v3

    :cond_9
    sget-object v16, Lio/flutter/view/g$b;->g:Lio/flutter/view/g$b;

    move-object/from16 v0, v16

    invoke-static {v10, v0}, Lio/flutter/view/g$f;->a(Lio/flutter/view/g$f;Lio/flutter/view/g$b;)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-static {v10}, Lio/flutter/view/g$f;->q(Lio/flutter/view/g$f;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v10, v0}, Lio/flutter/view/g$f;->a(Lio/flutter/view/g$f;Ljava/lang/String;)Ljava/lang/String;

    const/4 v3, 0x4

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lio/flutter/view/g;->a(II)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lio/flutter/view/g;->c:Lio/flutter/embedding/engine/e/b;

    sget-object v16, Lio/flutter/view/g$b;->g:Lio/flutter/view/g$b;

    move/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Lio/flutter/embedding/engine/e/b;->a(ILio/flutter/view/g$b;)V

    const/4 v3, 0x1

    return v3

    :cond_a
    const/4 v3, 0x0

    return v3

    :sswitch_8
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    move/from16 v0, p2

    if-ge v0, v3, :cond_b

    const/4 v3, 0x0

    return v3

    :cond_b
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v10, v1, v2, v3}, Lio/flutter/view/g;->a(Lio/flutter/view/g$f;ILandroid/os/Bundle;Z)Z

    move-result v5

    return v5

    :sswitch_9
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    move/from16 v0, p2

    if-ge v0, v3, :cond_c

    const/4 v3, 0x0

    return v3

    :cond_c
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v10, v1, v2, v3}, Lio/flutter/view/g;->a(Lio/flutter/view/g$f;ILandroid/os/Bundle;Z)Z

    move-result v5

    return v5

    :sswitch_a
    move-object/from16 v0, p0

    iget-object v15, v0, Lio/flutter/view/g;->c:Lio/flutter/embedding/engine/e/b;

    sget-object v16, Lio/flutter/view/g$b;->q:Lio/flutter/view/g$b;

    move/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Lio/flutter/embedding/engine/e/b;->a(ILio/flutter/view/g$b;)V

    const v3, 0x10000

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lio/flutter/view/g;->a(II)V

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-object v6, v0, Lio/flutter/view/g;->j:Lio/flutter/view/g$f;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-object v6, v0, Lio/flutter/view/g;->k:Ljava/lang/Integer;

    const/4 v3, 0x1

    return v3

    :sswitch_b
    move-object/from16 v0, p0

    iget-object v15, v0, Lio/flutter/view/g;->c:Lio/flutter/embedding/engine/e/b;

    sget-object v16, Lio/flutter/view/g$b;->p:Lio/flutter/view/g$b;

    move/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Lio/flutter/embedding/engine/e/b;->a(ILio/flutter/view/g$b;)V

    const v3, 0x8000

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lio/flutter/view/g;->a(II)V

    move-object/from16 v0, p0

    .local v0, "$r12":Lio/flutter/view/g$f;, ""
    iget-object v0, v0, Lio/flutter/view/g;->j:Lio/flutter/view/g$f;

    move-object/from16 v21, v0

    .end local v0    # "$r12":Lio/flutter/view/g$f;, ""
    .local v21, "$r12":Lio/flutter/view/g$f;, ""
    if-nez v21, :cond_d

    move-object/from16 v0, p0

    .local v0, "$r13":Landroid/view/View;, ""
    iget-object v0, v0, Lio/flutter/view/g;->b:Landroid/view/View;

    move-object/from16 v22, v0

    .end local v0    # "$r13":Landroid/view/View;, ""
    .local v22, "$r13":Landroid/view/View;, ""
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_d
    move-object/from16 v0, p0

    iput-object v10, v0, Lio/flutter/view/g;->j:Lio/flutter/view/g$f;

    sget-object v16, Lio/flutter/view/g$b;->g:Lio/flutter/view/g$b;

    move-object/from16 v0, v16

    invoke-static {v10, v0}, Lio/flutter/view/g$f;->a(Lio/flutter/view/g$f;Lio/flutter/view/g$b;)Z

    move-result v5

    if-nez v5, :cond_e

    sget-object v16, Lio/flutter/view/g$b;->h:Lio/flutter/view/g$b;

    move-object/from16 v0, v16

    invoke-static {v10, v0}, Lio/flutter/view/g$f;->a(Lio/flutter/view/g$f;Lio/flutter/view/g$b;)Z

    move-result v5

    if-eqz v5, :cond_11

    :cond_e
    const/4 v3, 0x4

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lio/flutter/view/g;->a(II)V

    const/4 v3, 0x1

    return v3

    :sswitch_c
    move-object/from16 v0, p0

    iget-object v15, v0, Lio/flutter/view/g;->c:Lio/flutter/embedding/engine/e/b;

    sget-object v16, Lio/flutter/view/g$b;->b:Lio/flutter/view/g$b;

    move/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Lio/flutter/embedding/engine/e/b;->a(ILio/flutter/view/g$b;)V

    const/4 v3, 0x1

    return v3

    :sswitch_d
    move-object/from16 v0, p0

    iget-object v15, v0, Lio/flutter/view/g;->c:Lio/flutter/embedding/engine/e/b;

    sget-object v16, Lio/flutter/view/g$b;->a:Lio/flutter/view/g$b;

    move/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Lio/flutter/embedding/engine/e/b;->a(ILio/flutter/view/g$b;)V

    const/4 v3, 0x1

    return v3

    :cond_f
    const/4 v3, 0x0

    return v3

    :cond_10
    return v5

    :cond_11
    const/4 v3, 0x1

    return v3

    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_d
        0x20 -> :sswitch_c
        0x40 -> :sswitch_b
        0x80 -> :sswitch_a
        0x100 -> :sswitch_9
        0x200 -> :sswitch_8
        0x1000 -> :sswitch_7
        0x2000 -> :sswitch_6
        0x4000 -> :sswitch_5
        0x8000 -> :sswitch_4
        0x10000 -> :sswitch_3
        0x20000 -> :sswitch_2
        0x100000 -> :sswitch_1
        0x1020036 -> :sswitch_0
    .end sparse-switch
    .end local v13    # "$r7":Lio/flutter/view/g$c;, ""
    .end local v8    # "$r4":Ljava/lang/Integer;, ""
    .end local v10    # "$r6":Lio/flutter/view/g$f;, ""
    .end local v15    # "$r8":Lio/flutter/embedding/engine/e/b;, ""
    .end local v5    # "$z0":Z, ""
    .end local v17    # "$r10":Ljava/util/HashMap;, ""
    .end local v12    # "$i2":I, ""
    .end local v21    # "$r12":Lio/flutter/view/g$f;, ""
    .end local v9    # "$r5":Ljava/lang/Object;, ""
    .end local v4    # "$r2":Lio/flutter/view/AccessibilityViewEmbedder;, ""
    .end local v20    # "$r11":Ljava/lang/String;, ""
    .end local v16    # "$r9":Lio/flutter/view/g$b;, ""
    .end local v7    # "$r3":Ljava/util/Map;, ""
    .end local v22    # "$r13":Landroid/view/View;, ""
    .end local v18    # "$z1":Z, ""
    .end local p2    # "$i1":I, ""
.end method
