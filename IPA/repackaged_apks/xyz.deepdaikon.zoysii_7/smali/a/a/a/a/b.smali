.class public La/a/a/a/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/Object;


# instance fields
.field private b:Z

.field private c:[I

.field private d:[Ljava/lang/Object;

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    .local v0, "$r0":Ljava/lang/Object;, ""
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, La/a/a/a/b;->a:Ljava/lang/Object;

    return-void
    .end local v0    # "$r0":Ljava/lang/Object;, ""
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xa

    invoke-direct {p0, v0}, La/a/a/a/b;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, La/a/a/a/b;->b:Z

    if-nez p1, :cond_0

    sget-object v1, La/a/a/a/a;->a:[I

    .local v1, "$r1":[I, ""
    iput-object v1, p0, La/a/a/a/b;->c:[I

    sget-object v2, La/a/a/a/a;->c:[Ljava/lang/Object;

    .local v2, "$r2":[Ljava/lang/Object;, ""
    iput-object v2, p0, La/a/a/a/b;->d:[Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-static {p1}, La/a/a/a/a;->a(I)I

    move-result p1

    .local p1, "$i0":I, ""
    new-array v1, p1, [I

    iput-object v1, p0, La/a/a/a/b;->c:[I

    new-array v2, p1, [Ljava/lang/Object;

    iput-object v2, p0, La/a/a/a/b;->d:[Ljava/lang/Object;

    :goto_0
    const/4 v0, 0x0

    iput v0, p0, La/a/a/a/b;->e:I

    return-void
    .end local v1    # "$r1":[I, ""
    .end local p1    # "$i0":I, ""
    .end local v2    # "$r2":[Ljava/lang/Object;, ""
.end method

.method private b()V
    .locals 10

    iget v0, p0, La/a/a/a/b;->e:I

    .local v0, "$i0":I, ""
    iget-object v1, p0, La/a/a/a/b;->c:[I

    .local v1, "$r1":[I, ""
    iget-object v2, p0, La/a/a/a/b;->d:[Ljava/lang/Object;

    .local v2, "$r2":[Ljava/lang/Object;, ""
    const/4 v3, 0x0

    .local v3, "$i1":I, ""
    const/4 v4, 0x0

    .local v4, "$i2":I, ""
    :goto_0
    if-ge v3, v0, :cond_2

    aget-object v5, v2, v3

    .local v5, "$r3":Ljava/lang/Object;, ""
    sget-object v6, La/a/a/a/b;->a:Ljava/lang/Object;

    .local v6, "$r4":Ljava/lang/Object;, ""
    if-eq v5, v6, :cond_1

    if-eq v3, v4, :cond_0

    aget v7, v1, v3

    .local v7, "$i3":I, ""
    aput v7, v1, v4

    aput-object v5, v2, v4

    const/4 v8, 0x0

    aput-object v8, v2, v3

    :cond_0
    add-int/lit8 v4, v4, 0x1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v9, 0x0

    iput-boolean v9, p0, La/a/a/a/b;->b:Z

    iput v4, p0, La/a/a/a/b;->e:I

    return-void
    .end local v7    # "$i3":I, ""
    .end local v0    # "$i0":I, ""
    .end local v2    # "$r2":[Ljava/lang/Object;, ""
    .end local v5    # "$r3":Ljava/lang/Object;, ""
    .end local v6    # "$r4":Ljava/lang/Object;, ""
    .end local v3    # "$i1":I, ""
    .end local v1    # "$r1":[I, ""
    .end local v4    # "$i2":I, ""
.end method


# virtual methods
.method public a()I
    .locals 2

    iget-boolean v0, p0, La/a/a/a/b;->b:Z

    .local v0, "$z0":Z, ""
    if-eqz v0, :cond_0

    invoke-direct {p0}, La/a/a/a/b;->b()V

    :cond_0
    iget v1, p0, La/a/a/a/b;->e:I

    .local v1, "i0":I, ""
    return v1
    .end local v1    # "i0":I, ""
    .end local v0    # "$z0":Z, ""
.end method

.method public a(I)I
    .locals 2

    iget-boolean v0, p0, La/a/a/a/b;->b:Z

    .local v0, "$z0":Z, ""
    if-eqz v0, :cond_0

    invoke-direct {p0}, La/a/a/a/b;->b()V

    :cond_0
    iget-object v1, p0, La/a/a/a/b;->c:[I

    .local v1, "$r1":[I, ""
    aget p1, v1, p1

    .local p1, "$i0":I, ""
    return p1
    .end local v1    # "$r1":[I, ""
    .end local p1    # "$i0":I, ""
    .end local v0    # "$z0":Z, ""
.end method

.method public b(I)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget-boolean v0, p0, La/a/a/a/b;->b:Z

    .local v0, "$z0":Z, ""
    if-eqz v0, :cond_0

    invoke-direct {p0}, La/a/a/a/b;->b()V

    :cond_0
    iget-object v1, p0, La/a/a/a/b;->d:[Ljava/lang/Object;

    .local v1, "$r1":[Ljava/lang/Object;, ""
    aget-object v2, v1, p1

    .local v2, "$r2":Ljava/lang/Object;, ""
    return-object v2
    .end local v2    # "$r2":Ljava/lang/Object;, ""
    .end local v1    # "$r1":[Ljava/lang/Object;, ""
    .end local v0    # "$z0":Z, ""
.end method

.method public clone()La/a/a/a/b;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La/a/a/a/b",
            "<TE;>;"
        }
    .end annotation

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .local v0, "$r1":Ljava/lang/Object;, ""
    move-object v2, v0

    check-cast v2, La/a/a/a/b;

    move-object v1, v2

    .local v1, "$r2":La/a/a/a/b;, ""
    iget-object v3, p0, La/a/a/a/b;->c:[I

    .local v3, "$r3":[I, ""
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v4, v0

    check-cast v4, [I

    move-object v3, v4

    iput-object v3, v1, La/a/a/a/b;->c:[I

    iget-object v5, p0, La/a/a/a/b;->d:[Ljava/lang/Object;

    .local v5, "$r4":[Ljava/lang/Object;, ""
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v6, v0

    check-cast v6, [Ljava/lang/Object;

    move-object v5, v6

    iput-object v5, v1, La/a/a/a/b;->d:[Ljava/lang/Object;

    return-object v1

    :catch_0
    move-exception v7

    .local v7, "$r5":Ljava/lang/CloneNotSupportedException;, ""
    new-instance v8, Ljava/lang/AssertionError;

    .local v8, "$r6":Ljava/lang/AssertionError;, ""
    invoke-direct {v8, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v8
    .end local v1    # "$r2":La/a/a/a/b;, ""
    .end local v5    # "$r4":[Ljava/lang/Object;, ""
    .end local v0    # "$r1":Ljava/lang/Object;, ""
    .end local v8    # "$r6":Ljava/lang/AssertionError;, ""
    .end local v7    # "$r5":Ljava/lang/CloneNotSupportedException;, ""
    .end local v3    # "$r3":[I, ""
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, La/a/a/a/b;->clone()La/a/a/a/b;

    move-result-object p0

    .local p0, "$r0":La/a/a/a/b;, ""
    return-object p0
    .end local p0    # "$r0":La/a/a/a/b;, ""
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    invoke-virtual {p0}, La/a/a/a/b;->a()I

    move-result v0

    .local v0, "$i0":I, ""
    if-gtz v0, :cond_0

    const-string v1, "{}"

    return-object v1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .local v2, "$r1":Ljava/lang/StringBuilder;, ""
    iget v0, p0, La/a/a/a/b;->e:I

    mul-int/lit8 v0, v0, 0x1c

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v3, 0x7b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_0
    iget v4, p0, La/a/a/a/b;->e:I

    .local v4, "$i1":I, ""
    if-ge v0, v4, :cond_3

    if-lez v0, :cond_1

    const-string v1, ", "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p0, v0}, La/a/a/a/b;->a(I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, La/a/a/a/b;->b(I)Ljava/lang/Object;

    move-result-object v5

    .local v5, "$r2":Ljava/lang/Object;, ""
    if-eq v5, p0, :cond_2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string v1, "(this Map)"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/16 v3, 0x7d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .local v6, "$r3":Ljava/lang/String;, ""
    return-object v6
    .end local v4    # "$i1":I, ""
    .end local v0    # "$i0":I, ""
    .end local v5    # "$r2":Ljava/lang/Object;, ""
    .end local v2    # "$r1":Ljava/lang/StringBuilder;, ""
    .end local v6    # "$r3":Ljava/lang/String;, ""
.end method
