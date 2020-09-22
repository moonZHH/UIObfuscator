.class Lb/a/c/a/a;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/a/c/a/b;->a(Landroid/content/SharedPreferences$Editor;Lb/a/b/a/m$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/SharedPreferences$Editor;

.field final synthetic b:Lb/a/b/a/m$d;

.field final synthetic c:Lb/a/c/a/b;


# direct methods
.method constructor <init>(Lb/a/c/a/b;Landroid/content/SharedPreferences$Editor;Lb/a/b/a/m$d;)V
    .locals 0

    iput-object p1, p0, Lb/a/c/a/a;->c:Lb/a/c/a/b;

    iput-object p2, p0, Lb/a/c/a/a;->a:Landroid/content/SharedPreferences$Editor;

    iput-object p3, p0, Lb/a/c/a/a;->b:Lb/a/b/a/m$d;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 3

    iget-object v0, p0, Lb/a/c/a/a;->a:Landroid/content/SharedPreferences$Editor;

    .local v0, "$r2":Landroid/content/SharedPreferences$Editor;, ""
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    .local v1, "$z0":Z, ""
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .local v2, "$r3":Ljava/lang/Boolean;, ""
    return-object v2
    .end local v2    # "$r3":Ljava/lang/Boolean;, ""
    .end local v1    # "$z0":Z, ""
    .end local v0    # "$r2":Landroid/content/SharedPreferences$Editor;, ""
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 1

    iget-object v0, p0, Lb/a/c/a/a;->b:Lb/a/b/a/m$d;

    .local v0, "$r2":Lb/a/b/a/m$d;, ""
    invoke-interface {v0, p1}, Lb/a/b/a/m$d;->a(Ljava/lang/Object;)V

    return-void
    .end local v0    # "$r2":Lb/a/b/a/m$d;, ""
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    move-object v1, p1

    check-cast v1, [Ljava/lang/Void;

    move-object v0, v1

    .local v0, "$r3":[Ljava/lang/Void;, ""
    invoke-virtual {p0, v0}, Lb/a/c/a/a;->a([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v2

    .local v2, "$r1":Ljava/lang/Boolean;, ""
    return-object v2
    .end local v2    # "$r1":Ljava/lang/Boolean;, ""
    .end local v0    # "$r3":[Ljava/lang/Void;, ""
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    move-object v1, p1

    check-cast v1, Ljava/lang/Boolean;

    move-object v0, v1

    .local v0, "$r2":Ljava/lang/Boolean;, ""
    invoke-virtual {p0, v0}, Lb/a/c/a/a;->a(Ljava/lang/Boolean;)V

    return-void
    .end local v0    # "$r2":Ljava/lang/Boolean;, ""
.end method
