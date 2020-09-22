.class Lio/flutter/embedding/engine/a/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/a/b/a/e;
.implements Lio/flutter/embedding/engine/a/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/embedding/engine/a/c$a;
    }
.end annotation


# instance fields
.field private final a:Lio/flutter/embedding/engine/FlutterJNI;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lb/a/b/a/e$a;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lb/a/b/a/e$b;",
            ">;"
        }
    .end annotation
.end field

.field private d:I


# direct methods
.method constructor <init>(Lio/flutter/embedding/engine/FlutterJNI;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lio/flutter/embedding/engine/a/c;->d:I

    iput-object p1, p0, Lio/flutter/embedding/engine/a/c;->a:Lio/flutter/embedding/engine/FlutterJNI;

    new-instance v1, Ljava/util/HashMap;

    .local v1, "$r2":Ljava/util/HashMap;, ""
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lio/flutter/embedding/engine/a/c;->b:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lio/flutter/embedding/engine/a/c;->c:Ljava/util/Map;

    return-void
    .end local v1    # "$r2":Ljava/util/HashMap;, ""
.end method


# virtual methods
.method public a(I[B)V
    .locals 9

    const-string v0, "DartMessenger"

    const-string v1, "Received message reply from Dart."

    invoke-static {v0, v1}, Lb/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lio/flutter/embedding/engine/a/c;->c:Ljava/util/Map;

    .local v2, "$r2":Ljava/util/Map;, ""
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .local v3, "$r3":Ljava/lang/Integer;, ""
    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .local v4, "$r4":Ljava/lang/Object;, ""
    move-object v6, v4

    check-cast v6, Lb/a/b/a/e$b;

    move-object v5, v6

    .local v5, "$r5":Lb/a/b/a/e$b;, ""
    if-eqz v5, :cond_1

    :try_start_0
    const-string v0, "DartMessenger"

    const-string v1, "Invoking registered callback for reply from Dart."

    invoke-static {v0, v1}, Lb/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p2, :cond_0

    const/4 v7, 0x0

    .local v7, "$r6":Ljava/nio/ByteBuffer;, ""
    goto :goto_0

    :cond_0
    :try_start_1
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    :goto_0
    invoke-interface {v5, v7}, Lb/a/b/a/e$b;->a(Ljava/nio/ByteBuffer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v8

    .local v8, "$r7":Ljava/lang/Exception;, ""
    const-string v0, "DartMessenger"

    const-string v1, "Uncaught exception in binary message reply handler"

    invoke-static {v0, v1, v8}, Lb/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
    .end local v4    # "$r4":Ljava/lang/Object;, ""
    .end local v7    # "$r6":Ljava/nio/ByteBuffer;, ""
    .end local v5    # "$r5":Lb/a/b/a/e$b;, ""
    .end local v8    # "$r7":Ljava/lang/Exception;, ""
    .end local v2    # "$r2":Ljava/util/Map;, ""
    .end local v3    # "$r3":Ljava/lang/Integer;, ""
.end method

.method public a(Ljava/lang/String;Lb/a/b/a/e$a;)V
    .locals 4

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    .local v0, "$r3":Ljava/lang/StringBuilder;, ""
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removing handler for channel \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, "$r4":Ljava/lang/String;, ""
    const-string v1, "DartMessenger"

    invoke-static {v1, v2}, Lb/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lio/flutter/embedding/engine/a/c;->b:Ljava/util/Map;

    .local v3, "$r5":Ljava/util/Map;, ""
    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting handler for channel \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v1, "DartMessenger"

    invoke-static {v1, v2}, Lb/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lio/flutter/embedding/engine/a/c;->b:Ljava/util/Map;

    invoke-interface {v3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
    .end local v0    # "$r3":Ljava/lang/StringBuilder;, ""
    .end local v2    # "$r4":Ljava/lang/String;, ""
    .end local v3    # "$r5":Ljava/util/Map;, ""
.end method

.method public a(Ljava/lang/String;Ljava/nio/ByteBuffer;Lb/a/b/a/e$b;)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    .local v0, "$r4":Ljava/lang/StringBuilder;, ""
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sending message with callback over channel \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, "$r5":Ljava/lang/String;, ""
    const-string v1, "DartMessenger"

    invoke-static {v1, v2}, Lb/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    iget v3, p0, Lio/flutter/embedding/engine/a/c;->d:I

    .local v3, "$i0":I, ""
    add-int/lit8 v4, v3, 0x1

    .local v4, "$i1":I, ""
    iput v4, p0, Lio/flutter/embedding/engine/a/c;->d:I

    iget-object v5, p0, Lio/flutter/embedding/engine/a/c;->c:Ljava/util/Map;

    .local v5, "$r6":Ljava/util/Map;, ""
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .local v6, "$r7":Ljava/lang/Integer;, ""
    invoke-interface {v5, v6, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-nez p2, :cond_1

    iget-object v7, p0, Lio/flutter/embedding/engine/a/c;->a:Lio/flutter/embedding/engine/FlutterJNI;

    .local v7, "$r8":Lio/flutter/embedding/engine/FlutterJNI;, ""
    invoke-virtual {v7, p1, v3}, Lio/flutter/embedding/engine/FlutterJNI;->dispatchEmptyPlatformMessage(Ljava/lang/String;I)V

    return-void

    :cond_1
    iget-object v7, p0, Lio/flutter/embedding/engine/a/c;->a:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    invoke-virtual {v7, p1, p2, v4, v3}, Lio/flutter/embedding/engine/FlutterJNI;->dispatchPlatformMessage(Ljava/lang/String;Ljava/nio/ByteBuffer;II)V

    return-void
    .end local v3    # "$i0":I, ""
    .end local v5    # "$r6":Ljava/util/Map;, ""
    .end local v7    # "$r8":Lio/flutter/embedding/engine/FlutterJNI;, ""
    .end local v4    # "$i1":I, ""
    .end local v2    # "$r5":Ljava/lang/String;, ""
    .end local v0    # "$r4":Ljava/lang/StringBuilder;, ""
    .end local v6    # "$r7":Ljava/lang/Integer;, ""
.end method

.method public a(Ljava/lang/String;[BI)V
    .locals 12

    new-instance v0, Ljava/lang/StringBuilder;

    .local v0, "$r3":Ljava/lang/StringBuilder;, ""
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received message from Dart over channel \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, "$r4":Ljava/lang/String;, ""
    const-string v1, "DartMessenger"

    invoke-static {v1, v2}, Lb/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lio/flutter/embedding/engine/a/c;->b:Ljava/util/Map;

    .local v3, "$r5":Ljava/util/Map;, ""
    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .local v4, "$r6":Ljava/lang/Object;, ""
    move-object v6, v4

    check-cast v6, Lb/a/b/a/e$a;

    move-object v5, v6

    .local v5, "$r7":Lb/a/b/a/e$a;, ""
    if-eqz v5, :cond_1

    :try_start_0
    const-string v1, "DartMessenger"

    const-string v7, "Deferring to registered handler to process message."

    invoke-static {v1, v7}, Lb/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p2, :cond_0

    const/4 v8, 0x0

    .local v8, "$r8":Ljava/nio/ByteBuffer;, ""
    goto :goto_0

    :cond_0
    :try_start_1
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    new-instance v9, Lio/flutter/embedding/engine/a/c$a;

    .local v9, "$r9":Lio/flutter/embedding/engine/a/c$a;, ""
    :try_start_2
    iget-object v10, p0, Lio/flutter/embedding/engine/a/c;->a:Lio/flutter/embedding/engine/FlutterJNI;

    .local v10, "$r10":Lio/flutter/embedding/engine/FlutterJNI;, ""
    invoke-direct {v9, v10, p3}, Lio/flutter/embedding/engine/a/c$a;-><init>(Lio/flutter/embedding/engine/FlutterJNI;I)V

    invoke-interface {v5, v8, v9}, Lb/a/b/a/e$a;->a(Ljava/nio/ByteBuffer;Lb/a/b/a/e$b;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception v11

    .local v11, "$r11":Ljava/lang/Exception;, ""
    const-string v1, "DartMessenger"

    const-string v7, "Uncaught exception in binary message listener"

    invoke-static {v1, v7, v11}, Lb/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v10, p0, Lio/flutter/embedding/engine/a/c;->a:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-virtual {v10, p3}, Lio/flutter/embedding/engine/FlutterJNI;->invokePlatformMessageEmptyResponseCallback(I)V

    return-void

    :cond_1
    const-string v1, "DartMessenger"

    const-string v7, "No registered handler for message. Responding to Dart with empty reply message."

    invoke-static {v1, v7}, Lb/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lio/flutter/embedding/engine/a/c;->a:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-virtual {v10, p3}, Lio/flutter/embedding/engine/FlutterJNI;->invokePlatformMessageEmptyResponseCallback(I)V

    return-void
    .end local v5    # "$r7":Lb/a/b/a/e$a;, ""
    .end local v3    # "$r5":Ljava/util/Map;, ""
    .end local v9    # "$r9":Lio/flutter/embedding/engine/a/c$a;, ""
    .end local v8    # "$r8":Ljava/nio/ByteBuffer;, ""
    .end local v4    # "$r6":Ljava/lang/Object;, ""
    .end local v11    # "$r11":Ljava/lang/Exception;, ""
    .end local v2    # "$r4":Ljava/lang/String;, ""
    .end local v10    # "$r10":Lio/flutter/embedding/engine/FlutterJNI;, ""
    .end local v0    # "$r3":Ljava/lang/StringBuilder;, ""
.end method
