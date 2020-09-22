.class public Lio/flutter/embedding/engine/e/m$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/engine/e/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessageBuilder"
.end annotation


# instance fields
.field private final a:Lb/a/b/a/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/a/b/a/d",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lb/a/b/a/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/a/b/a/d",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    .local v0, "$r2":Ljava/util/HashMap;, ""
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/flutter/embedding/engine/e/m$a;->b:Ljava/util/Map;

    iput-object p1, p0, Lio/flutter/embedding/engine/e/m$a;->a:Lb/a/b/a/d;

    return-void
    .end local v0    # "$r2":Ljava/util/HashMap;, ""
.end method


# virtual methods
.method public a(F)Lio/flutter/embedding/engine/e/m$a;
    .locals 3

    iget-object v0, p0, Lio/flutter/embedding/engine/e/m$a;->b:Ljava/util/Map;

    .local v0, "$r1":Ljava/util/Map;, ""
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .local v1, "$r2":Ljava/lang/Float;, ""
    const-string v2, "textScaleFactor"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
    .end local v0    # "$r1":Ljava/util/Map;, ""
    .end local v1    # "$r2":Ljava/lang/Float;, ""
.end method

.method public a(Lio/flutter/embedding/engine/e/m$b;)Lio/flutter/embedding/engine/e/m$a;
    .locals 3

    iget-object v0, p0, Lio/flutter/embedding/engine/e/m$a;->b:Ljava/util/Map;

    .local v0, "$r1":Ljava/util/Map;, ""
    iget-object v1, p1, Lio/flutter/embedding/engine/e/m$b;->d:Ljava/lang/String;

    .local v1, "$r3":Ljava/lang/String;, ""
    const-string v2, "platformBrightness"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
    .end local v0    # "$r1":Ljava/util/Map;, ""
    .end local v1    # "$r3":Ljava/lang/String;, ""
.end method

.method public a(Z)Lio/flutter/embedding/engine/e/m$a;
    .locals 3

    iget-object v0, p0, Lio/flutter/embedding/engine/e/m$a;->b:Ljava/util/Map;

    .local v0, "$r1":Ljava/util/Map;, ""
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .local v1, "$r2":Ljava/lang/Boolean;, ""
    const-string v2, "alwaysUse24HourFormat"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
    .end local v1    # "$r2":Ljava/lang/Boolean;, ""
    .end local v0    # "$r1":Ljava/util/Map;, ""
.end method

.method public a()V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    .local v0, "$r1":Ljava/lang/StringBuilder;, ""
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sending message: \ntextScaleFactor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/flutter/embedding/engine/e/m$a;->b:Ljava/util/Map;

    .local v2, "$r2":Ljava/util/Map;, ""
    const-string v1, "textScaleFactor"

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .local v3, "$r3":Ljava/lang/Object;, ""
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\nalwaysUse24HourFormat: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/flutter/embedding/engine/e/m$a;->b:Ljava/util/Map;

    const-string v1, "alwaysUse24HourFormat"

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\nplatformBrightness: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/flutter/embedding/engine/e/m$a;->b:Ljava/util/Map;

    const-string v1, "platformBrightness"

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .local v4, "$r4":Ljava/lang/String;, ""
    const-string v1, "SettingsChannel"

    invoke-static {v1, v4}, Lb/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lio/flutter/embedding/engine/e/m$a;->a:Lb/a/b/a/d;

    .local v5, "$r5":Lb/a/b/a/d;, ""
    iget-object v2, p0, Lio/flutter/embedding/engine/e/m$a;->b:Ljava/util/Map;

    invoke-virtual {v5, v2}, Lb/a/b/a/d;->a(Ljava/lang/Object;)V

    return-void
    .end local v2    # "$r2":Ljava/util/Map;, ""
    .end local v5    # "$r5":Lb/a/b/a/d;, ""
    .end local v0    # "$r1":Ljava/lang/StringBuilder;, ""
    .end local v3    # "$r3":Ljava/lang/Object;, ""
    .end local v4    # "$r4":Ljava/lang/String;, ""
.end method
