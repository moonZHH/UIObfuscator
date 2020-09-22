.class public Landroidx/versionedparcelable/ParcelImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/versionedparcelable/a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroidx/versionedparcelable/ParcelImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Landroidx/versionedparcelable/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/versionedparcelable/a;

    .local v0, "$r0":Landroidx/versionedparcelable/a;, ""
    invoke-direct {v0}, Landroidx/versionedparcelable/a;-><init>()V

    sput-object v0, Landroidx/versionedparcelable/ParcelImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
    .end local v0    # "$r0":Landroidx/versionedparcelable/a;, ""
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/versionedparcelable/c;

    .local v0, "$r1":Landroidx/versionedparcelable/c;, ""
    invoke-direct {v0, p1}, Landroidx/versionedparcelable/c;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {v0}, Landroidx/versionedparcelable/b;->h()Landroidx/versionedparcelable/d;

    move-result-object v1

    .local v1, "$r2":Landroidx/versionedparcelable/d;, ""
    iput-object v1, p0, Landroidx/versionedparcelable/ParcelImpl;->a:Landroidx/versionedparcelable/d;

    return-void
    .end local v1    # "$r2":Landroidx/versionedparcelable/d;, ""
    .end local v0    # "$r1":Landroidx/versionedparcelable/c;, ""
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    new-instance v0, Landroidx/versionedparcelable/c;

    .local v0, "$r2":Landroidx/versionedparcelable/c;, ""
    invoke-direct {v0, p1}, Landroidx/versionedparcelable/c;-><init>(Landroid/os/Parcel;)V

    iget-object v1, p0, Landroidx/versionedparcelable/ParcelImpl;->a:Landroidx/versionedparcelable/d;

    .local v1, "$r3":Landroidx/versionedparcelable/d;, ""
    invoke-virtual {v0, v1}, Landroidx/versionedparcelable/b;->a(Landroidx/versionedparcelable/d;)V

    return-void
    .end local v0    # "$r2":Landroidx/versionedparcelable/c;, ""
    .end local v1    # "$r3":Landroidx/versionedparcelable/d;, ""
.end method
