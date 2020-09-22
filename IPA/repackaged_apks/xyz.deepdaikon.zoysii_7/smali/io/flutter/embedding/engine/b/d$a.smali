.class Lio/flutter/embedding/engine/b/d$a;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/engine/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CleanTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:[Ljava/io/File;


# direct methods
.method constructor <init>([Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lio/flutter/embedding/engine/b/d$a;->a:[Ljava/io/File;

    return-void
.end method

.method private a(Ljava/io/File;)V
    .locals 5

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    .local v0, "$z0":Z, ""
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .local v1, "$r3":[Ljava/io/File;, ""
    array-length v2, v1

    .local v2, "$i0":I, ""
    const/4 v3, 0x0

    .local v3, "$i1":I, ""
    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .local v4, "$r2":Ljava/io/File;, ""
    invoke-direct {p0, v4}, Lio/flutter/embedding/engine/b/d$a;->a(Ljava/io/File;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return-void
    .end local v4    # "$r2":Ljava/io/File;, ""
    .end local v1    # "$r3":[Ljava/io/File;, ""
    .end local v2    # "$i0":I, ""
    .end local v0    # "$z0":Z, ""
    .end local v3    # "$i1":I, ""
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6

    iget-object v0, p0, Lio/flutter/embedding/engine/b/d$a;->a:[Ljava/io/File;

    .local v0, "$r3":[Ljava/io/File;, ""
    array-length v1, v0

    .local v1, "$i0":I, ""
    const/4 v2, 0x0

    .local v2, "$i1":I, ""
    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .local v3, "$r1":Ljava/io/File;, ""
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    .local v4, "$z0":Z, ""
    if-eqz v4, :cond_0

    invoke-direct {p0, v3}, Lio/flutter/embedding/engine/b/d$a;->a(Ljava/io/File;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    return-object v5
    .end local v4    # "$z0":Z, ""
    .end local v1    # "$i0":I, ""
    .end local v2    # "$i1":I, ""
    .end local v0    # "$r3":[Ljava/io/File;, ""
    .end local v3    # "$r1":Ljava/io/File;, ""
.end method

.method a()Z
    .locals 3

    iget-object v0, p0, Lio/flutter/embedding/engine/b/d$a;->a:[Ljava/io/File;

    .local v0, "$r1":[Ljava/io/File;, ""
    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/flutter/embedding/engine/b/d$a;->a:[Ljava/io/File;

    array-length v1, v0

    .local v1, "$i0":I, ""
    if-lez v1, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    const/4 v2, 0x0

    return v2
    .end local v1    # "$i0":I, ""
    .end local v0    # "$r1":[Ljava/io/File;, ""
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    move-object v1, p1

    check-cast v1, [Ljava/lang/Void;

    move-object v0, v1

    .local v0, "$r3":[Ljava/lang/Void;, ""
    invoke-virtual {p0, v0}, Lio/flutter/embedding/engine/b/d$a;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v2

    .local v2, "$r1":Ljava/lang/Void;, ""
    return-object v2
    .end local v2    # "$r1":Ljava/lang/Void;, ""
    .end local v0    # "$r3":[Ljava/lang/Void;, ""
.end method
