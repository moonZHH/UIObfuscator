.class public Landroid/support/v4/graphics/drawable/IconCompat;
.super Landroidx/versionedparcelable/CustomVersionedParcelable;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/graphics/drawable/IconCompat$IconType;
    }
.end annotation


# static fields
.field static final a:Landroid/graphics/PorterDuff$Mode;


# instance fields
.field public b:I

.field c:Ljava/lang/Object;

.field public d:[B

.field public e:Landroid/os/Parcelable;

.field public f:I

.field public g:I

.field public h:Landroid/content/res/ColorStateList;

.field i:Landroid/graphics/PorterDuff$Mode;

.field public j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .local v0, "$r0":Landroid/graphics/PorterDuff$Mode;, ""
    sput-object v0, Landroid/support/v4/graphics/drawable/IconCompat;->a:Landroid/graphics/PorterDuff$Mode;

    return-void
    .end local v0    # "$r0":Landroid/graphics/PorterDuff$Mode;, ""
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/versionedparcelable/CustomVersionedParcelable;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->h:Landroid/content/res/ColorStateList;

    sget-object v1, Landroid/support/v4/graphics/drawable/IconCompat;->a:Landroid/graphics/PorterDuff$Mode;

    .local v1, "$r1":Landroid/graphics/PorterDuff$Mode;, ""
    iput-object v1, p0, Landroid/support/v4/graphics/drawable/IconCompat;->i:Landroid/graphics/PorterDuff$Mode;

    return-void
    .end local v1    # "$r1":Landroid/graphics/PorterDuff$Mode;, ""
.end method

.method private static a(I)Ljava/lang/String;
    .locals 1

    sparse-switch p0, :sswitch_data_0

    goto :goto_0

    :goto_0
    const-string v0, "UNKNOWN"

    return-object v0

    :sswitch_0
    const-string v0, "BITMAP_MASKABLE"

    return-object v0

    :sswitch_1
    const-string v0, "URI"

    return-object v0

    :sswitch_2
    const-string v0, "DATA"

    return-object v0

    :sswitch_3
    const-string v0, "RESOURCE"

    return-object v0

    :sswitch_4
    const-string v0, "BITMAP"

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_3
        0x3 -> :sswitch_2
        0x4 -> :sswitch_1
        0x5 -> :sswitch_0
    .end sparse-switch
.end method

.method private static a(Landroid/graphics/drawable/Icon;)Ljava/lang/String;
    .locals 15

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .local v0, "$i0":I, ""
    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object v2

    .local v2, "$r2":Ljava/lang/String;, ""
    return-object v2

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .local v3, "$r3":Ljava/lang/Class;, ""
    const/4 v1, 0x0

    new-array v4, v1, [Ljava/lang/Class;

    .local v4, "$r0":[Ljava/lang/Class;, ""
    :try_start_1
    const-string v6, "getResPackage"

    invoke-virtual {v3, v6, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0

    .local v5, "$r4":Ljava/lang/reflect/Method;, ""
    const/4 v1, 0x0

    new-array v7, v1, [Ljava/lang/Object;

    .local v7, "$r5":[Ljava/lang/Object;, ""
    :try_start_2
    invoke-virtual {v5, p0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_0

    .local v8, "$r6":Ljava/lang/Object;, ""
    move-object v9, v8

    check-cast v9, Ljava/lang/String;

    move-object v2, v9

    return-object v2

    :catch_0
    move-exception v10

    .local v10, "$r7":Ljava/lang/NoSuchMethodException;, ""
    const-string v6, "IconCompat"

    const-string v11, "Unable to get icon package"

    invoke-static {v6, v11, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v12, 0x0

    return-object v12

    :catch_1
    move-exception v13

    .local v13, "$r8":Ljava/lang/reflect/InvocationTargetException;, ""
    const-string v6, "IconCompat"

    const-string v11, "Unable to get icon package"

    invoke-static {v6, v11, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v12, 0x0

    return-object v12

    :catch_2
    move-exception v14

    .local v14, "$r9":Ljava/lang/IllegalAccessException;, ""
    const-string v6, "IconCompat"

    const-string v11, "Unable to get icon package"

    invoke-static {v6, v11, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v12, 0x0

    return-object v12
    .end local v0    # "$i0":I, ""
    .end local v3    # "$r3":Ljava/lang/Class;, ""
    .end local v4    # "$r0":[Ljava/lang/Class;, ""
    .end local v5    # "$r4":Ljava/lang/reflect/Method;, ""
    .end local v2    # "$r2":Ljava/lang/String;, ""
    .end local v13    # "$r8":Ljava/lang/reflect/InvocationTargetException;, ""
    .end local v7    # "$r5":[Ljava/lang/Object;, ""
    .end local v10    # "$r7":Ljava/lang/NoSuchMethodException;, ""
    .end local v8    # "$r6":Ljava/lang/Object;, ""
    .end local v14    # "$r9":Ljava/lang/IllegalAccessException;, ""
.end method

.method private static b(Landroid/graphics/drawable/Icon;)I
    .locals 14

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .local v0, "$i0":I, ""
    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v0

    return v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .local v2, "$r2":Ljava/lang/Class;, ""
    const/4 v1, 0x0

    new-array v3, v1, [Ljava/lang/Class;

    .local v3, "$r0":[Ljava/lang/Class;, ""
    :try_start_1
    const-string v5, "getResId"

    invoke-virtual {v2, v5, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0

    .local v4, "$r3":Ljava/lang/reflect/Method;, ""
    const/4 v1, 0x0

    new-array v6, v1, [Ljava/lang/Object;

    .local v6, "$r4":[Ljava/lang/Object;, ""
    :try_start_2
    invoke-virtual {v4, p0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_0

    .local v7, "$r5":Ljava/lang/Object;, ""
    move-object v9, v7

    check-cast v9, Ljava/lang/Integer;

    move-object v8, v9

    .local v8, "$r6":Ljava/lang/Integer;, ""
    :try_start_3
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_0

    return v0

    :catch_0
    move-exception v10

    .local v10, "$r7":Ljava/lang/NoSuchMethodException;, ""
    const-string v5, "IconCompat"

    const-string v11, "Unable to get icon resource"

    invoke-static {v5, v11, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return v1

    :catch_1
    move-exception v12

    .local v12, "$r8":Ljava/lang/reflect/InvocationTargetException;, ""
    const-string v5, "IconCompat"

    const-string v11, "Unable to get icon resource"

    invoke-static {v5, v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return v1

    :catch_2
    move-exception v13

    .local v13, "$r9":Ljava/lang/IllegalAccessException;, ""
    const-string v5, "IconCompat"

    const-string v11, "Unable to get icon resource"

    invoke-static {v5, v11, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return v1
    .end local v0    # "$i0":I, ""
    .end local v3    # "$r0":[Ljava/lang/Class;, ""
    .end local v4    # "$r3":Ljava/lang/reflect/Method;, ""
    .end local v6    # "$r4":[Ljava/lang/Object;, ""
    .end local v8    # "$r6":Ljava/lang/Integer;, ""
    .end local v7    # "$r5":Ljava/lang/Object;, ""
    .end local v13    # "$r9":Ljava/lang/IllegalAccessException;, ""
    .end local v10    # "$r7":Ljava/lang/NoSuchMethodException;, ""
    .end local v2    # "$r2":Ljava/lang/Class;, ""
    .end local v12    # "$r8":Ljava/lang/reflect/InvocationTargetException;, ""
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 11

    iget v0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->b:I

    .local v0, "$i0":I, ""
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    iget-object v2, p0, Landroid/support/v4/graphics/drawable/IconCompat;->c:Ljava/lang/Object;

    .local v2, "$r1":Ljava/lang/Object;, ""
    move-object v4, v2

    check-cast v4, Landroid/graphics/drawable/Icon;

    move-object v3, v4

    .local v3, "$r2":Landroid/graphics/drawable/Icon;, ""
    invoke-static {v3}, Landroid/support/v4/graphics/drawable/IconCompat;->a(Landroid/graphics/drawable/Icon;)Ljava/lang/String;

    move-result-object v5

    .local v5, "$r3":Ljava/lang/String;, ""
    return-object v5

    :cond_0
    iget v0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v2, p0, Landroid/support/v4/graphics/drawable/IconCompat;->c:Ljava/lang/Object;

    move-object v6, v2

    check-cast v6, Ljava/lang/String;

    move-object v5, v6

    const-string v8, ":"

    const/4 v1, -0x1

    invoke-virtual {v5, v8, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    .local v7, "$r4":[Ljava/lang/String;, ""
    const/4 v1, 0x0

    aget-object v5, v7, v1

    return-object v5

    :cond_1
    new-instance v9, Ljava/lang/IllegalStateException;

    .local v9, "$r5":Ljava/lang/IllegalStateException;, ""
    new-instance v10, Ljava/lang/StringBuilder;

    .local v10, "$r6":Ljava/lang/StringBuilder;, ""
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "called getResPackage() on "

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v9, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9
    .end local v7    # "$r4":[Ljava/lang/String;, ""
    .end local v2    # "$r1":Ljava/lang/Object;, ""
    .end local v3    # "$r2":Landroid/graphics/drawable/Icon;, ""
    .end local v9    # "$r5":Ljava/lang/IllegalStateException;, ""
    .end local v5    # "$r3":Ljava/lang/String;, ""
    .end local v10    # "$r6":Ljava/lang/StringBuilder;, ""
    .end local v0    # "$i0":I, ""
.end method

.method public a(Z)V
    .locals 19

    move-object/from16 v0, p0

    .local v1, "$r1":Landroid/graphics/PorterDuff$Mode;, ""
    iget-object v1, v0, Landroid/support/v4/graphics/drawable/IconCompat;->i:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 p0, v0

    .end local v1    # "$r1":Landroid/graphics/PorterDuff$Mode;, ""
    .local v0, "$r1":Landroid/graphics/PorterDuff$Mode;, ""
    invoke-virtual {v1}, Landroid/graphics/PorterDuff$Mode;->name()Ljava/lang/String;

    move-result-object v2

    .local v2, "$r2":Ljava/lang/String;, ""
    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/support/v4/graphics/drawable/IconCompat;->j:Ljava/lang/String;

    move-object/from16 v0, p0

    .local v3, "$i0":I, ""
    iget v3, v0, Landroid/support/v4/graphics/drawable/IconCompat;->b:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :goto_0
    return-void

    :sswitch_0
    move-object/from16 v0, p0

    .local v5, "$r3":Ljava/lang/Object;, ""
    iget-object v5, v0, Landroid/support/v4/graphics/drawable/IconCompat;->c:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v7, "UTF-16"

    invoke-static {v7}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v6

    .local v6, "$r4":Ljava/nio/charset/Charset;, ""
    invoke-virtual {v2, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    .local v8, "$r5":[B, ""
    move-object/from16 v0, p0

    iput-object v8, v0, Landroid/support/v4/graphics/drawable/IconCompat;->d:[B

    return-void

    :sswitch_1
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v4/graphics/drawable/IconCompat;->c:Ljava/lang/Object;

    move-object v9, v5

    check-cast v9, [B

    move-object v8, v9

    move-object/from16 v0, p0

    iput-object v8, v0, Landroid/support/v4/graphics/drawable/IconCompat;->d:[B

    return-void

    :sswitch_2
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v4/graphics/drawable/IconCompat;->c:Ljava/lang/Object;

    move-object v10, v5

    check-cast v10, Ljava/lang/String;

    move-object v2, v10

    const-string v7, "UTF-16"

    invoke-static {v7}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    move-object/from16 v0, p0

    iput-object v8, v0, Landroid/support/v4/graphics/drawable/IconCompat;->d:[B

    return-void

    :sswitch_3
    if-eqz p1, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v4/graphics/drawable/IconCompat;->c:Ljava/lang/Object;

    move-object v12, v5

    check-cast v12, Landroid/graphics/Bitmap;

    move-object v11, v12

    .local v11, "$r6":Landroid/graphics/Bitmap;, ""
    new-instance v13, Ljava/io/ByteArrayOutputStream;

    .local v13, "$r7":Ljava/io/ByteArrayOutputStream;, ""
    invoke-direct {v13}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v14, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .local v14, "$r8":Landroid/graphics/Bitmap$CompressFormat;, ""
    const/16 v4, 0x5a

    invoke-virtual {v11, v14, v4, v13}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    move-object/from16 v0, p0

    iput-object v8, v0, Landroid/support/v4/graphics/drawable/IconCompat;->d:[B

    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v4/graphics/drawable/IconCompat;->c:Ljava/lang/Object;

    move-object/from16 v16, v5

    check-cast v16, Landroid/os/Parcelable;

    move-object/from16 v15, v16

    .local v15, "$r9":Landroid/os/Parcelable;, ""
    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/support/v4/graphics/drawable/IconCompat;->e:Landroid/os/Parcelable;

    return-void

    :cond_1
    if-nez p1, :cond_2

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v4/graphics/drawable/IconCompat;->c:Ljava/lang/Object;

    move-object/from16 v17, v5

    check-cast v17, Landroid/os/Parcelable;

    move-object/from16 v15, v17

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/support/v4/graphics/drawable/IconCompat;->e:Landroid/os/Parcelable;

    return-void

    :cond_2
    new-instance v18, Ljava/lang/IllegalArgumentException;

    .local v18, "$r10":Ljava/lang/IllegalArgumentException;, ""
    const-string v7, "Can\'t serialize Icon created with IconCompat#createFromIcon"

    move-object/from16 v0, v18

    invoke-direct {v0, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_2
        0x3 -> :sswitch_1
        0x4 -> :sswitch_0
        0x5 -> :sswitch_3
    .end sparse-switch
    .end local v11    # "$r6":Landroid/graphics/Bitmap;, ""
    .end local v15    # "$r9":Landroid/os/Parcelable;, ""
    .end local v3    # "$i0":I, ""
    .end local v14    # "$r8":Landroid/graphics/Bitmap$CompressFormat;, ""
    .end local v0    # "$r1":Landroid/graphics/PorterDuff$Mode;, ""
    .end local v8    # "$r5":[B, ""
    .end local v2    # "$r2":Ljava/lang/String;, ""
    .end local v6    # "$r4":Ljava/nio/charset/Charset;, ""
    .end local v13    # "$r7":Ljava/io/ByteArrayOutputStream;, ""
    .end local v5    # "$r3":Ljava/lang/Object;, ""
    .end local v18    # "$r10":Ljava/lang/IllegalArgumentException;, ""
.end method

.method public b()I
    .locals 9

    iget v0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->b:I

    .local v0, "$i0":I, ""
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    iget-object v2, p0, Landroid/support/v4/graphics/drawable/IconCompat;->c:Ljava/lang/Object;

    .local v2, "$r1":Ljava/lang/Object;, ""
    move-object v4, v2

    check-cast v4, Landroid/graphics/drawable/Icon;

    move-object v3, v4

    .local v3, "$r2":Landroid/graphics/drawable/Icon;, ""
    invoke-static {v3}, Landroid/support/v4/graphics/drawable/IconCompat;->b(Landroid/graphics/drawable/Icon;)I

    move-result v0

    return v0

    :cond_0
    iget v0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget v0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->f:I

    return v0

    :cond_1
    new-instance v5, Ljava/lang/IllegalStateException;

    .local v5, "$r3":Ljava/lang/IllegalStateException;, ""
    new-instance v6, Ljava/lang/StringBuilder;

    .local v6, "$r4":Ljava/lang/StringBuilder;, ""
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "called getResId() on "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .local v8, "$r5":Ljava/lang/String;, ""
    invoke-direct {v5, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
    .end local v0    # "$i0":I, ""
    .end local v3    # "$r2":Landroid/graphics/drawable/Icon;, ""
    .end local v8    # "$r5":Ljava/lang/String;, ""
    .end local v2    # "$r1":Ljava/lang/Object;, ""
    .end local v5    # "$r3":Ljava/lang/IllegalStateException;, ""
    .end local v6    # "$r4":Ljava/lang/StringBuilder;, ""
.end method

.method public c()V
    .locals 9

    iget-object v0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->j:Ljava/lang/String;

    .local v0, "$r1":Ljava/lang/String;, ""
    invoke-static {v0}, Landroid/graphics/PorterDuff$Mode;->valueOf(Ljava/lang/String;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    .local v1, "$r2":Landroid/graphics/PorterDuff$Mode;, ""
    iput-object v1, p0, Landroid/support/v4/graphics/drawable/IconCompat;->i:Landroid/graphics/PorterDuff$Mode;

    iget v2, p0, Landroid/support/v4/graphics/drawable/IconCompat;->b:I

    .local v2, "$i0":I, ""
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v4, p0, Landroid/support/v4/graphics/drawable/IconCompat;->d:[B

    .local v4, "$r3":[B, ""
    iput-object v4, p0, Landroid/support/v4/graphics/drawable/IconCompat;->c:Ljava/lang/Object;

    return-void

    :sswitch_1
    new-instance v0, Ljava/lang/String;

    iget-object v4, p0, Landroid/support/v4/graphics/drawable/IconCompat;->d:[B

    const-string v6, "UTF-16"

    invoke-static {v6}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    .local v5, "$r4":Ljava/nio/charset/Charset;, ""
    invoke-direct {v0, v4, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->c:Ljava/lang/Object;

    return-void

    :sswitch_2
    iget-object v7, p0, Landroid/support/v4/graphics/drawable/IconCompat;->e:Landroid/os/Parcelable;

    .local v7, "$r5":Landroid/os/Parcelable;, ""
    if-eqz v7, :cond_0

    iget-object v7, p0, Landroid/support/v4/graphics/drawable/IconCompat;->e:Landroid/os/Parcelable;

    iput-object v7, p0, Landroid/support/v4/graphics/drawable/IconCompat;->c:Ljava/lang/Object;

    return-void

    :cond_0
    iget-object v4, p0, Landroid/support/v4/graphics/drawable/IconCompat;->d:[B

    iput-object v4, p0, Landroid/support/v4/graphics/drawable/IconCompat;->c:Ljava/lang/Object;

    const/4 v3, 0x3

    iput v3, p0, Landroid/support/v4/graphics/drawable/IconCompat;->b:I

    const/4 v3, 0x0

    iput v3, p0, Landroid/support/v4/graphics/drawable/IconCompat;->f:I

    iget-object v4, p0, Landroid/support/v4/graphics/drawable/IconCompat;->d:[B

    array-length v2, v4

    iput v2, p0, Landroid/support/v4/graphics/drawable/IconCompat;->g:I

    return-void

    :cond_1
    iget-object v7, p0, Landroid/support/v4/graphics/drawable/IconCompat;->e:Landroid/os/Parcelable;

    if-eqz v7, :cond_2

    iget-object v7, p0, Landroid/support/v4/graphics/drawable/IconCompat;->e:Landroid/os/Parcelable;

    iput-object v7, p0, Landroid/support/v4/graphics/drawable/IconCompat;->c:Ljava/lang/Object;

    return-void

    :cond_2
    new-instance v8, Ljava/lang/IllegalArgumentException;

    .local v8, "$r6":Ljava/lang/IllegalArgumentException;, ""
    const-string v6, "Invalid icon"

    invoke-direct {v8, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_1
        0x3 -> :sswitch_0
        0x4 -> :sswitch_1
        0x5 -> :sswitch_2
    .end sparse-switch
    .end local v4    # "$r3":[B, ""
    .end local v0    # "$r1":Ljava/lang/String;, ""
    .end local v1    # "$r2":Landroid/graphics/PorterDuff$Mode;, ""
    .end local v2    # "$i0":I, ""
    .end local v8    # "$r6":Ljava/lang/IllegalArgumentException;, ""
    .end local v7    # "$r5":Landroid/os/Parcelable;, ""
    .end local v5    # "$r4":Ljava/nio/charset/Charset;, ""
.end method

.method public toString()Ljava/lang/String;
    .locals 14

    iget v0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->b:I

    .local v0, "$i0":I, ""
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v2, p0, Landroid/support/v4/graphics/drawable/IconCompat;->c:Ljava/lang/Object;

    .local v2, "$r1":Ljava/lang/Object;, ""
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .local v3, "$r2":Ljava/lang/String;, ""
    return-object v3

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    .local v4, "$r3":Ljava/lang/StringBuilder;, ""
    const-string v5, "Icon(typ="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->b:I

    invoke-static {v0}, Landroid/support/v4/graphics/drawable/IconCompat;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->b:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :goto_0
    goto :goto_1

    :sswitch_0
    const-string v5, " uri="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/support/v4/graphics/drawable/IconCompat;->c:Ljava/lang/Object;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_1
    const-string v5, " len="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->f:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->g:I

    if-eqz v0, :cond_1

    const-string v5, " off="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->g:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_2
    const-string v5, " pkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/support/v4/graphics/drawable/IconCompat;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/Object;

    .local v6, "$r4":[Ljava/lang/Object;, ""
    invoke-virtual {p0}, Landroid/support/v4/graphics/drawable/IconCompat;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .local v7, "$r5":Ljava/lang/Integer;, ""
    const/4 v1, 0x0

    aput-object v7, v6, v1

    const-string v5, "0x%08x"

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_3
    const-string v5, " size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/support/v4/graphics/drawable/IconCompat;->c:Ljava/lang/Object;

    move-object v9, v2

    check-cast v9, Landroid/graphics/Bitmap;

    move-object v8, v9

    .local v8, "$r6":Landroid/graphics/Bitmap;, ""
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/support/v4/graphics/drawable/IconCompat;->c:Ljava/lang/Object;

    move-object v10, v2

    check-cast v10, Landroid/graphics/Bitmap;

    move-object v8, v10

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_1
    :goto_1
    iget-object v11, p0, Landroid/support/v4/graphics/drawable/IconCompat;->h:Landroid/content/res/ColorStateList;

    .local v11, "$r7":Landroid/content/res/ColorStateList;, ""
    if-eqz v11, :cond_2

    const-string v5, " tint="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Landroid/support/v4/graphics/drawable/IconCompat;->h:Landroid/content/res/ColorStateList;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v12, p0, Landroid/support/v4/graphics/drawable/IconCompat;->i:Landroid/graphics/PorterDuff$Mode;

    .local v12, "$r8":Landroid/graphics/PorterDuff$Mode;, ""
    sget-object v13, Landroid/support/v4/graphics/drawable/IconCompat;->a:Landroid/graphics/PorterDuff$Mode;

    .local v13, "$r9":Landroid/graphics/PorterDuff$Mode;, ""
    if-eq v12, v13, :cond_3

    const-string v5, " mode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, p0, Landroid/support/v4/graphics/drawable/IconCompat;->i:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_3
    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_2
        0x3 -> :sswitch_1
        0x4 -> :sswitch_0
        0x5 -> :sswitch_3
    .end sparse-switch
    .end local v2    # "$r1":Ljava/lang/Object;, ""
    .end local v7    # "$r5":Ljava/lang/Integer;, ""
    .end local v4    # "$r3":Ljava/lang/StringBuilder;, ""
    .end local v0    # "$i0":I, ""
    .end local v8    # "$r6":Landroid/graphics/Bitmap;, ""
    .end local v11    # "$r7":Landroid/content/res/ColorStateList;, ""
    .end local v12    # "$r8":Landroid/graphics/PorterDuff$Mode;, ""
    .end local v3    # "$r2":Ljava/lang/String;, ""
    .end local v13    # "$r9":Landroid/graphics/PorterDuff$Mode;, ""
    .end local v6    # "$r4":[Ljava/lang/Object;, ""
.end method
