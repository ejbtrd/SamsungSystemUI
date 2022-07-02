.class public Lcom/android/systemui/classifier/SecFalsingManagerDummy;
.super Ljava/lang/Object;
.source "SecFalsingManagerDummy.java"

# interfaces
.implements Lcom/android/systemui/plugins/FalsingManager;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addFalsingBeliefListener(Lcom/android/systemui/plugins/FalsingManager$FalsingBeliefListener;)V
    .locals 0

    return-void
.end method

.method public addTapListener(Lcom/android/systemui/plugins/FalsingManager$FalsingTapListener;)V
    .locals 0

    return-void
.end method

.method public cleanupInternal()V
    .locals 0

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public isClassifierEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isFalseDoubleTap()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isFalseTap(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isFalseTouch(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isReportingEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSimpleTap()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isUnlockingDisabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onProximityEvent(Lcom/android/systemui/plugins/FalsingManager$ProximityEvent;)V
    .locals 0

    return-void
.end method

.method public onSuccessfulUnlock()V
    .locals 0

    return-void
.end method

.method public removeFalsingBeliefListener(Lcom/android/systemui/plugins/FalsingManager$FalsingBeliefListener;)V
    .locals 0

    return-void
.end method

.method public removeTapListener(Lcom/android/systemui/plugins/FalsingManager$FalsingTapListener;)V
    .locals 0

    return-void
.end method

.method public reportRejectedTouch()Landroid/net/Uri;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public shouldEnforceBouncer()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
