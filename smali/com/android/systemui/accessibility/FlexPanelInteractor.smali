.class public Lcom/android/systemui/accessibility/FlexPanelInteractor;
.super Ljava/lang/Object;
.source "FlexPanelInteractor.java"


# static fields
.field private static final FLEX_PANEL_DISALLOWED_ACTIVITIES:[Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mFoldStateListener:Lcom/samsung/android/view/SemWindowManager$FoldStateListener;

.field private mHandler:Landroid/os/Handler;

.field private mIsTableMode:Z

.field private mKeyguardStateCallback:Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;

.field private final mRecentsComponentName:Landroid/content/ComponentName;

.field private mRotation:I

.field private final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field private final mStartFlexPanelRunnable:Ljava/lang/Runnable;

.field private mTaskStackChangeListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;


# direct methods
.method public static synthetic $r8$lambda$KzA8t_fmSa6nuOlw1XVzHx5j4vE(Landroid/app/ActivityManager$RunningTaskInfo;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/accessibility/FlexPanelInteractor;->lambda$isDisallowedPackage$1(Landroid/app/ActivityManager$RunningTaskInfo;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$cDwfdJ4ahfbZpinBaorsXO1VPqk(Lcom/android/systemui/accessibility/FlexPanelInteractor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/accessibility/FlexPanelInteractor;->lambda$new$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const-string v0, "com.android.settings.password.ConfirmLockPattern"

    const-string v1, "com.android.settings.password.ConfirmLockPassword"

    const-string v2, "com.android.settings.password.ConfirmDeviceCredentialActivity$InternalActivity"

    .line 36
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/accessibility/FlexPanelInteractor;->FLEX_PANEL_DISALLOWED_ACTIVITIES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/util/SettingsHelper;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Lcom/android/systemui/accessibility/FlexPanelInteractor$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/accessibility/FlexPanelInteractor$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/accessibility/FlexPanelInteractor;)V

    iput-object v0, p0, Lcom/android/systemui/accessibility/FlexPanelInteractor;->mStartFlexPanelRunnable:Ljava/lang/Runnable;

    .line 53
    iput-object p1, p0, Lcom/android/systemui/accessibility/FlexPanelInteractor;->mContext:Landroid/content/Context;

    .line 54
    iput-object p2, p0, Lcom/android/systemui/accessibility/FlexPanelInteractor;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    const p2, 0x1040352

    .line 55
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/accessibility/FlexPanelInteractor;->mRecentsComponentName:Landroid/content/ComponentName;

    .line 57
    new-instance p1, Landroid/os/Handler;

    sget-object p2, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Looper;

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/systemui/accessibility/FlexPanelInteractor;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/accessibility/FlexPanelInteractor;Z)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/android/systemui/accessibility/FlexPanelInteractor;->onFoldStateTableModeChanged(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/accessibility/FlexPanelInteractor;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/android/systemui/accessibility/FlexPanelInteractor;->onFlexModeChanged()V

    return-void
.end method

.method private addCallbackForFlexMode(Z)V
    .locals 3

    .line 110
    const-class v0, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iget-object v1, p0, Lcom/android/systemui/accessibility/FlexPanelInteractor;->mTaskStackChangeListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    if-eqz v1, :cond_0

    .line 111
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/accessibility/FlexPanelInteractor;->mTaskStackChangeListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    invoke-virtual {v1, v2}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->unregisterTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    .line 113
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/accessibility/FlexPanelInteractor;->mKeyguardStateCallback:Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;

    if-eqz v1, :cond_1

    .line 114
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iget-object v2, p0, Lcom/android/systemui/accessibility/FlexPanelInteractor;->mKeyguardStateCallback:Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    :cond_1
    if-eqz p1, :cond_2

    .line 117
    new-instance p1, Lcom/android/systemui/accessibility/FlexPanelInteractor$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/accessibility/FlexPanelInteractor$2;-><init>(Lcom/android/systemui/accessibility/FlexPanelInteractor;)V

    iput-object p1, p0, Lcom/android/systemui/accessibility/FlexPanelInteractor;->mTaskStackChangeListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    .line 125
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object p1

    iget-object v1, p0, Lcom/android/systemui/accessibility/FlexPanelInteractor;->mTaskStackChangeListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    invoke-virtual {p1, v1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->registerTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    .line 127
    new-instance p1, Lcom/android/systemui/accessibility/FlexPanelInteractor$3;

    invoke-direct {p1, p0}, Lcom/android/systemui/accessibility/FlexPanelInteractor$3;-><init>(Lcom/android/systemui/accessibility/FlexPanelInteractor;)V

    iput-object p1, p0, Lcom/android/systemui/accessibility/FlexPanelInteractor;->mKeyguardStateCallback:Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;

    .line 133
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iget-object p0, p0, Lcom/android/systemui/accessibility/FlexPanelInteractor;->mKeyguardStateCallback:Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private isAllowedPackage(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 98
    iget-object v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-eqz v1, :cond_1

    .line 99
    invoke-direct {p0, p1}, Lcom/android/systemui/accessibility/FlexPanelInteractor;->isDisallowedPackage(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result p0

    if-eqz p0, :cond_0

    return v0

    .line 103
    :cond_0
    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object p0

    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 104
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 103
    invoke-virtual {p0, v1, p1}, Lcom/samsung/android/view/SemWindowManager;->getSupportsFlexPanel(ILjava/lang/String;)I

    move-result p0

    const/4 p1, 0x1

    and-int/2addr p0, p1

    if-eqz p0, :cond_1

    move v0, p1

    :cond_1
    return v0
.end method

.method private isDisallowedPackage(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 2

    .line 93
    sget-object v0, Lcom/android/systemui/accessibility/FlexPanelInteractor;->FLEX_PANEL_DISALLOWED_ACTIVITIES:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/accessibility/FlexPanelInteractor$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/android/systemui/accessibility/FlexPanelInteractor$$ExternalSyntheticLambda1;-><init>(Landroid/app/ActivityManager$RunningTaskInfo;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/accessibility/FlexPanelInteractor;->mRecentsComponentName:Landroid/content/ComponentName;

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 94
    invoke-virtual {p0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isMultiWindow()Z
    .locals 0

    .line 138
    new-instance p0, Lcom/samsung/android/app/SemMultiWindowManager;

    invoke-direct {p0}, Lcom/samsung/android/app/SemMultiWindowManager;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/app/SemMultiWindowManager;->getMode()I

    move-result p0

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic lambda$isDisallowedPackage$1(Landroid/app/ActivityManager$RunningTaskInfo;Ljava/lang/String;)Z
    .locals 0

    .line 93
    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$new$0()V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/android/systemui/accessibility/FlexPanelInteractor;->startFlexPanel()V

    return-void
.end method

.method private onFlexModeChanged()V
    .locals 4

    .line 152
    iget-object v0, p0, Lcom/android/systemui/accessibility/FlexPanelInteractor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/accessibility/FlexPanelInteractor;->mStartFlexPanelRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 154
    iget-boolean v0, p0, Lcom/android/systemui/accessibility/FlexPanelInteractor;->mIsTableMode:Z

    if-nez v0, :cond_0

    return-void

    .line 158
    :cond_0
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_FOLDERBLE_TYPE_FOLD:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 159
    iget v2, p0, Lcom/android/systemui/accessibility/FlexPanelInteractor;->mRotation:I

    if-eq v2, v1, :cond_2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    :cond_1
    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/systemui/accessibility/FlexPanelInteractor;->mRotation:I

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_4

    return-void

    .line 165
    :cond_4
    const-class v0, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    .line 169
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/accessibility/FlexPanelInteractor;->isMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    .line 173
    :cond_6
    const-class v0, Lcom/android/systemui/util/DesktopManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/DesktopManager;

    invoke-virtual {v0}, Lcom/android/systemui/util/DesktopManager;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 178
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/accessibility/FlexPanelInteractor;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 183
    :cond_8
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    const/16 v2, 0x14

    invoke-virtual {v0, v2}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 184
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 185
    iget-object v3, v2, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-nez v3, :cond_a

    goto :goto_1

    .line 188
    :cond_a
    invoke-virtual {v2}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v3

    if-ne v3, v1, :cond_9

    .line 189
    invoke-direct {p0, v2}, Lcom/android/systemui/accessibility/FlexPanelInteractor;->isAllowedPackage(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 194
    iget-object v0, p0, Lcom/android/systemui/accessibility/FlexPanelInteractor;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/accessibility/FlexPanelInteractor;->mStartFlexPanelRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_b
    return-void
.end method

.method private onFoldStateTableModeChanged(Z)V
    .locals 0

    .line 87
    iput-boolean p1, p0, Lcom/android/systemui/accessibility/FlexPanelInteractor;->mIsTableMode:Z

    .line 88
    invoke-direct {p0, p1}, Lcom/android/systemui/accessibility/FlexPanelInteractor;->addCallbackForFlexMode(Z)V

    .line 89
    invoke-direct {p0}, Lcom/android/systemui/accessibility/FlexPanelInteractor;->onFlexModeChanged()V

    return-void
.end method

.method private startFlexPanel()V
    .locals 2

    .line 81
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.samsung.controlpanel/.ControlPanelService"

    .line 82
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 83
    iget-object p0, p0, Lcom/android/systemui/accessibility/FlexPanelInteractor;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public addCallback()V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/android/systemui/accessibility/FlexPanelInteractor;->mFoldStateListener:Lcom/samsung/android/view/SemWindowManager$FoldStateListener;

    if-eqz v0, :cond_0

    .line 62
    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/accessibility/FlexPanelInteractor;->mFoldStateListener:Lcom/samsung/android/view/SemWindowManager$FoldStateListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/view/SemWindowManager;->unregisterFoldStateListener(Lcom/samsung/android/view/SemWindowManager$FoldStateListener;)V

    .line 64
    :cond_0
    new-instance v0, Lcom/android/systemui/accessibility/FlexPanelInteractor$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/accessibility/FlexPanelInteractor$1;-><init>(Lcom/android/systemui/accessibility/FlexPanelInteractor;)V

    iput-object v0, p0, Lcom/android/systemui/accessibility/FlexPanelInteractor;->mFoldStateListener:Lcom/samsung/android/view/SemWindowManager$FoldStateListener;

    .line 75
    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/accessibility/FlexPanelInteractor;->mFoldStateListener:Lcom/samsung/android/view/SemWindowManager$FoldStateListener;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/view/SemWindowManager;->registerFoldStateListener(Lcom/samsung/android/view/SemWindowManager$FoldStateListener;Landroid/os/Handler;)V

    return-void
.end method

.method public setRotation(I)V
    .locals 0

    .line 147
    iput p1, p0, Lcom/android/systemui/accessibility/FlexPanelInteractor;->mRotation:I

    .line 148
    invoke-direct {p0}, Lcom/android/systemui/accessibility/FlexPanelInteractor;->onFlexModeChanged()V

    return-void
.end method
