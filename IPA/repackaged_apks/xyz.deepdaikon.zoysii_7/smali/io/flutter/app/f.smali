.class public Lio/flutter/app/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/a/b/a/o;
.implements Lb/a/b/a/o$d;
.implements Lb/a/b/a/o$a;
.implements Lb/a/b/a/o$b;
.implements Lb/a/b/a/o$e;
.implements Lb/a/b/a/o$f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/app/f$a;
    }
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Landroid/content/Context;

.field private c:Lio/flutter/view/k;

.field private d:Lio/flutter/view/p;

.field private final e:Lio/flutter/plugin/platform/m;

.field private final f:Ljava/util/Map;
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

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lb/a/b/a/o$d;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lb/a/b/a/o$a;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lb/a/b/a/o$b;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lb/a/b/a/o$e;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lb/a/b/a/o$f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/flutter/view/k;Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    .local v0, "$r3":Ljava/util/LinkedHashMap;, ""
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v0, p0, Lio/flutter/app/f;->f:Ljava/util/Map;

    new-instance v2, Ljava/util/ArrayList;

    .local v2, "$r4":Ljava/util/ArrayList;, ""
    const/4 v1, 0x0

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lio/flutter/app/f;->g:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lio/flutter/app/f;->h:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lio/flutter/app/f;->i:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lio/flutter/app/f;->j:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lio/flutter/app/f;->k:Ljava/util/List;

    iput-object p1, p0, Lio/flutter/app/f;->c:Lio/flutter/view/k;

    iput-object p2, p0, Lio/flutter/app/f;->b:Landroid/content/Context;

    new-instance v3, Lio/flutter/plugin/platform/m;

    .local v3, "$r5":Lio/flutter/plugin/platform/m;, ""
    invoke-direct {v3}, Lio/flutter/plugin/platform/m;-><init>()V

    iput-object v3, p0, Lio/flutter/app/f;->e:Lio/flutter/plugin/platform/m;

    return-void
    .end local v2    # "$r4":Ljava/util/ArrayList;, ""
    .end local v0    # "$r3":Ljava/util/LinkedHashMap;, ""
    .end local v3    # "$r5":Lio/flutter/plugin/platform/m;, ""
.end method

.method static synthetic a(Lio/flutter/app/f;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lio/flutter/app/f;->a:Landroid/app/Activity;

    .local v0, "r1":Landroid/app/Activity;, ""
    return-object v0
    .end local v0    # "r1":Landroid/app/Activity;, ""
.end method

.method static synthetic b(Lio/flutter/app/f;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lio/flutter/app/f;->b:Landroid/content/Context;

    .local v0, "r1":Landroid/content/Context;, ""
    return-object v0
    .end local v0    # "r1":Landroid/content/Context;, ""
.end method

.method static synthetic c(Lio/flutter/app/f;)Lio/flutter/view/k;
    .locals 1

    iget-object v0, p0, Lio/flutter/app/f;->c:Lio/flutter/view/k;

    .local v0, "r1":Lio/flutter/view/k;, ""
    return-object v0
    .end local v0    # "r1":Lio/flutter/view/k;, ""
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lio/flutter/app/f;->e:Lio/flutter/plugin/platform/m;

    .local v0, "$r1":Lio/flutter/plugin/platform/m;, ""
    invoke-virtual {v0}, Lio/flutter/plugin/platform/m;->b()V

    iget-object v0, p0, Lio/flutter/app/f;->e:Lio/flutter/plugin/platform/m;

    invoke-virtual {v0}, Lio/flutter/plugin/platform/m;->c()V

    const/4 v1, 0x0

    iput-object v1, p0, Lio/flutter/app/f;->d:Lio/flutter/view/p;

    const/4 v1, 0x0

    iput-object v1, p0, Lio/flutter/app/f;->a:Landroid/app/Activity;

    return-void
    .end local v0    # "$r1":Lio/flutter/plugin/platform/m;, ""
.end method

.method public a(Lio/flutter/view/p;Landroid/app/Activity;)V
    .locals 2

    iput-object p1, p0, Lio/flutter/app/f;->d:Lio/flutter/view/p;

    iput-object p2, p0, Lio/flutter/app/f;->a:Landroid/app/Activity;

    iget-object v0, p0, Lio/flutter/app/f;->e:Lio/flutter/plugin/platform/m;

    .local v0, "$r3":Lio/flutter/plugin/platform/m;, ""
    invoke-virtual {p1}, Lio/flutter/view/p;->getDartExecutor()Lio/flutter/embedding/engine/a/b;

    move-result-object v1

    .local v1, "$r4":Lio/flutter/embedding/engine/a/b;, ""
    invoke-virtual {v0, p2, p1, v1}, Lio/flutter/plugin/platform/m;->a(Landroid/content/Context;Lio/flutter/view/r;Lio/flutter/embedding/engine/a/b;)V

    return-void
    .end local v1    # "$r4":Lio/flutter/embedding/engine/a/b;, ""
    .end local v0    # "$r3":Lio/flutter/plugin/platform/m;, ""
.end method

.method public a(I[Ljava/lang/String;[I)Z
    .locals 7

    iget-object v0, p0, Lio/flutter/app/f;->g:Ljava/util/List;

    .local v0, "$r3":Ljava/util/List;, ""
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "$r4":Ljava/util/Iterator;, ""
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    .local v2, "$z0":Z, ""
    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "$r5":Ljava/lang/Object;, ""
    move-object v5, v3

    check-cast v5, Lb/a/b/a/o$d;

    move-object v4, v5

    .local v4, "$r6":Lb/a/b/a/o$d;, ""
    invoke-interface {v4, p1, p2, p3}, Lb/a/b/a/o$d;->a(I[Ljava/lang/String;[I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v6, 0x1

    return v6

    :cond_1
    const/4 v6, 0x0

    return v6
    .end local v0    # "$r3":Ljava/util/List;, ""
    .end local v4    # "$r6":Lb/a/b/a/o$d;, ""
    .end local v1    # "$r4":Ljava/util/Iterator;, ""
    .end local v2    # "$z0":Z, ""
    .end local v3    # "$r5":Ljava/lang/Object;, ""
.end method

.method public a(Lio/flutter/view/k;)Z
    .locals 7

    iget-object v0, p0, Lio/flutter/app/f;->k:Ljava/util/List;

    .local v0, "$r2":Ljava/util/List;, ""
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "$r3":Ljava/util/Iterator;, ""
    const/4 v2, 0x0

    .local v2, "$z0":Z, ""
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    .local v3, "$z1":Z, ""
    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "$r4":Ljava/lang/Object;, ""
    move-object v6, v4

    check-cast v6, Lb/a/b/a/o$f;

    move-object v5, v6

    .local v5, "$r5":Lb/a/b/a/o$f;, ""
    invoke-interface {v5, p1}, Lb/a/b/a/o$f;->a(Lio/flutter/view/k;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    return v2
    .end local v0    # "$r2":Ljava/util/List;, ""
    .end local v5    # "$r5":Lb/a/b/a/o$f;, ""
    .end local v4    # "$r4":Ljava/lang/Object;, ""
    .end local v1    # "$r3":Ljava/util/Iterator;, ""
    .end local v2    # "$z0":Z, ""
    .end local v3    # "$z1":Z, ""
.end method

.method public a(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lio/flutter/app/f;->f:Ljava/util/Map;

    .local v0, "$r1":Ljava/util/Map;, ""
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    .local v1, "$z0":Z, ""
    return v1
    .end local v0    # "$r1":Ljava/util/Map;, ""
    .end local v1    # "$z0":Z, ""
.end method

.method public b(Ljava/lang/String;)Lb/a/b/a/o$c;
    .locals 7

    iget-object v0, p0, Lio/flutter/app/f;->f:Ljava/util/Map;

    .local v0, "$r2":Ljava/util/Map;, ""
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    .local v1, "$z0":Z, ""
    if-nez v1, :cond_0

    iget-object v0, p0, Lio/flutter/app/f;->f:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lio/flutter/app/f$a;

    .local v3, "$r3":Lio/flutter/app/f$a;, ""
    invoke-direct {v3, p0, p1}, Lio/flutter/app/f$a;-><init>(Lio/flutter/app/f;Ljava/lang/String;)V

    return-object v3

    :cond_0
    new-instance v4, Ljava/lang/IllegalStateException;

    .local v4, "$r4":Ljava/lang/IllegalStateException;, ""
    new-instance v5, Ljava/lang/StringBuilder;

    .local v5, "$r5":Ljava/lang/StringBuilder;, ""
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Plugin key "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is already in use"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .local p1, "$r1":Ljava/lang/String;, ""
    invoke-direct {v4, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    .end local v5    # "$r5":Ljava/lang/StringBuilder;, ""
    .end local p1    # "$r1":Ljava/lang/String;, ""
    .end local v1    # "$z0":Z, ""
    .end local v3    # "$r3":Lio/flutter/app/f$a;, ""
    .end local v0    # "$r2":Ljava/util/Map;, ""
    .end local v4    # "$r4":Ljava/lang/IllegalStateException;, ""
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lio/flutter/app/f;->e:Lio/flutter/plugin/platform/m;

    .local v0, "$r1":Lio/flutter/plugin/platform/m;, ""
    invoke-virtual {v0}, Lio/flutter/plugin/platform/m;->d()V

    return-void
    .end local v0    # "$r1":Lio/flutter/plugin/platform/m;, ""
.end method

.method public c()Lio/flutter/plugin/platform/m;
    .locals 1

    iget-object v0, p0, Lio/flutter/app/f;->e:Lio/flutter/plugin/platform/m;

    .local v0, "r1":Lio/flutter/plugin/platform/m;, ""
    return-object v0
    .end local v0    # "r1":Lio/flutter/plugin/platform/m;, ""
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lio/flutter/app/f;->e:Lio/flutter/plugin/platform/m;

    .local v0, "$r1":Lio/flutter/plugin/platform/m;, ""
    invoke-virtual {v0}, Lio/flutter/plugin/platform/m;->c()V

    return-void
    .end local v0    # "$r1":Lio/flutter/plugin/platform/m;, ""
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 7

    iget-object v0, p0, Lio/flutter/app/f;->h:Ljava/util/List;

    .local v0, "$r2":Ljava/util/List;, ""
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "$r3":Ljava/util/Iterator;, ""
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    .local v2, "$z0":Z, ""
    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "$r4":Ljava/lang/Object;, ""
    move-object v5, v3

    check-cast v5, Lb/a/b/a/o$a;

    move-object v4, v5

    .local v4, "$r5":Lb/a/b/a/o$a;, ""
    invoke-interface {v4, p1, p2, p3}, Lb/a/b/a/o$a;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v6, 0x1

    return v6

    :cond_1
    const/4 v6, 0x0

    return v6
    .end local v3    # "$r4":Ljava/lang/Object;, ""
    .end local v2    # "$z0":Z, ""
    .end local v4    # "$r5":Lb/a/b/a/o$a;, ""
    .end local v1    # "$r3":Ljava/util/Iterator;, ""
    .end local v0    # "$r2":Ljava/util/List;, ""
.end method

.method public onNewIntent(Landroid/content/Intent;)Z
    .locals 7

    iget-object v0, p0, Lio/flutter/app/f;->i:Ljava/util/List;

    .local v0, "$r2":Ljava/util/List;, ""
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "$r3":Ljava/util/Iterator;, ""
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    .local v2, "$z0":Z, ""
    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "$r4":Ljava/lang/Object;, ""
    move-object v5, v3

    check-cast v5, Lb/a/b/a/o$b;

    move-object v4, v5

    .local v4, "$r5":Lb/a/b/a/o$b;, ""
    invoke-interface {v4, p1}, Lb/a/b/a/o$b;->onNewIntent(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v6, 0x1

    return v6

    :cond_1
    const/4 v6, 0x0

    return v6
    .end local v0    # "$r2":Ljava/util/List;, ""
    .end local v2    # "$z0":Z, ""
    .end local v4    # "$r5":Lb/a/b/a/o$b;, ""
    .end local v1    # "$r3":Ljava/util/Iterator;, ""
    .end local v3    # "$r4":Ljava/lang/Object;, ""
.end method

.method public onUserLeaveHint()V
    .locals 6

    iget-object v0, p0, Lio/flutter/app/f;->j:Ljava/util/List;

    .local v0, "$r1":Ljava/util/List;, ""
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "$r2":Ljava/util/Iterator;, ""
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    .local v2, "$z0":Z, ""
    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "$r3":Ljava/lang/Object;, ""
    move-object v5, v3

    check-cast v5, Lb/a/b/a/o$e;

    move-object v4, v5

    .local v4, "$r4":Lb/a/b/a/o$e;, ""
    invoke-interface {v4}, Lb/a/b/a/o$e;->onUserLeaveHint()V

    goto :goto_0

    :cond_0
    return-void
    .end local v1    # "$r2":Ljava/util/Iterator;, ""
    .end local v2    # "$z0":Z, ""
    .end local v0    # "$r1":Ljava/util/List;, ""
    .end local v4    # "$r4":Lb/a/b/a/o$e;, ""
    .end local v3    # "$r3":Ljava/lang/Object;, ""
.end method
