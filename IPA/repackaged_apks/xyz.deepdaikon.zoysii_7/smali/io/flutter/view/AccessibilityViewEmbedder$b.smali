.class Lio/flutter/view/AccessibilityViewEmbedder$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/view/AccessibilityViewEmbedder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewAndId"
.end annotation


# instance fields
.field final a:Landroid/view/View;

.field final b:I


# direct methods
.method private constructor <init>(Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/view/AccessibilityViewEmbedder$b;->a:Landroid/view/View;

    iput p2, p0, Lio/flutter/view/AccessibilityViewEmbedder$b;->b:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;ILio/flutter/view/h;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/flutter/view/AccessibilityViewEmbedder$b;-><init>(Landroid/view/View;I)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 10

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .local v1, "$r2":Ljava/lang/Class;, ""
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .local v2, "$r3":Ljava/lang/Class;, ""
    if-eq v1, v2, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    move-object v4, p1

    check-cast v4, Lio/flutter/view/AccessibilityViewEmbedder$b;

    move-object v3, v4

    .local v3, "$r4":Lio/flutter/view/AccessibilityViewEmbedder$b;, ""
    iget v5, p0, Lio/flutter/view/AccessibilityViewEmbedder$b;->b:I

    .local v5, "$i0":I, ""
    iget v6, v3, Lio/flutter/view/AccessibilityViewEmbedder$b;->b:I

    .local v6, "$i1":I, ""
    if-ne v5, v6, :cond_2

    iget-object v7, p0, Lio/flutter/view/AccessibilityViewEmbedder$b;->a:Landroid/view/View;

    .local v7, "$r5":Landroid/view/View;, ""
    iget-object v8, v3, Lio/flutter/view/AccessibilityViewEmbedder$b;->a:Landroid/view/View;

    .local v8, "$r6":Landroid/view/View;, ""
    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    .local v9, "$z0":Z, ""
    if-eqz v9, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0

    :cond_3
    const/4 v0, 0x0

    return v0
    .end local v2    # "$r3":Ljava/lang/Class;, ""
    .end local v6    # "$i1":I, ""
    .end local v1    # "$r2":Ljava/lang/Class;, ""
    .end local v9    # "$z0":Z, ""
    .end local v7    # "$r5":Landroid/view/View;, ""
    .end local v8    # "$r6":Landroid/view/View;, ""
    .end local v5    # "$i0":I, ""
    .end local v3    # "$r4":Lio/flutter/view/AccessibilityViewEmbedder$b;, ""
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lio/flutter/view/AccessibilityViewEmbedder$b;->a:Landroid/view/View;

    .local v0, "$r1":Landroid/view/View;, ""
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .local v1, "$i0":I, ""
    add-int/lit8 v1, v1, 0x1f

    mul-int/lit8 v1, v1, 0x1f

    iget v2, p0, Lio/flutter/view/AccessibilityViewEmbedder$b;->b:I

    .local v2, "$i1":I, ""
    add-int/2addr v1, v2

    return v1
    .end local v2    # "$i1":I, ""
    .end local v0    # "$r1":Landroid/view/View;, ""
    .end local v1    # "$i0":I, ""
.end method
