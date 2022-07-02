.class public Lcom/android/keyguard/KeyguardSecPatternViewController;
.super Lcom/android/keyguard/KeyguardPatternViewController;
.source "KeyguardSecPatternViewController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/keyguard/KeyguardPatternViewController<",
        "Lcom/android/keyguard/KeyguardSecPatternView;",
        ">;"
    }
.end annotation


# instance fields
.field private final mBottomView:Landroid/widget/LinearLayout;

.field private mBouncerShowing:Z

.field private final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field private final mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

.field private final mContainer:Landroid/widget/LinearLayout;

.field private mCurrentRotation:I

.field private final mDisplayListener:Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;

.field private final mEcaView:Landroid/view/View;

.field private final mEmergencyButtonController:Lcom/android/keyguard/EmergencyButtonController;

.field private mEnableHaptics:Z

.field private mGoingToSleep:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

.field private final mInterpolator:Landroid/view/animation/PathInterpolator;

.field private mIsNightModeOn:Z

.field private final mKeyguardRotationController:Lcom/android/keyguard/KeyguardRotationController;

.field private final mKeyguardRotationListener:Lcom/android/keyguard/KeyguardRotationController$KeyguardRotationListener;

.field private final mKeyguardTextBuilder:Lcom/android/keyguard/KeyguardTextBuilder;

.field private final mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private final mKnoxStateCallback:Lcom/android/systemui/knox/KnoxStateMonitorCallback;

.field private final mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

.field private final mMessageArea:Landroid/widget/LinearLayout;

.field private mPromptReason:I

.field private mSecondsRemaining:I

.field private final mSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

.field private final mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

.field private final mSecurityView:Landroid/widget/LinearLayout;

.field private final mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

.field private final mUpdateLayoutRunnable:Ljava/lang/Runnable;

.field private final mVibrationUtil:Lcom/android/systemui/vibrate/VibrationUtil;


# direct methods
.method public static synthetic $r8$lambda$n5m1iBghSab7CMHg34NqbkqRC4A(Lcom/android/keyguard/KeyguardSecPatternViewController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecPatternViewController;->lambda$new$0()V

    return-void
.end method

.method public constructor <init>(Lcom/android/keyguard/KeyguardSecPatternView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/internal/util/LatencyTracker;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/vibrate/VibrationUtil;Lcom/android/keyguard/KeyguardRotationController;)V
    .locals 0

    .line 356
    invoke-direct/range {p0 .. p9}, Lcom/android/keyguard/KeyguardPatternViewController;-><init>(Lcom/android/keyguard/KeyguardPatternView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/internal/util/LatencyTracker;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;)V

    .line 72
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const p2, 0x3e6147ae    # 0.22f

    const/high16 p3, 0x3e800000    # 0.25f

    const/4 p4, 0x0

    const/high16 p5, 0x3f800000    # 1.0f

    invoke-direct {p1, p2, p3, p4, p5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mInterpolator:Landroid/view/animation/PathInterpolator;

    .line 74
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    .line 103
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mIsNightModeOn:Z

    const/4 p2, -0x1

    .line 108
    iput p2, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mSecondsRemaining:I

    .line 110
    new-instance p2, Lcom/android/keyguard/KeyguardSecPatternViewController$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/keyguard/KeyguardSecPatternViewController$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardSecPatternViewController;)V

    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mUpdateLayoutRunnable:Ljava/lang/Runnable;

    .line 116
    new-instance p2, Lcom/android/keyguard/KeyguardSecPatternViewController$1;

    invoke-direct {p2, p0}, Lcom/android/keyguard/KeyguardSecPatternViewController$1;-><init>(Lcom/android/keyguard/KeyguardSecPatternViewController;)V

    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    .line 135
    new-instance p2, Lcom/android/keyguard/KeyguardSecPatternViewController$2;

    invoke-direct {p2, p0}, Lcom/android/keyguard/KeyguardSecPatternViewController$2;-><init>(Lcom/android/keyguard/KeyguardSecPatternViewController;)V

    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mKeyguardRotationListener:Lcom/android/keyguard/KeyguardRotationController$KeyguardRotationListener;

    .line 687
    new-instance p2, Lcom/android/keyguard/KeyguardSecPatternViewController$4;

    invoke-direct {p2, p0}, Lcom/android/keyguard/KeyguardSecPatternViewController$4;-><init>(Lcom/android/keyguard/KeyguardSecPatternViewController;)V

    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 827
    new-instance p2, Lcom/android/keyguard/KeyguardSecPatternViewController$5;

    invoke-direct {p2, p0}, Lcom/android/keyguard/KeyguardSecPatternViewController$5;-><init>(Lcom/android/keyguard/KeyguardSecPatternViewController;)V

    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mKnoxStateCallback:Lcom/android/systemui/knox/KnoxStateMonitorCallback;

    .line 874
    new-instance p2, Lcom/android/keyguard/KeyguardSecPatternViewController$6;

    invoke-direct {p2, p0}, Lcom/android/keyguard/KeyguardSecPatternViewController$6;-><init>(Lcom/android/keyguard/KeyguardSecPatternViewController;)V

    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mDisplayListener:Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;

    .line 359
    iput-object p8, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mEmergencyButtonController:Lcom/android/keyguard/EmergencyButtonController;

    .line 360
    iput-object p10, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 361
    iput-object p11, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mVibrationUtil:Lcom/android/systemui/vibrate/VibrationUtil;

    .line 362
    iput-object p12, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mKeyguardRotationController:Lcom/android/keyguard/KeyguardRotationController;

    .line 364
    iget-object p2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p2, Lcom/android/keyguard/KeyguardSecPatternView;

    sget p3, Lcom/android/systemui/R$id;->message_area:I

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mMessageArea:Landroid/widget/LinearLayout;

    .line 365
    iget-object p2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p2, Lcom/android/keyguard/KeyguardSecPatternView;

    sget p3, Lcom/android/systemui/R$id;->container:I

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mContainer:Landroid/widget/LinearLayout;

    .line 366
    iget-object p2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p2, Lcom/android/keyguard/KeyguardSecPatternView;

    sget p3, Lcom/android/systemui/R$id;->keyguard_pattern_view:I

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mSecurityView:Landroid/widget/LinearLayout;

    .line 367
    iget-object p2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p2, Lcom/android/keyguard/KeyguardSecPatternView;

    sget p3, Lcom/android/systemui/R$id;->bottom_container:I

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mBottomView:Landroid/widget/LinearLayout;

    .line 368
    iget-object p2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    invoke-static {p2}, Lcom/android/keyguard/KeyguardMessageArea;->findSecurityMessageDisplay(Landroid/view/View;)Lcom/android/keyguard/KeyguardMessageArea;

    move-result-object p2

    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    .line 369
    iget-object p2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p2, Lcom/android/keyguard/KeyguardSecPatternView;

    sget p3, Lcom/android/systemui/R$id;->keyguard_selector_fade_container:I

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mEcaView:Landroid/view/View;

    .line 371
    iget-object p2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p2, Lcom/android/keyguard/KeyguardSecPatternView;

    sget p3, Lcom/android/systemui/R$id;->keyguard_message_area:I

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/keyguard/KeyguardMessageArea;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    .line 372
    iget-object p2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p2, Lcom/android/keyguard/KeyguardSecPatternView;

    sget p3, Lcom/android/systemui/R$id;->keyguard_sub_help_text:I

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/keyguard/KeyguardMessageArea;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    if-eqz p2, :cond_0

    const/16 p3, 0x8

    .line 374
    invoke-virtual {p2, p3}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    .line 378
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p2, Lcom/android/keyguard/KeyguardSecPatternView;

    sget p3, Lcom/android/systemui/R$id;->hint_text_box:I

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/keyguard/KeyguardHintTextArea;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    .line 379
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecPatternViewController;->isHintText()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 380
    invoke-virtual {p2, p1}, Lcom/android/keyguard/KeyguardHintTextArea;->setVisibility(I)V

    .line 384
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/keyguard/KeyguardTextBuilder;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardTextBuilder;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mKeyguardTextBuilder:Lcom/android/keyguard/KeyguardTextBuilder;

    .line 386
    const-class p1, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitor;

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardSecPatternViewController;)Z
    .locals 0

    .line 66
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mIsNightModeOn:Z

    return p0
.end method

.method static synthetic access$002(Lcom/android/keyguard/KeyguardSecPatternViewController;Z)Z
    .locals 0

    .line 66
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mIsNightModeOn:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardSecPatternViewController;I)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecPatternViewController;->updateLayout(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/keyguard/KeyguardSecPatternViewController;)Lcom/android/keyguard/KeyguardHintTextArea;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/keyguard/KeyguardSecPatternViewController;I)Ljava/lang/String;
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecPatternViewController;->getStringFromId(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/keyguard/KeyguardSecPatternViewController;)Landroid/content/res/Resources;
    .locals 0

    .line 66
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/keyguard/KeyguardSecPatternViewController;)Lcom/android/keyguard/KeyguardMessageArea;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/keyguard/KeyguardSecPatternViewController;)I
    .locals 0

    .line 66
    iget p0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mSecondsRemaining:I

    return p0
.end method

.method static synthetic access$1402(Lcom/android/keyguard/KeyguardSecPatternViewController;I)I
    .locals 0

    .line 66
    iput p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mSecondsRemaining:I

    return p1
.end method

.method static synthetic access$1500(Lcom/android/keyguard/KeyguardSecPatternViewController;)Lcom/android/keyguard/KeyguardTextBuilder;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mKeyguardTextBuilder:Lcom/android/keyguard/KeyguardTextBuilder;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/keyguard/KeyguardSecPatternViewController;)Landroid/content/Context;
    .locals 0

    .line 66
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1700(Lcom/android/keyguard/KeyguardSecPatternViewController;)Landroid/content/Context;
    .locals 0

    .line 66
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1800(Lcom/android/keyguard/KeyguardSecPatternViewController;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecPatternViewController;->updateLayoutForAttemptRemainingBeforeWipe()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/keyguard/KeyguardSecPatternViewController;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecPatternViewController;->updateLayout()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardSecPatternViewController;II)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardSecPatternViewController;->setSubSecurityMessage(II)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/keyguard/KeyguardSecPatternViewController;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecPatternViewController;->resetFor2StepVerification()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/keyguard/KeyguardSecPatternViewController;)Ljava/lang/Runnable;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mUpdateLayoutRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/android/keyguard/KeyguardSecPatternViewController;)Landroid/os/Handler;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/android/keyguard/KeyguardSecPatternViewController;)Z
    .locals 0

    .line 66
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mBouncerShowing:Z

    return p0
.end method

.method static synthetic access$2302(Lcom/android/keyguard/KeyguardSecPatternViewController;Z)Z
    .locals 0

    .line 66
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mBouncerShowing:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/android/keyguard/KeyguardSecPatternViewController;)Landroid/content/res/Resources;
    .locals 0

    .line 66
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2500(Lcom/android/keyguard/KeyguardSecPatternViewController;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecPatternViewController;->disableProfilePermanently()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/keyguard/KeyguardSecPatternViewController;)Lcom/android/systemui/knox/KnoxStateMonitor;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/keyguard/KeyguardSecPatternViewController;)Z
    .locals 0

    .line 66
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mEnableHaptics:Z

    return p0
.end method

.method static synthetic access$500(Lcom/android/keyguard/KeyguardSecPatternViewController;)Lcom/android/systemui/vibrate/VibrationUtil;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mVibrationUtil:Lcom/android/systemui/vibrate/VibrationUtil;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/keyguard/KeyguardSecPatternViewController;)Z
    .locals 0

    .line 66
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mGoingToSleep:Z

    return p0
.end method

.method static synthetic access$602(Lcom/android/keyguard/KeyguardSecPatternViewController;Z)Z
    .locals 0

    .line 66
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mGoingToSleep:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/keyguard/KeyguardSecPatternViewController;I)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecPatternViewController;->reportAuditLog(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/keyguard/KeyguardSecPatternViewController;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecPatternViewController;->disableDevicePermanently()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/keyguard/KeyguardSecPatternViewController;)Z
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecPatternViewController;->isHintText()Z

    move-result p0

    return p0
.end method

.method private calculateLandscapeViewWidth(I)I
    .locals 2

    .line 1203
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050204

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    mul-int/lit8 v1, v0, 0x2

    sub-int v1, p1, v1

    .line 1205
    div-int/lit8 v1, v1, 0x2

    .line 1206
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isInDisplayFingerprintMarginAccepted()Z

    move-result p0

    if-eqz p0, :cond_0

    sub-int/2addr p1, v0

    .line 1208
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->getInDisplayFingerprintHeight()I

    move-result p0

    sub-int/2addr p1, p0

    div-int/lit8 v1, p1, 0x2

    :cond_0
    return v1
.end method

.method private disableDevicePermanently()V
    .locals 2

    const-string v0, "KeyguardSecPatternViewController"

    const-string v1, "disableDevicePermanently"

    .line 845
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 847
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 848
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setVisibility(I)V

    .line 849
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardMessageAreaController;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mKeyguardTextBuilder:Lcom/android/keyguard/KeyguardTextBuilder;

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardTextBuilder;->getDefaultSecurityMessage(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private disableProfilePermanently()V
    .locals 4

    const-string v0, "KeyguardSecPatternViewController"

    const-string v1, "disableProfilePermanently"

    .line 853
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-interface {v0}, Lcom/android/systemui/knox/KnoxStateMonitor;->getContainerIds()Ljava/util/List;

    move-result-object v0

    .line 856
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, -0x1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 857
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-interface {v3, v2}, Lcom/android/systemui/knox/KnoxStateMonitor;->isPersona(I)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0

    .line 861
    :cond_1
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v0, "android.intent.extra.user_handle"

    .line 862
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "knox.container.proxy.POLICY_ADMIN_LOCK"

    .line 863
    invoke-static {v0, p0}, Lcom/samsung/android/knox/ContainerProxy;->sendPolicyUpdate(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method

.method private getCurrentRotation()I
    .locals 1

    .line 899
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 900
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 901
    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result p0

    .line 900
    invoke-static {p0}, Lcom/android/systemui/util/DeviceState;->getRotation(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getStringFromId(I)Ljava/lang/String;
    .locals 0

    .line 1248
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isHintText()Z
    .locals 4

    .line 892
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardHintTextArea;->getPasswordHintText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 893
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts(I)I

    move-result v0

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 894
    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->getLockoutAttemptDeadline()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isStrongAuthPromptMessage()Z
    .locals 2

    .line 867
    iget p0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mPromptReason:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x7

    if-eq p0, v1, :cond_1

    const/16 v1, 0x8

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    const/4 v0, -0x1

    .line 111
    iput v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mSecondsRemaining:I

    .line 112
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecPatternViewController;->updateLayout()V

    return-void
.end method

.method private reportAuditLog(I)V
    .locals 7

    .line 336
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-class p0, Lcom/android/keyguard/KeyguardPatternView;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "User "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " has exceeded number of authentication failure limit when using pattern authentication"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x1

    move v6, p1

    .line 335
    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private resetFor2StepVerification()V
    .locals 2

    .line 1271
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->is2StepVerification()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 1272
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserUnlockedWithBiometric(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "KeyguardSecPatternViewController"

    const-string/jumbo v1, "reset() - 2 step verification"

    .line 1273
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 1275
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 1276
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private setEmergencyButtonCallback(Z)V
    .locals 1

    .line 1252
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mEmergencyButtonController:Lcom/android/keyguard/EmergencyButtonController;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mEmergencyButtonCallback:Lcom/android/keyguard/EmergencyButtonController$EmergencyButtonCallback;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/android/keyguard/EmergencyButtonController;->setEmergencyButtonCallback(Lcom/android/keyguard/EmergencyButtonController$EmergencyButtonCallback;)V

    return-void
.end method

.method private setSubSecurityMessage(II)V
    .locals 2

    .line 1215
    iget-object p2, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->is2StepVerification()Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    if-eqz p2, :cond_5

    .line 1216
    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 1217
    invoke-interface {p2}, Lcom/android/systemui/knox/KnoxStateMonitor;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result p2

    const-string v0, ""

    const/16 v1, 0x8

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 1218
    invoke-interface {p2}, Lcom/android/systemui/knox/KnoxStateMonitor;->isDisableDeviceByMultifactor()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    .line 1223
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    .line 1224
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {p1, v1}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    goto :goto_0

    .line 1226
    :cond_1
    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecPatternViewController;->getStringFromId(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    .line 1228
    :goto_0
    iget p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mCurrentRotation:I

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eq p1, p2, :cond_2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    .line 1236
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {p0, v0}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    goto :goto_2

    .line 1231
    :cond_2
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    sget-boolean p1, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    if-eqz p1, :cond_3

    move v1, v0

    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    goto :goto_2

    .line 1219
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    .line 1220
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {p0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    :cond_5
    :goto_2
    return-void
.end method

.method private updateDualDisplayLayout()V
    .locals 0

    .line 1118
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecPatternViewController;->updatePortraitLayout()V

    return-void
.end method

.method private updateLandscapeLayout()V
    .locals 9

    .line 1001
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1002
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 1003
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1004
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1005
    invoke-direct {p0, v2}, Lcom/android/keyguard/KeyguardSecPatternViewController;->calculateLandscapeViewWidth(I)I

    move-result v2

    .line 1006
    sget v3, Lcom/android/systemui/R$dimen;->kg_message_area_padding_side:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 1007
    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/16 v5, 0x11

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mSecurityView:Landroid/widget/LinearLayout;

    if-eqz v7, :cond_0

    .line 1009
    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 1010
    sget v7, Lcom/android/systemui/R$dimen;->kg_pattern_lock_pattern_view_margin_bottom:I

    .line 1011
    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    sub-int/2addr v1, v8

    sget v8, Lcom/android/systemui/R$dimen;->keyguard_bottom_area_emergency_button_area_min_height:I

    .line 1012
    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    sub-int/2addr v1, v8

    mul-int/lit8 v8, v3, 0x2

    sub-int/2addr v1, v8

    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1014
    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1015
    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1016
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mSecurityView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1017
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mSecurityView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1018
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/LockPatternView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1020
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    if-eqz v0, :cond_1

    .line 1021
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1022
    iput v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1023
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1025
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mMessageArea:Landroid/widget/LinearLayout;

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mContainer:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_2

    .line 1027
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1028
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mContainer:Landroid/widget/LinearLayout;

    .line 1029
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 1030
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mMessageArea:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v6, v3, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1031
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v6, v3, v6, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1032
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1033
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1034
    iput v6, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1035
    iput v2, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1036
    iput v1, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1037
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1038
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1039
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mMessageArea:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1040
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1042
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mBottomView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    .line 1043
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1045
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mBottomView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1046
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1047
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mBottomView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1049
    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mEcaView:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 1050
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1051
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1052
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1053
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1055
    invoke-virtual {v0, v1, v2, v3, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1056
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mEcaView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1057
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mEcaView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1058
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mEmergencyButtonController:Lcom/android/keyguard/EmergencyButtonController;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mEcaView:Landroid/view/View;

    sget v2, Lcom/android/systemui/R$id;->emergency_call_button:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/EmergencyButtonController;->setEmergencyView(Landroid/view/View;)V

    .line 1063
    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 1064
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->is2StepVerification()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    if-eqz v0, :cond_5

    .line 1066
    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    .line 1069
    :cond_5
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardHintTextArea;->setVisibility(I)V

    return-void
.end method

.method private updateLayout()V
    .locals 1

    .line 907
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecPatternViewController;->getCurrentRotation()I

    move-result v0

    .line 908
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecPatternViewController;->updateLayout(I)V

    return-void
.end method

.method private updateLayout(I)V
    .locals 2

    .line 912
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateLayout rotation : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardSecPatternViewController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    iput p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mCurrentRotation:I

    .line 914
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 915
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecPatternViewController;->updateTabletLayout()V

    goto :goto_2

    .line 917
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->isDualDisplayPolicyAllowed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 918
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecPatternViewController;->updateDualDisplayLayout()V

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    goto :goto_0

    .line 922
    :cond_2
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecPatternViewController;->updateLandscapeLayout()V

    goto :goto_1

    .line 920
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecPatternViewController;->updatePortraitLayout()V

    .line 924
    :goto_1
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecPatternViewController;->updateLayoutForAttemptRemainingBeforeWipe()V

    :goto_2
    return-void
.end method

.method private updateLayoutForAttemptRemainingBeforeWipe()V
    .locals 8

    .line 1153
    iget v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mSecondsRemaining:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-gt v0, v1, :cond_0

    .line 1154
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->getLockoutAttemptDeadline()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-nez v0, :cond_0

    .line 1156
    iput v2, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mSecondsRemaining:I

    return-void

    .line 1160
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1161
    iget v3, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mSecondsRemaining:I

    if-ltz v3, :cond_9

    .line 1162
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mMessageArea:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-eqz v3, :cond_5

    .line 1163
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    if-eqz v3, :cond_1

    .line 1164
    invoke-virtual {v3, v4}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    .line 1166
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 1167
    iget v6, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mCurrentRotation:I

    if-eqz v6, :cond_3

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    goto :goto_0

    .line 1168
    :cond_2
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_1

    :cond_3
    :goto_0
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1169
    :goto_1
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1171
    sget v6, Lcom/android/systemui/R$dimen;->keyguard_bottom_area_emergency_button_area_min_height_tablet:I

    .line 1170
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    sget v7, Lcom/android/systemui/R$dimen;->kg_pattern_eca_margin_bottom_tablet:I

    .line 1171
    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_2

    .line 1173
    :cond_4
    sget v6, Lcom/android/systemui/R$dimen;->keyguard_bottom_area_emergency_button_area_min_height:I

    .line 1172
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    sget v7, Lcom/android/systemui/R$dimen;->kg_pattern_eca_margin_bottom:I

    .line 1173
    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_2
    add-int/2addr v6, v0

    .line 1174
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v7, 0x1050204

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1176
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mMessageArea:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 1177
    iput v2, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    sub-int/2addr v3, v6

    sub-int/2addr v3, v0

    .line 1178
    iput v3, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1179
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mMessageArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1180
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mMessageArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1182
    :cond_5
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    if-eqz v0, :cond_6

    .line 1183
    new-instance v3, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v3}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 1185
    :cond_6
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_7

    .line 1187
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1188
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v2, -0x2

    .line 1189
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1190
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1192
    :cond_7
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    if-eqz v0, :cond_8

    .line 1193
    invoke-virtual {v0, v4}, Lcom/android/internal/widget/LockPatternView;->setVisibility(I)V

    .line 1195
    :cond_8
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mBottomView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_9

    const/16 v2, 0x50

    .line 1196
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1197
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mBottomView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    :cond_9
    return-void
.end method

.method private updatePortraitLayout()V
    .locals 8

    .line 929
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 930
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v2, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mSecurityView:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_2

    .line 932
    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 933
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mSecurityView:Landroid/widget/LinearLayout;

    const/16 v6, 0x51

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 934
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mSecurityView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 935
    sget v5, Lcom/android/systemui/R$dimen;->kg_pattern_lock_pattern_view_width:I

    .line 936
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 937
    sget v5, Lcom/android/systemui/R$dimen;->kg_pattern_lock_pattern_view_height:I

    .line 938
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 940
    iget-object v5, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 939
    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isInDisplayFingerprintMarginAccepted()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 940
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isInDisplayFpSensorPositionHigh()Z

    move-result v5

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mSecondsRemaining:I

    if-ne v5, v3, :cond_1

    .line 941
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->getInDisplayFingerprintHeight()I

    move-result v5

    sget v6, Lcom/android/systemui/R$dimen;->kg_pattern_lock_pattern_view_margin_bottom:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    add-int/2addr v5, v6

    sget v6, Lcom/android/systemui/R$dimen;->kg_pattern_eca_margin_bottom:I

    .line 943
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    sub-int/2addr v5, v6

    const v6, 0x1050204

    .line 944
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    sub-int/2addr v5, v6

    .line 945
    iget-object v6, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mEcaView:Landroid/view/View;

    if-eqz v6, :cond_0

    sget v7, Lcom/android/systemui/R$id;->emergency_call_button:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_0

    .line 946
    sget v6, Lcom/android/systemui/R$dimen;->keyguard_bottom_area_emergency_button_area_min_height:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    goto :goto_0

    :cond_0
    move v6, v4

    :goto_0
    sub-int/2addr v5, v6

    goto :goto_1

    .line 947
    :cond_1
    sget v5, Lcom/android/systemui/R$dimen;->kg_pattern_lock_pattern_view_margin_bottom:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    :goto_1
    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 948
    iget-object v5, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v5, v1}, Lcom/android/internal/widget/LockPatternView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 950
    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    if-eqz v1, :cond_3

    .line 951
    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 952
    sget v5, Lcom/android/systemui/R$dimen;->kg_pattern_message_area_margin_bottom:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 953
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 955
    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mMessageArea:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_4

    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mContainer:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_4

    .line 957
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 958
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mContainer:Landroid/widget/LinearLayout;

    .line 959
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 960
    sget v6, Lcom/android/systemui/R$dimen;->kg_message_area_padding_side:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 961
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mMessageArea:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v6, v4, v6, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 962
    iget-object v6, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v4, v4, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 963
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v6, -0x2

    .line 964
    iput v6, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 965
    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 966
    iput v3, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 967
    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 968
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 969
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mMessageArea:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 970
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 972
    :cond_4
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mBottomView:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_5

    const/16 v3, 0x50

    .line 973
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 974
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mBottomView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 976
    :cond_5
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mEcaView:Landroid/view/View;

    if-eqz v1, :cond_6

    .line 977
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 978
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 979
    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 980
    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 981
    sget v6, Lcom/android/systemui/R$dimen;->kg_pattern_eca_margin_bottom:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 982
    invoke-virtual {v1, v2, v3, v5, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 983
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mEcaView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 984
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mEcaView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 985
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mEmergencyButtonController:Lcom/android/keyguard/EmergencyButtonController;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mEcaView:Landroid/view/View;

    sget v2, Lcom/android/systemui/R$id;->emergency_call_button:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/EmergencyButtonController;->setEmergencyView(Landroid/view/View;)V

    .line 990
    :cond_6
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 991
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->is2StepVerification()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    if-eqz v0, :cond_7

    .line 993
    invoke-virtual {v0, v4}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    .line 995
    :cond_7
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecPatternViewController;->isHintText()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 996
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardHintTextArea;->setVisibility(I)V

    :cond_8
    return-void
.end method

.method private updateTabletLayout()V
    .locals 6

    .line 1074
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1075
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    if-eqz v1, :cond_0

    .line 1076
    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1077
    sget v2, Lcom/android/systemui/R$dimen;->kg_pattern_message_area_margin_bottom_tablet:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1078
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1080
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mMessageArea:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    .line 1081
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    .line 1082
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v2, -0x2

    .line 1083
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1084
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mMessageArea:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1086
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mContainer:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    .line 1087
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1089
    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    if-eqz v1, :cond_3

    .line 1091
    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1092
    sget v2, Lcom/android/systemui/R$dimen;->kg_pattern_lock_pattern_view_width_tablet:I

    .line 1093
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1094
    sget v2, Lcom/android/systemui/R$dimen;->kg_pattern_lock_pattern_view_height_tablet:I

    .line 1095
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1096
    sget v2, Lcom/android/systemui/R$dimen;->kg_pattern_lock_pattern_view_margin_bottom_tablet:I

    .line 1097
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1098
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/LockPatternView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1100
    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mEcaView:Landroid/view/View;

    if-eqz v1, :cond_4

    .line 1101
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1102
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1103
    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1104
    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1105
    sget v5, Lcom/android/systemui/R$dimen;->kg_pattern_eca_margin_bottom_tablet:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 1106
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1107
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mEcaView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1108
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mEcaView:Landroid/view/View;

    sget v1, Lcom/android/systemui/R$id;->emergency_call_button:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/EmergencyButton;

    if-eqz p0, :cond_4

    .line 1110
    invoke-virtual {p0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1111
    sget v2, Lcom/android/systemui/R$dimen;->keyguard_bottom_area_emergency_button_area_min_height_tablet:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1112
    invoke-virtual {p0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    return-void
.end method


# virtual methods
.method protected displayDefaultSecurityMessage()V
    .locals 5

    .line 590
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    const-string v1, "KeyguardSecPatternViewController"

    if-nez v0, :cond_0

    const-string p0, "displayDefaultSecurityMessage mSecurityMessageDisplay is null"

    .line 591
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 594
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardInputViewController;->setMessageTimeout(Z)V

    .line 595
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecPatternViewController;->isStrongAuthPromptMessage()Z

    move-result v0

    const-string v2, " )"

    if-eqz v0, :cond_1

    .line 596
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "displayDefaultSecurityMessage - isStrongAuthPromptMessage ( "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mPromptReason:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    iget v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mPromptReason:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecPatternViewController;->showPromptReason(I)V

    goto :goto_0

    .line 599
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mKeyguardTextBuilder:Lcom/android/keyguard/KeyguardTextBuilder;

    sget-object v3, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardTextBuilder;->getDefaultSecurityMessage(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Ljava/lang/String;

    move-result-object v0

    .line 601
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "displayDefaultSecurityMessage( "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    .line 605
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->is2StepVerification()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 606
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 607
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getLockoutBiometricAttemptDeadline()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    .line 608
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    .line 611
    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserUnlockedWithBiometric(I)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_3

    .line 612
    sget v0, Lcom/android/systemui/R$string;->kg_biometrics_has_confirmed:I

    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/KeyguardSecPatternViewController;->setSubSecurityMessage(II)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 614
    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/KeyguardSecPatternViewController;->setSubSecurityMessage(II)V

    :cond_4
    :goto_1
    return-void
.end method

.method protected handleAttemptLockout(J)V
    .locals 9

    .line 621
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleAttemptLockout deadline = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardSecPatternViewController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 623
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 624
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setVisibility(I)V

    .line 626
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 627
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    .line 628
    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 630
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 631
    new-instance v8, Lcom/android/keyguard/KeyguardSecPatternViewController$3;

    sub-long v4, p1, v0

    const-wide/16 v6, 0x3e8

    move-object v2, v8

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/keyguard/KeyguardSecPatternViewController$3;-><init>(Lcom/android/keyguard/KeyguardSecPatternViewController;JJ)V

    .line 684
    invoke-virtual {v8}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mCountdownTimer:Landroid/os/CountDownTimer;

    return-void
.end method

.method public notifyKeyguardLockout()V
    .locals 0

    .line 1244
    const-class p0, Lcom/android/systemui/util/DesktopManager;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/DesktopManager;

    invoke-virtual {p0}, Lcom/android/systemui/util/DesktopManager;->notifyKeyguardLockout()V

    return-void
.end method

.method protected onViewAttached()V
    .locals 2

    .line 396
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPatternViewController;->onViewAttached()V

    .line 398
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 400
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecPatternViewController;->setEmergencyButtonCallback(Z)V

    .line 402
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecPatternViewController;->updateLayout()V

    .line 404
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mEnableHaptics:Z

    .line 405
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mVibrationUtil:Lcom/android/systemui/vibrate/VibrationUtil;

    invoke-virtual {v0}, Lcom/android/systemui/vibrate/VibrationUtil;->isSupportVibration()Z

    move-result v0

    if-nez v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setTactileFeedbackEnabled(Z)V

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 411
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mKnoxStateCallback:Lcom/android/systemui/knox/KnoxStateMonitorCallback;

    invoke-interface {v0, v1}, Lcom/android/systemui/knox/KnoxStateMonitor;->registerCallback(Lcom/android/systemui/knox/KnoxStateMonitorCallback;)V

    .line 413
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    if-eqz v0, :cond_1

    .line 414
    const-class v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mDisplayListener:Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    .line 416
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 417
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mKeyguardRotationController:Lcom/android/keyguard/KeyguardRotationController;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mKeyguardRotationListener:Lcom/android/keyguard/KeyguardRotationController$KeyguardRotationListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 419
    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    new-instance v1, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;-><init>(Lcom/android/keyguard/KeyguardSecPatternViewController;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V

    return-void
.end method

.method protected onViewDetached()V
    .locals 2

    .line 424
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPatternViewController;->onViewDetached()V

    .line 426
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 428
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecPatternViewController;->setEmergencyButtonCallback(Z)V

    .line 430
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 432
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mKnoxStateCallback:Lcom/android/systemui/knox/KnoxStateMonitorCallback;

    invoke-interface {v0, v1}, Lcom/android/systemui/knox/KnoxStateMonitor;->removeCallback(Lcom/android/systemui/knox/KnoxStateMonitorCallback;)V

    .line 434
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    if-eqz v0, :cond_0

    .line 435
    const-class v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mDisplayListener:Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/SecLifecycle;->removeObserver(Ljava/lang/Object;)V

    .line 437
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 438
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mKeyguardRotationController:Lcom/android/keyguard/KeyguardRotationController;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mKeyguardRotationListener:Lcom/android/keyguard/KeyguardRotationController$KeyguardRotationListener;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public reset()V
    .locals 8

    .line 445
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 447
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, v0}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled(I)Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternView;->setInStealthMode(Z)V

    .line 448
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->enableInput()V

    .line 449
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 450
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 452
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecPatternViewController;->updateLayout()V

    .line 454
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->getLockoutAttemptDeadline()J

    move-result-wide v0

    .line 455
    sget-boolean v2, Lcom/android/systemui/LsRune;->SECURITY_KNOX_SUPPORT_DUAL_DAR_AT_DO:Z

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 456
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v5

    invoke-interface {v2, v5}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->isDualDarInnerAuthRequired(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 457
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 458
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v5

    invoke-interface {v2, v5}, Lcom/android/systemui/knox/KnoxStateMonitor;->getInnerAuthUserId(I)I

    move-result v5

    .line 457
    invoke-interface {v2, v5}, Lcom/android/systemui/knox/KnoxStateMonitor;->getLockoutAttemptDeadline(I)J

    move-result-wide v5

    cmp-long v2, v5, v3

    if-eqz v2, :cond_0

    cmp-long v2, v5, v0

    if-lez v2, :cond_0

    .line 460
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "reset() switch to inner deadline. deadline = "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", innerDeadline = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardSecPatternViewController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v0, v5

    .line 465
    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 466
    invoke-interface {v2}, Lcom/android/systemui/knox/KnoxStateMonitor;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 467
    invoke-interface {v2}, Lcom/android/systemui/knox/KnoxStateMonitor;->isDisableDeviceByMultifactor()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    cmp-long v2, v0, v3

    if-eqz v2, :cond_3

    .line 470
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecPatternViewController;->isHintText()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 471
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardHintTextArea;->setVisibility(I)V

    .line 473
    :cond_2
    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardSecPatternViewController;->handleAttemptLockout(J)V

    goto :goto_1

    .line 475
    :cond_3
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPatternViewController;->displayDefaultSecurityMessage()V

    .line 476
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecPatternViewController;->isHintText()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 477
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardHintTextArea;->updateHintButton()V

    .line 478
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardHintTextArea;->setVisibility(I)V

    .line 480
    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setVisibility(I)V

    .line 481
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecPatternViewController;->resetFor2StepVerification()V

    goto :goto_1

    .line 468
    :cond_5
    :goto_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecPatternViewController;->disableDevicePermanently()V

    :goto_1
    return-void
.end method

.method public showMessage(Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;)V
    .locals 1

    const/4 v0, 0x0

    .line 554
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardInputViewController;->setMessageTimeout(Z)V

    .line 555
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardMessageArea;->displayFailedAnimation()V

    .line 557
    invoke-super {p0, p1, p2}, Lcom/android/keyguard/KeyguardPatternViewController;->showMessage(Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public showPromptReason(I)V
    .locals 9

    .line 506
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    const-string v1, "KeyguardSecPatternViewController"

    if-nez v0, :cond_0

    const-string/jumbo p0, "showPromptReason mSecurityMessageDisplay is null"

    .line 507
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 510
    :cond_0
    iput p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mPromptReason:I

    if-eqz p1, :cond_6

    .line 512
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->getLockoutAttemptDeadline()J

    move-result-wide v2

    .line 513
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_KNOX_SUPPORT_DUAL_DAR_AT_DO:Z

    const-wide/16 v4, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 514
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v6

    invoke-interface {v0, v6}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->isDualDarInnerAuthRequired(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 515
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 516
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v6

    invoke-interface {v0, v6}, Lcom/android/systemui/knox/KnoxStateMonitor;->getInnerAuthUserId(I)I

    move-result v6

    .line 515
    invoke-interface {v0, v6}, Lcom/android/systemui/knox/KnoxStateMonitor;->getLockoutAttemptDeadline(I)J

    move-result-wide v6

    cmp-long v0, v6, v4

    if-eqz v0, :cond_1

    cmp-long v0, v6, v2

    if-lez v0, :cond_1

    .line 518
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "showPromptReason() switch to inner deadline. deadline = "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", innerDeadline = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v2, v6

    :cond_1
    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    return-void

    .line 525
    :cond_2
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 526
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mKeyguardTextBuilder:Lcom/android/keyguard/KeyguardTextBuilder;

    invoke-virtual {v1, v0, p1}, Lcom/android/keyguard/KeyguardTextBuilder;->getPromptSecurityMessage(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;I)Ljava/lang/String;

    move-result-object v1

    .line 527
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    const/4 v2, 0x2

    if-eq p1, v2, :cond_4

    const/4 v2, 0x7

    if-eq p1, v2, :cond_4

    const/16 v2, 0x8

    if-ne p1, v2, :cond_3

    goto :goto_0

    .line 542
    :cond_3
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 532
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mKeyguardTextBuilder:Lcom/android/keyguard/KeyguardTextBuilder;

    .line 533
    invoke-virtual {p1, v0, v1}, Lcom/android/keyguard/KeyguardTextBuilder;->updateStrongAuthTimeoutMessage(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 535
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 536
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    .line 537
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Landroid/widget/TextView;->scrollTo(II)V

    goto :goto_1

    .line 539
    :cond_5
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public startAppearAnimation()V
    .locals 7

    .line 562
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mBottomView:Landroid/widget/LinearLayout;

    sget-object v1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 563
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mBottomView:Landroid/widget/LinearLayout;

    sget-object v3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v4, v2, [F

    fill-array-data v4, :array_1

    invoke-static {v1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 564
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mBottomView:Landroid/widget/LinearLayout;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v2, [F

    fill-array-data v5, :array_2

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 565
    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 567
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/animation/Animator;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v1, v5, v0

    aput-object v3, v5, v2

    .line 568
    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 569
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v4, p0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0x15e

    .line 570
    invoke-virtual {v4, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0x0

    .line 571
    invoke-virtual {v4, v0, v1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 572
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    return-void

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

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 2

    .line 577
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 578
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mBottomView:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const v0, 0x3fa66666    # 1.3f

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 579
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0xc8

    .line 580
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance v0, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut90;

    invoke-direct {v0}, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut90;-><init>()V

    .line 581
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0x0

    .line 582
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/4 v0, 0x0

    .line 583
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 584
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    const/4 p0, 0x1

    return p0
.end method

.method public updateStyle(JLandroid/app/SemWallpaperColors;)V
    .locals 3

    const-string v0, "KeyguardSecPatternViewController"

    if-eqz p3, :cond_0

    .line 1259
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateStyle theme color: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Landroid/app/SemWallpaperColors;->getColorThemeColor(J)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    instance-of v0, v0, Lcom/android/keyguard/SecLockPatternView;

    if-eqz v0, :cond_1

    const-string v0, "background"

    .line 1261
    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIWidgetUtil;->convertFlag(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Landroid/app/SemWallpaperColors;->getColorThemeColor(J)I

    move-result p3

    .line 1262
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    check-cast p0, Lcom/android/keyguard/SecLockPatternView;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/keyguard/SecLockPatternView;->updateViewStyle(JI)V

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "updateStyle: colors is null."

    .line 1265
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method
