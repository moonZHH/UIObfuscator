.class final Lio/flutter/plugins/urllauncher/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/a/b/a/m$c;


# instance fields
.field private final a:Lio/flutter/plugins/urllauncher/b;

.field private b:Lb/a/b/a/m;


# direct methods
.method constructor <init>(Lio/flutter/plugins/urllauncher/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/plugins/urllauncher/a;->a:Lio/flutter/plugins/urllauncher/b;

    return-void
.end method

.method private static a(Ljava/util/Map;)Landroid/os/Bundle;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    .local v0, "$r1":Landroid/os/Bundle;, ""
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .local v1, "$r2":Ljava/util/Set;, ""
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "$r3":Ljava/util/Iterator;, ""
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    .local v3, "$z0":Z, ""
    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "$r4":Ljava/lang/Object;, ""
    move-object v6, v4

    check-cast v6, Ljava/lang/String;

    move-object v5, v6

    .local v5, "$r5":Ljava/lang/String;, ""
    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Ljava/lang/String;

    move-object v7, v8

    .local v7, "$r6":Ljava/lang/String;, ""
    invoke-virtual {v0, v5, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-object v0
    .end local v0    # "$r1":Landroid/os/Bundle;, ""
    .end local v5    # "$r5":Ljava/lang/String;, ""
    .end local v1    # "$r2":Ljava/util/Set;, ""
    .end local v4    # "$r4":Ljava/lang/Object;, ""
    .end local v7    # "$r6":Ljava/lang/String;, ""
    .end local v2    # "$r3":Ljava/util/Iterator;, ""
    .end local v3    # "$z0":Z, ""
.end method

.method private a(Lb/a/b/a/k;Lb/a/b/a/m$d;Ljava/lang/String;)V
    .locals 24

    const-string v7, "useWebView"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lb/a/b/a/k;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .local v6, "$r5":Ljava/lang/Object;, ""
    move-object v9, v6

    check-cast v9, Ljava/lang/Boolean;

    move-object v8, v9

    .local v8, "$r6":Ljava/lang/Boolean;, ""
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    .local v10, "$z0":Z, ""
    const-string v7, "enableJavaScript"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lb/a/b/a/k;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    move-object v11, v6

    check-cast v11, Ljava/lang/Boolean;

    move-object v8, v11

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    .local v12, "$z1":Z, ""
    const-string v7, "enableDomStorage"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lb/a/b/a/k;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    move-object v13, v6

    check-cast v13, Ljava/lang/Boolean;

    move-object v8, v13

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    .local v14, "$z2":Z, ""
    const-string v7, "headers"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lb/a/b/a/k;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v16, v6

    check-cast v16, Ljava/util/Map;

    move-object/from16 v15, v16

    invoke-static {v15}, Lio/flutter/plugins/urllauncher/a;->a(Ljava/util/Map;)Landroid/os/Bundle;

    move-result-object v17

    .local v17, "$r8":Landroid/os/Bundle;, ""
    move-object/from16 v0, p0

    .local v0, "$r2":Lio/flutter/plugins/urllauncher/b;, ""
    iget-object v0, v0, Lio/flutter/plugins/urllauncher/a;->a:Lio/flutter/plugins/urllauncher/b;

    move-object/from16 v18, v0

    .end local v0    # "$r2":Lio/flutter/plugins/urllauncher/b;, ""
    .local v18, "$r2":Lio/flutter/plugins/urllauncher/b;, ""
    move-object/from16 v1, p3

    move-object/from16 v2, v17

    move v3, v10

    move v4, v12

    move v5, v14

    invoke-virtual/range {v0 .. v5}, Lio/flutter/plugins/urllauncher/b;->a(Ljava/lang/String;Landroid/os/Bundle;ZZZ)Lio/flutter/plugins/urllauncher/b$a;

    move-result-object v19

    .local v19, "$r9":Lio/flutter/plugins/urllauncher/b$a;, ""
    sget-object v20, Lio/flutter/plugins/urllauncher/b$a;->b:Lio/flutter/plugins/urllauncher/b$a;

    .local v20, "$r10":Lio/flutter/plugins/urllauncher/b$a;, ""
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_0

    const-string v7, "NO_ACTIVITY"

    const-string v21, "Launching a URL requires a foreground activity."

    const/16 v22, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v7, v1, v2}, Lb/a/b/a/m$d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_0
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Lb/a/b/a/m$d;->a(Ljava/lang/Object;)V

    return-void
    .end local v14    # "$z2":Z, ""
    .end local v8    # "$r6":Ljava/lang/Boolean;, ""
    .end local v18    # "$r2":Lio/flutter/plugins/urllauncher/b;, ""
    .end local v20    # "$r10":Lio/flutter/plugins/urllauncher/b$a;, ""
    .end local v19    # "$r9":Lio/flutter/plugins/urllauncher/b$a;, ""
    .end local v10    # "$z0":Z, ""
    .end local v12    # "$z1":Z, ""
    .end local v6    # "$r5":Ljava/lang/Object;, ""
    .end local v17    # "$r8":Landroid/os/Bundle;, ""
.end method

.method private a(Lb/a/b/a/m$d;)V
    .locals 2

    iget-object v0, p0, Lio/flutter/plugins/urllauncher/a;->a:Lio/flutter/plugins/urllauncher/b;

    .local v0, "$r2":Lio/flutter/plugins/urllauncher/b;, ""
    invoke-virtual {v0}, Lio/flutter/plugins/urllauncher/b;->a()V

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lb/a/b/a/m$d;->a(Ljava/lang/Object;)V

    return-void
    .end local v0    # "$r2":Lio/flutter/plugins/urllauncher/b;, ""
.end method

.method private a(Lb/a/b/a/m$d;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lio/flutter/plugins/urllauncher/a;->a:Lio/flutter/plugins/urllauncher/b;

    .local v0, "$r2":Lio/flutter/plugins/urllauncher/b;, ""
    invoke-virtual {v0, p2}, Lio/flutter/plugins/urllauncher/b;->a(Ljava/lang/String;)Z

    move-result v1

    .local v1, "$z0":Z, ""
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .local v2, "$r4":Ljava/lang/Boolean;, ""
    invoke-interface {p1, v2}, Lb/a/b/a/m$d;->a(Ljava/lang/Object;)V

    return-void
    .end local v0    # "$r2":Lio/flutter/plugins/urllauncher/b;, ""
    .end local v1    # "$z0":Z, ""
    .end local v2    # "$r4":Ljava/lang/Boolean;, ""
.end method


# virtual methods
.method a()V
    .locals 4

    iget-object v0, p0, Lio/flutter/plugins/urllauncher/a;->b:Lb/a/b/a/m;

    .local v0, "$r1":Lb/a/b/a/m;, ""
    if-nez v0, :cond_0

    const-string v1, "MethodCallHandlerImpl"

    const-string v2, "Tried to stop listening when no MethodChannel had been initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lio/flutter/plugins/urllauncher/a;->b:Lb/a/b/a/m;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lb/a/b/a/m;->a(Lb/a/b/a/m$c;)V

    const/4 v3, 0x0

    iput-object v3, p0, Lio/flutter/plugins/urllauncher/a;->b:Lb/a/b/a/m;

    return-void
    .end local v0    # "$r1":Lb/a/b/a/m;, ""
.end method

.method a(Lb/a/b/a/e;)V
    .locals 3

    iget-object v0, p0, Lio/flutter/plugins/urllauncher/a;->b:Lb/a/b/a/m;

    .local v0, "$r2":Lb/a/b/a/m;, ""
    if-eqz v0, :cond_0

    const-string v1, "MethodCallHandlerImpl"

    const-string v2, "Setting a method call handler before the last was disposed."

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lio/flutter/plugins/urllauncher/a;->a()V

    :cond_0
    new-instance v0, Lb/a/b/a/m;

    const-string v1, "plugins.flutter.io/url_launcher"

    invoke-direct {v0, p1, v1}, Lb/a/b/a/m;-><init>(Lb/a/b/a/e;Ljava/lang/String;)V

    iput-object v0, p0, Lio/flutter/plugins/urllauncher/a;->b:Lb/a/b/a/m;

    iget-object v0, p0, Lio/flutter/plugins/urllauncher/a;->b:Lb/a/b/a/m;

    invoke-virtual {v0, p0}, Lb/a/b/a/m;->a(Lb/a/b/a/m$c;)V

    return-void
    .end local v0    # "$r2":Lb/a/b/a/m;, ""
.end method

.method public a(Lb/a/b/a/k;Lb/a/b/a/m$d;)V
    .locals 9

    const-string v1, "url"

    invoke-virtual {p1, v1}, Lb/a/b/a/k;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .local v0, "$r3":Ljava/lang/Object;, ""
    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    move-object v2, v3

    .local v2, "$r4":Ljava/lang/String;, ""
    iget-object v4, p1, Lb/a/b/a/k;->a:Ljava/lang/String;

    .local v4, "$r5":Ljava/lang/String;, ""
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    .local v5, "$i0":I, ""
    const v6, -0x4226dc4d

    if-eq v5, v6, :cond_2

    const v6, -0xb0b8c5d

    if-eq v5, v6, :cond_1

    const v6, -0x73fbcff

    if-eq v5, v6, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "closeWebView"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .local v7, "$z0":Z, ""
    if-eqz v7, :cond_3

    const/4 v8, 0x2

    .local v8, "$b1":B, ""
    goto :goto_1

    :cond_1
    const-string v1, "canLaunch"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v8, 0x0

    goto :goto_1

    :cond_2
    const-string v1, "launch"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v8, 0x1

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v8, -0x1

    :goto_1
    sparse-switch v8, :sswitch_data_0

    goto :goto_2

    :goto_2
    invoke-interface {p2}, Lb/a/b/a/m$d;->a()V

    return-void

    :sswitch_0
    invoke-direct {p0, p2}, Lio/flutter/plugins/urllauncher/a;->a(Lb/a/b/a/m$d;)V

    return-void

    :sswitch_1
    invoke-direct {p0, p1, p2, v2}, Lio/flutter/plugins/urllauncher/a;->a(Lb/a/b/a/k;Lb/a/b/a/m$d;Ljava/lang/String;)V

    return-void

    :sswitch_2
    invoke-direct {p0, p2, v2}, Lio/flutter/plugins/urllauncher/a;->a(Lb/a/b/a/m$d;Ljava/lang/String;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
    .end sparse-switch
    .end local v0    # "$r3":Ljava/lang/Object;, ""
    .end local v8    # "$b1":B, ""
    .end local v7    # "$z0":Z, ""
    .end local v2    # "$r4":Ljava/lang/String;, ""
    .end local v4    # "$r5":Ljava/lang/String;, ""
    .end local v5    # "$i0":I, ""
.end method
