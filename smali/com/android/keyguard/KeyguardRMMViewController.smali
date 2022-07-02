.class public Lcom/android/keyguard/KeyguardRMMViewController;
.super Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;
.source "KeyguardRMMViewController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/keyguard/KeyguardSecPinBasedInputViewController<",
        "Lcom/android/keyguard/KeyguardRMMView;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCheckPasswordCallback:Landroid/os/IRemoteCallback;

.field private final mClientCallButton:Lcom/android/systemui/widget/SystemUIButton;

.field private final mClientContact:Lcom/android/systemui/widget/SystemUITextView;

.field private final mClientMessage:Lcom/android/systemui/widget/SystemUITextView;

.field private mClientName:Ljava/lang/String;

.field private final mClientTitle:Lcom/android/systemui/widget/SystemUITextView;

.field private final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field private final mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

.field private final mContactArea:Landroid/view/ViewGroup;

.field private mCurrentOrientation:I

.field private final mHandler:Landroid/os/Handler;

.field private final mIsVoiceCapacity:Z

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private final mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

.field private final mMessageArea:Landroid/widget/LinearLayout;

.field private final mMessageAreaSpace:Landroid/view/View;

.field private final mOnWindowFocusChangeListener:Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;

.field private mPhoneNumber:Ljava/lang/String;

.field private final mRMMContainer:Landroid/view/ViewGroup;

.field private mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;


# direct methods
.method public static synthetic $r8$lambda$BPafG7qgZmWgSXQGb2QVt9Wy-JY(Lcom/android/keyguard/KeyguardRMMViewController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardRMMViewController;->lambda$new$0(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$KAhlS5DR_ddLbhnJ89oLcHNdiIY(Lcom/android/keyguard/KeyguardRMMViewController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardRMMViewController;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pN8b2UYHq5iicmZHZN492gwkt28(Lcom/android/keyguard/KeyguardRMMViewController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardRMMViewController;->lambda$setRMMInfo$2(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/keyguard/KeyguardRMMView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/keyguard/LiftToActivateListener;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/vibrate/VibrationUtil;Lcom/android/keyguard/KeyguardRotationController;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V
    .locals 0

    .line 136
    invoke-direct/range {p0 .. p14}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;-><init>(Lcom/android/keyguard/KeyguardSecPinBasedInputView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/keyguard/LiftToActivateListener;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/vibrate/VibrationUtil;Lcom/android/keyguard/KeyguardRotationController;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V

    const/4 p1, 0x0

    .line 60
    iput-object p1, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    .line 61
    iput-object p1, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    .line 71
    new-instance p1, Lcom/android/keyguard/KeyguardRMMViewController$1;

    invoke-direct {p1, p0}, Lcom/android/keyguard/KeyguardRMMViewController$1;-><init>(Lcom/android/keyguard/KeyguardRMMViewController;)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mCheckPasswordCallback:Landroid/os/IRemoteCallback;

    .line 82
    new-instance p1, Lcom/android/keyguard/KeyguardRMMViewController$2;

    invoke-direct {p1, p0}, Lcom/android/keyguard/KeyguardRMMViewController$2;-><init>(Lcom/android/keyguard/KeyguardRMMViewController;)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 91
    new-instance p1, Lcom/android/keyguard/KeyguardRMMViewController$3;

    invoke-direct {p1, p0}, Lcom/android/keyguard/KeyguardRMMViewController$3;-><init>(Lcom/android/keyguard/KeyguardRMMViewController;)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    .line 102
    new-instance p1, Lcom/android/keyguard/KeyguardRMMViewController$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/android/keyguard/KeyguardRMMViewController$$ExternalSyntheticLambda2;-><init>(Lcom/android/keyguard/KeyguardRMMViewController;)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mOnWindowFocusChangeListener:Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;

    .line 112
    new-instance p1, Lcom/android/keyguard/KeyguardRMMViewController$4;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p1, p0, p3}, Lcom/android/keyguard/KeyguardRMMViewController$4;-><init>(Lcom/android/keyguard/KeyguardRMMViewController;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mHandler:Landroid/os/Handler;

    .line 141
    iput-object p2, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 142
    iput-object p14, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 144
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x1110180

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mIsVoiceCapacity:Z

    .line 146
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/keyguard/KeyguardRMMView;

    sget p2, Lcom/android/systemui/R$id;->keyguard_rmm_title:I

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/widget/SystemUITextView;

    iput-object p1, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mClientTitle:Lcom/android/systemui/widget/SystemUITextView;

    .line 147
    iget-object p2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p2, Lcom/android/keyguard/KeyguardRMMView;

    sget p3, Lcom/android/systemui/R$id;->keyguard_rmm_message:I

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/widget/SystemUITextView;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mClientMessage:Lcom/android/systemui/widget/SystemUITextView;

    .line 148
    iget-object p2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p2, Lcom/android/keyguard/KeyguardRMMView;

    sget p3, Lcom/android/systemui/R$id;->keyguard_rmm_contact_text:I

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/widget/SystemUITextView;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mClientContact:Lcom/android/systemui/widget/SystemUITextView;

    .line 149
    iget-object p2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p2, Lcom/android/keyguard/KeyguardRMMView;

    sget p3, Lcom/android/systemui/R$id;->keyguard_rmm_contact_button:I

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/widget/SystemUIButton;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mClientCallButton:Lcom/android/systemui/widget/SystemUIButton;

    .line 150
    iget-object p2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p2, Lcom/android/keyguard/KeyguardRMMView;

    sget p3, Lcom/android/systemui/R$id;->keyguard_rmm_container:I

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mRMMContainer:Landroid/view/ViewGroup;

    .line 151
    iget-object p2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p2, Lcom/android/keyguard/KeyguardRMMView;

    sget p3, Lcom/android/systemui/R$id;->rmm_contact_area:I

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mContactArea:Landroid/view/ViewGroup;

    .line 152
    iget-object p2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p2, Lcom/android/keyguard/KeyguardRMMView;

    sget p3, Lcom/android/systemui/R$id;->rmm_message_area:I

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mMessageArea:Landroid/widget/LinearLayout;

    .line 153
    iget-object p2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p2, Lcom/android/keyguard/KeyguardRMMView;

    sget p3, Lcom/android/systemui/R$id;->rmm_message_area_space:I

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mMessageAreaSpace:Landroid/view/View;

    .line 155
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardRMMViewController;->setRMMInfo()V

    .line 156
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->orientation:I

    iput p2, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mCurrentOrientation:I

    .line 157
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardRMMViewController;->updateRMMLayout()V

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    .line 160
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 162
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/keyguard/KeyguardRMMView;

    sget p2, Lcom/android/systemui/R$id;->key_enter:I

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 164
    new-instance p2, Lcom/android/keyguard/KeyguardRMMViewController$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/keyguard/KeyguardRMMViewController$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardRMMViewController;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardRMMViewController;)Landroid/os/Handler;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardRMMViewController;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardRMMViewController;->setRMMInfo()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardRMMViewController;)I
    .locals 0

    .line 47
    iget p0, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mCurrentOrientation:I

    return p0
.end method

.method static synthetic access$202(Lcom/android/keyguard/KeyguardRMMViewController;I)I
    .locals 0

    .line 47
    iput p1, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mCurrentOrientation:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/keyguard/KeyguardRMMViewController;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardRMMViewController;->updateRMMLayout()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/keyguard/KeyguardRMMViewController;I)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardRMMViewController;->checkUnlockAttempts(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/keyguard/KeyguardRMMViewController;)Landroid/content/res/Resources;
    .locals 0

    .line 47
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/keyguard/KeyguardRMMViewController;)Landroid/content/res/Resources;
    .locals 0

    .line 47
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    return-object p0
.end method

.method private checkUnlockAttempts(I)V
    .locals 6

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkUnlockAttempts "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardRMMView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardRMMView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardPinBasedInputView;->setPasswordEntryInputEnabled(Z)V

    .line 287
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardRMMView;

    invoke-virtual {v0, v2, v2}, Lcom/android/keyguard/KeyguardPinBasedInputView;->resetPasswordText(ZZ)V

    if-nez p1, :cond_0

    .line 291
    :try_start_0
    new-instance p1, Lcom/android/internal/widget/RemoteLockInfo$Builder;

    const/4 v0, 0x2

    const/4 v3, 0x0

    invoke-direct {p1, v0, v3}, Lcom/android/internal/widget/RemoteLockInfo$Builder;-><init>(IZ)V

    invoke-virtual {p1}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->build()Lcom/android/internal/widget/RemoteLockInfo;

    move-result-object p1

    .line 292
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardRMMViewController;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-interface {v0, v3, p1}, Lcom/android/internal/widget/ILockSettings;->setRemoteLock(ILcom/android/internal/widget/RemoteLockInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed CIS LOCK clear!!"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object p0

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p1

    invoke-interface {p0, v2, p1}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ZI)V

    goto :goto_1

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    if-eqz v0, :cond_1

    iget v1, v0, Lcom/android/internal/widget/RemoteLockInfo;->allowFailCount:I

    if-lez v1, :cond_1

    iget-wide v2, v0, Lcom/android/internal/widget/RemoteLockInfo;->lockTimeOut:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    if-lez p1, :cond_1

    .line 300
    rem-int/2addr p1, v1

    if-nez p1, :cond_1

    .line 301
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardRMMViewController;->setRemoteLockoutAttemptDeadline(I)J

    move-result-wide v0

    .line 302
    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardRMMViewController;->handleAttemptLockout(J)V

    return-void

    .line 306
    :cond_1
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardRMMView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardRMMView;->getWrongPasswordStringId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(I)V

    .line 307
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->displayFailedAnimation()V

    :goto_1
    return-void
.end method

.method private getLockSettings()Lcom/android/internal/widget/ILockSettings;
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    if-nez v0, :cond_0

    const-string v0, "lock_settings"

    .line 341
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 340
    invoke-static {v0}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    .line 343
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    return-object p0
.end method

.method private getLong(Ljava/lang/String;JI)J
    .locals 0

    .line 373
    :try_start_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardRMMViewController;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/ILockSettings;->getLong(Ljava/lang/String;JI)J

    move-result-wide p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    return-wide p2
.end method

.method private getRemoteLockoutAttemptDeadline(I)J
    .locals 8

    .line 355
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    if-nez v0, :cond_0

    const-wide/16 p0, -0x1

    return-wide p0

    .line 357
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iget v1, v1, Lcom/android/internal/widget/RemoteLockInfo;->lockType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "remotelockscreen.lockoutdeadline"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3, p1}, Lcom/android/keyguard/KeyguardRMMViewController;->getLong(Ljava/lang/String;JI)J

    move-result-wide v4

    .line 358
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-gtz v0, :cond_1

    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iget v4, v4, Lcom/android/internal/widget/RemoteLockInfo;->lockType:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2, v3, p1}, Lcom/android/keyguard/KeyguardRMMViewController;->setLong(Ljava/lang/String;JI)V

    return-wide v2

    .line 362
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iget-wide v2, v0, Lcom/android/internal/widget/RemoteLockInfo;->lockTimeOut:J

    add-long/2addr v6, v2

    cmp-long v0, v4, v6

    if-lez v0, :cond_2

    .line 363
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 364
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iget-wide v4, v0, Lcom/android/internal/widget/RemoteLockInfo;->lockTimeOut:J

    add-long/2addr v2, v4

    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iget v4, v4, Lcom/android/internal/widget/RemoteLockInfo;->lockType:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2, v3, p1}, Lcom/android/keyguard/KeyguardRMMViewController;->setLong(Ljava/lang/String;JI)V

    return-wide v2

    :cond_2
    return-wide v4
.end method

.method private synthetic lambda$new$0(Z)V
    .locals 4

    .line 104
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 105
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    .line 104
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    if-eqz p1, :cond_0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-gtz p1, :cond_0

    .line 107
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    .line 108
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->kg_rmm_lock_instructions:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mClientName:Ljava/lang/String;

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 107
    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 0

    .line 165
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/keyguard/KeyguardRMMView;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->doHapticKeyClick()V

    .line 166
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {p1}, Landroid/widget/EditText;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 167
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardRMMViewController;->verifyPasswordAndUnlock()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$setRMMInfo$2(Landroid/view/View;)V
    .locals 4

    const-string p1, "KeyguardRMMView"

    .line 240
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mPhoneNumber:Ljava/lang/String;

    const-string/jumbo v2, "tel"

    const/4 v3, 0x0

    .line 241
    invoke-static {v2, v1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x10000000

    .line 242
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    const-string v1, "click call button"

    .line 244
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 247
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

.method private setLong(Ljava/lang/String;JI)V
    .locals 0

    .line 381
    :try_start_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardRMMViewController;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/ILockSettings;->setLong(Ljava/lang/String;JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 383
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Couldn\'t write long "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KeyguardRMMView"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private setRMMInfo()V
    .locals 4

    .line 209
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getRemoteLockInfo()Lcom/android/internal/widget/RemoteLockInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    const-string v1, "KeyguardRMMView"

    if-nez v0, :cond_0

    const-string v0, "mRemoteLockInfo is null - dismiss"

    .line 211
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-interface {p0, v0, v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ZI)V

    return-void

    .line 216
    :cond_0
    iget-object v0, v0, Lcom/android/internal/widget/RemoteLockInfo;->message:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 217
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "\\r\\n|\\r|\\n"

    const-string v3, " "

    .line 218
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 219
    iget-object v2, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mClientMessage:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v2, :cond_2

    .line 220
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const-string v0, "mRemoteLockInfo.message is null"

    .line 222
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iget-object v0, v0, Lcom/android/internal/widget/RemoteLockInfo;->clientName:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    .line 225
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mClientName:Ljava/lang/String;

    .line 226
    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iget-object v0, v0, Lcom/android/internal/widget/RemoteLockInfo;->phoneNumber:Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mClientName:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 227
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mPhoneNumber:Ljava/lang/String;

    .line 228
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mClientContact:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v0, :cond_5

    .line 229
    iget-object v1, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mClientName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    const-string v0, "mRemoteLockInfo.phoneNumber is null"

    .line 231
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mClientContact:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mClientCallButton:Lcom/android/systemui/widget/SystemUIButton;

    if-eqz v0, :cond_7

    .line 235
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mIsVoiceCapacity:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mPhoneNumber:Ljava/lang/String;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 236
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mClientContact:Lcom/android/systemui/widget/SystemUITextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    .line 237
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mClientCallButton:Lcom/android/systemui/widget/SystemUIButton;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 238
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mClientCallButton:Lcom/android/systemui/widget/SystemUIButton;

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUIButton;->setVisibility(I)V

    .line 239
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mClientCallButton:Lcom/android/systemui/widget/SystemUIButton;

    new-instance v2, Lcom/android/keyguard/KeyguardRMMViewController$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardRMMViewController$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/KeyguardRMMViewController;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mClientContact:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    .line 251
    iget-object p0, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mClientCallButton:Lcom/android/systemui/widget/SystemUIButton;

    invoke-virtual {p0, v1}, Lcom/android/systemui/widget/SystemUIButton;->setVisibility(I)V

    goto :goto_2

    .line 253
    :cond_6
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mClientContact:Lcom/android/systemui/widget/SystemUITextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    .line 254
    iget-object p0, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mClientCallButton:Lcom/android/systemui/widget/SystemUIButton;

    invoke-virtual {p0, v1}, Lcom/android/systemui/widget/SystemUIButton;->setVisibility(I)V

    :cond_7
    :goto_2
    return-void
.end method

.method private setRemoteLockoutAttemptDeadline(I)J
    .locals 4

    .line 347
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    if-nez v0, :cond_0

    const-wide/16 p0, -0x1

    return-wide p0

    .line 349
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iget-wide v2, v2, Lcom/android/internal/widget/RemoteLockInfo;->lockTimeOut:J

    add-long/2addr v0, v2

    .line 350
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iget v3, v3, Lcom/android/internal/widget/RemoteLockInfo;->lockType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "remotelockscreen.lockoutdeadline"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v0, v1, p1}, Lcom/android/keyguard/KeyguardRMMViewController;->setLong(Ljava/lang/String;JI)V

    return-wide v0
.end method

.method private updateRMMLayout()V
    .locals 9

    .line 388
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 389
    iget-object v1, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mMessageArea:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mClientMessage:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mRMMContainer:Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mContactArea:Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mClientTitle:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v3, :cond_1

    .line 391
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 392
    iget-object v3, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mContactArea:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 393
    iget-object v4, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mClientTitle:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 394
    iget-object v5, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mClientMessage:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 396
    const-class v6, Lcom/android/systemui/util/DesktopManager;

    invoke-static {v6}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/util/DesktopManager;

    invoke-virtual {v6}, Lcom/android/systemui/util/DesktopManager;->isDesktopMode()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 397
    sget v6, Lcom/android/systemui/R$dimen;->kg_dex_message_area_padding_side:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 398
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 399
    sget v6, Lcom/android/systemui/R$dimen;->kg_dex_fmm_contact_area_side_margin:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 400
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 401
    iget-object v6, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mRMMContainer:Landroid/view/ViewGroup;

    sget v7, Lcom/android/systemui/R$dimen;->kg_dex_fmm_container_top_bottom:I

    .line 402
    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    sget v8, Lcom/android/systemui/R$dimen;->kg_dex_fmm_container_padding_bottom:I

    .line 403
    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 401
    invoke-virtual {v6, v2, v7, v2, v8}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 404
    sget v6, Lcom/android/systemui/R$dimen;->kg_dex_fmm_title_margin_bottom:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 405
    sget v6, Lcom/android/systemui/R$dimen;->kg_dex_fmm_message_margin_bottom:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_0

    .line 407
    :cond_0
    sget v6, Lcom/android/systemui/R$dimen;->kg_fmm_message_area_margin_side:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 408
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 409
    iput v2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 410
    iput v2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 411
    sget v6, Lcom/android/systemui/R$dimen;->kg_fmm_title_margin_bottom:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 412
    sget v6, Lcom/android/systemui/R$dimen;->kg_fmm_message_margin_bottom:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 413
    iget-object v6, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mRMMContainer:Landroid/view/ViewGroup;

    invoke-virtual {v6, v2, v2, v2, v2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 415
    :goto_0
    iget-object v6, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mMessageArea:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 416
    iget-object v1, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mContactArea:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 417
    iget-object v1, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mClientTitle:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 418
    iget-object v1, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mClientMessage:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 421
    :cond_1
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mMessageArea:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mContactArea:Landroid/view/ViewGroup;

    if-eqz v1, :cond_4

    iget-object v3, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mClientMessage:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mMessageAreaSpace:Landroid/view/View;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mClientContact:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v3, :cond_4

    .line 423
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 424
    iget-object v3, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mClientContact:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 425
    iget v4, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mCurrentOrientation:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 426
    iget-object v2, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mMessageArea:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 427
    iget-object v2, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mMessageAreaSpace:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    const/4 v2, -0x1

    .line 428
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_1

    :cond_2
    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 430
    iget-object v4, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mMessageArea:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 431
    iget-object v4, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mMessageAreaSpace:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    const/4 v4, -0x2

    .line 432
    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 433
    iget-object v4, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mClientMessage:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 434
    iput v2, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 435
    iget-object v2, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mClientMessage:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 437
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mClientMessage:Lcom/android/systemui/widget/SystemUITextView;

    sget v4, Lcom/android/systemui/R$dimen;->kg_fmm_owner_message_max_width:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 438
    sget v2, Lcom/android/systemui/R$dimen;->kg_fmm_owner_phone_num_end_margin:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 439
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mClientContact:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 440
    iget-object p0, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mContactArea:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    return-void
.end method


# virtual methods
.method protected getSecurityViewId()I
    .locals 0

    .line 446
    sget p0, Lcom/android/systemui/R$id;->keyguard_rmm_view:I

    return p0
.end method

.method protected handleAttemptLockout(J)V
    .locals 10

    .line 312
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardRMMView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->setPasswordEntryEnabled(Z)V

    .line 313
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 314
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleAttemptLockout() elapsedRealtimeDeadline: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "KeyguardRMMView"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    new-instance v2, Lcom/android/keyguard/KeyguardRMMViewController$5;

    sub-long v6, p1, v0

    const-wide/16 v8, 0x3e8

    move-object v4, v2

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/keyguard/KeyguardRMMViewController$5;-><init>(Lcom/android/keyguard/KeyguardRMMViewController;JJ)V

    .line 335
    invoke-virtual {v2}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method protected onViewAttached()V
    .locals 2

    .line 175
    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->onViewAttached()V

    .line 177
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 178
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 179
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardRMMView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mOnWindowFocusChangeListener:Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    return-void
.end method

.method protected onViewDetached()V
    .locals 2

    .line 184
    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->onViewDetached()V

    .line 186
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 187
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    .line 188
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardRMMView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mOnWindowFocusChangeListener:Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    return-void
.end method

.method protected resetState()V
    .locals 5

    .line 192
    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->resetState()V

    .line 193
    const-class v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-interface {v0}, Lcom/android/systemui/knox/KnoxStateMonitor;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->disableDevicePermanently()V

    goto :goto_0

    .line 196
    :cond_0
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardRMMViewController;->getRemoteLockoutAttemptDeadline(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 198
    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardRMMViewController;->handleAttemptLockout(J)V

    goto :goto_0

    .line 200
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    if-eqz v0, :cond_2

    .line 202
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$string;->kg_rmm_lock_instructions:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mClientName:Ljava/lang/String;

    aput-object p0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 201
    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected verifyPasswordAndUnlock()V
    .locals 6

    const-string v0, "KeyguardRMMView"

    const-string/jumbo v1, "verifyPasswordAndUnlock()"

    .line 260
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->getPasswordText()[B

    move-result-object v1

    .line 262
    iget-object v2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v2, Lcom/android/keyguard/KeyguardRMMView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardPinBasedInputView;->setPasswordEntryInputEnabled(Z)V

    .line 264
    array-length v2, v1

    const/4 v4, 0x3

    if-gt v2, v4, :cond_0

    .line 267
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    iget-object v2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v2, Lcom/android/keyguard/KeyguardRMMView;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardRMMView;->getWrongPasswordStringId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(I)V

    .line 268
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardMessageArea;->displayFailedAnimation()V

    .line 269
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardRMMView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v2}, Lcom/android/keyguard/KeyguardPinBasedInputView;->resetPasswordText(ZZ)V

    .line 270
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardRMMView;

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardPinBasedInputView;->setPasswordEntryInputEnabled(Z)V

    .line 271
    invoke-static {v1, v3}, Ljava/util/Arrays;->fill([BB)V

    return-void

    .line 276
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardRMMViewController;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    const/4 v4, 0x2

    .line 277
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v5

    iget-object p0, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mCheckPasswordCallback:Landroid/os/IRemoteCallback;

    .line 276
    invoke-interface {v2, v4, v1, v5, p0}, Lcom/android/internal/widget/ILockSettings;->checkRemoteLockPassword(I[BILandroid/os/IRemoteCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "Can\'t connect RMM_LOCK"

    .line 279
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :goto_0
    invoke-static {v1, v3}, Ljava/util/Arrays;->fill([BB)V

    return-void
.end method
