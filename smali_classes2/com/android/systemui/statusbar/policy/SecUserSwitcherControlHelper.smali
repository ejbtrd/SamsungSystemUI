.class public Lcom/android/systemui/statusbar/policy/SecUserSwitcherControlHelper;
.super Ljava/lang/Object;
.source "SecUserSwitcherControlHelper.java"


# static fields
.field public static final CONSTANT_DELAY_MS_MIN:I

.field private static final DEBUG:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field private mStatusBarLazy:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$DcS7a5wHza5b3qfu6ZggBHuVZTk(Lcom/android/systemui/statusbar/policy/SecUserSwitcherControlHelper;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/SecUserSwitcherControlHelper;->lambda$dismissUserSwitchingDialog$0(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 39
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isEngOrUTBinary()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/policy/SecUserSwitcherControlHelper;->DEBUG:Z

    .line 82
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_MANAGE_TWO_PHONE:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xbb8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput v0, Lcom/android/systemui/statusbar/policy/SecUserSwitcherControlHelper;->CONSTANT_DELAY_MS_MIN:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ldagger/Lazy;Lcom/android/systemui/util/concurrency/DelayableExecutor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            ")V"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SecUserSwitcherControlHelper;->mContext:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/SecUserSwitcherControlHelper;->mStatusBarLazy:Ldagger/Lazy;

    .line 51
    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/SecUserSwitcherControlHelper;->mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    return-void
.end method

.method private getConstantDelayWeight()I
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SecUserSwitcherControlHelper;->mStatusBarLazy:Ldagger/Lazy;

    if-eqz v0, :cond_0

    .line 91
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SecUserSwitcherControlHelper;->mStatusBarLazy:Ldagger/Lazy;

    .line 92
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getPanelController()Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 93
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SecUserSwitcherControlHelper;->mStatusBarLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getPanelController()Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getNotificationStackScrollLayoutController()Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getChildCount()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$dismissUserSwitchingDialog$0(I)V
    .locals 5

    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SecUserSwitcherControlHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 64
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/PowerManager;->userActivity(JII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PowerManager Exception occur on dismissUserSwitchingDialog()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/SecUserSwitcherControlHelper;->printLogLine(Ljava/lang/String;)V

    .line 70
    :goto_0
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 71
    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->dismissUserSwitchingDialog(I)V

    const-string p1, "dismissUserSwitchingDialog() by SystemUI"

    .line 72
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/SecUserSwitcherControlHelper;->printLogLine(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActivityManager Exception occur on dismissUserSwitchingDialog()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/SecUserSwitcherControlHelper;->printLogLine(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private printLogLine(Ljava/lang/String;)V
    .locals 0

    .line 102
    sget-boolean p0, Lcom/android/systemui/statusbar/policy/SecUserSwitcherControlHelper;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "SecUserSwitcherControlHelper"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public dismissUserSwitchingDialog(I)V
    .locals 3

    .line 58
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SecUserSwitcherControlHelper;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SecUserSwitcherControlHelper;->mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    if-nez v0, :cond_0

    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SecUserSwitcherControlHelper;->getConstantDelaysWhenSwitchingUser()I

    move-result v0

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION_USER_SWITCHED : I\'ll post dismissUserSwitchingDialog() after "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/SecUserSwitcherControlHelper;->printLogLine(Ljava/lang/String;)V

    .line 61
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SecUserSwitcherControlHelper;->mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v2, Lcom/android/systemui/statusbar/policy/SecUserSwitcherControlHelper$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/statusbar/policy/SecUserSwitcherControlHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/policy/SecUserSwitcherControlHelper;I)V

    int-to-long p0, v0

    invoke-interface {v1, v2, p0, p1}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Ljava/lang/Runnable;

    :cond_1
    :goto_0
    return-void
.end method

.method public getConstantDelaysWhenSwitchingUser()I
    .locals 2

    .line 85
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/SecUserSwitcherControlHelper;->getConstantDelayWeight()I

    move-result p0

    mul-int/lit16 p0, p0, 0x1f4

    .line 86
    sget v0, Lcom/android/systemui/statusbar/policy/SecUserSwitcherControlHelper;->CONSTANT_DELAY_MS_MIN:I

    const/16 v1, 0x2710

    invoke-static {p0, v1}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method
