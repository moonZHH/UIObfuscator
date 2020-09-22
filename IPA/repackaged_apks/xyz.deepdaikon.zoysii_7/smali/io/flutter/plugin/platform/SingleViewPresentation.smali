.class Lio/flutter/plugin/platform/SingleViewPresentation;
.super Landroid/app/Presentation;
.source ""


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x11
.end annotation

.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/plugin/platform/SingleViewPresentation$e;,
        Lio/flutter/plugin/platform/SingleViewPresentation$f;,
        Lio/flutter/plugin/platform/SingleViewPresentation$a;,
        Lio/flutter/plugin/platform/SingleViewPresentation$b;,
        Lio/flutter/plugin/platform/SingleViewPresentation$c;,
        Lio/flutter/plugin/platform/SingleViewPresentation$d;
    }
.end annotation


# instance fields
.field private final accessibilityEventsDelegate:Lio/flutter/plugin/platform/b;

.field private container:Landroid/widget/FrameLayout;

.field private createParams:Ljava/lang/Object;

.field private final focusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private rootView:Lio/flutter/plugin/platform/SingleViewPresentation$a;

.field private startFocused:Z

.field private state:Lio/flutter/plugin/platform/SingleViewPresentation$e;

.field private final viewFactory:Lio/flutter/plugin/platform/g;

.field private viewId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/Display;Lio/flutter/plugin/platform/b;Lio/flutter/plugin/platform/SingleViewPresentation$e;Landroid/view/View$OnFocusChangeListener;Z)V
    .locals 5

    new-instance v0, Lio/flutter/plugin/platform/SingleViewPresentation$c;

    .local v0, "$r4":Lio/flutter/plugin/platform/SingleViewPresentation$c;, ""
    invoke-direct {v0, p1}, Lio/flutter/plugin/platform/SingleViewPresentation$c;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, p2}, Landroid/app/Presentation;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lio/flutter/plugin/platform/SingleViewPresentation;->startFocused:Z

    iput-object p3, p0, Lio/flutter/plugin/platform/SingleViewPresentation;->accessibilityEventsDelegate:Lio/flutter/plugin/platform/b;

    const/4 v2, 0x0

    iput-object v2, p0, Lio/flutter/plugin/platform/SingleViewPresentation;->viewFactory:Lio/flutter/plugin/platform/g;

    iput-object p4, p0, Lio/flutter/plugin/platform/SingleViewPresentation;->state:Lio/flutter/plugin/platform/SingleViewPresentation$e;

    iput-object p5, p0, Lio/flutter/plugin/platform/SingleViewPresentation;->focusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {p0}, Landroid/app/Presentation;->getWindow()Landroid/view/Window;

    move-result-object v3

    .local v3, "$r5":Landroid/view/Window;, ""
    const/16 v1, 0x8

    const/16 v4, 0x8

    invoke-virtual {v3, v1, v4}, Landroid/view/Window;->setFlags(II)V

    iput-boolean p6, p0, Lio/flutter/plugin/platform/SingleViewPresentation;->startFocused:Z

    return-void
    .end local v3    # "$r5":Landroid/view/Window;, ""
    .end local v0    # "$r4":Lio/flutter/plugin/platform/SingleViewPresentation$c;, ""
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Display;Lio/flutter/plugin/platform/g;Lio/flutter/plugin/platform/b;ILjava/lang/Object;Landroid/view/View$OnFocusChangeListener;)V
    .locals 5

    new-instance v0, Lio/flutter/plugin/platform/SingleViewPresentation$c;

    .local v0, "$r5":Lio/flutter/plugin/platform/SingleViewPresentation$c;, ""
    invoke-direct {v0, p1}, Lio/flutter/plugin/platform/SingleViewPresentation$c;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, p2}, Landroid/app/Presentation;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lio/flutter/plugin/platform/SingleViewPresentation;->startFocused:Z

    iput-object p3, p0, Lio/flutter/plugin/platform/SingleViewPresentation;->viewFactory:Lio/flutter/plugin/platform/g;

    iput-object p4, p0, Lio/flutter/plugin/platform/SingleViewPresentation;->accessibilityEventsDelegate:Lio/flutter/plugin/platform/b;

    iput p5, p0, Lio/flutter/plugin/platform/SingleViewPresentation;->viewId:I

    iput-object p6, p0, Lio/flutter/plugin/platform/SingleViewPresentation;->createParams:Ljava/lang/Object;

    iput-object p7, p0, Lio/flutter/plugin/platform/SingleViewPresentation;->focusChangeListener:Landroid/view/View$OnFocusChangeListener;

    new-instance v2, Lio/flutter/plugin/platform/SingleViewPresentation$e;

    .local v2, "$r9":Lio/flutter/plugin/platform/SingleViewPresentation$e;, ""
    invoke-direct {v2}, Lio/flutter/plugin/platform/SingleViewPresentation$e;-><init>()V

    iput-object v2, p0, Lio/flutter/plugin/platform/SingleViewPresentation;->state:Lio/flutter/plugin/platform/SingleViewPresentation$e;

    invoke-virtual {p0}, Landroid/app/Presentation;->getWindow()Landroid/view/Window;

    move-result-object v3

    .local v3, "$r6":Landroid/view/Window;, ""
    const/16 v1, 0x8

    const/16 v4, 0x8

    invoke-virtual {v3, v1, v4}, Landroid/view/Window;->setFlags(II)V

    return-void
    .end local v2    # "$r9":Lio/flutter/plugin/platform/SingleViewPresentation$e;, ""
    .end local v0    # "$r5":Lio/flutter/plugin/platform/SingleViewPresentation$c;, ""
    .end local v3    # "$r6":Landroid/view/Window;, ""
.end method


# virtual methods
.method public detachState()Lio/flutter/plugin/platform/SingleViewPresentation$e;
    .locals 3

    iget-object v0, p0, Lio/flutter/plugin/platform/SingleViewPresentation;->container:Landroid/widget/FrameLayout;

    .local v0, "$r1":Landroid/widget/FrameLayout;, ""
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v1, p0, Lio/flutter/plugin/platform/SingleViewPresentation;->rootView:Lio/flutter/plugin/platform/SingleViewPresentation$a;

    .local v1, "$r2":Lio/flutter/plugin/platform/SingleViewPresentation$a;, ""
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v2, p0, Lio/flutter/plugin/platform/SingleViewPresentation;->state:Lio/flutter/plugin/platform/SingleViewPresentation$e;

    .local v2, "r3":Lio/flutter/plugin/platform/SingleViewPresentation$e;, ""
    return-object v2
    .end local v1    # "$r2":Lio/flutter/plugin/platform/SingleViewPresentation$a;, ""
    .end local v0    # "$r1":Landroid/widget/FrameLayout;, ""
    .end local v2    # "r3":Lio/flutter/plugin/platform/SingleViewPresentation$e;, ""
.end method

.method public getView()Lio/flutter/plugin/platform/f;
    .locals 3

    iget-object v0, p0, Lio/flutter/plugin/platform/SingleViewPresentation;->state:Lio/flutter/plugin/platform/SingleViewPresentation$e;

    .local v0, "$r1":Lio/flutter/plugin/platform/SingleViewPresentation$e;, ""
    invoke-static {v0}, Lio/flutter/plugin/platform/SingleViewPresentation$e;->c(Lio/flutter/plugin/platform/SingleViewPresentation$e;)Lio/flutter/plugin/platform/f;

    move-result-object v1

    .local v1, "$r2":Lio/flutter/plugin/platform/f;, ""
    if-nez v1, :cond_0

    const/4 v2, 0x0

    return-object v2

    :cond_0
    iget-object v0, p0, Lio/flutter/plugin/platform/SingleViewPresentation;->state:Lio/flutter/plugin/platform/SingleViewPresentation$e;

    invoke-static {v0}, Lio/flutter/plugin/platform/SingleViewPresentation$e;->c(Lio/flutter/plugin/platform/SingleViewPresentation$e;)Lio/flutter/plugin/platform/f;

    move-result-object v1

    return-object v1
    .end local v1    # "$r2":Lio/flutter/plugin/platform/f;, ""
    .end local v0    # "$r1":Lio/flutter/plugin/platform/SingleViewPresentation$e;, ""
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-super {v0, v1}, Landroid/app/Presentation;->onCreate(Landroid/os/Bundle;)V

    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroid/app/Presentation;->getWindow()Landroid/view/Window;

    move-result-object v3

    .local v3, "$r3":Landroid/view/Window;, ""
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    .local v4, "$r4":Landroid/graphics/drawable/ColorDrawable;, ""
    const/4 v5, 0x0

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    .local v6, "$r5":Lio/flutter/plugin/platform/SingleViewPresentation$e;, ""
    iget-object v6, v0, Lio/flutter/plugin/platform/SingleViewPresentation;->state:Lio/flutter/plugin/platform/SingleViewPresentation$e;

    invoke-static {v6}, Lio/flutter/plugin/platform/SingleViewPresentation$e;->a(Lio/flutter/plugin/platform/SingleViewPresentation$e;)Lio/flutter/plugin/platform/SingleViewPresentation$b;

    move-result-object v7

    .local v7, "$r6":Lio/flutter/plugin/platform/SingleViewPresentation$b;, ""
    if-nez v7, :cond_0

    move-object/from16 v0, p0

    iget-object v6, v0, Lio/flutter/plugin/platform/SingleViewPresentation;->state:Lio/flutter/plugin/platform/SingleViewPresentation$e;

    new-instance v7, Lio/flutter/plugin/platform/SingleViewPresentation$b;

    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroid/app/Presentation;->getContext()Landroid/content/Context;

    move-result-object v8

    .local v8, "$r7":Landroid/content/Context;, ""
    invoke-direct {v7, v8}, Lio/flutter/plugin/platform/SingleViewPresentation$b;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Lio/flutter/plugin/platform/SingleViewPresentation$e;->a(Lio/flutter/plugin/platform/SingleViewPresentation$e;Lio/flutter/plugin/platform/SingleViewPresentation$b;)Lio/flutter/plugin/platform/SingleViewPresentation$b;

    :cond_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lio/flutter/plugin/platform/SingleViewPresentation;->state:Lio/flutter/plugin/platform/SingleViewPresentation$e;

    invoke-static {v6}, Lio/flutter/plugin/platform/SingleViewPresentation$e;->b(Lio/flutter/plugin/platform/SingleViewPresentation$e;)Lio/flutter/plugin/platform/SingleViewPresentation$f;

    move-result-object v9

    .local v9, "$r8":Lio/flutter/plugin/platform/SingleViewPresentation$f;, ""
    if-nez v9, :cond_1

    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroid/app/Presentation;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v11, "window"

    invoke-virtual {v8, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .local v10, "$r1":Ljava/lang/Object;, ""
    move-object v13, v10

    check-cast v13, Landroid/view/WindowManager;

    move-object v12, v13

    .local v12, "$r9":Landroid/view/WindowManager;, ""
    move-object/from16 v0, p0

    iget-object v6, v0, Lio/flutter/plugin/platform/SingleViewPresentation;->state:Lio/flutter/plugin/platform/SingleViewPresentation$e;

    new-instance v9, Lio/flutter/plugin/platform/SingleViewPresentation$f;

    move-object/from16 v0, p0

    .local v14, "$r10":Lio/flutter/plugin/platform/SingleViewPresentation$e;, ""
    iget-object v14, v0, Lio/flutter/plugin/platform/SingleViewPresentation;->state:Lio/flutter/plugin/platform/SingleViewPresentation$e;

    invoke-static {v14}, Lio/flutter/plugin/platform/SingleViewPresentation$e;->a(Lio/flutter/plugin/platform/SingleViewPresentation$e;)Lio/flutter/plugin/platform/SingleViewPresentation$b;

    move-result-object v7

    invoke-direct {v9, v12, v7}, Lio/flutter/plugin/platform/SingleViewPresentation$f;-><init>(Landroid/view/WindowManager;Lio/flutter/plugin/platform/SingleViewPresentation$b;)V

    invoke-static {v6, v9}, Lio/flutter/plugin/platform/SingleViewPresentation$e;->a(Lio/flutter/plugin/platform/SingleViewPresentation$e;Lio/flutter/plugin/platform/SingleViewPresentation$f;)Lio/flutter/plugin/platform/SingleViewPresentation$f;

    :cond_1
    new-instance v15, Landroid/widget/FrameLayout;

    .local v15, "$r11":Landroid/widget/FrameLayout;, ""
    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroid/app/Presentation;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v15, v8}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lio/flutter/plugin/platform/SingleViewPresentation;->container:Landroid/widget/FrameLayout;

    new-instance v16, Lio/flutter/plugin/platform/SingleViewPresentation$d;

    .local v16, "$r12":Lio/flutter/plugin/platform/SingleViewPresentation$d;, ""
    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroid/app/Presentation;->getContext()Landroid/content/Context;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v6, v0, Lio/flutter/plugin/platform/SingleViewPresentation;->state:Lio/flutter/plugin/platform/SingleViewPresentation$e;

    invoke-static {v6}, Lio/flutter/plugin/platform/SingleViewPresentation$e;->b(Lio/flutter/plugin/platform/SingleViewPresentation$e;)Lio/flutter/plugin/platform/SingleViewPresentation$f;

    move-result-object v9

    move-object/from16 v0, v16

    invoke-direct {v0, v8, v9}, Lio/flutter/plugin/platform/SingleViewPresentation$d;-><init>(Landroid/content/Context;Lio/flutter/plugin/platform/SingleViewPresentation$f;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lio/flutter/plugin/platform/SingleViewPresentation;->state:Lio/flutter/plugin/platform/SingleViewPresentation$e;

    invoke-static {v6}, Lio/flutter/plugin/platform/SingleViewPresentation$e;->c(Lio/flutter/plugin/platform/SingleViewPresentation$e;)Lio/flutter/plugin/platform/f;

    move-result-object v17

    .local v17, "$r13":Lio/flutter/plugin/platform/f;, ""
    if-nez v17, :cond_2

    move-object/from16 v0, p0

    iget-object v6, v0, Lio/flutter/plugin/platform/SingleViewPresentation;->state:Lio/flutter/plugin/platform/SingleViewPresentation$e;

    move-object/from16 v0, p0

    .local v0, "$r14":Lio/flutter/plugin/platform/g;, ""
    iget-object v0, v0, Lio/flutter/plugin/platform/SingleViewPresentation;->viewFactory:Lio/flutter/plugin/platform/g;

    move-object/from16 v18, v0

    .end local v0    # "$r14":Lio/flutter/plugin/platform/g;, ""
    .local v18, "$r14":Lio/flutter/plugin/platform/g;, ""
    move-object/from16 v0, p0

    .local v0, "$i0":I, ""
    iget v0, v0, Lio/flutter/plugin/platform/SingleViewPresentation;->viewId:I

    move/from16 v19, v0

    .end local v0    # "$i0":I, ""
    .local v19, "$i0":I, ""
    move-object/from16 v0, p0

    iget-object v10, v0, Lio/flutter/plugin/platform/SingleViewPresentation;->createParams:Ljava/lang/Object;

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2, v10}, Lio/flutter/plugin/platform/g;->a(Landroid/content/Context;ILjava/lang/Object;)Lio/flutter/plugin/platform/f;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v6, v0}, Lio/flutter/plugin/platform/SingleViewPresentation$e;->a(Lio/flutter/plugin/platform/SingleViewPresentation$e;Lio/flutter/plugin/platform/f;)Lio/flutter/plugin/platform/f;

    :cond_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lio/flutter/plugin/platform/SingleViewPresentation;->state:Lio/flutter/plugin/platform/SingleViewPresentation$e;

    invoke-static {v6}, Lio/flutter/plugin/platform/SingleViewPresentation$e;->c(Lio/flutter/plugin/platform/SingleViewPresentation$e;)Lio/flutter/plugin/platform/f;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v0}, Lio/flutter/plugin/platform/f;->d()Landroid/view/View;

    move-result-object v20

    .local v20, "$r15":Landroid/view/View;, ""
    move-object/from16 v0, p0

    iget-object v15, v0, Lio/flutter/plugin/platform/SingleViewPresentation;->container:Landroid/widget/FrameLayout;

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    new-instance v21, Lio/flutter/plugin/platform/SingleViewPresentation$a;

    .local v21, "$r16":Lio/flutter/plugin/platform/SingleViewPresentation$a;, ""
    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroid/app/Presentation;->getContext()Landroid/content/Context;

    move-result-object v8

    move-object/from16 v0, p0

    .local v0, "$r17":Lio/flutter/plugin/platform/b;, ""
    iget-object v0, v0, Lio/flutter/plugin/platform/SingleViewPresentation;->accessibilityEventsDelegate:Lio/flutter/plugin/platform/b;

    move-object/from16 v22, v0

    .end local v0    # "$r17":Lio/flutter/plugin/platform/b;, ""
    .local v22, "$r17":Lio/flutter/plugin/platform/b;, ""
    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    invoke-direct {v0, v8, v1, v2}, Lio/flutter/plugin/platform/SingleViewPresentation$a;-><init>(Landroid/content/Context;Lio/flutter/plugin/platform/b;Landroid/view/View;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lio/flutter/plugin/platform/SingleViewPresentation;->rootView:Lio/flutter/plugin/platform/SingleViewPresentation$a;

    move-object/from16 v0, p0

    .end local v21    # "$r16":Lio/flutter/plugin/platform/SingleViewPresentation$a;, ""
    .local v0, "$r16":Lio/flutter/plugin/platform/SingleViewPresentation$a;, ""
    iget-object v0, v0, Lio/flutter/plugin/platform/SingleViewPresentation;->rootView:Lio/flutter/plugin/platform/SingleViewPresentation$a;

    move-object/from16 v21, v0

    .end local v0    # "$r16":Lio/flutter/plugin/platform/SingleViewPresentation$a;, ""
    .local v21, "$r16":Lio/flutter/plugin/platform/SingleViewPresentation$a;, ""
    move-object/from16 v0, p0

    iget-object v15, v0, Lio/flutter/plugin/platform/SingleViewPresentation;->container:Landroid/widget/FrameLayout;

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    .end local v21    # "$r16":Lio/flutter/plugin/platform/SingleViewPresentation$a;, ""
    .local v0, "$r16":Lio/flutter/plugin/platform/SingleViewPresentation$a;, ""
    iget-object v0, v0, Lio/flutter/plugin/platform/SingleViewPresentation;->rootView:Lio/flutter/plugin/platform/SingleViewPresentation$a;

    move-object/from16 v21, v0

    .end local v0    # "$r16":Lio/flutter/plugin/platform/SingleViewPresentation$a;, ""
    .local v21, "$r16":Lio/flutter/plugin/platform/SingleViewPresentation$a;, ""
    move-object/from16 v0, p0

    iget-object v6, v0, Lio/flutter/plugin/platform/SingleViewPresentation;->state:Lio/flutter/plugin/platform/SingleViewPresentation$e;

    invoke-static {v6}, Lio/flutter/plugin/platform/SingleViewPresentation$e;->a(Lio/flutter/plugin/platform/SingleViewPresentation$e;)Lio/flutter/plugin/platform/SingleViewPresentation$b;

    move-result-object v7

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    .local v0, "$r18":Landroid/view/View$OnFocusChangeListener;, ""
    iget-object v0, v0, Lio/flutter/plugin/platform/SingleViewPresentation;->focusChangeListener:Landroid/view/View$OnFocusChangeListener;

    move-object/from16 v23, v0

    .end local v0    # "$r18":Landroid/view/View$OnFocusChangeListener;, ""
    .local v23, "$r18":Landroid/view/View$OnFocusChangeListener;, ""
    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    move-object/from16 v0, p0

    .end local v21    # "$r16":Lio/flutter/plugin/platform/SingleViewPresentation$a;, ""
    .local v0, "$r16":Lio/flutter/plugin/platform/SingleViewPresentation$a;, ""
    iget-object v0, v0, Lio/flutter/plugin/platform/SingleViewPresentation;->rootView:Lio/flutter/plugin/platform/SingleViewPresentation$a;

    move-object/from16 v21, v0

    .end local v0    # "$r16":Lio/flutter/plugin/platform/SingleViewPresentation$a;, ""
    .local v21, "$r16":Lio/flutter/plugin/platform/SingleViewPresentation$a;, ""
    const/4 v5, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    move-object/from16 v0, p0

    .local v0, "$z0":Z, ""
    iget-boolean v0, v0, Lio/flutter/plugin/platform/SingleViewPresentation;->startFocused:Z

    move/from16 v24, v0

    .end local v0    # "$z0":Z, ""
    .local v24, "$z0":Z, ""
    if-eqz v24, :cond_3

    move-object/from16 v0, v20

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    .end local v21    # "$r16":Lio/flutter/plugin/platform/SingleViewPresentation$a;, ""
    .local v0, "$r16":Lio/flutter/plugin/platform/SingleViewPresentation$a;, ""
    iget-object v0, v0, Lio/flutter/plugin/platform/SingleViewPresentation;->rootView:Lio/flutter/plugin/platform/SingleViewPresentation$a;

    move-object/from16 v21, v0

    .end local v0    # "$r16":Lio/flutter/plugin/platform/SingleViewPresentation$a;, ""
    .local v21, "$r16":Lio/flutter/plugin/platform/SingleViewPresentation$a;, ""
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestFocus()Z

    :goto_0
    move-object/from16 v0, p0

    .end local v21    # "$r16":Lio/flutter/plugin/platform/SingleViewPresentation$a;, ""
    .local v0, "$r16":Lio/flutter/plugin/platform/SingleViewPresentation$a;, ""
    iget-object v0, v0, Lio/flutter/plugin/platform/SingleViewPresentation;->rootView:Lio/flutter/plugin/platform/SingleViewPresentation$a;

    move-object/from16 v21, v0

    .end local v0    # "$r16":Lio/flutter/plugin/platform/SingleViewPresentation$a;, ""
    .local v21, "$r16":Lio/flutter/plugin/platform/SingleViewPresentation$a;, ""
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/app/Presentation;->setContentView(Landroid/view/View;)V

    return-void
    .end local v4    # "$r4":Landroid/graphics/drawable/ColorDrawable;, ""
    .end local v15    # "$r11":Landroid/widget/FrameLayout;, ""
    .end local v24    # "$z0":Z, ""
    .end local v3    # "$r3":Landroid/view/Window;, ""
    .end local v16    # "$r12":Lio/flutter/plugin/platform/SingleViewPresentation$d;, ""
    .end local v7    # "$r6":Lio/flutter/plugin/platform/SingleViewPresentation$b;, ""
    .end local v17    # "$r13":Lio/flutter/plugin/platform/f;, ""
    .end local v22    # "$r17":Lio/flutter/plugin/platform/b;, ""
    .end local v8    # "$r7":Landroid/content/Context;, ""
    .end local v18    # "$r14":Lio/flutter/plugin/platform/g;, ""
    .end local v23    # "$r18":Landroid/view/View$OnFocusChangeListener;, ""
    .end local v19    # "$i0":I, ""
    .end local v6    # "$r5":Lio/flutter/plugin/platform/SingleViewPresentation$e;, ""
    .end local v9    # "$r8":Lio/flutter/plugin/platform/SingleViewPresentation$f;, ""
    .end local v10    # "$r1":Ljava/lang/Object;, ""
    .end local v21    # "$r16":Lio/flutter/plugin/platform/SingleViewPresentation$a;, ""
    .end local v12    # "$r9":Landroid/view/WindowManager;, ""
    .end local v20    # "$r15":Landroid/view/View;, ""
    .end local v14    # "$r10":Lio/flutter/plugin/platform/SingleViewPresentation$e;, ""
.end method
