.class public Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;
.super Landroid/widget/FrameLayout;
.source "KeyguardBiometricFingerprintGuidePopup.java"


# instance fields
.field private mAnimatorSet:Landroid/animation/AnimatorSet;

.field private mBouncerShowing:Z

.field private mDisplay:Landroid/view/Display;

.field private mGuideText:Lcom/android/systemui/widget/SystemUITextView;

.field private final mHandler:Landroid/os/Handler;

.field private mHelpString:Ljava/lang/String;

.field private final mHidePopupRunnable:Ljava/lang/Runnable;

.field private mIsAnimating:Z

.field private mIsRunningState:Z

.field private mKeyguardGuidePopup:Landroid/view/ViewGroup;

.field private mKeyguardShowing:Z

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private final mRotationWatcher:Lcom/android/systemui/shared/system/RotationWatcher;

.field private final mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private final updatePopupVisibilityRunnable:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$8tYYg0uWIQjSrT9bCNQDQHLBdZM(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->updatePopupVisibility()V

    return-void
.end method

.method public static synthetic $r8$lambda$ugbSUTG_cGLuzeNCqCdSqjr1Nj0(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->lambda$new$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 65
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    new-instance p2, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;)V

    iput-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->updatePopupVisibilityRunnable:Ljava/lang/Runnable;

    const/4 p2, 0x0

    .line 48
    iput-boolean p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->mIsAnimating:Z

    .line 58
    new-instance p2, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;)V

    iput-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->mHidePopupRunnable:Ljava/lang/Runnable;

    .line 120
    new-instance p2, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup$2;

    invoke-direct {p2, p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup$2;-><init>(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;)V

    iput-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 66
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->mHandler:Landroid/os/Handler;

    .line 67
    const-class p2, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {p2}, Lcom/android/systemui/keyguard/DisplayLifecycle;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p2

    iput-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->mDisplay:Landroid/view/Display;

    .line 68
    const-class p2, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 69
    new-instance p2, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup$1;

    invoke-direct {p2, p0, p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup$1;-><init>(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->mRotationWatcher:Lcom/android/systemui/shared/system/RotationWatcher;

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;)Ljava/lang/Runnable;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->updatePopupVisibilityRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;)Landroid/os/Handler;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;Ljava/lang/String;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->updateGuideText(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->setPopupPosition()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;)Ljava/lang/Runnable;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->mHidePopupRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->showMessage()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;)Lcom/android/systemui/shared/system/RotationWatcher;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->mRotationWatcher:Lcom/android/systemui/shared/system/RotationWatcher;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->reset()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->updatePopupVisibility()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->mKeyguardShowing:Z

    return p0
.end method

.method static synthetic access$302(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;Z)Z
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->mKeyguardShowing:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->clearGuidePopup()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->mBouncerShowing:Z

    return p0
.end method

.method static synthetic access$502(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;Z)Z
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->mBouncerShowing:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;)Landroid/content/Context;
    .locals 0

    .line 39
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$702(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;Z)Z
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->mIsRunningState:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;)Landroid/view/Display;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->mDisplay:Landroid/view/Display;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->mIsAnimating:Z

    return p0
.end method

.method static synthetic access$902(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;Z)Z
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->mIsAnimating:Z

    return p1
.end method

.method private clearGuidePopup()V
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->mGuideText:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 92
    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    .line 93
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->dismissAnimation()V

    :cond_0
    return-void
.end method

.method private dismissAnimation()V
    .locals 3

    .line 311
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->mKeyguardGuidePopup:Landroid/view/ViewGroup;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const-string v2, "alpha"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 312
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 314
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 315
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 316
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->mAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup$4;

    invoke-direct {v1, p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup$4;-><init>(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 334
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private isTimerRunning()Z
    .locals 4

    .line 347
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->getLockoutAttemptDeadline()J

    move-result-wide v0

    .line 348
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getLockoutBiometricAttemptDeadline()J

    move-result-wide v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$new$0()V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->clearGuidePopup()V

    return-void
.end method

.method private reset()V
    .locals 2

    .line 338
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->mIsAnimating:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 340
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v0, 0x0

    .line 341
    iput-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->mAnimatorSet:Landroid/animation/AnimatorSet;

    :cond_1
    const/4 v0, 0x0

    .line 343
    iput-boolean v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->mIsAnimating:Z

    return-void
.end method

.method private setPopupPosition()V
    .locals 4

    .line 98
    const-class v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/DisplayLifecycle;->getRealSize()Landroid/graphics/Point;

    move-result-object v0

    .line 99
    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->getInDisplayFingerprintImageSize()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 100
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->kg_biometric_fingerprint_guide_popup_margin_left:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 101
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->getInDisplayFingerprintHeight()I

    move-result v1

    .line 102
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->getInDisplayFingerprintImageSize()I

    move-result v2

    sub-int/2addr v1, v2

    .line 103
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$dimen;->kg_biometric_fingerprint_guide_popup_margin_top:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 104
    iget-object v2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->mKeyguardGuidePopup:Landroid/view/ViewGroup;

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 105
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->mKeyguardGuidePopup:Landroid/view/ViewGroup;

    int-to-float v0, v1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setTranslationY(F)V

    return-void
.end method

.method private showMessage()V
    .locals 3

    .line 281
    iget-boolean v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->mIsAnimating:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->mHelpString:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->mKeyguardGuidePopup:Landroid/view/ViewGroup;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const-string v2, "alpha"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x64

    .line 286
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 287
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 289
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 290
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 291
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->mAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup$3;

    invoke-direct {v1, p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup$3;-><init>(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 307
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateGuideText(Ljava/lang/String;)V
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->mGuideText:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v0, :cond_0

    .line 260
    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->mHelpString:Ljava/lang/String;

    .line 261
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->mGuideText:Lcom/android/systemui/widget/SystemUITextView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private updatePopupVisibility()V
    .locals 2

    .line 267
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_GUIDE_POPUP:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->mIsRunningState:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->mKeyguardShowing:Z

    if-eqz v0, :cond_0

    .line 270
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->isTimerRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 271
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintOptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->mDisplay:Landroid/view/Display;

    .line 272
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->getRotation(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 273
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->clearGuidePopup()V

    const/4 v0, 0x0

    .line 274
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 275
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x8

    .line 276
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 110
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 111
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 116
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 117
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 79
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const-string v0, "KeyguardFingerprintGuidePopup"

    const-string v1, "onFinishInflate()"

    .line 80
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x8

    .line 82
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 84
    sget v0, Lcom/android/systemui/R$id;->keyguard_fingerprint_guide_popup:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->mKeyguardGuidePopup:Landroid/view/ViewGroup;

    .line 85
    sget v0, Lcom/android/systemui/R$id;->keyguard_guide_text:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUITextView;

    iput-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->mGuideText:Lcom/android/systemui/widget/SystemUITextView;

    const v1, 0x3f8ccccd    # 1.1f

    .line 86
    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setMaxFontScale(F)V

    .line 87
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->mGuideText:Lcom/android/systemui/widget/SystemUITextView;

    const-class v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/DisplayLifecycle;->getRealSize()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    const v1, 0x3ed1eb85    # 0.41f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMaxWidth(I)V

    return-void
.end method
