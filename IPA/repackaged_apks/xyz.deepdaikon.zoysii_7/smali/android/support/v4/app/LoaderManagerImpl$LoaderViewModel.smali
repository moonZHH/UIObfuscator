.class Landroid/support/v4/app/LoaderManagerImpl$LoaderViewModel;
.super Landroid/arch/lifecycle/c;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/LoaderManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LoaderViewModel"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/a;
    }
.end annotation


# static fields
.field private static final a:Landroid/arch/lifecycle/d$a;


# instance fields
.field private b:La/a/a/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/a/a/a/b",
            "<",
            "Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/support/v4/app/a;

    .local v0, "$r0":Landroid/support/v4/app/a;, ""
    invoke-direct {v0}, Landroid/support/v4/app/a;-><init>()V

    sput-object v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderViewModel;->a:Landroid/arch/lifecycle/d$a;

    return-void
    .end local v0    # "$r0":Landroid/support/v4/app/a;, ""
.end method

.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/arch/lifecycle/c;-><init>()V

    new-instance v0, La/a/a/a/b;

    .local v0, "$r1":La/a/a/a/b;, ""
    invoke-direct {v0}, La/a/a/a/b;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderViewModel;->b:La/a/a/a/b;

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderViewModel;->c:Z

    return-void
    .end local v0    # "$r1":La/a/a/a/b;, ""
.end method
