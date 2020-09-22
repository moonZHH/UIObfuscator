.class public Lio/flutter/embedding/engine/e/p;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/embedding/engine/e/p$b;,
        Lio/flutter/embedding/engine/e/p$a;,
        Lio/flutter/embedding/engine/e/p$f;,
        Lio/flutter/embedding/engine/e/p$e;,
        Lio/flutter/embedding/engine/e/o;,
        Lio/flutter/embedding/engine/e/p$d;,
        Lio/flutter/embedding/engine/e/p$c;
    }
.end annotation


# instance fields
.field public final a:Lb/a/b/a/m;

.field private b:Lio/flutter/embedding/engine/e/p$e;

.field private final c:Lb/a/b/a/m$c;


# direct methods
.method public constructor <init>(Lio/flutter/embedding/engine/a/b;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/flutter/embedding/engine/e/o;

    .local v0, "$r3":Lio/flutter/embedding/engine/e/o;, ""
    invoke-direct {v0, p0}, Lio/flutter/embedding/engine/e/o;-><init>(Lio/flutter/embedding/engine/e/p;)V

    iput-object v0, p0, Lio/flutter/embedding/engine/e/p;->c:Lb/a/b/a/m$c;

    new-instance v1, Lb/a/b/a/m;

    .local v1, "$r4":Lb/a/b/a/m;, ""
    sget-object v2, Lb/a/b/a/h;->a:Lb/a/b/a/h;

    .local v2, "$r1":Lb/a/b/a/h;, ""
    const-string v3, "flutter/textinput"

    invoke-direct {v1, p1, v3, v2}, Lb/a/b/a/m;-><init>(Lb/a/b/a/e;Ljava/lang/String;Lb/a/b/a/n;)V

    iput-object v1, p0, Lio/flutter/embedding/engine/e/p;->a:Lb/a/b/a/m;

    iget-object v1, p0, Lio/flutter/embedding/engine/e/p;->a:Lb/a/b/a/m;

    iget-object v4, p0, Lio/flutter/embedding/engine/e/p;->c:Lb/a/b/a/m$c;

    .local v4, "$r5":Lb/a/b/a/m$c;, ""
    invoke-virtual {v1, v4}, Lb/a/b/a/m;->a(Lb/a/b/a/m$c;)V

    return-void
    .end local v1    # "$r4":Lb/a/b/a/m;, ""
    .end local v4    # "$r5":Lb/a/b/a/m$c;, ""
    .end local v2    # "$r1":Lb/a/b/a/h;, ""
    .end local v0    # "$r3":Lio/flutter/embedding/engine/e/o;, ""
.end method

.method static synthetic a(Lio/flutter/embedding/engine/e/p;)Lio/flutter/embedding/engine/e/p$e;
    .locals 1

    iget-object v0, p0, Lio/flutter/embedding/engine/e/p;->b:Lio/flutter/embedding/engine/e/p$e;

    .local v0, "r1":Lio/flutter/embedding/engine/e/p$e;, ""
    return-object v0
    .end local v0    # "r1":Lio/flutter/embedding/engine/e/p$e;, ""
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lio/flutter/embedding/engine/e/p;->a:Lb/a/b/a/m;

    .local v0, "$r1":Lb/a/b/a/m;, ""
    const-string v1, "TextInputClient.requestExistingInputState"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lb/a/b/a/m;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
    .end local v0    # "$r1":Lb/a/b/a/m;, ""
.end method

.method public a(I)V
    .locals 7

    const-string v0, "TextInputChannel"

    const-string v1, "Sending \'newline\' message."

    invoke-static {v0, v1}, Lb/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lio/flutter/embedding/engine/e/p;->a:Lb/a/b/a/m;

    .local v2, "$r1":Lb/a/b/a/m;, ""
    const/4 v4, 0x2

    new-array v3, v4, [Ljava/io/Serializable;

    .local v3, "$r2":[Ljava/io/Serializable;, ""
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .local v5, "$r3":Ljava/lang/Integer;, ""
    const/4 v4, 0x0

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v0, "TextInputAction.newline"

    aput-object v0, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .local v6, "$r4":Ljava/util/List;, ""
    const-string v0, "TextInputClient.performAction"

    invoke-virtual {v2, v0, v6}, Lb/a/b/a/m;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
    .end local v5    # "$r3":Ljava/lang/Integer;, ""
    .end local v3    # "$r2":[Ljava/io/Serializable;, ""
    .end local v2    # "$r1":Lb/a/b/a/m;, ""
    .end local v6    # "$r4":Ljava/util/List;, ""
.end method

.method public a(ILjava/lang/String;IIII)V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    .local v0, "$r2":Ljava/lang/StringBuilder;, ""
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sending message to update editing state: \nText: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nSelection start: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nSelection end: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nComposing start: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nComposing end: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, "$r3":Ljava/lang/String;, ""
    const-string v1, "TextInputChannel"

    invoke-static {v1, v2}, Lb/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/util/HashMap;

    .local v3, "$r4":Ljava/util/HashMap;, ""
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v1, "text"

    invoke-virtual {v3, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .local v4, "$r5":Ljava/lang/Integer;, ""
    const-string v1, "selectionBase"

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v1, "selectionExtent"

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v1, "composingBase"

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v1, "composingExtent"

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lio/flutter/embedding/engine/e/p;->a:Lb/a/b/a/m;

    .local v5, "$r6":Lb/a/b/a/m;, ""
    const/4 v7, 0x2

    new-array v6, v7, [Ljava/io/Serializable;

    .local v6, "$r7":[Ljava/io/Serializable;, ""
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v7, 0x0

    aput-object v4, v6, v7

    const/4 v7, 0x1

    aput-object v3, v6, v7

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    .local v8, "$r8":Ljava/util/List;, ""
    const-string v1, "TextInputClient.updateEditingState"

    invoke-virtual {v5, v1, v8}, Lb/a/b/a/m;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
    .end local v2    # "$r3":Ljava/lang/String;, ""
    .end local v3    # "$r4":Ljava/util/HashMap;, ""
    .end local v8    # "$r8":Ljava/util/List;, ""
    .end local v4    # "$r5":Ljava/lang/Integer;, ""
    .end local v0    # "$r2":Ljava/lang/StringBuilder;, ""
    .end local v6    # "$r7":[Ljava/io/Serializable;, ""
    .end local v5    # "$r6":Lb/a/b/a/m;, ""
.end method

.method public a(Lio/flutter/embedding/engine/e/p$e;)V
    .locals 0

    iput-object p1, p0, Lio/flutter/embedding/engine/e/p;->b:Lio/flutter/embedding/engine/e/p$e;

    return-void
.end method

.method public b(I)V
    .locals 7

    const-string v0, "TextInputChannel"

    const-string v1, "Sending \'go\' message."

    invoke-static {v0, v1}, Lb/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lio/flutter/embedding/engine/e/p;->a:Lb/a/b/a/m;

    .local v2, "$r1":Lb/a/b/a/m;, ""
    const/4 v4, 0x2

    new-array v3, v4, [Ljava/io/Serializable;

    .local v3, "$r2":[Ljava/io/Serializable;, ""
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .local v5, "$r3":Ljava/lang/Integer;, ""
    const/4 v4, 0x0

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v0, "TextInputAction.go"

    aput-object v0, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .local v6, "$r4":Ljava/util/List;, ""
    const-string v0, "TextInputClient.performAction"

    invoke-virtual {v2, v0, v6}, Lb/a/b/a/m;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
    .end local v5    # "$r3":Ljava/lang/Integer;, ""
    .end local v6    # "$r4":Ljava/util/List;, ""
    .end local v3    # "$r2":[Ljava/io/Serializable;, ""
    .end local v2    # "$r1":Lb/a/b/a/m;, ""
.end method

.method public c(I)V
    .locals 7

    const-string v0, "TextInputChannel"

    const-string v1, "Sending \'search\' message."

    invoke-static {v0, v1}, Lb/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lio/flutter/embedding/engine/e/p;->a:Lb/a/b/a/m;

    .local v2, "$r1":Lb/a/b/a/m;, ""
    const/4 v4, 0x2

    new-array v3, v4, [Ljava/io/Serializable;

    .local v3, "$r2":[Ljava/io/Serializable;, ""
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .local v5, "$r3":Ljava/lang/Integer;, ""
    const/4 v4, 0x0

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v0, "TextInputAction.search"

    aput-object v0, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .local v6, "$r4":Ljava/util/List;, ""
    const-string v0, "TextInputClient.performAction"

    invoke-virtual {v2, v0, v6}, Lb/a/b/a/m;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
    .end local v3    # "$r2":[Ljava/io/Serializable;, ""
    .end local v6    # "$r4":Ljava/util/List;, ""
    .end local v2    # "$r1":Lb/a/b/a/m;, ""
    .end local v5    # "$r3":Ljava/lang/Integer;, ""
.end method

.method public d(I)V
    .locals 7

    const-string v0, "TextInputChannel"

    const-string v1, "Sending \'send\' message."

    invoke-static {v0, v1}, Lb/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lio/flutter/embedding/engine/e/p;->a:Lb/a/b/a/m;

    .local v2, "$r1":Lb/a/b/a/m;, ""
    const/4 v4, 0x2

    new-array v3, v4, [Ljava/io/Serializable;

    .local v3, "$r2":[Ljava/io/Serializable;, ""
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .local v5, "$r3":Ljava/lang/Integer;, ""
    const/4 v4, 0x0

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v0, "TextInputAction.send"

    aput-object v0, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .local v6, "$r4":Ljava/util/List;, ""
    const-string v0, "TextInputClient.performAction"

    invoke-virtual {v2, v0, v6}, Lb/a/b/a/m;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
    .end local v3    # "$r2":[Ljava/io/Serializable;, ""
    .end local v6    # "$r4":Ljava/util/List;, ""
    .end local v2    # "$r1":Lb/a/b/a/m;, ""
    .end local v5    # "$r3":Ljava/lang/Integer;, ""
.end method

.method public e(I)V
    .locals 7

    const-string v0, "TextInputChannel"

    const-string v1, "Sending \'done\' message."

    invoke-static {v0, v1}, Lb/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lio/flutter/embedding/engine/e/p;->a:Lb/a/b/a/m;

    .local v2, "$r1":Lb/a/b/a/m;, ""
    const/4 v4, 0x2

    new-array v3, v4, [Ljava/io/Serializable;

    .local v3, "$r2":[Ljava/io/Serializable;, ""
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .local v5, "$r3":Ljava/lang/Integer;, ""
    const/4 v4, 0x0

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v0, "TextInputAction.done"

    aput-object v0, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .local v6, "$r4":Ljava/util/List;, ""
    const-string v0, "TextInputClient.performAction"

    invoke-virtual {v2, v0, v6}, Lb/a/b/a/m;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
    .end local v2    # "$r1":Lb/a/b/a/m;, ""
    .end local v5    # "$r3":Ljava/lang/Integer;, ""
    .end local v6    # "$r4":Ljava/util/List;, ""
    .end local v3    # "$r2":[Ljava/io/Serializable;, ""
.end method

.method public f(I)V
    .locals 7

    const-string v0, "TextInputChannel"

    const-string v1, "Sending \'next\' message."

    invoke-static {v0, v1}, Lb/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lio/flutter/embedding/engine/e/p;->a:Lb/a/b/a/m;

    .local v2, "$r1":Lb/a/b/a/m;, ""
    const/4 v4, 0x2

    new-array v3, v4, [Ljava/io/Serializable;

    .local v3, "$r2":[Ljava/io/Serializable;, ""
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .local v5, "$r3":Ljava/lang/Integer;, ""
    const/4 v4, 0x0

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v0, "TextInputAction.next"

    aput-object v0, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .local v6, "$r4":Ljava/util/List;, ""
    const-string v0, "TextInputClient.performAction"

    invoke-virtual {v2, v0, v6}, Lb/a/b/a/m;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
    .end local v5    # "$r3":Ljava/lang/Integer;, ""
    .end local v6    # "$r4":Ljava/util/List;, ""
    .end local v2    # "$r1":Lb/a/b/a/m;, ""
    .end local v3    # "$r2":[Ljava/io/Serializable;, ""
.end method

.method public g(I)V
    .locals 7

    const-string v0, "TextInputChannel"

    const-string v1, "Sending \'previous\' message."

    invoke-static {v0, v1}, Lb/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lio/flutter/embedding/engine/e/p;->a:Lb/a/b/a/m;

    .local v2, "$r1":Lb/a/b/a/m;, ""
    const/4 v4, 0x2

    new-array v3, v4, [Ljava/io/Serializable;

    .local v3, "$r2":[Ljava/io/Serializable;, ""
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .local v5, "$r3":Ljava/lang/Integer;, ""
    const/4 v4, 0x0

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v0, "TextInputAction.previous"

    aput-object v0, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .local v6, "$r4":Ljava/util/List;, ""
    const-string v0, "TextInputClient.performAction"

    invoke-virtual {v2, v0, v6}, Lb/a/b/a/m;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
    .end local v6    # "$r4":Ljava/util/List;, ""
    .end local v2    # "$r1":Lb/a/b/a/m;, ""
    .end local v3    # "$r2":[Ljava/io/Serializable;, ""
    .end local v5    # "$r3":Ljava/lang/Integer;, ""
.end method

.method public h(I)V
    .locals 7

    const-string v0, "TextInputChannel"

    const-string v1, "Sending \'unspecified\' message."

    invoke-static {v0, v1}, Lb/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lio/flutter/embedding/engine/e/p;->a:Lb/a/b/a/m;

    .local v2, "$r1":Lb/a/b/a/m;, ""
    const/4 v4, 0x2

    new-array v3, v4, [Ljava/io/Serializable;

    .local v3, "$r2":[Ljava/io/Serializable;, ""
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .local v5, "$r3":Ljava/lang/Integer;, ""
    const/4 v4, 0x0

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v0, "TextInputAction.unspecified"

    aput-object v0, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .local v6, "$r4":Ljava/util/List;, ""
    const-string v0, "TextInputClient.performAction"

    invoke-virtual {v2, v0, v6}, Lb/a/b/a/m;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
    .end local v6    # "$r4":Ljava/util/List;, ""
    .end local v2    # "$r1":Lb/a/b/a/m;, ""
    .end local v5    # "$r3":Ljava/lang/Integer;, ""
    .end local v3    # "$r2":[Ljava/io/Serializable;, ""
.end method
