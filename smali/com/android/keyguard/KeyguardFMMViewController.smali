.class public Lcom/android/keyguard/KeyguardFMMViewController;
.super Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;
.source "KeyguardFMMViewController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/keyguard/KeyguardSecPinBasedInputViewController<",
        "Lcom/android/keyguard/KeyguardFMMView;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCallButton:Lcom/android/systemui/widget/SystemUIButton;

.field private final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field private final mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

.field private final mIsVoiceCapacity:Z

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private final mMessageArea:Landroid/widget/LinearLayout;

.field private final mOnWindowFocusChangeListener:Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;

.field private mOrientation:I

.field private final mOwnerContactInfo:Lcom/android/systemui/widget/SystemUITextView;

.field private final mOwnerMessage:Lcom/android/systemui/widget/SystemUITextView;

.field private final mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method public static synthetic $r8$lambda$9EoNqnNVVrsX1wWeSXeqeyB9-Q8(Lcom/android/keyguard/KeyguardFMMViewController;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardFMMViewController;->lambda$setFMMInfo$2(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$G9sXNaa1P5zIyeRqNXnVMjHpVlg(Lcom/android/keyguard/KeyguardFMMViewController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardFMMViewController;->lambda$new$0(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$XhKTYm9SJ6jrtyo99_UjtOwrI30(Lcom/android/keyguard/KeyguardFMMViewController;I[BZI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/keyguard/KeyguardFMMViewController;->lambda$verifyPasswordAndUnlock$4(I[BZI)V

    return-void
.end method

.method public static synthetic $r8$lambda$coSrJ3UM5gGjMOlSAiBP4udqV8s(Lcom/android/keyguard/KeyguardFMMViewController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardFMMViewController;->lambda$setFMMInfo$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$j3edSkpcBBwHkQ2KIjQyRPvNwTw(Lcom/android/keyguard/KeyguardFMMViewController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardFMMViewController;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/keyguard/KeyguardFMMView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/keyguard/LiftToActivateListener;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/vibrate/VibrationUtil;Lcom/android/keyguard/KeyguardRotationController;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V
    .locals 0

    .line 118
    invoke-direct/range {p0 .. p14}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;-><init>(Lcom/android/keyguard/KeyguardSecPinBasedInputView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/keyguard/LiftToActivateListener;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/vibrate/VibrationUtil;Lcom/android/keyguard/KeyguardRotationController;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V

    const/4 p1, 0x1

    .line 56
    iput p1, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mOrientation:I

    .line 62
    new-instance p3, Lcom/android/keyguard/KeyguardFMMViewController$1;

    invoke-direct {p3, p0}, Lcom/android/keyguard/KeyguardFMMViewController$1;-><init>(Lcom/android/keyguard/KeyguardFMMViewController;)V

    iput-object p3, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 72
    new-instance p3, Lcom/android/keyguard/KeyguardFMMViewController$2;

    invoke-direct {p3, p0}, Lcom/android/keyguard/KeyguardFMMViewController$2;-><init>(Lcom/android/keyguard/KeyguardFMMViewController;)V

    iput-object p3, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    .line 83
    new-instance p3, Lcom/android/keyguard/KeyguardFMMViewController$$ExternalSyntheticLambda3;

    invoke-direct {p3, p0}, Lcom/android/keyguard/KeyguardFMMViewController$$ExternalSyntheticLambda3;-><init>(Lcom/android/keyguard/KeyguardFMMViewController;)V

    iput-object p3, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mOnWindowFocusChangeListener:Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;

    .line 122
    iput-object p2, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 123
    iput-object p14, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 125
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x1110180

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mIsVoiceCapacity:Z

    .line 127
    iget-object p2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p2, Lcom/android/keyguard/KeyguardFMMView;

    sget p3, Lcom/android/systemui/R$id;->keyguard_fmm_message:I

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/widget/SystemUITextView;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mOwnerMessage:Lcom/android/systemui/widget/SystemUITextView;

    .line 128
    iget-object p2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p2, Lcom/android/keyguard/KeyguardFMMView;

    sget p3, Lcom/android/systemui/R$id;->keyguard_fmm_owner_phone_num:I

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/widget/SystemUITextView;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mOwnerContactInfo:Lcom/android/systemui/widget/SystemUITextView;

    .line 129
    iget-object p2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p2, Lcom/android/keyguard/KeyguardFMMView;

    sget p3, Lcom/android/systemui/R$id;->keyguard_fmm_emergency_btn:I

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/widget/SystemUIButton;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mCallButton:Lcom/android/systemui/widget/SystemUIButton;

    .line 130
    iget-object p2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p2, Lcom/android/keyguard/KeyguardFMMView;

    sget p3, Lcom/android/systemui/R$id;->message_area:I

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mMessageArea:Landroid/widget/LinearLayout;

    .line 132
    iget-object p2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p2, Lcom/android/keyguard/KeyguardFMMView;

    sget p3, Lcom/android/systemui/R$id;->keyguard_fmm_phone_locked:I

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/widget/SystemUITextView;

    if-eqz p2, :cond_0

    .line 134
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 137
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardFMMViewController;->setFMMInfo()V

    .line 139
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/keyguard/KeyguardFMMView;

    sget p2, Lcom/android/systemui/R$id;->key_enter:I

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 141
    new-instance p2, Lcom/android/keyguard/KeyguardFMMViewController$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/android/keyguard/KeyguardFMMViewController$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/KeyguardFMMViewController;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardFMMViewController;->updateDrawableTint()V

    .line 150
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardFMMViewController;->updateFMMLayout()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardFMMViewController;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardFMMViewController;->setFMMInfo()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardFMMViewController;)I
    .locals 0

    .line 43
    iget p0, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mOrientation:I

    return p0
.end method

.method static synthetic access$102(Lcom/android/keyguard/KeyguardFMMViewController;I)I
    .locals 0

    .line 43
    iput p1, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mOrientation:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardFMMViewController;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardFMMViewController;->updateFMMLayout()V

    return-void
.end method

.method private synthetic lambda$new$0(Z)V
    .locals 4

    if-eqz p1, :cond_2

    .line 86
    const-class p1, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 87
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-interface {p1}, Lcom/android/systemui/knox/KnoxStateMonitor;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->disableDevicePermanently()V

    goto :goto_0

    .line 90
    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 91
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 90
    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_1

    .line 93
    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->handleAttemptLockout(J)V

    goto :goto_0

    .line 95
    :cond_1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    if-eqz p0, :cond_2

    .line 96
    sget p1, Lcom/android/systemui/R$string;->kg_pin_instructions:I

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 0

    .line 142
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/keyguard/KeyguardFMMView;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->doHapticKeyClick()V

    .line 143
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {p1}, Landroid/widget/EditText;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 144
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardFMMViewController;->verifyPasswordAndUnlock()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$setFMMInfo$2(Ljava/lang/String;Landroid/view/View;)V
    .locals 3

    const-string p2, "KeyguardFMMView"

    .line 216
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "tel"

    const/4 v2, 0x0

    .line 217
    invoke-static {v1, p1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p1, 0x10000000

    .line 218
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 220
    :try_start_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "click call button : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mIsVoiceCapacity:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object p1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 223
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can\'t find the component "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private synthetic lambda$setFMMInfo$3(Landroid/view/View;)V
    .locals 2

    const-string p1, "KeyguardFMMView"

    .line 229
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "click call button : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mIsVoiceCapacity:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t find the component "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private synthetic lambda$verifyPasswordAndUnlock$4(I[BZI)V
    .locals 2

    .line 268
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardFMMView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->setPasswordEntryInputEnabled(Z)V

    const/4 v0, 0x0

    .line 269
    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mPendingLockCheck:Landroid/os/AsyncTask;

    .line 270
    invoke-virtual {p0, p1, p3, p4, v1}, Lcom/android/keyguard/KeyguardFMMViewController;->onPasswordChecked(IZIZ)V

    const/4 p0, 0x0

    .line 271
    invoke-static {p2, p0}, Ljava/util/Arrays;->fill([BB)V

    return-void
.end method

.method private setFMMInfo()V
    .locals 5

    .line 197
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->getFMMMessage()Ljava/lang/String;

    move-result-object v1

    .line 198
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->getFMMPhone()Ljava/lang/String;

    move-result-object v0

    .line 200
    iget-object v2, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mOwnerMessage:Lcom/android/systemui/widget/SystemUITextView;

    const/16 v3, 0x8

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    const-string v2, "\\r\\n|\\r|\\n"

    const-string v4, " "

    .line 201
    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 202
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 203
    iget-object v1, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mOwnerMessage:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v1, v3}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    goto :goto_0

    .line 205
    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mOwnerMessage:Lcom/android/systemui/widget/SystemUITextView;

    new-instance v4, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v4}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 206
    iget-object v2, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mOwnerMessage:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mOwnerContactInfo:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mCallButton:Lcom/android/systemui/widget/SystemUIButton;

    if-eqz v1, :cond_4

    if-eqz v0, :cond_3

    .line 211
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 212
    iget-object v1, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mCallButton:Lcom/android/systemui/widget/SystemUIButton;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 213
    iget-object v1, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mCallButton:Lcom/android/systemui/widget/SystemUIButton;

    invoke-virtual {v1}, Landroid/widget/Button;->setSingleLine()V

    .line 214
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mIsVoiceCapacity:Z

    if-eqz v1, :cond_2

    .line 215
    iget-object v1, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mCallButton:Lcom/android/systemui/widget/SystemUIButton;

    new-instance v2, Lcom/android/keyguard/KeyguardFMMViewController$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0}, Lcom/android/keyguard/KeyguardFMMViewController$$ExternalSyntheticLambda2;-><init>(Lcom/android/keyguard/KeyguardFMMViewController;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 227
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mCallButton:Lcom/android/systemui/widget/SystemUIButton;

    new-instance v1, Lcom/android/keyguard/KeyguardFMMViewController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardFMMViewController$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardFMMViewController;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mOwnerContactInfo:Lcom/android/systemui/widget/SystemUITextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    .line 236
    iget-object p0, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mCallButton:Lcom/android/systemui/widget/SystemUIButton;

    invoke-virtual {p0, v1}, Lcom/android/systemui/widget/SystemUIButton;->setVisibility(I)V

    goto :goto_2

    .line 238
    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mOwnerContactInfo:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v0, v3}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    .line 239
    iget-object p0, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mCallButton:Lcom/android/systemui/widget/SystemUIButton;

    invoke-virtual {p0, v3}, Lcom/android/systemui/widget/SystemUIButton;->setVisibility(I)V

    :cond_4
    :goto_2
    return-void
.end method

.method private updateDrawableTint()V
    .locals 7

    .line 322
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mCallButton:Lcom/android/systemui/widget/SystemUIButton;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "background"

    .line 325
    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    move-result v0

    .line 326
    iget-object v1, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mCallButton:Lcom/android/systemui/widget/SystemUIButton;

    invoke-virtual {v1}, Landroid/widget/Button;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 327
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    if-eqz v4, :cond_2

    if-eqz v0, :cond_1

    .line 330
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/systemui/R$color;->kg_fmm_drawable_tint_white_bg:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    goto :goto_1

    .line 331
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/systemui/R$color;->kg_fmm_drawable_tint:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    :goto_1
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 329
    invoke-virtual {v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private updateFMMLayout()V
    .locals 4

    .line 338
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardFMMViewController;->updateFMMWeight()V

    .line 339
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 340
    iget v1, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mOrientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 341
    :goto_0
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->isDualDisplayPolicyAllowed()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    .line 349
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mMessageArea:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_4

    .line 350
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_2

    .line 354
    sget v2, Lcom/android/systemui/R$dimen;->status_bar_height:I

    .line 352
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sget v3, Lcom/android/systemui/R$dimen;->kg_biometric_view_min_height:I

    .line 353
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lcom/android/systemui/R$dimen;->kg_lock_icon_top_margin:I

    .line 354
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr v2, v0

    goto :goto_1

    .line 355
    :cond_2
    sget v2, Lcom/android/systemui/R$dimen;->kg_biometric_view_min_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    :goto_1
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 356
    iget-object p0, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mMessageArea:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    .line 342
    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mMessageArea:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_4

    .line 343
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 344
    sget v2, Lcom/android/systemui/R$dimen;->status_bar_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sget v3, Lcom/android/systemui/R$dimen;->kg_biometric_view_min_height:I

    .line 345
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr v2, v0

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 346
    iget-object p0, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mMessageArea:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    :goto_3
    return-void
.end method

.method private updateFMMWeight()V
    .locals 6

    .line 362
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardFMMView;

    sget v1, Lcom/android/systemui/R$id;->fmm_message:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 363
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardFMMView;

    sget v2, Lcom/android/systemui/R$id;->fmm_phone:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 364
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 365
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 366
    iget p0, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mOrientation:I

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    if-ne p0, v5, :cond_0

    .line 367
    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 p0, 0x0

    .line 368
    iput p0, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_0

    .line 370
    :cond_0
    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 371
    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 373
    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 374
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected getSecurityViewId()I
    .locals 0

    .line 318
    sget p0, Lcom/android/systemui/R$id;->keyguard_fmm_view:I

    return p0
.end method

.method protected onPasswordChecked(IZIZ)V
    .locals 4

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPatternChecked "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "KeyguardFMMView"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p3, 0x1

    if-eqz p2, :cond_1

    .line 280
    iget-object p4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p4, v1, v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->saveRemoteLockPassword(I[BI)V

    .line 281
    new-instance p4, Landroid/content/Intent;

    const-string v1, "com.samsung.Keyguard.UNLOCK_FMM_ALERT"

    invoke-direct {p4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v1, 0x1000020

    .line 282
    invoke-virtual {p4, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 284
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.samsung.android.permission.LOCK_SECURITY_MONITOR"

    invoke-virtual {v1, p4, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 286
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.SEND_SMS"

    invoke-virtual {v1, p4, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    const-string/jumbo p4, "send Broadcast : com.samsung.Keyguard.UNLOCK_FMM_ALERT"

    .line 287
    invoke-static {v0, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object p4, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p4, p1, p3}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->updateFMMLock(IZ)Z

    .line 292
    iget-object p4, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p4, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSecure(I)Z

    move-result p4

    if-eqz p4, :cond_0

    .line 293
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/keyguard/KeyguardSecurityCallback;->reset()V

    goto :goto_1

    .line 295
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object p4

    invoke-interface {p4, p3, p1}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ZI)V

    goto :goto_1

    :cond_1
    const-wide/16 v0, 0x0

    if-eqz p4, :cond_3

    .line 300
    iget-object p4, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p4, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->addFailedFMMUnlockAttempt(I)I

    .line 301
    iget-object p4, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p4, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedFMMUnlockAttempt(I)I

    move-result p4

    const/4 v2, 0x5

    if-eq p4, v2, :cond_2

    const/16 v2, 0x9

    if-le p4, v2, :cond_3

    .line 302
    :cond_2
    const-class p4, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 303
    invoke-static {p4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-interface {p4}, Lcom/android/systemui/knox/KnoxStateMonitor;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result p4

    if-nez p4, :cond_3

    .line 304
    iget-object p4, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/16 v2, 0x7530

    invoke-interface {p4, p1, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->setLockoutAttemptDeadline(II)J

    move-result-wide v2

    .line 305
    invoke-virtual {p0, v2, v3}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->handleAttemptLockout(J)V

    goto :goto_0

    :cond_3
    move-wide v2, v0

    :goto_0
    cmp-long p1, v2, v0

    if-nez p1, :cond_4

    .line 308
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    if-eqz p1, :cond_4

    .line 309
    iget-object p4, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p4, Lcom/android/keyguard/KeyguardFMMView;

    invoke-virtual {p4}, Lcom/android/keyguard/KeyguardFMMView;->getWrongPasswordStringId()I

    move-result p4

    invoke-virtual {p1, p4}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(I)V

    .line 310
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardMessageArea;->displayFailedAnimation()V

    .line 313
    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardFMMView;

    xor-int/lit8 p1, p2, 0x1

    invoke-virtual {p0, p3, p1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->resetPasswordText(ZZ)V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 192
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardFMMViewController;->setFMMInfo()V

    .line 193
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardFMMViewController;->updateFMMLayout()V

    return-void
.end method

.method protected onViewAttached()V
    .locals 2

    .line 155
    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->onViewAttached()V

    .line 157
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 158
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 159
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardFMMView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mOnWindowFocusChangeListener:Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    return-void
.end method

.method protected onViewDetached()V
    .locals 2

    .line 164
    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->onViewDetached()V

    .line 166
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 167
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    .line 168
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardFMMView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mOnWindowFocusChangeListener:Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    return-void
.end method

.method protected resetState()V
    .locals 4

    .line 172
    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->resetState()V

    .line 173
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardFMMViewController;->setFMMInfo()V

    .line 174
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardFMMViewController;->updateFMMLayout()V

    .line 175
    const-class v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-interface {v0}, Lcom/android/systemui/knox/KnoxStateMonitor;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->disableDevicePermanently()V

    goto :goto_0

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 180
    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->handleAttemptLockout(J)V

    goto :goto_0

    .line 182
    :cond_1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    if-eqz p0, :cond_2

    .line 183
    sget v0, Lcom/android/systemui/R$string;->kg_pin_instructions:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public updateStyle(JLandroid/app/SemWallpaperColors;)V
    .locals 0

    .line 380
    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->initializeBottomContainerView(J)V

    .line 381
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardFMMViewController;->updateDrawableTint()V

    return-void
.end method

.method protected verifyPasswordAndUnlock()V
    .locals 5

    .line 245
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->getPasswordText()[B

    move-result-object v0

    .line 246
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    .line 248
    iget-object v2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v2, Lcom/android/keyguard/KeyguardFMMView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardPinBasedInputView;->setPasswordEntryInputEnabled(Z)V

    .line 249
    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mPendingLockCheck:Landroid/os/AsyncTask;

    if-eqz v2, :cond_0

    .line 250
    invoke-virtual {v2, v3}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 253
    :cond_0
    array-length v2, v0

    const/4 v4, 0x3

    if-gt v2, v4, :cond_1

    .line 256
    iget-object v2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v2, Lcom/android/keyguard/KeyguardFMMView;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/keyguard/KeyguardPinBasedInputView;->setPasswordEntryInputEnabled(Z)V

    .line 257
    invoke-virtual {p0, v1, v3, v3, v3}, Lcom/android/keyguard/KeyguardFMMViewController;->onPasswordChecked(IZIZ)V

    .line 258
    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([BB)V

    return-void

    .line 262
    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    new-instance v4, Lcom/android/keyguard/KeyguardFMMViewController$$ExternalSyntheticLambda4;

    invoke-direct {v4, p0, v1, v0}, Lcom/android/keyguard/KeyguardFMMViewController$$ExternalSyntheticLambda4;-><init>(Lcom/android/keyguard/KeyguardFMMViewController;I[B)V

    invoke-static {v2, v3, v0, v1, v4}, Lcom/android/internal/widget/LockPatternChecker;->checkRemoteLockPassword(Lcom/android/internal/widget/LockPatternUtils;I[BILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mPendingLockCheck:Landroid/os/AsyncTask;

    return-void
.end method
