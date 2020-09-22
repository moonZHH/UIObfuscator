.class public Lio/flutter/embedding/engine/plugins/lifecycle/HiddenLifecycleReference;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# instance fields
.field private final lifecycle:Landroid/arch/lifecycle/a;


# direct methods
.method public constructor <init>(Landroid/arch/lifecycle/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/embedding/engine/plugins/lifecycle/HiddenLifecycleReference;->lifecycle:Landroid/arch/lifecycle/a;

    return-void
.end method


# virtual methods
.method public getLifecycle()Landroid/arch/lifecycle/a;
    .locals 1

    iget-object v0, p0, Lio/flutter/embedding/engine/plugins/lifecycle/HiddenLifecycleReference;->lifecycle:Landroid/arch/lifecycle/a;

    .local v0, "r1":Landroid/arch/lifecycle/a;, ""
    return-object v0
    .end local v0    # "r1":Landroid/arch/lifecycle/a;, ""
.end method
