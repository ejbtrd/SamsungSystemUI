.class public Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;
.super Lcom/android/keyguard/KeyguardPinBasedInputViewController;
.source "KeyguardSecPinBasedInputViewController.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/keyguard/KeyguardSecPinBasedInputView;",
        ">",
        "Lcom/android/keyguard/KeyguardPinBasedInputViewController<",
        "TT;>;",
        "Landroid/widget/TextView$OnEditorActionListener;",
        "Landroid/text/TextWatcher;"
    }
.end annotation


# instance fields
.field private final mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

.field private final mButtons:[Landroid/view/View;

.field private final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field private mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

.field private mDeleteButton:Landroid/view/View;

.field private mDeleteButtonRipple:Landroid/graphics/drawable/RippleDrawable;

.field private mIsImagePinLock:Z

.field private mIsNightModeOn:Z

.field protected mOkButton:Landroid/view/View;

.field private mOkButtonRipple:Landroid/graphics/drawable/RippleDrawable;

.field private final mOnKeyListener:Landroid/view/View$OnKeyListener;

.field private mWindowRect:Landroid/graphics/Rect;


# direct methods
.method public static synthetic $r8$lambda$5dk_W4acUEVmD6EHdfHWz8rS9tc(Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->lambda$onViewAttached$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$X_O_19qKzYzswNtrBfHwZENYFWg(Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->lambda$new$0(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$tH1gR39V53hNEM7TA2rSxHOI_ic(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->lambda$onViewAttached$1(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$uozOKWJdkBhKKoUT2Nr8ZGKPyeA(Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->lambda$initializeBottomContainerView$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xYyx6q-xZIceHvTODV1VFfVjDws(Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->lambda$initializeBottomContainerView$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zvqyx66jyhRrg2YW8lvdP8fj4kA(Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->lambda$initializeBottomContainerView$5(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method protected constructor <init>(Lcom/android/keyguard/KeyguardSecPinBasedInputView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/keyguard/LiftToActivateListener;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/vibrate/VibrationUtil;Lcom/android/keyguard/KeyguardRotationController;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V
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
            "Lcom/android/keyguard/LiftToActivateListener;",
            "Lcom/android/keyguard/EmergencyButtonController;",
            "Lcom/android/systemui/classifier/FalsingCollector;",
            "Lcom/android/systemui/vibrate/VibrationUtil;",
            "Lcom/android/keyguard/KeyguardRotationController;",
            "Landroid/view/accessibility/AccessibilityManager;",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            ")V"
        }
    .end annotation

    .line 134
    invoke-direct/range {p0 .. p13}, Lcom/android/keyguard/KeyguardPinBasedInputViewController;-><init>(Lcom/android/keyguard/KeyguardPinBasedInputView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/keyguard/LiftToActivateListener;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/vibrate/VibrationUtil;Lcom/android/keyguard/KeyguardRotationController;Landroid/view/accessibility/AccessibilityManager;)V

    .line 53
    new-instance p1, Landroid/graphics/Rect;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2, p2, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mWindowRect:Landroid/graphics/Rect;

    const/16 p1, 0xa

    new-array p1, p1, [Landroid/view/View;

    .line 61
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mButtons:[Landroid/view/View;

    .line 62
    new-instance p3, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$1;

    invoke-direct {p3, p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$1;-><init>(Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;)V

    iput-object p3, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    .line 70
    iput-boolean p2, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mIsNightModeOn:Z

    .line 73
    new-instance p3, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$$ExternalSyntheticLambda2;

    invoke-direct {p3, p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$$ExternalSyntheticLambda2;-><init>(Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;)V

    iput-object p3, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    .line 94
    new-instance p3, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$2;

    invoke-direct {p3, p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$2;-><init>(Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;)V

    iput-object p3, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    .line 138
    iput-object p14, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 140
    iget-object p3, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p3, Lcom/android/keyguard/KeyguardSecPinBasedInputView;

    sget p4, Lcom/android/systemui/R$id;->key0:I

    invoke-virtual {p3, p4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    aput-object p3, p1, p2

    .line 141
    iget-object p2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p2, Lcom/android/keyguard/KeyguardSecPinBasedInputView;

    sget p3, Lcom/android/systemui/R$id;->key1:I

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/4 p3, 0x1

    aput-object p2, p1, p3

    .line 142
    iget-object p2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p2, Lcom/android/keyguard/KeyguardSecPinBasedInputView;

    sget p3, Lcom/android/systemui/R$id;->key2:I

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/4 p3, 0x2

    aput-object p2, p1, p3

    .line 143
    iget-object p2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p2, Lcom/android/keyguard/KeyguardSecPinBasedInputView;

    sget p3, Lcom/android/systemui/R$id;->key3:I

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/4 p3, 0x3

    aput-object p2, p1, p3

    .line 144
    iget-object p2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p2, Lcom/android/keyguard/KeyguardSecPinBasedInputView;

    sget p3, Lcom/android/systemui/R$id;->key4:I

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/4 p3, 0x4

    aput-object p2, p1, p3

    .line 145
    iget-object p2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p2, Lcom/android/keyguard/KeyguardSecPinBasedInputView;

    sget p3, Lcom/android/systemui/R$id;->key5:I

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/4 p3, 0x5

    aput-object p2, p1, p3

    .line 146
    iget-object p2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p2, Lcom/android/keyguard/KeyguardSecPinBasedInputView;

    sget p3, Lcom/android/systemui/R$id;->key6:I

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/4 p3, 0x6

    aput-object p2, p1, p3

    .line 147
    iget-object p2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p2, Lcom/android/keyguard/KeyguardSecPinBasedInputView;

    sget p3, Lcom/android/systemui/R$id;->key7:I

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/4 p3, 0x7

    aput-object p2, p1, p3

    .line 148
    iget-object p2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p2, Lcom/android/keyguard/KeyguardSecPinBasedInputView;

    sget p3, Lcom/android/systemui/R$id;->key8:I

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/16 p3, 0x8

    aput-object p2, p1, p3

    .line 149
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;

    sget p2, Lcom/android/systemui/R$id;->key9:I

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/16 p2, 0x9

    aput-object p0, p1, p2

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;)Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mIsNightModeOn:Z

    return p0
.end method

.method static synthetic access$002(Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;Z)Z
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mIsNightModeOn:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;)Landroid/graphics/Rect;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mWindowRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mWindowRect:Landroid/graphics/Rect;

    return-object p1
.end method

.method private isFolderClosed()Z
    .locals 0

    .line 446
    sget-boolean p0, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    if-eqz p0, :cond_0

    const-class p0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/DisplayLifecycle;->isFolderOpened()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$initializeBottomContainerView$3(Landroid/view/View;)V
    .locals 1

    .line 272
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {p1}, Landroid/widget/EditText;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 273
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mOkButton:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    const v0, 0x3ecccccd    # 0.4f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    .line 274
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->verifyPasswordAndUnlock()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$initializeBottomContainerView$4(Landroid/view/View;)V
    .locals 1

    .line 297
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {p1}, Landroid/widget/EditText;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 298
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {p1}, Lcom/android/keyguard/PasswordTextView;->deleteLastChar()V

    .line 299
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    instance-of v0, p1, Lcom/android/keyguard/SecPasswordTextView;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/keyguard/SecPasswordTextView;

    .line 300
    invoke-virtual {p1}, Lcom/android/keyguard/SecPasswordTextView;->getPasswordText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 301
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->setOkButtonEnabled(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$initializeBottomContainerView$5(Landroid/view/View;)Z
    .locals 1

    .line 307
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {p1}, Landroid/widget/EditText;->isEnabled()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 308
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/keyguard/KeyguardSecPinBasedInputView;

    invoke-virtual {p1, v0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->resetPasswordText(ZZ)V

    const/4 p1, 0x0

    .line 309
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->setOkButtonEnabled(Z)V

    .line 311
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->doHapticKeyClick()V

    return v0
.end method

.method private synthetic lambda$new$0(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 74
    sget-boolean p1, Lcom/android/systemui/LsRune;->SECURITY_DUAL_LCD_FOLDER:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    const/16 p1, 0x13

    if-eq p2, p1, :cond_0

    const/16 p1, 0x14

    if-eq p2, p1, :cond_0

    const/16 p1, 0x16

    if-eq p2, p1, :cond_0

    const/16 p1, 0x15

    if-ne p2, p1, :cond_1

    :cond_0
    return v0

    :cond_1
    const/16 p1, 0x42

    if-ne p2, p1, :cond_2

    .line 80
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mOkButton:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float p1, p1, v1

    if-gez p1, :cond_2

    return v0

    .line 84
    :cond_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_3

    .line 85
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;

    invoke-virtual {p0, p2, p3}, Lcom/android/keyguard/KeyguardPinBasedInputView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    .line 86
    :cond_3
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-ne p1, v0, :cond_4

    .line 87
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;

    invoke-virtual {p0, p2, p3}, Landroid/widget/LinearLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic lambda$onViewAttached$1(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$onViewAttached$2()V
    .locals 1

    .line 163
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->onUserInput()V

    const/4 v0, 0x1

    .line 164
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->setOkButtonEnabled(Z)V

    return-void
.end method

.method private updateNumPadKeySideMargin(Landroid/view/View;)V
    .locals 4

    if-eqz p1, :cond_5

    .line 425
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 426
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 427
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->isDualDisplayPolicyAllowed()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 428
    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 430
    :goto_1
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 431
    sget p0, Lcom/android/systemui/R$dimen;->tablet_num_pad_key_side_margin_ratio:I

    goto :goto_2

    .line 432
    :cond_2
    iget-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->isDualDisplayPolicyAllowed()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 433
    sget p0, Lcom/android/systemui/R$dimen;->fold_num_pad_key_side_margin_ratio:I

    goto :goto_2

    .line 435
    :cond_3
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->isFolderClosed()Z

    move-result p0

    if-eqz p0, :cond_4

    sget p0, Lcom/android/systemui/R$dimen;->fold_sub_num_pad_key_side_margin_ratio:I

    goto :goto_2

    .line 436
    :cond_4
    sget p0, Lcom/android/systemui/R$dimen;->num_pad_key_side_margin_ratio:I

    :goto_2
    int-to-float v2, v2

    .line 438
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p0

    mul-float/2addr v2, p0

    float-to-int p0, v2

    .line 439
    iput p0, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 440
    iput p0, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 441
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    return-void
.end method

.method private updateNumPadKeySize(Landroid/view/View;)V
    .locals 5

    if-eqz p1, :cond_5

    .line 400
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 401
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 402
    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->isDualDisplayPolicyAllowed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 403
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 404
    :goto_0
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 406
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 407
    sget v4, Lcom/android/systemui/R$dimen;->tablet_num_pad_key_size_ratio:I

    goto :goto_1

    .line 408
    :cond_1
    iget-object v4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v4}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->isDualDisplayPolicyAllowed()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 409
    sget v4, Lcom/android/systemui/R$dimen;->fold_num_pad_key_size_ratio:I

    goto :goto_1

    .line 411
    :cond_2
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->isFolderClosed()Z

    move-result v4

    if-eqz v4, :cond_3

    sget v4, Lcom/android/systemui/R$dimen;->fold_sub_num_pad_key_size_ratio:I

    goto :goto_1

    .line 412
    :cond_3
    sget v4, Lcom/android/systemui/R$dimen;->num_pad_key_size_ratio:I

    .line 414
    :goto_1
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    .line 415
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->isDualDisplayPolicyAllowed()Z

    move-result p0

    if-eqz p0, :cond_4

    int-to-float p0, v3

    goto :goto_2

    :cond_4
    int-to-float p0, v2

    :goto_2
    mul-float/2addr p0, v0

    float-to-int p0, p0

    .line 417
    iput p0, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 418
    iput p0, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 419
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    return-void
.end method

.method private updateNumPadKeyTextView()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_1

    .line 355
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mButtons:[Landroid/view/View;

    aget-object v2, v2, v1

    invoke-direct {p0, v2}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->updateNumPadKeySize(Landroid/view/View;)V

    .line 356
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mButtons:[Landroid/view/View;

    aget-object v3, v2, v1

    instance-of v3, v3, Lcom/android/keyguard/SecNumPadKeyTablet;

    if-eqz v3, :cond_0

    .line 357
    aget-object v2, v2, v1

    check-cast v2, Lcom/android/keyguard/SecNumPadKeyTablet;

    invoke-virtual {v2}, Lcom/android/keyguard/SecNumPadKeyTablet;->updateDigitTextSize()V

    .line 358
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mButtons:[Landroid/view/View;

    aget-object v2, v2, v1

    check-cast v2, Lcom/android/keyguard/SecNumPadKeyTablet;

    invoke-virtual {v2}, Lcom/android/keyguard/SecNumPadKeyTablet;->updateKlondikeTextSize()V

    goto :goto_1

    .line 360
    :cond_0
    aget-object v2, v2, v1

    check-cast v2, Lcom/android/keyguard/SecNumPadKey;

    invoke-virtual {v2}, Lcom/android/keyguard/SecNumPadKey;->updateDigitTextSize()V

    .line 361
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mButtons:[Landroid/view/View;

    aget-object v2, v2, v1

    check-cast v2, Lcom/android/keyguard/SecNumPadKey;

    invoke-virtual {v2}, Lcom/android/keyguard/SecNumPadKey;->updateKlondikeTextSize()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 364
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mOkButton:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->updateNumPadKeySize(Landroid/view/View;)V

    .line 365
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mDeleteButton:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->updateNumPadKeySize(Landroid/view/View;)V

    .line 367
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mButtons:[Landroid/view/View;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->updateNumPadKeySideMargin(Landroid/view/View;)V

    .line 368
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mButtons:[Landroid/view/View;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->updateNumPadKeySideMargin(Landroid/view/View;)V

    .line 369
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mButtons:[Landroid/view/View;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->updateNumPadKeySideMargin(Landroid/view/View;)V

    .line 370
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mButtons:[Landroid/view/View;

    aget-object v1, v1, v0

    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->updateNumPadKeySideMargin(Landroid/view/View;)V

    .line 372
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mIsImagePinLock:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mOkButton:Landroid/view/View;

    instance-of v2, v1, Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v2, :cond_2

    .line 373
    check-cast v1, Lcom/android/systemui/widget/SystemUITextView;

    .line 374
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v2, Lcom/android/systemui/R$dimen;->kg_pin_ok_button_font_size:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    .line 373
    invoke-virtual {v1, v0, p0}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_2
    return-void
.end method

.method private updateRowBottomMargin(Landroid/view/View;)V
    .locals 4

    if-eqz p1, :cond_4

    .line 380
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 381
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 382
    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->isDualDisplayPolicyAllowed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 383
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 385
    :goto_0
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 386
    sget p0, Lcom/android/systemui/R$dimen;->tablet_num_pad_key_bottom_margin_ratio:I

    goto :goto_1

    .line 387
    :cond_1
    iget-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->isDualDisplayPolicyAllowed()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 388
    sget p0, Lcom/android/systemui/R$dimen;->fold_num_pad_key_bottom_margin_ratio:I

    goto :goto_1

    .line 390
    :cond_2
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->isFolderClosed()Z

    move-result p0

    if-eqz p0, :cond_3

    sget p0, Lcom/android/systemui/R$dimen;->fold_sub_num_pad_key_bottom_margin_ratio:I

    goto :goto_1

    .line 391
    :cond_3
    sget p0, Lcom/android/systemui/R$dimen;->num_pad_key_bottom_margin_ratio:I

    :goto_1
    int-to-float v2, v2

    .line 393
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p0

    mul-float/2addr v2, p0

    float-to-int p0, v2

    iput p0, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 394
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 247
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 248
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->onUserInput()V

    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 237
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    return-void
.end method

.method protected getPasswordText()[B
    .locals 1

    .line 188
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    instance-of v0, p0, Lcom/android/keyguard/SecPasswordTextView;

    if-eqz v0, :cond_0

    .line 189
    check-cast p0, Lcom/android/keyguard/SecPasswordTextView;

    invoke-virtual {p0}, Lcom/android/keyguard/SecPasswordTextView;->getPasswordText()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->charSequenceToByteArray(Ljava/lang/CharSequence;)[B

    move-result-object p0

    return-object p0

    .line 191
    :cond_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-static {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->charSequenceToByteArray(Ljava/lang/CharSequence;)[B

    move-result-object p0

    return-object p0
.end method

.method protected initializeBottomContainerView(J)V
    .locals 4

    .line 255
    const-class p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isOpenThemeLook()Z

    move-result p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 256
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/android/systemui/R$bool;->theme_use_image_pinlock:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mIsImagePinLock:Z

    .line 258
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mOkButton:Landroid/view/View;

    if-eqz p1, :cond_1

    const/16 v1, 0x8

    .line 259
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 262
    :cond_1
    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mIsImagePinLock:Z

    if-eqz p1, :cond_2

    .line 263
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/keyguard/KeyguardSecPinBasedInputView;

    sget v1, Lcom/android/systemui/R$id;->key_enter:I

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mOkButton:Landroid/view/View;

    goto :goto_1

    .line 265
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/keyguard/KeyguardSecPinBasedInputView;

    sget v1, Lcom/android/systemui/R$id;->key_enter_text:I

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mOkButton:Landroid/view/View;

    .line 268
    :goto_1
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mOkButton:Landroid/view/View;

    const/4 v1, 0x0

    const/16 v2, 0x1e

    if-eqz p1, :cond_4

    .line 269
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 270
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mOkButton:Landroid/view/View;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mActionButtonTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {p1, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 271
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mOkButton:Landroid/view/View;

    new-instance v3, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v2, :cond_3

    .line 281
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mOkButton:Landroid/view/View;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {p1, v3}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 283
    :cond_3
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mOkButton:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 286
    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mIsImagePinLock:Z

    if-eqz p1, :cond_4

    .line 287
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mOkButton:Landroid/view/View;

    check-cast p1, Landroid/widget/ImageButton;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v3}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 291
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/keyguard/KeyguardSecPinBasedInputView;

    sget v3, Lcom/android/systemui/R$id;->delete_button:I

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mDeleteButton:Landroid/view/View;

    if-eqz p1, :cond_7

    .line 293
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 294
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mDeleteButton:Landroid/view/View;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mActionButtonTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {p1, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 295
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mDeleteButton:Landroid/view/View;

    new-instance v3, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 305
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mDeleteButton:Landroid/view/View;

    new-instance v3, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$$ExternalSyntheticLambda3;-><init>(Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 316
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v2, :cond_5

    .line 317
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mDeleteButton:Landroid/view/View;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {p1, v2}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 319
    :cond_5
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mDeleteButton:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 322
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mDeleteButton:Landroid/view/View;

    check-cast p1, Landroid/widget/ImageButton;

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mIsImagePinLock:Z

    if-eqz v1, :cond_6

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    goto :goto_2

    .line 323
    :cond_6
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    .line 322
    :goto_2
    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_7
    const-string p1, "background"

    .line 327
    invoke-static {p1}, Lcom/android/systemui/widget/SystemUIWidgetUtil;->convertFlag(Ljava/lang/String;)J

    move-result-wide v1

    .line 326
    invoke-static {v1, v2, p2}, Lcom/android/systemui/widget/SystemUIWidgetUtil;->needsBlackComponent(JZ)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 328
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$drawable;->ripple_drawable_pin_whitebg:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/RippleDrawable;

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mOkButtonRipple:Landroid/graphics/drawable/RippleDrawable;

    .line 329
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/RippleDrawable;

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mDeleteButtonRipple:Landroid/graphics/drawable/RippleDrawable;

    goto :goto_3

    .line 331
    :cond_8
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$drawable;->origin_ripple_drawable:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/RippleDrawable;

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mOkButtonRipple:Landroid/graphics/drawable/RippleDrawable;

    .line 332
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/RippleDrawable;

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mDeleteButtonRipple:Landroid/graphics/drawable/RippleDrawable;

    .line 334
    :goto_3
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mOkButton:Landroid/view/View;

    if-eqz p1, :cond_9

    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mOkButtonRipple:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 335
    :cond_9
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mDeleteButton:Landroid/view/View;

    if-eqz p1, :cond_a

    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mDeleteButtonRipple:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_a
    :goto_4
    const/16 p1, 0xa

    if-ge v0, p1, :cond_b

    .line 337
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mButtons:[Landroid/view/View;

    aget-object p2, p1, v0

    instance-of p2, p2, Lcom/android/keyguard/SecNumPadKey;

    if-eqz p2, :cond_b

    .line 338
    aget-object p1, p1, v0

    check-cast p1, Lcom/android/keyguard/SecNumPadKey;

    invoke-virtual {p1}, Lcom/android/keyguard/SecNumPadKey;->updateViewStyle()V

    .line 339
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->updateNumPadKeyTextView()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 342
    :cond_b
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/keyguard/KeyguardSecPinBasedInputView;

    sget p2, Lcom/android/systemui/R$id;->row1:I

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 343
    iget-object p2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p2, Lcom/android/keyguard/KeyguardSecPinBasedInputView;

    sget v0, Lcom/android/systemui/R$id;->row2:I

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    .line 344
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;

    sget v1, Lcom/android/systemui/R$id;->row3:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz p1, :cond_c

    .line 347
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->updateRowBottomMargin(Landroid/view/View;)V

    .line 348
    invoke-direct {p0, p2}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->updateRowBottomMargin(Landroid/view/View;)V

    .line 349
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->updateRowBottomMargin(Landroid/view/View;)V

    :cond_c
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    if-eqz p2, :cond_1

    const/4 p1, 0x6

    if-eq p2, p1, :cond_1

    const/4 p1, 0x5

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 229
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->verifyPasswordAndUnlock()V

    const/4 p0, 0x1

    return p0
.end method

.method public onResume(I)V
    .locals 0

    .line 196
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->onResume(I)V

    .line 197
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {p0}, Landroid/widget/EditText;->requestFocus()Z

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method protected onViewAttached()V
    .locals 2

    .line 154
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->onViewAttached()V

    .line 156
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 158
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mWindowRect:Landroid/graphics/Rect;

    .line 160
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    sget-object v1, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$$ExternalSyntheticLambda4;->INSTANCE:Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$$ExternalSyntheticLambda4;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 161
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 162
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    new-instance v1, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$$ExternalSyntheticLambda5;-><init>(Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;)V

    invoke-virtual {v0, v1}, Lcom/android/keyguard/PasswordTextView;->setUserActivityListener(Lcom/android/keyguard/PasswordTextView$UserActivityListener;)V

    .line 168
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setLongClickable(Z)V

    .line 169
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelected(Z)V

    goto :goto_0

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    :goto_0
    const-wide/16 v0, 0x0

    .line 176
    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->initializeBottomContainerView(J)V

    return-void
.end method

.method protected onViewDetached()V
    .locals 1

    .line 181
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->onViewDetached()V

    .line 183
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    return-void
.end method

.method resetState()V
    .locals 2

    .line 202
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->resetState()V

    .line 203
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->setPasswordEntryEnabled(Z)V

    .line 204
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    instance-of v1, v0, Lcom/android/keyguard/SecPasswordTextView;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/keyguard/SecPasswordTextView;

    .line 205
    invoke-virtual {v0}, Lcom/android/keyguard/SecPasswordTextView;->getPasswordText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 206
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->setOkButtonEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setEnabledKeypad(Z)V
    .locals 5

    .line 450
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mDeleteButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 451
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mDeleteButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 452
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mDeleteButton:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3ecccccd    # 0.4f

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    const/4 v0, 0x0

    :goto_1
    const/16 v3, 0xa

    if-ge v0, v3, :cond_2

    .line 454
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mButtons:[Landroid/view/View;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 455
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mButtons:[Landroid/view/View;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1}, Landroid/view/View;->setClickable(Z)V

    .line 456
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mButtons:[Landroid/view/View;

    aget-object v3, v3, v0

    if-eqz p1, :cond_1

    move v4, v1

    goto :goto_2

    :cond_1
    move v4, v2

    :goto_2
    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method protected setOkButtonEnabled(Z)V
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mOkButton:Landroid/view/View;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 213
    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 214
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mOkButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 215
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mOkButton:Landroid/view/View;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 217
    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 218
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mOkButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 219
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mOkButton:Landroid/view/View;

    const p1, 0x3ecccccd    # 0.4f

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateStyle(JLandroid/app/SemWallpaperColors;)V
    .locals 0

    .line 463
    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->initializeBottomContainerView(J)V

    return-void
.end method

.method protected verifyPasswordAndUnlock()V
    .locals 1

    .line 468
    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->verifyPasswordAndUnlock()V

    const/4 v0, 0x0

    .line 469
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->setOkButtonEnabled(Z)V

    return-void
.end method
