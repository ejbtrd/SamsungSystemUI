.class public abstract Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;
.super Lcom/android/keyguard/KeyguardAbsKeyInputViewController;
.source "KeyguardSecAbsKeyInputViewController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$OnApplyWindowInsetsListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/keyguard/KeyguardSecAbsKeyInputView;",
        ">",
        "Lcom/android/keyguard/KeyguardAbsKeyInputViewController<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mBottomView:Landroid/widget/LinearLayout;

.field protected mBouncerMessage:Ljava/lang/String;

.field protected mBouncerShowing:Z

.field protected mBouncerSubMessage:Ljava/lang/String;

.field protected mContainer:Landroid/widget/LinearLayout;

.field private final mDisplayListener:Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;

.field private final mDummyEcaSpace:Landroid/widget/Space;

.field protected mEcaView:Landroid/view/View;

.field private final mEmergencyButtonController:Lcom/android/keyguard/EmergencyButtonController;

.field private mEntry:[B

.field private final mHandler:Landroid/os/Handler;

.field private mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

.field private mImeBottom:I

.field private mInputContainer:Landroid/widget/LinearLayout;

.field protected final mInterpolator:Landroid/view/animation/PathInterpolator;

.field private mIsBiometricLockoutPWView:Z

.field private mIsFaceRunning:Z

.field private mIsImeShown:Z

.field private final mKeyguardRotationController:Lcom/android/keyguard/KeyguardRotationController;

.field private final mKeyguardRotationListener:Lcom/android/keyguard/KeyguardRotationController$KeyguardRotationListener;

.field protected final mKeyguardTextBuilder:Lcom/android/keyguard/KeyguardTextBuilder;

.field private final mKnoxStateCallback:Lcom/android/systemui/knox/KnoxStateMonitorCallback;

.field private mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

.field private mMessageArea:Landroid/widget/LinearLayout;

.field protected mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

.field protected mPromptReason:I

.field private mSecondsRemaining:I

.field protected mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

.field protected mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

.field private final mUpdateLayoutRunnable:Ljava/lang/Runnable;

.field private final mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private final mVibrationUtil:Lcom/android/systemui/vibrate/VibrationUtil;


# direct methods
.method public static synthetic $r8$lambda$LyntwPfCylDFMP7YDOt5d3h9ROg(Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->lambda$new$0()V

    return-void
.end method

.method protected constructor <init>(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/vibrate/VibrationUtil;Lcom/android/keyguard/KeyguardRotationController;Landroid/view/accessibility/AccessibilityManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;",
            "Lcom/android/internal/widget/LockPatternUtils;",
            "Lcom/android/keyguard/KeyguardSecurityCallback;",
            "Lcom/android/keyguard/KeyguardMessageAreaController$Factory;",
            "Lcom/android/internal/util/LatencyTracker;",
            "Lcom/android/systemui/classifier/FalsingCollector;",
            "Lcom/android/keyguard/EmergencyButtonController;",
            "Lcom/android/systemui/vibrate/VibrationUtil;",
            "Lcom/android/keyguard/KeyguardRotationController;",
            "Landroid/view/accessibility/AccessibilityManager;",
            ")V"
        }
    .end annotation

    .line 305
    invoke-direct/range {p0 .. p9}, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;-><init>(Lcom/android/keyguard/KeyguardAbsKeyInputView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/keyguard/EmergencyButtonController;)V

    .line 65
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    .line 70
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mBottomView:Landroid/widget/LinearLayout;

    .line 76
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    const/4 p2, 0x0

    .line 79
    iput-boolean p2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mIsBiometricLockoutPWView:Z

    const-string p3, ""

    .line 80
    iput-object p3, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mBouncerMessage:Ljava/lang/String;

    .line 81
    iput-object p3, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mBouncerSubMessage:Ljava/lang/String;

    const/4 p3, -0x1

    .line 84
    iput p3, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecondsRemaining:I

    .line 89
    new-instance p3, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;)V

    iput-object p3, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mUpdateLayoutRunnable:Ljava/lang/Runnable;

    .line 94
    new-instance p3, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$1;

    invoke-direct {p3, p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$1;-><init>(Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;)V

    iput-object p3, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mKeyguardRotationListener:Lcom/android/keyguard/KeyguardRotationController$KeyguardRotationListener;

    .line 104
    iput p2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mImeBottom:I

    .line 124
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mEntry:[B

    .line 127
    iput-boolean p2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mIsFaceRunning:Z

    .line 132
    new-instance p3, Landroid/view/animation/PathInterpolator;

    const p4, 0x3e6147ae    # 0.22f

    const/high16 p5, 0x3e800000    # 0.25f

    const/4 p6, 0x0

    const/high16 p7, 0x3f800000    # 1.0f

    invoke-direct {p3, p4, p5, p6, p7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p3, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mInterpolator:Landroid/view/animation/PathInterpolator;

    .line 134
    new-instance p3, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$2;

    invoke-direct {p3, p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$2;-><init>(Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;)V

    iput-object p3, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 277
    new-instance p3, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$3;

    invoke-direct {p3, p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$3;-><init>(Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;)V

    iput-object p3, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mKnoxStateCallback:Lcom/android/systemui/knox/KnoxStateMonitorCallback;

    .line 1333
    new-instance p3, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$6;

    invoke-direct {p3, p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$6;-><init>(Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;)V

    iput-object p3, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mDisplayListener:Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;

    .line 308
    iget-object p3, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    invoke-static {p3}, Lcom/android/keyguard/KeyguardMessageArea;->findSecurityMessageDisplay(Landroid/view/View;)Lcom/android/keyguard/KeyguardMessageArea;

    move-result-object p3

    iput-object p3, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    .line 309
    iget-object p3, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p3, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    sget p4, Lcom/android/systemui/R$id;->keyguard_sub_help_text:I

    invoke-virtual {p3, p4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/android/keyguard/KeyguardMessageArea;

    iput-object p3, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    .line 310
    iget-object p3, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p3, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    sget p4, Lcom/android/systemui/R$id;->message_area:I

    invoke-virtual {p3, p4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mMessageArea:Landroid/widget/LinearLayout;

    .line 311
    iget-object p3, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p3, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    sget p4, Lcom/android/systemui/R$id;->container:I

    invoke-virtual {p3, p4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mContainer:Landroid/widget/LinearLayout;

    .line 312
    iget-object p3, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p3, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    sget p4, Lcom/android/systemui/R$id;->input_container:I

    invoke-virtual {p3, p4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mInputContainer:Landroid/widget/LinearLayout;

    .line 313
    iget-object p3, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p3, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    sget p4, Lcom/android/systemui/R$id;->password_entry_box:I

    invoke-virtual {p3, p4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    .line 314
    iget-object p3, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p3, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    sget p4, Lcom/android/systemui/R$id;->bottom_container:I

    invoke-virtual {p3, p4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mBottomView:Landroid/widget/LinearLayout;

    .line 315
    iget-object p3, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p3, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    sget p4, Lcom/android/systemui/R$id;->keyguard_selector_fade_container:I

    invoke-virtual {p3, p4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mEcaView:Landroid/view/View;

    .line 316
    iget-object p3, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p3, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    sget p4, Lcom/android/systemui/R$id;->dummy_emergency_call_button_space:I

    invoke-virtual {p3, p4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Space;

    iput-object p3, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mDummyEcaSpace:Landroid/widget/Space;

    .line 318
    iget-object p3, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p3, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    sget p4, Lcom/android/systemui/R$id;->hint_text_box:I

    invoke-virtual {p3, p4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/android/keyguard/KeyguardHintTextArea;

    iput-object p3, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    .line 319
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isHintText()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 320
    iget-object p3, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    invoke-virtual {p3, p2}, Lcom/android/keyguard/KeyguardHintTextArea;->setVisibility(I)V

    .line 323
    :cond_0
    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    const p3, 0x3f8ccccd    # 1.1f

    invoke-virtual {p2, p3}, Lcom/android/systemui/widget/SystemUITextView;->setMaxFontScale(F)V

    .line 324
    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    if-eqz p2, :cond_1

    .line 326
    invoke-virtual {p2, p3}, Lcom/android/systemui/widget/SystemUITextView;->setMaxFontScale(F)V

    :cond_1
    const/4 p2, 0x1

    .line 328
    invoke-virtual {p0, p2}, Lcom/android/keyguard/KeyguardInputViewController;->setMessageTimeout(Z)V

    .line 329
    iput-object p10, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mVibrationUtil:Lcom/android/systemui/vibrate/VibrationUtil;

    .line 330
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/android/keyguard/KeyguardTextBuilder;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardTextBuilder;

    move-result-object p2

    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mKeyguardTextBuilder:Lcom/android/keyguard/KeyguardTextBuilder;

    .line 332
    const-class p2, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/knox/KnoxStateMonitor;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 334
    iput-object p12, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 335
    iput-object p11, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mKeyguardRotationController:Lcom/android/keyguard/KeyguardRotationController;

    .line 336
    iput-object p9, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mEmergencyButtonController:Lcom/android/keyguard/EmergencyButtonController;

    .line 341
    iget-object p2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p2, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    new-instance p3, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$OnApplyWindowInsetsListener;

    invoke-direct {p3, p0, p1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$OnApplyWindowInsetsListener;-><init>(Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$1;)V

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;I)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->updateLayout(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;)I
    .locals 0

    .line 59
    iget p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mImeBottom:I

    return p0
.end method

.method static synthetic access$1000(Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;)Lcom/android/systemui/vibrate/VibrationUtil;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mVibrationUtil:Lcom/android/systemui/vibrate/VibrationUtil;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;I)I
    .locals 0

    .line 59
    iput p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mImeBottom:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;)Landroid/view/View;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;I)Ljava/lang/String;
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->getStringFromId(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;)Landroid/content/res/Resources;
    .locals 0

    .line 59
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->disableProfilePermanently()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;)Landroid/content/res/Resources;
    .locals 0

    .line 59
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1700(Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;)Landroid/content/res/Resources;
    .locals 0

    .line 59
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1800(Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->updateLayoutForAttemptRemainingBeforeWipe()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;)Ljava/lang/Runnable;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mUpdateLayoutRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;)Landroid/os/Handler;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;Z)Z
    .locals 0

    .line 59
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mIsImeShown:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;)Landroid/view/View;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;)Landroid/view/View;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;)I
    .locals 0

    .line 59
    iget p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecondsRemaining:I

    return p0
.end method

.method static synthetic access$302(Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;I)I
    .locals 0

    .line 59
    iput p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecondsRemaining:I

    return p1
.end method

.method static synthetic access$402(Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;Z)Z
    .locals 0

    .line 59
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mIsFaceRunning:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;I)Z
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isPINSecurityView(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;)Landroid/content/res/Resources;
    .locals 0

    .line 59
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;)Lcom/android/keyguard/KeyguardHintTextArea;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;)Z
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isHintText()Z

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;)Landroid/view/View;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method private calculateLandscapeViewWidth(I)I
    .locals 2

    .line 1232
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050204

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    mul-int/lit8 v1, v0, 0x2

    sub-int v1, p1, v1

    .line 1234
    div-int/lit8 v1, v1, 0x2

    .line 1235
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isInDisplayFingerprintMarginAccepted()Z

    move-result p0

    if-eqz p0, :cond_0

    sub-int/2addr p1, v0

    .line 1237
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->getInDisplayFingerprintHeight()I

    move-result p0

    sub-int/2addr p1, p0

    div-int/lit8 v1, p1, 0x2

    :cond_0
    return v1
.end method

.method protected static charSequenceToByteArray(Ljava/lang/CharSequence;)[B
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 615
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 616
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 617
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private checkFrameLayoutParams(Landroid/view/ViewGroup;)Z
    .locals 0

    .line 1411
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    .line 1412
    instance-of p0, p0, Landroid/widget/FrameLayout$LayoutParams;

    return p0
.end method

.method private disableProfilePermanently()V
    .locals 4

    const-string v0, "KeyguardSecAbsKeyInputViewController"

    const-string v1, "disableProfilePermanently"

    .line 1299
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-interface {v0}, Lcom/android/systemui/knox/KnoxStateMonitor;->getContainerIds()Ljava/util/List;

    move-result-object v0

    .line 1302
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

    .line 1303
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-interface {v3, v2}, Lcom/android/systemui/knox/KnoxStateMonitor;->isPersona(I)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0

    .line 1307
    :cond_1
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v0, "android.intent.extra.user_handle"

    .line 1308
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "knox.container.proxy.POLICY_ADMIN_LOCK"

    .line 1309
    invoke-static {v0, p0}, Lcom/samsung/android/knox/ContainerProxy;->sendPolicyUpdate(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method

.method private getStringFromId(I)Ljava/lang/String;
    .locals 0

    .line 602
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isFMMView(I)Z
    .locals 0

    .line 1274
    sget p0, Lcom/android/systemui/R$id;->keyguard_fmm_view:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isHiddenPasswordSubMessageVisibility()Z
    .locals 1

    .line 1397
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->getSecurityViewId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isPasswordView(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1398
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$bool;->small_tablet_password_sub_message_policy:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isHintText()Z
    .locals 4

    .line 426
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardHintTextArea;->getPasswordHintText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 427
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts(I)I

    move-result v0

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 428
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

.method private isPINSecurityView(I)Z
    .locals 0

    .line 1266
    sget p0, Lcom/android/systemui/R$id;->keyguard_pin_view:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isPasswordView(I)Z
    .locals 0

    .line 1270
    sget p0, Lcom/android/systemui/R$id;->keyguard_password_view:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    const/4 v0, -0x1

    .line 90
    iput v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecondsRemaining:I

    .line 91
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->updateLayout()V

    return-void
.end method

.method private reportAuditLog(ILjava/lang/String;)V
    .locals 13

    const-string p0, "User "

    if-eqz p2, :cond_0

    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x1

    .line 1316
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " has exceeded number of authentication failure limit when using "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " authentication"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v4, "KeyguardSecAbsKeyInputViewController"

    move v6, p1

    .line 1315
    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const/4 v6, 0x5

    const/4 v7, 0x1

    const/4 v8, 0x1

    .line 1321
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " has exceeded number of authentication failure limit"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v10, "KeyguardSecAbsKeyInputViewController"

    move v12, p1

    .line 1320
    invoke-static/range {v6 .. v12}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method private setEmergencyButtonCallback(Z)V
    .locals 3

    .line 1384
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_DIRECT_CALL_TO_ECC:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1385
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    move-object v2, v0

    check-cast v2, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    check-cast v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getPasswordTextViewId()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 1387
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mEmergencyButtonController:Lcom/android/keyguard/EmergencyButtonController;

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mEmergencyButtonCallback:Lcom/android/keyguard/EmergencyButtonController$EmergencyButtonCallback;

    :cond_1
    invoke-virtual {v2, v1}, Lcom/android/keyguard/EmergencyButtonController;->setEmergencyButtonCallback(Lcom/android/keyguard/EmergencyButtonController$EmergencyButtonCallback;)V

    .line 1388
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mEmergencyButtonController:Lcom/android/keyguard/EmergencyButtonController;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/EmergencyButtonController;->setPasswordEntryView(Landroid/view/View;)V

    return-void
.end method

.method private setLandscapeLayoutPadding(Landroid/widget/LinearLayout;Z)V
    .locals 3

    .line 1243
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->kg_message_area_padding_side:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1244
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isInDisplayFingerprintMarginAccepted()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    move p2, v2

    .line 1245
    :goto_0
    invoke-virtual {p1, v2, v2, p2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    if-eqz v1, :cond_2

    .line 1247
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->getCurrentRotation()I

    move-result p0

    const/4 p2, 0x1

    if-ne p0, p2, :cond_1

    .line 1248
    invoke-virtual {p1, v2, v2, v0, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_1

    .line 1250
    :cond_1
    invoke-virtual {p1, v0, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_2
    :goto_1
    return-void
.end method

.method private updateDualDisplayLayout(I)V
    .locals 3

    .line 1111
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1112
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isAllowedToAdjustSecurityView()Z

    move-result v1

    .line 1113
    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->isTableMode()Z

    .line 1114
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->updatePortraitLayout(I)V

    .line 1116
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mBottomView:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_1

    .line 1117
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->checkFrameLayoutParams(Landroid/view/ViewGroup;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1118
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mBottomView:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1119
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->getSecurityViewId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isPasswordView(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1120
    sget v2, Lcom/android/systemui/R$dimen;->kg_password_message_area_width_dual_display:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    .line 1121
    :cond_0
    sget v2, Lcom/android/systemui/R$dimen;->kg_message_area_width_dual_display:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_0
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1122
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mBottomView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1126
    :cond_1
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    if-eqz p1, :cond_4

    .line 1127
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isBiometricLockoutLandscape()Z

    move-result p1

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mIsFaceRunning:Z

    if-nez p1, :cond_2

    if-eqz v1, :cond_2

    .line 1128
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isLandscapeDisplay()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    .line 1131
    :cond_2
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    goto :goto_2

    .line 1129
    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    :cond_4
    :goto_2
    return-void
.end method

.method private updateLandscapeLayout(I)V
    .locals 14

    .line 949
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 950
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 951
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 952
    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->calculateLandscapeViewWidth(I)I

    move-result v1

    .line 953
    sget v2, Lcom/android/systemui/R$dimen;->kg_message_area_padding_side:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 954
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->getSecurityViewId()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isPasswordView(I)Z

    move-result v3

    .line 956
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isAllowedToAdjustSecurityView()Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v4

    if-nez v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    move v4, v6

    .line 957
    :goto_0
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mBottomView:Landroid/widget/LinearLayout;

    const/4 v8, -0x1

    if-eqz v7, :cond_1

    .line 958
    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 959
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mBottomView:Landroid/widget/LinearLayout;

    invoke-direct {p0, v7}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->checkFrameLayoutParams(Landroid/view/ViewGroup;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 960
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mBottomView:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 961
    iput v8, v7, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 962
    iget-object v9, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mBottomView:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 965
    :cond_1
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    const/16 v9, 0x8

    if-eqz v7, :cond_2

    .line 966
    invoke-virtual {v7, v9}, Lcom/android/keyguard/KeyguardHintTextArea;->setVisibility(I)V

    .line 968
    :cond_2
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    if-eqz v7, :cond_4

    .line 969
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isPINSecurityView(I)Z

    move-result v7

    if-eqz v7, :cond_4

    if-eqz v4, :cond_4

    .line 970
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 971
    iget-object v7, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getLockoutBiometricAttemptDeadline()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v7, v10, v12

    if-lez v7, :cond_3

    .line 972
    sget v7, Lcom/android/systemui/R$dimen;->kg_security_input_box_height:I

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    goto :goto_1

    :cond_3
    move v7, v6

    .line 973
    :goto_1
    iput v7, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 974
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 977
    :cond_4
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mMessageArea:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_8

    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mInputContainer:Landroid/widget/LinearLayout;

    if-eqz v7, :cond_8

    .line 979
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 980
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mInputContainer:Landroid/widget/LinearLayout;

    .line 981
    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 982
    iput v1, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 983
    iput v8, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 984
    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 985
    iget-object v10, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mMessageArea:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 986
    iput v1, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 987
    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 988
    iput v6, v7, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 989
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mInputContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 990
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mInputContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/16 v1, 0x11

    if-eqz v3, :cond_5

    .line 992
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mMessageArea:Landroid/widget/LinearLayout;

    invoke-direct {p0, v2, v5}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->setLandscapeLayoutPadding(Landroid/widget/LinearLayout;Z)V

    .line 993
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mInputContainer:Landroid/widget/LinearLayout;

    invoke-direct {p0, v2, v6}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->setLandscapeLayoutPadding(Landroid/widget/LinearLayout;Z)V

    .line 994
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mInputContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto :goto_2

    .line 996
    :cond_5
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mMessageArea:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 998
    :goto_2
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mContainer:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_8

    .line 999
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    .line 1000
    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1001
    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-eqz v3, :cond_6

    .line 1003
    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1004
    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1005
    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1006
    sget v4, Lcom/android/systemui/R$dimen;->kg_password_container_margin_bottom:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1007
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto :goto_3

    .line 1009
    :cond_6
    sget-boolean v1, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    if-eqz v1, :cond_7

    const-class v1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {v1}, Lcom/android/systemui/keyguard/DisplayLifecycle;->isFolderOpened()Z

    move-result v1

    if-nez v1, :cond_7

    .line 1010
    sget v1, Lcom/android/systemui/R$dimen;->kg_fold_sub_pin_container_margin_bottom:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_3

    .line 1012
    :cond_7
    sget v1, Lcom/android/systemui/R$dimen;->kg_pin_container_margin_bottom:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1015
    :goto_3
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1018
    :cond_8
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    if-eqz v1, :cond_9

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isPINSecurityView(I)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 1019
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1020
    iget v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1021
    sget v2, Lcom/android/systemui/R$dimen;->kg_security_input_box_margin_top:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sget v4, Lcom/android/systemui/R$dimen;->kg_message_area_font_size:I

    .line 1022
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v2, v4

    .line 1023
    iget v4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1024
    iget v5, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1025
    invoke-virtual {p1, v1, v2, v4, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1026
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1028
    :cond_9
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mEcaView:Landroid/view/View;

    if-eqz p1, :cond_a

    .line 1029
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1030
    invoke-virtual {p1, v6, v6, v6, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1031
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mEcaView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1032
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mEcaView:Landroid/view/View;

    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1033
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mEmergencyButtonController:Lcom/android/keyguard/EmergencyButtonController;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mEcaView:Landroid/view/View;

    sget v2, Lcom/android/systemui/R$id;->emergency_call_button:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/keyguard/EmergencyButtonController;->setEmergencyView(Landroid/view/View;)V

    if-eqz v3, :cond_a

    .line 1035
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mDummyEcaSpace:Landroid/widget/Space;

    if-eqz p1, :cond_a

    .line 1036
    invoke-virtual {p1}, Landroid/widget/Space;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1037
    sget v1, Lcom/android/systemui/R$dimen;->kg_password_container_margin_bottom:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p1, v6, v6, v6, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1038
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mDummyEcaSpace:Landroid/widget/Space;

    invoke-virtual {v0, p1}, Landroid/widget/Space;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1039
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mDummyEcaSpace:Landroid/widget/Space;

    invoke-virtual {p1, v6}, Landroid/widget/Space;->setVisibility(I)V

    .line 1045
    :cond_a
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    if-eqz p0, :cond_b

    .line 1046
    invoke-virtual {p0, v9}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    :cond_b
    return-void
.end method

.method private updateLayout(I)V
    .locals 2

    .line 814
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->getSecurityViewId()I

    move-result v0

    .line 815
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 816
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->updateTabletLayout()V

    goto :goto_2

    .line 818
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->isDualDisplayPolicyAllowed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 819
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->updateDualDisplayLayout(I)V

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_3

    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    goto :goto_0

    .line 823
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->updateLandscapeLayout(I)V

    goto :goto_1

    .line 821
    :cond_3
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->updatePortraitLayout(I)V

    .line 825
    :goto_1
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->updateLayoutForAttemptRemainingBeforeWipe()V

    :goto_2
    return-void
.end method

.method private updateLayoutForAttemptRemainingBeforeWipe()V
    .locals 10

    .line 1165
    iget v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecondsRemaining:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-gt v0, v1, :cond_0

    .line 1166
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->getLockoutAttemptDeadline()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-nez v0, :cond_0

    .line 1168
    iput v2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecondsRemaining:I

    return-void

    .line 1172
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1173
    iget v3, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecondsRemaining:I

    if-ltz v3, :cond_d

    .line 1174
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v3

    .line 1175
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mMessageArea:Landroid/widget/LinearLayout;

    const/16 v5, 0x8

    const/4 v6, 0x0

    if-eqz v4, :cond_5

    .line 1176
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    if-eqz v4, :cond_1

    .line 1177
    invoke-virtual {v4, v5}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    .line 1179
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v4, v4, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 1180
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->getCurrentRotation()I

    move-result v7

    if-eqz v7, :cond_3

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    goto :goto_0

    .line 1182
    :cond_2
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v7, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_1

    :cond_3
    :goto_0
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    :goto_1
    if-eqz v3, :cond_4

    .line 1185
    sget v7, Lcom/android/systemui/R$dimen;->keyguard_bottom_area_emergency_button_area_min_height_tablet:I

    .line 1184
    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    sget v8, Lcom/android/systemui/R$dimen;->kg_pattern_eca_margin_bottom_tablet:I

    .line 1185
    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    goto :goto_2

    .line 1187
    :cond_4
    sget v7, Lcom/android/systemui/R$dimen;->keyguard_bottom_area_emergency_button_area_min_height:I

    .line 1186
    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    sget v8, Lcom/android/systemui/R$dimen;->kg_pattern_eca_margin_bottom:I

    .line 1187
    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    :goto_2
    add-int/2addr v7, v8

    .line 1188
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1050204

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 1190
    iget-object v9, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mMessageArea:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 1191
    iput v2, v9, Landroid/widget/LinearLayout$LayoutParams;->width:I

    sub-int/2addr v4, v7

    sub-int/2addr v4, v8

    .line 1192
    iput v4, v9, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1193
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mMessageArea:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6, v6, v6, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1194
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mMessageArea:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1196
    :cond_5
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    if-eqz v4, :cond_6

    .line 1197
    new-instance v7, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v7}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 1199
    :cond_6
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mInputContainer:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_7

    .line 1201
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 1202
    iput v2, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v2, -0x2

    .line 1203
    iput v2, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1204
    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1205
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mInputContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6, v6, v6, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1206
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mInputContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1208
    :cond_7
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mContainer:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_8

    .line 1209
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1211
    :cond_8
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mEcaView:Landroid/view/View;

    if-eqz v2, :cond_c

    .line 1212
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1213
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->getSecurityViewId()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isPasswordView(I)Z

    move-result v4

    if-eqz v4, :cond_a

    if-eqz v3, :cond_9

    .line 1215
    sget v3, Lcom/android/systemui/R$dimen;->kg_password_eca_margin_bottom_tablet:I

    goto :goto_3

    :cond_9
    sget v3, Lcom/android/systemui/R$dimen;->kg_password_eca_margin_bottom:I

    :goto_3
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_5

    :cond_a
    if-eqz v3, :cond_b

    .line 1216
    sget v3, Lcom/android/systemui/R$dimen;->kg_pin_eca_margin_bottom_tablet:I

    goto :goto_4

    :cond_b
    sget v3, Lcom/android/systemui/R$dimen;->kg_pin_eca_margin_bottom:I

    :goto_4
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1217
    :goto_5
    invoke-virtual {v2, v6, v6, v6, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1218
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mEcaView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v4, :cond_c

    .line 1220
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mDummyEcaSpace:Landroid/widget/Space;

    if-eqz v0, :cond_c

    .line 1221
    invoke-virtual {v0, v5}, Landroid/widget/Space;->setVisibility(I)V

    .line 1224
    :cond_c
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mBottomView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_d

    const/16 v2, 0x50

    .line 1225
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1226
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mBottomView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    :cond_d
    return-void
.end method

.method private updatePortraitLayout(I)V
    .locals 14

    .line 830
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 831
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isPasswordView(I)Z

    move-result v1

    .line 832
    sget-boolean v2, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    const-class v5, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-static {v5}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {v5}, Lcom/android/systemui/keyguard/DisplayLifecycle;->isFolderOpened()Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v4

    .line 833
    :goto_0
    iget-object v6, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mBottomView:Landroid/widget/LinearLayout;

    const/4 v7, -0x1

    if-eqz v6, :cond_1

    const/16 v8, 0x50

    .line 834
    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 835
    iget-object v6, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mBottomView:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 836
    iget-object v6, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mBottomView:Landroid/widget/LinearLayout;

    invoke-direct {p0, v6}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->checkFrameLayoutParams(Landroid/view/ViewGroup;)Z

    move-result v6

    if-eqz v6, :cond_1

    if-nez v5, :cond_1

    .line 837
    iget-object v6, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mBottomView:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 838
    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 839
    iget-object v8, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mBottomView:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 842
    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isHintText()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 843
    iget-object v6, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    invoke-virtual {v6, v4}, Lcom/android/keyguard/KeyguardHintTextArea;->setVisibility(I)V

    .line 845
    :cond_2
    iget-object v6, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    if-eqz v6, :cond_3

    .line 846
    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 847
    iput v4, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 848
    iget-object v8, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 850
    :cond_3
    iget-object v6, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mMessageArea:Landroid/widget/LinearLayout;

    const/4 v8, -0x2

    if-eqz v6, :cond_11

    iget-object v9, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mInputContainer:Landroid/widget/LinearLayout;

    if-eqz v9, :cond_11

    .line 852
    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 853
    iget-object v9, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mInputContainer:Landroid/widget/LinearLayout;

    .line 854
    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 855
    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 856
    iput v8, v6, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 857
    iput v4, v6, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 858
    sget v10, Lcom/android/systemui/R$dimen;->kg_security_input_box_side_margin:I

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 859
    iget-object v11, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mMessageArea:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_4

    move v12, v4

    goto :goto_1

    :cond_4
    move v12, v10

    :goto_1
    if-eqz v5, :cond_5

    move v13, v4

    goto :goto_2

    :cond_5
    move v13, v10

    :goto_2
    invoke-virtual {v11, v12, v4, v13, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 860
    iput v7, v9, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 861
    iput v8, v9, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 862
    iget-object v11, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mInputContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v4, v4, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 863
    iget-object v11, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mInputContainer:Landroid/widget/LinearLayout;

    const/16 v12, 0x11

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 864
    iget-object v11, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mContainer:Landroid/widget/LinearLayout;

    if-eqz v11, :cond_10

    .line 865
    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v1, :cond_9

    .line 867
    iput v7, v11, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 868
    iput v8, v11, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-eqz v5, :cond_6

    move v2, v4

    goto :goto_3

    :cond_6
    move v2, v10

    .line 869
    :goto_3
    invoke-virtual {v11, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    if-eqz v5, :cond_7

    move v10, v4

    .line 870
    :cond_7
    invoke-virtual {v11, v10}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 871
    sget v2, Lcom/android/systemui/R$dimen;->kg_security_input_box_margin_top:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v11, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 873
    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isInDisplayFingerprintMarginAccepted()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 874
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isInDisplayFpSensorPositionHigh()Z

    move-result v2

    if-eqz v2, :cond_8

    iget v2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecondsRemaining:I

    if-ne v2, v7, :cond_8

    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mIsImeShown:Z

    if-nez v2, :cond_8

    .line 876
    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->getInDisplayFpContainerBottomMargin(Z)I

    move-result v2

    iput v2, v11, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_6

    .line 878
    :cond_8
    sget v2, Lcom/android/systemui/R$dimen;->kg_password_container_margin_bottom:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v11, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_6

    .line 882
    :cond_9
    iput v8, v11, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 883
    iput v8, v11, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 884
    iput v4, v11, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 885
    iget-object v10, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v10}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isInDisplayFingerprintMarginAccepted()Z

    move-result v10

    if-eqz v10, :cond_a

    iget v10, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecondsRemaining:I

    if-ne v10, v7, :cond_a

    .line 886
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isInDisplayFpSensorPositionHigh()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 887
    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->getInDisplayFpContainerBottomMargin(Z)I

    move-result v2

    iput v2, v11, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_6

    :cond_a
    if-eqz v2, :cond_f

    if-eqz v5, :cond_e

    .line 890
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isLandscapeDisplay()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 891
    sget v2, Lcom/android/systemui/R$dimen;->kg_fold_pin_container_margin_bottom:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sget v10, Lcom/android/systemui/R$dimen;->kg_fold_pin_container_margin_bottom_small:I

    .line 892
    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    if-ne v5, v12, :cond_b

    goto :goto_4

    :cond_b
    move v3, v4

    :goto_4
    if-nez v3, :cond_c

    move v2, v10

    .line 893
    :cond_c
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v11, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_5

    .line 897
    :cond_d
    sget v2, Lcom/android/systemui/R$dimen;->kg_fold_pin_container_margin_bottom:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v11, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 899
    :goto_5
    iget v2, v11, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-static {v2}, Lcom/android/systemui/util/DeviceState;->setPINContainerBottomMargin(I)V

    goto :goto_6

    .line 901
    :cond_e
    sget v2, Lcom/android/systemui/R$dimen;->kg_fold_sub_pin_container_margin_bottom:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v11, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_6

    .line 904
    :cond_f
    sget v2, Lcom/android/systemui/R$dimen;->kg_pin_container_margin_bottom:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v11, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 907
    :goto_6
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v11}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 909
    :cond_10
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mMessageArea:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 910
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mInputContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 911
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mInputContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 913
    :cond_11
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    if-eqz v2, :cond_12

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isPINSecurityView(I)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 914
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 915
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 917
    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 918
    iget v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 919
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 920
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 922
    :cond_12
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mEcaView:Landroid/view/View;

    if-eqz v2, :cond_15

    .line 923
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 924
    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 925
    iput v8, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-eqz v1, :cond_13

    .line 926
    sget p1, Lcom/android/systemui/R$dimen;->kg_password_eca_margin_bottom:I

    goto :goto_7

    .line 927
    :cond_13
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isFMMView(I)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 928
    sget p1, Lcom/android/systemui/R$dimen;->kg_fmm_eca_margin_bottom:I

    goto :goto_7

    .line 929
    :cond_14
    sget p1, Lcom/android/systemui/R$dimen;->kg_pin_eca_margin_bottom:I

    .line 930
    :goto_7
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 931
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mEcaView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 936
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mEcaView:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 937
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mEmergencyButtonController:Lcom/android/keyguard/EmergencyButtonController;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mEcaView:Landroid/view/View;

    sget v2, Lcom/android/systemui/R$id;->emergency_call_button:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/keyguard/EmergencyButtonController;->setEmergencyView(Landroid/view/View;)V

    if-eqz v1, :cond_15

    .line 939
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mDummyEcaSpace:Landroid/widget/Space;

    if-eqz p1, :cond_15

    const/16 v0, 0x8

    .line 940
    invoke-virtual {p1, v0}, Landroid/widget/Space;->setVisibility(I)V

    .line 943
    :cond_15
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    if-eqz p0, :cond_16

    .line 944
    invoke-virtual {p0, v4}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    :cond_16
    return-void
.end method

.method private updateTabletLayout()V
    .locals 6

    .line 1051
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->getSecurityViewId()I

    move-result v0

    .line 1052
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isPINSecurityView(I)Z

    move-result v1

    .line 1053
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isPasswordView(I)Z

    move-result v0

    .line 1054
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1055
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mBottomView:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_0

    const/16 v4, 0x50

    .line 1056
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1057
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mBottomView:Landroid/widget/LinearLayout;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1059
    :cond_0
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mMessageArea:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_1

    .line 1060
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    .line 1061
    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v4, -0x2

    .line 1062
    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1063
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mMessageArea:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1066
    :cond_1
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 1067
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isHiddenPasswordSubMessageVisibility()Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x8

    goto :goto_0

    :cond_2
    move v5, v4

    :goto_0
    invoke-virtual {v3, v5}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    .line 1069
    :cond_3
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mInputContainer:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_4

    .line 1070
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1072
    :cond_4
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mContainer:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_7

    .line 1073
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v1, :cond_5

    .line 1075
    sget v1, Lcom/android/systemui/R$dimen;->kg_pin_container_margin_bottom_tablet:I

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_1

    :cond_5
    if-eqz v0, :cond_6

    .line 1077
    sget v1, Lcom/android/systemui/R$dimen;->kg_security_input_box_margin_top_tablet:I

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1078
    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1080
    :cond_6
    :goto_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1082
    :cond_7
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    if-eqz v1, :cond_8

    if-eqz v0, :cond_8

    .line 1083
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 1084
    sget v3, Lcom/android/systemui/R$dimen;->kg_security_input_box_width_tablet:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1085
    sget v3, Lcom/android/systemui/R$dimen;->kg_security_input_box_height_tablet:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1086
    sget v3, Lcom/android/systemui/R$dimen;->kg_security_password_input_box_margin_bottom_tablet:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1087
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1089
    :cond_8
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mEcaView:Landroid/view/View;

    if-eqz v1, :cond_a

    .line 1090
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1091
    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1092
    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1093
    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-eqz v0, :cond_9

    .line 1095
    sget v0, Lcom/android/systemui/R$dimen;->kg_password_eca_margin_bottom_tablet:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_2

    .line 1096
    :cond_9
    sget v0, Lcom/android/systemui/R$dimen;->kg_pin_eca_margin_bottom_tablet:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1097
    :goto_2
    invoke-virtual {v1, v3, v4, v5, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1098
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mEcaView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1100
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mEcaView:Landroid/view/View;

    sget v0, Lcom/android/systemui/R$id;->emergency_call_button:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/EmergencyButton;

    if-eqz p0, :cond_a

    .line 1102
    invoke-virtual {p0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1103
    sget v1, Lcom/android/systemui/R$dimen;->keyguard_bottom_area_emergency_button_area_min_height_tablet:I

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1104
    invoke-virtual {p0, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_a
    return-void
.end method


# virtual methods
.method protected disableDevicePermanently()V
    .locals 2

    const-string v0, "KeyguardSecAbsKeyInputViewController"

    const-string v1, "disableDevicePermanently"

    .line 1291
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1292
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->setPasswordEntryEnabled(Z)V

    .line 1293
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    if-eqz v0, :cond_0

    .line 1294
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mKeyguardTextBuilder:Lcom/android/keyguard/KeyguardTextBuilder;

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardTextBuilder;->getDefaultSecurityMessage(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected displayDefaultSecurityMessage()V
    .locals 0

    return-void
.end method

.method protected getCurrentRotation()I
    .locals 1

    .line 1403
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1404
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 1405
    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result p0

    .line 1404
    invoke-static {p0}, Lcom/android/systemui/util/DeviceState;->getRotation(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected getInDisplayFpContainerBottomMargin(Z)I
    .locals 3

    .line 1256
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1257
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->getInDisplayFingerprintHeight()I

    move-result v1

    if-eqz p1, :cond_0

    .line 1258
    sget v2, Lcom/android/systemui/R$dimen;->kg_password_container_margin_bottom:I

    goto :goto_0

    :cond_0
    sget v2, Lcom/android/systemui/R$dimen;->kg_pin_container_margin_bottom:I

    :goto_0
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 1259
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mEcaView:Landroid/view/View;

    if-eqz p0, :cond_1

    sget v2, Lcom/android/systemui/R$id;->emergency_call_button:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_1

    .line 1260
    sget p0, Lcom/android/systemui/R$dimen;->keyguard_bottom_area_emergency_button_area_min_height:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    sub-int/2addr v1, p0

    if-eqz p1, :cond_2

    .line 1261
    sget p0, Lcom/android/systemui/R$dimen;->kg_password_eca_margin_bottom:I

    goto :goto_2

    :cond_2
    sget p0, Lcom/android/systemui/R$dimen;->kg_pin_eca_margin_bottom:I

    :goto_2
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    sub-int/2addr v1, p0

    const p0, 0x1050204

    .line 1262
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    sub-int/2addr v1, p0

    return v1
.end method

.method protected abstract getPasswordText()[B
.end method

.method protected getSecurityViewId()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected handleAttemptLockout(J)V
    .locals 9

    .line 448
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->setPasswordEntryEnabled(Z)V

    .line 450
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->setSubSecurityMessage(I)V

    .line 452
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 453
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    .line 454
    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 456
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 457
    new-instance v8, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$4;

    sub-long v4, p1, v0

    const-wide/16 v6, 0x3e8

    move-object v2, v8

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$4;-><init>(Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;JJ)V

    .line 507
    invoke-virtual {v8}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mCountdownTimer:Landroid/os/CountDownTimer;

    return-void
.end method

.method protected initializeBottomContainerView(J)V
    .locals 0

    return-void
.end method

.method protected isAllowedToAdjustSecurityView()Z
    .locals 1

    .line 1378
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 1379
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintOptionEnabled()Z

    move-result p0

    .line 1378
    invoke-static {v0, p0}, Lcom/android/systemui/util/DeviceState;->isAllowedToAdjustSecurityView(Landroid/content/Context;Z)Z

    move-result p0

    return p0
.end method

.method protected isBiometricLockoutLandscape()Z
    .locals 2

    .line 1369
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isLandscapeDisplay()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1372
    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mIsBiometricLockoutPWView:Z

    if-nez v0, :cond_1

    .line 1373
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->getSecurityViewId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isPasswordView(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 1374
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-interface {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->isMaxFailedBiometricUnlockAttempts(I)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method protected isLandscapeDisplay()Z
    .locals 1

    .line 1359
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected isLandscapePolicyAllowed()Z
    .locals 1

    .line 1392
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isLandscapeDisplay()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 1393
    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->isDualDisplayPolicyAllowed()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected isStrongAuthPromptMessage()Z
    .locals 2

    .line 1351
    iget p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mPromptReason:I

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

.method public notifyKeyguardLockout()V
    .locals 0

    .line 1330
    const-class p0, Lcom/android/systemui/util/DesktopManager;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/DesktopManager;

    invoke-virtual {p0}, Lcom/android/systemui/util/DesktopManager;->notifyKeyguardLockout()V

    return-void
.end method

.method public onInit()V
    .locals 0

    .line 348
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardMessageAreaController;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->init()V

    return-void
.end method

.method protected onPasswordChecked(IZIZ)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 597
    invoke-virtual/range {v0 .. v5}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->onPasswordChecked(IZIZLjava/lang/String;)V

    return-void
.end method

.method protected onPasswordChecked(IZIZLjava/lang/String;)V
    .locals 7

    .line 512
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, p1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    .line 515
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    const-string v4, "KeyguardSecAbsKeyInputViewController"

    const-string v6, "!@onPasswordChecked matched=%b timeoutMs=%d userId=%d"

    .line 514
    invoke-static {v4, v6, v3}, Lcom/android/systemui/keyguard/KeyguardLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_2

    const-string p3, "onPasswordChecked"

    .line 521
    invoke-static {v4, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    iget-object p3, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p3, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    iget-boolean p3, p3, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEnableHaptics:Z

    if-eqz p3, :cond_1

    .line 524
    iget-object p3, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mVibrationUtil:Lcom/android/systemui/vibrate/VibrationUtil;

    invoke-virtual {p3, v2, v2}, Lcom/android/systemui/vibrate/VibrationUtil;->playVibration(II)V

    .line 526
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object p3

    invoke-interface {p3, p1, v2, v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(IZI)V

    if-eqz v0, :cond_a

    .line 528
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mDismissing:Z

    .line 529
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object p3

    invoke-interface {p3, v2, p1}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ZI)V

    goto/16 :goto_3

    .line 532
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    iget-boolean v0, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEnableHaptics:Z

    if-eqz v0, :cond_3

    .line 533
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mVibrationUtil:Lcom/android/systemui/vibrate/VibrationUtil;

    const/16 v3, 0x72

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/vibrate/VibrationUtil;->playVibration(II)V

    :cond_3
    if-eqz p4, :cond_8

    .line 538
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object p4

    invoke-interface {p4, p1, v1, p3}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(IZI)V

    .line 539
    iget-object p4, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 540
    invoke-interface {p4}, Lcom/android/systemui/knox/KnoxStateMonitor;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result p4

    if-nez p4, :cond_7

    iget-object p4, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 541
    invoke-interface {p4}, Lcom/android/systemui/knox/KnoxStateMonitor;->isDisableDeviceByMultifactor()Z

    move-result p4

    if-eqz p4, :cond_4

    goto :goto_1

    :cond_4
    const/16 p4, 0x8

    if-nez p3, :cond_5

    .line 545
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isHintText()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 546
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p1

    if-ne p1, p4, :cond_8

    .line 547
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    invoke-virtual {p1, v1}, Lcom/android/keyguard/KeyguardHintTextArea;->setVisibility(I)V

    goto :goto_2

    :cond_5
    if-lez p3, :cond_8

    .line 551
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isHintText()Z

    move-result p5

    if-eqz p5, :cond_6

    .line 552
    iget-object p5, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    invoke-virtual {p5, p4}, Lcom/android/keyguard/KeyguardHintTextArea;->setVisibility(I)V

    .line 554
    :cond_6
    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardInputViewController;->setMessageTimeout(Z)V

    .line 555
    iget-object p4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p4, p1, p3}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->setLockoutAttemptDeadline(II)J

    move-result-wide p4

    .line 556
    invoke-virtual {p0, p4, p5}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->handleAttemptLockout(J)V

    .line 558
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->notifyKeyguardLockout()V

    .line 560
    iget-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateBiometricListeningState()V

    goto :goto_2

    .line 542
    :cond_7
    :goto_1
    invoke-direct {p0, p1, p5}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->reportAuditLog(ILjava/lang/String;)V

    .line 543
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->disableDevicePermanently()V

    :cond_8
    :goto_2
    int-to-long p3, p3

    const-wide/16 v3, 0x0

    cmp-long p1, p3, v3

    if-nez p1, :cond_a

    .line 567
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardInputViewController;->setMessageTimeout(Z)V

    .line 569
    iget-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1, v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getRemainingAttempt(I)I

    move-result p1

    .line 570
    iget-object p3, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p3, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    invoke-virtual {p3}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getWrongPasswordStringId()I

    move-result p3

    invoke-direct {p0, p3}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->getStringFromId(I)Ljava/lang/String;

    move-result-object p3

    if-lez p1, :cond_9

    .line 572
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " ("

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p5, Lcom/android/systemui/R$plurals;->kg_attempt_left:I

    new-array v0, v2, [Ljava/lang/Object;

    .line 573
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    .line 572
    invoke-virtual {p3, p5, p1, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 575
    :cond_9
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {p1, p3}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    .line 577
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 579
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardMessageArea;->displayFailedAnimation()V

    .line 586
    :cond_a
    :goto_3
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mEntry:[B

    if-eqz p1, :cond_b

    const/4 p1, 0x0

    .line 590
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mEntry:[B

    .line 592
    :cond_b
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    xor-int/lit8 p1, p2, 0x1

    invoke-virtual {p0, v2, p1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->resetPasswordText(ZZ)V

    return-void
.end method

.method public onResume(I)V
    .locals 0

    .line 765
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->onResume(I)V

    .line 766
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isTesting()Z

    move-result p1

    if-nez p1, :cond_0

    .line 767
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->reset()V

    :cond_0
    return-void
.end method

.method protected onUserInput()V
    .locals 1

    .line 757
    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->onUserInput()V

    const/4 v0, 0x0

    .line 759
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->setSubSecurityMessage(I)V

    return-void
.end method

.method protected onViewAttached()V
    .locals 2

    .line 353
    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->onViewAttached()V

    .line 354
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 356
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mKnoxStateCallback:Lcom/android/systemui/knox/KnoxStateMonitorCallback;

    invoke-interface {v0, v1}, Lcom/android/systemui/knox/KnoxStateMonitor;->registerCallback(Lcom/android/systemui/knox/KnoxStateMonitorCallback;)V

    .line 358
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    if-eqz v0, :cond_0

    .line 359
    const-class v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mDisplayListener:Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    .line 361
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 362
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mKeyguardRotationController:Lcom/android/keyguard/KeyguardRotationController;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mKeyguardRotationListener:Lcom/android/keyguard/KeyguardRotationController$KeyguardRotationListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    :cond_2
    const/4 v0, 0x1

    .line 365
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->setEmergencyButtonCallback(Z)V

    return-void
.end method

.method protected onViewDetached()V
    .locals 2

    .line 370
    invoke-super {p0}, Lcom/android/keyguard/KeyguardInputViewController;->onViewDetached()V

    .line 371
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 373
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mKnoxStateCallback:Lcom/android/systemui/knox/KnoxStateMonitorCallback;

    invoke-interface {v0, v1}, Lcom/android/systemui/knox/KnoxStateMonitor;->removeCallback(Lcom/android/systemui/knox/KnoxStateMonitorCallback;)V

    .line 375
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    if-eqz v0, :cond_0

    .line 376
    const-class v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mDisplayListener:Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/SecLifecycle;->removeObserver(Ljava/lang/Object;)V

    .line 378
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 379
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mKeyguardRotationController:Lcom/android/keyguard/KeyguardRotationController;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mKeyguardRotationListener:Lcom/android/keyguard/KeyguardRotationController$KeyguardRotationListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    :cond_2
    const/4 v0, 0x0

    .line 382
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->setEmergencyButtonCallback(Z)V

    return-void
.end method

.method public reset()V
    .locals 7

    const/4 v0, 0x0

    .line 388
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mDismissing:Z

    .line 390
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    invoke-virtual {v1, v0, v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->resetPasswordText(ZZ)V

    .line 392
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->getLockoutAttemptDeadline()J

    move-result-wide v1

    .line 394
    sget-boolean v3, Lcom/android/systemui/LsRune;->SECURITY_KNOX_SUPPORT_DUAL_DAR_AT_DO:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 395
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->isDualDarInnerAuthRequired(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 396
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 397
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/android/systemui/knox/KnoxStateMonitor;->getInnerAuthUserId(I)I

    move-result v4

    .line 396
    invoke-interface {v3, v4}, Lcom/android/systemui/knox/KnoxStateMonitor;->getLockoutAttemptDeadline(I)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-eqz v5, :cond_0

    cmp-long v5, v3, v1

    if-lez v5, :cond_0

    .line 399
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "reset() switch to inner deadline. deadline = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", innerDeadline = "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KeyguardSecAbsKeyInputViewController"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v1, v3

    .line 404
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->updateLayout()V

    .line 406
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 407
    invoke-interface {v3}, Lcom/android/systemui/knox/KnoxStateMonitor;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 408
    invoke-interface {v3}, Lcom/android/systemui/knox/KnoxStateMonitor;->isDisableDeviceByMultifactor()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 410
    :cond_1
    invoke-virtual {p0, v1, v2}, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->shouldLockout(J)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 411
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isHintText()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 412
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardHintTextArea;->setVisibility(I)V

    .line 414
    :cond_2
    invoke-virtual {p0, v1, v2}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->handleAttemptLockout(J)V

    goto :goto_1

    .line 416
    :cond_3
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isHintText()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 417
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardHintTextArea;->updateHintButton()V

    .line 418
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardHintTextArea;->setVisibility(I)V

    .line 420
    :cond_4
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->resetState()V

    goto :goto_1

    .line 409
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->disableDevicePermanently()V

    :goto_1
    return-void
.end method

.method protected resetFor2StepVerification()V
    .locals 3

    .line 1417
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->getSecurityViewId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isPasswordView(I)Z

    move-result v0

    .line 1418
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->is2StepVerification()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 1419
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserUnlockedWithBiometric(I)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "KeyguardSecAbsKeyInputViewController"

    const-string/jumbo v2, "reset() - 2 step verification"

    .line 1420
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1421
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->setPasswordEntryEnabled(Z)V

    if-eqz v0, :cond_1

    .line 1423
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->setPasswordEntryInputEnabled(Z)V

    goto :goto_0

    .line 1426
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->setPasswordEntryEnabled(Z)V

    if-eqz v0, :cond_1

    .line 1428
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->setPasswordEntryInputEnabled(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method abstract resetState()V
.end method

.method protected setSubSecurityMessage(I)V
    .locals 7

    .line 773
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    if-eqz v0, :cond_8

    .line 774
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 775
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 776
    invoke-interface {v1}, Lcom/android/systemui/knox/KnoxStateMonitor;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v1

    const-string v2, ""

    const/16 v3, 0x8

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 777
    invoke-interface {v1}, Lcom/android/systemui/knox/KnoxStateMonitor;->isDisableDeviceByMultifactor()Z

    move-result v1

    if-nez v1, :cond_7

    .line 778
    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 779
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isManagedProfileWithUnifiedChallenge(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 784
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {p1, v2}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    .line 785
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setFocusable(Z)V

    goto :goto_0

    .line 787
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v0

    invoke-virtual {v1, p1, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 788
    iget-boolean v4, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mBouncerShowing:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mBouncerMessage:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mBouncerSubMessage:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 789
    :cond_2
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v6, v0

    invoke-virtual {v4, p1, v6}, Lcom/android/keyguard/KeyguardMessageArea;->formatMessage(I[Ljava/lang/Object;)V

    .line 790
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 792
    iput-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mBouncerSubMessage:Ljava/lang/String;

    .line 795
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isLandscapePolicyAllowed()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isHiddenPasswordSubMessageVisibility()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    .line 798
    :cond_4
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isBiometricLockoutLandscape()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 799
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {p0, v3}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    goto :goto_3

    .line 801
    :cond_5
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {p0, v0}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    goto :goto_3

    .line 796
    :cond_6
    :goto_1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {p0, v3}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    goto :goto_3

    .line 780
    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {p1, v2}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    .line 781
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {p0, v3}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    :cond_8
    :goto_3
    return-void
.end method

.method public showMessage(Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;)V
    .locals 2

    const/4 v0, 0x0

    .line 434
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardInputViewController;->setMessageTimeout(Z)V

    .line 435
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardMessageArea;->displayFailedAnimation()V

    .line 436
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    if-eqz v0, :cond_0

    .line 437
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isLandscapePolicyAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isHiddenPasswordSubMessageVisibility()Z

    move-result v0

    if-nez v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    .line 442
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->showMessage(Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public showPromptReason(I)V
    .locals 9

    .line 729
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    const-string v1, "KeyguardSecAbsKeyInputViewController"

    if-nez v0, :cond_0

    const-string/jumbo p0, "showPromptReason mSecurityMessageDisplay is null"

    .line 730
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 733
    :cond_0
    iput p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mPromptReason:I

    if-eqz p1, :cond_3

    .line 735
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->getLockoutAttemptDeadline()J

    move-result-wide v2

    .line 736
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_KNOX_SUPPORT_DUAL_DAR_AT_DO:Z

    const-wide/16 v4, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 737
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v6

    invoke-interface {v0, v6}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->isDualDarInnerAuthRequired(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 738
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 739
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v6

    invoke-interface {v0, v6}, Lcom/android/systemui/knox/KnoxStateMonitor;->getInnerAuthUserId(I)I

    move-result v6

    .line 738
    invoke-interface {v0, v6}, Lcom/android/systemui/knox/KnoxStateMonitor;->getLockoutAttemptDeadline(I)J

    move-result-wide v6

    cmp-long v0, v6, v4

    if-eqz v0, :cond_1

    cmp-long v0, v6, v2

    if-lez v0, :cond_1

    .line 741
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

    .line 748
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getPromptReasonStringRes(I)I

    :cond_3
    return-void
.end method

.method protected updateLayout()V
    .locals 1

    .line 809
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->getCurrentRotation()I

    move-result v0

    .line 810
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->updateLayout(I)V

    return-void
.end method

.method protected verifyPasswordAndUnlock()V
    .locals 6

    .line 624
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mDismissing:Z

    const-string v1, "KeyguardSecAbsKeyInputViewController"

    if-eqz v0, :cond_0

    const-string/jumbo p0, "verifyPasswordAndUnlock! already verified but haven\'t been dismissed. don\'t do it again."

    .line 625
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v0, "verifyPasswordAndUnlock"

    .line 629
    invoke-static {v1, v0}, Lcom/android/systemui/keyguard/KeyguardLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    invoke-static {}, Lcom/samsung/android/security/mdf/MdfUtils;->isMdfDisabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 636
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "User authentication is blocked by CC mode since it detects the device has been tampered"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 637
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    .line 642
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->getPasswordText()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mEntry:[B

    .line 644
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_KNOX_SUPPORT_DUAL_DAR_AT_DO:Z

    if-eqz v0, :cond_4

    .line 645
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    if-eqz v0, :cond_4

    .line 646
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/android/systemui/knox/KnoxStateMonitor;->isDualDarDeviceOwner(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 647
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/android/systemui/knox/KnoxStateMonitor;->isDualDarInnerLayerUnlocked(I)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "KeyguardSecAbsKeyInputViewController.DDAR"

    const-string v2, "Check password for DualDAR on DO"

    .line 648
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getEnteredCredential()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0

    .line 651
    iget-object v2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v2, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->setPasswordEntryInputEnabled(Z)V

    .line 652
    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mPendingLockCheck:Landroid/os/AsyncTask;

    if-eqz v2, :cond_2

    .line 653
    invoke-virtual {v2, v3}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 656
    :cond_2
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    .line 657
    invoke-virtual {v0}, Lcom/android/internal/widget/LockscreenCredential;->size()I

    move-result v4

    const/4 v5, 0x3

    if-gt v4, v5, :cond_3

    const-string v4, "!@KeyguardAbsKeyInputView"

    const-string v5, "Password too short!"

    .line 660
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    iget-object v4, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v4, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    invoke-virtual {v4, v1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->setPasswordEntryInputEnabled(Z)V

    .line 662
    invoke-virtual {p0, v2, v3, v3, v3}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->onPasswordChecked(IZIZ)V

    .line 663
    invoke-virtual {v0}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    return-void

    .line 667
    :cond_3
    iget-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    invoke-virtual {v3, v5}, Lcom/android/internal/util/LatencyTracker;->onActionStart(I)V

    .line 668
    iget-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/android/internal/util/LatencyTracker;->onActionStart(I)V

    .line 670
    iget-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setCredentialAttempted()V

    .line 672
    iget-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    new-instance v4, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$5;

    invoke-direct {v4, p0, v2, v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$5;-><init>(Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;ILcom/android/internal/widget/LockscreenCredential;)V

    invoke-static {v3, v0, v2, v1, v4}, Lcom/android/internal/widget/LockPatternChecker;->checkCredential(Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/widget/LockscreenCredential;IILcom/android/internal/widget/LockPatternChecker$OnCheckCallbackForDualDar;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mPendingLockCheck:Landroid/os/AsyncTask;

    return-void

    .line 723
    :cond_4
    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->verifyPasswordAndUnlock()V

    return-void
.end method
