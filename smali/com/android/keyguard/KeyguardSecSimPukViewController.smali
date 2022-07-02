.class public Lcom/android/keyguard/KeyguardSecSimPukViewController;
.super Lcom/android/keyguard/KeyguardSimPukViewController;
.source "KeyguardSecSimPukViewController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardSecSimPukViewController$SecStateMachine;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/keyguard/KeyguardSimPukViewController<",
        "Lcom/android/keyguard/KeyguardSecSimPukView;",
        ">;"
    }
.end annotation


# instance fields
.field private mCarrierDialog:Landroid/app/AlertDialog;

.field private final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field private final mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

.field private final mESimSkipArea:Lcom/android/keyguard/KeyguardSecESimArea;

.field private final mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mOrientation:I

.field private final mProgressBar:Landroid/widget/ProgressBar;

.field private final mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method protected constructor <init>(Lcom/android/keyguard/KeyguardSecSimPukView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/keyguard/LiftToActivateListener;Landroid/telephony/TelephonyManager;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/vibrate/VibrationUtil;Lcom/android/keyguard/KeyguardRotationController;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;Landroid/view/inputmethod/InputMethodManager;)V
    .locals 4

    move-object v0, p0

    .line 164
    invoke-direct/range {p0 .. p15}, Lcom/android/keyguard/KeyguardSimPukViewController;-><init>(Lcom/android/keyguard/KeyguardSimPukView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/keyguard/LiftToActivateListener;Landroid/telephony/TelephonyManager;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/vibrate/VibrationUtil;Lcom/android/keyguard/KeyguardRotationController;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V

    const/4 v1, 0x1

    .line 53
    iput v1, v0, Lcom/android/keyguard/KeyguardSecSimPukViewController;->mOrientation:I

    .line 59
    new-instance v2, Lcom/android/keyguard/KeyguardSecSimPukViewController$1;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardSecSimPukViewController$1;-><init>(Lcom/android/keyguard/KeyguardSecSimPukViewController;)V

    iput-object v2, v0, Lcom/android/keyguard/KeyguardSecSimPukViewController;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    .line 71
    new-instance v2, Lcom/android/keyguard/KeyguardSecSimPukViewController$2;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardSecSimPukViewController$2;-><init>(Lcom/android/keyguard/KeyguardSecSimPukViewController;)V

    iput-object v2, v0, Lcom/android/keyguard/KeyguardSecSimPukViewController;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    move-object/from16 v2, p15

    .line 168
    iput-object v2, v0, Lcom/android/keyguard/KeyguardSecSimPukViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    move-object/from16 v2, p16

    .line 169
    iput-object v2, v0, Lcom/android/keyguard/KeyguardSecSimPukViewController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 171
    new-instance v2, Lcom/android/keyguard/KeyguardSecSimPukViewController$SecStateMachine;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/keyguard/KeyguardSecSimPukViewController$SecStateMachine;-><init>(Lcom/android/keyguard/KeyguardSecSimPukViewController;Lcom/android/keyguard/KeyguardSecSimPukViewController$1;)V

    iput-object v2, v0, Lcom/android/keyguard/KeyguardSimPukViewController;->mStateMachine:Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;

    .line 173
    iget-object v2, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v2, Lcom/android/keyguard/KeyguardSecSimPukView;

    sget v3, Lcom/android/systemui/R$id;->keyguard_sec_esim_area:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/KeyguardSecESimArea;

    iput-object v2, v0, Lcom/android/keyguard/KeyguardSecSimPukViewController;->mESimSkipArea:Lcom/android/keyguard/KeyguardSecESimArea;

    if-eqz v2, :cond_0

    .line 175
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardSecESimArea;->setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V

    .line 177
    :cond_0
    iget-object v2, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v2, Lcom/android/keyguard/KeyguardSecSimPukView;

    sget v3, Lcom/android/systemui/R$id;->progress:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, v0, Lcom/android/keyguard/KeyguardSecSimPukViewController;->mProgressBar:Landroid/widget/ProgressBar;

    .line 178
    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 179
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecSimPukViewController;->updateProgressBarDrawable()V

    .line 181
    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardSecSimPukView;

    sget v2, Lcom/android/systemui/R$id;->keyguard_sim_icon:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/android/keyguard/KeyguardSimPukViewController;->mSimImageView:Landroid/widget/ImageView;

    .line 182
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecSimPukViewController;->updateESimLayout()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardSecSimPukViewController;)I
    .locals 0

    .line 44
    iget p0, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController;->mOrientation:I

    return p0
.end method

.method static synthetic access$002(Lcom/android/keyguard/KeyguardSecSimPukViewController;I)I
    .locals 0

    .line 44
    iput p1, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController;->mOrientation:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardSecSimPukViewController;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecSimPukViewController;->updateESimLayout()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/keyguard/KeyguardSecSimPukViewController;)Landroid/content/Context;
    .locals 0

    .line 44
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/keyguard/KeyguardSecSimPukViewController;Ljava/lang/String;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecSimPukViewController;->showCarrierDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/keyguard/KeyguardSecSimPukViewController;)Landroid/view/inputmethod/InputMethodManager;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/keyguard/KeyguardSecSimPukViewController;)Landroid/view/View;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/keyguard/KeyguardSecSimPukViewController;)Landroid/content/Context;
    .locals 0

    .line 44
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardSecSimPukViewController;)Landroid/widget/ProgressBar;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController;->mProgressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/keyguard/KeyguardSecSimPukViewController;)Lcom/android/keyguard/KeyguardSecESimArea;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController;->mESimSkipArea:Lcom/android/keyguard/KeyguardSecESimArea;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/keyguard/KeyguardSecSimPukViewController;)Landroid/view/View;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/keyguard/KeyguardSecSimPukViewController;)Landroid/content/Context;
    .locals 0

    .line 44
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/keyguard/KeyguardSecSimPukViewController;)Landroid/view/View;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/keyguard/KeyguardSecSimPukViewController;)Landroid/view/View;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/keyguard/KeyguardSecSimPukViewController;)Landroid/content/Context;
    .locals 0

    .line 44
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method private getSimPukRetry(I)I
    .locals 3

    const-string p0, "KeyguardSecSimPukViewController"

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "isemtelephony"

    .line 467
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISemTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISemTelephony;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 469
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ISemTelephony;->getSimPukRetryForSubscriber(I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 472
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    :cond_0
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSimPukLockInfoResult(): num_of_retry is "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private showCarrierDialog(Ljava/lang/String;)V
    .locals 3

    .line 450
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController;->mCarrierDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    .line 451
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10302d2

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 452
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 p1, 0x0

    .line 453
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 454
    sget p1, Lcom/android/systemui/R$string;->ok:I

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 455
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController;->mCarrierDialog:Landroid/app/AlertDialog;

    .line 456
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Landroid/view/Window;

    const/16 v0, 0x7d9

    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    goto :goto_0

    .line 459
    :cond_0
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 461
    :goto_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController;->mCarrierDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private updateESimLayout()V
    .locals 4

    .line 524
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController;->mESimSkipArea:Lcom/android/keyguard/KeyguardSecESimArea;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    return-void

    .line 527
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    if-eqz v0, :cond_2

    .line 528
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 529
    iget v1, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController;->mOrientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 530
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController;->mESimSkipArea:Lcom/android/keyguard/KeyguardSecESimArea;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    .line 531
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$dimen;->keyguard_hint_text_padding_top:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_0

    .line 533
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController;->mESimSkipArea:Lcom/android/keyguard/KeyguardSecESimArea;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 535
    :goto_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method

.method private updateProgressBarDrawable()V
    .locals 2

    const-string v0, "background"

    .line 517
    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    move-result v0

    .line 518
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eqz v0, :cond_0

    .line 519
    sget v0, Lcom/android/systemui/R$drawable;->keyguard_progress_material_whitebg:I

    goto :goto_0

    .line 520
    :cond_0
    sget v0, Lcom/android/systemui/R$drawable;->keyguard_progress_material:I

    .line 518
    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private updateSimIconImage()V
    .locals 6

    .line 479
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_4

    iget v0, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mSubId:I

    .line 480
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 482
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget v2, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mSubId:I

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSubscriptionInfoForSubId(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 484
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v2

    .line 486
    :goto_0
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mSimImageView:Landroid/widget/ImageView;

    instance-of v4, v3, Lcom/android/systemui/widget/SystemUIImageView;

    if-eqz v4, :cond_4

    .line 487
    check-cast v3, Lcom/android/systemui/widget/SystemUIImageView;

    .line 488
    sget-boolean v4, Lcom/android/systemui/LsRune;->SECURITY_ESIM:Z

    const/16 v5, 0x8

    if-eqz v4, :cond_2

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->isESIM(I)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 489
    invoke-interface {v4}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->isESimEmbedded()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v0, "KeyguardSecSimPukViewController"

    const-string/jumbo v1, "this is e-SIM"

    .line 490
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController;->mESimSkipArea:Lcom/android/keyguard/KeyguardSecESimArea;

    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result v0

    if-eqz v0, :cond_1

    move v2, v5

    :cond_1
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const-string p0, "lock_ic_pin_attempt_sim"

    .line 492
    invoke-virtual {v3, p0}, Lcom/android/systemui/widget/SystemUIImageView;->setOriginImage(Ljava/lang/String;)V

    const-string p0, "lock_ic_pin_attempt_sim_whitebg"

    .line 493
    invoke-virtual {v3, p0}, Lcom/android/systemui/widget/SystemUIImageView;->setWhiteBgImage(Ljava/lang/String;)V

    .line 494
    invoke-virtual {v3}, Lcom/android/systemui/widget/SystemUIImageView;->invalidateImage()V

    goto :goto_1

    .line 496
    :cond_2
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController;->mESimSkipArea:Lcom/android/keyguard/KeyguardSecESimArea;

    invoke-virtual {p0, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    if-nez v0, :cond_3

    const-string p0, "lock_ic_pin_attempt_sim_01"

    .line 498
    invoke-virtual {v3, p0}, Lcom/android/systemui/widget/SystemUIImageView;->setOriginImage(Ljava/lang/String;)V

    const-string p0, "lock_ic_pin_attempt_sim_01_whitebg"

    .line 499
    invoke-virtual {v3, p0}, Lcom/android/systemui/widget/SystemUIImageView;->setWhiteBgImage(Ljava/lang/String;)V

    .line 500
    invoke-virtual {v3}, Lcom/android/systemui/widget/SystemUIImageView;->invalidateImage()V

    goto :goto_1

    :cond_3
    if-ne v0, v1, :cond_4

    const-string p0, "lock_ic_pin_attempt_sim_02"

    .line 502
    invoke-virtual {v3, p0}, Lcom/android/systemui/widget/SystemUIImageView;->setOriginImage(Ljava/lang/String;)V

    const-string p0, "lock_ic_pin_attempt_sim_02_whitebg"

    .line 503
    invoke-virtual {v3, p0}, Lcom/android/systemui/widget/SystemUIImageView;->setWhiteBgImage(Ljava/lang/String;)V

    .line 504
    invoke-virtual {v3}, Lcom/android/systemui/widget/SystemUIImageView;->invalidateImage()V

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method protected checkPin()Z
    .locals 3

    .line 376
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    instance-of v1, v0, Lcom/android/keyguard/SecPasswordTextView;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 379
    :cond_0
    check-cast v0, Lcom/android/keyguard/SecPasswordTextView;

    invoke-virtual {v0}, Lcom/android/keyguard/SecPasswordTextView;->getPasswordText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    const/16 v1, 0x8

    if-gt v0, v1, :cond_1

    .line 381
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    check-cast v0, Lcom/android/keyguard/SecPasswordTextView;

    invoke-virtual {v0}, Lcom/android/keyguard/SecPasswordTextView;->getPasswordText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mPinText:Ljava/lang/String;

    const/4 p0, 0x1

    return p0

    :cond_1
    return v2
.end method

.method protected checkPuk()Z
    .locals 2

    .line 367
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    instance-of v1, v0, Lcom/android/keyguard/SecPasswordTextView;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/keyguard/SecPasswordTextView;

    invoke-virtual {v0}, Lcom/android/keyguard/SecPasswordTextView;->getPasswordText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 368
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    check-cast v0, Lcom/android/keyguard/SecPasswordTextView;

    invoke-virtual {v0}, Lcom/android/keyguard/SecPasswordTextView;->getPasswordText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mPukText:Ljava/lang/String;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public confirmPin()Z
    .locals 2

    .line 389
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    instance-of v1, v0, Lcom/android/keyguard/SecPasswordTextView;

    if-eqz v1, :cond_0

    .line 390
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mPinText:Ljava/lang/String;

    check-cast v0, Lcom/android/keyguard/SecPasswordTextView;

    invoke-virtual {v0}, Lcom/android/keyguard/SecPasswordTextView;->getPasswordText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 392
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mPinText:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method protected getSecurityViewId()I
    .locals 0

    .line 513
    sget p0, Lcom/android/systemui/R$id;->keyguard_sim_puk_view:I

    return p0
.end method

.method protected onViewAttached()V
    .locals 2

    .line 187
    invoke-super {p0}, Lcom/android/keyguard/KeyguardSimPukViewController;->onViewAttached()V

    .line 188
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 189
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method protected onViewDetached()V
    .locals 2

    .line 194
    invoke-super {p0}, Lcom/android/keyguard/KeyguardSimPukViewController;->onViewDetached()V

    .line 195
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 196
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    return-void
.end method

.method resetState()V
    .locals 1

    .line 201
    invoke-super {p0}, Lcom/android/keyguard/KeyguardSimPukViewController;->resetState()V

    .line 202
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecSimPukViewController;->showDefaultMessage()V

    .line 203
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mSimImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 204
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecSimPukViewController;->updateSimIconImage()V

    .line 207
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecSimPukViewController;->updateESimLayout()V

    return-void
.end method

.method protected showDefaultMessage()V
    .locals 7

    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "showDefaultMessage subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardSecSimPukViewController"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iget v0, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mSubId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 313
    iget v0, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mSubId:I

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecSimPukViewController;->getSimPukRetry(I)I

    move-result v0

    .line 314
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_5

    const-string v2, " "

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    const/16 v4, 0xa

    if-eq v0, v4, :cond_5

    .line 340
    sget-boolean v4, Lcom/android/systemui/LsRune;->SECURITY_KOR_USIM_TEXT:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 341
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget v6, Lcom/android/systemui/R$string;->kg_kor_sim_puk_instructions:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/systemui/R$string;->kg_sim_pin_remaining_attempts:I

    new-array v3, v3, [Ljava/lang/Object;

    .line 342
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 343
    :cond_0
    sget-boolean v2, Lcom/android/systemui/LsRune;->SECURITY_USE_CDMA_CARD_TEXT:Z

    if-eqz v2, :cond_1

    .line 344
    sget v2, Lcom/android/systemui/R$string;->kg_ctc_sim_puk_remaining_attempts:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 346
    :cond_1
    sget v2, Lcom/android/systemui/R$string;->kg_sim_puk_remaining_attempts:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 330
    :cond_2
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_KOR_USIM_TEXT:Z

    if-eqz v0, :cond_3

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/android/systemui/R$string;->kg_kor_sim_puk_instructions:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/systemui/R$string;->kg_sim_pin_remaining_1_attempt:I

    .line 332
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 333
    :cond_3
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_USE_CDMA_CARD_TEXT:Z

    if-eqz v0, :cond_4

    .line 334
    sget v0, Lcom/android/systemui/R$string;->kg_ctc_sim_puk_remaining_1_attempt:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 336
    :cond_4
    sget v0, Lcom/android/systemui/R$string;->kg_sim_puk_remaining_1_attempt:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 319
    :cond_5
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_DCM_USIM_TEXT:Z

    if-eqz v0, :cond_6

    .line 320
    sget v0, Lcom/android/systemui/R$string;->kg_dcm_sim_puk_instructions:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 321
    :cond_6
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_KOR_USIM_TEXT:Z

    if-eqz v0, :cond_7

    .line 322
    sget v0, Lcom/android/systemui/R$string;->kg_kor_sim_puk_instructions:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 323
    :cond_7
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_USE_CDMA_CARD_TEXT:Z

    if-eqz v0, :cond_8

    .line 324
    sget v0, Lcom/android/systemui/R$string;->kg_ctc_sim_puk_instructions:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 326
    :cond_8
    sget v0, Lcom/android/systemui/R$string;->kg_sim_puk_instructions:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 349
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    if-eqz v1, :cond_b

    .line 350
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    if-eqz v1, :cond_9

    check-cast v1, Lcom/android/keyguard/SecPasswordTextView;

    .line 351
    invoke-virtual {v1}, Lcom/android/keyguard/SecPasswordTextView;->getPasswordText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_9

    return-void

    .line 354
    :cond_9
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 358
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showDefaultMessage isValidSubscriptionId failed !!!  subid:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mSubId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :cond_b
    :goto_1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {p0}, Landroid/widget/EditText;->requestFocus()Z

    return-void
.end method

.method protected updateSim()V
    .locals 4

    .line 397
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mCheckSimPukThread:Lcom/android/keyguard/KeyguardSimPukViewController$CheckSimPuk;

    if-nez v0, :cond_0

    .line 398
    new-instance v0, Lcom/android/keyguard/KeyguardSecSimPukViewController$3;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mPukText:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mPinText:Ljava/lang/String;

    iget v3, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mSubId:I

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/keyguard/KeyguardSecSimPukViewController$3;-><init>(Lcom/android/keyguard/KeyguardSecSimPukViewController;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mCheckSimPukThread:Lcom/android/keyguard/KeyguardSimPukViewController$CheckSimPuk;

    .line 444
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public updateStyle(JLandroid/app/SemWallpaperColors;)V
    .locals 0

    .line 542
    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->initializeBottomContainerView(J)V

    .line 543
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecSimPukViewController;->updateProgressBarDrawable()V

    return-void
.end method

.method protected verifyPasswordAndUnlock()V
    .locals 2

    const-string v0, "KeyguardSecSimPukViewController"

    const-string/jumbo v1, "verifyPasswordAndUnlock next"

    .line 212
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-super {p0}, Lcom/android/keyguard/KeyguardSimPukViewController;->verifyPasswordAndUnlock()V

    return-void
.end method
