.class public Lio/flutter/embedding/engine/e/c$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/engine/e/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FlutterKeyEvent"
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:Ljava/lang/Character;

.field public final g:I

.field public final h:I

.field public final i:I

.field public final j:I

.field public final k:I

.field public final l:I


# direct methods
.method public constructor <init>(IIIIILjava/lang/Character;IIII)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lio/flutter/embedding/engine/e/c$a;->a:I

    iput p2, p0, Lio/flutter/embedding/engine/e/c$a;->b:I

    iput p3, p0, Lio/flutter/embedding/engine/e/c$a;->c:I

    iput p4, p0, Lio/flutter/embedding/engine/e/c$a;->d:I

    iput p5, p0, Lio/flutter/embedding/engine/e/c$a;->e:I

    iput-object p6, p0, Lio/flutter/embedding/engine/e/c$a;->f:Ljava/lang/Character;

    iput p7, p0, Lio/flutter/embedding/engine/e/c$a;->g:I

    iput p8, p0, Lio/flutter/embedding/engine/e/c$a;->h:I

    iput p9, p0, Lio/flutter/embedding/engine/e/c$a;->i:I

    iput p10, p0, Lio/flutter/embedding/engine/e/c$a;->l:I

    invoke-static {p1}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    .local v0, "$r2":Landroid/view/InputDevice;, ""
    if-eqz v0, :cond_1

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .local p1, "$i5":I, ""
    const/16 v1, 0x13

    if-lt p1, v1, :cond_0

    invoke-virtual {v0}, Landroid/view/InputDevice;->getVendorId()I

    move-result p1

    iput p1, p0, Lio/flutter/embedding/engine/e/c$a;->j:I

    invoke-virtual {v0}, Landroid/view/InputDevice;->getProductId()I

    move-result p1

    iput p1, p0, Lio/flutter/embedding/engine/e/c$a;->k:I

    return-void

    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lio/flutter/embedding/engine/e/c$a;->j:I

    const/4 v1, 0x0

    iput v1, p0, Lio/flutter/embedding/engine/e/c$a;->k:I

    return-void

    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Lio/flutter/embedding/engine/e/c$a;->j:I

    const/4 v1, 0x0

    iput v1, p0, Lio/flutter/embedding/engine/e/c$a;->k:I

    return-void
    .end local p1    # "$i5":I, ""
    .end local v0    # "$r2":Landroid/view/InputDevice;, ""
.end method

.method public constructor <init>(Landroid/view/KeyEvent;Ljava/lang/Character;)V
    .locals 21

    move-object/from16 v0, p1

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v11

    .local v11, "$i0":I, ""
    move-object/from16 v0, p1

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getFlags()I

    move-result v12

    .local v12, "$i1":I, ""
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/KeyEvent;->getUnicodeChar(I)I

    move-result v13

    .local v13, "$i2":I, ""
    move-object/from16 v0, p1

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v15

    .local v15, "$i3":I, ""
    move-object/from16 v0, p1

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v16

    .local v16, "$i4":I, ""
    move-object/from16 v0, p1

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v17

    .local v17, "$i5":I, ""
    move-object/from16 v0, p1

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v18

    .local v18, "$i6":I, ""
    move-object/from16 v0, p1

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getSource()I

    move-result v19

    .local v19, "$i7":I, ""
    move-object/from16 v0, p1

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v20

    .local v20, "$i8":I, ""
    move-object/from16 v0, p0

    move v1, v11

    move v2, v12

    move v3, v13

    move v4, v15

    move/from16 v5, v16

    move-object/from16 v6, p2

    move/from16 v7, v17

    move/from16 v8, v18

    move/from16 v9, v19

    move/from16 v10, v20

    invoke-direct/range {v0 .. v10}, Lio/flutter/embedding/engine/e/c$a;-><init>(IIIIILjava/lang/Character;IIII)V

    return-void
    .end local v18    # "$i6":I, ""
    .end local v11    # "$i0":I, ""
    .end local v19    # "$i7":I, ""
    .end local v16    # "$i4":I, ""
    .end local v13    # "$i2":I, ""
    .end local v12    # "$i1":I, ""
    .end local v15    # "$i3":I, ""
    .end local v20    # "$i8":I, ""
    .end local v17    # "$i5":I, ""
.end method
