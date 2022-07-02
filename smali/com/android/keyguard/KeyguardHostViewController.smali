.class public Lcom/android/keyguard/KeyguardHostViewController;
.super Lcom/android/systemui/util/ViewController;
.source "KeyguardHostViewController.java"

# interfaces
.implements Lcom/android/systemui/widget/SystemUIWidgetCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardHostViewController$StatusLoggingTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/util/ViewController<",
        "Lcom/android/keyguard/KeyguardHostView;",
        ">;",
        "Lcom/android/systemui/widget/SystemUIWidgetCallback;"
    }
.end annotation


# instance fields
.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mBiometricView:Landroid/widget/FrameLayout;

.field private final mBiometricViewController:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

.field private mCancelAction:Ljava/lang/Runnable;

.field private final mCarrierText:Lcom/android/keyguard/CarrierText;

.field private final mCarrierTextController:Lcom/android/keyguard/CarrierTextController;

.field private final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field private final mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mCurrentPosition:I

.field private mCurrentRotation:I

.field private mDismissAction:Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;

.field private mDisplayCutout:Landroid/view/DisplayCutout;

.field private final mDisplayLifecycleObserver:Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;

.field private final mDisplayListener:Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;

.field private mIsAttemptRemainingBeforeWipe:Z

.field private mIsDisappearAnimation:Z

.field private mIsFolderOpened:Z

.field private mIsTableArrowState:Z

.field private mIsTimerRunning:Z

.field private final mKeyguardRotationController:Lcom/android/keyguard/KeyguardRotationController;

.field private final mKeyguardRotationListener:Lcom/android/keyguard/KeyguardRotationController$KeyguardRotationListener;

.field private final mKeyguardSecurityContainerController:Lcom/android/keyguard/KeyguardSecurityContainerController;

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mLastUpdateTime:J

.field private mLeftArrow:Lcom/android/systemui/widget/SystemUIImageView;

.field private mLeftArrowContainer:Landroid/widget/FrameLayout;

.field private mLeftArrowGD:Landroid/view/GestureDetector;

.field private final mOnApplyWindowInsetsListener:Landroid/view/View$OnApplyWindowInsetsListener;

.field private mOnKeyListener:Landroid/view/View$OnKeyListener;

.field private mRightArrow:Lcom/android/systemui/widget/SystemUIImageView;

.field private mRightArrowContainer:Landroid/widget/FrameLayout;

.field private mRightArrowGD:Landroid/view/GestureDetector;

.field private final mSecurityCallback:Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private final mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private final mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;


# direct methods
.method public static synthetic $r8$lambda$C3aCP220XciHOvx7T4UTFMGE61k(Lcom/android/keyguard/KeyguardHostViewController;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardHostViewController;->lambda$initArrowViewTouchListener$1(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$JS4rU3u4ddVHAnN4eY650CgznyA(Lcom/android/keyguard/KeyguardHostViewController;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardHostViewController;->lambda$initArrowViewTouchListener$2(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$JrjRYhNBUiyIPkhGa_AFPX2_-a8(Lcom/android/keyguard/KeyguardHostViewController;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/keyguard/KeyguardHostViewController;->lambda$new$0(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/keyguard/KeyguardHostView;Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/media/AudioManager;Landroid/telephony/TelephonyManager;Lcom/android/keyguard/ViewMediatorCallback;Lcom/android/keyguard/KeyguardSecurityContainerController$Factory;Lcom/android/keyguard/CarrierTextController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;Lcom/android/keyguard/KeyguardRotationController;)V
    .locals 3

    .line 435
    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    .line 113
    new-instance p1, Lcom/android/keyguard/KeyguardHostViewController$1;

    invoke-direct {p1, p0}, Lcom/android/keyguard/KeyguardHostViewController$1;-><init>(Lcom/android/keyguard/KeyguardHostViewController;)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardHostViewController;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 224
    new-instance p1, Lcom/android/keyguard/KeyguardHostViewController$2;

    invoke-direct {p1, p0}, Lcom/android/keyguard/KeyguardHostViewController$2;-><init>(Lcom/android/keyguard/KeyguardHostViewController;)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardHostViewController;->mSecurityCallback:Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

    .line 300
    new-instance v0, Lcom/android/keyguard/KeyguardHostViewController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardHostViewController$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardHostViewController;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    .line 308
    new-instance v0, Lcom/android/keyguard/KeyguardHostViewController$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardHostViewController$3;-><init>(Lcom/android/keyguard/KeyguardHostViewController;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    const/4 v0, 0x0

    .line 324
    iput-object v0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mDisplayCutout:Landroid/view/DisplayCutout;

    .line 326
    new-instance v0, Lcom/android/keyguard/KeyguardHostViewController$4;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardHostViewController$4;-><init>(Lcom/android/keyguard/KeyguardHostViewController;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mDisplayListener:Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;

    .line 338
    new-instance v0, Lcom/android/keyguard/KeyguardHostViewController$5;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardHostViewController$5;-><init>(Lcom/android/keyguard/KeyguardHostViewController;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mOnApplyWindowInsetsListener:Landroid/view/View$OnApplyWindowInsetsListener;

    const/4 v1, -0x1

    .line 360
    iput v1, p0, Lcom/android/keyguard/KeyguardHostViewController;->mCurrentRotation:I

    .line 364
    new-instance v1, Lcom/android/keyguard/KeyguardHostViewController$6;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardHostViewController$6;-><init>(Lcom/android/keyguard/KeyguardHostViewController;)V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardHostViewController;->mKeyguardRotationListener:Lcom/android/keyguard/KeyguardRotationController$KeyguardRotationListener;

    const-wide/16 v1, -0x1

    .line 382
    iput-wide v1, p0, Lcom/android/keyguard/KeyguardHostViewController;->mLastUpdateTime:J

    const/4 v1, 0x1

    .line 384
    iput v1, p0, Lcom/android/keyguard/KeyguardHostViewController;->mCurrentPosition:I

    const/4 v2, 0x0

    .line 398
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardHostViewController;->mIsDisappearAnimation:Z

    .line 400
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardHostViewController;->mIsTableArrowState:Z

    .line 402
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardHostViewController;->mIsFolderOpened:Z

    .line 404
    new-instance v1, Lcom/android/keyguard/KeyguardHostViewController$7;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardHostViewController$7;-><init>(Lcom/android/keyguard/KeyguardHostViewController;)V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardHostViewController;->mDisplayLifecycleObserver:Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;

    .line 436
    iput-object p2, p0, Lcom/android/keyguard/KeyguardHostViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 437
    iput-object p3, p0, Lcom/android/keyguard/KeyguardHostViewController;->mAudioManager:Landroid/media/AudioManager;

    .line 438
    iput-object p4, p0, Lcom/android/keyguard/KeyguardHostViewController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 439
    iput-object p5, p0, Lcom/android/keyguard/KeyguardHostViewController;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    .line 440
    invoke-virtual {p6, p1}, Lcom/android/keyguard/KeyguardSecurityContainerController$Factory;->create(Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;)Lcom/android/keyguard/KeyguardSecurityContainerController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardHostViewController;->mKeyguardSecurityContainerController:Lcom/android/keyguard/KeyguardSecurityContainerController;

    .line 443
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/keyguard/KeyguardHostView;

    sget p2, Lcom/android/systemui/R$id;->bouncer_carrier_text:I

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/keyguard/CarrierText;

    iput-object p1, p0, Lcom/android/keyguard/KeyguardHostViewController;->mCarrierText:Lcom/android/keyguard/CarrierText;

    .line 444
    iput-object p7, p0, Lcom/android/keyguard/KeyguardHostViewController;->mCarrierTextController:Lcom/android/keyguard/CarrierTextController;

    .line 445
    iput-object p8, p0, Lcom/android/keyguard/KeyguardHostViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 447
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostViewController;->updateCarrierTextMaxWidth()V

    .line 449
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 452
    iput-object p9, p0, Lcom/android/keyguard/KeyguardHostViewController;->mBiometricViewController:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    .line 453
    invoke-virtual {p9}, Lcom/android/systemui/util/ViewController;->init()V

    .line 454
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/keyguard/KeyguardHostView;

    sget p2, Lcom/android/systemui/R$id;->keyguard_biometric_view_container:I

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/android/keyguard/KeyguardHostViewController;->mBiometricView:Landroid/widget/FrameLayout;

    .line 455
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->bringToFront()V

    .line 457
    iput-object p10, p0, Lcom/android/keyguard/KeyguardHostViewController;->mKeyguardRotationController:Lcom/android/keyguard/KeyguardRotationController;

    .line 459
    sget-boolean p1, Lcom/android/systemui/LsRune;->SECURITY_ARROW_VIEW:Z

    if-eqz p1, :cond_0

    .line 460
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/keyguard/KeyguardHostView;

    sget p2, Lcom/android/systemui/R$id;->left_arrow_container:I

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/android/keyguard/KeyguardHostViewController;->mLeftArrowContainer:Landroid/widget/FrameLayout;

    .line 461
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->bringToFront()V

    .line 462
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/keyguard/KeyguardHostView;

    sget p2, Lcom/android/systemui/R$id;->left_arrow:I

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/widget/SystemUIImageView;

    iput-object p1, p0, Lcom/android/keyguard/KeyguardHostViewController;->mLeftArrow:Lcom/android/systemui/widget/SystemUIImageView;

    .line 463
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/keyguard/KeyguardHostView;

    sget p2, Lcom/android/systemui/R$id;->right_arrow_container:I

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/android/keyguard/KeyguardHostViewController;->mRightArrowContainer:Landroid/widget/FrameLayout;

    .line 464
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->bringToFront()V

    .line 465
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/keyguard/KeyguardHostView;

    sget p2, Lcom/android/systemui/R$id;->right_arrow:I

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/widget/SystemUIImageView;

    iput-object p1, p0, Lcom/android/keyguard/KeyguardHostViewController;->mRightArrow:Lcom/android/systemui/widget/SystemUIImageView;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardHostViewController;)Lcom/android/keyguard/KeyguardSecurityContainerController;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mKeyguardSecurityContainerController:Lcom/android/keyguard/KeyguardSecurityContainerController;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardHostViewController;)Landroid/view/View;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/keyguard/KeyguardHostViewController;)Lcom/android/systemui/widget/SystemUIImageView;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mRightArrow:Lcom/android/systemui/widget/SystemUIImageView;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/keyguard/KeyguardHostViewController;)Z
    .locals 0

    .line 93
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostViewController;->isSupportedArrowView()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lcom/android/keyguard/KeyguardHostViewController;)V
    .locals 0

    .line 93
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostViewController;->updateArrowView()V

    return-void
.end method

.method static synthetic access$1302(Lcom/android/keyguard/KeyguardHostViewController;Z)Z
    .locals 0

    .line 93
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardHostViewController;->mIsTableArrowState:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/keyguard/KeyguardHostViewController;)Z
    .locals 0

    .line 93
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostViewController;->checkArrowVisibility()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1500(Lcom/android/keyguard/KeyguardHostViewController;)V
    .locals 0

    .line 93
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostViewController;->initArrowView()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/keyguard/KeyguardHostViewController;)V
    .locals 0

    .line 93
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostViewController;->updateArrowMargin()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/keyguard/KeyguardHostViewController;)Landroid/widget/FrameLayout;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mBiometricView:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/android/keyguard/KeyguardHostViewController;)Landroid/content/Context;
    .locals 0

    .line 93
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1900(Lcom/android/keyguard/KeyguardHostViewController;)Landroid/content/Context;
    .locals 0

    .line 93
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardHostViewController;)Lcom/android/keyguard/ViewMediatorCallback;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/android/keyguard/KeyguardHostViewController;)Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mDismissAction:Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;

    return-object p0
.end method

.method static synthetic access$2002(Lcom/android/keyguard/KeyguardHostViewController;Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;)Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/android/keyguard/KeyguardHostViewController;->mDismissAction:Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;

    return-object p1
.end method

.method static synthetic access$2102(Lcom/android/keyguard/KeyguardHostViewController;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/android/keyguard/KeyguardHostViewController;->mCancelAction:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/keyguard/KeyguardHostViewController;)V
    .locals 0

    .line 93
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostViewController;->updateCarrierTextMaxWidth()V

    return-void
.end method

.method static synthetic access$2302(Lcom/android/keyguard/KeyguardHostViewController;Landroid/view/DisplayCutout;)Landroid/view/DisplayCutout;
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/android/keyguard/KeyguardHostViewController;->mDisplayCutout:Landroid/view/DisplayCutout;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/android/keyguard/KeyguardHostViewController;)V
    .locals 0

    .line 93
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostViewController;->updateCarrierTextPadding()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/keyguard/KeyguardHostViewController;)I
    .locals 0

    .line 93
    iget p0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mCurrentRotation:I

    return p0
.end method

.method static synthetic access$2502(Lcom/android/keyguard/KeyguardHostViewController;I)I
    .locals 0

    .line 93
    iput p1, p0, Lcom/android/keyguard/KeyguardHostViewController;->mCurrentRotation:I

    return p1
.end method

.method static synthetic access$2600(Lcom/android/keyguard/KeyguardHostViewController;)V
    .locals 0

    .line 93
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostViewController;->updateBiometricViewLayout()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/keyguard/KeyguardHostViewController;Z)V
    .locals 0

    .line 93
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardHostViewController;->updateSecurityViewPosition(Z)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/keyguard/KeyguardHostViewController;)I
    .locals 0

    .line 93
    iget p0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mCurrentPosition:I

    return p0
.end method

.method static synthetic access$2802(Lcom/android/keyguard/KeyguardHostViewController;I)I
    .locals 0

    .line 93
    iput p1, p0, Lcom/android/keyguard/KeyguardHostViewController;->mCurrentPosition:I

    return p1
.end method

.method static synthetic access$2902(Lcom/android/keyguard/KeyguardHostViewController;Z)Z
    .locals 0

    .line 93
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardHostViewController;->mIsFolderOpened:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/keyguard/KeyguardHostViewController;)Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mSecurityCallback:Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/android/keyguard/KeyguardHostViewController;)Landroid/view/View;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/android/keyguard/KeyguardHostViewController;Z)V
    .locals 0

    .line 93
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardHostViewController;->startLockIconAnimation(Z)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/keyguard/KeyguardHostViewController;)V
    .locals 0

    .line 93
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostViewController;->startArrowViewAnimation()V

    return-void
.end method

.method static synthetic access$3402(Lcom/android/keyguard/KeyguardHostViewController;Z)Z
    .locals 0

    .line 93
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardHostViewController;->mIsTimerRunning:Z

    return p1
.end method

.method static synthetic access$3502(Lcom/android/keyguard/KeyguardHostViewController;Z)Z
    .locals 0

    .line 93
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardHostViewController;->mIsAttemptRemainingBeforeWipe:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/keyguard/KeyguardHostViewController;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/keyguard/KeyguardHostViewController;Z)V
    .locals 0

    .line 93
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardHostViewController;->updateArrowVisibility(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/keyguard/KeyguardHostViewController;)V
    .locals 0

    .line 93
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostViewController;->updateSecurityViewCenterPosition()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/keyguard/KeyguardHostViewController;)V
    .locals 0

    .line 93
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostViewController;->handleAttemptLockout()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/keyguard/KeyguardHostViewController;)Lcom/android/keyguard/CarrierText;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mCarrierText:Lcom/android/keyguard/CarrierText;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/keyguard/KeyguardHostViewController;)Lcom/android/systemui/widget/SystemUIImageView;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mLeftArrow:Lcom/android/systemui/widget/SystemUIImageView;

    return-object p0
.end method

.method private calculateLandscapeViewWidth(I)I
    .locals 2

    .line 1027
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050204

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    mul-int/lit8 v1, v0, 0x2

    sub-int v1, p1, v1

    .line 1029
    div-int/lit8 v1, v1, 0x2

    .line 1030
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isInDisplayFingerprintMarginAccepted()Z

    move-result p0

    if-eqz p0, :cond_0

    sub-int/2addr p1, v0

    .line 1032
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->getInDisplayFingerprintHeight()I

    move-result p0

    sub-int/2addr p1, p0

    div-int/lit8 v1, p1, 0x2

    :cond_0
    return v1
.end method

.method private checkArrowVisibility()Z
    .locals 4

    .line 1246
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->getLockoutAttemptDeadline()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-gtz v0, :cond_1

    .line 1247
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->isSmartViewFitToActiveDisplay(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1250
    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mIsFolderOpened:Z

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mIsDisappearAnimation:Z

    if-nez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method private getArrowContainerBottomMargin()I
    .locals 6

    .line 1342
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1343
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v1

    .line 1344
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostViewController;->getCurrentSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v2

    sget-object v3, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    const/4 v4, 0x0

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v4

    .line 1345
    :goto_0
    sget-boolean v3, Lcom/android/systemui/LsRune;->SECURITY_NAVBAR_ENABLED:Z

    if-eqz v3, :cond_1

    .line 1346
    sget v3, Lcom/android/systemui/R$dimen;->navigation_bar_frame_height:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 1347
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v3, Lcom/android/keyguard/KeyguardHostView;

    sget v5, Lcom/android/systemui/R$id;->emergency_call_button:I

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v1, :cond_3

    if-eqz v2, :cond_2

    .line 1351
    sget v2, Lcom/android/systemui/R$dimen;->kg_pattern_lock_pattern_view_margin_bottom_tablet:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sget v5, Lcom/android/systemui/R$dimen;->keyguard_bottom_area_emergency_button_area_min_height_tablet:I

    .line 1352
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    add-int/2addr v2, v5

    sget v5, Lcom/android/systemui/R$dimen;->kg_pattern_eca_margin_bottom_tablet:I

    .line 1353
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    goto :goto_1

    .line 1355
    :cond_2
    sget v2, Lcom/android/systemui/R$dimen;->kg_pin_container_margin_bottom_tablet:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sget v5, Lcom/android/systemui/R$dimen;->keyguard_bottom_area_emergency_button_area_min_height_tablet:I

    .line 1356
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    add-int/2addr v2, v5

    sget v5, Lcom/android/systemui/R$dimen;->kg_pin_eca_margin_bottom_tablet:I

    .line 1357
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_4

    .line 1361
    sget v2, Lcom/android/systemui/R$dimen;->kg_pattern_lock_pattern_view_margin_bottom:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sget v5, Lcom/android/systemui/R$dimen;->keyguard_bottom_area_emergency_button_area_min_height:I

    .line 1362
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    add-int/2addr v2, v5

    sget v5, Lcom/android/systemui/R$dimen;->kg_pattern_eca_margin_bottom:I

    .line 1363
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    goto :goto_1

    .line 1365
    :cond_4
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->getPINContainerBottomMargin()I

    move-result v2

    sget v5, Lcom/android/systemui/R$dimen;->keyguard_bottom_area_emergency_button_area_min_height:I

    .line 1366
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    add-int/2addr v2, v5

    sget v5, Lcom/android/systemui/R$dimen;->kg_pin_eca_margin_bottom:I

    .line 1367
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    :goto_1
    add-int/2addr v2, v5

    add-int/2addr v2, v4

    const/16 v5, 0x8

    if-ne v3, v5, :cond_6

    if-eqz v1, :cond_5

    .line 1372
    sget v1, Lcom/android/systemui/R$dimen;->keyguard_bottom_area_emergency_button_area_min_height_tablet:I

    goto :goto_2

    .line 1373
    :cond_5
    sget v1, Lcom/android/systemui/R$dimen;->keyguard_bottom_area_emergency_button_area_min_height:I

    .line 1371
    :goto_2
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr v2, v1

    .line 1375
    :cond_6
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isInDisplayFingerprintMarginAccepted()Z

    move-result v1

    if-eqz v1, :cond_7

    iget p0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mCurrentRotation:I

    if-nez p0, :cond_7

    .line 1377
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->getInDisplayFingerprintHeight()I

    move-result p0

    sget v1, Lcom/android/systemui/R$dimen;->kg_emergency_button_margin_bottom_for_tablet_fingerprint:I

    .line 1378
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr p0, v0

    sub-int/2addr p0, v4

    add-int/2addr v2, p0

    :cond_7
    return v2
.end method

.method private getArrowContainerSideMargin()I
    .locals 2

    .line 1332
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1333
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1334
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostViewController;->getDisplayWidth()I

    move-result p0

    int-to-float p0, p0

    sget v1, Lcom/android/systemui/R$dimen;->kg_arrow_view_side_margin_tablet_ratio:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    mul-float/2addr p0, v0

    float-to-int p0, p0

    return p0

    .line 1336
    :cond_0
    sget p0, Lcom/android/systemui/R$dimen;->kg_arrow_view_side_margin:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method private getDisplayWidth()I
    .locals 1

    .line 1079
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 1080
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/util/DeviceState;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 1081
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p0

    return p0

    .line 1083
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method private getSecurityContainerHeight()I
    .locals 7

    .line 1304
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1305
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 1306
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 1307
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 1308
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1309
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1310
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostViewController;->getCurrentSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object p0

    sget-object v4, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p0, v4, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 1312
    :goto_0
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v4

    const/high16 v5, 0x40400000    # 3.0f

    const/high16 v6, 0x40800000    # 4.0f

    if-eqz v4, :cond_2

    if-eqz p0, :cond_1

    .line 1314
    sget p0, Lcom/android/systemui/R$dimen;->kg_pattern_lock_pattern_view_height_tablet:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_1

    :cond_1
    int-to-float p0, v3

    .line 1316
    sget v1, Lcom/android/systemui/R$dimen;->tablet_num_pad_key_size_ratio:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    mul-float/2addr p0, v1

    mul-float/2addr p0, v6

    int-to-float v1, v2

    sget v2, Lcom/android/systemui/R$dimen;->tablet_num_pad_key_bottom_margin_ratio:I

    .line 1317
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    mul-float/2addr v1, v0

    mul-float/2addr v1, v5

    add-float/2addr p0, v1

    float-to-int p0, p0

    goto :goto_1

    :cond_2
    if-eqz p0, :cond_3

    .line 1321
    sget p0, Lcom/android/systemui/R$dimen;->kg_pattern_lock_pattern_view_height:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_1

    :cond_3
    int-to-float p0, v1

    .line 1323
    sget v1, Lcom/android/systemui/R$dimen;->fold_num_pad_key_size_ratio:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    mul-float/2addr v1, p0

    mul-float/2addr v1, v6

    sget v2, Lcom/android/systemui/R$dimen;->fold_num_pad_key_bottom_margin_ratio:I

    .line 1324
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    mul-float/2addr p0, v0

    mul-float/2addr p0, v5

    add-float/2addr v1, p0

    float-to-int p0, v1

    :goto_1
    return p0
.end method

.method private handleAttemptLockout()V
    .locals 11

    .line 917
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->getLockoutAttemptDeadline()J

    move-result-wide v0

    .line 918
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 919
    iget-object v4, p0, Lcom/android/keyguard/KeyguardHostViewController;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v4, :cond_0

    .line 920
    invoke-virtual {v4}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v4, 0x0

    .line 921
    iput-object v4, p0, Lcom/android/keyguard/KeyguardHostViewController;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 923
    :cond_0
    new-instance v4, Lcom/android/keyguard/KeyguardHostViewController$9;

    sub-long v7, v0, v2

    const-wide/16 v9, 0x3e8

    move-object v5, v4

    move-object v6, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/keyguard/KeyguardHostViewController$9;-><init>(Lcom/android/keyguard/KeyguardHostViewController;JJ)V

    .line 945
    invoke-virtual {v4}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mCountdownTimer:Landroid/os/CountDownTimer;

    return-void
.end method

.method private handleMediaKeyEvent(Landroid/view/KeyEvent;)V
    .locals 0

    .line 834
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V

    return-void
.end method

.method private initArrowView()V
    .locals 2

    .line 1128
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostViewController;->checkArrowVisibility()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1129
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->getBouncerOneHandPosition()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 1130
    :goto_0
    iput v1, p0, Lcom/android/keyguard/KeyguardHostViewController;->mCurrentPosition:I

    .line 1131
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardHostViewController;->mIsTableArrowState:Z

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isLockScreenRotationAllowed()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "KeyguardViewBase"

    const-string v1, "Set force left security view position"

    .line 1132
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 1133
    iput v0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mCurrentPosition:I

    .line 1136
    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostViewController;->updateArrowView()V

    return-void
.end method

.method private initArrowViewTouchListener()V
    .locals 3

    .line 1141
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/keyguard/KeyguardHostViewController$10;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardHostViewController$10;-><init>(Lcom/android/keyguard/KeyguardHostViewController;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mLeftArrowGD:Landroid/view/GestureDetector;

    .line 1182
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mLeftArrow:Lcom/android/systemui/widget/SystemUIImageView;

    new-instance v1, Lcom/android/keyguard/KeyguardHostViewController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardHostViewController$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/KeyguardHostViewController;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1186
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/keyguard/KeyguardHostViewController$11;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardHostViewController$11;-><init>(Lcom/android/keyguard/KeyguardHostViewController;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mRightArrowGD:Landroid/view/GestureDetector;

    .line 1227
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mRightArrow:Lcom/android/systemui/widget/SystemUIImageView;

    new-instance v1, Lcom/android/keyguard/KeyguardHostViewController$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardHostViewController$$ExternalSyntheticLambda2;-><init>(Lcom/android/keyguard/KeyguardHostViewController;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private isInvalidArrowView()Z
    .locals 1

    .line 1255
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostViewController;->isSupportedArrowView()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mLeftArrow:Lcom/android/systemui/widget/SystemUIImageView;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mRightArrow:Lcom/android/systemui/widget/SystemUIImageView;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isRTL()Z
    .locals 1

    .line 1512
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 p0, p0, 0xc0

    const/16 v0, 0x80

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isSupportedArrowView()Z
    .locals 1

    .line 1403
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostViewController;->getCurrentSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object p0

    .line 1404
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPin:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPuk:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private synthetic lambda$initArrowViewTouchListener$1(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1183
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mLeftArrowGD:Landroid/view/GestureDetector;

    invoke-virtual {p0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$initArrowViewTouchListener$2(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1228
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mRightArrowGD:Landroid/view/GestureDetector;

    invoke-virtual {p0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$new$0(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 300
    invoke-virtual {p0, p3}, Lcom/android/keyguard/KeyguardHostViewController;->interceptMediaKey(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method private startArrowViewAnimation()V
    .locals 1

    .line 1056
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mLeftArrow:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardHostViewController;->startArrowViewAnimation(Landroid/view/View;)V

    .line 1057
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mRightArrow:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardHostViewController;->startArrowViewAnimation(Landroid/view/View;)V

    return-void
.end method

.method private startArrowViewAnimation(Landroid/view/View;)V
    .locals 5

    if-eqz p1, :cond_0

    .line 1062
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    .line 1063
    sget-object p0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    invoke-static {p1, p0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 1064
    sget-object v1, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v2, v0, [F

    fill-array-data v2, :array_1

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 1065
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v0, [F

    fill-array-data v3, :array_2

    invoke-static {p1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 1067
    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1068
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v3, 0x3

    new-array v3, v3, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 p0, 0x1

    aput-object v1, v3, p0

    aput-object p1, v3, v0

    .line 1069
    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1070
    new-instance p0, Landroid/view/animation/PathInterpolator;

    const p1, 0x3e6147ae    # 0.22f

    const/high16 v0, 0x3e800000    # 0.25f

    const/4 v1, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, v0, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v2, p0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 p0, 0x15e

    .line 1071
    invoke-virtual {v2, p0, p1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    const-wide/16 p0, 0x0

    .line 1072
    invoke-virtual {v2, p0, p1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 1073
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x3f333333    # 0.7f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f333333    # 0.7f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private startLockIconAnimation(Z)V
    .locals 4

    .line 1039
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mBiometricView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 1041
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1042
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mBiometricView:Landroid/widget/FrameLayout;

    sget-object p1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 1043
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const v0, 0x3e6147ae    # 0.22f

    const/high16 v2, 0x3e800000    # 0.25f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {p1, v0, v2, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0x15e

    .line 1044
    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1045
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 1047
    :cond_0
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0xc8

    .line 1048
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/view/animation/SineInOut90;

    invoke-direct {p1}, Lcom/samsung/android/view/animation/SineInOut90;-><init>()V

    .line 1049
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    :cond_1
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateArrowMargin()V
    .locals 7

    .line 1260
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostViewController;->isInvalidArrowView()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1263
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1264
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostViewController;->mLeftArrowContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1265
    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostViewController;->mRightArrowContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 1266
    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardHostViewController;->mIsFolderOpened:Z

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/systemui/util/DeviceState;->isSmartViewFitToActiveDisplay(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 1272
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostViewController;->getCurrentSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v3, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 1274
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostViewController;->getArrowContainerSideMargin()I

    move-result v3

    .line 1275
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostViewController;->getArrowContainerBottomMargin()I

    move-result v4

    .line 1276
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostViewController;->getSecurityContainerHeight()I

    move-result v5

    .line 1277
    sget v6, Lcom/android/systemui/R$dimen;->navigation_bar_frame_height:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 1278
    iget v0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mCurrentRotation:I

    const/4 v6, 0x1

    if-eq v0, v6, :cond_2

    const/4 v6, 0x3

    .line 1290
    :cond_2
    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1291
    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1292
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1293
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1294
    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1295
    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x0

    .line 1267
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1268
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1269
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1270
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1298
    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mLeftArrowContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1299
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mRightArrowContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateArrowStyle(Z)V
    .locals 3

    .line 1387
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostViewController;->isInvalidArrowView()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1391
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mLeftArrow:Lcom/android/systemui/widget/SystemUIImageView;

    if-eqz p1, :cond_1

    .line 1392
    sget v1, Lcom/android/systemui/R$drawable;->lock_bouncer_whitebg_btn_left_mtrl:I

    goto :goto_0

    :cond_1
    sget v1, Lcom/android/systemui/R$drawable;->lock_bouncer_btn_left_mtrl:I

    .line 1391
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1393
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mRightArrow:Lcom/android/systemui/widget/SystemUIImageView;

    if-eqz p1, :cond_2

    .line 1394
    sget v1, Lcom/android/systemui/R$drawable;->lock_bouncer_whitebg_btn_right_mtrl:I

    goto :goto_1

    :cond_2
    sget v1, Lcom/android/systemui/R$drawable;->lock_bouncer_btn_right_mtrl:I

    .line 1393
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1395
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mLeftArrow:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz p1, :cond_3

    .line 1396
    sget v2, Lcom/android/systemui/R$drawable;->ripple_drawable_pin_whitebg:I

    goto :goto_2

    :cond_3
    sget v2, Lcom/android/systemui/R$drawable;->origin_ripple_drawable:I

    .line 1395
    :goto_2
    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1397
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mRightArrow:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p1, :cond_4

    .line 1398
    sget p1, Lcom/android/systemui/R$drawable;->ripple_drawable_pin_whitebg:I

    goto :goto_3

    :cond_4
    sget p1, Lcom/android/systemui/R$drawable;->origin_ripple_drawable:I

    .line 1397
    :goto_3
    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private updateArrowView()V
    .locals 1

    .line 1235
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostViewController;->isInvalidArrowView()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "background"

    .line 1238
    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardHostViewController;->updateArrowStyle(Z)V

    const/4 v0, 0x1

    .line 1239
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardHostViewController;->updateArrowVisibility(Z)V

    .line 1240
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostViewController;->updateArrowMargin()V

    const/4 v0, 0x0

    .line 1241
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardHostViewController;->updateSecurityViewPosition(Z)V

    return-void
.end method

.method private updateArrowVisibility(Z)V
    .locals 4

    .line 1088
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostViewController;->isInvalidArrowView()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1091
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostViewController;->checkArrowVisibility()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    .line 1092
    iget p1, p0, Lcom/android/keyguard/KeyguardHostViewController;->mCurrentPosition:I

    const/4 v0, 0x2

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_1

    .line 1100
    iget-object p1, p0, Lcom/android/keyguard/KeyguardHostViewController;->mLeftArrow:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {p1, v2}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    .line 1101
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mRightArrow:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {p0, v2}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    goto :goto_2

    .line 1095
    :cond_1
    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostViewController;->mLeftArrow:Lcom/android/systemui/widget/SystemUIImageView;

    if-nez p1, :cond_2

    move p1, v1

    goto :goto_0

    :cond_2
    move p1, v2

    :goto_0
    invoke-virtual {v3, p1}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    .line 1096
    iget-object p1, p0, Lcom/android/keyguard/KeyguardHostViewController;->mRightArrow:Lcom/android/systemui/widget/SystemUIImageView;

    iget p0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mCurrentPosition:I

    if-ne p0, v0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    invoke-virtual {p1, v1}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    goto :goto_2

    .line 1104
    :cond_4
    iget-object p1, p0, Lcom/android/keyguard/KeyguardHostViewController;->mLeftArrow:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {p1, v1}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    .line 1105
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mRightArrow:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {p0, v1}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method private updateBiometricViewLayout()V
    .locals 12

    .line 950
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mBiometricView:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    return-void

    .line 953
    :cond_0
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_SWIPE_BOUNCER:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mKeyguardSecurityContainerController:Lcom/android/keyguard/KeyguardSecurityContainerController;

    .line 954
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->getCurrentSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Swipe:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v0, v1, :cond_1

    .line 955
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mBiometricView:Landroid/widget/FrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void

    .line 958
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 959
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostViewController;->mKeyguardSecurityContainerController:Lcom/android/keyguard/KeyguardSecurityContainerController;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityContainerController;->getCurrentSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_2

    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v4

    .line 960
    :goto_0
    sget v2, Lcom/android/systemui/R$dimen;->kg_message_area_padding_side:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 961
    iget-object v5, p0, Lcom/android/keyguard/KeyguardHostViewController;->mBiometricView:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 963
    sget-boolean v6, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    if-eqz v6, :cond_4

    iget-boolean v7, p0, Lcom/android/keyguard/KeyguardHostViewController;->mIsFolderOpened:Z

    if-eqz v7, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/systemui/util/DeviceState;->isSmartViewFitToActiveDisplay(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_4

    if-eqz v1, :cond_3

    .line 965
    sget v7, Lcom/android/systemui/R$dimen;->kg_password_message_area_width_dual_display:I

    goto :goto_1

    .line 966
    :cond_3
    sget v7, Lcom/android/systemui/R$dimen;->kg_message_area_width_dual_display:I

    .line 964
    :goto_1
    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    goto :goto_2

    :cond_4
    const/4 v7, -0x1

    .line 967
    :goto_2
    iput v7, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/4 v7, -0x2

    .line 968
    iput v7, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v8, 0x31

    .line 969
    iput v8, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 970
    iput v4, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 971
    iget-object v8, p0, Lcom/android/keyguard/KeyguardHostViewController;->mBiometricView:Landroid/widget/FrameLayout;

    invoke-virtual {v8, v4, v4, v4, v4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 972
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget-object v8, v8, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v8}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v8

    invoke-static {v8}, Lcom/android/systemui/util/DeviceState;->getRotation(I)I

    move-result v8

    .line 973
    iget v9, p0, Lcom/android/keyguard/KeyguardHostViewController;->mCurrentRotation:I

    if-eq v9, v8, :cond_5

    .line 974
    iput v8, p0, Lcom/android/keyguard/KeyguardHostViewController;->mCurrentRotation:I

    .line 976
    :cond_5
    iget v8, p0, Lcom/android/keyguard/KeyguardHostViewController;->mCurrentRotation:I

    const/4 v9, 0x3

    if-eq v8, v3, :cond_6

    if-eq v8, v9, :cond_6

    .line 1019
    invoke-virtual {v5, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 1020
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mBiometricView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    goto/16 :goto_7

    .line 979
    :cond_6
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v8

    if-nez v8, :cond_11

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/android/systemui/util/DeviceState;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_11

    if-eqz v6, :cond_7

    iget-boolean v6, p0, Lcom/android/keyguard/KeyguardHostViewController;->mIsFolderOpened:Z

    if-eqz v6, :cond_7

    .line 981
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/systemui/util/DeviceState;->isSmartViewFitToActiveDisplay(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_7

    goto/16 :goto_7

    .line 984
    :cond_7
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostViewController;->getDisplayWidth()I

    move-result v6

    .line 985
    sget v8, Lcom/android/systemui/R$dimen;->navigation_bar_frame_height:I

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 986
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->getInDisplayFingerprintHeight()I

    move-result v8

    .line 987
    iget-object v10, p0, Lcom/android/keyguard/KeyguardHostViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v10}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isInDisplayFingerprintMarginAccepted()Z

    move-result v10

    .line 988
    iget-boolean v11, p0, Lcom/android/keyguard/KeyguardHostViewController;->mIsAttemptRemainingBeforeWipe:Z

    if-eqz v11, :cond_8

    mul-int/lit8 v11, v0, 0x2

    sub-int/2addr v6, v11

    .line 989
    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-eqz v10, :cond_9

    sub-int v11, v8, v0

    sub-int/2addr v6, v11

    .line 991
    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_3

    .line 994
    :cond_8
    invoke-direct {p0, v6}, Lcom/android/keyguard/KeyguardHostViewController;->calculateLandscapeViewWidth(I)I

    move-result v6

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    :cond_9
    :goto_3
    const v6, 0x800033

    .line 996
    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 997
    iput v7, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-eqz v10, :cond_e

    .line 1000
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v6

    if-ne v6, v3, :cond_a

    move v6, v3

    goto :goto_4

    :cond_a
    move v6, v4

    :goto_4
    if-nez v6, :cond_b

    .line 1003
    iget v7, p0, Lcom/android/keyguard/KeyguardHostViewController;->mCurrentRotation:I

    if-eq v7, v9, :cond_c

    :cond_b
    if-eqz v6, :cond_d

    iget v6, p0, Lcom/android/keyguard/KeyguardHostViewController;->mCurrentRotation:I

    if-ne v6, v3, :cond_d

    :cond_c
    sub-int/2addr v8, v0

    goto :goto_5

    :cond_d
    move v8, v4

    :goto_5
    add-int/2addr v0, v8

    .line 1006
    :cond_e
    invoke-virtual {v5, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 1007
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mBiometricView:Landroid/widget/FrameLayout;

    .line 1008
    iget-object v6, p0, Lcom/android/keyguard/KeyguardHostViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 1007
    invoke-interface {v6}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->getLockoutAttemptDeadline()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_f

    iget-object v6, p0, Lcom/android/keyguard/KeyguardHostViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 1008
    invoke-virtual {v6, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getRemainingAttempt(I)I

    move-result v6

    if-lez v6, :cond_f

    move v6, v4

    goto :goto_6

    :cond_f
    move v6, v2

    .line 1007
    :goto_6
    invoke-virtual {v0, v4, v4, v6, v4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    if-eqz v10, :cond_11

    if-eqz v1, :cond_11

    .line 1011
    iget v0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mCurrentRotation:I

    if-ne v0, v3, :cond_10

    .line 1012
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mBiometricView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4, v4, v2, v4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    goto :goto_7

    .line 1014
    :cond_10
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mBiometricView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2, v4, v4, v4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 1022
    :cond_11
    :goto_7
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mBiometricView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v5}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateCarrierTextMaxWidth()V
    .locals 2

    .line 906
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mCarrierText:Lcom/android/keyguard/CarrierText;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->isCenterDisplayCutOut(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 907
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 908
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mCarrierText:Lcom/android/keyguard/CarrierText;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$dimen;->carrier_label_portrait_max_width:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto :goto_0

    .line 910
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mCarrierText:Lcom/android/keyguard/CarrierText;

    const v0, 0x7fffffff

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMaxWidth(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateCarrierTextPadding()V
    .locals 6

    .line 1462
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    .line 1463
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostViewController;->mDisplayCutout:Landroid/view/DisplayCutout;

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 1464
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mDisplayCutout:Landroid/view/DisplayCutout;

    .line 1467
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mDisplayCutout:Landroid/view/DisplayCutout;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 1468
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10504bc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/systemui/util/DeviceState;->getDeviceResolutionPixelSize(Landroid/content/Context;I)I

    move-result v0

    .line 1469
    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostViewController;->mDisplayCutout:Landroid/view/DisplayCutout;

    iget-object v3, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v3, Lcom/android/keyguard/KeyguardHostView;

    .line 1470
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->cornerCutoutMargins(Landroid/view/DisplayCutout;Landroid/view/Display;)Landroid/util/Pair;

    move-result-object v2

    .line 1471
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$dimen;->keyguard_carrier_label_text_margin:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    if-eqz v2, :cond_a

    if-lez v0, :cond_3

    .line 1475
    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_1

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v4, v0

    goto :goto_0

    :cond_1
    move v4, v3

    .line 1476
    :goto_0
    iget-object v5, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lez v5, :cond_2

    iget-object v5, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v5, v0

    goto :goto_1

    :cond_2
    move v5, v3

    goto :goto_1

    .line 1478
    :cond_3
    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int v4, v0, v3

    .line 1479
    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int v5, v0, v3

    .line 1481
    :goto_1
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    if-eqz v0, :cond_4

    .line 1482
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v0

    .line 1483
    iget-boolean v5, p0, Lcom/android/keyguard/KeyguardHostViewController;->mIsFolderOpened:Z

    if-eqz v5, :cond_5

    if-nez v0, :cond_5

    .line 1484
    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    const v2, 0x3f147ae1    # 0.58f

    mul-float/2addr v0, v2

    float-to-int v3, v0

    goto :goto_2

    :cond_4
    move v3, v5

    .line 1489
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mCarrierText:Lcom/android/keyguard/CarrierText;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1490
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostViewController;->isRTL()Z

    move-result v2

    if-eqz v2, :cond_6

    move v4, v3

    :cond_6
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 1491
    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostViewController;->mCarrierText:Lcom/android/keyguard/CarrierText;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1492
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mCarrierText:Lcom/android/keyguard/CarrierText;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostViewController;->isRTL()Z

    move-result p0

    if-eqz p0, :cond_7

    move v3, v1

    :cond_7
    invoke-virtual {v0, v1, v1, v3, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_4

    .line 1495
    :cond_8
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    if-eqz v0, :cond_a

    .line 1496
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostViewController;->isRTL()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mCarrierText:Lcom/android/keyguard/CarrierText;

    if-eqz v0, :cond_a

    .line 1497
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v0

    .line 1498
    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostViewController;->mCarrierText:Lcom/android/keyguard/CarrierText;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v3, 0x1

    if-ne v0, v3, :cond_9

    .line 1500
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    goto :goto_3

    .line 1502
    :cond_9
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->keyguard_carrier_label_text_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 1504
    :goto_3
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mCarrierText:Lcom/android/keyguard/CarrierText;

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_a
    :goto_4
    return-void
.end method

.method private updateSecurityViewCenterPosition()V
    .locals 2

    .line 1123
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mKeyguardSecurityContainerController:Lcom/android/keyguard/KeyguardSecurityContainerController;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardSecurityContainerController;->updateSecurityViewPosition(IZ)V

    return-void
.end method

.method private updateSecurityViewPosition(Z)V
    .locals 3

    .line 1111
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardHostViewController;->mIsTimerRunning:Z

    if-nez v1, :cond_3

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostViewController;->checkArrowVisibility()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostViewController;->isSupportedArrowView()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1115
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostViewController;->mKeyguardSecurityContainerController:Lcom/android/keyguard/KeyguardSecurityContainerController;

    iget v2, p0, Lcom/android/keyguard/KeyguardHostViewController;->mCurrentPosition:I

    invoke-virtual {v1, v2, p1}, Lcom/android/keyguard/KeyguardSecurityContainerController;->updateSecurityViewPosition(IZ)V

    .line 1116
    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardHostViewController;->mIsTableArrowState:Z

    if-eqz p1, :cond_1

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isLockScreenRotationAllowed()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1117
    :cond_1
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    iget p0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mCurrentPosition:I

    invoke-virtual {p1, p0}, Lcom/android/systemui/util/SettingsHelper;->setBouncerOneHandPosition(I)V

    :cond_2
    return-void

    .line 1112
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostViewController;->updateSecurityViewCenterPosition()V

    return-void
.end method


# virtual methods
.method public announceForAccessibility(Ljava/lang/CharSequence;)V
    .locals 0

    .line 901
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public appear(I)V
    .locals 6

    .line 566
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 567
    iget-object p1, p0, Lcom/android/keyguard/KeyguardHostViewController;->mKeyguardSecurityContainerController:Lcom/android/keyguard/KeyguardSecurityContainerController;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardSecurityContainerController;->startAppearAnimation()V

    .line 569
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostViewController;->updateBiometricViewLayout()V

    const/4 p1, 0x1

    .line 570
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardHostViewController;->startLockIconAnimation(Z)V

    .line 572
    sget-boolean p1, Lcom/android/systemui/LsRune;->SECURITY_ARROW_VIEW:Z

    if-eqz p1, :cond_1

    .line 573
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostViewController;->startArrowViewAnimation()V

    goto :goto_0

    .line 576
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lcom/android/keyguard/KeyguardHostViewController$8;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardHostViewController$8;-><init>(Lcom/android/keyguard/KeyguardHostViewController;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 592
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 595
    :cond_1
    :goto_0
    sget-boolean p1, Lcom/android/systemui/LsRune;->SECURITY_ARROW_VIEW:Z

    if-eqz p1, :cond_2

    .line 596
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostViewController;->isInvalidArrowView()Z

    move-result p1

    if-nez p1, :cond_2

    .line 597
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 598
    iget-wide v2, p0, Lcom/android/keyguard/KeyguardHostViewController;->mLastUpdateTime:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0x240c8400

    cmp-long p1, v2, v4

    if-lez p1, :cond_2

    .line 599
    iput-wide v0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mLastUpdateTime:J

    .line 600
    new-instance p0, Lcom/android/keyguard/KeyguardHostViewController$StatusLoggingTask;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardHostViewController$StatusLoggingTask;-><init>(Lcom/android/keyguard/KeyguardHostViewController$1;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    .line 601
    invoke-virtual {p0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_2
    return-void
.end method

.method public cancelDismissAction()V
    .locals 2

    .line 647
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget-object v1, Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;->KEYGUARD_DISMISS_ACTION_ACTIVE:Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;

    invoke-interface {v0, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->setDismissActionType(Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;)V

    const/4 v0, 0x0

    .line 650
    invoke-virtual {p0, v0, v0}, Lcom/android/keyguard/KeyguardHostViewController;->setOnDismissAction(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;)V

    return-void
.end method

.method public cleanUp()V
    .locals 0

    .line 531
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mKeyguardSecurityContainerController:Lcom/android/keyguard/KeyguardSecurityContainerController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->onPause()V

    return-void
.end method

.method public dismiss(I)Z
    .locals 1

    .line 544
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mSecurityCallback:Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1, v0}, Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;->dismiss(ZIZ)Z

    move-result p0

    return p0
.end method

.method public dispatchBackKeyEventPreIme()Z
    .locals 1

    .line 752
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mKeyguardSecurityContainerController:Lcom/android/keyguard/KeyguardSecurityContainerController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->getCurrentSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object p0

    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 885
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardHostViewController;->interceptMediaKey(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 888
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_1

    .line 889
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestFocus()Z

    .line 891
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public finish(ZI)V
    .locals 0

    .line 838
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mSecurityCallback:Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

    invoke-interface {p0, p1, p2}, Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;->finish(ZI)V

    return-void
.end method

.method public getAccessibilityTitleForCurrentMode()Ljava/lang/CharSequence;
    .locals 0

    .line 557
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mKeyguardSecurityContainerController:Lcom/android/keyguard/KeyguardSecurityContainerController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    .locals 0

    .line 706
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mKeyguardSecurityContainerController:Lcom/android/keyguard/KeyguardSecurityContainerController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->getCurrentSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object p0

    return-object p0
.end method

.method public hasDismissActions()Z
    .locals 1

    .line 702
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mDismissAction:Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mCancelAction:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public interceptMediaKey(Landroid/view/KeyEvent;)Z
    .locals 8

    .line 767
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 768
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/16 v2, 0x7f

    const/16 v3, 0x7e

    const/16 v4, 0xde

    const/16 v5, 0x82

    const/16 v6, 0x4f

    const/4 v7, 0x1

    if-nez v1, :cond_2

    if-eq v0, v6, :cond_1

    if-eq v0, v5, :cond_1

    if-eq v0, v4, :cond_1

    if-eq v0, v3, :cond_0

    if-eq v0, v2, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 775
    :cond_0
    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    .line 776
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-eqz v0, :cond_1

    return v7

    .line 788
    :cond_1
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardHostViewController;->handleMediaKeyEvent(Landroid/view/KeyEvent;)V

    return v7

    .line 810
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v7, :cond_4

    if-eq v0, v6, :cond_3

    if-eq v0, v5, :cond_3

    if-eq v0, v4, :cond_3

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_3

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 824
    :cond_3
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardHostViewController;->handleMediaKeyEvent(Landroid/view/KeyEvent;)V

    return v7

    :cond_4
    :goto_0
    const/4 p0, 0x0

    return p0

    :pswitch_data_0
    .packed-switch 0x55
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x55
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public onInit()V
    .locals 1

    .line 471
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mKeyguardSecurityContainerController:Lcom/android/keyguard/KeyguardSecurityContainerController;

    invoke-virtual {v0}, Lcom/android/systemui/util/ViewController;->init()V

    .line 472
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostViewController;->updateResources()V

    .line 474
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mCarrierTextController:Lcom/android/keyguard/CarrierTextController;

    invoke-virtual {v0}, Lcom/android/keyguard/CarrierTextController;->onInit()V

    .line 476
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_ARROW_VIEW:Z

    if-eqz v0, :cond_0

    .line 477
    const-class v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/DisplayLifecycle;->isFolderOpened()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mIsFolderOpened:Z

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 673
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "screen off, instance %s at %s"

    .line 672
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardViewBase"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mKeyguardSecurityContainerController:Lcom/android/keyguard/KeyguardSecurityContainerController;

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardSecurityContainerController;->showPrimarySecurityScreen(Z)V

    .line 676
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mKeyguardSecurityContainerController:Lcom/android/keyguard/KeyguardSecurityContainerController;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->onPause()V

    .line 677
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->clearFocus()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 551
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "screen on, instance "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardViewBase"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mKeyguardSecurityContainerController:Lcom/android/keyguard/KeyguardSecurityContainerController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSecurityContainerController;->onResume(I)V

    .line 553
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestFocus()Z

    return-void
.end method

.method public onStartingToHide()V
    .locals 0

    .line 698
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mKeyguardSecurityContainerController:Lcom/android/keyguard/KeyguardSecurityContainerController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->onStartingToHide()V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 0

    .line 1455
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mKeyguardSecurityContainerController:Lcom/android/keyguard/KeyguardSecurityContainerController;

    if-eqz p0, :cond_0

    .line 1456
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainerController;->onTrimMemory(I)V

    :cond_0
    return-void
.end method

.method protected onViewAttached()V
    .locals 3

    .line 483
    const-class v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardHostView;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostViewController;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardHostView;->setViewMediatorCallback(Lcom/android/keyguard/ViewMediatorCallback;)V

    .line 485
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostViewController;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostViewController;->mKeyguardSecurityContainerController:Lcom/android/keyguard/KeyguardSecurityContainerController;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardSecurityContainerController;->needsInput()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/keyguard/ViewMediatorCallback;->setNeedsInput(Z)V

    .line 486
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostViewController;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 487
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardHostView;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostViewController;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 488
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostViewController;->mKeyguardSecurityContainerController:Lcom/android/keyguard/KeyguardSecurityContainerController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardSecurityContainerController;->showPrimarySecurityScreen(Z)V

    .line 490
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostViewController;->mCarrierTextController:Lcom/android/keyguard/CarrierTextController;

    invoke-virtual {v1}, Lcom/android/keyguard/CarrierTextController;->onViewAttached()V

    .line 491
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostViewController;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 492
    sget-boolean v1, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    if-eqz v1, :cond_0

    .line 493
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostViewController;->mDisplayListener:Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;

    invoke-virtual {v1, v2}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    .line 496
    :cond_0
    sget-boolean v1, Lcom/android/systemui/LsRune;->SECURITY_ARROW_VIEW:Z

    if-eqz v1, :cond_1

    .line 497
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostViewController;->mDisplayLifecycleObserver:Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    const-string v0, "background"

    .line 499
    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIWidgetUtil;->convertFlag(Ljava/lang/String;)J

    move-result-wide v0

    .line 498
    invoke-static {p0, v0, v1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->registerSystemUIWidgetCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;J)V

    .line 501
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostViewController;->initArrowView()V

    .line 502
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostViewController;->initArrowViewTouchListener()V

    .line 505
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mKeyguardRotationController:Lcom/android/keyguard/KeyguardRotationController;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mKeyguardRotationListener:Lcom/android/keyguard/KeyguardRotationController$KeyguardRotationListener;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method protected onViewDetached()V
    .locals 3

    .line 511
    const-class v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostViewController;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 512
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardHostView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 514
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostViewController;->mKeyguardRotationController:Lcom/android/keyguard/KeyguardRotationController;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostViewController;->mKeyguardRotationListener:Lcom/android/keyguard/KeyguardRotationController$KeyguardRotationListener;

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    .line 516
    sget-boolean v1, Lcom/android/systemui/LsRune;->SECURITY_ARROW_VIEW:Z

    if-eqz v1, :cond_0

    .line 517
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostViewController;->mDisplayLifecycleObserver:Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;

    invoke-virtual {v1, v2}, Lcom/android/systemui/keyguard/SecLifecycle;->removeObserver(Ljava/lang/Object;)V

    .line 518
    invoke-static {p0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->removeSystemUIWidgetCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;)V

    .line 521
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostViewController;->mCarrierTextController:Lcom/android/keyguard/CarrierTextController;

    invoke-virtual {v1}, Lcom/android/keyguard/CarrierTextController;->onViewDetached()V

    .line 522
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostViewController;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    .line 523
    sget-boolean v1, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    if-eqz v1, :cond_1

    .line 524
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mDisplayListener:Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;

    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/SecLifecycle;->removeObserver(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public resetSecurityContainer()V
    .locals 0

    .line 535
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mKeyguardSecurityContainerController:Lcom/android/keyguard/KeyguardSecurityContainerController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->reset()V

    return-void
.end method

.method public setExpansion(F)V
    .locals 4

    const v0, 0x3f733333    # 0.95f

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 689
    invoke-static {v0, v1, v1, v2, p1}, Landroid/util/MathUtils;->map(FFFFF)F

    move-result v0

    .line 690
    iget-object v3, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v3, Lcom/android/keyguard/KeyguardHostView;

    invoke-static {v0, v2, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 691
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    move-object v0, p0

    check-cast v0, Lcom/android/keyguard/KeyguardHostView;

    check-cast p0, Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p1, p0

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    return-void
.end method

.method public setOnDismissAction(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;)V
    .locals 2

    .line 633
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mCancelAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 634
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    .line 635
    iput-object v0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mCancelAction:Ljava/lang/Runnable;

    .line 638
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->setDismissActionExist(Z)V

    .line 640
    iput-object p1, p0, Lcom/android/keyguard/KeyguardHostViewController;->mDismissAction:Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;

    .line 641
    iput-object p2, p0, Lcom/android/keyguard/KeyguardHostViewController;->mCancelAction:Ljava/lang/Runnable;

    return-void
.end method

.method public setShowSwipeBouncer(Z)V
    .locals 0

    .line 896
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mKeyguardSecurityContainerController:Lcom/android/keyguard/KeyguardSecurityContainerController;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainerController;->setShowSwipeBouncer(Z)V

    return-void
.end method

.method public shouldEnableMenuKey()Z
    .locals 4

    .line 737
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_SIM_PERM_DISABLED:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 738
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->isSimDisabledPermanently()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 741
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 742
    sget v0, Lcom/android/systemui/R$bool;->config_disableMenuKeyInLockScreen:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    .line 743
    invoke-static {}, Landroid/app/ActivityManager;->isRunningInTestHarness()Z

    move-result v0

    .line 744
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/local/enable_menu_key"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz p0, :cond_1

    if-nez v0, :cond_1

    if-eqz v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public showErrorMessage(Ljava/lang/CharSequence;)V
    .locals 1

    .line 624
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settingslib/Utils;->getColorError(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/keyguard/KeyguardHostViewController;->showMessage(Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public showMessage(Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 620
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mKeyguardSecurityContainerController:Lcom/android/keyguard/KeyguardSecurityContainerController;

    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/KeyguardSecurityContainerController;->showMessage(Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public showPrimarySecurityScreen()V
    .locals 2

    const-string v0, "KeyguardViewBase"

    const-string/jumbo v1, "show()"

    .line 684
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mKeyguardSecurityContainerController:Lcom/android/keyguard/KeyguardSecurityContainerController;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->showPrimarySecurityScreen(Z)V

    return-void
.end method

.method public showPromptReason(I)V
    .locals 0

    .line 616
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mKeyguardSecurityContainerController:Lcom/android/keyguard/KeyguardSecurityContainerController;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainerController;->showPromptReason(I)V

    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)V
    .locals 1

    .line 654
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mKeyguardSecurityContainerController:Lcom/android/keyguard/KeyguardSecurityContainerController;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardSecurityContainerController;->startDisappearAnimation(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 656
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    const/4 p1, 0x0

    .line 659
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardHostViewController;->startLockIconAnimation(Z)V

    .line 661
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_ARROW_VIEW:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 662
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mIsDisappearAnimation:Z

    .line 663
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardHostViewController;->updateArrowVisibility(Z)V

    :cond_1
    return-void
.end method

.method public updateResources()V
    .locals 3

    .line 849
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 851
    sget v1, Lcom/android/systemui/R$bool;->can_use_one_handed_bouncer:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x11100d1

    .line 852
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 854
    sget v1, Lcom/android/systemui/R$integer;->keyguard_host_view_one_handed_gravity:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    goto :goto_0

    .line 857
    :cond_0
    sget v1, Lcom/android/systemui/R$integer;->keyguard_host_view_gravity:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 863
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v1, :cond_1

    .line 864
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 865
    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-eq v2, v0, :cond_1

    .line 866
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 867
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 871
    :cond_1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mKeyguardSecurityContainerController:Lcom/android/keyguard/KeyguardSecurityContainerController;

    if-eqz p0, :cond_2

    .line 872
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->updateResources()V

    :cond_2
    return-void
.end method

.method public updateStyle(JLandroid/app/SemWallpaperColors;)V
    .locals 0

    .line 1411
    sget-boolean p1, Lcom/android/systemui/LsRune;->SECURITY_ARROW_VIEW:Z

    if-eqz p1, :cond_0

    const-string p1, "background"

    .line 1412
    invoke-static {p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardHostViewController;->updateArrowStyle(Z)V

    :cond_0
    return-void
.end method
