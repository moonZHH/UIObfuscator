.class abstract La/a/a/a/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field static final a:[I

.field static final b:[J

.field static final c:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v1, 0x0

    new-array v0, v1, [I

    .local v0, "$r0":[I, ""
    sput-object v0, La/a/a/a/a;->a:[I

    const/4 v1, 0x0

    new-array v2, v1, [J

    .local v2, "$r1":[J, ""
    sput-object v2, La/a/a/a/a;->b:[J

    const/4 v1, 0x0

    new-array v3, v1, [Ljava/lang/Object;

    .local v3, "$r2":[Ljava/lang/Object;, ""
    sput-object v3, La/a/a/a/a;->c:[Ljava/lang/Object;

    return-void
    .end local v3    # "$r2":[Ljava/lang/Object;, ""
    .end local v0    # "$r0":[I, ""
    .end local v2    # "$r1":[J, ""
.end method

.method public static a(I)I
    .locals 0

    mul-int/lit8 p0, p0, 0x4

    .local p0, "$i0":I, ""
    invoke-static {p0}, La/a/a/a/a;->b(I)I

    move-result p0

    div-int/lit8 p0, p0, 0x4

    return p0
    .end local p0    # "$i0":I, ""
.end method

.method public static b(I)I
    .locals 3

    const/4 v0, 0x4

    .local v0, "$i1":I, ""
    :goto_0
    const/16 v1, 0x20

    if-ge v0, v1, :cond_1

    const/4 v1, 0x1

    shl-int v2, v1, v0

    .local v2, "$i2":I, ""
    add-int/lit8 v2, v2, -0xc

    if-gt p0, v2, :cond_0

    return v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return p0
    .end local v0    # "$i1":I, ""
    .end local v2    # "$i2":I, ""
.end method
