.class public final Landroid/support/v4/graphics/drawable/IconCompatParcelizer;
.super Landroidx/core/graphics/drawable/IconCompatParcelizer;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/core/graphics/drawable/IconCompatParcelizer;-><init>()V

    return-void
.end method

.method public static read(Landroidx/versionedparcelable/b;)Landroid/support/v4/graphics/drawable/IconCompat;
    .locals 1

    invoke-static {p0}, Landroidx/core/graphics/drawable/IconCompatParcelizer;->read(Landroidx/versionedparcelable/b;)Landroid/support/v4/graphics/drawable/IconCompat;

    move-result-object v0

    .local v0, "$r0":Landroid/support/v4/graphics/drawable/IconCompat;, ""
    return-object v0
    .end local v0    # "$r0":Landroid/support/v4/graphics/drawable/IconCompat;, ""
.end method

.method public static write(Landroid/support/v4/graphics/drawable/IconCompat;Landroidx/versionedparcelable/b;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/core/graphics/drawable/IconCompatParcelizer;->write(Landroid/support/v4/graphics/drawable/IconCompat;Landroidx/versionedparcelable/b;)V

    return-void
.end method
