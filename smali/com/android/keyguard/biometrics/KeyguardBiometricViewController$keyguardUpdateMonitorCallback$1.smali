.class public final Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$keyguardUpdateMonitorCallback$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardBiometricViewController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;-><init>(Lcom/android/keyguard/biometrics/KeyguardBiometricView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardRotationController;Landroid/view/accessibility/AccessibilityManager;Landroid/os/PowerManager;Lcom/android/systemui/lockstar/PluginLockStarManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$keyguardUpdateMonitorCallback$1$WhenMappings;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;


# direct methods
.method constructor <init>(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    .line 107
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBiometricAuthFailed(Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 2
    .param p1    # Landroid/hardware/biometrics/BiometricSourceType;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    .line 131
    :cond_0
    sget-object v0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$keyguardUpdateMonitorCallback$1$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricSourceType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    :goto_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 133
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    invoke-static {p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->access$getContext(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->kg_face_no_match:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.string.kg_face_no_match)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->access$setErrorString$p(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;Ljava/lang/String;)V

    .line 134
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    invoke-static {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->access$getErrorString$p(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->access$updateErrorText(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onBiometricError(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/hardware/biometrics/BiometricSourceType;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-nez p3, :cond_0

    const/4 p3, -0x1

    goto :goto_0

    .line 109
    :cond_0
    sget-object v0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$keyguardUpdateMonitorCallback$1$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p3}, Landroid/hardware/biometrics/BiometricSourceType;->ordinal()I

    move-result p3

    aget p3, v0, p3

    :goto_0
    const/4 v0, 0x1

    if-ne p3, v0, :cond_5

    .line 111
    iget-object p3, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    const/16 v1, 0x2713

    if-eq p1, v1, :cond_2

    const/16 v1, 0x2715

    if-eq p1, v1, :cond_2

    const v0, 0x186a1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    return-void

    :cond_2
    :goto_1
    invoke-static {p3, v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->access$setHiddenRetry$p(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;Z)V

    if-eqz p2, :cond_3

    .line 118
    iget-object p3, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    invoke-static {p3, p2}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->access$setErrorString$p(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;Ljava/lang/String;)V

    :cond_3
    const/4 p2, 0x3

    if-ne p1, p2, :cond_4

    .line 121
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    const-string p2, ""

    invoke-static {p1, p2}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->access$setErrorString$p(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;Ljava/lang/String;)V

    .line 123
    :cond_4
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    invoke-static {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->access$getErrorString$p(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->access$updateErrorText(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public onBiometricLockoutChanged(Z)V
    .locals 6

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBiometricsLockoutChanged( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardBiometricView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    invoke-static {v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->access$getKeyguardUpdateMonitor$p(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->getLockoutAttemptDeadline()J

    move-result-wide v2

    .line 161
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    invoke-static {v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->access$getKeyguardUpdateMonitor$p(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-nez p1, :cond_1

    .line 162
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p1

    .line 163
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    invoke-static {v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->access$getKeyguardUpdateMonitor$p(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    .line 164
    invoke-interface {v0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->getFailedBiometricUnlockAttempts(I)I

    move-result p1

    if-eqz p1, :cond_0

    .line 165
    rem-int/lit8 p1, p1, 0x5

    if-nez p1, :cond_0

    .line 167
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    invoke-static {p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->access$getKeyguardUpdateMonitor$p(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getLockoutBiometricAttemptDeadline()J

    move-result-wide v0

    .line 168
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    invoke-static {p0, v0, v1}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->access$handleBiometricAttemptLockout(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;J)V

    goto :goto_0

    :cond_0
    const-string p0, "onBiometricsLockoutChanged( mCountdownTimer is working. )"

    .line 170
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public onBiometricRunningStateChanged(ZLandroid/hardware/biometrics/BiometricSourceType;)V
    .locals 1
    .param p2    # Landroid/hardware/biometrics/BiometricSourceType;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-nez p2, :cond_0

    const/4 p2, -0x1

    goto :goto_0

    .line 142
    :cond_0
    sget-object v0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$keyguardUpdateMonitorCallback$1$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Landroid/hardware/biometrics/BiometricSourceType;->ordinal()I

    move-result p2

    aget p2, v0, p2

    :goto_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 144
    iget-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    invoke-static {p2}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->access$isRunning$p(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)Z

    move-result p2

    if-eq p2, p1, :cond_2

    .line 145
    iget-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    invoke-static {p2, p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->access$setRunning$p(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;Z)V

    .line 146
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    invoke-static {p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->access$isRunning$p(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    const-string p2, ""

    invoke-static {p1, p2}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->access$setErrorString$p(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;Ljava/lang/String;)V

    .line 147
    :cond_1
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    invoke-static {p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->access$updateLockIcon(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)V

    .line 148
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    invoke-static {p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->access$getLockIconView$p(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)Lcom/android/keyguard/SecLockIconView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/keyguard/SecLockIconView;->isScanningFaceAnimationAllowed()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 149
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    invoke-static {p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->access$getLockIconView$p(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)Lcom/android/keyguard/SecLockIconView;

    move-result-object p1

    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    invoke-static {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->access$getLockIcon$p(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)Lcom/android/systemui/widget/SystemUIImageView;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/keyguard/SecLockIconView;->showScanningFaceAnimation(Lcom/android/systemui/widget/SystemUIImageView;)V

    :cond_2
    return-void
.end method

.method public onKeyguardBouncerChanged(Z)V
    .locals 4

    .line 176
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    invoke-static {v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->access$getBouncerShowing$p(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 177
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    invoke-static {v0, p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->access$setBouncerShowing$p(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;Z)V

    .line 178
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getInstance()Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getCurStatusFlag()J

    move-result-wide v1

    .line 179
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getInstance()Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getSemWallpaperColors()Landroid/app/SemWallpaperColors;

    move-result-object v3

    .line 178
    invoke-interface {v0, v1, v2, v3}, Lcom/android/systemui/widget/SystemUIWidgetCallback;->updateStyle(JLandroid/app/SemWallpaperColors;)V

    .line 180
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    invoke-static {v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->access$updateVisibility(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)V

    if-eqz p1, :cond_0

    .line 183
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    invoke-static {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->access$updateLayout(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)V

    :cond_0
    return-void
.end method

.method public onLockModeChanged()V
    .locals 2

    .line 192
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    invoke-static {v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->access$getKeyguardUpdateMonitor$p(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isTimerRunning()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->access$setLockOut$p(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;Z)V

    .line 193
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    invoke-static {v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->access$isRunning$p(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    invoke-static {v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->access$isLockOut$p(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    invoke-static {v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->access$clearView(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)V

    .line 195
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    invoke-static {v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->access$updateLockIcon(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)V

    .line 196
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    invoke-static {v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->access$getBouncerShowing$p(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->access$updateLockIconVisibility(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;Z)V

    .line 197
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    invoke-static {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->access$resetBiometricLockOutTimer(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)V

    :cond_1
    return-void
.end method

.method public onNotifyKeyguardLockout()V
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    invoke-static {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->access$resetBiometricLockOutTimer(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)V

    return-void
.end method

.method public onRemoteLockInfoChanged()V
    .locals 4

    .line 212
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    invoke-static {v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->access$getLockIconView$p(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)Lcom/android/keyguard/SecLockIconView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    invoke-static {v1}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->access$getKeyguardUpdateMonitor$p(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isRemoteLockEnabled()Z

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 213
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    invoke-static {v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->access$getBiometricRetryIcon$p(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)Lcom/android/systemui/widget/SystemUIImageView;

    move-result-object v0

    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    invoke-static {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->access$getKeyguardUpdateMonitor$p(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isRemoteLockEnabled()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-virtual {v0, v2}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    return-void
.end method

.method public onSecurityViewChanged(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .locals 0
    .param p1    # Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 202
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    invoke-static {p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->access$clearView(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)V

    .line 203
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    invoke-static {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->access$updateLayout(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)V

    return-void
.end method
