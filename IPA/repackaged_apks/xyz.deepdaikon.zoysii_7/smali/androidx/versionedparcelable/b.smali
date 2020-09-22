.class public abstract Landroidx/versionedparcelable/b;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static a(Ljava/lang/String;Landroidx/versionedparcelable/b;)Landroidx/versionedparcelable/d;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroidx/versionedparcelable/d;",
            ">(",
            "Ljava/lang/String;",
            "Landroidx/versionedparcelable/b;",
            ")TT;"
        }
    .end annotation

    const-class v1, Landroidx/versionedparcelable/b;

    .local v1, "$r3":Ljava/lang/Class;, ""
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .local v2, "$r4":Ljava/lang/ClassLoader;, ""
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v3, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    .local v4, "$r0":[Ljava/lang/Class;, ""
    const/4 v3, 0x0

    const-class v5, Landroidx/versionedparcelable/b;

    aput-object v5, v4, v3

    :try_start_1
    const-string v7, "read"

    invoke-virtual {v1, v7, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .local v6, "$r5":Ljava/lang/reflect/Method;, ""
    const/4 v3, 0x1

    new-array v8, v3, [Ljava/lang/Object;

    .local v8, "$r6":[Ljava/lang/Object;, ""
    const/4 v3, 0x0

    aput-object p1, v8, v3

    :try_start_2
    const/4 v10, 0x0

    invoke-virtual {v6, v10, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .local v9, "$r7":Ljava/lang/Object;, ""
    move-object v12, v9

    check-cast v12, Landroidx/versionedparcelable/d;

    move-object v11, v12

    .local v11, "$r8":Landroidx/versionedparcelable/d;, ""
    return-object v11

    :catch_0
    move-exception v13

    .local v13, "$r9":Ljava/lang/ClassNotFoundException;, ""
    new-instance v14, Ljava/lang/RuntimeException;

    .local v14, "$r10":Ljava/lang/RuntimeException;, ""
    const-string v7, "VersionedParcel encountered ClassNotFoundException"

    invoke-direct {v14, v7, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v14

    :catch_1
    move-exception v15

    .local v15, "$r11":Ljava/lang/NoSuchMethodException;, ""
    new-instance v14, Ljava/lang/RuntimeException;

    const-string v7, "VersionedParcel encountered NoSuchMethodException"

    invoke-direct {v14, v7, v15}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v14

    :catch_2
    move-exception v16

    .local v16, "$r12":Ljava/lang/reflect/InvocationTargetException;, ""
    move-object/from16 v0, v16

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v17

    .local v17, "$r13":Ljava/lang/Throwable;, ""
    move-object/from16 v0, v17

    .local v0, "$z0":Z, ""
    instance-of v0, v0, Ljava/lang/RuntimeException;

    move/from16 v18, v0

    .end local v0    # "$z0":Z, ""
    .local v18, "$z0":Z, ""
    if-eqz v18, :cond_0

    move-object/from16 v0, v16

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v17

    move-object/from16 v19, v17

    check-cast v19, Ljava/lang/RuntimeException;

    move-object/from16 v14, v19

    throw v14

    :cond_0
    new-instance v14, Ljava/lang/RuntimeException;

    const-string v7, "VersionedParcel encountered InvocationTargetException"

    move-object/from16 v0, v16

    invoke-direct {v14, v7, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v14

    :catch_3
    move-exception v20

    .local v20, "$r14":Ljava/lang/IllegalAccessException;, ""
    new-instance v14, Ljava/lang/RuntimeException;

    const-string v7, "VersionedParcel encountered IllegalAccessException"

    move-object/from16 v0, v20

    invoke-direct {v14, v7, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v14
    .end local v2    # "$r4":Ljava/lang/ClassLoader;, ""
    .end local v20    # "$r14":Ljava/lang/IllegalAccessException;, ""
    .end local v13    # "$r9":Ljava/lang/ClassNotFoundException;, ""
    .end local v8    # "$r6":[Ljava/lang/Object;, ""
    .end local v15    # "$r11":Ljava/lang/NoSuchMethodException;, ""
    .end local v14    # "$r10":Ljava/lang/RuntimeException;, ""
    .end local v17    # "$r13":Ljava/lang/Throwable;, ""
    .end local v4    # "$r0":[Ljava/lang/Class;, ""
    .end local v1    # "$r3":Ljava/lang/Class;, ""
    .end local v18    # "$z0":Z, ""
    .end local v9    # "$r7":Ljava/lang/Object;, ""
    .end local v16    # "$r12":Ljava/lang/reflect/InvocationTargetException;, ""
    .end local v11    # "$r8":Landroidx/versionedparcelable/d;, ""
    .end local v6    # "$r5":Ljava/lang/reflect/Method;, ""
.end method

.method private static a(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroidx/versionedparcelable/d;",
            ">;)",
            "Ljava/lang/Class;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    .local v0, "$r1":Ljava/lang/Package;, ""
    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    .local v1, "$r2":Ljava/lang/String;, ""
    const/4 v3, 0x2

    new-array v2, v3, [Ljava/lang/Object;

    .local v2, "$r3":[Ljava/lang/Object;, ""
    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const-string v4, "%s.%sParcelizer"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .local v5, "$r4":Ljava/lang/ClassLoader;, ""
    const/4 v3, 0x0

    invoke-static {v1, v3, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    .local p0, "$r0":Ljava/lang/Class;, ""
    return-object p0
    .end local v2    # "$r3":[Ljava/lang/Object;, ""
    .end local p0    # "$r0":Ljava/lang/Class;, ""
    .end local v0    # "$r1":Ljava/lang/Package;, ""
    .end local v1    # "$r2":Ljava/lang/String;, ""
    .end local v5    # "$r4":Ljava/lang/ClassLoader;, ""
.end method

.method protected static a(Landroidx/versionedparcelable/d;Landroidx/versionedparcelable/b;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroidx/versionedparcelable/d;",
            ">(TT;",
            "Landroidx/versionedparcelable/b;",
            ")V"
        }
    .end annotation

    :try_start_0
    move-object/from16 v0, p0

    invoke-static {v0}, Landroidx/versionedparcelable/b;->c(Landroidx/versionedparcelable/d;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .local v1, "$r3":Ljava/lang/Class;, ""
    const/4 v3, 0x2

    new-array v2, v3, [Ljava/lang/Class;

    .local v2, "$r0":[Ljava/lang/Class;, ""
    :try_start_1
    move-object/from16 v0, p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .local v4, "$r4":Ljava/lang/Class;, ""
    const/4 v3, 0x0

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v5, Landroidx/versionedparcelable/b;

    aput-object v5, v2, v3

    :try_start_2
    const-string v7, "write"

    invoke-virtual {v1, v7, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .local v6, "$r5":Ljava/lang/reflect/Method;, ""
    const/4 v3, 0x2

    new-array v8, v3, [Ljava/lang/Object;

    .local v8, "$r6":[Ljava/lang/Object;, ""
    const/4 v3, 0x0

    aput-object p0, v8, v3

    const/4 v3, 0x1

    aput-object p1, v8, v3

    :try_start_3
    const/4 v9, 0x0

    invoke-virtual {v6, v9, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    return-void

    :catch_0
    move-exception v10

    .local v10, "$r7":Ljava/lang/ClassNotFoundException;, ""
    new-instance v11, Ljava/lang/RuntimeException;

    .local v11, "$r8":Ljava/lang/RuntimeException;, ""
    const-string v7, "VersionedParcel encountered ClassNotFoundException"

    invoke-direct {v11, v7, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11

    :catch_1
    move-exception v12

    .local v12, "$r9":Ljava/lang/NoSuchMethodException;, ""
    new-instance v11, Ljava/lang/RuntimeException;

    const-string v7, "VersionedParcel encountered NoSuchMethodException"

    invoke-direct {v11, v7, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11

    :catch_2
    move-exception v13

    .local v13, "$r10":Ljava/lang/reflect/InvocationTargetException;, ""
    invoke-virtual {v13}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v14

    .local v14, "$r11":Ljava/lang/Throwable;, ""
    instance-of v15, v14, Ljava/lang/RuntimeException;

    .local v15, "$z0":Z, ""
    if-eqz v15, :cond_0

    invoke-virtual {v13}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v14

    move-object/from16 v16, v14

    check-cast v16, Ljava/lang/RuntimeException;

    move-object/from16 v11, v16

    throw v11

    :cond_0
    new-instance v11, Ljava/lang/RuntimeException;

    const-string v7, "VersionedParcel encountered InvocationTargetException"

    invoke-direct {v11, v7, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11

    :catch_3
    move-exception v17

    .local v17, "$r12":Ljava/lang/IllegalAccessException;, ""
    new-instance v11, Ljava/lang/RuntimeException;

    const-string v7, "VersionedParcel encountered IllegalAccessException"

    move-object/from16 v0, v17

    invoke-direct {v11, v7, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11
    .end local v17    # "$r12":Ljava/lang/IllegalAccessException;, ""
    .end local v6    # "$r5":Ljava/lang/reflect/Method;, ""
    .end local v15    # "$z0":Z, ""
    .end local v12    # "$r9":Ljava/lang/NoSuchMethodException;, ""
    .end local v4    # "$r4":Ljava/lang/Class;, ""
    .end local v10    # "$r7":Ljava/lang/ClassNotFoundException;, ""
    .end local v11    # "$r8":Ljava/lang/RuntimeException;, ""
    .end local v13    # "$r10":Ljava/lang/reflect/InvocationTargetException;, ""
    .end local v14    # "$r11":Ljava/lang/Throwable;, ""
    .end local v2    # "$r0":[Ljava/lang/Class;, ""
    .end local v8    # "$r6":[Ljava/lang/Object;, ""
    .end local v1    # "$r3":Ljava/lang/Class;, ""
.end method

.method private b(Landroidx/versionedparcelable/d;)V
    .locals 6

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .local v0, "$r4":Ljava/lang/Class;, ""
    invoke-static {v0}, Landroidx/versionedparcelable/b;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .local v1, "$r5":Ljava/lang/String;, ""
    invoke-virtual {p0, v1}, Landroidx/versionedparcelable/b;->a(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v2

    .local v2, "$r6":Ljava/lang/ClassNotFoundException;, ""
    new-instance v3, Ljava/lang/RuntimeException;

    .local v3, "$r1":Ljava/lang/RuntimeException;, ""
    new-instance v4, Ljava/lang/StringBuilder;

    .local v4, "$r2":Ljava/lang/StringBuilder;, ""
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " does not have a Parcelizer"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    .end local v0    # "$r4":Ljava/lang/Class;, ""
    .end local v3    # "$r1":Ljava/lang/RuntimeException;, ""
    .end local v1    # "$r5":Ljava/lang/String;, ""
    .end local v2    # "$r6":Ljava/lang/ClassNotFoundException;, ""
    .end local v4    # "$r2":Ljava/lang/StringBuilder;, ""
.end method

.method private static c(Landroidx/versionedparcelable/d;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroidx/versionedparcelable/d;",
            ">(TT;)",
            "Ljava/lang/Class;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .local v0, "$r1":Ljava/lang/Class;, ""
    invoke-static {v0}, Landroidx/versionedparcelable/b;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
    .end local v0    # "$r1":Ljava/lang/Class;, ""
.end method


# virtual methods
.method protected abstract a(I)V
.end method

.method public a(II)V
    .locals 0

    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/b;->c(I)V

    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/b;->a(I)V

    return-void
.end method

.method protected abstract a(Landroid/os/Parcelable;)V
.end method

.method public a(Landroid/os/Parcelable;I)V
    .locals 0

    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/b;->c(I)V

    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/b;->a(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected a(Landroidx/versionedparcelable/d;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/b;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0, p1}, Landroidx/versionedparcelable/b;->b(Landroidx/versionedparcelable/d;)V

    invoke-virtual {p0}, Landroidx/versionedparcelable/b;->c()Landroidx/versionedparcelable/b;

    move-result-object p0

    .local p0, "$r0":Landroidx/versionedparcelable/b;, ""
    invoke-static {p1, p0}, Landroidx/versionedparcelable/b;->a(Landroidx/versionedparcelable/d;Landroidx/versionedparcelable/b;)V

    invoke-virtual {p0}, Landroidx/versionedparcelable/b;->b()V

    return-void
    .end local p0    # "$r0":Landroidx/versionedparcelable/b;, ""
.end method

.method protected abstract a(Ljava/lang/String;)V
.end method

.method public a(Ljava/lang/String;I)V
    .locals 0

    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/b;->c(I)V

    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(ZZ)V
    .locals 0

    return-void
.end method

.method protected abstract a([B)V
.end method

.method public a([BI)V
    .locals 0

    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/b;->c(I)V

    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/b;->a([B)V

    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b(II)I
    .locals 1

    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/b;->b(I)Z

    move-result v0

    .local v0, "$z0":Z, ""
    if-nez v0, :cond_0

    return p1

    :cond_0
    invoke-virtual {p0}, Landroidx/versionedparcelable/b;->d()I

    move-result p1

    .local p1, "$i0":I, ""
    return p1
    .end local p1    # "$i0":I, ""
    .end local v0    # "$z0":Z, ""
.end method

.method public b(Landroid/os/Parcelable;I)Landroid/os/Parcelable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(TT;I)TT;"
        }
    .end annotation

    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/b;->b(I)Z

    move-result v0

    .local v0, "$z0":Z, ""
    if-nez v0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p0}, Landroidx/versionedparcelable/b;->g()Landroid/os/Parcelable;

    move-result-object p1

    .local p1, "$r1":Landroid/os/Parcelable;, ""
    return-object p1
    .end local v0    # "$z0":Z, ""
    .end local p1    # "$r1":Landroid/os/Parcelable;, ""
.end method

.method public b(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/b;->b(I)Z

    move-result v0

    .local v0, "$z0":Z, ""
    if-nez v0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p0}, Landroidx/versionedparcelable/b;->e()Ljava/lang/String;

    move-result-object p1

    .local p1, "$r1":Ljava/lang/String;, ""
    return-object p1
    .end local p1    # "$r1":Ljava/lang/String;, ""
    .end local v0    # "$z0":Z, ""
.end method

.method protected abstract b()V
.end method

.method protected abstract b(I)Z
.end method

.method public b([BI)[B
    .locals 1

    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/b;->b(I)Z

    move-result v0

    .local v0, "$z0":Z, ""
    if-nez v0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p0}, Landroidx/versionedparcelable/b;->f()[B

    move-result-object p1

    .local p1, "$r1":[B, ""
    return-object p1
    .end local v0    # "$z0":Z, ""
    .end local p1    # "$r1":[B, ""
.end method

.method protected abstract c()Landroidx/versionedparcelable/b;
.end method

.method protected abstract c(I)V
.end method

.method protected abstract d()I
.end method

.method protected abstract e()Ljava/lang/String;
.end method

.method protected abstract f()[B
.end method

.method protected abstract g()Landroid/os/Parcelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">()TT;"
        }
    .end annotation
.end method

.method protected h()Landroidx/versionedparcelable/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroidx/versionedparcelable/d;",
            ">()TT;"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/versionedparcelable/b;->e()Ljava/lang/String;

    move-result-object v0

    .local v0, "$r1":Ljava/lang/String;, ""
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Landroidx/versionedparcelable/b;->c()Landroidx/versionedparcelable/b;

    move-result-object p0

    .local p0, "$r0":Landroidx/versionedparcelable/b;, ""
    invoke-static {v0, p0}, Landroidx/versionedparcelable/b;->a(Ljava/lang/String;Landroidx/versionedparcelable/b;)Landroidx/versionedparcelable/d;

    move-result-object v2

    .local v2, "$r2":Landroidx/versionedparcelable/d;, ""
    return-object v2
    .end local p0    # "$r0":Landroidx/versionedparcelable/b;, ""
    .end local v2    # "$r2":Landroidx/versionedparcelable/d;, ""
    .end local v0    # "$r1":Ljava/lang/String;, ""
.end method
