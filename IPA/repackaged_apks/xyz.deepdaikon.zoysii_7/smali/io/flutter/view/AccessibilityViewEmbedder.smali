.class final Lio/flutter/view/AccessibilityViewEmbedder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/view/h;,
        Lio/flutter/view/AccessibilityViewEmbedder$a;,
        Lio/flutter/view/AccessibilityViewEmbedder$b;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AccessibilityBridge"


# instance fields
.field private final embeddedViewToDisplayBounds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private final flutterIdToOrigin:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lio/flutter/view/AccessibilityViewEmbedder$b;",
            ">;"
        }
    .end annotation
.end field

.field private nextFlutterId:I

.field private final originToFlutterId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lio/flutter/view/AccessibilityViewEmbedder$b;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final reflectionAccessors:Lio/flutter/view/AccessibilityViewEmbedder$a;

.field private final rootAccessibilityView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;I)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/flutter/view/AccessibilityViewEmbedder$a;

    .local v0, "$r2":Lio/flutter/view/AccessibilityViewEmbedder$a;, ""
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/flutter/view/AccessibilityViewEmbedder$a;-><init>(Lio/flutter/view/h;)V

    iput-object v0, p0, Lio/flutter/view/AccessibilityViewEmbedder;->reflectionAccessors:Lio/flutter/view/AccessibilityViewEmbedder$a;

    new-instance v2, Landroid/util/SparseArray;

    .local v2, "$r3":Landroid/util/SparseArray;, ""
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lio/flutter/view/AccessibilityViewEmbedder;->flutterIdToOrigin:Landroid/util/SparseArray;

    iput-object p1, p0, Lio/flutter/view/AccessibilityViewEmbedder;->rootAccessibilityView:Landroid/view/View;

    iput p2, p0, Lio/flutter/view/AccessibilityViewEmbedder;->nextFlutterId:I

    new-instance v3, Ljava/util/HashMap;

    .local v3, "$r4":Ljava/util/HashMap;, ""
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lio/flutter/view/AccessibilityViewEmbedder;->originToFlutterId:Ljava/util/Map;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lio/flutter/view/AccessibilityViewEmbedder;->embeddedViewToDisplayBounds:Ljava/util/Map;

    return-void
    .end local v3    # "$r4":Ljava/util/HashMap;, ""
    .end local v0    # "$r2":Lio/flutter/view/AccessibilityViewEmbedder$a;, ""
    .end local v2    # "$r3":Landroid/util/SparseArray;, ""
.end method

.method private addChildrenToFlutterNode(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 18

    const/4 v2, 0x0

    .local v2, "$i0":I, ""
    :goto_0
    move-object/from16 v0, p1

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v3

    .local v3, "$i1":I, ""
    if-ge v2, v3, :cond_2

    move-object/from16 v0, p0

    .local v4, "$r4":Lio/flutter/view/AccessibilityViewEmbedder$a;, ""
    iget-object v4, v0, Lio/flutter/view/AccessibilityViewEmbedder;->reflectionAccessors:Lio/flutter/view/AccessibilityViewEmbedder$a;

    move-object/from16 v0, p1

    invoke-static {v4, v0, v2}, Lio/flutter/view/AccessibilityViewEmbedder$a;->a(Lio/flutter/view/AccessibilityViewEmbedder$a;Landroid/view/accessibility/AccessibilityNodeInfo;I)Ljava/lang/Long;

    move-result-object v5

    .local v5, "$r5":Ljava/lang/Long;, ""
    if-nez v5, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .local v6, "$l2":J, ""
    invoke-static {v6, v7}, Lio/flutter/view/AccessibilityViewEmbedder$a;->a(J)I

    move-result v3

    new-instance v8, Lio/flutter/view/AccessibilityViewEmbedder$b;

    .local v8, "$r6":Lio/flutter/view/AccessibilityViewEmbedder$b;, ""
    const/4 v9, 0x0

    move-object/from16 v0, p2

    invoke-direct {v8, v0, v3, v9}, Lio/flutter/view/AccessibilityViewEmbedder$b;-><init>(Landroid/view/View;ILio/flutter/view/h;)V

    move-object/from16 v0, p0

    .local v10, "$r7":Ljava/util/Map;, ""
    iget-object v10, v0, Lio/flutter/view/AccessibilityViewEmbedder;->originToFlutterId:Ljava/util/Map;

    invoke-interface {v10, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    .local v11, "$z0":Z, ""
    if-eqz v11, :cond_1

    move-object/from16 v0, p0

    iget-object v10, v0, Lio/flutter/view/AccessibilityViewEmbedder;->originToFlutterId:Ljava/util/Map;

    invoke-interface {v10, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .local v12, "$r8":Ljava/lang/Object;, ""
    move-object/from16 v14, v12

    check-cast v14, Ljava/lang/Integer;

    move-object/from16 v13, v14

    .local v13, "$r9":Ljava/lang/Integer;, ""
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_1

    :cond_1
    move-object/from16 v0, p0

    .local v15, "$i3":I, ""
    iget v15, v0, Lio/flutter/view/AccessibilityViewEmbedder;->nextFlutterId:I

    add-int/lit8 v16, v15, 0x1

    .local v16, "$i4":I, ""
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lio/flutter/view/AccessibilityViewEmbedder;->nextFlutterId:I

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v3, v15}, Lio/flutter/view/AccessibilityViewEmbedder;->cacheVirtualIdMappings(Landroid/view/View;II)V

    move/from16 v3, v15

    :goto_1
    move-object/from16 v0, p0

    .local v0, "$r10":Landroid/view/View;, ""
    iget-object v0, v0, Lio/flutter/view/AccessibilityViewEmbedder;->rootAccessibilityView:Landroid/view/View;

    move-object/from16 v17, v0

    .end local v0    # "$r10":Landroid/view/View;, ""
    .local v17, "$r10":Landroid/view/View;, ""
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
    .end local v11    # "$z0":Z, ""
    .end local v13    # "$r9":Ljava/lang/Integer;, ""
    .end local v6    # "$l2":J, ""
    .end local v3    # "$i1":I, ""
    .end local v12    # "$r8":Ljava/lang/Object;, ""
    .end local v10    # "$r7":Ljava/util/Map;, ""
    .end local v16    # "$i4":I, ""
    .end local v2    # "$i0":I, ""
    .end local v4    # "$r4":Lio/flutter/view/AccessibilityViewEmbedder$a;, ""
    .end local v5    # "$r5":Ljava/lang/Long;, ""
    .end local v15    # "$i3":I, ""
    .end local v8    # "$r6":Lio/flutter/view/AccessibilityViewEmbedder$b;, ""
    .end local v17    # "$r10":Landroid/view/View;, ""
.end method

.method private cacheVirtualIdMappings(Landroid/view/View;II)V
    .locals 5

    new-instance v0, Lio/flutter/view/AccessibilityViewEmbedder$b;

    .local v0, "$r1":Lio/flutter/view/AccessibilityViewEmbedder$b;, ""
    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lio/flutter/view/AccessibilityViewEmbedder$b;-><init>(Landroid/view/View;ILio/flutter/view/h;)V

    iget-object v2, p0, Lio/flutter/view/AccessibilityViewEmbedder;->originToFlutterId:Ljava/util/Map;

    .local v2, "$r4":Ljava/util/Map;, ""
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .local v3, "$r2":Ljava/lang/Integer;, ""
    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lio/flutter/view/AccessibilityViewEmbedder;->flutterIdToOrigin:Landroid/util/SparseArray;

    .local v4, "$r5":Landroid/util/SparseArray;, ""
    invoke-virtual {v4, p3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
    .end local v4    # "$r5":Landroid/util/SparseArray;, ""
    .end local v3    # "$r2":Ljava/lang/Integer;, ""
    .end local v0    # "$r1":Lio/flutter/view/AccessibilityViewEmbedder$b;, ""
    .end local v2    # "$r4":Ljava/util/Map;, ""
.end method

.method private convertToFlutterNode(Landroid/view/accessibility/AccessibilityNodeInfo;ILandroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 9

    iget-object v0, p0, Lio/flutter/view/AccessibilityViewEmbedder;->rootAccessibilityView:Landroid/view/View;

    .local v0, "$r3":Landroid/view/View;, ""
    invoke-static {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/View;I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    .local v1, "$r4":Landroid/view/accessibility/AccessibilityNodeInfo;, ""
    iget-object v0, p0, Lio/flutter/view/AccessibilityViewEmbedder;->rootAccessibilityView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .local v2, "$r5":Landroid/content/Context;, ""
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .local v3, "$r6":Ljava/lang/String;, ""
    invoke-virtual {v1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lio/flutter/view/AccessibilityViewEmbedder;->rootAccessibilityView:Landroid/view/View;

    invoke-virtual {v1, v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object v4

    .local v4, "$r7":Ljava/lang/CharSequence;, ""
    invoke-virtual {v1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lio/flutter/view/AccessibilityViewEmbedder;->embeddedViewToDisplayBounds:Ljava/util/Map;

    .local v5, "$r8":Ljava/util/Map;, ""
    invoke-interface {v5, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .local v6, "$r9":Ljava/lang/Object;, ""
    move-object v8, v6

    check-cast v8, Landroid/graphics/Rect;

    move-object v7, v8

    .local v7, "$r10":Landroid/graphics/Rect;, ""
    invoke-direct {p0, p1, v1}, Lio/flutter/view/AccessibilityViewEmbedder;->copyAccessibilityFields(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-direct {p0, p1, v7, v1}, Lio/flutter/view/AccessibilityViewEmbedder;->setFlutterNodesTranslateBounds(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/graphics/Rect;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-direct {p0, p1, p3, v1}, Lio/flutter/view/AccessibilityViewEmbedder;->addChildrenToFlutterNode(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-direct {p0, p1, p3, v1}, Lio/flutter/view/AccessibilityViewEmbedder;->setFlutterNodeParent(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-object v1
    .end local v4    # "$r7":Ljava/lang/CharSequence;, ""
    .end local v5    # "$r8":Ljava/util/Map;, ""
    .end local v0    # "$r3":Landroid/view/View;, ""
    .end local v7    # "$r10":Landroid/graphics/Rect;, ""
    .end local v2    # "$r5":Landroid/content/Context;, ""
    .end local v3    # "$r6":Ljava/lang/String;, ""
    .end local v6    # "$r9":Ljava/lang/Object;, ""
    .end local v1    # "$r4":Landroid/view/accessibility/AccessibilityNodeInfo;, ""
.end method

.method private copyAccessibilityFields(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 8

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isAccessibilityFocused()Z

    move-result v0

    .local v0, "$z0":Z, ""
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isCheckable()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isChecked()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    .local v1, "$r3":Ljava/lang/CharSequence;, ""
    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEnabled()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocusable()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocusable(Z)V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocused(Z)V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isLongClickable()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getMovementGranularities()I

    move-result v2

    .local v2, "$i0":I, ""
    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMovementGranularities(I)V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isPassword()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPassword(Z)V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isScrollable()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isSelected()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isVisibleToUser()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-lt v2, v3, :cond_0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEditable()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEditable(Z)V

    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->canOpenPopup()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCanOpenPopup(Z)V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getCollectionInfo()Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object v4

    .local v4, "$r4":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;, ""
    invoke-virtual {p2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getCollectionItemInfo()Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object v5

    .local v5, "$r5":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;, ""
    invoke-virtual {p2, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isContentInvalid()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentInvalid(Z)V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isDismissable()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setDismissable(Z)V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getInputType()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setInputType(I)V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getLiveRegion()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLiveRegion(I)V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isMultiLine()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMultiLine(Z)V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getRangeInfo()Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    move-result-object v6

    .local v6, "$r6":Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;, ""
    invoke-virtual {p2, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setRangeInfo(Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;)V

    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_2

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getError()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setError(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getMaxTextLength()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMaxTextLength(I)V

    :cond_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_3

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isContextClickable()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContextClickable(Z)V

    :cond_3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_4

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getDrawingOrder()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setDrawingOrder(I)V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isImportantForAccessibility()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setImportantForAccessibility(Z)V

    :cond_4
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_5

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAvailableExtraData()Ljava/util/List;

    move-result-object v7

    .local v7, "$r7":Ljava/util/List;, ""
    invoke-virtual {p2, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAvailableExtraData(Ljava/util/List;)V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getHintText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setHintText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isShowingHintText()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setShowingHintText(Z)V

    :cond_5
    return-void
    .end local v6    # "$r6":Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;, ""
    .end local v7    # "$r7":Ljava/util/List;, ""
    .end local v1    # "$r3":Ljava/lang/CharSequence;, ""
    .end local v0    # "$z0":Z, ""
    .end local v2    # "$i0":I, ""
    .end local v4    # "$r4":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;, ""
    .end local v5    # "$r5":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;, ""
.end method

.method private setFlutterNodeParent(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 11

    iget-object v0, p0, Lio/flutter/view/AccessibilityViewEmbedder;->reflectionAccessors:Lio/flutter/view/AccessibilityViewEmbedder$a;

    .local v0, "$r5":Lio/flutter/view/AccessibilityViewEmbedder$a;, ""
    invoke-static {v0, p1}, Lio/flutter/view/AccessibilityViewEmbedder$a;->b(Lio/flutter/view/AccessibilityViewEmbedder$a;Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/Long;

    move-result-object v1

    .local v1, "$r6":Ljava/lang/Long;, ""
    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .local v2, "$l0":J, ""
    invoke-static {v2, v3}, Lio/flutter/view/AccessibilityViewEmbedder$a;->a(J)I

    move-result v4

    .local v4, "$i1":I, ""
    iget-object v5, p0, Lio/flutter/view/AccessibilityViewEmbedder;->originToFlutterId:Ljava/util/Map;

    .local v5, "$r7":Ljava/util/Map;, ""
    new-instance v6, Lio/flutter/view/AccessibilityViewEmbedder$b;

    .local v6, "$r2":Lio/flutter/view/AccessibilityViewEmbedder$b;, ""
    const/4 v7, 0x0

    invoke-direct {v6, p2, v4, v7}, Lio/flutter/view/AccessibilityViewEmbedder$b;-><init>(Landroid/view/View;ILio/flutter/view/h;)V

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .local v8, "$r8":Ljava/lang/Object;, ""
    move-object v10, v8

    check-cast v10, Ljava/lang/Integer;

    move-object v9, v10

    .local v9, "$r9":Ljava/lang/Integer;, ""
    if-eqz v9, :cond_1

    iget-object p2, p0, Lio/flutter/view/AccessibilityViewEmbedder;->rootAccessibilityView:Landroid/view/View;

    .local p2, "$r4":Landroid/view/View;, ""
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p3, p2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;I)V

    :cond_1
    return-void
    .end local v4    # "$i1":I, ""
    .end local v2    # "$l0":J, ""
    .end local v0    # "$r5":Lio/flutter/view/AccessibilityViewEmbedder$a;, ""
    .end local v8    # "$r8":Ljava/lang/Object;, ""
    .end local v5    # "$r7":Ljava/util/Map;, ""
    .end local v9    # "$r9":Ljava/lang/Integer;, ""
    .end local v6    # "$r2":Lio/flutter/view/AccessibilityViewEmbedder$b;, ""
    .end local p2    # "$r4":Landroid/view/View;, ""
    .end local v1    # "$r6":Ljava/lang/Long;, ""
.end method

.method private setFlutterNodesTranslateBounds(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/graphics/Rect;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    new-instance v0, Landroid/graphics/Rect;

    .local v0, "$r2":Landroid/graphics/Rect;, ""
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    iget v1, p2, Landroid/graphics/Rect;->left:I

    .local v1, "$i0":I, ""
    iget v2, p2, Landroid/graphics/Rect;->top:I

    .local v2, "$i1":I, ""
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {p3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    return-void
    .end local v2    # "$i1":I, ""
    .end local v0    # "$r2":Landroid/graphics/Rect;, ""
    .end local v1    # "$i0":I, ""
.end method


# virtual methods
.method public createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 11

    iget-object v0, p0, Lio/flutter/view/AccessibilityViewEmbedder;->flutterIdToOrigin:Landroid/util/SparseArray;

    .local v0, "$r1":Landroid/util/SparseArray;, ""
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    .local v1, "$r2":Ljava/lang/Object;, ""
    move-object v3, v1

    check-cast v3, Lio/flutter/view/AccessibilityViewEmbedder$b;

    move-object v2, v3

    .local v2, "$r3":Lio/flutter/view/AccessibilityViewEmbedder$b;, ""
    if-nez v2, :cond_0

    const/4 v4, 0x0

    return-object v4

    :cond_0
    iget-object v5, p0, Lio/flutter/view/AccessibilityViewEmbedder;->embeddedViewToDisplayBounds:Ljava/util/Map;

    .local v5, "$r4":Ljava/util/Map;, ""
    iget-object v6, v2, Lio/flutter/view/AccessibilityViewEmbedder$b;->a:Landroid/view/View;

    .local v6, "$r5":Landroid/view/View;, ""
    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    .local v7, "$z0":Z, ""
    if-nez v7, :cond_1

    const/4 v4, 0x0

    return-object v4

    :cond_1
    iget-object v6, v2, Lio/flutter/view/AccessibilityViewEmbedder$b;->a:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v8

    .local v8, "$r6":Landroid/view/accessibility/AccessibilityNodeProvider;, ""
    if-nez v8, :cond_2

    const/4 v4, 0x0

    return-object v4

    :cond_2
    iget-object v6, v2, Lio/flutter/view/AccessibilityViewEmbedder$b;->a:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v8

    iget v9, v2, Lio/flutter/view/AccessibilityViewEmbedder$b;->b:I

    .local v9, "$i1":I, ""
    invoke-virtual {v8, v9}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v10

    .local v10, "$r7":Landroid/view/accessibility/AccessibilityNodeInfo;, ""
    if-nez v10, :cond_3

    const/4 v4, 0x0

    return-object v4

    :cond_3
    iget-object v6, v2, Lio/flutter/view/AccessibilityViewEmbedder$b;->a:Landroid/view/View;

    invoke-direct {p0, v10, p1, v6}, Lio/flutter/view/AccessibilityViewEmbedder;->convertToFlutterNode(Landroid/view/accessibility/AccessibilityNodeInfo;ILandroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v10

    return-object v10
    .end local v5    # "$r4":Ljava/util/Map;, ""
    .end local v8    # "$r6":Landroid/view/accessibility/AccessibilityNodeProvider;, ""
    .end local v2    # "$r3":Lio/flutter/view/AccessibilityViewEmbedder$b;, ""
    .end local v10    # "$r7":Landroid/view/accessibility/AccessibilityNodeInfo;, ""
    .end local v9    # "$i1":I, ""
    .end local v0    # "$r1":Landroid/util/SparseArray;, ""
    .end local v1    # "$r2":Ljava/lang/Object;, ""
    .end local v6    # "$r5":Landroid/view/View;, ""
    .end local v7    # "$z0":Z, ""
.end method

.method public getRecordFlutterId(Landroid/view/View;Landroid/view/accessibility/AccessibilityRecord;)Ljava/lang/Integer;
    .locals 11

    iget-object v0, p0, Lio/flutter/view/AccessibilityViewEmbedder;->reflectionAccessors:Lio/flutter/view/AccessibilityViewEmbedder$a;

    .local v0, "$r4":Lio/flutter/view/AccessibilityViewEmbedder$a;, ""
    invoke-static {v0, p2}, Lio/flutter/view/AccessibilityViewEmbedder$a;->a(Lio/flutter/view/AccessibilityViewEmbedder$a;Landroid/view/accessibility/AccessibilityRecord;)Ljava/lang/Long;

    move-result-object v1

    .local v1, "$r5":Ljava/lang/Long;, ""
    if-nez v1, :cond_0

    const/4 v2, 0x0

    return-object v2

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .local v3, "$l0":J, ""
    invoke-static {v3, v4}, Lio/flutter/view/AccessibilityViewEmbedder$a;->a(J)I

    move-result v5

    .local v5, "$i1":I, ""
    iget-object v6, p0, Lio/flutter/view/AccessibilityViewEmbedder;->originToFlutterId:Ljava/util/Map;

    .local v6, "$r6":Ljava/util/Map;, ""
    new-instance v7, Lio/flutter/view/AccessibilityViewEmbedder$b;

    .local v7, "$r1":Lio/flutter/view/AccessibilityViewEmbedder$b;, ""
    const/4 v2, 0x0

    invoke-direct {v7, p1, v5, v2}, Lio/flutter/view/AccessibilityViewEmbedder$b;-><init>(Landroid/view/View;ILio/flutter/view/h;)V

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .local v8, "$r7":Ljava/lang/Object;, ""
    move-object v10, v8

    check-cast v10, Ljava/lang/Integer;

    move-object v9, v10

    .local v9, "$r8":Ljava/lang/Integer;, ""
    return-object v9
    .end local v3    # "$l0":J, ""
    .end local v5    # "$i1":I, ""
    .end local v0    # "$r4":Lio/flutter/view/AccessibilityViewEmbedder$a;, ""
    .end local v8    # "$r7":Ljava/lang/Object;, ""
    .end local v1    # "$r5":Ljava/lang/Long;, ""
    .end local v9    # "$r8":Ljava/lang/Integer;, ""
    .end local v7    # "$r1":Lio/flutter/view/AccessibilityViewEmbedder$b;, ""
    .end local v6    # "$r6":Ljava/util/Map;, ""
.end method

.method public getRootNode(Landroid/view/View;ILandroid/graphics/Rect;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 8

    invoke-virtual {p1}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .local v0, "$r4":Landroid/view/accessibility/AccessibilityNodeInfo;, ""
    iget-object v1, p0, Lio/flutter/view/AccessibilityViewEmbedder;->reflectionAccessors:Lio/flutter/view/AccessibilityViewEmbedder$a;

    .local v1, "$r5":Lio/flutter/view/AccessibilityViewEmbedder$a;, ""
    invoke-static {v1, v0}, Lio/flutter/view/AccessibilityViewEmbedder$a;->a(Lio/flutter/view/AccessibilityViewEmbedder$a;Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/Long;

    move-result-object v2

    .local v2, "$r6":Ljava/lang/Long;, ""
    if-nez v2, :cond_0

    const/4 v3, 0x0

    return-object v3

    :cond_0
    iget-object v4, p0, Lio/flutter/view/AccessibilityViewEmbedder;->embeddedViewToDisplayBounds:Ljava/util/Map;

    .local v4, "$r1":Ljava/util/Map;, ""
    invoke-interface {v4, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .local v5, "$l1":J, ""
    invoke-static {v5, v6}, Lio/flutter/view/AccessibilityViewEmbedder$a;->a(J)I

    move-result v7

    .local v7, "$i2":I, ""
    invoke-direct {p0, p1, v7, p2}, Lio/flutter/view/AccessibilityViewEmbedder;->cacheVirtualIdMappings(Landroid/view/View;II)V

    invoke-direct {p0, v0, p2, p1}, Lio/flutter/view/AccessibilityViewEmbedder;->convertToFlutterNode(Landroid/view/accessibility/AccessibilityNodeInfo;ILandroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
    .end local v1    # "$r5":Lio/flutter/view/AccessibilityViewEmbedder$a;, ""
    .end local v0    # "$r4":Landroid/view/accessibility/AccessibilityNodeInfo;, ""
    .end local v4    # "$r1":Ljava/util/Map;, ""
    .end local v2    # "$r6":Ljava/lang/Long;, ""
    .end local v5    # "$l1":J, ""
    .end local v7    # "$i2":I, ""
.end method

.method public onAccessibilityHoverEvent(ILandroid/view/MotionEvent;)Z
    .locals 44

    move-object/from16 v0, p0

    .local v0, "$r4":Landroid/util/SparseArray;, ""
    iget-object v0, v0, Lio/flutter/view/AccessibilityViewEmbedder;->flutterIdToOrigin:Landroid/util/SparseArray;

    move-object/from16 v16, v0

    .end local v0    # "$r4":Landroid/util/SparseArray;, ""
    .local v16, "$r4":Landroid/util/SparseArray;, ""
    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    .local v17, "$r5":Ljava/lang/Object;, ""
    move-object/from16 v19, v17

    check-cast v19, Lio/flutter/view/AccessibilityViewEmbedder$b;

    move-object/from16 v18, v19

    const/16 p1, 0x0

    if-nez v18, :cond_0

    const/16 v20, 0x0

    return v20

    :cond_0
    move-object/from16 v0, p0

    .local v0, "$r7":Ljava/util/Map;, ""
    iget-object v0, v0, Lio/flutter/view/AccessibilityViewEmbedder;->embeddedViewToDisplayBounds:Ljava/util/Map;

    move-object/from16 v21, v0

    .end local v0    # "$r7":Ljava/util/Map;, ""
    .local v21, "$r7":Ljava/util/Map;, ""
    move-object/from16 v0, v18

    .local v0, "$r8":Landroid/view/View;, ""
    iget-object v0, v0, Lio/flutter/view/AccessibilityViewEmbedder$b;->a:Landroid/view/View;

    move-object/from16 v22, v0

    .end local v0    # "$r8":Landroid/view/View;, ""
    .local v22, "$r8":Landroid/view/View;, ""
    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v24, v17

    check-cast v24, Landroid/graphics/Rect;

    move-object/from16 v23, v24

    move-object/from16 v0, p2

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v25

    .local v25, "$i1":I, ""
    move/from16 v0, v25

    .local v0, "$r2":[Landroid/view/MotionEvent$PointerProperties;, ""
    new-array v0, v0, [Landroid/view/MotionEvent$PointerProperties;

    move-object/from16 v26, v0

    .end local v0    # "$r2":[Landroid/view/MotionEvent$PointerProperties;, ""
    .local v26, "$r2":[Landroid/view/MotionEvent$PointerProperties;, ""
    move/from16 v0, v25

    .local v0, "$r3":[Landroid/view/MotionEvent$PointerCoords;, ""
    new-array v0, v0, [Landroid/view/MotionEvent$PointerCoords;

    move-object/from16 v27, v0

    .end local v0    # "$r3":[Landroid/view/MotionEvent$PointerCoords;, ""
    .local v27, "$r3":[Landroid/view/MotionEvent$PointerCoords;, ""
    :goto_0
    move-object/from16 v0, p2

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v25

    move/from16 v0, p1

    move/from16 v1, v25

    if-ge v0, v1, :cond_1

    new-instance v28, Landroid/view/MotionEvent$PointerProperties;

    .local v28, "$r10":Landroid/view/MotionEvent$PointerProperties;, ""
    move-object/from16 v0, v28

    invoke-direct {v0}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v28, v26, p1

    aget-object v28, v26, p1

    move-object/from16 v0, p2

    move/from16 v1, p1

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    new-instance v29, Landroid/view/MotionEvent$PointerCoords;

    .local v29, "$r11":Landroid/view/MotionEvent$PointerCoords;, ""
    move-object/from16 v0, v29

    invoke-direct {v0}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    move-object/from16 v0, p2

    move/from16 v1, p1

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    new-instance v30, Landroid/view/MotionEvent$PointerCoords;

    .local v30, "$r12":Landroid/view/MotionEvent$PointerCoords;, ""
    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Landroid/view/MotionEvent$PointerCoords;-><init>(Landroid/view/MotionEvent$PointerCoords;)V

    aput-object v30, v27, p1

    aget-object v29, v27, p1

    move-object/from16 v0, v29

    .local v0, "$f0":F, ""
    iget v0, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    move/from16 v31, v0

    .end local v0    # "$f0":F, ""
    .local v31, "$f0":F, ""
    move-object/from16 v0, v23

    .end local v25    # "$i1":I, ""
    .local v0, "$i1":I, ""
    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v25, v0

    .end local v0    # "$i1":I, ""
    .local v25, "$i1":I, ""
    int-to-float v0, v0

    .local v0, "$f1":F, ""
    move/from16 v32, v0

    .end local v0    # "$f1":F, ""
    .local v32, "$f1":F, ""
    move/from16 v0, v31

    .end local v31    # "$f0":F, ""
    .local v0, "$f0":F, ""
    move/from16 v1, v32

    sub-float/2addr v0, v1

    move/from16 v31, v0

    move-object/from16 v1, v29

    iput v0, v1, Landroid/view/MotionEvent$PointerCoords;->x:F

    aget-object v29, v27, p1

    move-object/from16 v0, v29

    iget v0, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    move/from16 v31, v0

    .end local v0    # "$f0":F, ""
    .local v31, "$f0":F, ""
    move-object/from16 v0, v23

    .end local v25    # "$i1":I, ""
    .local v0, "$i1":I, ""
    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v25, v0

    .end local v0    # "$i1":I, ""
    .local v25, "$i1":I, ""
    int-to-float v0, v0

    .end local v32    # "$f1":F, ""
    .local v0, "$f1":F, ""
    move/from16 v32, v0

    .end local v0    # "$f1":F, ""
    .local v32, "$f1":F, ""
    move/from16 v0, v31

    .end local v31    # "$f0":F, ""
    .local v0, "$f0":F, ""
    move/from16 v1, v32

    sub-float/2addr v0, v1

    move/from16 v31, v0

    move-object/from16 v1, v29

    iput v0, v1, Landroid/view/MotionEvent$PointerCoords;->y:F

    add-int/lit8 p1, p1, 0x1

    .local p1, "$i0":I, ""
    goto :goto_0

    :cond_1
    move-object/from16 v0, p2

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v33

    .local v33, "$l2":J, ""
    move-object/from16 v0, p2

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v35

    .local v35, "$l3":J, ""
    move-object/from16 v0, p2

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    move-object/from16 v0, p2

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v25

    move-object/from16 v0, p2

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v37

    .local v37, "$i4":I, ""
    move-object/from16 v0, p2

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v38

    .local v38, "$i5":I, ""
    move-object/from16 v0, p2

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v31

    .end local v0    # "$f0":F, ""
    .local v31, "$f0":F, ""
    move-object/from16 v0, p2

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v32

    move-object/from16 v0, p2

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v39

    .local v39, "$i6":I, ""
    move-object/from16 v0, p2

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v40

    .local v40, "$i7":I, ""
    move-object/from16 v0, p2

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getSource()I

    move-result v41

    .local v41, "$i8":I, ""
    move-object/from16 v0, p2

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getFlags()I

    move-result v42

    .local v42, "$i9":I, ""
    move-wide/from16 v0, v33

    move-wide/from16 v2, v35

    move/from16 v4, p1

    move/from16 v5, v25

    move-object/from16 v6, v26

    move-object/from16 v7, v27

    move/from16 v8, v37

    move/from16 v9, v38

    move/from16 v10, v31

    move/from16 v11, v32

    move/from16 v12, v39

    move/from16 v13, v40

    move/from16 v14, v41

    move/from16 v15, v42

    invoke-static/range {v0 .. v15}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object p2

    .local p2, "$r1":Landroid/view/MotionEvent;, ""
    move-object/from16 v0, v18

    .end local v22    # "$r8":Landroid/view/View;, ""
    .local v0, "$r8":Landroid/view/View;, ""
    iget-object v0, v0, Lio/flutter/view/AccessibilityViewEmbedder$b;->a:Landroid/view/View;

    move-object/from16 v22, v0

    .end local v0    # "$r8":Landroid/view/View;, ""
    .local v22, "$r8":Landroid/view/View;, ""
    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v43

    .local v43, "$z0":Z, ""
    return v43
    .end local v32    # "$f1":F, ""
    .end local v33    # "$l2":J, ""
    .end local v40    # "$i7":I, ""
    .end local v21    # "$r7":Ljava/util/Map;, ""
    .end local v38    # "$i5":I, ""
    .end local v31    # "$f0":F, ""
    .end local v26    # "$r2":[Landroid/view/MotionEvent$PointerProperties;, ""
    .end local v16    # "$r4":Landroid/util/SparseArray;, ""
    .end local v37    # "$i4":I, ""
    .end local v43    # "$z0":Z, ""
    .end local p1    # "$i0":I, ""
    .end local v17    # "$r5":Ljava/lang/Object;, ""
    .end local v35    # "$l3":J, ""
    .end local v29    # "$r11":Landroid/view/MotionEvent$PointerCoords;, ""
    .end local v39    # "$i6":I, ""
    .end local v42    # "$i9":I, ""
    .end local v22    # "$r8":Landroid/view/View;, ""
    .end local v28    # "$r10":Landroid/view/MotionEvent$PointerProperties;, ""
    .end local p2    # "$r1":Landroid/view/MotionEvent;, ""
    .end local v25    # "$i1":I, ""
    .end local v27    # "$r3":[Landroid/view/MotionEvent$PointerCoords;, ""
    .end local v41    # "$i8":I, ""
    .end local v30    # "$r12":Landroid/view/MotionEvent$PointerCoords;, ""
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .locals 8

    iget-object v0, p0, Lio/flutter/view/AccessibilityViewEmbedder;->flutterIdToOrigin:Landroid/util/SparseArray;

    .local v0, "$r2":Landroid/util/SparseArray;, ""
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    .local v1, "$r3":Ljava/lang/Object;, ""
    move-object v3, v1

    check-cast v3, Lio/flutter/view/AccessibilityViewEmbedder$b;

    move-object v2, v3

    .local v2, "$r4":Lio/flutter/view/AccessibilityViewEmbedder$b;, ""
    if-nez v2, :cond_0

    const/4 v4, 0x0

    return v4

    :cond_0
    iget-object v5, v2, Lio/flutter/view/AccessibilityViewEmbedder$b;->a:Landroid/view/View;

    .local v5, "$r5":Landroid/view/View;, ""
    invoke-virtual {v5}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v6

    .local v6, "$r6":Landroid/view/accessibility/AccessibilityNodeProvider;, ""
    if-nez v6, :cond_1

    const/4 v4, 0x0

    return v4

    :cond_1
    iget p1, v2, Lio/flutter/view/AccessibilityViewEmbedder$b;->b:I

    .local p1, "$i1":I, ""
    invoke-virtual {v6, p1, p2, p3}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    move-result v7

    .local v7, "$z0":Z, ""
    return v7
    .end local v0    # "$r2":Landroid/util/SparseArray;, ""
    .end local v5    # "$r5":Landroid/view/View;, ""
    .end local p1    # "$i1":I, ""
    .end local v6    # "$r6":Landroid/view/accessibility/AccessibilityNodeProvider;, ""
    .end local v2    # "$r4":Lio/flutter/view/AccessibilityViewEmbedder$b;, ""
    .end local v7    # "$z0":Z, ""
    .end local v1    # "$r3":Ljava/lang/Object;, ""
.end method

.method public requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 24

    move-object/from16 v0, p3

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityEvent;->obtain(Landroid/view/accessibility/AccessibilityEvent;)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v2

    .local v2, "$r4":Landroid/view/accessibility/AccessibilityEvent;, ""
    move-object/from16 v0, p0

    .local v3, "$r5":Lio/flutter/view/AccessibilityViewEmbedder$a;, ""
    iget-object v3, v0, Lio/flutter/view/AccessibilityViewEmbedder;->reflectionAccessors:Lio/flutter/view/AccessibilityViewEmbedder$a;

    move-object/from16 v0, p3

    invoke-static {v3, v0}, Lio/flutter/view/AccessibilityViewEmbedder$a;->a(Lio/flutter/view/AccessibilityViewEmbedder$a;Landroid/view/accessibility/AccessibilityRecord;)Ljava/lang/Long;

    move-result-object v4

    .local v4, "$r6":Ljava/lang/Long;, ""
    if-nez v4, :cond_0

    const/4 v5, 0x0

    return v5

    :cond_0
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .local v6, "$l0":J, ""
    invoke-static {v6, v7}, Lio/flutter/view/AccessibilityViewEmbedder$a;->a(J)I

    move-result v8

    .local v8, "$i1":I, ""
    move-object/from16 v0, p0

    .local v9, "$r7":Ljava/util/Map;, ""
    iget-object v9, v0, Lio/flutter/view/AccessibilityViewEmbedder;->originToFlutterId:Ljava/util/Map;

    new-instance v10, Lio/flutter/view/AccessibilityViewEmbedder$b;

    .local v10, "$r8":Lio/flutter/view/AccessibilityViewEmbedder$b;, ""
    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-direct {v10, v0, v8, v11}, Lio/flutter/view/AccessibilityViewEmbedder$b;-><init>(Landroid/view/View;ILio/flutter/view/h;)V

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .local v12, "$r9":Ljava/lang/Object;, ""
    move-object/from16 v14, v12

    check-cast v14, Ljava/lang/Integer;

    move-object/from16 v13, v14

    .local v13, "$r10":Ljava/lang/Integer;, ""
    if-nez v13, :cond_1

    move-object/from16 v0, p0

    .local v15, "$i2":I, ""
    iget v15, v0, Lio/flutter/view/AccessibilityViewEmbedder;->nextFlutterId:I

    add-int/lit8 v16, v15, 0x1

    .local v16, "$i3":I, ""
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lio/flutter/view/AccessibilityViewEmbedder;->nextFlutterId:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    .local v17, "$r11":Ljava/lang/Integer;, ""
    move-object/from16 v13, v17

    move-object/from16 v0, v17

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v15

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8, v15}, Lio/flutter/view/AccessibilityViewEmbedder;->cacheVirtualIdMappings(Landroid/view/View;II)V

    :cond_1
    move-object/from16 v0, p0

    .local v0, "$r12":Landroid/view/View;, ""
    iget-object v0, v0, Lio/flutter/view/AccessibilityViewEmbedder;->rootAccessibilityView:Landroid/view/View;

    move-object/from16 v18, v0

    .end local v0    # "$r12":Landroid/view/View;, ""
    .local v18, "$r12":Landroid/view/View;, ""
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v8

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v8}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    move-object/from16 v0, p3

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getClassName()Ljava/lang/CharSequence;

    move-result-object v19

    .local v19, "$r13":Ljava/lang/CharSequence;, ""
    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p3

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    const/4 v8, 0x0

    :goto_0
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityEvent;->getRecordCount()I

    move-result v15

    if-ge v8, v15, :cond_4

    invoke-virtual {v2, v8}, Landroid/view/accessibility/AccessibilityEvent;->getRecord(I)Landroid/view/accessibility/AccessibilityRecord;

    move-result-object v20

    .local v20, "$r14":Landroid/view/accessibility/AccessibilityRecord;, ""
    move-object/from16 v0, p0

    iget-object v3, v0, Lio/flutter/view/AccessibilityViewEmbedder;->reflectionAccessors:Lio/flutter/view/AccessibilityViewEmbedder$a;

    move-object/from16 v0, v20

    invoke-static {v3, v0}, Lio/flutter/view/AccessibilityViewEmbedder$a;->a(Lio/flutter/view/AccessibilityViewEmbedder$a;Landroid/view/accessibility/AccessibilityRecord;)Ljava/lang/Long;

    move-result-object v4

    if-nez v4, :cond_2

    const/4 v5, 0x0

    return v5

    :cond_2
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Lio/flutter/view/AccessibilityViewEmbedder$a;->a(J)I

    move-result v15

    new-instance v10, Lio/flutter/view/AccessibilityViewEmbedder$b;

    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-direct {v10, v0, v15, v11}, Lio/flutter/view/AccessibilityViewEmbedder$b;-><init>(Landroid/view/View;ILio/flutter/view/h;)V

    move-object/from16 v0, p0

    iget-object v9, v0, Lio/flutter/view/AccessibilityViewEmbedder;->originToFlutterId:Ljava/util/Map;

    invoke-interface {v9, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v21

    .local v21, "$z0":Z, ""
    if-nez v21, :cond_3

    const/4 v5, 0x0

    return v5

    :cond_3
    move-object/from16 v0, p0

    iget-object v9, v0, Lio/flutter/view/AccessibilityViewEmbedder;->originToFlutterId:Ljava/util/Map;

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v22, v12

    check-cast v22, Ljava/lang/Integer;

    move-object/from16 v13, v22

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v15

    move-object/from16 v0, p0

    .end local v18    # "$r12":Landroid/view/View;, ""
    .local v0, "$r12":Landroid/view/View;, ""
    iget-object v0, v0, Lio/flutter/view/AccessibilityViewEmbedder;->rootAccessibilityView:Landroid/view/View;

    move-object/from16 v18, v0

    .end local v0    # "$r12":Landroid/view/View;, ""
    .local v18, "$r12":Landroid/view/View;, ""
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v15}, Landroid/view/accessibility/AccessibilityRecord;->setSource(Landroid/view/View;I)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    .local v0, "$r2":Landroid/view/View;, ""
    iget-object v0, v0, Lio/flutter/view/AccessibilityViewEmbedder;->rootAccessibilityView:Landroid/view/View;

    move-object/from16 p1, v0

    .end local v0    # "$r2":Landroid/view/View;, ""
    .local p1, "$r2":Landroid/view/View;, ""
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v23

    .local v23, "$r15":Landroid/view/ViewParent;, ""
    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-interface {v0, v1, v2}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v21

    return v21
    .end local v10    # "$r8":Lio/flutter/view/AccessibilityViewEmbedder$b;, ""
    .end local v15    # "$i2":I, ""
    .end local v9    # "$r7":Ljava/util/Map;, ""
    .end local v3    # "$r5":Lio/flutter/view/AccessibilityViewEmbedder$a;, ""
    .end local v6    # "$l0":J, ""
    .end local v20    # "$r14":Landroid/view/accessibility/AccessibilityRecord;, ""
    .end local v2    # "$r4":Landroid/view/accessibility/AccessibilityEvent;, ""
    .end local v13    # "$r10":Ljava/lang/Integer;, ""
    .end local v17    # "$r11":Ljava/lang/Integer;, ""
    .end local v18    # "$r12":Landroid/view/View;, ""
    .end local p1    # "$r2":Landroid/view/View;, ""
    .end local v12    # "$r9":Ljava/lang/Object;, ""
    .end local v16    # "$i3":I, ""
    .end local v21    # "$z0":Z, ""
    .end local v4    # "$r6":Ljava/lang/Long;, ""
    .end local v23    # "$r15":Landroid/view/ViewParent;, ""
    .end local v19    # "$r13":Ljava/lang/CharSequence;, ""
    .end local v8    # "$i1":I, ""
.end method
