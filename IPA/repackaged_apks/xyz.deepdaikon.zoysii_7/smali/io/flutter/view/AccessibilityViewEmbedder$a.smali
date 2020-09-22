.class Lio/flutter/view/AccessibilityViewEmbedder$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/view/AccessibilityViewEmbedder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReflectionAccessors"
.end annotation


# instance fields
.field private final a:Ljava/lang/reflect/Method;

.field private final b:Ljava/lang/reflect/Method;

.field private final c:Ljava/lang/reflect/Method;

.field private final d:Ljava/lang/reflect/Method;

.field private final e:Ljava/lang/reflect/Field;

.field private final f:Ljava/lang/reflect/Method;


# direct methods
.method private constructor <init>()V
    .locals 27
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateApi"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    .local v1, "$r13":Ljava/lang/reflect/Method;, ""
    const-class v2, Landroid/view/accessibility/AccessibilityNodeInfo;

    .local v2, "$r14":Ljava/lang/Class;, ""
    const/4 v4, 0x0

    new-array v3, v4, [Ljava/lang/Class;

    .local v3, "$r15":[Ljava/lang/Class;, ""
    :try_start_0
    const-string v6, "getSourceNodeId"

    invoke-virtual {v2, v6, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .local v5, "$r16":Ljava/lang/reflect/Method;, ""
    goto :goto_1

    :goto_0
    const-string v6, "AccessibilityBridge"

    const-string v7, "can\'t invoke AccessibilityNodeInfo#getSourceNodeId with reflection"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    :goto_1
    const-class v2, Landroid/view/accessibility/AccessibilityRecord;

    const/4 v4, 0x0

    new-array v3, v4, [Ljava/lang/Class;

    :try_start_1
    const-string v6, "getSourceNodeId"

    invoke-virtual {v2, v6, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    .local v8, "$r17":Ljava/lang/reflect/Method;, ""
    goto :goto_3

    :goto_2
    const-string v6, "AccessibilityBridge"

    const-string v7, "can\'t invoke AccessibiiltyRecord#getSourceNodeId with reflection"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    :goto_3
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    .local v9, "$i0":I, ""
    const/16 v4, 0x1a

    if-gt v9, v4, :cond_0

    const-class v2, Landroid/view/accessibility/AccessibilityNodeInfo;

    const/4 v4, 0x0

    new-array v3, v4, [Ljava/lang/Class;

    :try_start_2
    const-string v6, "getParentNodeId"

    invoke-virtual {v2, v6, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    :goto_4
    const-string v6, "AccessibilityBridge"

    const-string v7, "can\'t invoke getParentNodeId with reflection"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_5
    const-class v2, Landroid/view/accessibility/AccessibilityNodeInfo;

    const/4 v4, 0x1

    new-array v3, v4, [Ljava/lang/Class;

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .local v10, "$r18":Ljava/lang/Class;, ""
    const/4 v4, 0x0

    aput-object v10, v3, v4

    :try_start_3
    const-string v6, "getChildId"

    invoke-virtual {v2, v6, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_3

    .local v11, "$r19":Ljava/lang/reflect/Method;, ""
    const/4 v12, 0x0

    .local v12, "$r20":Ljava/lang/reflect/Method;, ""
    goto :goto_7

    :goto_6
    const-string v6, "AccessibilityBridge"

    const-string v7, "can\'t invoke getChildId with reflection"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_7
    const/4 v13, 0x0

    .local v13, "$r21":Ljava/lang/reflect/Field;, ""
    goto :goto_9

    :cond_0
    const-class v2, Landroid/view/accessibility/AccessibilityNodeInfo;

    :try_start_4
    const-string v6, "mChildNodeIds"

    invoke-virtual {v2, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v14
    :try_end_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_7

    .local v14, "$r22":Ljava/lang/reflect/Field;, ""
    move-object v13, v14

    :try_start_5
    const/4 v4, 0x1

    invoke-virtual {v14, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_5
    .catch Ljava/lang/NoSuchFieldException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_7

    :try_start_6
    const-string v6, "android.util.LongArray"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_6
    .catch Ljava/lang/NoSuchFieldException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_9
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_6} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_b

    const/4 v4, 0x1

    new-array v3, v4, [Ljava/lang/Class;

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v10, v3, v4

    :try_start_7
    const-string v6, "get"

    invoke-virtual {v2, v6, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11
    :try_end_7
    .catch Ljava/lang/NoSuchFieldException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_7} :catch_9
    .catch Ljava/lang/NoSuchMethodException; {:try_start_7 .. :try_end_7} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_b

    move-object v12, v11

    const/4 v11, 0x0

    goto :goto_9

    :goto_8
    const-string v6, "AccessibilityBridge"

    const-string v7, "can\'t access childNodeIdsField with reflection"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v12, 0x0

    :goto_9
    move-object/from16 v0, p0

    iput-object v5, v0, Lio/flutter/view/AccessibilityViewEmbedder$a;->a:Ljava/lang/reflect/Method;

    move-object/from16 v0, p0

    iput-object v1, v0, Lio/flutter/view/AccessibilityViewEmbedder$a;->b:Ljava/lang/reflect/Method;

    move-object/from16 v0, p0

    iput-object v8, v0, Lio/flutter/view/AccessibilityViewEmbedder$a;->c:Ljava/lang/reflect/Method;

    move-object/from16 v0, p0

    iput-object v11, v0, Lio/flutter/view/AccessibilityViewEmbedder$a;->d:Ljava/lang/reflect/Method;

    move-object/from16 v0, p0

    iput-object v13, v0, Lio/flutter/view/AccessibilityViewEmbedder$a;->e:Ljava/lang/reflect/Field;

    move-object/from16 v0, p0

    iput-object v12, v0, Lio/flutter/view/AccessibilityViewEmbedder$a;->f:Ljava/lang/reflect/Method;

    return-void

    :catch_0
    move-exception v15

    .local v15, "$r1":Ljava/lang/NoSuchMethodException;, ""
    goto/32 :goto_0

    :catch_1
    move-exception v16

    .local v16, "$r2":Ljava/lang/NoSuchMethodException;, ""
    goto/32 :goto_2

    :catch_2
    move-exception v17

    .local v17, "$r3":Ljava/lang/NoSuchMethodException;, ""
    goto :goto_4

    :catch_3
    move-exception v18

    .local v18, "$r4":Ljava/lang/NoSuchMethodException;, ""
    goto :goto_6

    :catch_4
    move-exception v19

    .local v19, "$r5":Ljava/lang/NoSuchFieldException;, ""
    goto :goto_8

    :catch_5
    move-exception v20

    .local v20, "$r6":Ljava/lang/ClassNotFoundException;, ""
    goto :goto_8

    :catch_6
    move-exception v21

    .local v21, "$r7":Ljava/lang/NoSuchMethodException;, ""
    goto :goto_8

    :catch_7
    move-exception v22

    .local v22, "$r8":Ljava/lang/NullPointerException;, ""
    goto :goto_8

    :catch_8
    move-exception v23

    .local v23, "$r9":Ljava/lang/NoSuchFieldException;, ""
    goto :goto_8

    :catch_9
    move-exception v24

    .local v24, "$r10":Ljava/lang/ClassNotFoundException;, ""
    goto :goto_8

    :catch_a
    move-exception v25

    .local v25, "$r11":Ljava/lang/NoSuchMethodException;, ""
    goto :goto_8

    :catch_b
    move-exception v26

    .local v26, "$r12":Ljava/lang/NullPointerException;, ""
    goto :goto_8
    .end local v12    # "$r20":Ljava/lang/reflect/Method;, ""
    .end local v22    # "$r8":Ljava/lang/NullPointerException;, ""
    .end local v14    # "$r22":Ljava/lang/reflect/Field;, ""
    .end local v23    # "$r9":Ljava/lang/NoSuchFieldException;, ""
    .end local v5    # "$r16":Ljava/lang/reflect/Method;, ""
    .end local v11    # "$r19":Ljava/lang/reflect/Method;, ""
    .end local v24    # "$r10":Ljava/lang/ClassNotFoundException;, ""
    .end local v17    # "$r3":Ljava/lang/NoSuchMethodException;, ""
    .end local v9    # "$i0":I, ""
    .end local v3    # "$r15":[Ljava/lang/Class;, ""
    .end local v16    # "$r2":Ljava/lang/NoSuchMethodException;, ""
    .end local v18    # "$r4":Ljava/lang/NoSuchMethodException;, ""
    .end local v21    # "$r7":Ljava/lang/NoSuchMethodException;, ""
    .end local v26    # "$r12":Ljava/lang/NullPointerException;, ""
    .end local v10    # "$r18":Ljava/lang/Class;, ""
    .end local v8    # "$r17":Ljava/lang/reflect/Method;, ""
    .end local v13    # "$r21":Ljava/lang/reflect/Field;, ""
    .end local v25    # "$r11":Ljava/lang/NoSuchMethodException;, ""
    .end local v1    # "$r13":Ljava/lang/reflect/Method;, ""
    .end local v19    # "$r5":Ljava/lang/NoSuchFieldException;, ""
    .end local v2    # "$r14":Ljava/lang/Class;, ""
    .end local v15    # "$r1":Ljava/lang/NoSuchMethodException;, ""
    .end local v20    # "$r6":Ljava/lang/ClassNotFoundException;, ""
.end method

.method synthetic constructor <init>(Lio/flutter/view/h;)V
    .locals 0

    invoke-direct {p0}, Lio/flutter/view/AccessibilityViewEmbedder$a;-><init>()V

    return-void
.end method

.method static synthetic a(J)I
    .locals 1

    invoke-static {p0, p1}, Lio/flutter/view/AccessibilityViewEmbedder$a;->b(J)I

    move-result v0

    .local v0, "$i0":I, ""
    return v0
    .end local v0    # "$i0":I, ""
.end method

.method private a(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/Long;
    .locals 10

    iget-object v0, p0, Lio/flutter/view/AccessibilityViewEmbedder$a;->a:Ljava/lang/reflect/Method;

    .local v0, "$r3":Ljava/lang/reflect/Method;, ""
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    iget-object v0, p0, Lio/flutter/view/AccessibilityViewEmbedder$a;->a:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v2, v3, [Ljava/lang/Object;

    .local v2, "$r4":[Ljava/lang/Object;, ""
    :try_start_0
    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .local v4, "$r1":Ljava/lang/Object;, ""
    move-object v6, v4

    check-cast v6, Ljava/lang/Long;

    move-object v5, v6

    .local v5, "$r5":Ljava/lang/Long;, ""
    return-object v5

    :catch_0
    move-exception v7

    .local v7, "$r6":Ljava/lang/reflect/InvocationTargetException;, ""
    const-string v8, "AccessibilityBridge"

    invoke-static {v8, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1

    :catch_1
    move-exception v9

    .local v9, "$r7":Ljava/lang/IllegalAccessException;, ""
    const-string v8, "AccessibilityBridge"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1
    .end local v4    # "$r1":Ljava/lang/Object;, ""
    .end local v2    # "$r4":[Ljava/lang/Object;, ""
    .end local v9    # "$r7":Ljava/lang/IllegalAccessException;, ""
    .end local v7    # "$r6":Ljava/lang/reflect/InvocationTargetException;, ""
    .end local v5    # "$r5":Ljava/lang/Long;, ""
    .end local v0    # "$r3":Ljava/lang/reflect/Method;, ""
.end method

.method private a(Landroid/view/accessibility/AccessibilityNodeInfo;I)Ljava/lang/Long;
    .locals 18

    move-object/from16 v0, p0

    .local v1, "$r3":Ljava/lang/reflect/Method;, ""
    iget-object v1, v0, Lio/flutter/view/AccessibilityViewEmbedder$a;->d:Ljava/lang/reflect/Method;

    move-object/from16 p0, v0

    .end local v1    # "$r3":Ljava/lang/reflect/Method;, ""
    .local v0, "$r3":Ljava/lang/reflect/Method;, ""
    if-nez v1, :cond_0

    move-object/from16 v0, p0

    .local v2, "$r1":Ljava/lang/reflect/Field;, ""
    iget-object v2, v0, Lio/flutter/view/AccessibilityViewEmbedder$a;->e:Ljava/lang/reflect/Field;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    .end local v0    # "$r3":Ljava/lang/reflect/Method;, ""
    .local v1, "$r3":Ljava/lang/reflect/Method;, ""
    iget-object v1, v0, Lio/flutter/view/AccessibilityViewEmbedder$a;->f:Ljava/lang/reflect/Method;

    move-object/from16 p0, v0

    .end local v1    # "$r3":Ljava/lang/reflect/Method;, ""
    .local v0, "$r3":Ljava/lang/reflect/Method;, ""
    if-nez v1, :cond_0

    const/4 v3, 0x0

    return-object v3

    :cond_0
    move-object/from16 v0, p0

    .end local v0    # "$r3":Ljava/lang/reflect/Method;, ""
    .local v1, "$r3":Ljava/lang/reflect/Method;, ""
    iget-object v1, v0, Lio/flutter/view/AccessibilityViewEmbedder$a;->d:Ljava/lang/reflect/Method;

    move-object/from16 p0, v0

    .end local v1    # "$r3":Ljava/lang/reflect/Method;, ""
    .local v0, "$r3":Ljava/lang/reflect/Method;, ""
    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    .end local v0    # "$r3":Ljava/lang/reflect/Method;, ""
    .local v1, "$r3":Ljava/lang/reflect/Method;, ""
    iget-object v1, v0, Lio/flutter/view/AccessibilityViewEmbedder$a;->d:Ljava/lang/reflect/Method;

    move-object/from16 p0, v0

    .end local v1    # "$r3":Ljava/lang/reflect/Method;, ""
    .local v0, "$r3":Ljava/lang/reflect/Method;, ""
    const/4 v5, 0x1

    new-array v4, v5, [Ljava/lang/Object;

    .local v4, "$r4":[Ljava/lang/Object;, ""
    :try_start_0
    move/from16 v0, p2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .local v6, "$r5":Ljava/lang/Integer;, ""
    const/4 v5, 0x0

    aput-object v6, v4, v5

    :try_start_1
    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    .local v7, "$r6":Ljava/lang/Object;, ""
    move-object v9, v7

    check-cast v9, Ljava/lang/Long;

    move-object v8, v9

    .local v8, "$r7":Ljava/lang/Long;, ""
    return-object v8

    :catch_0
    move-exception v10

    .local v10, "$r8":Ljava/lang/reflect/InvocationTargetException;, ""
    const-string v11, "AccessibilityBridge"

    invoke-static {v11, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v3, 0x0

    return-object v3

    :catch_1
    move-exception v12

    .local v12, "$r9":Ljava/lang/IllegalAccessException;, ""
    const-string v11, "AccessibilityBridge"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v3, 0x0

    return-object v3

    :cond_1
    move-object/from16 v0, p0

    .end local v0    # "$r3":Ljava/lang/reflect/Method;, ""
    .local v1, "$r3":Ljava/lang/reflect/Method;, ""
    iget-object v1, v0, Lio/flutter/view/AccessibilityViewEmbedder$a;->f:Ljava/lang/reflect/Method;

    move-object/from16 p0, v0

    .end local v1    # "$r3":Ljava/lang/reflect/Method;, ""
    .local v0, "$r3":Ljava/lang/reflect/Method;, ""
    iget-object v2, v0, Lio/flutter/view/AccessibilityViewEmbedder$a;->e:Ljava/lang/reflect/Field;

    :try_start_2
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    const/4 v5, 0x1

    new-array v4, v5, [Ljava/lang/Object;

    :try_start_3
    move/from16 v0, p2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_2

    const/4 v5, 0x0

    aput-object v6, v4, v5

    :try_start_4
    invoke-virtual {v1, v7, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7
    :try_end_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_2

    move-object v13, v7

    check-cast v13, Ljava/lang/Long;

    move-object v8, v13

    :try_start_5
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .local v14, "$l1":J, ""
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8
    :try_end_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_2

    return-object v8

    :catch_2
    move-exception v16

    .local v16, "$r10":Ljava/lang/Exception;, ""
    const-string v11, "AccessibilityBridge"

    move-object/from16 v0, v16

    invoke-static {v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v3, 0x0

    return-object v3

    :catch_3
    move-exception v17

    .local v17, "$r11":Ljava/lang/IllegalAccessException;, ""
    const-string v11, "AccessibilityBridge"

    move-object/from16 v0, v17

    invoke-static {v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    const/4 v3, 0x0

    return-object v3
    .end local v4    # "$r4":[Ljava/lang/Object;, ""
    .end local v16    # "$r10":Ljava/lang/Exception;, ""
    .end local v17    # "$r11":Ljava/lang/IllegalAccessException;, ""
    .end local v6    # "$r5":Ljava/lang/Integer;, ""
    .end local v14    # "$l1":J, ""
    .end local v7    # "$r6":Ljava/lang/Object;, ""
    .end local v8    # "$r7":Ljava/lang/Long;, ""
    .end local v0    # "$r3":Ljava/lang/reflect/Method;, ""
    .end local v2    # "$r1":Ljava/lang/reflect/Field;, ""
    .end local v10    # "$r8":Ljava/lang/reflect/InvocationTargetException;, ""
    .end local v12    # "$r9":Ljava/lang/IllegalAccessException;, ""
.end method

.method private a(Landroid/view/accessibility/AccessibilityRecord;)Ljava/lang/Long;
    .locals 10

    iget-object v0, p0, Lio/flutter/view/AccessibilityViewEmbedder$a;->c:Ljava/lang/reflect/Method;

    .local v0, "$r3":Ljava/lang/reflect/Method;, ""
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    iget-object v0, p0, Lio/flutter/view/AccessibilityViewEmbedder$a;->c:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v2, v3, [Ljava/lang/Object;

    .local v2, "$r4":[Ljava/lang/Object;, ""
    :try_start_0
    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .local v4, "$r1":Ljava/lang/Object;, ""
    move-object v6, v4

    check-cast v6, Ljava/lang/Long;

    move-object v5, v6

    .local v5, "$r5":Ljava/lang/Long;, ""
    return-object v5

    :catch_0
    move-exception v7

    .local v7, "$r6":Ljava/lang/reflect/InvocationTargetException;, ""
    const-string v8, "AccessibilityBridge"

    invoke-static {v8, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1

    :catch_1
    move-exception v9

    .local v9, "$r7":Ljava/lang/IllegalAccessException;, ""
    const-string v8, "AccessibilityBridge"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1
    .end local v9    # "$r7":Ljava/lang/IllegalAccessException;, ""
    .end local v7    # "$r6":Ljava/lang/reflect/InvocationTargetException;, ""
    .end local v4    # "$r1":Ljava/lang/Object;, ""
    .end local v0    # "$r3":Ljava/lang/reflect/Method;, ""
    .end local v2    # "$r4":[Ljava/lang/Object;, ""
    .end local v5    # "$r5":Ljava/lang/Long;, ""
.end method

.method static synthetic a(Lio/flutter/view/AccessibilityViewEmbedder$a;Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/Long;
    .locals 1

    invoke-direct {p0, p1}, Lio/flutter/view/AccessibilityViewEmbedder$a;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/Long;

    move-result-object v0

    .local v0, "$r1":Ljava/lang/Long;, ""
    return-object v0
    .end local v0    # "$r1":Ljava/lang/Long;, ""
.end method

.method static synthetic a(Lio/flutter/view/AccessibilityViewEmbedder$a;Landroid/view/accessibility/AccessibilityNodeInfo;I)Ljava/lang/Long;
    .locals 1

    invoke-direct {p0, p1, p2}, Lio/flutter/view/AccessibilityViewEmbedder$a;->a(Landroid/view/accessibility/AccessibilityNodeInfo;I)Ljava/lang/Long;

    move-result-object v0

    .local v0, "$r1":Ljava/lang/Long;, ""
    return-object v0
    .end local v0    # "$r1":Ljava/lang/Long;, ""
.end method

.method static synthetic a(Lio/flutter/view/AccessibilityViewEmbedder$a;Landroid/view/accessibility/AccessibilityRecord;)Ljava/lang/Long;
    .locals 1

    invoke-direct {p0, p1}, Lio/flutter/view/AccessibilityViewEmbedder$a;->a(Landroid/view/accessibility/AccessibilityRecord;)Ljava/lang/Long;

    move-result-object v0

    .local v0, "$r1":Ljava/lang/Long;, ""
    return-object v0
    .end local v0    # "$r1":Ljava/lang/Long;, ""
.end method

.method private static a(JI)Z
    .locals 6

    const-wide/16 v2, 0x1

    shl-long v0, v2, p2

    .local v0, "$l2":J, ""
    and-long/2addr p0, v0

    .local p0, "$l0":J, ""
    const-wide/16 v2, 0x0

    cmp-long v4, p0, v2

    .local v4, "$b3":B, ""
    if-eqz v4, :cond_0

    const/4 v5, 0x1

    return v5

    :cond_0
    const/4 v5, 0x0

    return v5
    .end local v4    # "$b3":B, ""
    .end local v0    # "$l2":J, ""
    .end local p0    # "$l0":J, ""
.end method

.method private static b(J)I
    .locals 2

    const/16 v0, 0x20

    shr-long/2addr p0, v0

    .local p0, "$l0":J, ""
    long-to-int v1, p0

    .local v1, "$i1":I, ""
    return v1
    .end local p0    # "$l0":J, ""
    .end local v1    # "$i1":I, ""
.end method

.method private b(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/Long;
    .locals 11

    iget-object v0, p0, Lio/flutter/view/AccessibilityViewEmbedder$a;->b:Ljava/lang/reflect/Method;

    .local v0, "$r2":Ljava/lang/reflect/Method;, ""
    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/flutter/view/AccessibilityViewEmbedder$a;->b:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v1, v2, [Ljava/lang/Object;

    .local v1, "$r3":[Ljava/lang/Object;, ""
    :try_start_0
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .local v3, "$r4":Ljava/lang/Object;, ""
    move-object v5, v3

    check-cast v5, Ljava/lang/Long;

    move-object v4, v5

    .local v4, "$r5":Ljava/lang/Long;, ""
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .local v6, "$l0":J, ""
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v4

    :catch_0
    move-exception v8

    .local v8, "$r6":Ljava/lang/reflect/InvocationTargetException;, ""
    const-string v9, "AccessibilityBridge"

    invoke-static {v9, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v10

    .local v10, "$r7":Ljava/lang/IllegalAccessException;, ""
    const-string v9, "AccessibilityBridge"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    invoke-static {p1}, Lio/flutter/view/AccessibilityViewEmbedder$a;->c(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/Long;

    move-result-object v4

    return-object v4
    .end local v0    # "$r2":Ljava/lang/reflect/Method;, ""
    .end local v8    # "$r6":Ljava/lang/reflect/InvocationTargetException;, ""
    .end local v1    # "$r3":[Ljava/lang/Object;, ""
    .end local v4    # "$r5":Ljava/lang/Long;, ""
    .end local v10    # "$r7":Ljava/lang/IllegalAccessException;, ""
    .end local v3    # "$r4":Ljava/lang/Object;, ""
    .end local v6    # "$l0":J, ""
.end method

.method static synthetic b(Lio/flutter/view/AccessibilityViewEmbedder$a;Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/Long;
    .locals 1

    invoke-direct {p0, p1}, Lio/flutter/view/AccessibilityViewEmbedder$a;->b(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/Long;

    move-result-object v0

    .local v0, "$r1":Ljava/lang/Long;, ""
    return-object v0
    .end local v0    # "$r1":Ljava/lang/Long;, ""
.end method

.method private static c(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/Long;
    .locals 10

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .local v0, "$i0":I, ""
    const/4 v1, 0x0

    .local v1, "$r1":Ljava/lang/Long;, ""
    const/16 v2, 0x1a

    if-ge v0, v2, :cond_0

    const-string v3, "AccessibilityBridge"

    const-string v4, "Unexpected Android version. Unable to find the parent ID."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    return-object v5

    :cond_0
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    .local p0, "$r0":Landroid/view/accessibility/AccessibilityNodeInfo;, ""
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    .local v6, "$r2":Landroid/os/Parcel;, ""
    const/4 v2, 0x0

    invoke-virtual {v6, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    const/4 v2, 0x0

    invoke-virtual {p0, v6, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->writeToParcel(Landroid/os/Parcel;I)V

    const/4 v2, 0x0

    invoke-virtual {v6, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-virtual {v6}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .local v7, "$l1":J, ""
    const/4 v2, 0x0

    invoke-static {v7, v8, v2}, Lio/flutter/view/AccessibilityViewEmbedder$a;->a(JI)Z

    move-result v9

    .local v9, "$z0":Z, ""
    if-eqz v9, :cond_1

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    :cond_1
    const/4 v2, 0x1

    invoke-static {v7, v8, v2}, Lio/flutter/view/AccessibilityViewEmbedder$a;->a(JI)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v6}, Landroid/os/Parcel;->readLong()J

    :cond_2
    const/4 v2, 0x2

    invoke-static {v7, v8, v2}, Lio/flutter/view/AccessibilityViewEmbedder$a;->a(JI)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    :cond_3
    const/4 v2, 0x3

    invoke-static {v7, v8, v2}, Lio/flutter/view/AccessibilityViewEmbedder$a;->a(JI)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v6}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :cond_4
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    return-object v1
    .end local v6    # "$r2":Landroid/os/Parcel;, ""
    .end local v7    # "$l1":J, ""
    .end local v9    # "$z0":Z, ""
    .end local v0    # "$i0":I, ""
    .end local v1    # "$r1":Ljava/lang/Long;, ""
    .end local p0    # "$r0":Landroid/view/accessibility/AccessibilityNodeInfo;, ""
.end method
