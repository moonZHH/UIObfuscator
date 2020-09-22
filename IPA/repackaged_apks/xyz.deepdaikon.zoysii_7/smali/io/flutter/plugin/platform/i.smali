.class Lio/flutter/plugin/platform/i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/flutter/plugin/platform/h;


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lio/flutter/plugin/platform/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    .local v0, "$r1":Ljava/util/HashMap;, ""
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/flutter/plugin/platform/i;->a:Ljava/util/Map;

    return-void
    .end local v0    # "$r1":Ljava/util/HashMap;, ""
.end method


# virtual methods
.method a(Ljava/lang/String;)Lio/flutter/plugin/platform/g;
    .locals 4

    iget-object v0, p0, Lio/flutter/plugin/platform/i;->a:Ljava/util/Map;

    .local v0, "$r1":Ljava/util/Map;, ""
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .local v1, "$r2":Ljava/lang/Object;, ""
    move-object v3, v1

    check-cast v3, Lio/flutter/plugin/platform/g;

    move-object v2, v3

    .local v2, "$r4":Lio/flutter/plugin/platform/g;, ""
    return-object v2
    .end local v0    # "$r1":Ljava/util/Map;, ""
    .end local v2    # "$r4":Lio/flutter/plugin/platform/g;, ""
    .end local v1    # "$r2":Ljava/lang/Object;, ""
.end method
