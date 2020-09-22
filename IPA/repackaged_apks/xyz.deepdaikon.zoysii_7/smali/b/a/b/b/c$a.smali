.class Lb/a/b/b/c$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/b/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InputTarget"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/b/b/c$a$a;
    }
.end annotation


# instance fields
.field a:Lb/a/b/b/c$a$a;

.field b:I


# direct methods
.method public constructor <init>(Lb/a/b/b/c$a$a;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/a/b/b/c$a;->a:Lb/a/b/b/c$a$a;

    iput p2, p0, Lb/a/b/b/c$a;->b:I

    return-void
.end method
