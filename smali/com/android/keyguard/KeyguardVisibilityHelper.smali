.class public Lcom/android/keyguard/KeyguardVisibilityHelper;
.super Ljava/lang/Object;
.source "KeyguardVisibilityHelper.java"


# instance fields
.field private final mAnimateKeyguardStatusViewGoneEndRunnable:Ljava/lang/Runnable;

.field private final mAnimateKeyguardStatusViewInvisibleEndRunnable:Ljava/lang/Runnable;

.field private final mAnimateKeyguardStatusViewVisibleEndRunnable:Ljava/lang/Runnable;

.field private mAnimateYPos:Z

.field private final mAnimationProperties:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

.field private final mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field private final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field private mKeyguardViewVisibilityAnimating:Z

.field private mLastOccludedState:Z

.field private mMascotViewContainer:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

.field private final mUnlockedScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;

.field private mView:Landroid/view/View;


# direct methods
.method public static synthetic $r8$lambda$ASOLdnJqwGpt7YeIyxPf8XPuaEc(Lcom/android/keyguard/KeyguardVisibilityHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardVisibilityHelper;->lambda$new$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$Lmca95BSmYPnCvoNwA4kOko-YnU(Lcom/android/keyguard/KeyguardVisibilityHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardVisibilityHelper;->lambda$new$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$dGkezH0qEV2TN3fhHnmoPBXaekg(Lcom/android/keyguard/KeyguardVisibilityHelper;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardVisibilityHelper;->lambda$setViewVisibility$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$j2Put3I2ZzfVDxN4o5c-oLvUKHQ(Lcom/android/keyguard/KeyguardVisibilityHelper;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardVisibilityHelper;->lambda$setViewVisibility$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jPAIwGjSMdCLTnUgEpO4gtT_nkI(Lcom/android/keyguard/KeyguardVisibilityHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardVisibilityHelper;->lambda$setViewVisibility$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$x1jov1deg2eu4LB46_ZRUJh3wtU(Lcom/android/keyguard/KeyguardVisibilityHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardVisibilityHelper;->lambda$new$5()V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;Z)V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mMascotViewContainer:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mLastOccludedState:Z

    .line 53
    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mAnimationProperties:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    .line 186
    new-instance v0, Lcom/android/keyguard/KeyguardVisibilityHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardVisibilityHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardVisibilityHelper;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mAnimateKeyguardStatusViewInvisibleEndRunnable:Ljava/lang/Runnable;

    .line 194
    new-instance v0, Lcom/android/keyguard/KeyguardVisibilityHelper$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardVisibilityHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/KeyguardVisibilityHelper;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mAnimateKeyguardStatusViewGoneEndRunnable:Ljava/lang/Runnable;

    .line 202
    new-instance v0, Lcom/android/keyguard/KeyguardVisibilityHelper$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardVisibilityHelper$$ExternalSyntheticLambda3;-><init>(Lcom/android/keyguard/KeyguardVisibilityHelper;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mAnimateKeyguardStatusViewVisibleEndRunnable:Ljava/lang/Runnable;

    .line 60
    iput-object p1, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mView:Landroid/view/View;

    .line 61
    iput-object p2, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 62
    iput-object p3, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 63
    iput-object p4, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mUnlockedScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;

    .line 64
    iput-boolean p5, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mAnimateYPos:Z

    return-void
.end method

.method private synthetic lambda$new$3()V
    .locals 2

    const/4 v0, 0x0

    .line 187
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mKeyguardViewVisibilityAnimating:Z

    .line 188
    iget-object v0, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 189
    sget-boolean v0, Lcom/android/systemui/LsRune;->KEYGUARD_DCM_LIVE_UX:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mMascotViewContainer:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    if-eqz p0, :cond_0

    const/16 v0, 0x8

    .line 190
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->setMascotViewVisible(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$4()V
    .locals 2

    const/4 v0, 0x0

    .line 195
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mKeyguardViewVisibilityAnimating:Z

    .line 196
    iget-object v0, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 197
    sget-boolean v0, Lcom/android/systemui/LsRune;->KEYGUARD_DCM_LIVE_UX:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mMascotViewContainer:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    if-eqz p0, :cond_0

    .line 198
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->setMascotViewVisible(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$5()V
    .locals 1

    const/4 v0, 0x0

    .line 203
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mKeyguardViewVisibilityAnimating:Z

    return-void
.end method

.method private synthetic lambda$setViewVisibility$0(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 106
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mKeyguardViewVisibilityAnimating:Z

    const/16 p0, 0x8

    .line 107
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$setViewVisibility$1()V
    .locals 1

    const/4 v0, 0x0

    .line 125
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mKeyguardViewVisibilityAnimating:Z

    return-void
.end method

.method private synthetic lambda$setViewVisibility$2(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 135
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mKeyguardViewVisibilityAnimating:Z

    const/4 p0, 0x4

    .line 136
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    const/4 p0, 0x0

    .line 137
    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method


# virtual methods
.method public isVisibilityAnimating()Z
    .locals 0

    .line 68
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mKeyguardViewVisibilityAnimating:Z

    return p0
.end method

.method public setViewVisibility(IZZI)V
    .locals 9

    .line 79
    iget-object v0, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 81
    iget-object v4, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mView:Landroid/view/View;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    invoke-virtual/range {v1 .. v8}, Lcom/android/keyguard/KeyguardVisibilityHelper;->setViewVisibility(ZLcom/android/systemui/statusbar/phone/DcmMascotViewContainer;Landroid/view/View;IZZI)V

    return-void
.end method

.method public setViewVisibility(ZLcom/android/systemui/statusbar/phone/DcmMascotViewContainer;Landroid/view/View;IZZI)V
    .locals 6

    .line 93
    iput-object p2, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mMascotViewContainer:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    .line 94
    invoke-virtual {p3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 95
    iget-object p2, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {p2}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isOccluded()Z

    move-result p2

    const/4 v0, 0x0

    .line 96
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mKeyguardViewVisibilityAnimating:Z

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez p5, :cond_0

    if-ne p7, v4, :cond_0

    if-ne p4, v4, :cond_1

    :cond_0
    if-eqz p6, :cond_3

    .line 99
    :cond_1
    iput-boolean v4, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mKeyguardViewVisibilityAnimating:Z

    .line 100
    invoke-virtual {p3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p4

    .line 101
    invoke-virtual {p4, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p4

    .line 102
    invoke-virtual {p4, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p4

    const-wide/16 p6, 0xa0

    .line 103
    invoke-virtual {p4, p6, p7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p4

    sget-object p6, Lcom/android/systemui/animation/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    .line 104
    invoke-virtual {p4, p6}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p4

    if-eqz p1, :cond_2

    .line 105
    new-instance p1, Lcom/android/keyguard/KeyguardVisibilityHelper$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0, p3}, Lcom/android/keyguard/KeyguardVisibilityHelper$$ExternalSyntheticLambda4;-><init>(Lcom/android/keyguard/KeyguardVisibilityHelper;Landroid/view/View;)V

    goto :goto_0

    .line 108
    :cond_2
    iget-object p1, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mAnimateKeyguardStatusViewGoneEndRunnable:Ljava/lang/Runnable;

    .line 105
    :goto_0
    invoke-virtual {p4, p1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    if-eqz p5, :cond_c

    .line 110
    invoke-virtual {p3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p3, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 111
    invoke-interface {p3}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->getKeyguardFadingAwayDelay()J

    move-result-wide p3

    invoke-virtual {p1, p3, p4}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p3, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 112
    invoke-interface {p3}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->getShortenedFadingAwayDuration()J

    move-result-wide p3

    invoke-virtual {p1, p3, p4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 113
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_3

    :cond_3
    const/4 p6, 0x2

    const/high16 v5, 0x3f800000    # 1.0f

    if-ne p7, p6, :cond_5

    if-ne p4, v4, :cond_5

    .line 116
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 117
    iput-boolean v4, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mKeyguardViewVisibilityAnimating:Z

    .line 118
    invoke-virtual {p3, v3}, Landroid/view/View;->setAlpha(F)V

    .line 119
    invoke-virtual {p3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    .line 120
    invoke-virtual {p3, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    .line 121
    invoke-virtual {p3, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    const-wide/16 p4, 0x140

    .line 122
    invoke-virtual {p3, p4, p5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    sget-object p4, Lcom/android/systemui/animation/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    .line 123
    invoke-virtual {p3, p4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    if-eqz p1, :cond_4

    .line 124
    new-instance p1, Lcom/android/keyguard/KeyguardVisibilityHelper$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/android/keyguard/KeyguardVisibilityHelper$$ExternalSyntheticLambda2;-><init>(Lcom/android/keyguard/KeyguardVisibilityHelper;)V

    goto :goto_1

    .line 126
    :cond_4
    iget-object p1, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mAnimateKeyguardStatusViewVisibleEndRunnable:Ljava/lang/Runnable;

    .line 124
    :goto_1
    invoke-virtual {p3, p1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto/16 :goto_3

    :cond_5
    if-ne p4, v4, :cond_b

    if-eqz p5, :cond_8

    .line 129
    iput-boolean v4, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mKeyguardViewVisibilityAnimating:Z

    .line 130
    invoke-virtual {p3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p4

    .line 131
    invoke-virtual {p4, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p4

    .line 132
    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p5

    neg-int p5, p5

    int-to-float p5, p5

    const p6, 0x3d4ccccd    # 0.05f

    mul-float/2addr p5, p6

    invoke-virtual {p4, p5}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p4

    sget-object p5, Lcom/android/systemui/animation/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    .line 133
    invoke-virtual {p4, p5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p4

    if-eqz p1, :cond_6

    .line 134
    new-instance p1, Lcom/android/keyguard/KeyguardVisibilityHelper$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0, p3}, Lcom/android/keyguard/KeyguardVisibilityHelper$$ExternalSyntheticLambda5;-><init>(Lcom/android/keyguard/KeyguardVisibilityHelper;Landroid/view/View;)V

    goto :goto_2

    .line 138
    :cond_6
    iget-object p1, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mAnimateKeyguardStatusViewInvisibleEndRunnable:Ljava/lang/Runnable;

    .line 134
    :goto_2
    invoke-virtual {p4, p1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 139
    iget-boolean p4, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mAnimateYPos:Z

    if-eqz p4, :cond_7

    .line 140
    invoke-virtual {p3}, Landroid/view/View;->getY()F

    move-result p4

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p5

    int-to-float p5, p5

    mul-float/2addr p5, p6

    sub-float/2addr p4, p5

    const/16 p5, 0x7d

    .line 145
    iget-object p6, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mAnimationProperties:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    int-to-long v1, p5

    invoke-virtual {p6, v1, v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->setDuration(J)Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    move-result-object p5

    int-to-long p6, v0

    invoke-virtual {p5, p6, p7}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->setDelay(J)Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    .line 146
    sget-object p5, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->Y:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    invoke-static {p3, p5}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->cancelAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;)V

    .line 147
    iget-object v0, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mAnimationProperties:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    invoke-static {p3, p5, p4, v0, v4}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->setProperty(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/notification/stack/AnimationProperties;Z)V

    .line 150
    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    .line 151
    invoke-virtual {p3, p6, p7}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 153
    :cond_7
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_3

    .line 154
    :cond_8
    iget-boolean p4, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mLastOccludedState:Z

    if-eqz p4, :cond_9

    if-nez p2, :cond_9

    .line 156
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    if-nez p1, :cond_c

    .line 158
    invoke-virtual {p3, v3}, Landroid/view/View;->setAlpha(F)V

    .line 159
    invoke-virtual {p3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 p3, 0x1f4

    .line 160
    invoke-virtual {p1, p3, p4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object p3, Lcom/android/systemui/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 161
    invoke-virtual {p1, p3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 162
    invoke-virtual {p1, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p3, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mAnimateKeyguardStatusViewVisibleEndRunnable:Ljava/lang/Runnable;

    .line 163
    invoke-virtual {p1, p3}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 164
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_3

    .line 166
    :cond_9
    iget-object p1, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mUnlockedScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;

    .line 167
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->isScreenOffLightRevealAnimationPlaying()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 168
    iput-boolean v4, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mKeyguardViewVisibilityAnimating:Z

    .line 172
    iget-object p1, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mUnlockedScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;

    iget-object p4, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mAnimateKeyguardStatusViewVisibleEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p3, p4}, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->animateInKeyguard(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_3

    .line 175
    :cond_a
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 176
    invoke-virtual {p3, v5}, Landroid/view/View;->setAlpha(F)V

    goto :goto_3

    :cond_b
    const/16 p1, 0x8

    .line 179
    invoke-virtual {p3, p1}, Landroid/view/View;->setVisibility(I)V

    .line 180
    invoke-virtual {p3, v5}, Landroid/view/View;->setAlpha(F)V

    .line 183
    :cond_c
    :goto_3
    iput-boolean p2, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mLastOccludedState:Z

    return-void
.end method
