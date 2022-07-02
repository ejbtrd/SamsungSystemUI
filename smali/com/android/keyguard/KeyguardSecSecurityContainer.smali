.class public Lcom/android/keyguard/KeyguardSecSecurityContainer;
.super Lcom/android/keyguard/KeyguardSecurityContainer;
.source "KeyguardSecSecurityContainer.java"


# direct methods
.method public static synthetic $r8$lambda$8nd0BWxYM4gAMXSATy8Jppv53ZA(Lcom/android/keyguard/KeyguardSecSecurityContainer;Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/keyguard/KeyguardSecSecurityContainer;->lambda$showDialog$0(Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$y-qOGNAqRHfoVr0ToJh-yKXiehw(Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardSecSecurityContainer;->lambda$showDialog$1(Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 42
    invoke-direct {p0, p1, v0, v1}, Lcom/android/keyguard/KeyguardSecSecurityContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/KeyguardSecSecurityContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/android/keyguard/KeyguardSecurityContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private synthetic lambda$showDialog$0(Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p2, 0x0

    .line 62
    invoke-virtual {p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setDisableBiometricBySecurityDialog(Z)V

    .line 63
    invoke-virtual {p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setDialogStateForInDisplayFingerprint(Z)V

    .line 64
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->reset()V

    return-void
.end method

.method private static synthetic lambda$showDialog$1(Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    .line 67
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setDisableBiometricBySecurityDialog(Z)V

    .line 68
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setDialogStateForInDisplayFingerprint(Z)V

    return-void
.end method


# virtual methods
.method protected getSecurityViewFlipper()Lcom/android/keyguard/KeyguardSecurityViewFlipper;
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    return-object p0
.end method

.method protected showAlmostAtWipeDialog(III)V
    .locals 4

    const/4 v0, 0x1

    if-ne p3, v0, :cond_2

    const/4 p3, 0x0

    if-ne p1, v0, :cond_0

    .line 91
    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->kg_sec_1_failed_attempt_almost_at_wipe:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, p3

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    if-ne p2, v0, :cond_1

    .line 93
    iget-object p2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->kg_sec_1_remaining_count_almost_at_wipe:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, p3

    invoke-virtual {p2, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 95
    :cond_1
    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->kg_sec_failed_attempts_almost_at_wipe:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, p3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    const/4 p2, 0x0

    .line 97
    invoke-virtual {p0, p2, p1}, Lcom/android/keyguard/KeyguardSecSecurityContainer;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 100
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/android/keyguard/KeyguardSecurityContainer;->showAlmostAtWipeDialog(III)V

    return-void
.end method

.method protected showDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 51
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mAlertDialog:Landroid/app/AlertDialog;

    .line 55
    :cond_0
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 56
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const v3, 0x103023a

    invoke-direct {v1, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 57
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 58
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 p2, 0x0

    .line 59
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x104000a

    new-instance v1, Lcom/android/keyguard/KeyguardSecSecurityContainer$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/android/keyguard/KeyguardSecSecurityContainer$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardSecSecurityContainer;Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    .line 60
    invoke-virtual {p1, p2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/android/keyguard/KeyguardSecSecurityContainer$$ExternalSyntheticLambda1;

    invoke-direct {p2, v0}, Lcom/android/keyguard/KeyguardSecSecurityContainer$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    .line 66
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 70
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mAlertDialog:Landroid/app/AlertDialog;

    .line 71
    iget-object p2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    instance-of p2, p2, Landroid/app/Activity;

    if-nez p2, :cond_1

    .line 72
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Landroid/view/Window;

    const/16 p2, 0x7d9

    invoke-virtual {p1, p2}, Landroid/view/Window;->setType(I)V

    :cond_1
    const/4 p1, 0x1

    .line 74
    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setDisableBiometricBySecurityDialog(Z)V

    .line 75
    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setDialogStateForInDisplayFingerprint(Z)V

    .line 76
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method protected showTimeoutDialog(IILcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .locals 2

    int-to-float p2, p2

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr p2, v0

    float-to-double v0, p2

    .line 82
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p2, v0

    .line 83
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/keyguard/KeyguardSecurityContainer;->showTimeoutDialog(IILcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    return-void
.end method

.method public updateSecurityViewPosition(IZ)V
    .locals 11

    .line 109
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->findKeyguardSecurityView()Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 115
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mRunningOneHandedAnimator:Landroid/view/ViewPropertyAnimator;

    if-eqz v1, :cond_1

    .line 116
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/4 v1, 0x0

    .line 117
    iput-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mRunningOneHandedAnimator:Landroid/view/ViewPropertyAnimator;

    .line 120
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 121
    const-class v2, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 122
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 123
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 124
    sget v4, Lcom/android/systemui/R$dimen;->kg_security_view_side_margin_tablet:I

    goto :goto_0

    .line 125
    :cond_2
    sget v4, Lcom/android/systemui/R$dimen;->kg_security_view_side_margin:I

    .line 123
    :goto_0
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 126
    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->isDualDisplayPolicyAllowed()Z

    move-result v5

    .line 127
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/systemui/util/DeviceState;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_3

    .line 128
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget-object v6, v6, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v6}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v6

    invoke-static {v6}, Lcom/android/systemui/util/DeviceState;->getRotation(I)I

    move-result v6

    goto :goto_1

    :cond_3
    move v6, v7

    .line 131
    :goto_1
    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isInDisplayFingerprintMarginAccepted()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 132
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->getInDisplayFingerprintHeight()I

    move-result v2

    goto :goto_2

    :cond_4
    move v2, v7

    .line 134
    :goto_2
    sget-boolean v8, Lcom/android/systemui/LsRune;->SECURITY_ARROW_VIEW:Z

    const/4 v9, 0x1

    if-nez v8, :cond_5

    move p1, v9

    :cond_5
    const/4 v8, 0x2

    if-eqz p1, :cond_7

    if-eq p1, v8, :cond_6

    goto :goto_4

    :cond_6
    if-ne v6, v9, :cond_8

    goto :goto_3

    :cond_7
    const/4 v10, 0x3

    if-ne v6, v10, :cond_8

    :goto_3
    add-int/2addr v4, v2

    .line 153
    :cond_8
    :goto_4
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-eqz v5, :cond_9

    .line 155
    sget v3, Lcom/android/systemui/R$dimen;->kg_message_area_width_dual_display:I

    goto :goto_5

    .line 156
    :cond_9
    sget v3, Lcom/android/systemui/R$dimen;->kg_message_area_width_tablet:I

    .line 154
    :goto_5
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr v2, v1

    int-to-float v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    sub-int/2addr v1, v4

    if-nez p1, :cond_a

    neg-int v7, v1

    goto :goto_6

    :cond_a
    if-ne p1, v9, :cond_b

    goto :goto_6

    :cond_b
    move v7, v1

    :goto_6
    if-ne p1, v8, :cond_c

    if-ltz v7, :cond_d

    :cond_c
    if-nez p1, :cond_e

    if-lez v7, :cond_e

    :cond_d
    return-void

    .line 167
    :cond_e
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    int-to-float v0, v7

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mRunningOneHandedAnimator:Landroid/view/ViewPropertyAnimator;

    .line 168
    sget-object v0, Lcom/android/systemui/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 169
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mRunningOneHandedAnimator:Landroid/view/ViewPropertyAnimator;

    new-instance v0, Lcom/android/keyguard/KeyguardSecSecurityContainer$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardSecSecurityContainer$1;-><init>(Lcom/android/keyguard/KeyguardSecSecurityContainer;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 176
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mRunningOneHandedAnimator:Landroid/view/ViewPropertyAnimator;

    if-eqz p2, :cond_f

    const-wide/16 v0, 0x168

    goto :goto_7

    :cond_f
    const-wide/16 v0, 0x0

    :goto_7
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 177
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mRunningOneHandedAnimator:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method
