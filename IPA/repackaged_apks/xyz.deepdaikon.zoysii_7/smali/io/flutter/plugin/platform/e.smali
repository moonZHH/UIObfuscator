.class public Lio/flutter/plugin/platform/e;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/plugin/platform/c;,
        Lio/flutter/plugin/platform/d;
    }
.end annotation


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:Lio/flutter/embedding/engine/e/i;

.field private c:Lio/flutter/embedding/engine/e/i$h;

.field private d:I

.field private final e:Lio/flutter/embedding/engine/e/i$f;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lio/flutter/embedding/engine/e/i;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/flutter/plugin/platform/c;

    .local v0, "$r1":Lio/flutter/plugin/platform/c;, ""
    invoke-direct {v0, p0}, Lio/flutter/plugin/platform/c;-><init>(Lio/flutter/plugin/platform/e;)V

    iput-object v0, p0, Lio/flutter/plugin/platform/e;->e:Lio/flutter/embedding/engine/e/i$f;

    iput-object p1, p0, Lio/flutter/plugin/platform/e;->a:Landroid/app/Activity;

    iput-object p2, p0, Lio/flutter/plugin/platform/e;->b:Lio/flutter/embedding/engine/e/i;

    iget-object p2, p0, Lio/flutter/plugin/platform/e;->b:Lio/flutter/embedding/engine/e/i;

    .local p2, "$r3":Lio/flutter/embedding/engine/e/i;, ""
    iget-object v1, p0, Lio/flutter/plugin/platform/e;->e:Lio/flutter/embedding/engine/e/i$f;

    .local v1, "$r4":Lio/flutter/embedding/engine/e/i$f;, ""
    invoke-virtual {p2, v1}, Lio/flutter/embedding/engine/e/i;->a(Lio/flutter/embedding/engine/e/i$f;)V

    const/16 v2, 0x500

    iput v2, p0, Lio/flutter/plugin/platform/e;->d:I

    return-void
    .end local v0    # "$r1":Lio/flutter/plugin/platform/c;, ""
    .end local p2    # "$r3":Lio/flutter/embedding/engine/e/i;, ""
    .end local v1    # "$r4":Lio/flutter/embedding/engine/e/i$f;, ""
.end method

.method private a(Lio/flutter/embedding/engine/e/i$c;)Ljava/lang/CharSequence;
    .locals 11

    iget-object v0, p0, Lio/flutter/plugin/platform/e;->a:Landroid/app/Activity;

    .local v0, "$r3":Landroid/app/Activity;, ""
    const-string v2, "clipboard"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .local v1, "$r4":Ljava/lang/Object;, ""
    move-object v4, v1

    check-cast v4, Landroid/content/ClipboardManager;

    move-object v3, v4

    .local v3, "$r5":Landroid/content/ClipboardManager;, ""
    invoke-virtual {v3}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v5

    .local v5, "$r6":Landroid/content/ClipData;, ""
    if-nez v5, :cond_0

    const/4 v6, 0x0

    return-object v6

    :cond_0
    if-eqz p1, :cond_2

    sget-object v7, Lio/flutter/embedding/engine/e/i$c;->a:Lio/flutter/embedding/engine/e/i$c;

    .local v7, "$r1":Lio/flutter/embedding/engine/e/i$c;, ""
    if-ne p1, v7, :cond_1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    return-object v6

    :cond_2
    :goto_0
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v8

    .local v8, "$r7":Landroid/content/ClipData$Item;, ""
    iget-object v0, p0, Lio/flutter/plugin/platform/e;->a:Landroid/app/Activity;

    invoke-virtual {v8, v0}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v10

    .local v10, "$r8":Ljava/lang/CharSequence;, ""
    return-object v10
    .end local v10    # "$r8":Ljava/lang/CharSequence;, ""
    .end local v0    # "$r3":Landroid/app/Activity;, ""
    .end local v7    # "$r1":Lio/flutter/embedding/engine/e/i$c;, ""
    .end local v8    # "$r7":Landroid/content/ClipData$Item;, ""
    .end local v1    # "$r4":Ljava/lang/Object;, ""
    .end local v3    # "$r5":Landroid/content/ClipboardManager;, ""
    .end local v5    # "$r6":Landroid/content/ClipData;, ""
.end method

.method static synthetic a(Lio/flutter/plugin/platform/e;Lio/flutter/embedding/engine/e/i$c;)Ljava/lang/CharSequence;
    .locals 1

    invoke-direct {p0, p1}, Lio/flutter/plugin/platform/e;->a(Lio/flutter/embedding/engine/e/i$c;)Ljava/lang/CharSequence;

    move-result-object v0

    .local v0, "$r1":Ljava/lang/CharSequence;, ""
    return-object v0
    .end local v0    # "$r1":Ljava/lang/CharSequence;, ""
.end method

.method private a(I)V
    .locals 1

    iget-object v0, p0, Lio/flutter/plugin/platform/e;->a:Landroid/app/Activity;

    .local v0, "$r1":Landroid/app/Activity;, ""
    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
    .end local v0    # "$r1":Landroid/app/Activity;, ""
.end method

.method private a(Lio/flutter/embedding/engine/e/i$a;)V
    .locals 6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .local v0, "$i0":I, ""
    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-le v0, v1, :cond_1

    iget-object v2, p0, Lio/flutter/plugin/platform/e;->a:Landroid/app/Activity;

    .local v2, "$r3":Landroid/app/Activity;, ""
    new-instance v3, Landroid/app/ActivityManager$TaskDescription;

    .local v3, "$r4":Landroid/app/ActivityManager$TaskDescription;, ""
    iget-object v4, p1, Lio/flutter/embedding/engine/e/i$a;->b:Ljava/lang/String;

    .local v4, "$r1":Ljava/lang/String;, ""
    iget v0, p1, Lio/flutter/embedding/engine/e/i$a;->a:I

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5, v0}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_2

    new-instance v3, Landroid/app/ActivityManager$TaskDescription;

    iget-object v4, p1, Lio/flutter/embedding/engine/e/i$a;->b:Ljava/lang/String;

    iget v0, p1, Lio/flutter/embedding/engine/e/i$a;->a:I

    const/4 v1, 0x0

    invoke-direct {v3, v4, v1, v0}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;II)V

    iget-object v2, p0, Lio/flutter/plugin/platform/e;->a:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Landroid/app/Activity;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    :cond_2
    return-void
    .end local v3    # "$r4":Landroid/app/ActivityManager$TaskDescription;, ""
    .end local v0    # "$i0":I, ""
    .end local v2    # "$r3":Landroid/app/Activity;, ""
    .end local v4    # "$r1":Ljava/lang/String;, ""
.end method

.method private a(Lio/flutter/embedding/engine/e/i$e;)V
    .locals 6

    iget-object v0, p0, Lio/flutter/plugin/platform/e;->a:Landroid/app/Activity;

    .local v0, "$r3":Landroid/app/Activity;, ""
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .local v1, "$r4":Landroid/view/Window;, ""
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    .local v2, "$r5":Landroid/view/View;, ""
    sget-object v3, Lio/flutter/plugin/platform/d;->a:[I

    .local v3, "$r1":[I, ""
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    .local v4, "$i0":I, ""
    aget v4, v3, v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :goto_0
    return-void

    :sswitch_0
    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Landroid/view/View;->performHapticFeedback(I)Z

    return-void

    :sswitch_1
    const/4 v5, 0x6

    invoke-virtual {v2, v5}, Landroid/view/View;->performHapticFeedback(I)Z

    return-void

    :sswitch_2
    const/4 v5, 0x3

    invoke-virtual {v2, v5}, Landroid/view/View;->performHapticFeedback(I)Z

    return-void

    :sswitch_3
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/view/View;->performHapticFeedback(I)Z

    return-void

    :sswitch_4
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/view/View;->performHapticFeedback(I)Z

    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_3
        0x3 -> :sswitch_2
        0x4 -> :sswitch_1
        0x5 -> :sswitch_0
    .end sparse-switch
    .end local v4    # "$i0":I, ""
    .end local v1    # "$r4":Landroid/view/Window;, ""
    .end local v2    # "$r5":Landroid/view/View;, ""
    .end local v3    # "$r1":[I, ""
    .end local v0    # "$r3":Landroid/app/Activity;, ""
.end method

.method private a(Lio/flutter/embedding/engine/e/i$g;)V
    .locals 5

    sget-object v0, Lio/flutter/embedding/engine/e/i$g;->a:Lio/flutter/embedding/engine/e/i$g;

    .local v0, "$r2":Lio/flutter/embedding/engine/e/i$g;, ""
    if-ne p1, v0, :cond_0

    iget-object v1, p0, Lio/flutter/plugin/platform/e;->a:Landroid/app/Activity;

    .local v1, "$r3":Landroid/app/Activity;, ""
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .local v2, "$r4":Landroid/view/Window;, ""
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    .local v3, "$r5":Landroid/view/View;, ""
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->playSoundEffect(I)V

    :cond_0
    return-void
    .end local v3    # "$r5":Landroid/view/View;, ""
    .end local v2    # "$r4":Landroid/view/Window;, ""
    .end local v1    # "$r3":Landroid/app/Activity;, ""
    .end local v0    # "$r2":Lio/flutter/embedding/engine/e/i$g;, ""
.end method

.method private a(Lio/flutter/embedding/engine/e/i$h;)V
    .locals 10

    iget-object v0, p0, Lio/flutter/plugin/platform/e;->a:Landroid/app/Activity;

    .local v0, "$r2":Landroid/app/Activity;, ""
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .local v1, "$r3":Landroid/view/Window;, ""
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    .local v2, "$r4":Landroid/view/View;, ""
    invoke-virtual {v2}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v3

    .local v3, "$i0":I, ""
    move v4, v3

    .local v4, "$i1":I, ""
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .local v5, "$i2":I, ""
    const/16 v6, 0x1a

    if-lt v5, v6, :cond_1

    iget-object v7, p1, Lio/flutter/embedding/engine/e/i$h;->d:Lio/flutter/embedding/engine/e/i$b;

    .local v7, "$r5":Lio/flutter/embedding/engine/e/i$b;, ""
    if-eqz v7, :cond_0

    sget-object v8, Lio/flutter/plugin/platform/d;->c:[I

    .local v8, "$r6":[I, ""
    iget-object v7, p1, Lio/flutter/embedding/engine/e/i$h;->d:Lio/flutter/embedding/engine/e/i$b;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v5, v8, v5

    sparse-switch v5, :sswitch_data_0

    goto :goto_0

    :goto_0
    goto :goto_1

    :sswitch_0
    and-int/lit8 v4, v3, -0x11

    goto :goto_1

    :sswitch_1
    or-int/lit8 v4, v3, 0x10

    :cond_0
    :goto_1
    iget-object v9, p1, Lio/flutter/embedding/engine/e/i$h;->c:Ljava/lang/Integer;

    .local v9, "$r7":Ljava/lang/Integer;, ""
    if-eqz v9, :cond_1

    iget-object v9, p1, Lio/flutter/embedding/engine/e/i$h;->c:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/Window;->setNavigationBarColor(I)V

    :cond_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-lt v3, v6, :cond_3

    iget-object v7, p1, Lio/flutter/embedding/engine/e/i$h;->b:Lio/flutter/embedding/engine/e/i$b;

    if-eqz v7, :cond_2

    sget-object v8, Lio/flutter/plugin/platform/d;->c:[I

    iget-object v7, p1, Lio/flutter/embedding/engine/e/i$h;->b:Lio/flutter/embedding/engine/e/i$b;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v8, v3

    sparse-switch v3, :sswitch_data_1

    goto :goto_2

    :goto_2
    goto :goto_3

    :sswitch_2
    and-int/lit16 v4, v4, -0x2001

    goto :goto_3

    :sswitch_3
    or-int/lit16 v4, v4, 0x2000

    :cond_2
    :goto_3
    iget-object v9, p1, Lio/flutter/embedding/engine/e/i$h;->a:Ljava/lang/Integer;

    if-eqz v9, :cond_3

    iget-object v9, p1, Lio/flutter/embedding/engine/e/i$h;->a:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/Window;->setStatusBarColor(I)V

    :cond_3
    iget-object v9, p1, Lio/flutter/embedding/engine/e/i$h;->e:Ljava/lang/Integer;

    invoke-virtual {v2, v4}, Landroid/view/View;->setSystemUiVisibility(I)V

    iput-object p1, p0, Lio/flutter/plugin/platform/e;->c:Lio/flutter/embedding/engine/e/i$h;

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_2
    .end sparse-switch
    .end local v0    # "$r2":Landroid/app/Activity;, ""
    .end local v2    # "$r4":Landroid/view/View;, ""
    .end local v5    # "$i2":I, ""
    .end local v9    # "$r7":Ljava/lang/Integer;, ""
    .end local v3    # "$i0":I, ""
    .end local v8    # "$r6":[I, ""
    .end local v1    # "$r3":Landroid/view/Window;, ""
    .end local v4    # "$i1":I, ""
    .end local v7    # "$r5":Lio/flutter/embedding/engine/e/i$b;, ""
.end method

.method static synthetic a(Lio/flutter/plugin/platform/e;)V
    .locals 0

    invoke-direct {p0}, Lio/flutter/plugin/platform/e;->b()V

    return-void
.end method

.method static synthetic a(Lio/flutter/plugin/platform/e;I)V
    .locals 0

    invoke-direct {p0, p1}, Lio/flutter/plugin/platform/e;->a(I)V

    return-void
.end method

.method static synthetic a(Lio/flutter/plugin/platform/e;Lio/flutter/embedding/engine/e/i$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/flutter/plugin/platform/e;->a(Lio/flutter/embedding/engine/e/i$a;)V

    return-void
.end method

.method static synthetic a(Lio/flutter/plugin/platform/e;Lio/flutter/embedding/engine/e/i$e;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/flutter/plugin/platform/e;->a(Lio/flutter/embedding/engine/e/i$e;)V

    return-void
.end method

.method static synthetic a(Lio/flutter/plugin/platform/e;Lio/flutter/embedding/engine/e/i$g;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/flutter/plugin/platform/e;->a(Lio/flutter/embedding/engine/e/i$g;)V

    return-void
.end method

.method static synthetic a(Lio/flutter/plugin/platform/e;Lio/flutter/embedding/engine/e/i$h;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/flutter/plugin/platform/e;->a(Lio/flutter/embedding/engine/e/i$h;)V

    return-void
.end method

.method static synthetic a(Lio/flutter/plugin/platform/e;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/flutter/plugin/platform/e;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lio/flutter/plugin/platform/e;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/flutter/plugin/platform/e;->a(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic a(Lio/flutter/plugin/platform/e;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/flutter/plugin/platform/e;->a(Ljava/util/List;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lio/flutter/plugin/platform/e;->a:Landroid/app/Activity;

    .local v0, "$r2":Landroid/app/Activity;, ""
    const-string v2, "clipboard"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .local v1, "$r3":Ljava/lang/Object;, ""
    move-object v4, v1

    check-cast v4, Landroid/content/ClipboardManager;

    move-object v3, v4

    .local v3, "$r4":Landroid/content/ClipboardManager;, ""
    const-string v2, "text label?"

    invoke-static {v2, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v5

    .local v5, "$r5":Landroid/content/ClipData;, ""
    invoke-virtual {v3, v5}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    return-void
    .end local v5    # "$r5":Landroid/content/ClipData;, ""
    .end local v1    # "$r3":Ljava/lang/Object;, ""
    .end local v0    # "$r2":Landroid/app/Activity;, ""
    .end local v3    # "$r4":Landroid/content/ClipboardManager;, ""
.end method

.method private a(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .local v0, "$i0":I, ""
    const/16 v1, 0x1d

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lio/flutter/plugin/platform/e;->a:Landroid/app/Activity;

    .local v2, "$r2":Landroid/app/Activity;, ""
    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    .local v3, "$r3":Landroid/view/Window;, ""
    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    .local v4, "$r4":Landroid/view/View;, ""
    invoke-virtual {v4, p1}, Landroid/view/View;->setSystemGestureExclusionRects(Ljava/util/List;)V

    return-void
    .end local v0    # "$i0":I, ""
    .end local v2    # "$r2":Landroid/app/Activity;, ""
    .end local v3    # "$r3":Landroid/view/Window;, ""
    .end local v4    # "$r4":Landroid/view/View;, ""
.end method

.method private a(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lio/flutter/embedding/engine/e/i$i;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "$i0":I, ""
    if-nez v0, :cond_0

    const/16 v1, 0x1706

    .local v1, "$s1":S, ""
    goto :goto_0

    :cond_0
    const/16 v1, 0x706

    :goto_0
    const/4 v0, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "$i2":I, ""
    if-ge v0, v2, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .local v3, "$r3":Ljava/lang/Object;, ""
    move-object v5, v3

    check-cast v5, Lio/flutter/embedding/engine/e/i$i;

    move-object v4, v5

    .local v4, "$r4":Lio/flutter/embedding/engine/e/i$i;, ""
    sget-object v6, Lio/flutter/plugin/platform/d;->b:[I

    .local v6, "$r2":[I, ""
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v6, v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_2

    :goto_2
    goto :goto_3

    :sswitch_0
    const/16 v7, -0x201

    and-int v8, v1, v7

    int-to-short v1, v8

    .end local v1    # "$s1":S, ""
    .local v3, "$s1":S, ""
    const/4 v7, -0x3

    and-int v9, v1, v7

    int-to-short v1, v9

    goto :goto_3

    :sswitch_1
    const/4 v7, -0x5

    and-int v10, v1, v7

    int-to-short v1, v10

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iput v1, p0, Lio/flutter/plugin/platform/e;->d:I

    invoke-virtual {p0}, Lio/flutter/plugin/platform/e;->a()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
    .end sparse-switch
    .end local v6    # "$r2":[I, ""
    .end local v2    # "$i2":I, ""
    .end local v3    # "$s1":S, ""
    .end local v0    # "$i0":I, ""
    .end local v3
    .end local v4    # "$r4":Lio/flutter/embedding/engine/e/i$i;, ""
.end method

.method private b()V
    .locals 0

    invoke-virtual {p0}, Lio/flutter/plugin/platform/e;->a()V

    return-void
.end method

.method static synthetic b(Lio/flutter/plugin/platform/e;)V
    .locals 0

    invoke-direct {p0}, Lio/flutter/plugin/platform/e;->c()V

    return-void
.end method

.method static synthetic c(Lio/flutter/plugin/platform/e;)Ljava/util/List;
    .locals 1

    invoke-direct {p0}, Lio/flutter/plugin/platform/e;->d()Ljava/util/List;

    move-result-object v0

    .local v0, "$r0":Ljava/util/List;, ""
    return-object v0
    .end local v0    # "$r0":Ljava/util/List;, ""
.end method

.method private c()V
    .locals 1

    iget-object v0, p0, Lio/flutter/plugin/platform/e;->a:Landroid/app/Activity;

    .local v0, "$r1":Landroid/app/Activity;, ""
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
    .end local v0    # "$r1":Landroid/app/Activity;, ""
.end method

.method private d()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .local v0, "$i0":I, ""
    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    iget-object v2, p0, Lio/flutter/plugin/platform/e;->a:Landroid/app/Activity;

    .local v2, "$r1":Landroid/app/Activity;, ""
    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    .local v3, "$r2":Landroid/view/Window;, ""
    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    .local v4, "$r3":Landroid/view/View;, ""
    invoke-virtual {v4}, Landroid/view/View;->getSystemGestureExclusionRects()Ljava/util/List;

    move-result-object v5

    .local v5, "$r4":Ljava/util/List;, ""
    return-object v5

    :cond_0
    const/4 v6, 0x0

    return-object v6
    .end local v5    # "$r4":Ljava/util/List;, ""
    .end local v3    # "$r2":Landroid/view/Window;, ""
    .end local v0    # "$i0":I, ""
    .end local v4    # "$r3":Landroid/view/View;, ""
    .end local v2    # "$r1":Landroid/app/Activity;, ""
.end method


# virtual methods
.method public a()V
    .locals 5

    iget-object v0, p0, Lio/flutter/plugin/platform/e;->a:Landroid/app/Activity;

    .local v0, "$r1":Landroid/app/Activity;, ""
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .local v1, "$r2":Landroid/view/Window;, ""
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    .local v2, "$r3":Landroid/view/View;, ""
    iget v3, p0, Lio/flutter/plugin/platform/e;->d:I

    .local v3, "$i0":I, ""
    invoke-virtual {v2, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    iget-object v4, p0, Lio/flutter/plugin/platform/e;->c:Lio/flutter/embedding/engine/e/i$h;

    .local v4, "$r4":Lio/flutter/embedding/engine/e/i$h;, ""
    if-eqz v4, :cond_0

    iget-object v4, p0, Lio/flutter/plugin/platform/e;->c:Lio/flutter/embedding/engine/e/i$h;

    invoke-direct {p0, v4}, Lio/flutter/plugin/platform/e;->a(Lio/flutter/embedding/engine/e/i$h;)V

    :cond_0
    return-void
    .end local v1    # "$r2":Landroid/view/Window;, ""
    .end local v3    # "$i0":I, ""
    .end local v0    # "$r1":Landroid/app/Activity;, ""
    .end local v4    # "$r4":Lio/flutter/embedding/engine/e/i$h;, ""
    .end local v2    # "$r3":Landroid/view/View;, ""
.end method
