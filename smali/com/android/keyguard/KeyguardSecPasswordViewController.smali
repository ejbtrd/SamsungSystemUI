.class public Lcom/android/keyguard/KeyguardSecPasswordViewController;
.super Lcom/android/keyguard/KeyguardPasswordViewController;
.source "KeyguardSecPasswordViewController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/keyguard/KeyguardPasswordViewController<",
        "Lcom/android/keyguard/KeyguardSecPasswordView;",
        ">;"
    }
.end annotation


# instance fields
.field private mIsShownSIP:Z

.field private final mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

.field private final mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private final mShowPasswordButton:Lcom/android/systemui/widget/SystemUIImageView;

.field private final mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method public static synthetic $r8$lambda$0tAh6srDUcxao5Rc22ZacDcFVHg(Lcom/android/keyguard/KeyguardSecPasswordViewController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecPasswordViewController;->lambda$onViewAttached$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$49i1v-V_8fjr-VvlpSZSnu7r3-Y(Lcom/android/keyguard/KeyguardSecPasswordViewController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecPasswordViewController;->lambda$onViewAttached$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$B-Ul0iquF7e5TNOI8gMyX89_4aY(Lcom/android/keyguard/KeyguardSecPasswordViewController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecPasswordViewController;->lambda$onResume$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$BRee-C8EpUrFZW8i0C1zO6CshhM(Lcom/android/keyguard/KeyguardSecPasswordViewController;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecPasswordViewController;->lambda$onViewAttached$3(Landroid/net/Uri;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PhXrvpsVSh1TCZrrgDuzrYRk7Fw(Lcom/android/keyguard/KeyguardSecPasswordViewController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecPasswordViewController;->lambda$onResume$5(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$bMCfbFgDL0CwSX158S629y-9bH0(Lcom/android/keyguard/KeyguardSecPasswordViewController;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/android/keyguard/KeyguardSecPasswordViewController;->lambda$new$0(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method public static synthetic $r8$lambda$v12zbBqxCKhMo1OWMPj1Br6gURA(Lcom/android/keyguard/KeyguardSecPasswordViewController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecPasswordViewController;->lambda$onPause$6()V

    return-void
.end method

.method protected constructor <init>(Lcom/android/keyguard/KeyguardSecPasswordView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Landroid/view/inputmethod/InputMethodManager;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/util/concurrency/DelayableExecutor;Landroid/content/res/Resources;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/vibrate/VibrationUtil;Lcom/android/keyguard/KeyguardRotationController;Landroid/view/accessibility/AccessibilityManager;)V
    .locals 0

    .line 93
    invoke-direct/range {p0 .. p15}, Lcom/android/keyguard/KeyguardPasswordViewController;-><init>(Lcom/android/keyguard/KeyguardPasswordView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Landroid/view/inputmethod/InputMethodManager;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/util/concurrency/DelayableExecutor;Landroid/content/res/Resources;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/vibrate/VibrationUtil;Lcom/android/keyguard/KeyguardRotationController;Landroid/view/accessibility/AccessibilityManager;)V

    .line 55
    new-instance p1, Lcom/android/keyguard/KeyguardSecPasswordViewController$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/android/keyguard/KeyguardSecPasswordViewController$$ExternalSyntheticLambda2;-><init>(Lcom/android/keyguard/KeyguardSecPasswordViewController;)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecPasswordViewController;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 404
    new-instance p1, Lcom/android/keyguard/KeyguardSecPasswordViewController$1;

    invoke-direct {p1, p0}, Lcom/android/keyguard/KeyguardSecPasswordViewController$1;-><init>(Lcom/android/keyguard/KeyguardSecPasswordViewController;)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecPasswordViewController;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 98
    const-class p1, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitor;

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecPasswordViewController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 100
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/keyguard/KeyguardSecPasswordView;

    sget p2, Lcom/android/systemui/R$id;->container:I

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mContainer:Landroid/widget/LinearLayout;

    .line 101
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/keyguard/KeyguardSecPasswordView;

    sget p2, Lcom/android/systemui/R$id;->password_show_button:I

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/widget/SystemUIImageView;

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecPasswordViewController;->mShowPasswordButton:Lcom/android/systemui/widget/SystemUIImageView;

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardSecPasswordViewController;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecPasswordViewController;->setMessageAreaLandscapeAdditionalPadding()V

    return-void
.end method

.method private enableHidingPassword(Z)V
    .locals 2

    .line 349
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mPasswordEntry:Landroid/widget/EditText;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPasswordViewController;->mShowPasswordButton:Lcom/android/systemui/widget/SystemUIImageView;

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    const-string v0, "background"

    .line 354
    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    move-result v0

    if-eqz p1, :cond_2

    .line 356
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mPasswordEntry:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 357
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPasswordViewController;->mShowPasswordButton:Lcom/android/systemui/widget/SystemUIImageView;

    if-eqz v0, :cond_1

    .line 358
    sget v0, Lcom/android/systemui/R$drawable;->lock_whitebg_password_hide_btn:I

    goto :goto_0

    .line 359
    :cond_1
    sget v0, Lcom/android/systemui/R$drawable;->lock_password_hide_btn:I

    .line 357
    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 360
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPasswordViewController;->mShowPasswordButton:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$string;->kg_show_password_accessibility:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 362
    :cond_2
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mPasswordEntry:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 363
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPasswordViewController;->mShowPasswordButton:Lcom/android/systemui/widget/SystemUIImageView;

    if-eqz v0, :cond_3

    .line 364
    sget v0, Lcom/android/systemui/R$drawable;->lock_whitebg_password_show_btn:I

    goto :goto_1

    .line 365
    :cond_3
    sget v0, Lcom/android/systemui/R$drawable;->lock_password_show_btn:I

    .line 363
    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 366
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPasswordViewController;->mShowPasswordButton:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$string;->kg_hide_password_accessibility:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_2
    return-void

    :cond_4
    :goto_3
    const-string p0, "KeyguardSecPasswordViewController"

    const-string p1, "enableHidingPassword() view is null"

    .line 350
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;IIIIIIII)V
    .locals 0

    if-ne p5, p9, :cond_0

    .line 58
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 59
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->semIsInputMethodShown()Z

    move-result p1

    iget-boolean p2, p0, Lcom/android/keyguard/KeyguardSecPasswordViewController;->mIsShownSIP:Z

    if-eq p1, p2, :cond_3

    .line 60
    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->semIsInputMethodShown()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSecPasswordViewController;->mIsShownSIP:Z

    .line 62
    sget-boolean p2, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY:Z

    if-eqz p2, :cond_1

    .line 63
    iget-object p2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p2, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateSIPShownState(Z)V

    .line 65
    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecPasswordViewController;->setMessageAreaLandscapeAdditionalPadding()V

    .line 66
    const-class p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isShowKeyboardButton()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 67
    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardSecPasswordViewController;->mIsShownSIP:Z

    if-nez p1, :cond_2

    .line 68
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mSwitchImeButton:Landroid/widget/ImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 70
    :cond_2
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecPasswordViewController;->updateSwitchImeButton()V

    :cond_3
    return-void
.end method

.method private synthetic lambda$onPause$6()V
    .locals 0

    .line 230
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-eqz p0, :cond_0

    .line 231
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->forceHideSoftInput()Z

    :cond_0
    return-void
.end method

.method private synthetic lambda$onResume$4()V
    .locals 2

    .line 217
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mPasswordEntry:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method

.method private synthetic lambda$onResume$5(I)V
    .locals 3

    .line 209
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardSecPasswordView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 211
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPasswordViewController;->isHideKeyboardByDefault()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 212
    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mShowImeAtScreenOn:Z

    if-eqz p1, :cond_1

    .line 213
    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {p1, v1, v0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result p1

    if-nez p1, :cond_1

    .line 216
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/keyguard/KeyguardSecPasswordView;

    new-instance v0, Lcom/android/keyguard/KeyguardSecPasswordViewController$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardSecPasswordViewController$$ExternalSyntheticLambda4;-><init>(Lcom/android/keyguard/KeyguardSecPasswordViewController;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method private synthetic lambda$onViewAttached$1(Landroid/view/View;)V
    .locals 0

    .line 112
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    return-void
.end method

.method private synthetic lambda$onViewAttached$2(Landroid/view/View;)V
    .locals 1

    .line 124
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 126
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object p1

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecPasswordViewController;->enableHidingPassword(Z)V

    .line 127
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mPasswordEntry:Landroid/widget/EditText;

    .line 128
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result p0

    .line 127
    invoke-virtual {p1, v0, p0}, Landroid/widget/EditText;->setAccessibilitySelection(II)V

    return-void
.end method

.method private synthetic lambda$onViewAttached$3(Landroid/net/Uri;)V
    .locals 2

    const-string/jumbo v0, "show_keyboard_button"

    .line 139
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 140
    const-class p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isShowKeyboardButton()Z

    move-result p1

    if-nez p1, :cond_0

    .line 141
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPasswordViewController;->mShowPasswordButton:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 142
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->kg_security_show_password_side_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 143
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPasswordViewController;->mShowPasswordButton:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mSwitchImeButton:Landroid/widget/ImageView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private setMessageAreaLandscapeAdditionalPadding()V
    .locals 7

    .line 384
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 385
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricsPossible(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    if-eqz v1, :cond_2

    .line 388
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardSecPasswordViewController;->mIsShownSIP:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isLandscapeDisplay()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 389
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 390
    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->isDualDisplayPolicyAllowed()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 391
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getLockoutBiometricAttemptDeadline()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_1

    .line 392
    sget v1, Lcom/android/systemui/R$bool;->hidden_lock_icon_for_lock_out_policy:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 394
    sget v1, Lcom/android/systemui/R$dimen;->kg_message_area_font_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x6

    goto :goto_0

    .line 396
    :cond_0
    sget v1, Lcom/android/systemui/R$dimen;->kg_biometric_view_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sget v3, Lcom/android/systemui/R$dimen;->kg_message_area_font_size:I

    .line 397
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 400
    :goto_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {p0, v2, v0, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_2
    return-void
.end method

.method private updateSwitchImeButton()V
    .locals 8

    .line 249
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mSwitchImeButton:Landroid/widget/ImageView;

    const-string v1, "KeyguardSecPasswordViewController"

    if-nez v0, :cond_0

    const-string p0, "mSwitchImeButton is null"

    .line 250
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/android/keyguard/KeyguardSecPasswordViewController;->hasMultipleEnabledIMEsOrSubtypes(Landroid/view/inputmethod/InputMethodManager;Z)Z

    move-result v0

    .line 256
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mSwitchImeButton:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    move v3, v2

    .line 257
    :goto_0
    iget-boolean v5, p0, Lcom/android/keyguard/KeyguardSecPasswordViewController;->mIsShownSIP:Z

    if-eqz v5, :cond_2

    if-eqz v0, :cond_2

    move v5, v4

    goto :goto_1

    :cond_2
    move v5, v2

    .line 259
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateSwitchImeButton, wasVisible = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", shouldBeVisible = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", needImeBtn = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    const-class v0, Lcom/android/systemui/util/DesktopManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/DesktopManager;

    invoke-virtual {v0}, Lcom/android/systemui/util/DesktopManager;->isDesktopMode()Z

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_4

    if-eq v3, v5, :cond_4

    .line 262
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mSwitchImeButton:Landroid/widget/ImageView;

    if-eqz v5, :cond_3

    move v3, v2

    goto :goto_2

    :cond_3
    move v3, v1

    :goto_2
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 264
    :cond_4
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isShowKeyboardButton()Z

    move-result v0

    if-nez v0, :cond_5

    .line 265
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mSwitchImeButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 267
    :cond_5
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPasswordViewController;->mShowPasswordButton:Lcom/android/systemui/widget/SystemUIImageView;

    if-eqz v0, :cond_8

    .line 269
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 270
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPasswordViewController;->mShowPasswordButton:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 271
    sget v3, Lcom/android/systemui/R$dimen;->kg_security_show_password_side_margin:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 272
    iget-object v5, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mSwitchImeButton:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_6

    .line 273
    invoke-virtual {v1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v5

    if-ne v5, v3, :cond_7

    .line 274
    sget v2, Lcom/android/systemui/R$dimen;->kg_security_ime_button_width:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sget v3, Lcom/android/systemui/R$dimen;->kg_security_show_password_side_margin_for_ime_button:I

    .line 275
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lcom/android/systemui/R$dimen;->kg_security_ime_button_side_margin:I

    .line 276
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr v2, v0

    .line 274
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    goto :goto_3

    .line 280
    :cond_6
    invoke-virtual {v1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v0

    if-eq v0, v3, :cond_7

    .line 281
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    :goto_3
    move v2, v4

    :cond_7
    if-eqz v2, :cond_8

    .line 286
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPasswordViewController;->mShowPasswordButton:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_8
    return-void
.end method


# virtual methods
.method protected displayDefaultSecurityMessage()V
    .locals 5

    .line 433
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    const-string v1, "KeyguardSecPasswordViewController"

    if-nez v0, :cond_0

    const-string p0, "displayDefaultSecurityMessage mSecurityMessageDisplay is null"

    .line 434
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 437
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardInputViewController;->setMessageTimeout(Z)V

    .line 438
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isStrongAuthPromptMessage()Z

    move-result v0

    const-string v2, " )"

    if-eqz v0, :cond_1

    .line 439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "displayDefaultSecurityMessage - isStrongAuthPromptMessage ( "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mPromptReason:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    iget v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mPromptReason:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecPasswordViewController;->showPromptReason(I)V

    goto :goto_0

    .line 442
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mKeyguardTextBuilder:Lcom/android/keyguard/KeyguardTextBuilder;

    sget-object v3, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardTextBuilder;->getDefaultSecurityMessage(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Ljava/lang/String;

    move-result-object v0

    .line 444
    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mBouncerShowing:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mBouncerMessage:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mBouncerMessage:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 445
    :cond_2
    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mBouncerMessage:Ljava/lang/String;

    .line 447
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "displayDefaultSecurityMessage( "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    .line 452
    :cond_3
    :goto_0
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_VZW_INSTRUCTION:Z

    if-eqz v0, :cond_4

    .line 453
    sget v0, Lcom/android/systemui/R$string;->kg_password_sub_instructions_vzw:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->setSubSecurityMessage(I)V

    goto :goto_1

    .line 455
    :cond_4
    sget v0, Lcom/android/systemui/R$string;->kg_password_sub_instructions:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->setSubSecurityMessage(I)V

    .line 458
    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->is2StepVerification()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 459
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 460
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getLockoutBiometricAttemptDeadline()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_5

    .line 461
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    .line 463
    :cond_5
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserUnlockedWithBiometric(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 464
    sget v0, Lcom/android/systemui/R$string;->kg_biometrics_has_confirmed:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->setSubSecurityMessage(I)V

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    .line 466
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->setSubSecurityMessage(I)V

    :cond_7
    :goto_2
    return-void
.end method

.method protected getPasswordText()[B
    .locals 0

    .line 162
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-static {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->charSequenceToByteArray(Ljava/lang/CharSequence;)[B

    move-result-object p0

    return-object p0
.end method

.method protected getSecurityViewId()I
    .locals 0

    .line 380
    sget p0, Lcom/android/systemui/R$id;->keyguard_password_view:I

    return p0
.end method

.method protected hasMultipleEnabledIMEsOrSubtypes(Landroid/view/inputmethod/InputMethodManager;Z)Z
    .locals 7

    .line 305
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodListAsUser(I)Ljava/util/List;

    move-result-object p0

    .line 310
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    if-le v1, v3, :cond_1

    return v3

    .line 314
    :cond_1
    invoke-virtual {p1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v4

    .line 317
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 318
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.sec.android.inputmethod/.SamsungKeypad"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.sec.android.inputmethod.beta/com.sec.android.inputmethod.SamsungKeypad"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v5, "com.samsung.android.honeyboard/.SamsungKeypad"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 324
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 330
    :cond_4
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v5, v0

    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodSubtype;

    .line 331
    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v6

    if-eqz v6, :cond_5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 335
    :cond_6
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v5

    if-gtz v2, :cond_3

    if-eqz p2, :cond_0

    if-le v5, v3, :cond_0

    goto :goto_1

    :cond_7
    if-le v1, v3, :cond_8

    move v0, v3

    :cond_8
    return v0
.end method

.method public needsInput()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected onPasswordChecked(IZIZ)V
    .locals 1

    if-eqz p2, :cond_0

    .line 373
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->forceHideSoftInput()Z

    .line 375
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->onPasswordChecked(IZIZ)V

    return-void
.end method

.method public onPause()V
    .locals 4

    .line 229
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardSecPasswordView;

    new-instance v1, Lcom/android/keyguard/KeyguardSecPasswordViewController$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardSecPasswordViewController$$ExternalSyntheticLambda5;-><init>(Lcom/android/keyguard/KeyguardSecPasswordViewController;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 234
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPasswordViewController;->onPause()V

    return-void
.end method

.method public onResume(I)V
    .locals 4

    .line 178
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardPasswordViewController;->onResume(I)V

    .line 180
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    const-string v0, "background"

    .line 181
    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    move-result v0

    .line 182
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 183
    sget v0, Lcom/android/systemui/R$drawable;->keyguard_security_input_box_whitebg:I

    goto :goto_0

    .line 184
    :cond_0
    sget v0, Lcom/android/systemui/R$drawable;->keyguard_security_input_box:I

    .line 182
    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 187
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mPasswordEntry:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    .line 188
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 189
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->kg_security_input_box_padding_left:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 190
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$dimen;->kg_security_input_box_padding_right:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const/4 v3, 0x0

    .line 189
    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/widget/EditText;->setPaddingRelative(IIII)V

    .line 193
    :cond_2
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isShowKeyboardButton()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPasswordViewController;->isHideKeyboardByDefault()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 194
    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mSwitchImeButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 198
    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPasswordViewController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    if-eqz v0, :cond_5

    .line 199
    invoke-interface {v0}, Lcom/android/systemui/knox/KnoxStateMonitor;->isPasswordVisibilityEnabled()Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "KeyguardSecPasswordViewController"

    const-string v2, "<<<--->>> hide button"

    .line 200
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPasswordViewController;->mShowPasswordButton:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    .line 204
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mPasswordEntry:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 208
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardSecPasswordView;

    new-instance v1, Lcom/android/keyguard/KeyguardSecPasswordViewController$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Lcom/android/keyguard/KeyguardSecPasswordViewController$$ExternalSyntheticLambda6;-><init>(Lcom/android/keyguard/KeyguardSecPasswordViewController;I)V

    const-wide/16 p0, 0x64

    invoke-virtual {v0, v1, p0, p1}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onStartingToHide()V
    .locals 2

    .line 245
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardSecPasswordView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method protected onViewAttached()V
    .locals 4

    .line 106
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPasswordViewController;->onViewAttached()V

    .line 107
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPasswordViewController;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 108
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardSecPasswordView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPasswordViewController;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 111
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mPasswordEntry:Landroid/widget/EditText;

    new-instance v1, Lcom/android/keyguard/KeyguardSecPasswordViewController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardSecPasswordViewController$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardSecPasswordViewController;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mPasswordEntry:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setLongClickable(Z)V

    .line 119
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPasswordViewController;->mShowPasswordButton:Lcom/android/systemui/widget/SystemUIImageView;

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$string;->kg_show_password_accessibility:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPasswordViewController;->mShowPasswordButton:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x3e8

    invoke-static {v2, v3}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setPointerIcon(Landroid/view/PointerIcon;)V

    .line 123
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPasswordViewController;->mShowPasswordButton:Lcom/android/systemui/widget/SystemUIImageView;

    new-instance v2, Lcom/android/keyguard/KeyguardSecPasswordViewController$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardSecPasswordViewController$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/KeyguardSecPasswordViewController;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelected(Z)V

    .line 138
    :cond_1
    new-instance v0, Lcom/android/keyguard/KeyguardSecPasswordViewController$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardSecPasswordViewController$$ExternalSyntheticLambda3;-><init>(Lcom/android/keyguard/KeyguardSecPasswordViewController;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecPasswordViewController;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    .line 148
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPasswordViewController;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/net/Uri;

    const-string/jumbo v3, "show_keyboard_button"

    .line 149
    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v2, v1

    .line 148
    invoke-virtual {v0, p0, v2}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    return-void
.end method

.method protected onViewDetached()V
    .locals 2

    .line 154
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPasswordViewController;->onViewDetached()V

    .line 155
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPasswordViewController;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 156
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardSecPasswordView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPasswordViewController;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 157
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPasswordViewController;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v0, p0}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    return-void
.end method

.method public reset()V
    .locals 1

    .line 239
    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->reset()V

    const/4 v0, 0x1

    .line 240
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecPasswordViewController;->enableHidingPassword(Z)V

    return-void
.end method

.method resetState()V
    .locals 0

    .line 172
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPasswordViewController;->displayDefaultSecurityMessage()V

    .line 173
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->resetFor2StepVerification()V

    return-void
.end method

.method public showPromptReason(I)V
    .locals 4

    .line 473
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    if-nez v0, :cond_0

    const-string p0, "KeyguardSecPasswordViewController"

    const-string/jumbo p1, "showPromptReason mSecurityMessageDisplay is null"

    .line 474
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 477
    :cond_0
    iput p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mPromptReason:I

    if-eqz p1, :cond_6

    .line 479
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->getLockoutAttemptDeadline()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    return-void

    .line 483
    :cond_1
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 484
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mKeyguardTextBuilder:Lcom/android/keyguard/KeyguardTextBuilder;

    invoke-virtual {v1, v0, p1}, Lcom/android/keyguard/KeyguardTextBuilder;->getPromptSecurityMessage(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;I)Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_2

    .line 486
    sget v2, Lcom/android/systemui/R$string;->kg_password_sub_instructions:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->setSubSecurityMessage(I)V

    .line 488
    :cond_2
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

    .line 503
    :cond_3
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 493
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mKeyguardTextBuilder:Lcom/android/keyguard/KeyguardTextBuilder;

    .line 494
    invoke-virtual {p1, v0, v1}, Lcom/android/keyguard/KeyguardTextBuilder;->updateStrongAuthTimeoutMessage(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 496
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 497
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    .line 498
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Landroid/widget/TextView;->scrollTo(II)V

    goto :goto_1

    .line 500
    :cond_5
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    :cond_6
    :goto_1
    return-void
.end method
