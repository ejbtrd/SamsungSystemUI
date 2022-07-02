.class public Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper;
.super Ljava/lang/Object;
.source "FaceWidgetKeyguardUpdateMonitorWrapper.java"

# interfaces
.implements Lcom/android/systemui/plugins/facewidget/PluginKeyguardUpdateMonitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;
    }
.end annotation


# instance fields
.field private mCallbackWrapperMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/systemui/plugins/facewidget/PluginKeyguardUpdateMonitorCallback;",
            "Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper;->mCallbackWrapperMap:Ljava/util/HashMap;

    .line 32
    iput-object p1, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-void
.end method


# virtual methods
.method public dispatchFaceWidgetFullScreenMode(Z)V
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFaceWidgetFullScreenMode(Z)V

    return-void
.end method

.method public getCurrentUser()I
    .locals 0

    .line 61
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p0

    return p0
.end method

.method public isDeviceInteractive()Z
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result p0

    return p0
.end method

.method public isDeviceProvisioned()Z
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result p0

    return p0
.end method

.method public isEnabledBioUnlock()Z
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceOptionEnabled()Z

    move-result p0

    return p0
.end method

.method public isFMMLock()Z
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->isFMMLock()Z

    move-result p0

    return p0
.end method

.method public isFingerprintOptionEnabled()Z
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintOptionEnabled()Z

    move-result p0

    return p0
.end method

.method public isKeyguardUnlocking()Z
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardUnlocking()Z

    move-result p0

    return p0
.end method

.method public isKeyguardVisible()Z
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardVisible()Z

    move-result p0

    return p0
.end method

.method public isRemoteLock()Z
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isRemoteLockEnabled()Z

    move-result p0

    return p0
.end method

.method public isSystemUser()Z
    .locals 0

    .line 76
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isUnlockWithFingerprintPossible(I)Z
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFingerprintPossible(I)Z

    move-result p0

    return p0
.end method

.method public isUserUnlocked()Z
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->isUserUnlocked()Z

    move-result p0

    return p0
.end method

.method public registerCallback(Lcom/android/systemui/plugins/facewidget/PluginKeyguardUpdateMonitorCallback;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 40
    :cond_0
    new-instance v0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;

    invoke-direct {v0, p1}, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;-><init>(Lcom/android/systemui/plugins/facewidget/PluginKeyguardUpdateMonitorCallback;)V

    .line 41
    iget-object v1, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper;->mCallbackWrapperMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public removeCallback(Lcom/android/systemui/plugins/facewidget/PluginKeyguardUpdateMonitorCallback;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper;->mCallbackWrapperMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;

    if-nez v0, :cond_1

    return-void

    .line 55
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper;->mCallbackWrapperMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method
