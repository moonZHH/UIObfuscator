.class public Lio/flutter/embedding/engine/FlutterJNI;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/embedding/engine/FlutterJNI$b;,
        Lio/flutter/embedding/engine/FlutterJNI$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FlutterJNI"

.field private static asyncWaitForVsyncDelegate:Lio/flutter/embedding/engine/FlutterJNI$b;

.field private static observatoryUri:Ljava/lang/String;

.field private static refreshRateFPS:F


# instance fields
.field private accessibilityDelegate:Lio/flutter/embedding/engine/FlutterJNI$a;

.field private final engineLifecycleListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lio/flutter/embedding/engine/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private final flutterUiDisplayListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lio/flutter/embedding/engine/d/d;",
            ">;"
        }
    .end annotation
.end field

.field private final mainLooper:Landroid/os/Looper;

.field private nativePlatformViewId:Ljava/lang/Long;

.field private platformMessageHandler:Lio/flutter/embedding/engine/a/d;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    .local v0, "$r2":Ljava/util/concurrent/CopyOnWriteArraySet;, ""
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->engineLifecycleListeners:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->flutterUiDisplayListeners:Ljava/util/Set;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    .local v1, "$r1":Landroid/os/Looper;, ""
    iput-object v1, p0, Lio/flutter/embedding/engine/FlutterJNI;->mainLooper:Landroid/os/Looper;

    return-void
    .end local v1    # "$r1":Landroid/os/Looper;, ""
    .end local v0    # "$r2":Ljava/util/concurrent/CopyOnWriteArraySet;, ""
.end method

.method private static asyncWaitForVsync(J)V
    .locals 3

    sget-object v0, Lio/flutter/embedding/engine/FlutterJNI;->asyncWaitForVsyncDelegate:Lio/flutter/embedding/engine/FlutterJNI$b;

    .local v0, "$r0":Lio/flutter/embedding/engine/FlutterJNI$b;, ""
    if-eqz v0, :cond_0

    sget-object v0, Lio/flutter/embedding/engine/FlutterJNI;->asyncWaitForVsyncDelegate:Lio/flutter/embedding/engine/FlutterJNI$b;

    invoke-interface {v0, p0, p1}, Lio/flutter/embedding/engine/FlutterJNI$b;->a(J)V

    return-void

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .local v1, "$r1":Ljava/lang/IllegalStateException;, ""
    const-string v2, "An AsyncWaitForVsyncDelegate must be registered with FlutterJNI before asyncWaitForVsync() is invoked."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    .end local v0    # "$r0":Lio/flutter/embedding/engine/FlutterJNI$b;, ""
    .end local v1    # "$r1":Ljava/lang/IllegalStateException;, ""
.end method

.method private ensureAttachedToNative()V
    .locals 3

    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->nativePlatformViewId:Ljava/lang/Long;

    .local v0, "$r1":Ljava/lang/Long;, ""
    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    .local v1, "$r2":Ljava/lang/RuntimeException;, ""
    const-string v2, "Cannot execute operation because FlutterJNI is not attached to native."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    .end local v0    # "$r1":Ljava/lang/Long;, ""
    .end local v1    # "$r2":Ljava/lang/RuntimeException;, ""
.end method

.method private ensureNotAttachedToNative()V
    .locals 3

    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->nativePlatformViewId:Ljava/lang/Long;

    .local v0, "$r1":Ljava/lang/Long;, ""
    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    .local v1, "$r2":Ljava/lang/RuntimeException;, ""
    const-string v2, "Cannot execute operation because FlutterJNI is attached to native."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    .end local v0    # "$r1":Ljava/lang/Long;, ""
    .end local v1    # "$r2":Ljava/lang/RuntimeException;, ""
.end method

.method private ensureRunningOnMainThread()V
    .locals 7

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, "$r1":Landroid/os/Looper;, ""
    iget-object v1, p0, Lio/flutter/embedding/engine/FlutterJNI;->mainLooper:Landroid/os/Looper;

    .local v1, "$r2":Landroid/os/Looper;, ""
    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    .local v2, "$r3":Ljava/lang/RuntimeException;, ""
    new-instance v3, Ljava/lang/StringBuilder;

    .local v3, "$r4":Ljava/lang/StringBuilder;, ""
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Methods marked with @UiThread must be executed on the main thread. Current thread: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    .local v5, "$r5":Ljava/lang/Thread;, ""
    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    .local v6, "$r6":Ljava/lang/String;, ""
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    .end local v6    # "$r6":Ljava/lang/String;, ""
    .end local v2    # "$r3":Ljava/lang/RuntimeException;, ""
    .end local v3    # "$r4":Ljava/lang/StringBuilder;, ""
    .end local v1    # "$r2":Landroid/os/Looper;, ""
    .end local v0    # "$r1":Landroid/os/Looper;, ""
    .end local v5    # "$r5":Ljava/lang/Thread;, ""
.end method

.method public static getObservatoryUri()Ljava/lang/String;
    .locals 1

    sget-object v0, Lio/flutter/embedding/engine/FlutterJNI;->observatoryUri:Ljava/lang/String;

    .local v0, "r0":Ljava/lang/String;, ""
    return-object v0
    .end local v0    # "r0":Ljava/lang/String;, ""
.end method

.method private handlePlatformMessage(Ljava/lang/String;[BI)V
    .locals 1

    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->platformMessageHandler:Lio/flutter/embedding/engine/a/d;

    .local v0, "$r3":Lio/flutter/embedding/engine/a/d;, ""
    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->platformMessageHandler:Lio/flutter/embedding/engine/a/d;

    invoke-interface {v0, p1, p2, p3}, Lio/flutter/embedding/engine/a/d;->a(Ljava/lang/String;[BI)V

    :cond_0
    return-void
    .end local v0    # "$r3":Lio/flutter/embedding/engine/a/d;, ""
.end method

.method private handlePlatformMessageResponse(I[B)V
    .locals 1

    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->platformMessageHandler:Lio/flutter/embedding/engine/a/d;

    .local v0, "$r2":Lio/flutter/embedding/engine/a/d;, ""
    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->platformMessageHandler:Lio/flutter/embedding/engine/a/d;

    invoke-interface {v0, p1, p2}, Lio/flutter/embedding/engine/a/d;->a(I[B)V

    :cond_0
    return-void
    .end local v0    # "$r2":Lio/flutter/embedding/engine/a/d;, ""
.end method

.method private native nativeAttach(Lio/flutter/embedding/engine/FlutterJNI;Z)J
.end method

.method private native nativeDestroy(J)V
.end method

.method private native nativeDispatchEmptyPlatformMessage(JLjava/lang/String;I)V
.end method

.method private native nativeDispatchPlatformMessage(JLjava/lang/String;Ljava/nio/ByteBuffer;II)V
.end method

.method private native nativeDispatchPointerDataPacket(JLjava/nio/ByteBuffer;I)V
.end method

.method private native nativeDispatchSemanticsAction(JIILjava/nio/ByteBuffer;I)V
.end method

.method private native nativeGetBitmap(J)Landroid/graphics/Bitmap;
.end method

.method public static native nativeInit(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private native nativeInvokePlatformMessageEmptyResponseCallback(JI)V
.end method

.method private native nativeInvokePlatformMessageResponseCallback(JILjava/nio/ByteBuffer;I)V
.end method

.method public static native nativeLookupCallbackInformation(J)Lio/flutter/view/FlutterCallbackInformation;
.end method

.method private native nativeMarkTextureFrameAvailable(JJ)V
.end method

.method public static native nativeOnVsync(JJJ)V
.end method

.method public static native nativeRecordStartTimestamp(J)V
.end method

.method private native nativeRegisterTexture(JJLandroid/graphics/SurfaceTexture;)V
.end method

.method private native nativeRunBundleAndSnapshotFromLibrary(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/AssetManager;)V
.end method

.method private native nativeSetAccessibilityFeatures(JI)V
.end method

.method private native nativeSetSemanticsEnabled(JZ)V
.end method

.method private native nativeSetViewportMetrics(JFIIIIIIIIIIIIII)V
.end method

.method private native nativeSurfaceChanged(JII)V
.end method

.method private native nativeSurfaceCreated(JLandroid/view/Surface;)V
.end method

.method private native nativeSurfaceDestroyed(J)V
.end method

.method private native nativeUnregisterTexture(JJ)V
.end method

.method private onPreEngineRestart()V
    .locals 6

    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->engineLifecycleListeners:Ljava/util/Set;

    .local v0, "$r1":Ljava/util/Set;, ""
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "$r2":Ljava/util/Iterator;, ""
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    .local v2, "$z0":Z, ""
    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "$r3":Ljava/lang/Object;, ""
    move-object v5, v3

    check-cast v5, Lio/flutter/embedding/engine/a$a;

    move-object v4, v5

    .local v4, "$r4":Lio/flutter/embedding/engine/a$a;, ""
    invoke-interface {v4}, Lio/flutter/embedding/engine/a$a;->a()V

    goto :goto_0

    :cond_0
    return-void
    .end local v1    # "$r2":Ljava/util/Iterator;, ""
    .end local v3    # "$r3":Ljava/lang/Object;, ""
    .end local v4    # "$r4":Lio/flutter/embedding/engine/a$a;, ""
    .end local v2    # "$z0":Z, ""
    .end local v0    # "$r1":Ljava/util/Set;, ""
.end method

.method public static setAsyncWaitForVsyncDelegate(Lio/flutter/embedding/engine/FlutterJNI$b;)V
    .locals 0

    sput-object p0, Lio/flutter/embedding/engine/FlutterJNI;->asyncWaitForVsyncDelegate:Lio/flutter/embedding/engine/FlutterJNI$b;

    return-void
.end method

.method public static setRefreshRateFPS(F)V
    .locals 0

    sput p0, Lio/flutter/embedding/engine/FlutterJNI;->refreshRateFPS:F

    return-void
.end method

.method private updateCustomAccessibilityActions(Ljava/nio/ByteBuffer;[Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->accessibilityDelegate:Lio/flutter/embedding/engine/FlutterJNI$a;

    .local v0, "$r3":Lio/flutter/embedding/engine/FlutterJNI$a;, ""
    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->accessibilityDelegate:Lio/flutter/embedding/engine/FlutterJNI$a;

    invoke-interface {v0, p1, p2}, Lio/flutter/embedding/engine/FlutterJNI$a;->a(Ljava/nio/ByteBuffer;[Ljava/lang/String;)V

    :cond_0
    return-void
    .end local v0    # "$r3":Lio/flutter/embedding/engine/FlutterJNI$a;, ""
.end method

.method private updateSemantics(Ljava/nio/ByteBuffer;[Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->accessibilityDelegate:Lio/flutter/embedding/engine/FlutterJNI$a;

    .local v0, "$r3":Lio/flutter/embedding/engine/FlutterJNI$a;, ""
    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->accessibilityDelegate:Lio/flutter/embedding/engine/FlutterJNI$a;

    invoke-interface {v0, p1, p2}, Lio/flutter/embedding/engine/FlutterJNI$a;->b(Ljava/nio/ByteBuffer;[Ljava/lang/String;)V

    :cond_0
    return-void
    .end local v0    # "$r3":Lio/flutter/embedding/engine/FlutterJNI$a;, ""
.end method


# virtual methods
.method public addEngineLifecycleListener(Lio/flutter/embedding/engine/a$a;)V
    .locals 1

    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->engineLifecycleListeners:Ljava/util/Set;

    .local v0, "$r2":Ljava/util/Set;, ""
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
    .end local v0    # "$r2":Ljava/util/Set;, ""
.end method

.method public addIsDisplayingFlutterUiListener(Lio/flutter/embedding/engine/d/d;)V
    .locals 1

    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->flutterUiDisplayListeners:Ljava/util/Set;

    .local v0, "$r2":Ljava/util/Set;, ""
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
    .end local v0    # "$r2":Ljava/util/Set;, ""
.end method

.method public attachToNative(Z)V
    .locals 3

    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureNotAttachedToNative()V

    invoke-direct {p0, p0, p1}, Lio/flutter/embedding/engine/FlutterJNI;->nativeAttach(Lio/flutter/embedding/engine/FlutterJNI;Z)J

    move-result-wide v0

    .local v0, "$l0":J, ""
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .local v2, "$r1":Ljava/lang/Long;, ""
    iput-object v2, p0, Lio/flutter/embedding/engine/FlutterJNI;->nativePlatformViewId:Ljava/lang/Long;

    return-void
    .end local v0    # "$l0":J, ""
    .end local v2    # "$r1":Ljava/lang/Long;, ""
.end method

.method public detachFromNativeAndReleaseResources()V
    .locals 4

    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureAttachedToNative()V

    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->nativePlatformViewId:Ljava/lang/Long;

    .local v0, "$r1":Ljava/lang/Long;, ""
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .local v1, "$l0":J, ""
    invoke-direct {p0, v1, v2}, Lio/flutter/embedding/engine/FlutterJNI;->nativeDestroy(J)V

    const/4 v3, 0x0

    iput-object v3, p0, Lio/flutter/embedding/engine/FlutterJNI;->nativePlatformViewId:Ljava/lang/Long;

    return-void
    .end local v0    # "$r1":Ljava/lang/Long;, ""
    .end local v1    # "$l0":J, ""
.end method

.method public dispatchEmptyPlatformMessage(Ljava/lang/String;I)V
    .locals 6

    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    invoke-virtual {p0}, Lio/flutter/embedding/engine/FlutterJNI;->isAttached()Z

    move-result v0

    .local v0, "$z0":Z, ""
    if-eqz v0, :cond_0

    iget-object v1, p0, Lio/flutter/embedding/engine/FlutterJNI;->nativePlatformViewId:Ljava/lang/Long;

    .local v1, "$r3":Ljava/lang/Long;, ""
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .local v2, "$l1":J, ""
    invoke-direct {p0, v2, v3, p1, p2}, Lio/flutter/embedding/engine/FlutterJNI;->nativeDispatchEmptyPlatformMessage(JLjava/lang/String;I)V

    return-void

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    .local v4, "$r1":Ljava/lang/StringBuilder;, ""
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Tried to send a platform message to Flutter, but FlutterJNI was detached from native C++. Could not send. Channel: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ". Response ID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .local p1, "$r2":Ljava/lang/String;, ""
    const-string v5, "FlutterJNI"

    invoke-static {v5, p1}, Lb/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
    .end local v4    # "$r1":Ljava/lang/StringBuilder;, ""
    .end local v0    # "$z0":Z, ""
    .end local p1    # "$r2":Ljava/lang/String;, ""
    .end local v1    # "$r3":Ljava/lang/Long;, ""
    .end local v2    # "$l1":J, ""
.end method

.method public dispatchPlatformMessage(Ljava/lang/String;Ljava/nio/ByteBuffer;II)V
    .locals 13

    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    invoke-virtual {p0}, Lio/flutter/embedding/engine/FlutterJNI;->isAttached()Z

    move-result v7

    .local v7, "$z0":Z, ""
    if-eqz v7, :cond_0

    iget-object v8, p0, Lio/flutter/embedding/engine/FlutterJNI;->nativePlatformViewId:Ljava/lang/Long;

    .local v8, "$r3":Ljava/lang/Long;, ""
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .local v9, "$l2":J, ""
    move-object v0, p0

    move-wide v1, v9

    move-object v3, p1

    move-object v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Lio/flutter/embedding/engine/FlutterJNI;->nativeDispatchPlatformMessage(JLjava/lang/String;Ljava/nio/ByteBuffer;II)V

    return-void

    :cond_0
    new-instance v11, Ljava/lang/StringBuilder;

    .local v11, "$r4":Ljava/lang/StringBuilder;, ""
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Tried to send a platform message to Flutter, but FlutterJNI was detached from native C++. Could not send. Channel: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ". Response ID: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, p4

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .local p1, "$r1":Ljava/lang/String;, ""
    const-string v12, "FlutterJNI"

    invoke-static {v12, p1}, Lb/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
    .end local v8    # "$r3":Ljava/lang/Long;, ""
    .end local v11    # "$r4":Ljava/lang/StringBuilder;, ""
    .end local v9    # "$l2":J, ""
    .end local p1    # "$r1":Ljava/lang/String;, ""
    .end local v7    # "$z0":Z, ""
.end method

.method public dispatchPointerDataPacket(Ljava/nio/ByteBuffer;I)V
    .locals 3

    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureAttachedToNative()V

    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->nativePlatformViewId:Ljava/lang/Long;

    .local v0, "$r2":Ljava/lang/Long;, ""
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .local v1, "$l1":J, ""
    invoke-direct {p0, v1, v2, p1, p2}, Lio/flutter/embedding/engine/FlutterJNI;->nativeDispatchPointerDataPacket(JLjava/nio/ByteBuffer;I)V

    return-void
    .end local v0    # "$r2":Ljava/lang/Long;, ""
    .end local v1    # "$l1":J, ""
.end method

.method public dispatchSemanticsAction(IILjava/nio/ByteBuffer;I)V
    .locals 10

    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureAttachedToNative()V

    iget-object v7, p0, Lio/flutter/embedding/engine/FlutterJNI;->nativePlatformViewId:Ljava/lang/Long;

    .local v7, "$r2":Ljava/lang/Long;, ""
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .local v8, "$l3":J, ""
    move-object v0, p0

    move-wide v1, v8

    move v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lio/flutter/embedding/engine/FlutterJNI;->nativeDispatchSemanticsAction(JIILjava/nio/ByteBuffer;I)V

    return-void
    .end local v7    # "$r2":Ljava/lang/Long;, ""
    .end local v8    # "$l3":J, ""
.end method

.method public dispatchSemanticsAction(ILio/flutter/view/g$b;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lio/flutter/embedding/engine/FlutterJNI;->dispatchSemanticsAction(ILio/flutter/view/g$b;Ljava/lang/Object;)V

    return-void
.end method

.method public dispatchSemanticsAction(ILio/flutter/view/g$b;Ljava/lang/Object;)V
    .locals 5

    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureAttachedToNative()V

    if-eqz p3, :cond_0

    sget-object v0, Lb/a/b/a/p;->a:Lb/a/b/a/p;

    .local v0, "$r3":Lb/a/b/a/p;, ""
    invoke-virtual {v0, p3}, Lb/a/b/a/p;->a(Ljava/lang/Object;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .local v1, "$r4":Ljava/nio/ByteBuffer;, ""
    move-object v2, v1

    .local v2, "$r5":Ljava/nio/ByteBuffer;, ""
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    .local v3, "$i1":I, ""
    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    iget v4, p2, Lio/flutter/view/g$b;->w:I

    .local v4, "$i2":I, ""
    invoke-virtual {p0, p1, v4, v2, v3}, Lio/flutter/embedding/engine/FlutterJNI;->dispatchSemanticsAction(IILjava/nio/ByteBuffer;I)V

    return-void
    .end local v2    # "$r5":Ljava/nio/ByteBuffer;, ""
    .end local v1    # "$r4":Ljava/nio/ByteBuffer;, ""
    .end local v4    # "$i2":I, ""
    .end local v0    # "$r3":Lb/a/b/a/p;, ""
    .end local v3    # "$i1":I, ""
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 4

    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureAttachedToNative()V

    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->nativePlatformViewId:Ljava/lang/Long;

    .local v0, "$r1":Ljava/lang/Long;, ""
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .local v1, "$l0":J, ""
    invoke-direct {p0, v1, v2}, Lio/flutter/embedding/engine/FlutterJNI;->nativeGetBitmap(J)Landroid/graphics/Bitmap;

    move-result-object v3

    .local v3, "$r2":Landroid/graphics/Bitmap;, ""
    return-object v3
    .end local v3    # "$r2":Landroid/graphics/Bitmap;, ""
    .end local v1    # "$l0":J, ""
    .end local v0    # "$r1":Ljava/lang/Long;, ""
.end method

.method public invokePlatformMessageEmptyResponseCallback(I)V
    .locals 7

    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    invoke-virtual {p0}, Lio/flutter/embedding/engine/FlutterJNI;->isAttached()Z

    move-result v0

    .local v0, "$z0":Z, ""
    if-eqz v0, :cond_0

    iget-object v1, p0, Lio/flutter/embedding/engine/FlutterJNI;->nativePlatformViewId:Ljava/lang/Long;

    .local v1, "$r2":Ljava/lang/Long;, ""
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .local v2, "$l1":J, ""
    invoke-direct {p0, v2, v3, p1}, Lio/flutter/embedding/engine/FlutterJNI;->nativeInvokePlatformMessageEmptyResponseCallback(JI)V

    return-void

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    .local v4, "$r1":Ljava/lang/StringBuilder;, ""
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Tried to send a platform message response, but FlutterJNI was detached from native C++. Could not send. Response ID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .local v6, "$r3":Ljava/lang/String;, ""
    const-string v5, "FlutterJNI"

    invoke-static {v5, v6}, Lb/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
    .end local v2    # "$l1":J, ""
    .end local v1    # "$r2":Ljava/lang/Long;, ""
    .end local v4    # "$r1":Ljava/lang/StringBuilder;, ""
    .end local v6    # "$r3":Ljava/lang/String;, ""
    .end local v0    # "$z0":Z, ""
.end method

.method public invokePlatformMessageResponseCallback(ILjava/nio/ByteBuffer;I)V
    .locals 13

    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    invoke-virtual {p0}, Lio/flutter/embedding/engine/FlutterJNI;->isAttached()Z

    move-result v6

    .local v6, "$z0":Z, ""
    if-eqz v6, :cond_0

    iget-object v7, p0, Lio/flutter/embedding/engine/FlutterJNI;->nativePlatformViewId:Ljava/lang/Long;

    .local v7, "$r2":Ljava/lang/Long;, ""
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .local v8, "$l2":J, ""
    move-object v0, p0

    move-wide v1, v8

    move v3, p1

    move-object v4, p2

    move/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lio/flutter/embedding/engine/FlutterJNI;->nativeInvokePlatformMessageResponseCallback(JILjava/nio/ByteBuffer;I)V

    return-void

    :cond_0
    new-instance v10, Ljava/lang/StringBuilder;

    .local v10, "$r3":Ljava/lang/StringBuilder;, ""
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Tried to send a platform message response, but FlutterJNI was detached from native C++. Could not send. Response ID: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .local v12, "$r4":Ljava/lang/String;, ""
    const-string v11, "FlutterJNI"

    invoke-static {v11, v12}, Lb/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
    .end local v10    # "$r3":Ljava/lang/StringBuilder;, ""
    .end local v6    # "$z0":Z, ""
    .end local v7    # "$r2":Ljava/lang/Long;, ""
    .end local v8    # "$l2":J, ""
    .end local v12    # "$r4":Ljava/lang/String;, ""
.end method

.method public isAttached()Z
    .locals 2

    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->nativePlatformViewId:Ljava/lang/Long;

    .local v0, "$r1":Ljava/lang/Long;, ""
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
    .end local v0    # "$r1":Ljava/lang/Long;, ""
.end method

.method public markTextureFrameAvailable(J)V
    .locals 3

    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureAttachedToNative()V

    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->nativePlatformViewId:Ljava/lang/Long;

    .local v0, "$r1":Ljava/lang/Long;, ""
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .local v1, "$l1":J, ""
    invoke-direct {p0, v1, v2, p1, p2}, Lio/flutter/embedding/engine/FlutterJNI;->nativeMarkTextureFrameAvailable(JJ)V

    return-void
    .end local v0    # "$r1":Ljava/lang/Long;, ""
    .end local v1    # "$l1":J, ""
.end method

.method public native nativeGetIsSoftwareRenderingEnabled()Z
.end method

.method onFirstFrame()V
    .locals 6

    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->flutterUiDisplayListeners:Ljava/util/Set;

    .local v0, "$r1":Ljava/util/Set;, ""
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "$r2":Ljava/util/Iterator;, ""
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    .local v2, "$z0":Z, ""
    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "$r3":Ljava/lang/Object;, ""
    move-object v5, v3

    check-cast v5, Lio/flutter/embedding/engine/d/d;

    move-object v4, v5

    .local v4, "$r4":Lio/flutter/embedding/engine/d/d;, ""
    invoke-interface {v4}, Lio/flutter/embedding/engine/d/d;->b()V

    goto :goto_0

    :cond_0
    return-void
    .end local v0    # "$r1":Ljava/util/Set;, ""
    .end local v1    # "$r2":Ljava/util/Iterator;, ""
    .end local v2    # "$z0":Z, ""
    .end local v4    # "$r4":Lio/flutter/embedding/engine/d/d;, ""
    .end local v3    # "$r3":Ljava/lang/Object;, ""
.end method

.method onRenderingStopped()V
    .locals 6

    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->flutterUiDisplayListeners:Ljava/util/Set;

    .local v0, "$r1":Ljava/util/Set;, ""
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "$r2":Ljava/util/Iterator;, ""
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    .local v2, "$z0":Z, ""
    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "$r3":Ljava/lang/Object;, ""
    move-object v5, v3

    check-cast v5, Lio/flutter/embedding/engine/d/d;

    move-object v4, v5

    .local v4, "$r4":Lio/flutter/embedding/engine/d/d;, ""
    invoke-interface {v4}, Lio/flutter/embedding/engine/d/d;->a()V

    goto :goto_0

    :cond_0
    return-void
    .end local v2    # "$z0":Z, ""
    .end local v4    # "$r4":Lio/flutter/embedding/engine/d/d;, ""
    .end local v3    # "$r3":Ljava/lang/Object;, ""
    .end local v1    # "$r2":Ljava/util/Iterator;, ""
    .end local v0    # "$r1":Ljava/util/Set;, ""
.end method

.method public onSurfaceChanged(II)V
    .locals 3

    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureAttachedToNative()V

    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->nativePlatformViewId:Ljava/lang/Long;

    .local v0, "$r1":Ljava/lang/Long;, ""
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .local v1, "$l2":J, ""
    invoke-direct {p0, v1, v2, p1, p2}, Lio/flutter/embedding/engine/FlutterJNI;->nativeSurfaceChanged(JII)V

    return-void
    .end local v1    # "$l2":J, ""
    .end local v0    # "$r1":Ljava/lang/Long;, ""
.end method

.method public onSurfaceCreated(Landroid/view/Surface;)V
    .locals 3

    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureAttachedToNative()V

    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->nativePlatformViewId:Ljava/lang/Long;

    .local v0, "$r2":Ljava/lang/Long;, ""
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .local v1, "$l0":J, ""
    invoke-direct {p0, v1, v2, p1}, Lio/flutter/embedding/engine/FlutterJNI;->nativeSurfaceCreated(JLandroid/view/Surface;)V

    return-void
    .end local v0    # "$r2":Ljava/lang/Long;, ""
    .end local v1    # "$l0":J, ""
.end method

.method public onSurfaceDestroyed()V
    .locals 3

    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureAttachedToNative()V

    invoke-virtual {p0}, Lio/flutter/embedding/engine/FlutterJNI;->onRenderingStopped()V

    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->nativePlatformViewId:Ljava/lang/Long;

    .local v0, "$r1":Ljava/lang/Long;, ""
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .local v1, "$l0":J, ""
    invoke-direct {p0, v1, v2}, Lio/flutter/embedding/engine/FlutterJNI;->nativeSurfaceDestroyed(J)V

    return-void
    .end local v0    # "$r1":Ljava/lang/Long;, ""
    .end local v1    # "$l0":J, ""
.end method

.method public registerTexture(JLandroid/graphics/SurfaceTexture;)V
    .locals 9

    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureAttachedToNative()V

    iget-object v6, p0, Lio/flutter/embedding/engine/FlutterJNI;->nativePlatformViewId:Ljava/lang/Long;

    .local v6, "$r2":Ljava/lang/Long;, ""
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .local v7, "$l1":J, ""
    move-object v0, p0

    move-wide v1, v7

    move-wide v3, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lio/flutter/embedding/engine/FlutterJNI;->nativeRegisterTexture(JJLandroid/graphics/SurfaceTexture;)V

    return-void
    .end local v7    # "$l1":J, ""
    .end local v6    # "$r2":Ljava/lang/Long;, ""
.end method

.method public removeEngineLifecycleListener(Lio/flutter/embedding/engine/a$a;)V
    .locals 1

    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->engineLifecycleListeners:Ljava/util/Set;

    .local v0, "$r2":Ljava/util/Set;, ""
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
    .end local v0    # "$r2":Ljava/util/Set;, ""
.end method

.method public removeIsDisplayingFlutterUiListener(Lio/flutter/embedding/engine/d/d;)V
    .locals 1

    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->flutterUiDisplayListeners:Ljava/util/Set;

    .local v0, "$r2":Ljava/util/Set;, ""
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
    .end local v0    # "$r2":Ljava/util/Set;, ""
.end method

.method public runBundleAndSnapshotFromLibrary(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/AssetManager;)V
    .locals 10

    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureAttachedToNative()V

    iget-object v7, p0, Lio/flutter/embedding/engine/FlutterJNI;->nativePlatformViewId:Ljava/lang/Long;

    .local v7, "$r5":Ljava/lang/Long;, ""
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .local v8, "$l0":J, ""
    move-object v0, p0

    move-wide v1, v8

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lio/flutter/embedding/engine/FlutterJNI;->nativeRunBundleAndSnapshotFromLibrary(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/AssetManager;)V

    return-void
    .end local v7    # "$r5":Ljava/lang/Long;, ""
    .end local v8    # "$l0":J, ""
.end method

.method public setAccessibilityDelegate(Lio/flutter/embedding/engine/FlutterJNI$a;)V
    .locals 0

    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    iput-object p1, p0, Lio/flutter/embedding/engine/FlutterJNI;->accessibilityDelegate:Lio/flutter/embedding/engine/FlutterJNI$a;

    return-void
.end method

.method public setAccessibilityFeatures(I)V
    .locals 3

    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureAttachedToNative()V

    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->nativePlatformViewId:Ljava/lang/Long;

    .local v0, "$r1":Ljava/lang/Long;, ""
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .local v1, "$l1":J, ""
    invoke-direct {p0, v1, v2, p1}, Lio/flutter/embedding/engine/FlutterJNI;->nativeSetAccessibilityFeatures(JI)V

    return-void
    .end local v1    # "$l1":J, ""
    .end local v0    # "$r1":Ljava/lang/Long;, ""
.end method

.method public setPlatformMessageHandler(Lio/flutter/embedding/engine/a/d;)V
    .locals 0

    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    iput-object p1, p0, Lio/flutter/embedding/engine/FlutterJNI;->platformMessageHandler:Lio/flutter/embedding/engine/a/d;

    return-void
.end method

.method public setSemanticsEnabled(Z)V
    .locals 3

    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureAttachedToNative()V

    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->nativePlatformViewId:Ljava/lang/Long;

    .local v0, "$r1":Ljava/lang/Long;, ""
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .local v1, "$l0":J, ""
    invoke-direct {p0, v1, v2, p1}, Lio/flutter/embedding/engine/FlutterJNI;->nativeSetSemanticsEnabled(JZ)V

    return-void
    .end local v1    # "$l0":J, ""
    .end local v0    # "$r1":Ljava/lang/Long;, ""
.end method

.method public setViewportMetrics(FIIIIIIIIIIIIII)V
    .locals 21

    move-object/from16 v0, p0

    invoke-direct {v0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    move-object/from16 v0, p0

    invoke-direct {v0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureAttachedToNative()V

    move-object/from16 v0, p0

    .local v0, "$r1":Ljava/lang/Long;, ""
    iget-object v0, v0, Lio/flutter/embedding/engine/FlutterJNI;->nativePlatformViewId:Ljava/lang/Long;

    move-object/from16 v18, v0

    .end local v0    # "$r1":Ljava/lang/Long;, ""
    .local v18, "$r1":Ljava/lang/Long;, ""
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    .local v19, "$l14":J, ""
    move-object/from16 v0, p0

    move-wide/from16 v1, v19

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    move/from16 v14, p12

    move/from16 v15, p13

    move/from16 v16, p14

    move/from16 v17, p15

    invoke-direct/range {v0 .. v17}, Lio/flutter/embedding/engine/FlutterJNI;->nativeSetViewportMetrics(JFIIIIIIIIIIIIII)V

    return-void
    .end local v18    # "$r1":Ljava/lang/Long;, ""
    .end local v19    # "$l14":J, ""
.end method

.method public unregisterTexture(J)V
    .locals 3

    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureAttachedToNative()V

    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->nativePlatformViewId:Ljava/lang/Long;

    .local v0, "$r1":Ljava/lang/Long;, ""
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .local v1, "$l1":J, ""
    invoke-direct {p0, v1, v2, p1, p2}, Lio/flutter/embedding/engine/FlutterJNI;->nativeUnregisterTexture(JJ)V

    return-void
    .end local v1    # "$l1":J, ""
    .end local v0    # "$r1":Ljava/lang/Long;, ""
.end method
