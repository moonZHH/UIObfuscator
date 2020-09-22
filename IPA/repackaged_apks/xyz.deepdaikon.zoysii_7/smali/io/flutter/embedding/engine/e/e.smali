.class public Lio/flutter/embedding/engine/e/e;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Lb/a/b/a/m;


# direct methods
.method public constructor <init>(Lio/flutter/embedding/engine/a/b;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lb/a/b/a/m;

    .local v0, "$r2":Lb/a/b/a/m;, ""
    sget-object v1, Lb/a/b/a/h;->a:Lb/a/b/a/h;

    .local v1, "$r3":Lb/a/b/a/h;, ""
    const-string v2, "flutter/localization"

    invoke-direct {v0, p1, v2, v1}, Lb/a/b/a/m;-><init>(Lb/a/b/a/e;Ljava/lang/String;Lb/a/b/a/n;)V

    iput-object v0, p0, Lio/flutter/embedding/engine/e/e;->a:Lb/a/b/a/m;

    return-void
    .end local v0    # "$r2":Lb/a/b/a/m;, ""
    .end local v1    # "$r3":Lb/a/b/a/h;, ""
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Locale;",
            ">;)V"
        }
    .end annotation

    const-string v0, "LocalizationChannel"

    const-string v1, "Sending Locales to Flutter."

    invoke-static {v0, v1}, Lb/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    .local v2, "$r2":Ljava/util/ArrayList;, ""
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "$r3":Ljava/util/Iterator;, ""
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    .local v4, "$z0":Z, ""
    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .local v5, "$r4":Ljava/lang/Object;, ""
    move-object v7, v5

    check-cast v7, Ljava/util/Locale;

    move-object v6, v7

    .local v6, "$r5":Ljava/util/Locale;, ""
    new-instance v8, Ljava/lang/StringBuilder;

    .local v8, "$r6":Ljava/lang/StringBuilder;, ""
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Locale (Language: "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v9

    .local v9, "$r7":Ljava/lang/String;, ""
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", Country: "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", Variant: "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v0, "LocalizationChannel"

    invoke-static {v0, v9}, Lb/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    .local v10, "$i0":I, ""
    const/16 v11, 0x15

    if-lt v10, v11, :cond_0

    invoke-virtual {v6}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    :cond_0
    const-string v9, ""

    :goto_1
    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v12, p0, Lio/flutter/embedding/engine/e/e;->a:Lb/a/b/a/m;

    .local v12, "$r8":Lb/a/b/a/m;, ""
    const-string v0, "setLocale"

    invoke-virtual {v12, v0, v2}, Lb/a/b/a/m;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
    .end local v8    # "$r6":Ljava/lang/StringBuilder;, ""
    .end local v4    # "$z0":Z, ""
    .end local v6    # "$r5":Ljava/util/Locale;, ""
    .end local v3    # "$r3":Ljava/util/Iterator;, ""
    .end local v10    # "$i0":I, ""
    .end local v9    # "$r7":Ljava/lang/String;, ""
    .end local v2    # "$r2":Ljava/util/ArrayList;, ""
    .end local v12    # "$r8":Lb/a/b/a/m;, ""
    .end local v5    # "$r4":Ljava/lang/Object;, ""
.end method
