.class Lio/flutter/plugin/platform/SingleViewPresentation$b;
.super Landroid/view/ViewGroup;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugin/platform/SingleViewPresentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FakeWindowViewGroup"
.end annotation


# instance fields
.field private final a:Landroid/graphics/Rect;

.field private final b:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Rect;

    .local v0, "$r2":Landroid/graphics/Rect;, ""
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lio/flutter/plugin/platform/SingleViewPresentation$b;->a:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lio/flutter/plugin/platform/SingleViewPresentation$b;->b:Landroid/graphics/Rect;

    return-void
    .end local v0    # "$r2":Landroid/graphics/Rect;, ""
.end method

.method private static a(I)I
    .locals 1

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p0

    .local p0, "$i0":I, ""
    const v0, -0x80000000

    invoke-static {p0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0
    .end local p0    # "$i0":I, ""
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 19

    const/4 v7, 0x0

    .local v7, "$i6":I, ""
    :goto_0
    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    .local v8, "$i4":I, ""
    if-ge v7, v8, :cond_0

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .local v9, "$r3":Landroid/view/View;, ""
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    .local v10, "$r4":Landroid/view/ViewGroup$LayoutParams;, ""
    move-object v12, v10

    check-cast v12, Landroid/view/WindowManager$LayoutParams;

    move-object v11, v12

    .local v11, "$r5":Landroid/view/WindowManager$LayoutParams;, ""
    move-object/from16 v0, p0

    .local v13, "$r1":Landroid/graphics/Rect;, ""
    iget-object v13, v0, Lio/flutter/plugin/platform/SingleViewPresentation$b;->a:Landroid/graphics/Rect;

    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    iget v14, v11, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .local v14, "$i7":I, ""
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    .local v15, "$i8":I, ""
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    .local v16, "$i9":I, ""
    move-object/from16 v0, p0

    iget-object v13, v0, Lio/flutter/plugin/platform/SingleViewPresentation$b;->a:Landroid/graphics/Rect;

    iget v8, v11, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v0, v11, Landroid/view/WindowManager$LayoutParams;->y:I

    .local v0, "$i5":I, ""
    move/from16 v17, v0

    .end local v0    # "$i5":I, ""
    .local v17, "$i5":I, ""
    move-object/from16 v0, p0

    .local v0, "$r2":Landroid/graphics/Rect;, ""
    iget-object v0, v0, Lio/flutter/plugin/platform/SingleViewPresentation$b;->b:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    .end local v0    # "$r2":Landroid/graphics/Rect;, ""
    .local v18, "$r2":Landroid/graphics/Rect;, ""
    move v0, v14

    move v1, v15

    move/from16 v2, v16

    move-object v3, v13

    move v4, v8

    move/from16 v5, v17

    move-object/from16 v6, v18

    invoke-static/range {v0 .. v6}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lio/flutter/plugin/platform/SingleViewPresentation$b;->b:Landroid/graphics/Rect;

    iget v8, v13, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lio/flutter/plugin/platform/SingleViewPresentation$b;->b:Landroid/graphics/Rect;

    iget v0, v13, Landroid/graphics/Rect;->top:I

    .end local v17    # "$i5":I, ""
    .local v0, "$i5":I, ""
    move/from16 v17, v0

    .end local v0    # "$i5":I, ""
    .local v17, "$i5":I, ""
    move-object/from16 v0, p0

    iget-object v13, v0, Lio/flutter/plugin/platform/SingleViewPresentation$b;->b:Landroid/graphics/Rect;

    iget v14, v13, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lio/flutter/plugin/platform/SingleViewPresentation$b;->b:Landroid/graphics/Rect;

    iget v15, v13, Landroid/graphics/Rect;->bottom:I

    move/from16 v0, v17

    invoke-virtual {v9, v8, v0, v14, v15}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    return-void
    .end local v17    # "$i5":I, ""
    .end local v18    # "$r2":Landroid/graphics/Rect;, ""
    .end local v10    # "$r4":Landroid/view/ViewGroup$LayoutParams;, ""
    .end local v14    # "$i7":I, ""
    .end local v16    # "$i9":I, ""
    .end local v7    # "$i6":I, ""
    .end local v11    # "$r5":Landroid/view/WindowManager$LayoutParams;, ""
    .end local v13    # "$r1":Landroid/graphics/Rect;, ""
    .end local v9    # "$r3":Landroid/view/View;, ""
    .end local v15    # "$i8":I, ""
    .end local v8    # "$i4":I, ""
.end method

.method protected onMeasure(II)V
    .locals 4

    const/4 v0, 0x0

    .local v0, "$i2":I, ""
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .local v1, "$i3":I, ""
    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .local v2, "$r1":Landroid/view/View;, ""
    invoke-static {p1}, Lio/flutter/plugin/platform/SingleViewPresentation$b;->a(I)I

    move-result v1

    invoke-static {p2}, Lio/flutter/plugin/platform/SingleViewPresentation$b;->a(I)I

    move-result v3

    .local v3, "$i4":I, ""
    invoke-virtual {v2, v1, v3}, Landroid/view/View;->measure(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    return-void
    .end local v0    # "$i2":I, ""
    .end local v2    # "$r1":Landroid/view/View;, ""
    .end local v3    # "$i4":I, ""
    .end local v1    # "$i3":I, ""
.end method
