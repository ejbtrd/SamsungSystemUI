.class public Lcom/android/systemui/notification/FullExpansionPanelNotiAlphaController;
.super Ljava/lang/Object;
.source "FullExpansionPanelNotiAlphaController.java"


# instance fields
.field private mKeyguardTouchAnimator:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

.field private mSineInOut33:Landroid/view/animation/Interpolator;

.field private mStackScrollLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

.field private mStackScrollerAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;)V
    .locals 5

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const/4 v2, 0x0

    const v3, 0x3f2b851f    # 0.67f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/systemui/notification/FullExpansionPanelNotiAlphaController;->mSineInOut33:Landroid/view/animation/Interpolator;

    .line 31
    iput-object p1, p0, Lcom/android/systemui/notification/FullExpansionPanelNotiAlphaController;->mKeyguardTouchAnimator:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    return-void
.end method

.method private makeAlphaAnimator()V
    .locals 4

    .line 40
    new-instance v0, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/notification/FullExpansionPanelNotiAlphaController;->mStackScrollLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    const-string v3, "alpha"

    .line 41
    invoke-virtual {v0, v1, v3, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    const v1, 0x3f333333    # 0.7f

    .line 42
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    const v1, 0x3df5c28f    # 0.12f

    .line 43
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setEndDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/notification/FullExpansionPanelNotiAlphaController;->mSineInOut33:Landroid/view/animation/Interpolator;

    .line 44
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/notification/FullExpansionPanelNotiAlphaController;->mStackScrollerAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method


# virtual methods
.method public blockUpdateNSSLAlphaLocked()Z
    .locals 1

    .line 56
    iget-object p0, p0, Lcom/android/systemui/notification/FullExpansionPanelNotiAlphaController;->mKeyguardTouchAnimator:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->isViRunning()Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    return v0

    .line 59
    :cond_0
    const-class p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;

    .line 60
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->isTransformAnimating()Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public setTargetNotificationStackLayout(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/android/systemui/notification/FullExpansionPanelNotiAlphaController;->mStackScrollLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 36
    invoke-direct {p0}, Lcom/android/systemui/notification/FullExpansionPanelNotiAlphaController;->makeAlphaAnimator()V

    return-void
.end method

.method public updateNotificationAlpha(F)V
    .locals 1

    .line 49
    invoke-virtual {p0}, Lcom/android/systemui/notification/FullExpansionPanelNotiAlphaController;->blockUpdateNSSLAlphaLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 52
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/notification/FullExpansionPanelNotiAlphaController;->mStackScrollerAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    return-void
.end method
