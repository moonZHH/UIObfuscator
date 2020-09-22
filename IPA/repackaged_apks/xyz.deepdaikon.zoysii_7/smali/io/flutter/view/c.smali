.class Lio/flutter/view/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/flutter/embedding/engine/e/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/view/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/flutter/view/g;


# direct methods
.method constructor <init>(Lio/flutter/view/g;)V
    .locals 0

    iput-object p1, p0, Lio/flutter/view/c;->a:Lio/flutter/view/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    iget-object v0, p0, Lio/flutter/view/c;->a:Lio/flutter/view/g;

    .local v0, "$r1":Lio/flutter/view/g;, ""
    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lio/flutter/view/g;->a(Lio/flutter/view/g;II)V

    return-void
    .end local v0    # "$r1":Lio/flutter/view/g;, ""
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lio/flutter/view/c;->a:Lio/flutter/view/g;

    .local v0, "$r3":Lio/flutter/view/g;, ""
    invoke-static {v0}, Lio/flutter/view/g;->a(Lio/flutter/view/g;)Landroid/view/View;

    move-result-object v1

    .local v1, "$r2":Landroid/view/View;, ""
    invoke-virtual {v1, p1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
    .end local v0    # "$r3":Lio/flutter/view/g;, ""
    .end local v1    # "$r2":Landroid/view/View;, ""
.end method

.method public a(Ljava/nio/ByteBuffer;[Ljava/lang/String;)V
    .locals 2

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .local v0, "$r3":Ljava/nio/ByteOrder;, ""
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lio/flutter/view/c;->a:Lio/flutter/view/g;

    .local v1, "$r4":Lio/flutter/view/g;, ""
    invoke-virtual {v1, p1, p2}, Lio/flutter/view/g;->a(Ljava/nio/ByteBuffer;[Ljava/lang/String;)V

    return-void
    .end local v1    # "$r4":Lio/flutter/view/g;, ""
    .end local v0    # "$r3":Ljava/nio/ByteOrder;, ""
.end method

.method public b(I)V
    .locals 2

    iget-object v0, p0, Lio/flutter/view/c;->a:Lio/flutter/view/g;

    .local v0, "$r1":Lio/flutter/view/g;, ""
    const/4 v1, 0x2

    invoke-static {v0, p1, v1}, Lio/flutter/view/g;->a(Lio/flutter/view/g;II)V

    return-void
    .end local v0    # "$r1":Lio/flutter/view/g;, ""
.end method

.method public b(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lio/flutter/view/c;->a:Lio/flutter/view/g;

    .local v0, "$r2":Lio/flutter/view/g;, ""
    const/4 v2, 0x0

    const/16 v3, 0x20

    invoke-static {v0, v2, v3}, Lio/flutter/view/g;->b(Lio/flutter/view/g;II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .local v1, "$r3":Landroid/view/accessibility/AccessibilityEvent;, ""
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v4

    .local v4, "$r4":Ljava/util/List;, ""
    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lio/flutter/view/c;->a:Lio/flutter/view/g;

    invoke-static {v0, v1}, Lio/flutter/view/g;->a(Lio/flutter/view/g;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
    .end local v1    # "$r3":Landroid/view/accessibility/AccessibilityEvent;, ""
    .end local v0    # "$r2":Lio/flutter/view/g;, ""
    .end local v4    # "$r4":Ljava/util/List;, ""
.end method

.method public b(Ljava/nio/ByteBuffer;[Ljava/lang/String;)V
    .locals 2

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .local v0, "$r3":Ljava/nio/ByteOrder;, ""
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lio/flutter/view/c;->a:Lio/flutter/view/g;

    .local v1, "$r4":Lio/flutter/view/g;, ""
    invoke-virtual {v1, p1, p2}, Lio/flutter/view/g;->b(Ljava/nio/ByteBuffer;[Ljava/lang/String;)V

    return-void
    .end local v1    # "$r4":Lio/flutter/view/g;, ""
    .end local v0    # "$r3":Ljava/nio/ByteOrder;, ""
.end method
