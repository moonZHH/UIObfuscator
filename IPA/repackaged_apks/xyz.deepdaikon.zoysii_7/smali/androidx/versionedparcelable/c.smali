.class Landroidx/versionedparcelable/c;
.super Landroidx/versionedparcelable/b;
.source ""


# instance fields
.field private final a:Landroid/util/SparseIntArray;

.field private final b:Landroid/os/Parcel;

.field private final c:I

.field private final d:I

.field private final e:Ljava/lang/String;

.field private f:I

.field private g:I


# direct methods
.method constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .local v0, "$i0":I, ""
    invoke-virtual {p1}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    .local v1, "$i1":I, ""
    const-string v2, ""

    invoke-direct {p0, p1, v0, v1, v2}, Landroidx/versionedparcelable/c;-><init>(Landroid/os/Parcel;IILjava/lang/String;)V

    return-void
    .end local v1    # "$i1":I, ""
    .end local v0    # "$i0":I, ""
.end method

.method constructor <init>(Landroid/os/Parcel;IILjava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Landroidx/versionedparcelable/b;-><init>()V

    new-instance v0, Landroid/util/SparseIntArray;

    .local v0, "$r3":Landroid/util/SparseIntArray;, ""
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroidx/versionedparcelable/c;->a:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    iput v1, p0, Landroidx/versionedparcelable/c;->f:I

    const/4 v1, 0x0

    iput v1, p0, Landroidx/versionedparcelable/c;->g:I

    iput-object p1, p0, Landroidx/versionedparcelable/c;->b:Landroid/os/Parcel;

    iput p2, p0, Landroidx/versionedparcelable/c;->c:I

    iput p3, p0, Landroidx/versionedparcelable/c;->d:I

    iget p2, p0, Landroidx/versionedparcelable/c;->c:I

    .local p2, "$i0":I, ""
    iput p2, p0, Landroidx/versionedparcelable/c;->g:I

    iput-object p4, p0, Landroidx/versionedparcelable/c;->e:Ljava/lang/String;

    return-void
    .end local v0    # "$r3":Landroid/util/SparseIntArray;, ""
    .end local p2    # "$i0":I, ""
.end method

.method private d(I)I
    .locals 5

    :cond_0
    iget v0, p0, Landroidx/versionedparcelable/c;->g:I

    .local v0, "$i1":I, ""
    iget v1, p0, Landroidx/versionedparcelable/c;->d:I

    .local v1, "$i2":I, ""
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Landroidx/versionedparcelable/c;->b:Landroid/os/Parcel;

    .local v2, "$r1":Landroid/os/Parcel;, ""
    iget v0, p0, Landroidx/versionedparcelable/c;->g:I

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    iget-object v2, p0, Landroidx/versionedparcelable/c;->b:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iget-object v2, p0, Landroidx/versionedparcelable/c;->b:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iget v3, p0, Landroidx/versionedparcelable/c;->g:I

    .local v3, "$i3":I, ""
    add-int v1, v3, v1

    iput v1, p0, Landroidx/versionedparcelable/c;->g:I

    if-ne v0, p1, :cond_0

    iget-object v2, p0, Landroidx/versionedparcelable/c;->b:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->dataPosition()I

    move-result p1

    .local p1, "$i0":I, ""
    return p1

    :cond_1
    const/4 v4, -0x1

    return v4
    .end local v0    # "$i1":I, ""
    .end local v3    # "$i3":I, ""
    .end local v1    # "$i2":I, ""
    .end local p1    # "$i0":I, ""
    .end local v2    # "$r1":Landroid/os/Parcel;, ""
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget-object v0, p0, Landroidx/versionedparcelable/c;->b:Landroid/os/Parcel;

    .local v0, "$r1":Landroid/os/Parcel;, ""
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    return-void
    .end local v0    # "$r1":Landroid/os/Parcel;, ""
.end method

.method public a(Landroid/os/Parcelable;)V
    .locals 2

    iget-object v0, p0, Landroidx/versionedparcelable/c;->b:Landroid/os/Parcel;

    .local v0, "$r2":Landroid/os/Parcel;, ""
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
    .end local v0    # "$r2":Landroid/os/Parcel;, ""
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroidx/versionedparcelable/c;->b:Landroid/os/Parcel;

    .local v0, "$r2":Landroid/os/Parcel;, ""
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
    .end local v0    # "$r2":Landroid/os/Parcel;, ""
.end method

.method public a([B)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroidx/versionedparcelable/c;->b:Landroid/os/Parcel;

    .local v0, "$r2":Landroid/os/Parcel;, ""
    array-length v1, p1

    .local v1, "$i0":I, ""
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroidx/versionedparcelable/c;->b:Landroid/os/Parcel;

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/versionedparcelable/c;->b:Landroid/os/Parcel;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
    .end local v1    # "$i0":I, ""
    .end local v0    # "$r2":Landroid/os/Parcel;, ""
.end method

.method public b()V
    .locals 5

    iget v0, p0, Landroidx/versionedparcelable/c;->f:I

    .local v0, "$i0":I, ""
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroidx/versionedparcelable/c;->a:Landroid/util/SparseIntArray;

    .local v1, "$r2":Landroid/util/SparseIntArray;, ""
    iget v0, p0, Landroidx/versionedparcelable/c;->f:I

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    .local v2, "$i1":I, ""
    iget-object v3, p0, Landroidx/versionedparcelable/c;->b:Landroid/os/Parcel;

    .local v3, "$r1":Landroid/os/Parcel;, ""
    invoke-virtual {v3}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    .local v4, "$i2":I, ""
    sub-int v0, v4, v2

    iget-object v3, p0, Landroidx/versionedparcelable/c;->b:Landroid/os/Parcel;

    invoke-virtual {v3, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    iget-object v3, p0, Landroidx/versionedparcelable/c;->b:Landroid/os/Parcel;

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v3, p0, Landroidx/versionedparcelable/c;->b:Landroid/os/Parcel;

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    :cond_0
    return-void
    .end local v2    # "$i1":I, ""
    .end local v0    # "$i0":I, ""
    .end local v4    # "$i2":I, ""
    .end local v1    # "$r2":Landroid/util/SparseIntArray;, ""
    .end local v3    # "$r1":Landroid/os/Parcel;, ""
.end method

.method public b(I)Z
    .locals 2

    invoke-direct {p0, p1}, Landroidx/versionedparcelable/c;->d(I)I

    move-result p1

    .local p1, "$i0":I, ""
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v1, p0, Landroidx/versionedparcelable/c;->b:Landroid/os/Parcel;

    .local v1, "$r1":Landroid/os/Parcel;, ""
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->setDataPosition(I)V

    const/4 v0, 0x1

    return v0
    .end local p1    # "$i0":I, ""
    .end local v1    # "$r1":Landroid/os/Parcel;, ""
.end method

.method protected c()Landroidx/versionedparcelable/b;
    .locals 9

    new-instance v0, Landroidx/versionedparcelable/c;

    .local v0, "$r1":Landroidx/versionedparcelable/c;, ""
    iget-object v1, p0, Landroidx/versionedparcelable/c;->b:Landroid/os/Parcel;

    .local v1, "$r2":Landroid/os/Parcel;, ""
    iget-object v2, p0, Landroidx/versionedparcelable/c;->b:Landroid/os/Parcel;

    .local v2, "$r3":Landroid/os/Parcel;, ""
    invoke-virtual {v2}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    .local v3, "$i0":I, ""
    iget v4, p0, Landroidx/versionedparcelable/c;->g:I

    .local v4, "$i1":I, ""
    iget v5, p0, Landroidx/versionedparcelable/c;->c:I

    .local v5, "$i2":I, ""
    if-ne v4, v5, :cond_0

    iget v4, p0, Landroidx/versionedparcelable/c;->d:I

    goto :goto_0

    :cond_0
    iget v4, p0, Landroidx/versionedparcelable/c;->g:I

    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    .local v6, "$r4":Ljava/lang/StringBuilder;, ""
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Landroidx/versionedparcelable/c;->e:Ljava/lang/String;

    .local v7, "$r5":Ljava/lang/String;, ""
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "  "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v1, v3, v4, v7}, Landroidx/versionedparcelable/c;-><init>(Landroid/os/Parcel;IILjava/lang/String;)V

    return-object v0
    .end local v1    # "$r2":Landroid/os/Parcel;, ""
    .end local v5    # "$i2":I, ""
    .end local v0    # "$r1":Landroidx/versionedparcelable/c;, ""
    .end local v6    # "$r4":Ljava/lang/StringBuilder;, ""
    .end local v2    # "$r3":Landroid/os/Parcel;, ""
    .end local v3    # "$i0":I, ""
    .end local v4    # "$i1":I, ""
    .end local v7    # "$r5":Ljava/lang/String;, ""
.end method

.method public c(I)V
    .locals 4

    invoke-virtual {p0}, Landroidx/versionedparcelable/c;->b()V

    iput p1, p0, Landroidx/versionedparcelable/c;->f:I

    iget-object v0, p0, Landroidx/versionedparcelable/c;->a:Landroid/util/SparseIntArray;

    .local v0, "$r1":Landroid/util/SparseIntArray;, ""
    iget-object v1, p0, Landroidx/versionedparcelable/c;->b:Landroid/os/Parcel;

    .local v1, "$r2":Landroid/os/Parcel;, ""
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    .local v2, "$i1":I, ""
    invoke-virtual {v0, p1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroidx/versionedparcelable/c;->a(I)V

    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/c;->a(I)V

    return-void
    .end local v1    # "$r2":Landroid/os/Parcel;, ""
    .end local v0    # "$r1":Landroid/util/SparseIntArray;, ""
    .end local v2    # "$i1":I, ""
.end method

.method public d()I
    .locals 2

    iget-object v0, p0, Landroidx/versionedparcelable/c;->b:Landroid/os/Parcel;

    .local v0, "$r1":Landroid/os/Parcel;, ""
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, "$i0":I, ""
    return v1
    .end local v1    # "$i0":I, ""
    .end local v0    # "$r1":Landroid/os/Parcel;, ""
.end method

.method public e()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Landroidx/versionedparcelable/c;->b:Landroid/os/Parcel;

    .local v0, "$r2":Landroid/os/Parcel;, ""
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .local v1, "$r1":Ljava/lang/String;, ""
    return-object v1
    .end local v0    # "$r2":Landroid/os/Parcel;, ""
    .end local v1    # "$r1":Ljava/lang/String;, ""
.end method

.method public f()[B
    .locals 4

    iget-object v0, p0, Landroidx/versionedparcelable/c;->b:Landroid/os/Parcel;

    .local v0, "$r1":Landroid/os/Parcel;, ""
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, "$i0":I, ""
    if-gez v1, :cond_0

    const/4 v2, 0x0

    return-object v2

    :cond_0
    new-array v3, v1, [B

    .local v3, "$r2":[B, ""
    iget-object v0, p0, Landroidx/versionedparcelable/c;->b:Landroid/os/Parcel;

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->readByteArray([B)V

    return-object v3
    .end local v0    # "$r1":Landroid/os/Parcel;, ""
    .end local v3    # "$r2":[B, ""
    .end local v1    # "$i0":I, ""
.end method

.method public g()Landroid/os/Parcelable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">()TT;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/versionedparcelable/c;->b:Landroid/os/Parcel;

    .local v0, "$r1":Landroid/os/Parcel;, ""
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .local v1, "$r2":Ljava/lang/Class;, ""
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .local v2, "$r3":Ljava/lang/ClassLoader;, ""
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    .local v3, "$r4":Landroid/os/Parcelable;, ""
    return-object v3
    .end local v2    # "$r3":Ljava/lang/ClassLoader;, ""
    .end local v3    # "$r4":Landroid/os/Parcelable;, ""
    .end local v0    # "$r1":Landroid/os/Parcel;, ""
    .end local v1    # "$r2":Ljava/lang/Class;, ""
.end method
