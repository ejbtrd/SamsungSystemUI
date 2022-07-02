.class public Lcom/android/keyguard/KeyguardSecSecurityContainerController;
.super Lcom/android/keyguard/KeyguardSecurityContainerController;
.source "KeyguardSecSecurityContainerController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardSecSecurityContainerController$OnApplyWindowInsetsListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/keyguard/KeyguardSecurityContainerController<",
        "Lcom/android/keyguard/KeyguardSecSecurityContainer;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mDisplayListener:Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;

.field private final mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mDualDarInnerLockScreenController:Lcom/android/keyguard/DualDarInnerLockScreenController;

.field private mFactoryResetProtectionType:I

.field private final mHandler:Landroid/os/Handler;

.field private mImeBottom:I

.field private final mImm:Landroid/view/inputmethod/InputMethodManager;

.field private mIsImeShown:Z

.field private mIsPassword:Z

.field private mIsSwipeBouncer:Z

.field private final mKeyguardRotationController:Lcom/android/keyguard/KeyguardRotationController;

.field private final mKeyguardRotationListener:Lcom/android/keyguard/KeyguardRotationController$KeyguardRotationListener;

.field private final mKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private final mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

.field private mNavigationBarHeight:I

.field private mRemainingBeforeWipe:I


# direct methods
.method public static synthetic $r8$lambda$A2vd0ITTVHxXQaVYfhq_LrdI7Y4(Lcom/android/keyguard/KeyguardSecSecurityContainerController;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->lambda$new$0(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/android/keyguard/KeyguardSecSecurityContainer;Lcom/android/keyguard/AdminSecondaryLockScreenController$Factory;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel;Lcom/android/internal/logging/MetricsLogger;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;Lcom/android/keyguard/KeyguardSecurityViewFlipperController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Landroid/app/admin/DevicePolicyManager;Landroid/view/inputmethod/InputMethodManager;Landroid/app/AlarmManager;Lcom/android/keyguard/KeyguardRotationController;Lcom/android/keyguard/DualDarInnerLockScreenController$Factory;)V
    .locals 6

    move-object v0, p0

    move-object/from16 v1, p16

    .line 235
    invoke-direct/range {p0 .. p11}, Lcom/android/keyguard/KeyguardSecurityContainerController;-><init>(Lcom/android/keyguard/KeyguardSecurityContainer;Lcom/android/keyguard/AdminSecondaryLockScreenController$Factory;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel;Lcom/android/internal/logging/MetricsLogger;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;Lcom/android/keyguard/KeyguardSecurityViewFlipperController;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V

    const/16 v2, 0xf

    .line 79
    iput v2, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mRemainingBeforeWipe:I

    const/4 v2, 0x0

    .line 83
    iput v2, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mFactoryResetProtectionType:I

    .line 93
    new-instance v3, Lcom/android/keyguard/KeyguardSecSecurityContainerController$1;

    invoke-direct {v3, p0}, Lcom/android/keyguard/KeyguardSecSecurityContainerController$1;-><init>(Lcom/android/keyguard/KeyguardSecSecurityContainerController;)V

    iput-object v3, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mKeyguardRotationListener:Lcom/android/keyguard/KeyguardRotationController$KeyguardRotationListener;

    .line 103
    iput v2, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mImeBottom:I

    .line 110
    new-instance v2, Lcom/android/keyguard/KeyguardSecSecurityContainerController$2;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardSecSecurityContainerController$2;-><init>(Lcom/android/keyguard/KeyguardSecSecurityContainerController;)V

    iput-object v2, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mDisplayListener:Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;

    .line 120
    new-instance v2, Lcom/android/keyguard/KeyguardSecSecurityContainerController$3;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardSecSecurityContainerController$3;-><init>(Lcom/android/keyguard/KeyguardSecSecurityContainerController;)V

    iput-object v2, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 246
    new-instance v3, Lcom/android/keyguard/KeyguardSecSecurityContainerController$4;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/keyguard/KeyguardSecSecurityContainerController$4;-><init>(Lcom/android/keyguard/KeyguardSecSecurityContainerController;Landroid/os/Looper;)V

    iput-object v3, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mHandler:Landroid/os/Handler;

    move-object/from16 v3, p12

    .line 261
    iput-object v3, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v3, p13

    .line 262
    iput-object v3, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mImm:Landroid/view/inputmethod/InputMethodManager;

    move-object/from16 v3, p14

    .line 263
    iput-object v3, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mAlarmManager:Landroid/app/AlarmManager;

    move-object/from16 v3, p15

    .line 264
    iput-object v3, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mKeyguardRotationController:Lcom/android/keyguard/KeyguardRotationController;

    .line 265
    iget-object v3, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v3, Lcom/android/keyguard/KeyguardSecSecurityContainer;

    new-instance v4, Lcom/android/keyguard/KeyguardSecSecurityContainerController$OnApplyWindowInsetsListener;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/keyguard/KeyguardSecSecurityContainerController$OnApplyWindowInsetsListener;-><init>(Lcom/android/keyguard/KeyguardSecSecurityContainerController;Lcom/android/keyguard/KeyguardSecSecurityContainerController$1;)V

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 267
    const-class v3, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/knox/KnoxStateMonitor;

    iput-object v3, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 269
    sget-boolean v3, Lcom/android/systemui/LsRune;->SECURITY_KNOX_SUPPORT_DUAL_DAR_AT_DO:Z

    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    .line 271
    new-instance v3, Lcom/android/keyguard/KeyguardSecSecurityContainerController$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/keyguard/KeyguardSecSecurityContainerController$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardSecSecurityContainerController;)V

    .line 276
    invoke-virtual {v1, p0, v2, v3}, Lcom/android/keyguard/DualDarInnerLockScreenController$Factory;->create(Lcom/android/keyguard/KeyguardSecurityContainerController;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/DualDarKeyguardSecurityCallback;)Lcom/android/keyguard/DualDarInnerLockScreenController;

    move-result-object v1

    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mDualDarInnerLockScreenController:Lcom/android/keyguard/DualDarInnerLockScreenController;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardSecSecurityContainerController;)Landroid/os/Handler;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardSecSecurityContainerController;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->updateLayoutMargins()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/keyguard/KeyguardSecSecurityContainerController;)Landroid/view/View;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/keyguard/KeyguardSecSecurityContainerController;)Landroid/view/View;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/keyguard/KeyguardSecSecurityContainerController;)Landroid/view/View;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/keyguard/KeyguardSecSecurityContainerController;)Landroid/view/View;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/keyguard/KeyguardSecSecurityContainerController;I)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->updateLayoutMargins(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardSecSecurityContainerController;)Landroid/content/Context;
    .locals 0

    .line 59
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/keyguard/KeyguardSecSecurityContainerController;)Landroid/app/AlarmManager;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mAlarmManager:Landroid/app/AlarmManager;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/keyguard/KeyguardSecSecurityContainerController;)Lcom/android/systemui/knox/KnoxStateMonitor;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/keyguard/KeyguardSecSecurityContainerController;)Landroid/content/Context;
    .locals 0

    .line 59
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/keyguard/KeyguardSecSecurityContainerController;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->showBackupSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/keyguard/KeyguardSecSecurityContainerController;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Z
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->isPassword(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/android/keyguard/KeyguardSecSecurityContainerController;)I
    .locals 0

    .line 59
    iget p0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mImeBottom:I

    return p0
.end method

.method static synthetic access$802(Lcom/android/keyguard/KeyguardSecSecurityContainerController;I)I
    .locals 0

    .line 59
    iput p1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mImeBottom:I

    return p1
.end method

.method static synthetic access$902(Lcom/android/keyguard/KeyguardSecSecurityContainerController;Z)Z
    .locals 0

    .line 59
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mIsImeShown:Z

    return p1
.end method

.method private doWipeOutIfMaxFailedAttemptsSinceBoot()V
    .locals 4

    .line 632
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 633
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts(I)I

    move-result v1

    .line 634
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isAutoWipe()Z

    move-result v2

    .line 636
    invoke-direct {p0, v2, v0}, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->getSecFailedAttemptsBeforeWipe(ZI)I

    move-result v0

    .line 638
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doWipeOutIfMaxFailedAttemptsSinceBoot( failedAttemptsBeforeWipe = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " , failedAttempts = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "KeyguardSecSecurityView"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v0, :cond_0

    if-lt v1, v0, :cond_0

    const-string v0, "doWipeOutIfMaxFailedAttemptsSinceBoot( Too many unlock attempts; device will be wiped! )"

    .line 642
    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/keyguard/ResetDeviceUtils;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/ResetDeviceUtils;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/keyguard/ResetDeviceUtils;->wipeOut(II)V

    :cond_0
    return-void
.end method

.method private getSecFailedAttemptsBeforeWipe(ZI)I
    .locals 1

    .line 591
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I

    move-result p0

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const/16 p0, 0xf

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isPassword(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Z
    .locals 1

    const/4 p0, 0x0

    if-eqz p1, :cond_1

    .line 671
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SKTCarrierPassword:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 p0, 0x1

    :cond_1
    return p0
.end method

.method private synthetic lambda$new$0(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Z)V
    .locals 0

    .line 272
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mSecurityCallback:Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

    if-eqz p0, :cond_0

    .line 273
    invoke-interface {p0, p1, p2}, Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;->onSecurityModeChanged(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Z)V

    :cond_0
    return-void
.end method

.method private reportSecurityMode(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .locals 2

    .line 811
    sget-object v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController$6;->$SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode:[I

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/16 v0, 0xb

    if-eq p0, v0, :cond_0

    goto :goto_0

    .line 813
    :cond_0
    sget-object p0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p1, p0, :cond_1

    .line 814
    const-class p0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getNextSubIdForState(I)I

    move-result p0

    .line 815
    const-class v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-interface {v0, p0}, Lcom/android/systemui/knox/KnoxStateMonitor;->isSubIdLockedByMDM(I)Z

    move-result v0

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 816
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p1, v1

    const/4 p0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, p1, p0

    const-string p0, "KeyguardSecSecurityView"

    const-string/jumbo v0, "reportSecurityMode SimPin -> None simPinSubId = %d, isLockedByMDM=%b"

    invoke-static {p0, v0, p1}, Lcom/android/systemui/keyguard/KeyguardLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private showBackupSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .locals 0

    .line 511
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    return-void
.end method

.method private showWarningAtAutoWipeDialog(II)V
    .locals 1

    .line 622
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardTextBuilder;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardTextBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/keyguard/KeyguardTextBuilder;->getWarningAutoWipeMessage(II)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 626
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Lcom/android/keyguard/KeyguardSecSecurityContainer;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private showWarningWipeOutDialog(II)V
    .locals 3

    .line 650
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardTextBuilder;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardTextBuilder;

    move-result-object v0

    .line 651
    iget v1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mFactoryResetProtectionType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 653
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v1, p1}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode(I)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/android/keyguard/KeyguardTextBuilder;->getWarningReactivationMessage(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 655
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v1, p1}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode(I)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/android/keyguard/KeyguardTextBuilder;->getWarningFRPMessage(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;I)Ljava/lang/String;

    move-result-object p1

    .line 657
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Lcom/android/keyguard/KeyguardSecSecurityContainer;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateDualDisplayLayout(I)V
    .locals 4

    .line 737
    const-class v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/DisplayLifecycle;->isFolderOpened()Z

    move-result v0

    .line 739
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/util/DeviceState;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 740
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->needsInput()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->getCurrentSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v1

    sget-object v3, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->KNOXGUARD:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v1, v3, :cond_0

    move p1, v2

    move v0, p1

    move v1, v0

    goto :goto_4

    :cond_0
    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    .line 756
    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mIsPassword:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mIsImeShown:Z

    if-eqz p1, :cond_1

    move p1, v2

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mNavigationBarHeight:I

    :goto_0
    move v0, p1

    move p1, v2

    move v1, p1

    goto :goto_4

    :cond_2
    if-eqz v0, :cond_3

    move p1, v2

    goto :goto_1

    .line 748
    :cond_3
    iget p1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mNavigationBarHeight:I

    :goto_1
    if-eqz v0, :cond_4

    move v1, v2

    goto :goto_2

    .line 749
    :cond_4
    iget v1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mNavigationBarHeight:I

    :goto_2
    if-eqz v0, :cond_6

    .line 750
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mIsPassword:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mIsImeShown:Z

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    iget v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mNavigationBarHeight:I

    goto :goto_4

    :cond_6
    :goto_3
    move v0, v2

    .line 761
    :goto_4
    invoke-direct {p0, p1, v2, v1, v0}, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->updateLayoutParams(IIII)V

    return-void
.end method

.method private updateFactoryResetProtectionType()V
    .locals 2

    .line 662
    new-instance v0, Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;-><init>(Landroid/content/Context;)V

    .line 663
    invoke-virtual {v0}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 664
    invoke-virtual {v0}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getServiceSupport()I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mFactoryResetProtectionType:I

    .line 666
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateFactoryResetProtectionType( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mFactoryResetProtectionType:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " )"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "KeyguardSecSecurityView"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateLayoutMargins()V
    .locals 1

    .line 677
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->getRotation(I)I

    move-result v0

    .line 678
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->updateLayoutMargins(I)V

    return-void
.end method

.method private updateLayoutMargins(I)V
    .locals 5

    .line 682
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardSecSecurityContainer;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecSecurityContainer;->getSecurityViewFlipper()Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    move-result-object v0

    .line 683
    sget-boolean v1, Lcom/android/systemui/LsRune;->SECURITY_NAVBAR_ENABLED:Z

    if-eqz v1, :cond_9

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 687
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 689
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->getCurrentSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v1

    .line 690
    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->isPassword(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mIsPassword:Z

    const v2, 0x1050204

    .line 691
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mNavigationBarHeight:I

    .line 694
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->isSmartViewFitToActiveDisplay(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 695
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->updateDualDisplayLayout(I)V

    return-void

    .line 698
    :cond_1
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 699
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->updateTabletLayout(I)V

    return-void

    .line 703
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY:Z

    if-nez v0, :cond_3

    .line 705
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->needsInput()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->KNOXGUARD:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v1, v0, :cond_3

    move p1, v2

    move v0, p1

    move v1, v0

    goto :goto_3

    .line 710
    :cond_3
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->getInDisplayFingerprintHeight()I

    move-result v0

    .line 711
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isInDisplayFingerprintMarginAccepted()Z

    move-result v1

    const/4 v3, 0x1

    if-eq p1, v3, :cond_8

    const/4 v4, 0x3

    if-eq p1, v4, :cond_6

    .line 725
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isInDisplayFpSensorPositionHigh()Z

    move-result p1

    xor-int/2addr p1, v3

    and-int/2addr p1, v1

    .line 728
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mIsPassword:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mIsImeShown:Z

    if-eqz v1, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_5

    goto :goto_0

    .line 729
    :cond_5
    iget v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mNavigationBarHeight:I

    :goto_0
    move v1, v0

    move p1, v2

    move v0, p1

    goto :goto_3

    :cond_6
    if-eqz v1, :cond_7

    goto :goto_1

    .line 720
    :cond_7
    iget v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mNavigationBarHeight:I

    .line 721
    :goto_1
    iget p1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mNavigationBarHeight:I

    goto :goto_2

    .line 715
    :cond_8
    iget v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mNavigationBarHeight:I

    move p1, v0

    :goto_2
    move v1, v2

    .line 733
    :goto_3
    invoke-direct {p0, v0, v2, p1, v1}, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->updateLayoutParams(IIII)V

    :cond_9
    :goto_4
    return-void
.end method

.method private updateLayoutParams(IIII)V
    .locals 7

    .line 786
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardSecSecurityContainer;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecSecurityContainer;->getSecurityViewFlipper()Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "KeyguardSecSecurityView"

    const-string/jumbo p1, "updateLayoutParams securityViewFlipper is null"

    .line 788
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 791
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 792
    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 793
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 794
    sget p0, Lcom/android/systemui/R$dimen;->kg_message_area_width_tablet:I

    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    iput p0, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 795
    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_3

    .line 796
    :cond_1
    sget-boolean v3, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/systemui/util/DeviceState;->isSmartViewFitToActiveDisplay(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 797
    const-class v3, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {v3}, Lcom/android/systemui/keyguard/DisplayLifecycle;->isFolderOpened()Z

    move-result v3

    .line 798
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->getCurrentSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v5

    sget-object v6, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->KNOXGUARD:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v5, v6, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    if-eqz v3, :cond_4

    if-nez v4, :cond_4

    .line 799
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mIsPassword:Z

    if-eqz p0, :cond_3

    .line 800
    sget p0, Lcom/android/systemui/R$dimen;->kg_password_message_area_width_dual_display:I

    goto :goto_1

    .line 801
    :cond_3
    sget p0, Lcom/android/systemui/R$dimen;->kg_message_area_width_dual_display:I

    .line 799
    :goto_1
    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_2

    :cond_4
    const/4 p0, -0x1

    .line 802
    :goto_2
    iput p0, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 803
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 805
    :cond_5
    :goto_3
    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 806
    invoke-virtual {v0, v2}, Landroid/widget/ViewFlipper;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateStrongAuthStatus(II)V
    .locals 3

    .line 597
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintOptionEnabled()Z

    move-result v0

    .line 598
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceOptionEnabled()Z

    move-result v1

    if-nez v0, :cond_0

    if-eqz v1, :cond_2

    :cond_0
    if-lez p2, :cond_2

    const/16 v0, 0xa

    const/4 v2, 0x2

    if-lt p2, v0, :cond_1

    .line 603
    iget p2, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mRemainingBeforeWipe:I

    const/4 v0, 0x5

    if-gt p2, v0, :cond_2

    .line 604
    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p2, v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->requireStrongAuth(II)V

    if-eqz v1, :cond_2

    .line 606
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->cancelFaceAuth()V

    goto :goto_0

    .line 610
    :cond_1
    iget p2, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mRemainingBeforeWipe:I

    if-gt p2, v2, :cond_2

    .line 611
    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p2, v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->requireStrongAuth(II)V

    if-eqz v1, :cond_2

    .line 613
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->cancelFaceAuth()V

    :cond_2
    :goto_0
    return-void
.end method

.method private updateTabletLayout(I)V
    .locals 4

    .line 766
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->getInDisplayFingerprintHeight()I

    move-result v0

    .line 767
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->kg_emergency_button_margin_bottom_for_tablet_fingerprint:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 769
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isInDisplayFingerprintMarginAccepted()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p1, v2, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    .line 778
    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mIsPassword:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mIsImeShown:Z

    if-eqz p1, :cond_0

    :goto_0
    move v0, v3

    goto :goto_1

    :cond_0
    if-eqz v1, :cond_1

    goto :goto_1

    .line 779
    :cond_1
    iget v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mNavigationBarHeight:I

    goto :goto_1

    .line 774
    :cond_2
    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mIsPassword:Z

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mIsImeShown:Z

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    iget p1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mNavigationBarHeight:I

    move v0, p1

    .line 782
    :goto_1
    invoke-direct {p0, v3, v3, v3, v0}, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->updateLayoutParams(IIII)V

    return-void
.end method


# virtual methods
.method protected getCurrentSecurityController()Lcom/android/keyguard/KeyguardInputViewController;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/keyguard/KeyguardInputViewController<",
            "Lcom/android/keyguard/KeyguardInputView;",
            ">;"
        }
    .end annotation

    .line 586
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mSecurityViewFlipperController:Lcom/android/keyguard/KeyguardSecurityViewFlipperController;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 587
    invoke-virtual {v0, v1, p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipperController;->getSecurityView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/keyguard/KeyguardSecurityCallback;)Lcom/android/keyguard/KeyguardInputViewController;

    move-result-object p0

    return-object p0
.end method

.method public onInit()V
    .locals 1

    .line 285
    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->onInit()V

    .line 288
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-interface {v0}, Lcom/android/systemui/knox/KnoxStateMonitor;->updateFailedUnlockAttemptForDeviceDisabled()V

    .line 291
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_WARNING_WIPE_OUT_MESSAGE:Z

    if-eqz v0, :cond_0

    .line 292
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->updateFactoryResetProtectionType()V

    .line 293
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->doWipeOutIfMaxFailedAttemptsSinceBoot()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 326
    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->onPause()V

    .line 327
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_KNOX_SUPPORT_DUAL_DAR_AT_DO:Z

    if-eqz v0, :cond_0

    .line 328
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mDualDarInnerLockScreenController:Lcom/android/keyguard/DualDarInnerLockScreenController;

    invoke-virtual {p0}, Lcom/android/keyguard/DualDarInnerLockScreenController;->hide()V

    :cond_0
    return-void
.end method

.method public onResume(I)V
    .locals 0

    .line 319
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainerController;->onResume(I)V

    .line 321
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->updateLayoutMargins()V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1

    const/16 v0, 0x3c

    if-le p1, v0, :cond_0

    .line 838
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecSecurityContainer;->getSecurityViewFlipper()Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 840
    invoke-virtual {p0}, Landroid/widget/ViewFlipper;->removeAllViews()V

    :cond_0
    return-void
.end method

.method protected onViewAttached()V
    .locals 2

    .line 299
    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->onViewAttached()V

    .line 301
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mKeyguardRotationController:Lcom/android/keyguard/KeyguardRotationController;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mKeyguardRotationListener:Lcom/android/keyguard/KeyguardRotationController$KeyguardRotationListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 303
    const-class v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mDisplayListener:Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;

    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected onViewDetached()V
    .locals 2

    .line 309
    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->onViewDetached()V

    .line 311
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mKeyguardRotationController:Lcom/android/keyguard/KeyguardRotationController;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mKeyguardRotationListener:Lcom/android/keyguard/KeyguardRotationController$KeyguardRotationListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    .line 313
    const-class v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mDisplayListener:Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;

    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/SecLifecycle;->removeObserver(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public reportFailedUnlockAttempt(II)V
    .locals 9

    .line 515
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts(I)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 517
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isAutoWipe()Z

    move-result v2

    .line 519
    invoke-direct {p0, v2, p1}, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->getSecFailedAttemptsBeforeWipe(ZI)I

    move-result v3

    if-lez v3, :cond_0

    sub-int v4, v3, v0

    goto :goto_0

    :cond_0
    const v4, 0x7fffffff

    .line 522
    :goto_0
    iput v4, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mRemainingBeforeWipe:I

    .line 524
    invoke-direct {p0, p1, v3}, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->updateStrongAuthStatus(II)V

    .line 527
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "reportFailedUnlockAttempt   \n failedAttemptsBeforeWipe: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\n mRemainingBeforeWipe  "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mRemainingBeforeWipe:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\n failedAttempts: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "KeyguardSecSecurityView"

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    iget v3, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mRemainingBeforeWipe:I

    const/4 v5, 0x5

    if-ge v3, v5, :cond_4

    .line 537
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v3, p1}, Landroid/app/admin/DevicePolicyManager;->getProfileWithMinimumFailedPasswordsForWipe(I)I

    move-result v3

    if-ne v3, p1, :cond_1

    if-eqz v3, :cond_2

    const/4 v6, 0x3

    goto :goto_1

    :cond_1
    const/16 v6, -0x2710

    if-eq v3, v6, :cond_2

    const/4 v6, 0x2

    goto :goto_1

    :cond_2
    move v6, v1

    .line 547
    :goto_1
    iget v7, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mRemainingBeforeWipe:I

    if-lez v7, :cond_3

    if-nez v2, :cond_4

    .line 548
    sget-boolean v3, Lcom/android/systemui/LsRune;->SECURITY_WARNING_WIPE_OUT_MESSAGE:Z

    if-nez v3, :cond_4

    .line 549
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodManager;->semForceHideSoftInput()Z

    .line 550
    iget-object v3, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v3, Lcom/android/keyguard/KeyguardSecSecurityContainer;

    iget v4, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mRemainingBeforeWipe:I

    invoke-virtual {v3, v0, v4, v6}, Lcom/android/keyguard/KeyguardSecSecurityContainer;->showAlmostAtWipeDialog(III)V

    goto :goto_2

    .line 554
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Too many unlock attempts; user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " will be wiped!"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/keyguard/ResetDeviceUtils;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/ResetDeviceUtils;

    move-result-object v3

    invoke-virtual {v3, v0, v6}, Lcom/android/keyguard/ResetDeviceUtils;->wipeOut(II)V

    .line 560
    :cond_4
    :goto_2
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v3, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportFailedStrongAuthUnlockAttempt(I)V

    .line 561
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, p1}, Lcom/android/internal/widget/LockPatternUtils;->reportFailedPasswordAttempt(I)V

    .line 564
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-interface {v3}, Lcom/android/systemui/knox/KnoxStateMonitor;->updateFailedUnlockAttemptForDeviceDisabled()V

    .line 565
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-interface {v3}, Lcom/android/systemui/knox/KnoxStateMonitor;->updateFailedUnlockAttemptForProfileDisabled()V

    .line 568
    sget-boolean v3, Lcom/android/systemui/LsRune;->SECURITY_WARNING_WIPE_OUT_MESSAGE:Z

    if-eqz v3, :cond_6

    iget v3, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mRemainingBeforeWipe:I

    if-eq v3, v1, :cond_5

    if-ne v3, v5, :cond_6

    .line 570
    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 571
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 572
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->semForceHideSoftInput()Z

    .line 573
    iget v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mRemainingBeforeWipe:I

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->showWarningWipeOutDialog(II)V

    goto :goto_3

    :cond_6
    if-eqz v2, :cond_7

    .line 575
    iget v2, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mRemainingBeforeWipe:I

    if-ne v2, v1, :cond_7

    .line 576
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->semForceHideSoftInput()Z

    .line 577
    iget v1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mRemainingBeforeWipe:I

    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->showWarningAtAutoWipeDialog(II)V

    :cond_7
    :goto_3
    if-lez p2, :cond_8

    .line 580
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0, p2, p1}, Lcom/android/internal/widget/LockPatternUtils;->reportPasswordLockout(II)V

    :cond_8
    return-void
.end method

.method public setShowSwipeBouncer(Z)V
    .locals 0

    .line 825
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mIsSwipeBouncer:Z

    return-void
.end method

.method public showNextSecurityScreenOrFinish(ZIZ)Z
    .locals 10

    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "showNextSecurityScreenOrFinish("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardSecSecurityView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_KNOX_SUPPORT_DUAL_DAR_AT_DO:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 350
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v4, p2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->isDualDarInnerAuthRequired(I)Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez p3, :cond_1

    .line 351
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-interface {v4, p2}, Lcom/android/systemui/knox/KnoxStateMonitor;->isVirtualUserId(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 352
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Switch targetUserId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-interface {v5, p2}, Lcom/android/systemui/knox/KnoxStateMonitor;->getMainUserId(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-interface {v4, p2}, Lcom/android/systemui/knox/KnoxStateMonitor;->getMainUserId(I)I

    move-result p2

    goto :goto_0

    :cond_0
    move v4, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v3

    .line 361
    :goto_1
    invoke-static {}, Lcom/samsung/android/security/mdf/MdfUtils;->isMdfDisabled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 362
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "User authentication is blocked by CC mode since it detects the device has been tampered"

    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 363
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return v2

    .line 371
    :cond_2
    sget-boolean v5, Lcom/android/systemui/LsRune;->SECURITY_SWIPE_BOUNCER:Z

    const-string v6, "101"

    if-eqz v5, :cond_4

    sget-object v7, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Swipe:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    iget-object v8, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v7, v8, :cond_4

    :cond_3
    :goto_2
    move v1, v2

    move v5, v3

    goto/16 :goto_7

    .line 373
    :cond_4
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v7, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v7

    const-string v8, "1001"

    if-eqz v7, :cond_7

    if-eqz v5, :cond_5

    .line 374
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mIsSwipeBouncer:Z

    if-eqz v1, :cond_5

    .line 375
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Swipe:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    goto/16 :goto_6

    .line 380
    :cond_5
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getBiometricsAuthenticated(I)I

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 381
    invoke-virtual {v1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 382
    invoke-static {}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->setAuthDetailSmartLock()V

    const-string v1, "3"

    .line 384
    invoke-static {v6, v8, v1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    move v1, v2

    :goto_3
    move v5, v1

    goto/16 :goto_7

    .line 391
    :cond_7
    sget-object v7, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    iget-object v9, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v7, v9, :cond_a

    .line 392
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v1, p2}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode(I)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v1

    if-eqz v5, :cond_8

    if-ne v7, v1, :cond_8

    .line 393
    iget-boolean v5, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mIsSwipeBouncer:Z

    if-eqz v5, :cond_8

    .line 395
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Swipe:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    goto :goto_4

    :cond_8
    if-ne v7, v1, :cond_9

    const-string v1, "2"

    .line 399
    invoke-static {v6, v8, v1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v1, v3

    goto :goto_5

    .line 404
    :cond_9
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    :goto_4
    move v1, v2

    :goto_5
    move v5, v3

    move v3, v1

    move v1, v2

    goto :goto_7

    :cond_a
    if-eqz p1, :cond_e

    .line 407
    sget-object v5, Lcom/android/keyguard/KeyguardSecSecurityContainerController$6;->$SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode:[I

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v5, v5, v8

    packed-switch v5, :pswitch_data_0

    .line 441
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bad security screen "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", fail safe"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardSecurityContainerController;->showPrimarySecurityScreen(Z)V

    goto :goto_6

    .line 425
    :pswitch_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v1, p2}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode(I)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v1

    .line 426
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 427
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v8

    .line 426
    invoke-virtual {v5, v8}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v5

    .line 428
    iget-object v8, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 429
    invoke-interface {v8}, Lcom/android/systemui/knox/KnoxStateMonitor;->isLockScreenDisabledbyKNOX()Z

    move-result v8

    if-eqz v8, :cond_b

    goto/16 :goto_2

    :cond_b
    if-eq v1, v7, :cond_c

    if-eqz v5, :cond_d

    .line 432
    :cond_c
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 433
    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v7

    if-eqz v7, :cond_3

    if-eqz v5, :cond_3

    .line 434
    :cond_d
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    goto :goto_6

    :pswitch_1
    move v1, v3

    goto/16 :goto_3

    :cond_e
    :goto_6
    move v1, v2

    move v5, v3

    move v3, v1

    :goto_7
    if-eqz v0, :cond_f

    if-eqz v3, :cond_f

    if-nez v4, :cond_f

    .line 449
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0, p2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->isDualDarInnerAuthRequired(I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 450
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mDualDarInnerLockScreenController:Lcom/android/keyguard/DualDarInnerLockScreenController;

    invoke-virtual {p1}, Lcom/android/keyguard/DualDarInnerLockScreenController;->show()V

    .line 451
    new-instance p1, Lcom/android/keyguard/KeyguardSecSecurityContainerController$5;

    invoke-direct {p1, p0}, Lcom/android/keyguard/KeyguardSecSecurityContainerController$5;-><init>(Lcom/android/keyguard/KeyguardSecSecurityContainerController;)V

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainerController;->startDisappearAnimation(Ljava/lang/Runnable;)Z

    return v2

    :cond_f
    if-eqz v3, :cond_11

    if-nez p3, :cond_11

    if-eqz v5, :cond_10

    .line 464
    iget-object p3, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-static {p3}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->setAuthDetail(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 467
    :cond_10
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mSecurityCallback:Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

    invoke-interface {p0, v1, p2}, Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;->finish(ZI)V

    if-eqz p1, :cond_11

    const-string p0, "1032"

    const-string p1, "1"

    .line 471
    invoke-static {v6, p0, p1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    return v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 489
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "showSecurityScreen("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardSecSecurityView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p1, v0, :cond_0

    return-void

    .line 494
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->reportSecurityMode(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 497
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateSecurityModeChanged(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 499
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainerController;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 501
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->updateLayoutMargins()V

    return-void
.end method

.method public updateSecurityViewPosition(IZ)V
    .locals 2

    .line 830
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v1, :cond_0

    .line 831
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;

    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/KeyguardSecSecurityContainer;->updateSecurityViewPosition(IZ)V

    :cond_0
    return-void
.end method
