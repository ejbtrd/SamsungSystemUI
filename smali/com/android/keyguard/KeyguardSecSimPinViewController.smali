.class public Lcom/android/keyguard/KeyguardSecSimPinViewController;
.super Lcom/android/keyguard/KeyguardSimPinViewController;
.source "KeyguardSecSimPinViewController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardSecSimPinViewController$SecCheckSimPin;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/keyguard/KeyguardSimPinViewController<",
        "Lcom/android/keyguard/KeyguardSecSimPinView;",
        ">;"
    }
.end annotation


# instance fields
.field private final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field private final mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

.field private final mESimSkipArea:Lcom/android/keyguard/KeyguardSecESimArea;

.field private final mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mOrientation:I

.field private final mProgressBar:Landroid/widget/ProgressBar;

.field private final mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private final mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method public static synthetic $r8$lambda$uh2QQ7cQoVRSCvoVJK9GyCCLY5w(Lcom/android/keyguard/KeyguardSecSimPinViewController;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecSimPinViewController;->lambda$new$0(Landroid/net/Uri;)V

    return-void
.end method

.method protected constructor <init>(Lcom/android/keyguard/KeyguardSecSimPinView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/keyguard/LiftToActivateListener;Landroid/telephony/TelephonyManager;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/vibrate/VibrationUtil;Lcom/android/keyguard/KeyguardRotationController;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;Landroid/view/inputmethod/InputMethodManager;)V
    .locals 4

    move-object v0, p0

    .line 167
    invoke-direct/range {p0 .. p15}, Lcom/android/keyguard/KeyguardSimPinViewController;-><init>(Lcom/android/keyguard/KeyguardSimPinView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/keyguard/LiftToActivateListener;Landroid/telephony/TelephonyManager;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/vibrate/VibrationUtil;Lcom/android/keyguard/KeyguardRotationController;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V

    const/4 v1, 0x1

    .line 55
    iput v1, v0, Lcom/android/keyguard/KeyguardSecSimPinViewController;->mOrientation:I

    .line 58
    new-instance v2, Lcom/android/keyguard/KeyguardSecSimPinViewController$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardSecSimPinViewController$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardSecSimPinViewController;)V

    iput-object v2, v0, Lcom/android/keyguard/KeyguardSecSimPinViewController;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    .line 62
    new-instance v2, Lcom/android/keyguard/KeyguardSecSimPinViewController$1;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardSecSimPinViewController$1;-><init>(Lcom/android/keyguard/KeyguardSecSimPinViewController;)V

    iput-object v2, v0, Lcom/android/keyguard/KeyguardSecSimPinViewController;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    .line 74
    new-instance v2, Lcom/android/keyguard/KeyguardSecSimPinViewController$2;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardSecSimPinViewController$2;-><init>(Lcom/android/keyguard/KeyguardSecSimPinViewController;)V

    iput-object v2, v0, Lcom/android/keyguard/KeyguardSecSimPinViewController;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    move-object/from16 v2, p15

    .line 171
    iput-object v2, v0, Lcom/android/keyguard/KeyguardSecSimPinViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    move-object/from16 v2, p16

    .line 172
    iput-object v2, v0, Lcom/android/keyguard/KeyguardSecSimPinViewController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 174
    iget-object v2, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v2, Lcom/android/keyguard/KeyguardSecSimPinView;

    sget v3, Lcom/android/systemui/R$id;->keyguard_sec_esim_area:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/KeyguardSecESimArea;

    iput-object v2, v0, Lcom/android/keyguard/KeyguardSecSimPinViewController;->mESimSkipArea:Lcom/android/keyguard/KeyguardSecESimArea;

    if-eqz v2, :cond_0

    .line 176
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardSecESimArea;->setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V

    .line 178
    :cond_0
    iget-object v2, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v2, Lcom/android/keyguard/KeyguardSecSimPinView;

    sget v3, Lcom/android/systemui/R$id;->progress:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, v0, Lcom/android/keyguard/KeyguardSecSimPinViewController;->mProgressBar:Landroid/widget/ProgressBar;

    .line 179
    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 180
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecSimPinViewController;->updateProgressBarDrawable()V

    .line 182
    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardSecSimPinView;

    sget v2, Lcom/android/systemui/R$id;->keyguard_sim_icon:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/android/keyguard/KeyguardSimPinViewController;->mSimImageView:Landroid/widget/ImageView;

    .line 183
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecSimPinViewController;->updateESimLayout()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardSecSimPinViewController;)I
    .locals 0

    .line 48
    iget p0, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController;->mOrientation:I

    return p0
.end method

.method static synthetic access$002(Lcom/android/keyguard/KeyguardSecSimPinViewController;I)I
    .locals 0

    .line 48
    iput p1, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController;->mOrientation:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardSecSimPinViewController;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecSimPinViewController;->updateESimLayout()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/keyguard/KeyguardSecSimPinViewController;)Landroid/view/View;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardSecSimPinViewController;)Landroid/widget/ProgressBar;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController;->mProgressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/keyguard/KeyguardSecSimPinViewController;)Lcom/android/keyguard/KeyguardSecESimArea;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController;->mESimSkipArea:Lcom/android/keyguard/KeyguardSecESimArea;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/keyguard/KeyguardSecSimPinViewController;)Landroid/view/View;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/keyguard/KeyguardSecSimPinViewController;)Landroid/view/View;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/keyguard/KeyguardSecSimPinViewController;)Landroid/content/Context;
    .locals 0

    .line 48
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/keyguard/KeyguardSecSimPinViewController;)Landroid/view/inputmethod/InputMethodManager;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/keyguard/KeyguardSecSimPinViewController;)Landroid/content/Context;
    .locals 0

    .line 48
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/keyguard/KeyguardSecSimPinViewController;)Landroid/view/View;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method private getSimPinRetry(I)I
    .locals 3

    const-string p0, "KeyguardSecSimPinViewController"

    const/4 v0, 0x3

    :try_start_0
    const-string v1, "isemtelephony"

    .line 486
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISemTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISemTelephony;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 488
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ISemTelephony;->getSimPinRetryForSubscriber(I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 491
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    :cond_0
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSimPinLockInfoResult(): num_of_retry is "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private synthetic lambda$new$0(Landroid/net/Uri;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecSimPinViewController;->updateSimIconImage()V

    return-void
.end method

.method private updateESimLayout()V
    .locals 4

    .line 549
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController;->mESimSkipArea:Lcom/android/keyguard/KeyguardSecESimArea;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    return-void

    .line 552
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    if-eqz v0, :cond_2

    .line 553
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 554
    iget v1, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController;->mOrientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 555
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController;->mESimSkipArea:Lcom/android/keyguard/KeyguardSecESimArea;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    .line 556
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$dimen;->keyguard_hint_text_padding_top:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_0

    .line 558
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController;->mESimSkipArea:Lcom/android/keyguard/KeyguardSecESimArea;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 560
    :goto_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method

.method private updateProgressBarDrawable()V
    .locals 2

    const-string v0, "background"

    .line 536
    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    move-result v0

    .line 537
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eqz v0, :cond_0

    .line 538
    sget v0, Lcom/android/systemui/R$drawable;->keyguard_progress_material_whitebg:I

    goto :goto_0

    .line 539
    :cond_0
    sget v0, Lcom/android/systemui/R$drawable;->keyguard_progress_material:I

    .line 537
    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private updateSimIconImage()V
    .locals 6

    .line 498
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_4

    iget v0, p0, Lcom/android/keyguard/KeyguardSimPinViewController;->mSubId:I

    .line 499
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 501
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget v2, p0, Lcom/android/keyguard/KeyguardSimPinViewController;->mSubId:I

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSubscriptionInfoForSubId(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 503
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v2

    .line 505
    :goto_0
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSimPinViewController;->mSimImageView:Landroid/widget/ImageView;

    instance-of v4, v3, Lcom/android/systemui/widget/SystemUIImageView;

    if-eqz v4, :cond_4

    .line 506
    check-cast v3, Lcom/android/systemui/widget/SystemUIImageView;

    .line 507
    sget-boolean v4, Lcom/android/systemui/LsRune;->SECURITY_ESIM:Z

    const/16 v5, 0x8

    if-eqz v4, :cond_2

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->isESIM(I)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPinViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 508
    invoke-interface {v4}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->isESimEmbedded()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v0, "KeyguardSecSimPinViewController"

    const-string/jumbo v1, "this is e-SIM"

    .line 509
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController;->mESimSkipArea:Lcom/android/keyguard/KeyguardSecESimArea;

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

    .line 511
    invoke-virtual {v3, p0}, Lcom/android/systemui/widget/SystemUIImageView;->setOriginImage(Ljava/lang/String;)V

    const-string p0, "lock_ic_pin_attempt_sim_whitebg"

    .line 512
    invoke-virtual {v3, p0}, Lcom/android/systemui/widget/SystemUIImageView;->setWhiteBgImage(Ljava/lang/String;)V

    .line 513
    invoke-virtual {v3}, Lcom/android/systemui/widget/SystemUIImageView;->invalidateImage()V

    goto :goto_1

    .line 515
    :cond_2
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController;->mESimSkipArea:Lcom/android/keyguard/KeyguardSecESimArea;

    invoke-virtual {p0, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    if-nez v0, :cond_3

    const-string p0, "lock_ic_pin_attempt_sim_01"

    .line 517
    invoke-virtual {v3, p0}, Lcom/android/systemui/widget/SystemUIImageView;->setOriginImage(Ljava/lang/String;)V

    const-string p0, "lock_ic_pin_attempt_sim_01_whitebg"

    .line 518
    invoke-virtual {v3, p0}, Lcom/android/systemui/widget/SystemUIImageView;->setWhiteBgImage(Ljava/lang/String;)V

    .line 519
    invoke-virtual {v3}, Lcom/android/systemui/widget/SystemUIImageView;->invalidateImage()V

    goto :goto_1

    :cond_3
    if-ne v0, v1, :cond_4

    const-string p0, "lock_ic_pin_attempt_sim_02"

    .line 521
    invoke-virtual {v3, p0}, Lcom/android/systemui/widget/SystemUIImageView;->setOriginImage(Ljava/lang/String;)V

    const-string p0, "lock_ic_pin_attempt_sim_02_whitebg"

    .line 522
    invoke-virtual {v3, p0}, Lcom/android/systemui/widget/SystemUIImageView;->setWhiteBgImage(Ljava/lang/String;)V

    .line 523
    invoke-virtual {v3}, Lcom/android/systemui/widget/SystemUIImageView;->invalidateImage()V

    :cond_4
    :goto_1
    return-void
.end method

.method private verifyPasswordAndUnlock(Ljava/lang/String;)V
    .locals 8

    .line 261
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v5

    .line 262
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_KOR_USIM_TEXT:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 263
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    sget v0, Lcom/android/systemui/R$string;->kg_empty_sim_perso_hint:I

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(I)V

    .line 264
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardSecSimPinView;

    invoke-virtual {p0, v1, v1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->resetPasswordText(ZZ)V

    if-eqz v5, :cond_0

    .line 266
    invoke-interface {v5}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    :cond_0
    return-void

    .line 269
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x8

    const/4 v4, 0x4

    const/4 v6, 0x0

    if-ge v2, v4, :cond_4

    if-eqz v0, :cond_2

    .line 272
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    sget v0, Lcom/android/systemui/R$string;->kg_kor_sim_pin_instructions:I

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(I)V

    .line 273
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$string;->kg_kor_sim_pin_voice_instructions:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 275
    :cond_2
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$string;->kg_invalid_sim_pin_hint:I

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v1

    invoke-virtual {v0, v2, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    .line 277
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardSecSimPinView;

    invoke-virtual {p0, v1, v1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->resetPasswordText(ZZ)V

    if-eqz v5, :cond_3

    .line 280
    invoke-interface {v5}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    :cond_3
    return-void

    .line 284
    :cond_4
    invoke-virtual {p0, v6}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->setEnabledKeypad(Z)V

    .line 285
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mOkButton:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 286
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    if-eqz v5, :cond_5

    .line 289
    invoke-interface {v5}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 291
    :cond_5
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinViewController;->mCheckSimPinThread:Lcom/android/keyguard/KeyguardSimPinViewController$CheckSimPin;

    if-nez v0, :cond_6

    .line 292
    iget v4, p0, Lcom/android/keyguard/KeyguardSimPinViewController;->mSubId:I

    .line 293
    new-instance v6, Lcom/android/keyguard/KeyguardSecSimPinViewController$3;

    iget v3, p0, Lcom/android/keyguard/KeyguardSimPinViewController;->mSubId:I

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/KeyguardSecSimPinViewController$3;-><init>(Lcom/android/keyguard/KeyguardSecSimPinViewController;Ljava/lang/String;IILcom/android/keyguard/KeyguardSecurityCallback;)V

    iput-object v6, p0, Lcom/android/keyguard/KeyguardSimPinViewController;->mCheckSimPinThread:Lcom/android/keyguard/KeyguardSimPinViewController$CheckSimPin;

    .line 371
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    :cond_6
    return-void
.end method


# virtual methods
.method protected getSecurityViewId()I
    .locals 0

    .line 532
    sget p0, Lcom/android/systemui/R$id;->keyguard_sim_pin_view:I

    return p0
.end method

.method public onPause()V
    .locals 0

    .line 245
    invoke-super {p0}, Lcom/android/keyguard/KeyguardSimPinViewController;->onPause()V

    return-void
.end method

.method public onResume(I)V
    .locals 0

    .line 236
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardSimPinViewController;->onResume(I)V

    return-void
.end method

.method protected onViewAttached()V
    .locals 4

    .line 188
    invoke-super {p0}, Lcom/android/keyguard/KeyguardSimPinViewController;->onViewAttached()V

    .line 190
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 191
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 192
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/net/Uri;

    const-string v2, "emergency_mode"

    .line 193
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 192
    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    return-void
.end method

.method protected onViewDetached()V
    .locals 2

    .line 198
    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->onViewDetached()V

    .line 200
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 201
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    .line 202
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v0, p0}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    return-void
.end method

.method resetState()V
    .locals 3

    .line 207
    const-class v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-super {p0}, Lcom/android/keyguard/KeyguardSimPinViewController;->resetState()V

    const-string v1, "KeyguardSecSimPinViewController"

    const-string v2, "Resetting state"

    .line 208
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPinViewController;->handleSubInfoChangeIfNeeded()V

    .line 211
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-interface {v1}, Lcom/android/systemui/knox/KnoxStateMonitor;->isUnlockSimOnBootState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 213
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-interface {v0}, Lcom/android/systemui/knox/KnoxStateMonitor;->getUnlockSimPin()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 215
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecSimPinViewController;->verifyPasswordAndUnlock(Ljava/lang/String;)V

    .line 219
    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSimPinViewController;->mShowDefaultMessage:Z

    if-eqz v0, :cond_1

    .line 220
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecSimPinViewController;->showDefaultMessage()V

    .line 221
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinViewController;->mSimImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 222
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecSimPinViewController;->updateSimIconImage()V

    .line 226
    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecSimPinViewController;->updateESimLayout()V

    return-void
.end method

.method protected showDefaultMessage()V
    .locals 10

    .line 423
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "showDefaultMessage subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/keyguard/KeyguardSimPinViewController;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardSecSimPinViewController"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    iget v0, p0, Lcom/android/keyguard/KeyguardSimPinViewController;->mSubId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 425
    iget v0, p0, Lcom/android/keyguard/KeyguardSimPinViewController;->mSubId:I

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecSimPinViewController;->getSimPinRetry(I)I

    move-result v0

    .line 426
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, -0x1

    const-string v3, ""

    if-eq v0, v2, :cond_5

    const/4 v2, 0x1

    const-string v4, ". "

    if-eq v0, v2, :cond_2

    const/4 v5, 0x3

    if-eq v0, v5, :cond_5

    .line 455
    sget-boolean v5, Lcom/android/systemui/LsRune;->SECURITY_KOR_USIM_TEXT:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    .line 456
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v5, Lcom/android/systemui/R$string;->kg_kor_sim_pin_instructions:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lcom/android/systemui/R$string;->kg_sim_pin_remaining_attempts:I

    new-array v7, v2, [Ljava/lang/Object;

    .line 457
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v6

    invoke-virtual {v1, v5, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 458
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget v8, Lcom/android/systemui/R$string;->kg_kor_sim_pin_voice_instructions:I

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v2, v2, [Ljava/lang/Object;

    .line 459
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v6

    invoke-virtual {v1, v5, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 460
    :cond_0
    sget-boolean v5, Lcom/android/systemui/LsRune;->SECURITY_USE_CDMA_CARD_TEXT:Z

    if-eqz v5, :cond_1

    .line 461
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget v7, Lcom/android/systemui/R$string;->kg_ctc_unlock_sim_pin_instructions:I

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/android/systemui/R$string;->kg_sim_pin_remaining_attempts:I

    new-array v2, v2, [Ljava/lang/Object;

    .line 462
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v6

    invoke-virtual {v1, v4, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 464
    :cond_1
    sget v4, Lcom/android/systemui/R$string;->kg_unlock_sim_pin_remaining_attempts:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v6

    invoke-virtual {v1, v4, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 442
    :cond_2
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_KOR_USIM_TEXT:Z

    if-eqz v0, :cond_3

    .line 443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/android/systemui/R$string;->kg_kor_sim_pin_instructions:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/systemui/R$string;->kg_sim_pin_remaining_1_attempt:I

    .line 444
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v5, Lcom/android/systemui/R$string;->kg_kor_sim_pin_voice_instructions:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 447
    :cond_3
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_USE_CDMA_CARD_TEXT:Z

    if-eqz v0, :cond_4

    .line 448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/android/systemui/R$string;->kg_ctc_unlock_sim_pin_instructions:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/systemui/R$string;->kg_sim_pin_remaining_1_attempt:I

    .line 449
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 451
    :cond_4
    sget v0, Lcom/android/systemui/R$string;->kg_unlock_sim_pin_remaining_1_attempt:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 432
    :cond_5
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_KOR_USIM_TEXT:Z

    if-eqz v0, :cond_6

    .line 433
    sget v0, Lcom/android/systemui/R$string;->kg_kor_sim_pin_instructions:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 434
    sget v0, Lcom/android/systemui/R$string;->kg_kor_sim_pin_voice_instructions:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 435
    :cond_6
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_USE_CDMA_CARD_TEXT:Z

    if-eqz v0, :cond_7

    .line 436
    sget v0, Lcom/android/systemui/R$string;->kg_ctc_unlock_sim_pin_instructions:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 438
    :cond_7
    sget v0, Lcom/android/systemui/R$string;->kg_unlock_sim_pin_instructions:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v9, v3

    move-object v3, v0

    move-object v0, v9

    .line 467
    :goto_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    if-eqz v1, :cond_a

    .line 468
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    if-eqz v1, :cond_8

    check-cast v1, Lcom/android/keyguard/SecPasswordTextView;

    .line 469
    invoke-virtual {v1}, Lcom/android/keyguard/SecPasswordTextView;->getPasswordText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_8

    return-void

    .line 472
    :cond_8
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v1, v3}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    .line 473
    sget-boolean v1, Lcom/android/systemui/LsRune;->SECURITY_KOR_USIM_TEXT:Z

    if-eqz v1, :cond_a

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 474
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 479
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showDefaultMessage isValidSubscriptionId failed !!!  subid:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/keyguard/KeyguardSimPinViewController;->mSubId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_2
    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public updateStyle(JLandroid/app/SemWallpaperColors;)V
    .locals 0

    .line 585
    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->initializeBottomContainerView(J)V

    .line 586
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecSimPinViewController;->updateProgressBarDrawable()V

    return-void
.end method

.method protected verifyPasswordAndUnlock()V
    .locals 2

    .line 253
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    instance-of v1, v0, Lcom/android/keyguard/SecPasswordTextView;

    if-nez v1, :cond_0

    return-void

    .line 256
    :cond_0
    check-cast v0, Lcom/android/keyguard/SecPasswordTextView;

    invoke-virtual {v0}, Lcom/android/keyguard/SecPasswordTextView;->getPasswordText()Ljava/lang/String;

    move-result-object v0

    .line 257
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecSimPinViewController;->verifyPasswordAndUnlock(Ljava/lang/String;)V

    return-void
.end method
