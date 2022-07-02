.class public Lcom/android/keyguard/EmergencyButtonController;
.super Lcom/android/systemui/util/ViewController;
.source "EmergencyButtonController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/EmergencyButtonController$Factory;,
        Lcom/android/keyguard/EmergencyButtonController$EmergencyButtonCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/util/ViewController<",
        "Lcom/android/keyguard/EmergencyButton;",
        ">;"
    }
.end annotation


# instance fields
.field private final mActivityTaskManager:Landroid/app/ActivityTaskManager;

.field private mBouncerShowing:Z

.field private final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field private final mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

.field private mCurrentSimState:I

.field private mEmergencyButtonCallback:Lcom/android/keyguard/EmergencyButtonController$EmergencyButtonCallback;

.field private final mImm:Landroid/view/inputmethod/InputMethodManager;

.field private final mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mKeyguardShowing:Z

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private mPasswordEntry:Landroid/view/View;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private final mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private final mSettingsValueList:[Landroid/net/Uri;

.field private mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

.field private mSubId:I

.field private final mTelecomManager:Landroid/telecom/TelecomManager;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public static synthetic $r8$lambda$2h7bXwThbpVEOIZgpGdSGiXR9u4(Lcom/android/keyguard/EmergencyButtonController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/EmergencyButtonController;->lambda$setEmergencyView$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ijHpXbWm3peqrtyfqK4lKTZFXBE(Lcom/android/keyguard/EmergencyButtonController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/EmergencyButtonController;->updateEmergencyCallButton()V

    return-void
.end method

.method public static synthetic $r8$lambda$mlIsSuPkcJlEMdmxNIP6khZXync(Lcom/android/keyguard/EmergencyButtonController;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/EmergencyButtonController;->lambda$new$0(Landroid/net/Uri;)V

    return-void
.end method

.method private constructor <init>(Lcom/android/keyguard/EmergencyButton;Lcom/android/systemui/statusbar/policy/ConfigurationController;Landroid/view/inputmethod/InputMethodManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/telephony/TelephonyManager;Landroid/os/PowerManager;Landroid/app/ActivityTaskManager;Lcom/android/systemui/statusbar/phone/ShadeController;Landroid/telecom/TelecomManager;Lcom/android/internal/logging/MetricsLogger;)V
    .locals 2

    .line 157
    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    const/4 p1, 0x1

    .line 78
    iput-boolean p1, p0, Lcom/android/keyguard/EmergencyButtonController;->mKeyguardShowing:Z

    const/4 v0, 0x0

    .line 80
    iput-boolean v0, p0, Lcom/android/keyguard/EmergencyButtonController;->mBouncerShowing:Z

    .line 84
    iput p1, p0, Lcom/android/keyguard/EmergencyButtonController;->mCurrentSimState:I

    .line 86
    new-instance v1, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/EmergencyButtonController;)V

    iput-object v1, p0, Lcom/android/keyguard/EmergencyButtonController;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    new-array p1, p1, [Landroid/net/Uri;

    const-string v1, "airplane_mode_on"

    .line 90
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    aput-object v1, p1, v0

    iput-object p1, p0, Lcom/android/keyguard/EmergencyButtonController;->mSettingsValueList:[Landroid/net/Uri;

    const/4 p1, 0x0

    .line 93
    iput-object p1, p0, Lcom/android/keyguard/EmergencyButtonController;->mPasswordEntry:Landroid/view/View;

    .line 96
    new-instance p1, Lcom/android/keyguard/EmergencyButtonController$1;

    invoke-direct {p1, p0}, Lcom/android/keyguard/EmergencyButtonController$1;-><init>(Lcom/android/keyguard/EmergencyButtonController;)V

    iput-object p1, p0, Lcom/android/keyguard/EmergencyButtonController;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 143
    new-instance p1, Lcom/android/keyguard/EmergencyButtonController$2;

    invoke-direct {p1, p0}, Lcom/android/keyguard/EmergencyButtonController$2;-><init>(Lcom/android/keyguard/EmergencyButtonController;)V

    iput-object p1, p0, Lcom/android/keyguard/EmergencyButtonController;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    .line 158
    iput-object p2, p0, Lcom/android/keyguard/EmergencyButtonController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 159
    iput-object p4, p0, Lcom/android/keyguard/EmergencyButtonController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 160
    iput-object p5, p0, Lcom/android/keyguard/EmergencyButtonController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 161
    iput-object p6, p0, Lcom/android/keyguard/EmergencyButtonController;->mPowerManager:Landroid/os/PowerManager;

    .line 162
    iput-object p7, p0, Lcom/android/keyguard/EmergencyButtonController;->mActivityTaskManager:Landroid/app/ActivityTaskManager;

    .line 163
    iput-object p8, p0, Lcom/android/keyguard/EmergencyButtonController;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    .line 164
    iput-object p9, p0, Lcom/android/keyguard/EmergencyButtonController;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 165
    iput-object p10, p0, Lcom/android/keyguard/EmergencyButtonController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 168
    iput-object p3, p0, Lcom/android/keyguard/EmergencyButtonController;->mImm:Landroid/view/inputmethod/InputMethodManager;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/keyguard/EmergencyButton;Lcom/android/systemui/statusbar/policy/ConfigurationController;Landroid/view/inputmethod/InputMethodManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/telephony/TelephonyManager;Landroid/os/PowerManager;Landroid/app/ActivityTaskManager;Lcom/android/systemui/statusbar/phone/ShadeController;Landroid/telecom/TelecomManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/keyguard/EmergencyButtonController$1;)V
    .locals 0

    .line 62
    invoke-direct/range {p0 .. p10}, Lcom/android/keyguard/EmergencyButtonController;-><init>(Lcom/android/keyguard/EmergencyButton;Lcom/android/systemui/statusbar/policy/ConfigurationController;Landroid/view/inputmethod/InputMethodManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/telephony/TelephonyManager;Landroid/os/PowerManager;Landroid/app/ActivityTaskManager;Lcom/android/systemui/statusbar/phone/ShadeController;Landroid/telecom/TelecomManager;Lcom/android/internal/logging/MetricsLogger;)V

    return-void
.end method

.method static synthetic access$002(Lcom/android/keyguard/EmergencyButtonController;I)I
    .locals 0

    .line 62
    iput p1, p0, Lcom/android/keyguard/EmergencyButtonController;->mSubId:I

    return p1
.end method

.method static synthetic access$102(Lcom/android/keyguard/EmergencyButtonController;I)I
    .locals 0

    .line 62
    iput p1, p0, Lcom/android/keyguard/EmergencyButtonController;->mCurrentSimState:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/keyguard/EmergencyButtonController;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/android/keyguard/EmergencyButtonController;->updateEmergencyCallButton()V

    return-void
.end method

.method static synthetic access$302(Lcom/android/keyguard/EmergencyButtonController;Z)Z
    .locals 0

    .line 62
    iput-boolean p1, p0, Lcom/android/keyguard/EmergencyButtonController;->mKeyguardShowing:Z

    return p1
.end method

.method static synthetic access$402(Lcom/android/keyguard/EmergencyButtonController;Z)Z
    .locals 0

    .line 62
    iput-boolean p1, p0, Lcom/android/keyguard/EmergencyButtonController;->mBouncerShowing:Z

    return p1
.end method

.method private callToEmergencyLine(Ljava/lang/String;)V
    .locals 4

    const-string v0, "EmergencyButton"

    .line 338
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_EMERGENCY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "tel"

    const/4 v3, 0x0

    .line 339
    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 p1, 0x14800000

    .line 340
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    const-string p1, "callToEmergencyLine"

    .line 344
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 346
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v2}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    new-instance v2, Landroid/os/UserHandle;

    .line 347
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    .line 345
    invoke-virtual {p1, v1, p0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 349
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t find the component "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private getEmergencyNumber()Ljava/lang/String;
    .locals 3

    const-string v0, ""

    .line 320
    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/EmergencyButtonController;->mPasswordEntry:Landroid/view/View;

    instance-of v2, v1, Lcom/android/keyguard/SecPasswordTextView;

    if-eqz v2, :cond_0

    .line 321
    check-cast v1, Lcom/android/keyguard/SecPasswordTextView;

    invoke-virtual {v1}, Lcom/android/keyguard/SecPasswordTextView;->getPasswordText()Ljava/lang/String;

    move-result-object v1

    .line 322
    iget-object p0, p0, Lcom/android/keyguard/EmergencyButtonController;->mPasswordEntry:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/PasswordTextView;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2}, Lcom/android/keyguard/PasswordTextView;->reset(ZZ)V

    :goto_0
    move-object v0, v1

    goto :goto_1

    .line 323
    :cond_0
    instance-of v2, v1, Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 324
    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 325
    iget-object p0, p0, Lcom/android/keyguard/EmergencyButtonController;->mPasswordEntry:Landroid/view/View;

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 326
    :cond_1
    instance-of v2, v1, Landroid/widget/EditText;

    if-eqz v2, :cond_2

    .line 327
    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 328
    iget-object p0, p0, Lcom/android/keyguard/EmergencyButtonController;->mPasswordEntry:Landroid/view/View;

    check-cast p0, Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_2
    :goto_1
    return-object v0
.end method

.method private synthetic lambda$new$0(Landroid/net/Uri;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/android/keyguard/EmergencyButtonController;->updateEmergencyCallButton()V

    return-void
.end method

.method private synthetic lambda$setEmergencyView$2(Landroid/view/View;)V
    .locals 0

    .line 223
    invoke-virtual {p0}, Lcom/android/keyguard/EmergencyButtonController;->takeEmergencyCallAction()V

    return-void
.end method

.method private launchEmergencyCall()V
    .locals 5

    .line 288
    iget-object v0, p0, Lcom/android/keyguard/EmergencyButtonController;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/EmergencyButton;

    invoke-virtual {v1}, Landroid/widget/Button;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    const-string v0, "EmergencyButton"

    const-string/jumbo v1, "takeEmergencyCallAction - launchEmergencyCall()"

    .line 290
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2, v2}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v1

    .line 292
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    move-result v3

    .line 293
    invoke-virtual {v1, v3}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    .line 294
    iget-object v3, p0, Lcom/android/keyguard/EmergencyButtonController;->mTelecomManager:Landroid/telecom/TelecomManager;

    if-nez v3, :cond_0

    const-string p0, "TelecomManager was null, cannot launch emergency dialer"

    .line 295
    invoke-static {v0, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 298
    invoke-virtual {v3, v0}, Landroid/telecom/TelecomManager;->createLaunchEmergencyDialerIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v3, 0x14000000

    .line 299
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    const/4 v3, 0x1

    const-string v4, "com.android.phone.EmergencyDialer.extra.ENTRY_TYPE"

    .line 301
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 303
    const-class v3, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isAdminLock()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "enable_ice_contact_list"

    .line 304
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "enable_emergency_medical_info"

    .line 305
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 307
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    new-instance v2, Landroid/os/UserHandle;

    .line 308
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    .line 307
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    return-void
.end method

.method private updateEmergencyCallButton()V
    .locals 9

    .line 201
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 203
    iget-boolean v1, p0, Lcom/android/keyguard/EmergencyButtonController;->mKeyguardShowing:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/keyguard/EmergencyButtonController;->mBouncerShowing:Z

    if-nez v1, :cond_0

    return-void

    .line 206
    :cond_0
    move-object v2, v0

    check-cast v2, Lcom/android/keyguard/EmergencyButton;

    iget-object v0, p0, Lcom/android/keyguard/EmergencyButtonController;->mTelecomManager:Landroid/telecom/TelecomManager;

    if-eqz v0, :cond_1

    .line 207
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move v3, v0

    iget-object v0, p0, Lcom/android/keyguard/EmergencyButtonController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 208
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v4

    iget-object v0, p0, Lcom/android/keyguard/EmergencyButtonController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 209
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinVoiceSecure()Z

    move-result v5

    iget v6, p0, Lcom/android/keyguard/EmergencyButtonController;->mSubId:I

    iget v7, p0, Lcom/android/keyguard/EmergencyButtonController;->mCurrentSimState:I

    iget-boolean v8, p0, Lcom/android/keyguard/EmergencyButtonController;->mBouncerShowing:Z

    .line 206
    invoke-virtual/range {v2 .. v8}, Lcom/android/keyguard/EmergencyButton;->updateEmergencyCallButton(ZZZIIZ)V

    :cond_2
    return-void
.end method


# virtual methods
.method protected onInit()V
    .locals 1

    .line 174
    new-instance v0, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticLambda2;-><init>(Lcom/android/keyguard/EmergencyButtonController;)V

    invoke-static {v0}, Lcom/android/systemui/DejankUtils;->whitelistIpcs(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onViewAttached()V
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/android/keyguard/EmergencyButtonController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/EmergencyButtonController;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 180
    iget-object v0, p0, Lcom/android/keyguard/EmergencyButtonController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v1, p0, Lcom/android/keyguard/EmergencyButtonController;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 182
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/EmergencyButtonController;->setEmergencyView(Landroid/view/View;)V

    .line 186
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_EMERGENCY_BUTTON_KOR:Z

    if-eqz v0, :cond_0

    .line 187
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    iget-object v1, p0, Lcom/android/keyguard/EmergencyButtonController;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    iget-object p0, p0, Lcom/android/keyguard/EmergencyButtonController;->mSettingsValueList:[Landroid/net/Uri;

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method protected onViewDetached()V
    .locals 2

    .line 193
    iget-object v0, p0, Lcom/android/keyguard/EmergencyButtonController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/EmergencyButtonController;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 194
    iget-object v0, p0, Lcom/android/keyguard/EmergencyButtonController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v1, p0, Lcom/android/keyguard/EmergencyButtonController;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    .line 195
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_EMERGENCY_BUTTON_KOR:Z

    if-eqz v0, :cond_0

    .line 196
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    iget-object p0, p0, Lcom/android/keyguard/EmergencyButtonController;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v0, p0}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    :cond_0
    return-void
.end method

.method public setEmergencyButtonCallback(Lcom/android/keyguard/EmergencyButtonController$EmergencyButtonCallback;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/android/keyguard/EmergencyButtonController;->mEmergencyButtonCallback:Lcom/android/keyguard/EmergencyButtonController$EmergencyButtonCallback;

    return-void
.end method

.method public setEmergencyView(Landroid/view/View;)V
    .locals 1

    .line 222
    check-cast p1, Lcom/android/keyguard/EmergencyButton;

    iput-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 223
    check-cast p1, Lcom/android/keyguard/EmergencyButton;

    new-instance v0, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/EmergencyButtonController;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setPasswordEntryView(Landroid/view/View;)V
    .locals 0

    .line 313
    iput-object p1, p0, Lcom/android/keyguard/EmergencyButtonController;->mPasswordEntry:Landroid/view/View;

    return-void
.end method

.method public takeEmergencyCallAction()V
    .locals 4

    .line 233
    iget-object v0, p0, Lcom/android/keyguard/EmergencyButtonController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    .line 234
    iget-object v0, p0, Lcom/android/keyguard/EmergencyButtonController;->mPowerManager:Landroid/os/PowerManager;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 235
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/EmergencyButtonController;->mActivityTaskManager:Landroid/app/ActivityTaskManager;

    invoke-virtual {v0}, Landroid/app/ActivityTaskManager;->stopSystemLockTaskMode()V

    .line 238
    invoke-static {}, Lcom/android/systemui/util/SafeUIState;->isSysUiSafeModeEnabled()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 239
    iget-object v0, p0, Lcom/android/keyguard/EmergencyButtonController;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/phone/ShadeController;->collapsePanel(Z)V

    .line 242
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/EmergencyButtonController;->mTelecomManager:Landroid/telecom/TelecomManager;

    const-string v3, "EmergencyButton"

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "takeEmergencyCallAction - showInCallScreen(false)"

    .line 244
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object v0, p0, Lcom/android/keyguard/EmergencyButtonController;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v0, v2}, Landroid/telecom/TelecomManager;->showInCallScreen(Z)V

    .line 247
    iget-object p0, p0, Lcom/android/keyguard/EmergencyButtonController;->mEmergencyButtonCallback:Lcom/android/keyguard/EmergencyButtonController$EmergencyButtonCallback;

    if-eqz p0, :cond_5

    .line 248
    invoke-interface {p0}, Lcom/android/keyguard/EmergencyButtonController$EmergencyButtonCallback;->onEmergencyButtonClickedWhenInCall()V

    goto :goto_0

    .line 251
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/EmergencyButtonController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportEmergencyCallAction(Z)V

    .line 252
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_DIRECT_CALL_TO_ECC:Z

    if-eqz v0, :cond_3

    .line 253
    invoke-direct {p0}, Lcom/android/keyguard/EmergencyButtonController;->getEmergencyNumber()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    .line 254
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 255
    invoke-direct {p0, v0}, Lcom/android/keyguard/EmergencyButtonController;->callToEmergencyLine(Ljava/lang/String;)V

    return-void

    .line 259
    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/EmergencyButtonController;->mTelecomManager:Landroid/telecom/TelecomManager;

    if-nez v0, :cond_4

    const-string p0, "TelecomManager was null, cannot launch emergency dialer"

    .line 260
    invoke-static {v3, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    const/4 v2, 0x0

    .line 264
    invoke-virtual {v0, v2}, Landroid/telecom/TelecomManager;->createLaunchEmergencyDialerIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v2, 0x14800000

    .line 265
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "com.android.phone.EmergencyDialer.extra.ENTRY_TYPE"

    .line 268
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 272
    invoke-direct {p0}, Lcom/android/keyguard/EmergencyButtonController;->launchEmergencyCall()V

    const-string p0, "102"

    const-string v0, "1031"

    .line 274
    invoke-static {p0, v0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method
