.class public Lio/flutter/embedding/engine/e/b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/embedding/engine/e/a;,
        Lio/flutter/embedding/engine/e/b$a;
    }
.end annotation


# instance fields
.field public final a:Lb/a/b/a/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/a/b/a/d",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lio/flutter/embedding/engine/FlutterJNI;

.field private c:Lio/flutter/embedding/engine/e/b$a;

.field private final d:Lb/a/b/a/d$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/a/b/a/d$c",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/flutter/embedding/engine/a/b;Lio/flutter/embedding/engine/FlutterJNI;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/flutter/embedding/engine/e/a;

    .local v0, "$r4":Lio/flutter/embedding/engine/e/a;, ""
    invoke-direct {v0, p0}, Lio/flutter/embedding/engine/e/a;-><init>(Lio/flutter/embedding/engine/e/b;)V

    iput-object v0, p0, Lio/flutter/embedding/engine/e/b;->d:Lb/a/b/a/d$c;

    new-instance v1, Lb/a/b/a/d;

    .local v1, "$r5":Lb/a/b/a/d;, ""
    sget-object v2, Lb/a/b/a/p;->a:Lb/a/b/a/p;

    .local v2, "$r2":Lb/a/b/a/p;, ""
    const-string v3, "flutter/accessibility"

    invoke-direct {v1, p1, v3, v2}, Lb/a/b/a/d;-><init>(Lb/a/b/a/e;Ljava/lang/String;Lb/a/b/a/j;)V

    iput-object v1, p0, Lio/flutter/embedding/engine/e/b;->a:Lb/a/b/a/d;

    iget-object v1, p0, Lio/flutter/embedding/engine/e/b;->a:Lb/a/b/a/d;

    iget-object v4, p0, Lio/flutter/embedding/engine/e/b;->d:Lb/a/b/a/d$c;

    .local v4, "$r6":Lb/a/b/a/d$c;, ""
    invoke-virtual {v1, v4}, Lb/a/b/a/d;->a(Lb/a/b/a/d$c;)V

    iput-object p2, p0, Lio/flutter/embedding/engine/e/b;->b:Lio/flutter/embedding/engine/FlutterJNI;

    return-void
    .end local v2    # "$r2":Lb/a/b/a/p;, ""
    .end local v0    # "$r4":Lio/flutter/embedding/engine/e/a;, ""
    .end local v1    # "$r5":Lb/a/b/a/d;, ""
    .end local v4    # "$r6":Lb/a/b/a/d$c;, ""
.end method

.method static synthetic a(Lio/flutter/embedding/engine/e/b;)Lio/flutter/embedding/engine/e/b$a;
    .locals 1

    iget-object v0, p0, Lio/flutter/embedding/engine/e/b;->c:Lio/flutter/embedding/engine/e/b$a;

    .local v0, "r1":Lio/flutter/embedding/engine/e/b$a;, ""
    return-object v0
    .end local v0    # "r1":Lio/flutter/embedding/engine/e/b$a;, ""
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lio/flutter/embedding/engine/e/b;->b:Lio/flutter/embedding/engine/FlutterJNI;

    .local v0, "$r1":Lio/flutter/embedding/engine/FlutterJNI;, ""
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/FlutterJNI;->setSemanticsEnabled(Z)V

    return-void
    .end local v0    # "$r1":Lio/flutter/embedding/engine/FlutterJNI;, ""
.end method

.method public a(I)V
    .locals 1

    iget-object v0, p0, Lio/flutter/embedding/engine/e/b;->b:Lio/flutter/embedding/engine/FlutterJNI;

    .local v0, "$r1":Lio/flutter/embedding/engine/FlutterJNI;, ""
    invoke-virtual {v0, p1}, Lio/flutter/embedding/engine/FlutterJNI;->setAccessibilityFeatures(I)V

    return-void
    .end local v0    # "$r1":Lio/flutter/embedding/engine/FlutterJNI;, ""
.end method

.method public a(ILio/flutter/view/g$b;)V
    .locals 1

    iget-object v0, p0, Lio/flutter/embedding/engine/e/b;->b:Lio/flutter/embedding/engine/FlutterJNI;

    .local v0, "$r2":Lio/flutter/embedding/engine/FlutterJNI;, ""
    invoke-virtual {v0, p1, p2}, Lio/flutter/embedding/engine/FlutterJNI;->dispatchSemanticsAction(ILio/flutter/view/g$b;)V

    return-void
    .end local v0    # "$r2":Lio/flutter/embedding/engine/FlutterJNI;, ""
.end method

.method public a(ILio/flutter/view/g$b;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lio/flutter/embedding/engine/e/b;->b:Lio/flutter/embedding/engine/FlutterJNI;

    .local v0, "$r3":Lio/flutter/embedding/engine/FlutterJNI;, ""
    invoke-virtual {v0, p1, p2, p3}, Lio/flutter/embedding/engine/FlutterJNI;->dispatchSemanticsAction(ILio/flutter/view/g$b;Ljava/lang/Object;)V

    return-void
    .end local v0    # "$r3":Lio/flutter/embedding/engine/FlutterJNI;, ""
.end method

.method public a(Lio/flutter/embedding/engine/e/b$a;)V
    .locals 1

    iput-object p1, p0, Lio/flutter/embedding/engine/e/b;->c:Lio/flutter/embedding/engine/e/b$a;

    iget-object v0, p0, Lio/flutter/embedding/engine/e/b;->b:Lio/flutter/embedding/engine/FlutterJNI;

    .local v0, "$r2":Lio/flutter/embedding/engine/FlutterJNI;, ""
    invoke-virtual {v0, p1}, Lio/flutter/embedding/engine/FlutterJNI;->setAccessibilityDelegate(Lio/flutter/embedding/engine/FlutterJNI$a;)V

    return-void
    .end local v0    # "$r2":Lio/flutter/embedding/engine/FlutterJNI;, ""
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lio/flutter/embedding/engine/e/b;->b:Lio/flutter/embedding/engine/FlutterJNI;

    .local v0, "$r1":Lio/flutter/embedding/engine/FlutterJNI;, ""
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/FlutterJNI;->setSemanticsEnabled(Z)V

    return-void
    .end local v0    # "$r1":Lio/flutter/embedding/engine/FlutterJNI;, ""
.end method
