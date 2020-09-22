.class public Lio/flutter/embedding/engine/e/p$d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/engine/e/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextEditState"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/embedding/engine/e/p$d;->a:Ljava/lang/String;

    iput p2, p0, Lio/flutter/embedding/engine/e/p$d;->b:I

    iput p3, p0, Lio/flutter/embedding/engine/e/p$d;->c:I

    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lio/flutter/embedding/engine/e/p$d;
    .locals 5

    new-instance v0, Lio/flutter/embedding/engine/e/p$d;

    .local v0, "$r0":Lio/flutter/embedding/engine/e/p$d;, ""
    const-string v2, "text"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "$r2":Ljava/lang/String;, ""
    const-string v2, "selectionBase"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .local v3, "$i0":I, ""
    const-string v2, "selectionExtent"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .local v4, "$i1":I, ""
    invoke-direct {v0, v1, v3, v4}, Lio/flutter/embedding/engine/e/p$d;-><init>(Ljava/lang/String;II)V

    return-object v0
    .end local v4    # "$i1":I, ""
    .end local v0    # "$r0":Lio/flutter/embedding/engine/e/p$d;, ""
    .end local v1    # "$r2":Ljava/lang/String;, ""
    .end local v3    # "$i0":I, ""
.end method
