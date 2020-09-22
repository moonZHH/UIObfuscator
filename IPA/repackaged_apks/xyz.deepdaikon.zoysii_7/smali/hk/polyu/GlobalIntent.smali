.class public Lhk/polyu/GlobalIntent;
.super Ljava/lang/Object;
.source "GlobalIntent.java"


# static fields
.field public static instance:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lhk/polyu/GlobalIntent;->instance:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static proxyTransition(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    sput-object p1, Lhk/polyu/GlobalIntent;->instance:Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    .local v0, "$r3":Landroid/content/Intent;, ""
    const-class v1, Lhk/polyu/ProxyActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v2, v0

    .local v2, "r2":Landroid/content/Intent;, ""
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
    .end local v2    # "r2":Landroid/content/Intent;, ""
    .end local v0    # "$r3":Landroid/content/Intent;, ""
.end method
