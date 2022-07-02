.class public Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;
.super Ljava/lang/Object;
.source "NotificationIconTransitionController.java"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# instance fields
.field private mAnimationCreator:Lcom/android/systemui/statusbar/iconsOnly/AnimationCreator;

.field private mAppearingDetailScaleAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private mAppearingIconAnimSet:Landroid/animation/AnimatorSet;

.field private final mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field private mChildAnimatable:Z

.field private mContext:Landroid/content/Context;

.field private mDetailedCardScale:F

.field private mDisappearingDetailScaleAnim:Landroid/animation/ValueAnimator;

.field private mDisappearingIconAnimSet:Landroid/animation/AnimatorSet;

.field private final mFaceWidgetTouchAnimator:Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;

.field private mIconContainer:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

.field private mIsNeedDelay:Z

.field private mLockscreenNotificationManager:Lcom/android/systemui/statusbar/LockscreenNotificationManager;

.field private mNotificationStackScrollLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

.field private final mPluginLockData:Lcom/android/systemui/pluginlock/PluginLockData;

.field private misTransformAnimating:Z


# direct methods
.method public static synthetic $r8$lambda$1aKAxp3V7BlaCQb6X-ZCJOPd0kA(Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->lambda$openDetailNotification$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$3c_hnwMKxMp7paw9DglqARqDOfE(Landroid/animation/AnimatorSet;)V
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->lambda$cancelAllAnimation$8(Landroid/animation/AnimatorSet;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6y40a3bVg8pGfrxzpBW37T9hWGY(Landroidx/dynamicanimation/animation/SpringAnimation;)V
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->lambda$cancelAllAnimation$5(Landroidx/dynamicanimation/animation/SpringAnimation;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aeeowaywqtAf3L5QMFIx4Yv7E5Q(Landroid/animation/AnimatorSet;)V
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->lambda$cancelAllAnimation$7(Landroid/animation/AnimatorSet;)V

    return-void
.end method

.method public static synthetic $r8$lambda$b29jRm6CaSzLNRJ6CugOnVCM0d4(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->lambda$cancelAllAnimation$6(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gmh8kTQncvKyZ3vyJ_CiD3dptvc(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->lambda$cancelDetailDisappearingAnim$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nZzPrYLbbYa2UzMq1h5HzClIUCs(Landroid/animation/AnimatorSet;)V
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->lambda$cancelDetailDisappearingAnim$2(Landroid/animation/AnimatorSet;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pw6mgCttFHxvbvLXUpFthU0i8fU(Landroidx/dynamicanimation/animation/SpringAnimation;)V
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->lambda$cancelDetailAppearingAnim$3(Landroidx/dynamicanimation/animation/SpringAnimation;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yf7SqSAAfPWsn95Yd99qECnJg0A(Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;Landroid/animation/AnimatorSet;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->lambda$cancelDetailAppearingAnim$4(Landroid/animation/AnimatorSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/LockscreenNotificationManager;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;Lcom/android/systemui/pluginlock/PluginLockData;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->mContext:Landroid/content/Context;

    .line 78
    iput-object p2, p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->mLockscreenNotificationManager:Lcom/android/systemui/statusbar/LockscreenNotificationManager;

    .line 79
    invoke-interface {p3, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 80
    iput-object p4, p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->mFaceWidgetTouchAnimator:Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;

    .line 81
    iput-object p5, p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->mPluginLockData:Lcom/android/systemui/pluginlock/PluginLockData;

    .line 82
    iput-object p6, p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 83
    invoke-static {}, Lcom/android/systemui/util/SafeUIState;->isSysUiSafeModeEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    .line 84
    const-class p1, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-virtual {p1, p0}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    .line 86
    :cond_0
    new-instance p1, Lcom/android/systemui/statusbar/iconsOnly/AnimationCreator;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/iconsOnly/AnimationCreator;-><init>(Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->mAnimationCreator:Lcom/android/systemui/statusbar/iconsOnly/AnimationCreator;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;)Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->mFaceWidgetTouchAnimator:Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;)Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->mIconContainer:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->mDisappearingIconAnimSet:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;Z)Z
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->misTransformAnimating:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->mAppearingDetailScaleAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;)Lcom/android/systemui/statusbar/LockscreenNotificationManager;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->mLockscreenNotificationManager:Lcom/android/systemui/statusbar/LockscreenNotificationManager;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->mAppearingIconAnimSet:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method private animateDetailAppearing()V
    .locals 2

    .line 191
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->mAnimationCreator:Lcom/android/systemui/statusbar/iconsOnly/AnimationCreator;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/iconsOnly/AnimationCreator;->createDetailAppearingAnim()Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->mAppearingDetailScaleAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 192
    new-instance v1, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController$2;-><init>(Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;)V

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    const/4 v0, 0x1

    .line 200
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->misTransformAnimating:Z

    .line 201
    iget-object p0, p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->mAppearingDetailScaleAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    return-void
.end method

.method private animateDetailDisappearing()V
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->mAnimationCreator:Lcom/android/systemui/statusbar/iconsOnly/AnimationCreator;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/iconsOnly/AnimationCreator;->createDetailDisappearingAnim()Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->mDisappearingDetailScaleAnim:Landroid/animation/ValueAnimator;

    .line 327
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private animateIconAppearing()V
    .locals 3

    const/4 v0, 0x1

    .line 301
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->mIsNeedDelay:Z

    .line 302
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->mAnimationCreator:Lcom/android/systemui/statusbar/iconsOnly/AnimationCreator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->mIconContainer:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/iconsOnly/AnimationCreator;->createIconAppearingAnimSet(Landroid/view/View;)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->mAppearingIconAnimSet:Landroid/animation/AnimatorSet;

    .line 303
    new-instance v1, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController$3;-><init>(Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 316
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->mAppearingIconAnimSet:Landroid/animation/AnimatorSet;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->mIsNeedDelay:Z

    if-eqz v1, :cond_0

    const-wide/16 v1, 0xc8

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 317
    iget-object p0, p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->mAppearingIconAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private animateIconDisappearing()V
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->mAnimationCreator:Lcom/android/systemui/statusbar/iconsOnly/AnimationCreator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->mIconContainer:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/iconsOnly/AnimationCreator;->createIconDisappearingAnimSet(Landroid/view/View;)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->mDisappearingIconAnimSet:Landroid/animation/AnimatorSet;

    .line 163
    new-instance v1, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController$1;-><init>(Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 182
    iget-object p0, p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->mDisappearingIconAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private animateStackAppearing()V
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->mAnimationCreator:Lcom/android/systemui/statusbar/iconsOnly/AnimationCreator;

    iget-object p0, p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->mNotificationStackScrollLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/iconsOnly/AnimationCreator;->createStackAppearingAnim(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 187
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private animateStackDisappearing()V
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->mAnimationCreator:Lcom/android/systemui/statusbar/iconsOnly/AnimationCreator;

    iget-object p0, p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->mNotificationStackScrollLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/iconsOnly/AnimationCreator;->createStackDisappearingAnim(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 322
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private cancelAllAnimation()V
    .locals 2

    .line 264
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->mAppearingDetailScaleAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController$$ExternalSyntheticLambda7;->INSTANCE:Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController$$ExternalSyntheticLambda7;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 265
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->mDisappearingDetailScaleAnim:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController$$ExternalSyntheticLambda5;->INSTANCE:Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController$$ExternalSyntheticLambda5;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 266
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->mDisappearingIconAnimSet:Landroid/animation/AnimatorSet;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController$$ExternalSyntheticLambda3;->INSTANCE:Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController$$ExternalSyntheticLambda3;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 267
    iget-object p0, p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->mAppearingIconAnimSet:Landroid/animation/AnimatorSet;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController$$ExternalSyntheticLambda2;->INSTANCE:Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController$$ExternalSyntheticLambda2;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private cancelDetailAppearingAnim()V
    .locals 2

    .line 219
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->mAppearingDetailScaleAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController$$ExternalSyntheticLambda8;->INSTANCE:Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController$$ExternalSyntheticLambda8;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 225
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->mDisappearingIconAnimSet:Landroid/animation/AnimatorSet;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private cancelDetailDisappearingAnim()V
    .locals 2

    .line 205
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->mDisappearingDetailScaleAnim:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController$$ExternalSyntheticLambda6;->INSTANCE:Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController$$ExternalSyntheticLambda6;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 211
    iget-object p0, p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->mAppearingIconAnimSet:Landroid/animation/AnimatorSet;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController$$ExternalSyntheticLambda4;->INSTANCE:Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController$$ExternalSyntheticLambda4;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private isDetailDisappearing()Z
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->mLockscreenNotificationManager:Lcom/android/systemui/statusbar/LockscreenNotificationManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->isDetailCardFromIcon()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->mAppearingIconAnimSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->mDisappearingDetailScaleAnim:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_1

    .line 279
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private isLockStarEnabled()Z
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->mPluginLockData:Lcom/android/systemui/pluginlock/PluginLockData;

    invoke-interface {p0}, Lcom/android/systemui/pluginlock/PluginLockData;->isAvailable()Z

    move-result p0

    return p0
.end method

.method private isMainDisplay(Landroid/content/res/Configuration;)Z
    .locals 0

    .line 135
    sget-boolean p0, Lcom/android/systemui/LsRune;->LOCKUI_SUB_DISPLAY_LOCK:Z

    if-eqz p0, :cond_0

    iget p0, p1, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isPortrait(Landroid/content/res/Configuration;)Z
    .locals 0

    .line 140
    iget p0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private static synthetic lambda$cancelAllAnimation$5(Landroidx/dynamicanimation/animation/SpringAnimation;)V
    .locals 0

    .line 264
    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    return-void
.end method

.method private static synthetic lambda$cancelAllAnimation$6(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 265
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    return-void
.end method

.method private static synthetic lambda$cancelAllAnimation$7(Landroid/animation/AnimatorSet;)V
    .locals 0

    .line 266
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    return-void
.end method

.method private static synthetic lambda$cancelAllAnimation$8(Landroid/animation/AnimatorSet;)V
    .locals 0

    .line 267
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    return-void
.end method

.method private static synthetic lambda$cancelDetailAppearingAnim$3(Landroidx/dynamicanimation/animation/SpringAnimation;)V
    .locals 1

    .line 220
    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$cancelDetailAppearingAnim$4(Landroid/animation/AnimatorSet;)V
    .locals 1

    .line 226
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 227
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->mIsNeedDelay:Z

    .line 228
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$cancelDetailDisappearingAnim$1(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 206
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$cancelDetailDisappearingAnim$2(Landroid/animation/AnimatorSet;)V
    .locals 1

    .line 212
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$openDetailNotification$0()V
    .locals 1

    .line 157
    iget-object p0, p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->mFaceWidgetTouchAnimator:Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->setNotiAnimRunning(Z)V

    return-void
.end method

.method private resetPivot()V
    .locals 4

    .line 248
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->mNotificationStackScrollLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->mIconContainer:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->mNotificationStackScrollLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->mIconContainer:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    .line 249
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    div-float/2addr v1, v2

    .line 248
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setPivotX(F)V

    .line 250
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->mNotificationStackScrollLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->mIconContainer:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getY()F

    move-result v1

    iget-object v3, p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->mIconContainer:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    .line 251
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    .line 250
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setPivotY(F)V

    .line 252
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->mIconContainer:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->setPivotX(F)V

    .line 253
    iget-object p0, p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->mIconContainer:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->setPivotY(F)V

    return-void
.end method

.method private resetScale()V
    .locals 2

    .line 271
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->mNotificationStackScrollLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 272
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->mNotificationStackScrollLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setScaleY(F)V

    .line 273
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->mIconContainer:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setScaleX(F)V

    .line 274
    iget-object p0, p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->mIconContainer:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setScaleY(F)V

    return-void
.end method


# virtual methods
.method public closeDetailNotification()V
    .locals 1

    .line 286
    invoke-direct {p0}, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->resetPivot()V

    .line 287
    invoke-direct {p0}, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->cancelDetailAppearingAnim()V

    .line 289
    invoke-direct {p0}, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->isDetailDisappearing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 293
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->misTransformAnimating:Z

    .line 295
    invoke-direct {p0}, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->animateDetailDisappearing()V

    .line 296
    invoke-direct {p0}, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->animateStackDisappearing()V

    .line 297
    invoke-direct {p0}, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->animateIconAppearing()V

    return-void
.end method

.method public getDetailedCardScale()F
    .locals 0

    .line 244
    iget p0, p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->mDetailedCardScale:F

    return p0
.end method

.method public isNeedDetailCard()Z
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 121
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->isPortrait(Landroid/content/res/Configuration;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 122
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->isMainDisplay(Landroid/content/res/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->isLockStarEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isTransformAnimating()Z
    .locals 0

    .line 234
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->misTransformAnimating:Z

    return p0
.end method

.method public onFinishedGoingToSleep()V
    .locals 1

    .line 101
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->resetTransformAnimation()V

    .line 102
    iget-object p0, p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->mLockscreenNotificationManager:Lcom/android/systemui/statusbar/LockscreenNotificationManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->setShowDetail(Z)V

    return-void
.end method

.method public onStateChanged(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->resetTransformAnimation()V

    :cond_0
    return-void
.end method

.method public openDetailNotification()V
    .locals 4

    const/4 v0, 0x0

    .line 144
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->setChildAnimatable(Z)V

    .line 145
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->mLockscreenNotificationManager:Lcom/android/systemui/statusbar/LockscreenNotificationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->setShowDetail(Z)V

    .line 147
    invoke-direct {p0}, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->resetPivot()V

    .line 149
    invoke-direct {p0}, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->cancelDetailDisappearingAnim()V

    .line 151
    invoke-direct {p0}, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->animateDetailAppearing()V

    .line 152
    invoke-direct {p0}, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->animateStackAppearing()V

    .line 153
    invoke-direct {p0}, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->animateIconDisappearing()V

    .line 156
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->mFaceWidgetTouchAnimator:Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->setNotiAnimRunning(Z)V

    .line 157
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->mIconContainer:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    new-instance v1, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;)V

    const-wide/16 v2, 0x352

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public resetTransformAnimation()V
    .locals 1

    .line 257
    invoke-direct {p0}, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->cancelAllAnimation()V

    const/4 v0, 0x0

    .line 258
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->misTransformAnimating:Z

    .line 259
    invoke-direct {p0}, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->resetScale()V

    .line 260
    iget-object p0, p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->mLockscreenNotificationManager:Lcom/android/systemui/statusbar/LockscreenNotificationManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->notifyTypeChanged()V

    return-void
.end method

.method public setChildAnimatable(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->mNotificationStackScrollLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateSpeedBumpIndex()V

    .line 116
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->mChildAnimatable:Z

    return-void
.end method

.method public setLockscreenNotificationIconsOnlyContainer(Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->mIconContainer:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    return-void
.end method

.method public setNotificationStackScrollLayout(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->mNotificationStackScrollLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    return-void
.end method

.method public updateDetailedCardScale(F)V
    .locals 1

    .line 238
    iput p1, p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->mDetailedCardScale:F

    .line 239
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->mNotificationStackScrollLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 240
    iget-object p1, p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->mNotificationStackScrollLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget p0, p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->mDetailedCardScale:F

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setScaleY(F)V

    return-void
.end method

.method public updateNIOAnimateState(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V
    .locals 0

    .line 331
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object p1

    .line 332
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->mChildAnimatable:Z

    iput-boolean p0, p1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->isAnimatable:Z

    return-void
.end method
