.class public final Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;
.super Lcom/android/systemui/statusbar/phone/BarTransitions;
.source "PhoneStatusBarTransitions.java"


# instance fields
.field private mBattery:Landroid/view/View;

.field private mCurrentAnimation:Landroid/animation/Animator;

.field private final mIconAlphaWhenOpaque:F

.field private mLeftSide:Landroid/view/View;

.field private mNetspeedView:Landroid/view/View;

.field private mStatusIcons:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;Landroid/view/View;)V
    .locals 2

    .line 42
    sget v0, Lcom/android/systemui/R$drawable;->status_background:I

    invoke-direct {p0, p2, v0}, Lcom/android/systemui/statusbar/phone/BarTransitions;-><init>(Landroid/view/View;I)V

    .line 43
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 44
    sget v0, Lcom/android/systemui/R$dimen;->status_bar_icon_drawing_alpha:I

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1, v1}, Landroid/content/res/Resources;->getFraction(III)F

    move-result p2

    iput p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mIconAlphaWhenOpaque:F

    .line 45
    sget p2, Lcom/android/systemui/R$id;->status_bar_left_side:I

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mLeftSide:Landroid/view/View;

    .line 46
    sget p2, Lcom/android/systemui/R$id;->statusIcons:I

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mStatusIcons:Landroid/view/View;

    .line 47
    sget p2, Lcom/android/systemui/R$id;->battery:I

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mBattery:Landroid/view/View;

    .line 48
    sget-boolean p2, Lcom/android/systemui/BasicRune;->STATUS_REAL_TIME_NETWORK_SPEED:Z

    if-eqz p2, :cond_0

    .line 49
    sget p2, Lcom/android/systemui/R$id;->networkSpeed:I

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mNetspeedView:Landroid/view/View;

    :cond_0
    const/4 p1, -0x1

    .line 51
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BarTransitions;->getMode()I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/BarTransitions;->applyModeBackground(IIZ)V

    .line 52
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BarTransitions;->getMode()I

    move-result p1

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->applyMode(IZ)V

    return-void
.end method

.method private applyMode(IZ)V
    .locals 6

    .line 82
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mLeftSide:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 83
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->getNonBatteryClockAlphaFor(I)F

    move-result v0

    .line 84
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->getBatteryClockAlpha(I)F

    move-result v1

    .line 85
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mCurrentAnimation:Landroid/animation/Animator;

    if-eqz v2, :cond_1

    .line 86
    invoke-virtual {v2}, Landroid/animation/Animator;->cancel()V

    :cond_1
    if-eqz p2, :cond_4

    .line 89
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v2, 0x3

    new-array v2, v2, [Landroid/animation/Animator;

    .line 90
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mLeftSide:Landroid/view/View;

    .line 91
    invoke-virtual {p0, v3, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->animateTransitionTo(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mStatusIcons:Landroid/view/View;

    .line 92
    invoke-virtual {p0, v3, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->animateTransitionTo(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v0, 0x2

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mBattery:Landroid/view/View;

    .line 93
    invoke-virtual {p0, v5, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->animateTransitionTo(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v2, v0

    .line 90
    invoke-virtual {p2, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 95
    sget-boolean v0, Lcom/android/systemui/BasicRune;->STATUS_REAL_TIME_NETWORK_SPEED:Z

    if-eqz v0, :cond_2

    .line 96
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mNetspeedView:Landroid/view/View;

    if-eqz v0, :cond_2

    new-array v2, v3, [Landroid/animation/Animator;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->animateTransitionTo(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-virtual {p2, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 98
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/BarTransitions;->isLightsOut(I)Z

    move-result p1

    if-eqz p1, :cond_3

    const-wide/16 v0, 0x5dc

    .line 99
    invoke-virtual {p2, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 101
    :cond_3
    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->start()V

    .line 102
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mCurrentAnimation:Landroid/animation/Animator;

    goto :goto_0

    .line 104
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mLeftSide:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 105
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mStatusIcons:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 106
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mBattery:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 107
    sget-boolean p1, Lcom/android/systemui/BasicRune;->STATUS_REAL_TIME_NETWORK_SPEED:Z

    if-eqz p1, :cond_5

    .line 108
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mNetspeedView:Landroid/view/View;

    if-eqz p0, :cond_5

    invoke-virtual {p0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_5
    :goto_0
    return-void
.end method

.method private getBatteryClockAlpha(I)F
    .locals 1

    .line 66
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/BarTransitions;->isLightsOut(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 p0, 0x3f000000    # 0.5f

    goto :goto_0

    .line 67
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->getNonBatteryClockAlphaFor(I)F

    move-result p0

    :goto_0
    return p0
.end method

.method private getNonBatteryClockAlphaFor(I)F
    .locals 1

    .line 60
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/BarTransitions;->isLightsOut(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 61
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->isOpaque(I)Z

    move-result p1

    if-nez p1, :cond_1

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 62
    :cond_1
    iget p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mIconAlphaWhenOpaque:F

    :goto_0
    return p0
.end method

.method private isOpaque(I)Z
    .locals 1

    const/4 p0, 0x1

    if-eq p1, p0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public animateTransitionTo(Landroid/view/View;F)Landroid/animation/ObjectAnimator;
    .locals 2

    const/4 p0, 0x2

    new-array p0, p0, [F

    .line 56
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    aput v0, p0, v1

    const/4 v0, 0x1

    aput p2, p0, v0

    const-string p2, "alpha"

    invoke-static {p1, p2, p0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method protected onTransition(IIZ)V
    .locals 0

    .line 77
    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/BarTransitions;->onTransition(IIZ)V

    .line 78
    invoke-direct {p0, p2, p3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->applyMode(IZ)V

    return-void
.end method
