.class final Landroidx/versionedparcelable/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/versionedparcelable/ParcelImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroidx/versionedparcelable/ParcelImpl;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroidx/versionedparcelable/ParcelImpl;
    .locals 1

    new-instance v0, Landroidx/versionedparcelable/ParcelImpl;

    .local v0, "$r2":Landroidx/versionedparcelable/ParcelImpl;, ""
    invoke-direct {v0, p1}, Landroidx/versionedparcelable/ParcelImpl;-><init>(Landroid/os/Parcel;)V

    return-object v0
    .end local v0    # "$r2":Landroidx/versionedparcelable/ParcelImpl;, ""
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/a;->createFromParcel(Landroid/os/Parcel;)Landroidx/versionedparcelable/ParcelImpl;

    move-result-object v0

    .local v0, "$r1":Landroidx/versionedparcelable/ParcelImpl;, ""
    return-object v0
    .end local v0    # "$r1":Landroidx/versionedparcelable/ParcelImpl;, ""
.end method

.method public newArray(I)[Landroidx/versionedparcelable/ParcelImpl;
    .locals 1

    new-array v0, p1, [Landroidx/versionedparcelable/ParcelImpl;

    .local v0, "$r1":[Landroidx/versionedparcelable/ParcelImpl;, ""
    return-object v0
    .end local v0    # "$r1":[Landroidx/versionedparcelable/ParcelImpl;, ""
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/a;->newArray(I)[Landroidx/versionedparcelable/ParcelImpl;

    move-result-object v0

    .local v0, "$r1":[Landroidx/versionedparcelable/ParcelImpl;, ""
    return-object v0
    .end local v0    # "$r1":[Landroidx/versionedparcelable/ParcelImpl;, ""
.end method
