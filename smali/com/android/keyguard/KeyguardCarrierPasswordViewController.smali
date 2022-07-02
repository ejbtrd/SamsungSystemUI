.class public Lcom/android/keyguard/KeyguardCarrierPasswordViewController;
.super Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;
.source "KeyguardCarrierPasswordViewController.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController<",
        "Lcom/android/keyguard/KeyguardCarrierPasswordView;",
        ">;",
        "Landroid/text/TextWatcher;",
        "Landroid/widget/TextView$OnEditorActionListener;"
    }
.end annotation


# instance fields
.field private deadline:J

.field private final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field private final mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

.field private final mContext:Landroid/content/Context;

.field private mCurrentOrientation:I

.field private mFailedAttempts:I

.field private final mImm:Landroid/view/inputmethod/InputMethodManager;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mPasswordEntry:Landroid/widget/EditText;

.field private final mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

.field private mPendingLockCheck:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "***>;"
        }
    .end annotation
.end field

.field private final mShowImeAtScreenOn:Z

.field private final mShowImeRunnable:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$dBmNI7n7kDFna6mWwHt27YxlH6k(Lcom/android/keyguard/KeyguardCarrierPasswordViewController;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->lambda$verifyPasswordAndUnlock$1(ZI)V

    return-void
.end method

.method public static synthetic $r8$lambda$g5GvzVeHgwjGkm3gylmNvTuIHS4(Lcom/android/keyguard/KeyguardCarrierPasswordViewController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->lambda$onViewAttached$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/keyguard/KeyguardCarrierPasswordView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/vibrate/VibrationUtil;Lcom/android/keyguard/KeyguardRotationController;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;Landroid/view/inputmethod/InputMethodManager;)V
    .locals 0

    .line 78
    invoke-direct/range {p0 .. p12}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;-><init>(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/vibrate/VibrationUtil;Lcom/android/keyguard/KeyguardRotationController;Landroid/view/accessibility/AccessibilityManager;)V

    const-wide/16 p1, 0x0

    .line 42
    iput-wide p1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->deadline:J

    const/4 p1, 0x0

    .line 43
    iput p1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mFailedAttempts:I

    const/4 p1, -0x1

    .line 48
    iput p1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mCurrentOrientation:I

    .line 52
    new-instance p1, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$1;

    invoke-direct {p1, p0}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$1;-><init>(Lcom/android/keyguard/KeyguardCarrierPasswordViewController;)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    .line 201
    new-instance p1, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$3;

    invoke-direct {p1, p0}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$3;-><init>(Lcom/android/keyguard/KeyguardCarrierPasswordViewController;)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mShowImeRunnable:Ljava/lang/Runnable;

    .line 81
    iput-object p4, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 82
    iput-object p13, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 83
    iput-object p14, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 85
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$bool;->kg_show_ime_at_screen_on:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mShowImeAtScreenOn:Z

    .line 86
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mContext:Landroid/content/Context;

    .line 88
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/keyguard/KeyguardCarrierPasswordView;

    sget p2, Lcom/android/systemui/R$id;->passwordEntry:I

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mPasswordEntry:Landroid/widget/EditText;

    .line 90
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mCurrentOrientation:I

    .line 91
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/keyguard/KeyguardCarrierPasswordView;

    sget p2, Lcom/android/systemui/R$id;->password_entry_box:I

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardCarrierPasswordViewController;)I
    .locals 0

    .line 34
    iget p0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mCurrentOrientation:I

    return p0
.end method

.method static synthetic access$002(Lcom/android/keyguard/KeyguardCarrierPasswordViewController;I)I
    .locals 0

    .line 34
    iput p1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mCurrentOrientation:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardCarrierPasswordViewController;)Landroid/view/View;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardCarrierPasswordViewController;)Landroid/widget/EditText;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mPasswordEntry:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/keyguard/KeyguardCarrierPasswordViewController;)Landroid/view/inputmethod/InputMethodManager;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mImm:Landroid/view/inputmethod/InputMethodManager;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/keyguard/KeyguardCarrierPasswordViewController;)Landroid/view/View;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$502(Lcom/android/keyguard/KeyguardCarrierPasswordViewController;I)I
    .locals 0

    .line 34
    iput p1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mFailedAttempts:I

    return p1
.end method

.method private synthetic lambda$onViewAttached$0(Landroid/view/View;)V
    .locals 0

    .line 111
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    return-void
.end method

.method private synthetic lambda$verifyPasswordAndUnlock$1(ZI)V
    .locals 1

    const/4 v0, 0x0

    .line 177
    iput-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mPendingLockCheck:Landroid/os/AsyncTask;

    const/4 v0, 0x1

    .line 178
    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->onPasswordChecked(ZIZ)V

    return-void
.end method

.method private onPasswordChecked(ZIZ)V
    .locals 0

    .line 183
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "check result : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "KeyguardCarrierPasswordView"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 185
    iget-object p1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object p2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p2, Lcom/android/keyguard/KeyguardCarrierPasswordView;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 186
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.sec.android.FindingLostPhonePlus.RELEASE"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const p2, 0x1000020

    .line 187
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 188
    iget-object p0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mContext:Landroid/content/Context;

    const-string p2, "android.permission.MASTER_CLEAR"

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 190
    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    sget p2, Lcom/android/systemui/R$string;->kg_carrier_lock_wrong_password:I

    invoke-virtual {p1, p2}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(I)V

    .line 191
    iget-object p1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mPasswordEntry:Landroid/widget/EditText;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget p1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mFailedAttempts:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mFailedAttempts:I

    const/4 p2, 0x4

    if-le p1, p2, :cond_1

    .line 194
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p1

    .line 195
    iget-object p2, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p2, p1}, Lcom/android/internal/widget/LockPatternUtils;->setCarrierLockoutAttemptDeadline(I)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->deadline:J

    .line 196
    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->handleAttemptLockout(J)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method protected getPasswordText()[B
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-static {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->charSequenceToByteArray(Ljava/lang/CharSequence;)[B

    move-result-object p0

    return-object p0
.end method

.method protected handleAttemptLockout(J)V
    .locals 9

    .line 250
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardCarrierPasswordView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->setPasswordEntryEnabled(Z)V

    .line 251
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 253
    new-instance v8, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$4;

    sub-long v4, p1, v0

    const-wide/16 v6, 0x3e8

    move-object v2, v8

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$4;-><init>(Lcom/android/keyguard/KeyguardCarrierPasswordViewController;JJ)V

    .line 265
    invoke-virtual {v8}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method public needsInput()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 p1, 0x1

    const/4 v0, 0x0

    if-nez p3, :cond_1

    if-eqz p2, :cond_0

    const/4 v1, 0x6

    if-eq p2, v1, :cond_0

    const/4 v1, 0x5

    if-ne p2, v1, :cond_1

    :cond_0
    move p2, p1

    goto :goto_0

    :cond_1
    move p2, v0

    :goto_0
    if-eqz p3, :cond_2

    .line 238
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-static {v1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 239
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p3

    if-nez p3, :cond_2

    move p3, p1

    goto :goto_1

    :cond_2
    move p3, v0

    :goto_1
    if-nez p2, :cond_4

    if-eqz p3, :cond_3

    goto :goto_2

    :cond_3
    return v0

    .line 241
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->verifyPasswordAndUnlock()V

    return p1
.end method

.method public onPause()V
    .locals 3

    .line 213
    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->onPause()V

    .line 214
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardCarrierPasswordView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mShowImeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 215
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardCarrierPasswordView;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 216
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mPendingLockCheck:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    .line 218
    iput-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mPendingLockCheck:Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method public onResume(I)V
    .locals 3

    .line 224
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->onResume(I)V

    .line 225
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mShowImeAtScreenOn:Z

    if-eqz p1, :cond_1

    .line 226
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/keyguard/KeyguardCarrierPasswordView;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mShowImeRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 228
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->reset()V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 145
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    :cond_0
    return-void
.end method

.method protected onViewAttached()V
    .locals 2

    .line 101
    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->onViewAttached()V

    .line 103
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 105
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 106
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 107
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mPasswordEntry:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 108
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mPasswordEntry:Landroid/widget/EditText;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 109
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 111
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mPasswordEntry:Landroid/widget/EditText;

    new-instance v1, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardCarrierPasswordViewController;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mPasswordEntry:Landroid/widget/EditText;

    new-instance v1, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$2;-><init>(Lcom/android/keyguard/KeyguardCarrierPasswordViewController;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 126
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->updateLayout()V

    .line 127
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->reset()V

    return-void
.end method

.method protected onViewDetached()V
    .locals 2

    .line 132
    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->onViewDetached()V

    .line 134
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    .line 135
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public reset()V
    .locals 6

    .line 155
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mPasswordEntry:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 157
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->getCarrierLockoutAttemptDeadline(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->deadline:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {p0, v2, v3}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->handleAttemptLockout(J)V

    goto :goto_0

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    .line 162
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->setPasswordEntryEnabled(Z)V

    :goto_0
    return-void
.end method

.method resetState()V
    .locals 0

    return-void
.end method

.method protected updateLayout()V
    .locals 2

    .line 275
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 276
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->kg_security_input_box_side_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 277
    iget-object v1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 278
    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 279
    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 280
    iget-object p0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method protected verifyPasswordAndUnlock()V
    .locals 5

    .line 168
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 169
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->getPasswordText()[B

    move-result-object v0

    .line 170
    iget-object v1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mPendingLockCheck:Landroid/os/AsyncTask;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 171
    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 174
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v2, 0x1

    .line 175
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    new-instance v4, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/KeyguardCarrierPasswordViewController;)V

    .line 174
    invoke-static {v1, v2, v0, v3, v4}, Lcom/android/internal/widget/LockPatternChecker;->checkRemoteLockPassword(Lcom/android/internal/widget/LockPatternUtils;I[BILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mPendingLockCheck:Landroid/os/AsyncTask;

    return-void
.end method
