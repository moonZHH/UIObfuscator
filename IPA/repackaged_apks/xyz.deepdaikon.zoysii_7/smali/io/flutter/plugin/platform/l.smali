.class Lio/flutter/plugin/platform/l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/flutter/embedding/engine/e/l$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugin/platform/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/plugin/platform/k;
    }
.end annotation


# instance fields
.field final synthetic a:Lio/flutter/plugin/platform/m;


# direct methods
.method constructor <init>(Lio/flutter/plugin/platform/m;)V
    .locals 0

    iput-object p1, p0, Lio/flutter/plugin/platform/l;->a:Lio/flutter/plugin/platform/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()V
    .locals 6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .local v0, "$i0":I, ""
    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    .local v2, "$r3":Ljava/lang/IllegalStateException;, ""
    new-instance v3, Ljava/lang/StringBuilder;

    .local v3, "$r1":Ljava/lang/StringBuilder;, ""
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to use platform views with API "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", required API level is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .local v5, "$r2":Ljava/lang/String;, ""
    invoke-direct {v2, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    .end local v5    # "$r2":Ljava/lang/String;, ""
    .end local v2    # "$r3":Ljava/lang/IllegalStateException;, ""
    .end local v0    # "$i0":I, ""
    .end local v3    # "$r1":Ljava/lang/StringBuilder;, ""
.end method

.method public static synthetic a(Lio/flutter/plugin/platform/l;Lio/flutter/embedding/engine/e/l$a;Landroid/view/View;Z)V
    .locals 3

    if-eqz p3, :cond_0

    iget-object v0, p0, Lio/flutter/plugin/platform/l;->a:Lio/flutter/plugin/platform/m;

    .local v0, "$r4":Lio/flutter/plugin/platform/m;, ""
    invoke-static {v0}, Lio/flutter/plugin/platform/m;->h(Lio/flutter/plugin/platform/m;)Lio/flutter/embedding/engine/e/l;

    move-result-object v1

    .local v1, "$r1":Lio/flutter/embedding/engine/e/l;, ""
    iget v2, p1, Lio/flutter/embedding/engine/e/l$a;->a:I

    .local v2, "$i0":I, ""
    invoke-virtual {v1, v2}, Lio/flutter/embedding/engine/e/l;->a(I)V

    :cond_0
    return-void
    .end local v2    # "$i0":I, ""
    .end local v0    # "$r4":Lio/flutter/plugin/platform/m;, ""
    .end local v1    # "$r1":Lio/flutter/embedding/engine/e/l;, ""
.end method


# virtual methods
.method public a(Lio/flutter/embedding/engine/e/l$a;)J
    .locals 36
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    move-object/from16 v0, p0

    invoke-direct {v0}, Lio/flutter/plugin/platform/l;->a()V

    move-object/from16 v0, p1

    .local v9, "$i0":I, ""
    iget v9, v0, Lio/flutter/embedding/engine/e/l$a;->e:I

    invoke-static {v9}, Lio/flutter/plugin/platform/m;->a(I)Z

    move-result v10

    .local v10, "$z0":Z, ""
    if-eqz v10, :cond_5

    move-object/from16 v0, p0

    .local v11, "$r3":Lio/flutter/plugin/platform/m;, ""
    iget-object v11, v0, Lio/flutter/plugin/platform/l;->a:Lio/flutter/plugin/platform/m;

    iget-object v12, v11, Lio/flutter/plugin/platform/m;->h:Ljava/util/HashMap;

    .local v12, "$r4":Ljava/util/HashMap;, ""
    move-object/from16 v0, p1

    iget v9, v0, Lio/flutter/embedding/engine/e/l$a;->a:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .local v13, "$r5":Ljava/lang/Integer;, ""
    invoke-virtual {v12, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    move-object/from16 v0, p0

    iget-object v11, v0, Lio/flutter/plugin/platform/l;->a:Lio/flutter/plugin/platform/m;

    invoke-static {v11}, Lio/flutter/plugin/platform/m;->a(Lio/flutter/plugin/platform/m;)Lio/flutter/plugin/platform/i;

    move-result-object v14

    .local v14, "$r6":Lio/flutter/plugin/platform/i;, ""
    move-object/from16 v0, p1

    .local v15, "$r7":Ljava/lang/String;, ""
    iget-object v15, v0, Lio/flutter/embedding/engine/e/l$a;->b:Ljava/lang/String;

    invoke-virtual {v14, v15}, Lio/flutter/plugin/platform/i;->a(Ljava/lang/String;)Lio/flutter/plugin/platform/g;

    move-result-object v16

    .local v16, "$r8":Lio/flutter/plugin/platform/g;, ""
    if-eqz v16, :cond_3

    const/16 v17, 0x0

    move-object/from16 v0, p1

    .local v0, "$r10":Ljava/nio/ByteBuffer;, ""
    iget-object v0, v0, Lio/flutter/embedding/engine/e/l$a;->f:Ljava/nio/ByteBuffer;

    move-object/from16 v18, v0

    .end local v0    # "$r10":Ljava/nio/ByteBuffer;, ""
    .local v18, "$r10":Ljava/nio/ByteBuffer;, ""
    if-eqz v18, :cond_0

    move-object/from16 v0, v16

    invoke-virtual {v0}, Lio/flutter/plugin/platform/g;->a()Lb/a/b/a/j;

    move-result-object v19

    .local v19, "$r11":Lb/a/b/a/j;, ""
    move-object/from16 v0, p1

    .end local v18    # "$r10":Ljava/nio/ByteBuffer;, ""
    .local v0, "$r10":Ljava/nio/ByteBuffer;, ""
    iget-object v0, v0, Lio/flutter/embedding/engine/e/l$a;->f:Ljava/nio/ByteBuffer;

    move-object/from16 v18, v0

    .end local v0    # "$r10":Ljava/nio/ByteBuffer;, ""
    .local v18, "$r10":Ljava/nio/ByteBuffer;, ""
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lb/a/b/a/j;->a(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object v17

    .local v17, "$r9":Ljava/lang/Object;, ""
    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lio/flutter/plugin/platform/l;->a:Lio/flutter/plugin/platform/m;

    move-object/from16 v0, p1

    .local v0, "$d0":D, ""
    iget-wide v0, v0, Lio/flutter/embedding/engine/e/l$a;->c:D

    move-wide/from16 v20, v0

    .end local v0    # "$d0":D, ""
    .local v20, "$d0":D, ""
    invoke-static {v11, v0, v1}, Lio/flutter/plugin/platform/m;->a(Lio/flutter/plugin/platform/m;D)I

    move-result v22

    .local v22, "$i1":I, ""
    move-object/from16 v0, p0

    iget-object v11, v0, Lio/flutter/plugin/platform/l;->a:Lio/flutter/plugin/platform/m;

    move-object/from16 v0, p1

    .end local v20    # "$d0":D, ""
    .local v0, "$d0":D, ""
    iget-wide v0, v0, Lio/flutter/embedding/engine/e/l$a;->d:D

    move-wide/from16 v20, v0

    .end local v0    # "$d0":D, ""
    .local v20, "$d0":D, ""
    invoke-static {v11, v0, v1}, Lio/flutter/plugin/platform/m;->a(Lio/flutter/plugin/platform/m;D)I

    move-result v23

    .local v23, "$i2":I, ""
    move-object/from16 v0, p0

    iget-object v11, v0, Lio/flutter/plugin/platform/l;->a:Lio/flutter/plugin/platform/m;

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-static {v11, v0, v1}, Lio/flutter/plugin/platform/m;->a(Lio/flutter/plugin/platform/m;II)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lio/flutter/plugin/platform/l;->a:Lio/flutter/plugin/platform/m;

    invoke-static {v11}, Lio/flutter/plugin/platform/m;->b(Lio/flutter/plugin/platform/m;)Lio/flutter/view/r;

    move-result-object v24

    .local v24, "$r12":Lio/flutter/view/r;, ""
    move-object/from16 v0, v24

    invoke-interface {v0}, Lio/flutter/view/r;->a()Lio/flutter/view/r$a;

    move-result-object v25

    .local v25, "$r13":Lio/flutter/view/r$a;, ""
    move-object/from16 v0, p0

    iget-object v11, v0, Lio/flutter/plugin/platform/l;->a:Lio/flutter/plugin/platform/m;

    invoke-static {v11}, Lio/flutter/plugin/platform/m;->c(Lio/flutter/plugin/platform/m;)Landroid/content/Context;

    move-result-object v26

    .local v26, "$r14":Landroid/content/Context;, ""
    move-object/from16 v0, p0

    iget-object v11, v0, Lio/flutter/plugin/platform/l;->a:Lio/flutter/plugin/platform/m;

    invoke-static {v11}, Lio/flutter/plugin/platform/m;->d(Lio/flutter/plugin/platform/m;)Lio/flutter/plugin/platform/b;

    move-result-object v27

    .local v27, "$r15":Lio/flutter/plugin/platform/b;, ""
    move-object/from16 v0, p1

    iget v9, v0, Lio/flutter/embedding/engine/e/l$a;->a:I

    new-instance v28, Lio/flutter/plugin/platform/a;

    .local v28, "$r1":Lio/flutter/plugin/platform/a;, ""
    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lio/flutter/plugin/platform/a;-><init>(Lio/flutter/plugin/platform/l;Lio/flutter/embedding/engine/e/l$a;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v16

    move-object/from16 v3, v25

    move/from16 v4, v22

    move/from16 v5, v23

    move v6, v9

    move-object/from16 v7, v17

    move-object/from16 v8, v28

    invoke-static/range {v0 .. v8}, Lio/flutter/plugin/platform/q;->a(Landroid/content/Context;Lio/flutter/plugin/platform/b;Lio/flutter/plugin/platform/g;Lio/flutter/view/r$a;IIILjava/lang/Object;Landroid/view/View$OnFocusChangeListener;)Lio/flutter/plugin/platform/q;

    move-result-object v29

    .local v29, "$r16":Lio/flutter/plugin/platform/q;, ""
    if-eqz v29, :cond_2

    move-object/from16 v0, p0

    iget-object v11, v0, Lio/flutter/plugin/platform/l;->a:Lio/flutter/plugin/platform/m;

    invoke-static {v11}, Lio/flutter/plugin/platform/m;->e(Lio/flutter/plugin/platform/m;)Landroid/view/View;

    move-result-object v30

    .local v30, "$r17":Landroid/view/View;, ""
    if-eqz v30, :cond_1

    move-object/from16 v0, p0

    iget-object v11, v0, Lio/flutter/plugin/platform/l;->a:Lio/flutter/plugin/platform/m;

    invoke-static {v11}, Lio/flutter/plugin/platform/m;->e(Lio/flutter/plugin/platform/m;)Landroid/view/View;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lio/flutter/plugin/platform/q;->a(Landroid/view/View;)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lio/flutter/plugin/platform/l;->a:Lio/flutter/plugin/platform/m;

    iget-object v12, v11, Lio/flutter/plugin/platform/m;->h:Ljava/util/HashMap;

    move-object/from16 v0, p1

    iget v9, v0, Lio/flutter/embedding/engine/e/l$a;->a:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v0, v29

    invoke-virtual {v12, v13, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v29

    invoke-virtual {v0}, Lio/flutter/plugin/platform/q;->d()Landroid/view/View;

    move-result-object v30

    move-object/from16 v0, p1

    iget v9, v0, Lio/flutter/embedding/engine/e/l$a;->e:I

    move-object/from16 v0, v30

    invoke-virtual {v0, v9}, Landroid/view/View;->setLayoutDirection(I)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lio/flutter/plugin/platform/l;->a:Lio/flutter/plugin/platform/m;

    invoke-static {v11}, Lio/flutter/plugin/platform/m;->f(Lio/flutter/plugin/platform/m;)Ljava/util/HashMap;

    move-result-object v12

    move-object/from16 v0, v30

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v30

    invoke-virtual {v12, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v25

    invoke-interface {v0}, Lio/flutter/view/r$a;->c()J

    move-result-wide v31

    .local v31, "$l3":J, ""
    return-wide v31

    :cond_2
    new-instance v33, Ljava/lang/IllegalStateException;

    .local v33, "$r18":Ljava/lang/IllegalStateException;, ""
    new-instance v34, Ljava/lang/StringBuilder;

    .local v34, "$r19":Ljava/lang/StringBuilder;, ""
    move-object/from16 v0, v34

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "Failed creating virtual display for a "

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    iget-object v15, v0, Lio/flutter/embedding/engine/e/l$a;->b:Ljava/lang/String;

    move-object/from16 v0, v34

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v35, " with id: "

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    iget v9, v0, Lio/flutter/embedding/engine/e/l$a;->a:I

    move-object/from16 v0, v34

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v0, v34

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v33

    invoke-direct {v0, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v33

    :cond_3
    new-instance v33, Ljava/lang/IllegalStateException;

    new-instance v34, Ljava/lang/StringBuilder;

    move-object/from16 v0, v34

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "Trying to create a platform view of unregistered type: "

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    iget-object v15, v0, Lio/flutter/embedding/engine/e/l$a;->b:Ljava/lang/String;

    move-object/from16 v0, v34

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v34

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v33

    invoke-direct {v0, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v33

    :cond_4
    new-instance v33, Ljava/lang/IllegalStateException;

    new-instance v34, Ljava/lang/StringBuilder;

    move-object/from16 v0, v34

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "Trying to create an already created platform view, view id: "

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    iget v9, v0, Lio/flutter/embedding/engine/e/l$a;->a:I

    move-object/from16 v0, v34

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v0, v34

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v33

    invoke-direct {v0, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v33

    :cond_5
    new-instance v33, Ljava/lang/IllegalStateException;

    new-instance v34, Ljava/lang/StringBuilder;

    move-object/from16 v0, v34

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "Trying to create a view with unknown direction value: "

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    iget v9, v0, Lio/flutter/embedding/engine/e/l$a;->e:I

    move-object/from16 v0, v34

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v35, "(view id: "

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    iget v9, v0, Lio/flutter/embedding/engine/e/l$a;->a:I

    move-object/from16 v0, v34

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v35, ")"

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v34

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v33

    invoke-direct {v0, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v33
    .end local v18    # "$r10":Ljava/nio/ByteBuffer;, ""
    .end local v17    # "$r9":Ljava/lang/Object;, ""
    .end local v31    # "$l3":J, ""
    .end local v13    # "$r5":Ljava/lang/Integer;, ""
    .end local v25    # "$r13":Lio/flutter/view/r$a;, ""
    .end local v29    # "$r16":Lio/flutter/plugin/platform/q;, ""
    .end local v10    # "$z0":Z, ""
    .end local v16    # "$r8":Lio/flutter/plugin/platform/g;, ""
    .end local v30    # "$r17":Landroid/view/View;, ""
    .end local v14    # "$r6":Lio/flutter/plugin/platform/i;, ""
    .end local v24    # "$r12":Lio/flutter/view/r;, ""
    .end local v26    # "$r14":Landroid/content/Context;, ""
    .end local v9    # "$i0":I, ""
    .end local v20    # "$d0":D, ""
    .end local v33    # "$r18":Ljava/lang/IllegalStateException;, ""
    .end local v22    # "$i1":I, ""
    .end local v11    # "$r3":Lio/flutter/plugin/platform/m;, ""
    .end local v15    # "$r7":Ljava/lang/String;, ""
    .end local v23    # "$i2":I, ""
    .end local v19    # "$r11":Lb/a/b/a/j;, ""
    .end local v34    # "$r19":Ljava/lang/StringBuilder;, ""
    .end local v27    # "$r15":Lio/flutter/plugin/platform/b;, ""
    .end local v12    # "$r4":Ljava/util/HashMap;, ""
    .end local v28    # "$r1":Lio/flutter/plugin/platform/a;, ""
.end method

.method public a(I)V
    .locals 13

    invoke-direct {p0}, Lio/flutter/plugin/platform/l;->a()V

    iget-object v0, p0, Lio/flutter/plugin/platform/l;->a:Lio/flutter/plugin/platform/m;

    .local v0, "$r1":Lio/flutter/plugin/platform/m;, ""
    iget-object v1, v0, Lio/flutter/plugin/platform/m;->h:Ljava/util/HashMap;

    .local v1, "$r2":Ljava/util/HashMap;, ""
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .local v2, "$r3":Ljava/lang/Integer;, ""
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .local v3, "$r4":Ljava/lang/Object;, ""
    move-object v5, v3

    check-cast v5, Lio/flutter/plugin/platform/q;

    move-object v4, v5

    .local v4, "$r5":Lio/flutter/plugin/platform/q;, ""
    if-eqz v4, :cond_1

    iget-object v0, p0, Lio/flutter/plugin/platform/l;->a:Lio/flutter/plugin/platform/m;

    invoke-static {v0}, Lio/flutter/plugin/platform/m;->g(Lio/flutter/plugin/platform/m;)Lb/a/b/b/c;

    move-result-object v6

    .local v6, "$r6":Lb/a/b/b/c;, ""
    if-eqz v6, :cond_0

    iget-object v0, p0, Lio/flutter/plugin/platform/l;->a:Lio/flutter/plugin/platform/m;

    invoke-static {v0}, Lio/flutter/plugin/platform/m;->g(Lio/flutter/plugin/platform/m;)Lb/a/b/b/c;

    move-result-object v6

    invoke-virtual {v6, p1}, Lb/a/b/b/c;->a(I)V

    :cond_0
    iget-object v0, p0, Lio/flutter/plugin/platform/l;->a:Lio/flutter/plugin/platform/m;

    invoke-static {v0}, Lio/flutter/plugin/platform/m;->f(Lio/flutter/plugin/platform/m;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v4}, Lio/flutter/plugin/platform/q;->d()Landroid/view/View;

    move-result-object v7

    .local v7, "$r7":Landroid/view/View;, ""
    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    .local v8, "$r8":Landroid/content/Context;, ""
    invoke-virtual {v1, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Lio/flutter/plugin/platform/q;->a()V

    iget-object v0, p0, Lio/flutter/plugin/platform/l;->a:Lio/flutter/plugin/platform/m;

    iget-object v1, v0, Lio/flutter/plugin/platform/m;->h:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    new-instance v9, Ljava/lang/IllegalStateException;

    .local v9, "$r9":Ljava/lang/IllegalStateException;, ""
    new-instance v10, Ljava/lang/StringBuilder;

    .local v10, "$r10":Ljava/lang/StringBuilder;, ""
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Trying to dispose a platform view with unknown id: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .local v12, "$r11":Ljava/lang/String;, ""
    invoke-direct {v9, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9
    .end local v0    # "$r1":Lio/flutter/plugin/platform/m;, ""
    .end local v4    # "$r5":Lio/flutter/plugin/platform/q;, ""
    .end local v6    # "$r6":Lb/a/b/b/c;, ""
    .end local v9    # "$r9":Ljava/lang/IllegalStateException;, ""
    .end local v1    # "$r2":Ljava/util/HashMap;, ""
    .end local v8    # "$r8":Landroid/content/Context;, ""
    .end local v3    # "$r4":Ljava/lang/Object;, ""
    .end local v12    # "$r11":Ljava/lang/String;, ""
    .end local v2    # "$r3":Ljava/lang/Integer;, ""
    .end local v10    # "$r10":Ljava/lang/StringBuilder;, ""
    .end local v7    # "$r7":Landroid/view/View;, ""
.end method

.method public a(II)V
    .locals 12
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    invoke-direct {p0}, Lio/flutter/plugin/platform/l;->a()V

    invoke-static {p2}, Lio/flutter/plugin/platform/m;->a(I)Z

    move-result v0

    .local v0, "$z0":Z, ""
    if-eqz v0, :cond_1

    iget-object v1, p0, Lio/flutter/plugin/platform/l;->a:Lio/flutter/plugin/platform/m;

    .local v1, "$r1":Lio/flutter/plugin/platform/m;, ""
    iget-object v2, v1, Lio/flutter/plugin/platform/m;->h:Ljava/util/HashMap;

    .local v2, "$r2":Ljava/util/HashMap;, ""
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .local v3, "$r3":Ljava/lang/Integer;, ""
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .local v4, "$r4":Ljava/lang/Object;, ""
    move-object v6, v4

    check-cast v6, Lio/flutter/plugin/platform/q;

    move-object v5, v6

    .local v5, "$r5":Lio/flutter/plugin/platform/q;, ""
    invoke-virtual {v5}, Lio/flutter/plugin/platform/q;->d()Landroid/view/View;

    move-result-object v7

    .local v7, "$r6":Landroid/view/View;, ""
    if-eqz v7, :cond_0

    invoke-virtual {v7, p2}, Landroid/view/View;->setLayoutDirection(I)V

    return-void

    :cond_0
    new-instance v8, Ljava/lang/IllegalStateException;

    .local v8, "$r7":Ljava/lang/IllegalStateException;, ""
    new-instance v9, Ljava/lang/StringBuilder;

    .local v9, "$r8":Ljava/lang/StringBuilder;, ""
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Sending touch to an unknown view with id: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .local v11, "$r9":Ljava/lang/String;, ""
    invoke-direct {v8, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_1
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Trying to set unknown direction value: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "(view id: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8
    .end local v3    # "$r3":Ljava/lang/Integer;, ""
    .end local v2    # "$r2":Ljava/util/HashMap;, ""
    .end local v8    # "$r7":Ljava/lang/IllegalStateException;, ""
    .end local v5    # "$r5":Lio/flutter/plugin/platform/q;, ""
    .end local v4    # "$r4":Ljava/lang/Object;, ""
    .end local v9    # "$r8":Ljava/lang/StringBuilder;, ""
    .end local v11    # "$r9":Ljava/lang/String;, ""
    .end local v0    # "$z0":Z, ""
    .end local v7    # "$r6":Landroid/view/View;, ""
    .end local v1    # "$r1":Lio/flutter/plugin/platform/m;, ""
.end method

.method public a(Lio/flutter/embedding/engine/e/l$b;Ljava/lang/Runnable;)V
    .locals 17

    move-object/from16 v0, p0

    invoke-direct {v0}, Lio/flutter/plugin/platform/l;->a()V

    move-object/from16 v0, p0

    .local v2, "$r3":Lio/flutter/plugin/platform/m;, ""
    iget-object v2, v0, Lio/flutter/plugin/platform/l;->a:Lio/flutter/plugin/platform/m;

    iget-object v3, v2, Lio/flutter/plugin/platform/m;->h:Ljava/util/HashMap;

    .local v3, "$r4":Ljava/util/HashMap;, ""
    move-object/from16 v0, p1

    .local v4, "$i0":I, ""
    iget v4, v0, Lio/flutter/embedding/engine/e/l$b;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .local v5, "$r5":Ljava/lang/Integer;, ""
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .local v6, "$r6":Ljava/lang/Object;, ""
    move-object v8, v6

    check-cast v8, Lio/flutter/plugin/platform/q;

    move-object v7, v8

    .local v7, "$r7":Lio/flutter/plugin/platform/q;, ""
    if-eqz v7, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lio/flutter/plugin/platform/l;->a:Lio/flutter/plugin/platform/m;

    move-object/from16 v0, p1

    .local v9, "$d0":D, ""
    iget-wide v9, v0, Lio/flutter/embedding/engine/e/l$b;->b:D

    invoke-static {v2, v9, v10}, Lio/flutter/plugin/platform/m;->a(Lio/flutter/plugin/platform/m;D)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lio/flutter/plugin/platform/l;->a:Lio/flutter/plugin/platform/m;

    move-object/from16 v0, p1

    iget-wide v9, v0, Lio/flutter/embedding/engine/e/l$b;->c:D

    invoke-static {v2, v9, v10}, Lio/flutter/plugin/platform/m;->a(Lio/flutter/plugin/platform/m;D)I

    move-result v11

    .local v11, "$i1":I, ""
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/flutter/plugin/platform/l;->a:Lio/flutter/plugin/platform/m;

    invoke-static {v2, v4, v11}, Lio/flutter/plugin/platform/m;->a(Lio/flutter/plugin/platform/m;II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lio/flutter/plugin/platform/l;->a:Lio/flutter/plugin/platform/m;

    invoke-static {v2, v7}, Lio/flutter/plugin/platform/m;->a(Lio/flutter/plugin/platform/m;Lio/flutter/plugin/platform/q;)V

    new-instance v12, Lio/flutter/plugin/platform/k;

    .local v12, "$r8":Lio/flutter/plugin/platform/k;, ""
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v12, v0, v7, v1}, Lio/flutter/plugin/platform/k;-><init>(Lio/flutter/plugin/platform/l;Lio/flutter/plugin/platform/q;Ljava/lang/Runnable;)V

    invoke-virtual {v7, v4, v11, v12}, Lio/flutter/plugin/platform/q;->a(IILjava/lang/Runnable;)V

    return-void

    :cond_0
    new-instance v13, Ljava/lang/IllegalStateException;

    .local v13, "$r9":Ljava/lang/IllegalStateException;, ""
    new-instance v14, Ljava/lang/StringBuilder;

    .local v14, "$r10":Ljava/lang/StringBuilder;, ""
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Trying to resize a platform view with unknown id: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    iget v4, v0, Lio/flutter/embedding/engine/e/l$b;->a:I

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .local v16, "$r11":Ljava/lang/String;, ""
    move-object/from16 v0, v16

    invoke-direct {v13, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v13
    .end local v9    # "$d0":D, ""
    .end local v13    # "$r9":Ljava/lang/IllegalStateException;, ""
    .end local v12    # "$r8":Lio/flutter/plugin/platform/k;, ""
    .end local v3    # "$r4":Ljava/util/HashMap;, ""
    .end local v6    # "$r6":Ljava/lang/Object;, ""
    .end local v4    # "$i0":I, ""
    .end local v16    # "$r11":Ljava/lang/String;, ""
    .end local v5    # "$r5":Ljava/lang/Integer;, ""
    .end local v7    # "$r7":Lio/flutter/plugin/platform/q;, ""
    .end local v11    # "$i1":I, ""
    .end local v14    # "$r10":Ljava/lang/StringBuilder;, ""
    .end local v2    # "$r3":Lio/flutter/plugin/platform/m;, ""
.end method

.method public a(Lio/flutter/embedding/engine/e/l$c;)V
    .locals 53

    move-object/from16 v0, p0

    invoke-direct {v0}, Lio/flutter/plugin/platform/l;->a()V

    move-object/from16 v0, p0

    .local v0, "$r2":Lio/flutter/plugin/platform/m;, ""
    iget-object v0, v0, Lio/flutter/plugin/platform/l;->a:Lio/flutter/plugin/platform/m;

    move-object/from16 v16, v0

    .end local v0    # "$r2":Lio/flutter/plugin/platform/m;, ""
    .local v16, "$r2":Lio/flutter/plugin/platform/m;, ""
    invoke-static {v0}, Lio/flutter/plugin/platform/m;->c(Lio/flutter/plugin/platform/m;)Landroid/content/Context;

    move-result-object v17

    .local v17, "$r3":Landroid/content/Context;, ""
    move-object/from16 v0, v17

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    .local v18, "$r4":Landroid/content/res/Resources;, ""
    move-object/from16 v0, v18

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v19

    .local v19, "$r5":Landroid/util/DisplayMetrics;, ""
    move-object/from16 v0, v19

    .local v0, "$f0":F, ""
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v20, v0

    .end local v0    # "$f0":F, ""
    .local v20, "$f0":F, ""
    move-object/from16 v0, p1

    .local v0, "$r6":Ljava/lang/Object;, ""
    iget-object v0, v0, Lio/flutter/embedding/engine/e/l$c;->f:Ljava/lang/Object;

    move-object/from16 v21, v0

    .end local v0    # "$r6":Ljava/lang/Object;, ""
    .local v21, "$r6":Ljava/lang/Object;, ""
    invoke-static {v0}, Lio/flutter/plugin/platform/m;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v22

    .local v22, "$r7":Ljava/util/List;, ""
    move-object/from16 v0, p1

    .local v0, "$i0":I, ""
    iget v0, v0, Lio/flutter/embedding/engine/e/l$c;->e:I

    move/from16 v23, v0

    .end local v0    # "$i0":I, ""
    .local v23, "$i0":I, ""
    new-array v0, v0, [Landroid/view/MotionEvent$PointerProperties;

    .local v0, "$r8":[Landroid/view/MotionEvent$PointerProperties;, ""
    move-object/from16 v24, v0

    .end local v0    # "$r8":[Landroid/view/MotionEvent$PointerProperties;, ""
    .local v24, "$r8":[Landroid/view/MotionEvent$PointerProperties;, ""
    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v25

    .local v25, "$r9":[Ljava/lang/Object;, ""
    move-object/from16 v26, v25

    check-cast v26, [Landroid/view/MotionEvent$PointerProperties;

    move-object/from16 v24, v26

    move-object/from16 v0, p1

    .end local v21    # "$r6":Ljava/lang/Object;, ""
    .local v0, "$r6":Ljava/lang/Object;, ""
    iget-object v0, v0, Lio/flutter/embedding/engine/e/l$c;->g:Ljava/lang/Object;

    move-object/from16 v21, v0

    .end local v0    # "$r6":Ljava/lang/Object;, ""
    .local v21, "$r6":Ljava/lang/Object;, ""
    move/from16 v1, v20

    invoke-static {v0, v1}, Lio/flutter/plugin/platform/m;->a(Ljava/lang/Object;F)Ljava/util/List;

    move-result-object v22

    move-object/from16 v0, p1

    .end local v23    # "$i0":I, ""
    .local v0, "$i0":I, ""
    iget v0, v0, Lio/flutter/embedding/engine/e/l$c;->e:I

    move/from16 v23, v0

    .end local v0    # "$i0":I, ""
    .local v23, "$i0":I, ""
    new-array v0, v0, [Landroid/view/MotionEvent$PointerCoords;

    .local v0, "$r10":[Landroid/view/MotionEvent$PointerCoords;, ""
    move-object/from16 v27, v0

    .end local v0    # "$r10":[Landroid/view/MotionEvent$PointerCoords;, ""
    .local v27, "$r10":[Landroid/view/MotionEvent$PointerCoords;, ""
    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v28, v25

    check-cast v28, [Landroid/view/MotionEvent$PointerCoords;

    move-object/from16 v27, v28

    move-object/from16 v0, p0

    .end local v16    # "$r2":Lio/flutter/plugin/platform/m;, ""
    .local v0, "$r2":Lio/flutter/plugin/platform/m;, ""
    iget-object v0, v0, Lio/flutter/plugin/platform/l;->a:Lio/flutter/plugin/platform/m;

    move-object/from16 v16, v0

    .end local v0    # "$r2":Lio/flutter/plugin/platform/m;, ""
    .local v16, "$r2":Lio/flutter/plugin/platform/m;, ""
    iget-object v0, v0, Lio/flutter/plugin/platform/m;->h:Ljava/util/HashMap;

    .local v0, "$r11":Ljava/util/HashMap;, ""
    move-object/from16 v29, v0

    .end local v0    # "$r11":Ljava/util/HashMap;, ""
    .local v29, "$r11":Ljava/util/HashMap;, ""
    move-object/from16 v0, p1

    .end local v23    # "$i0":I, ""
    .local v0, "$i0":I, ""
    iget v0, v0, Lio/flutter/embedding/engine/e/l$c;->a:I

    move/from16 v23, v0

    .end local v0    # "$i0":I, ""
    .local v23, "$i0":I, ""
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    .local v30, "$r12":Ljava/lang/Integer;, ""
    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v31

    .local v31, "$z0":Z, ""
    if-eqz v31, :cond_0

    move-object/from16 v0, p0

    .end local v16    # "$r2":Lio/flutter/plugin/platform/m;, ""
    .local v0, "$r2":Lio/flutter/plugin/platform/m;, ""
    iget-object v0, v0, Lio/flutter/plugin/platform/l;->a:Lio/flutter/plugin/platform/m;

    move-object/from16 v16, v0

    .end local v0    # "$r2":Lio/flutter/plugin/platform/m;, ""
    .local v16, "$r2":Lio/flutter/plugin/platform/m;, ""
    iget-object v0, v0, Lio/flutter/plugin/platform/m;->h:Ljava/util/HashMap;

    .end local v29    # "$r11":Ljava/util/HashMap;, ""
    .local v0, "$r11":Ljava/util/HashMap;, ""
    move-object/from16 v29, v0

    .end local v0    # "$r11":Ljava/util/HashMap;, ""
    .local v29, "$r11":Ljava/util/HashMap;, ""
    move-object/from16 v0, p1

    .end local v23    # "$i0":I, ""
    .local v0, "$i0":I, ""
    iget v0, v0, Lio/flutter/embedding/engine/e/l$c;->a:I

    move/from16 v23, v0

    .end local v0    # "$i0":I, ""
    .local v23, "$i0":I, ""
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v33, v21

    check-cast v33, Lio/flutter/plugin/platform/q;

    move-object/from16 v32, v33

    .local v32, "$r13":Lio/flutter/plugin/platform/q;, ""
    move-object/from16 v0, v32

    invoke-virtual {v0}, Lio/flutter/plugin/platform/q;->d()Landroid/view/View;

    move-result-object v34

    .local v34, "$r14":Landroid/view/View;, ""
    move-object/from16 v0, p1

    .local v0, "$r15":Ljava/lang/Number;, ""
    iget-object v0, v0, Lio/flutter/embedding/engine/e/l$c;->b:Ljava/lang/Number;

    move-object/from16 v35, v0

    .end local v0    # "$r15":Ljava/lang/Number;, ""
    .local v35, "$r15":Ljava/lang/Number;, ""
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v36

    .local v36, "$l4":J, ""
    move-object/from16 v0, p1

    .end local v35    # "$r15":Ljava/lang/Number;, ""
    .local v0, "$r15":Ljava/lang/Number;, ""
    iget-object v0, v0, Lio/flutter/embedding/engine/e/l$c;->c:Ljava/lang/Number;

    move-object/from16 v35, v0

    .end local v0    # "$r15":Ljava/lang/Number;, ""
    .local v35, "$r15":Ljava/lang/Number;, ""
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v38

    .local v38, "$l5":J, ""
    move-object/from16 v0, p1

    .end local v23    # "$i0":I, ""
    .local v0, "$i0":I, ""
    iget v0, v0, Lio/flutter/embedding/engine/e/l$c;->d:I

    move/from16 v23, v0

    .end local v0    # "$i0":I, ""
    .local v23, "$i0":I, ""
    move-object/from16 v0, p1

    .local v0, "$i1":I, ""
    iget v0, v0, Lio/flutter/embedding/engine/e/l$c;->e:I

    move/from16 v40, v0

    .end local v0    # "$i1":I, ""
    .local v40, "$i1":I, ""
    move-object/from16 v0, p1

    .local v0, "$i2":I, ""
    iget v0, v0, Lio/flutter/embedding/engine/e/l$c;->h:I

    move/from16 v41, v0

    .end local v0    # "$i2":I, ""
    .local v41, "$i2":I, ""
    move-object/from16 v0, p1

    .local v0, "$i3":I, ""
    iget v0, v0, Lio/flutter/embedding/engine/e/l$c;->i:I

    move/from16 v42, v0

    .end local v0    # "$i3":I, ""
    .local v42, "$i3":I, ""
    move-object/from16 v0, p1

    .end local v20    # "$f0":F, ""
    .local v0, "$f0":F, ""
    iget v0, v0, Lio/flutter/embedding/engine/e/l$c;->j:F

    move/from16 v20, v0

    .end local v0    # "$f0":F, ""
    .local v20, "$f0":F, ""
    move-object/from16 v0, p1

    .local v0, "$f1":F, ""
    iget v0, v0, Lio/flutter/embedding/engine/e/l$c;->k:F

    move/from16 v43, v0

    .end local v0    # "$f1":F, ""
    .local v43, "$f1":F, ""
    move-object/from16 v0, p1

    .local v0, "$i6":I, ""
    iget v0, v0, Lio/flutter/embedding/engine/e/l$c;->l:I

    move/from16 v44, v0

    .end local v0    # "$i6":I, ""
    .local v44, "$i6":I, ""
    move-object/from16 v0, p1

    .local v0, "$i7":I, ""
    iget v0, v0, Lio/flutter/embedding/engine/e/l$c;->m:I

    move/from16 v45, v0

    .end local v0    # "$i7":I, ""
    .local v45, "$i7":I, ""
    move-object/from16 v0, p1

    .local v0, "$i8":I, ""
    iget v0, v0, Lio/flutter/embedding/engine/e/l$c;->n:I

    move/from16 v46, v0

    .end local v0    # "$i8":I, ""
    .local v46, "$i8":I, ""
    move-object/from16 v0, p1

    .local v0, "$i9":I, ""
    iget v0, v0, Lio/flutter/embedding/engine/e/l$c;->o:I

    move/from16 v47, v0

    .end local v0    # "$i9":I, ""
    .local v47, "$i9":I, ""
    move-wide/from16 v0, v36

    move-wide/from16 v2, v38

    move/from16 v4, v23

    move/from16 v5, v40

    move-object/from16 v6, v24

    move-object/from16 v7, v27

    move/from16 v8, v41

    move/from16 v9, v42

    move/from16 v10, v20

    move/from16 v11, v43

    move/from16 v12, v44

    move/from16 v13, v45

    move/from16 v14, v46

    move/from16 v15, v47

    invoke-static/range {v0 .. v15}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v48

    .local v48, "$r16":Landroid/view/MotionEvent;, ""
    move-object/from16 v0, v34

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    return-void

    :cond_0
    new-instance v49, Ljava/lang/IllegalStateException;

    .local v49, "$r17":Ljava/lang/IllegalStateException;, ""
    new-instance v50, Ljava/lang/StringBuilder;

    .local v50, "$r18":Ljava/lang/StringBuilder;, ""
    move-object/from16 v0, v50

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v51, "Sending touch to an unknown view with id: "

    move-object/from16 v0, v50

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    .end local v23    # "$i0":I, ""
    .local v0, "$i0":I, ""
    iget v0, v0, Lio/flutter/embedding/engine/e/l$c;->a:I

    move/from16 v23, v0

    .end local v0    # "$i0":I, ""
    .local v23, "$i0":I, ""
    move-object/from16 v0, v50

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v0, v50

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    .local v52, "$r19":Ljava/lang/String;, ""
    move-object/from16 v0, v49

    move-object/from16 v1, v52

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v49
    .end local v16    # "$r2":Lio/flutter/plugin/platform/m;, ""
    .end local v21    # "$r6":Ljava/lang/Object;, ""
    .end local v35    # "$r15":Ljava/lang/Number;, ""
    .end local v52    # "$r19":Ljava/lang/String;, ""
    .end local v43    # "$f1":F, ""
    .end local v36    # "$l4":J, ""
    .end local v24    # "$r8":[Landroid/view/MotionEvent$PointerProperties;, ""
    .end local v32    # "$r13":Lio/flutter/plugin/platform/q;, ""
    .end local v40    # "$i1":I, ""
    .end local v23    # "$i0":I, ""
    .end local v20    # "$f0":F, ""
    .end local v41    # "$i2":I, ""
    .end local v34    # "$r14":Landroid/view/View;, ""
    .end local v38    # "$l5":J, ""
    .end local v42    # "$i3":I, ""
    .end local v25    # "$r9":[Ljava/lang/Object;, ""
    .end local v29    # "$r11":Ljava/util/HashMap;, ""
    .end local v45    # "$i7":I, ""
    .end local v47    # "$i9":I, ""
    .end local v48    # "$r16":Landroid/view/MotionEvent;, ""
    .end local v46    # "$i8":I, ""
    .end local v49    # "$r17":Ljava/lang/IllegalStateException;, ""
    .end local v44    # "$i6":I, ""
    .end local v50    # "$r18":Ljava/lang/StringBuilder;, ""
    .end local v19    # "$r5":Landroid/util/DisplayMetrics;, ""
    .end local v18    # "$r4":Landroid/content/res/Resources;, ""
    .end local v17    # "$r3":Landroid/content/Context;, ""
    .end local v27    # "$r10":[Landroid/view/MotionEvent$PointerCoords;, ""
    .end local v31    # "$z0":Z, ""
    .end local v22    # "$r7":Ljava/util/List;, ""
    .end local v30    # "$r12":Ljava/lang/Integer;, ""
.end method

.method public b(I)V
    .locals 7

    iget-object v0, p0, Lio/flutter/plugin/platform/l;->a:Lio/flutter/plugin/platform/m;

    .local v0, "$r1":Lio/flutter/plugin/platform/m;, ""
    iget-object v1, v0, Lio/flutter/plugin/platform/m;->h:Ljava/util/HashMap;

    .local v1, "$r2":Ljava/util/HashMap;, ""
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .local v2, "$r3":Ljava/lang/Integer;, ""
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .local v3, "$r4":Ljava/lang/Object;, ""
    move-object v5, v3

    check-cast v5, Lio/flutter/plugin/platform/q;

    move-object v4, v5

    .local v4, "$r5":Lio/flutter/plugin/platform/q;, ""
    invoke-virtual {v4}, Lio/flutter/plugin/platform/q;->d()Landroid/view/View;

    move-result-object v6

    .local v6, "$r6":Landroid/view/View;, ""
    invoke-virtual {v6}, Landroid/view/View;->clearFocus()V

    return-void
    .end local v1    # "$r2":Ljava/util/HashMap;, ""
    .end local v0    # "$r1":Lio/flutter/plugin/platform/m;, ""
    .end local v4    # "$r5":Lio/flutter/plugin/platform/q;, ""
    .end local v6    # "$r6":Landroid/view/View;, ""
    .end local v2    # "$r3":Ljava/lang/Integer;, ""
    .end local v3    # "$r4":Ljava/lang/Object;, ""
.end method
