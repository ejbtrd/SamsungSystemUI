.class public Lcom/android/systemui/facewidget/plugin/FaceWidgetLockPatternUtilsWrapper;
.super Ljava/lang/Object;
.source "FaceWidgetLockPatternUtilsWrapper.java"

# interfaces
.implements Lcom/android/systemui/plugins/facewidget/PluginLockPatternUtils;


# instance fields
.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method public constructor <init>(Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetLockPatternUtilsWrapper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 20
    iput-object p2, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetLockPatternUtilsWrapper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-void
.end method


# virtual methods
.method public getDeviceOwnerInfo()Ljava/lang/String;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetLockPatternUtilsWrapper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->getDeviceOwnerInfo()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getOwnerInfo(I)Ljava/lang/String;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetLockPatternUtilsWrapper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->getOwnerInfo()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isDeviceOwnerInfoEnabled()Z
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetLockPatternUtilsWrapper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->isDeviceOwnerInfoEnabled()Z

    move-result p0

    return p0
.end method

.method public isLockScreenDisabled()Z
    .locals 1

    .line 44
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetLockPatternUtilsWrapper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result p0

    return p0
.end method

.method public isOwnerInfoEnabled(I)Z
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetLockPatternUtilsWrapper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->isOwnerInfoEnabled()Z

    move-result p0

    return p0
.end method
