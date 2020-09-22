.class public Lio/flutter/embedding/engine/e/p$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/engine/e/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputType"
.end annotation


# instance fields
.field public final a:Lio/flutter/embedding/engine/e/p$f;

.field public final b:Z

.field public final c:Z


# direct methods
.method public constructor <init>(Lio/flutter/embedding/engine/e/p$f;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/embedding/engine/e/p$b;->a:Lio/flutter/embedding/engine/e/p$f;

    iput-boolean p2, p0, Lio/flutter/embedding/engine/e/p$b;->b:Z

    iput-boolean p3, p0, Lio/flutter/embedding/engine/e/p$b;->c:Z

    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lio/flutter/embedding/engine/e/p$b;
    .locals 7

    new-instance v0, Lio/flutter/embedding/engine/e/p$b;

    .local v0, "$r0":Lio/flutter/embedding/engine/e/p$b;, ""
    const-string v2, "name"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "$r2":Ljava/lang/String;, ""
    invoke-static {v1}, Lio/flutter/embedding/engine/e/p$f;->a(Ljava/lang/String;)Lio/flutter/embedding/engine/e/p$f;

    move-result-object v3

    .local v3, "$r3":Lio/flutter/embedding/engine/e/p$f;, ""
    const-string v2, "signed"

    const/4 v5, 0x0

    invoke-virtual {p0, v2, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .local v4, "$z0":Z, ""
    const-string v2, "decimal"

    const/4 v5, 0x0

    invoke-virtual {p0, v2, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .local v6, "$z1":Z, ""
    invoke-direct {v0, v3, v4, v6}, Lio/flutter/embedding/engine/e/p$b;-><init>(Lio/flutter/embedding/engine/e/p$f;ZZ)V

    return-object v0
    .end local v3    # "$r3":Lio/flutter/embedding/engine/e/p$f;, ""
    .end local v0    # "$r0":Lio/flutter/embedding/engine/e/p$b;, ""
    .end local v1    # "$r2":Ljava/lang/String;, ""
    .end local v4    # "$z0":Z, ""
    .end local v6    # "$z1":Z, ""
.end method
