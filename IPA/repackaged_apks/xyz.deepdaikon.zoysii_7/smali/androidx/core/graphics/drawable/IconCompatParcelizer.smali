.class public Landroidx/core/graphics/drawable/IconCompatParcelizer;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Landroidx/versionedparcelable/b;)Landroid/support/v4/graphics/drawable/IconCompat;
    .locals 8

    new-instance v0, Landroid/support/v4/graphics/drawable/IconCompat;

    .local v0, "$r0":Landroid/support/v4/graphics/drawable/IconCompat;, ""
    invoke-direct {v0}, Landroid/support/v4/graphics/drawable/IconCompat;-><init>()V

    iget v1, v0, Landroid/support/v4/graphics/drawable/IconCompat;->b:I

    .local v1, "$i0":I, ""
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/b;->b(II)I

    move-result v1

    iput v1, v0, Landroid/support/v4/graphics/drawable/IconCompat;->b:I

    iget-object v3, v0, Landroid/support/v4/graphics/drawable/IconCompat;->d:[B

    .local v3, "$r2":[B, ""
    const/4 v2, 0x2

    invoke-virtual {p0, v3, v2}, Landroidx/versionedparcelable/b;->b([BI)[B

    move-result-object v3

    iput-object v3, v0, Landroid/support/v4/graphics/drawable/IconCompat;->d:[B

    iget-object v4, v0, Landroid/support/v4/graphics/drawable/IconCompat;->e:Landroid/os/Parcelable;

    .local v4, "$r3":Landroid/os/Parcelable;, ""
    const/4 v2, 0x3

    invoke-virtual {p0, v4, v2}, Landroidx/versionedparcelable/b;->b(Landroid/os/Parcelable;I)Landroid/os/Parcelable;

    move-result-object v4

    iput-object v4, v0, Landroid/support/v4/graphics/drawable/IconCompat;->e:Landroid/os/Parcelable;

    iget v1, v0, Landroid/support/v4/graphics/drawable/IconCompat;->f:I

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/b;->b(II)I

    move-result v1

    iput v1, v0, Landroid/support/v4/graphics/drawable/IconCompat;->f:I

    iget v1, v0, Landroid/support/v4/graphics/drawable/IconCompat;->g:I

    const/4 v2, 0x5

    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/b;->b(II)I

    move-result v1

    iput v1, v0, Landroid/support/v4/graphics/drawable/IconCompat;->g:I

    iget-object v5, v0, Landroid/support/v4/graphics/drawable/IconCompat;->h:Landroid/content/res/ColorStateList;

    .local v5, "$r4":Landroid/content/res/ColorStateList;, ""
    const/4 v2, 0x6

    invoke-virtual {p0, v5, v2}, Landroidx/versionedparcelable/b;->b(Landroid/os/Parcelable;I)Landroid/os/Parcelable;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Landroid/content/res/ColorStateList;

    move-object v5, v6

    iput-object v5, v0, Landroid/support/v4/graphics/drawable/IconCompat;->h:Landroid/content/res/ColorStateList;

    iget-object v7, v0, Landroid/support/v4/graphics/drawable/IconCompat;->j:Ljava/lang/String;

    .local v7, "$r5":Ljava/lang/String;, ""
    const/4 v2, 0x7

    invoke-virtual {p0, v7, v2}, Landroidx/versionedparcelable/b;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Landroid/support/v4/graphics/drawable/IconCompat;->j:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/support/v4/graphics/drawable/IconCompat;->c()V

    return-object v0
    .end local v0    # "$r0":Landroid/support/v4/graphics/drawable/IconCompat;, ""
    .end local v7    # "$r5":Ljava/lang/String;, ""
    .end local v4    # "$r3":Landroid/os/Parcelable;, ""
    .end local v3    # "$r2":[B, ""
    .end local v1    # "$i0":I, ""
    .end local v5    # "$r4":Landroid/content/res/ColorStateList;, ""
.end method

.method public static write(Landroid/support/v4/graphics/drawable/IconCompat;Landroidx/versionedparcelable/b;)V
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/b;->a(ZZ)V

    invoke-virtual {p1}, Landroidx/versionedparcelable/b;->a()Z

    move-result v2

    .local v2, "$z0":Z, ""
    invoke-virtual {p0, v2}, Landroid/support/v4/graphics/drawable/IconCompat;->a(Z)V

    iget v3, p0, Landroid/support/v4/graphics/drawable/IconCompat;->b:I

    .local v3, "$i0":I, ""
    const/4 v0, 0x1

    invoke-virtual {p1, v3, v0}, Landroidx/versionedparcelable/b;->a(II)V

    iget-object v4, p0, Landroid/support/v4/graphics/drawable/IconCompat;->d:[B

    .local v4, "$r2":[B, ""
    const/4 v0, 0x2

    invoke-virtual {p1, v4, v0}, Landroidx/versionedparcelable/b;->a([BI)V

    iget-object v5, p0, Landroid/support/v4/graphics/drawable/IconCompat;->e:Landroid/os/Parcelable;

    .local v5, "$r3":Landroid/os/Parcelable;, ""
    const/4 v0, 0x3

    invoke-virtual {p1, v5, v0}, Landroidx/versionedparcelable/b;->a(Landroid/os/Parcelable;I)V

    iget v3, p0, Landroid/support/v4/graphics/drawable/IconCompat;->f:I

    const/4 v0, 0x4

    invoke-virtual {p1, v3, v0}, Landroidx/versionedparcelable/b;->a(II)V

    iget v3, p0, Landroid/support/v4/graphics/drawable/IconCompat;->g:I

    const/4 v0, 0x5

    invoke-virtual {p1, v3, v0}, Landroidx/versionedparcelable/b;->a(II)V

    iget-object v6, p0, Landroid/support/v4/graphics/drawable/IconCompat;->h:Landroid/content/res/ColorStateList;

    .local v6, "$r4":Landroid/content/res/ColorStateList;, ""
    const/4 v0, 0x6

    invoke-virtual {p1, v6, v0}, Landroidx/versionedparcelable/b;->a(Landroid/os/Parcelable;I)V

    iget-object v7, p0, Landroid/support/v4/graphics/drawable/IconCompat;->j:Ljava/lang/String;

    .local v7, "$r5":Ljava/lang/String;, ""
    const/4 v0, 0x7

    invoke-virtual {p1, v7, v0}, Landroidx/versionedparcelable/b;->a(Ljava/lang/String;I)V

    return-void
    .end local v6    # "$r4":Landroid/content/res/ColorStateList;, ""
    .end local v7    # "$r5":Ljava/lang/String;, ""
    .end local v2    # "$z0":Z, ""
    .end local v3    # "$i0":I, ""
    .end local v4    # "$r2":[B, ""
    .end local v5    # "$r3":Landroid/os/Parcelable;, ""
.end method
