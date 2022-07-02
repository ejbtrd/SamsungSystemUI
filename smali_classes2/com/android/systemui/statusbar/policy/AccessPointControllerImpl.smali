.class public Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;
.super Ljava/lang/Object;
.source "AccessPointControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;
.implements Lcom/android/wifitrackerlib/WifiPickerTracker$WifiPickerTrackerCallback;
.implements Landroidx/lifecycle/LifecycleOwner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$WifiPickerTrackerFactory;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final ICONS:[[I

.field private static final ICONS_GIGA:[[I

.field private static final ICONS_WECHAT:[I

.field private static final ICONS_WIFI6:[[I

.field private static final ICONS_WIFI6E:[[I


# instance fields
.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPointCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mConnectCallback:Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;

.field private mCurrentUser:I

.field private final mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

.field private final mMainExecutor:Ljava/util/concurrent/Executor;

.field private mSemWifiApSmartCallback:Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback;

.field private mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

.field private final mUserManager:Landroid/os/UserManager;

.field private final mWifiApBleCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$WifiApBleStateChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

.field private mWifiPickerTrackerFactory:Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$WifiPickerTrackerFactory;


# direct methods
.method public static synthetic $r8$lambda$1pXx6Z46jSTBzwuYGeove6EfkYQ(Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->lambda$finalize$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$FVL1JSZDi40ROyotdZsRI9eHi34(Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->lambda$addAccessPointCallback$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$ZAZT-O33Klhov4t_FQiJoseTjuY(Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$kzVTdfDqvMyeeTWs8tuVFKB3BKo(Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->lambda$removeAccessPointCallback$3()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 9

    const-string v0, "AccessPointController"

    const/4 v1, 0x3

    .line 85
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->DEBUG:Z

    const/4 v0, 0x5

    new-array v2, v0, [[I

    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 103
    sget v5, Lcom/android/systemui/R$drawable;->sec_ic_wifi_signal_0:I

    const/4 v6, 0x0

    aput v5, v4, v6

    sget v5, Lcom/android/systemui/R$drawable;->sec_ic_wifi_signal_lock_0:I

    const/4 v7, 0x1

    aput v5, v4, v7

    aput-object v4, v2, v6

    new-array v4, v3, [I

    sget v5, Lcom/android/systemui/R$drawable;->sec_ic_wifi_signal_1:I

    aput v5, v4, v6

    sget v5, Lcom/android/systemui/R$drawable;->sec_ic_wifi_signal_lock_1:I

    aput v5, v4, v7

    aput-object v4, v2, v7

    new-array v4, v3, [I

    sget v5, Lcom/android/systemui/R$drawable;->sec_ic_wifi_signal_2:I

    aput v5, v4, v6

    sget v5, Lcom/android/systemui/R$drawable;->sec_ic_wifi_signal_lock_2:I

    aput v5, v4, v7

    aput-object v4, v2, v3

    new-array v4, v3, [I

    sget v5, Lcom/android/systemui/R$drawable;->sec_ic_wifi_signal_3:I

    aput v5, v4, v6

    sget v5, Lcom/android/systemui/R$drawable;->sec_ic_wifi_signal_lock_3:I

    aput v5, v4, v7

    aput-object v4, v2, v1

    new-array v4, v3, [I

    sget v5, Lcom/android/systemui/R$drawable;->sec_ic_wifi_signal_4:I

    aput v5, v4, v6

    sget v5, Lcom/android/systemui/R$drawable;->sec_ic_wifi_signal_lock_4:I

    aput v5, v4, v7

    const/4 v5, 0x4

    aput-object v4, v2, v5

    sput-object v2, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->ICONS:[[I

    new-array v2, v0, [[I

    new-array v4, v3, [I

    .line 110
    sget v8, Lcom/android/systemui/R$drawable;->sec_ic_wifi_signal_wifi6_0:I

    aput v8, v4, v6

    sget v8, Lcom/android/systemui/R$drawable;->sec_ic_wifi_signal_lock_wifi6_0:I

    aput v8, v4, v7

    aput-object v4, v2, v6

    new-array v4, v3, [I

    sget v8, Lcom/android/systemui/R$drawable;->sec_ic_wifi_signal_wifi6_1:I

    aput v8, v4, v6

    sget v8, Lcom/android/systemui/R$drawable;->sec_ic_wifi_signal_lock_wifi6_1:I

    aput v8, v4, v7

    aput-object v4, v2, v7

    new-array v4, v3, [I

    sget v8, Lcom/android/systemui/R$drawable;->sec_ic_wifi_signal_wifi6_2:I

    aput v8, v4, v6

    sget v8, Lcom/android/systemui/R$drawable;->sec_ic_wifi_signal_lock_wifi6_2:I

    aput v8, v4, v7

    aput-object v4, v2, v3

    new-array v4, v3, [I

    sget v8, Lcom/android/systemui/R$drawable;->sec_ic_wifi_signal_wifi6_3:I

    aput v8, v4, v6

    sget v8, Lcom/android/systemui/R$drawable;->sec_ic_wifi_signal_lock_wifi6_3:I

    aput v8, v4, v7

    aput-object v4, v2, v1

    new-array v4, v3, [I

    sget v8, Lcom/android/systemui/R$drawable;->sec_ic_wifi_signal_wifi6_4:I

    aput v8, v4, v6

    sget v8, Lcom/android/systemui/R$drawable;->sec_ic_wifi_signal_lock_wifi6_4:I

    aput v8, v4, v7

    aput-object v4, v2, v5

    sput-object v2, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->ICONS_WIFI6:[[I

    new-array v2, v0, [[I

    new-array v4, v3, [I

    .line 117
    sget v8, Lcom/android/systemui/R$drawable;->sec_ic_wifi_signal_wifi6e_0:I

    aput v8, v4, v6

    sget v8, Lcom/android/systemui/R$drawable;->sec_ic_wifi_signal_lock_wifi6e_0:I

    aput v8, v4, v7

    aput-object v4, v2, v6

    new-array v4, v3, [I

    sget v8, Lcom/android/systemui/R$drawable;->sec_ic_wifi_signal_wifi6e_1:I

    aput v8, v4, v6

    sget v8, Lcom/android/systemui/R$drawable;->sec_ic_wifi_signal_lock_wifi6e_1:I

    aput v8, v4, v7

    aput-object v4, v2, v7

    new-array v4, v3, [I

    sget v8, Lcom/android/systemui/R$drawable;->sec_ic_wifi_signal_wifi6e_2:I

    aput v8, v4, v6

    sget v8, Lcom/android/systemui/R$drawable;->sec_ic_wifi_signal_lock_wifi6e_2:I

    aput v8, v4, v7

    aput-object v4, v2, v3

    new-array v4, v3, [I

    sget v8, Lcom/android/systemui/R$drawable;->sec_ic_wifi_signal_wifi6e_3:I

    aput v8, v4, v6

    sget v8, Lcom/android/systemui/R$drawable;->sec_ic_wifi_signal_lock_wifi6e_3:I

    aput v8, v4, v7

    aput-object v4, v2, v1

    new-array v4, v3, [I

    sget v8, Lcom/android/systemui/R$drawable;->sec_ic_wifi_signal_wifi6e_4:I

    aput v8, v4, v6

    sget v8, Lcom/android/systemui/R$drawable;->sec_ic_wifi_signal_lock_wifi6e_4:I

    aput v8, v4, v7

    aput-object v4, v2, v5

    sput-object v2, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->ICONS_WIFI6E:[[I

    new-array v2, v0, [[I

    new-array v4, v3, [I

    .line 124
    sget v8, Lcom/android/systemui/R$drawable;->sec_ic_wifi_signal_shift_0:I

    aput v8, v4, v6

    sget v8, Lcom/android/systemui/R$drawable;->sec_ic_wifi_signal_lock_shift_0:I

    aput v8, v4, v7

    aput-object v4, v2, v6

    new-array v4, v3, [I

    sget v8, Lcom/android/systemui/R$drawable;->sec_ic_wifi_signal_shift_1:I

    aput v8, v4, v6

    sget v8, Lcom/android/systemui/R$drawable;->sec_ic_wifi_signal_lock_shift_1:I

    aput v8, v4, v7

    aput-object v4, v2, v7

    new-array v4, v3, [I

    sget v8, Lcom/android/systemui/R$drawable;->sec_ic_wifi_signal_shift_2:I

    aput v8, v4, v6

    sget v8, Lcom/android/systemui/R$drawable;->sec_ic_wifi_signal_lock_shift_2:I

    aput v8, v4, v7

    aput-object v4, v2, v3

    new-array v4, v3, [I

    sget v8, Lcom/android/systemui/R$drawable;->sec_ic_wifi_signal_shift_3:I

    aput v8, v4, v6

    sget v8, Lcom/android/systemui/R$drawable;->sec_ic_wifi_signal_lock_shift_3:I

    aput v8, v4, v7

    aput-object v4, v2, v1

    new-array v4, v3, [I

    sget v8, Lcom/android/systemui/R$drawable;->sec_ic_wifi_signal_shift_4:I

    aput v8, v4, v6

    sget v8, Lcom/android/systemui/R$drawable;->sec_ic_wifi_signal_lock_shift_4:I

    aput v8, v4, v7

    aput-object v4, v2, v5

    sput-object v2, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->ICONS_GIGA:[[I

    new-array v0, v0, [I

    .line 131
    sget v2, Lcom/android/systemui/R$drawable;->sec_ic_wifi_signal_wechat_0:I

    aput v2, v0, v6

    sget v2, Lcom/android/systemui/R$drawable;->sec_ic_wifi_signal_wechat_1:I

    aput v2, v0, v7

    sget v2, Lcom/android/systemui/R$drawable;->sec_ic_wifi_signal_wechat_2:I

    aput v2, v0, v3

    sget v2, Lcom/android/systemui/R$drawable;->sec_ic_wifi_signal_wechat_3:I

    aput v2, v0, v1

    sget v1, Lcom/android/systemui/R$drawable;->sec_ic_wifi_signal_wechat_4:I

    aput v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->ICONS_WECHAT:[I

    return-void
.end method

.method public constructor <init>(Landroid/os/UserManager;Lcom/android/systemui/settings/UserTracker;Ljava/util/concurrent/Executor;Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$WifiPickerTrackerFactory;)V
    .locals 1

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 145
    new-instance v0, Landroidx/lifecycle/LifecycleRegistry;

    invoke-direct {v0, p0}, Landroidx/lifecycle/LifecycleRegistry;-><init>(Landroidx/lifecycle/LifecycleOwner;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mWifiApBleCallbacks:Ljava/util/ArrayList;

    .line 152
    new-instance v0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$1;-><init>(Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mSemWifiApSmartCallback:Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback;

    .line 467
    new-instance v0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$2;-><init>(Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mConnectCallback:Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;

    .line 169
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mUserManager:Landroid/os/UserManager;

    .line 170
    invoke-interface {p2}, Lcom/android/systemui/settings/UserTracker;->getUserId()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mCurrentUser:I

    .line 171
    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mMainExecutor:Ljava/util/concurrent/Executor;

    .line 172
    iput-object p4, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mWifiPickerTrackerFactory:Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$WifiPickerTrackerFactory;

    .line 173
    new-instance p1, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;)V

    invoke-interface {p3, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 174
    iget-object p1, p4, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$WifiPickerTrackerFactory;->mContext:Landroid/content/Context;

    const-string/jumbo p2, "sem_wifi"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/wifi/SemWifiManager;

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;ILjava/lang/String;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->fireWifiApBleStateChangeCallback(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 79
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->DEBUG:Z

    return v0
.end method

.method private fireAccessPointsCallback(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/wifitrackerlib/WifiEntry;",
            ">;)V"
        }
    .end annotation

    .line 326
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPointCallback;

    .line 327
    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPointCallback;->onAccessPointsChanged(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private fireSettingsIntentCallback(Landroid/content/Intent;)V
    .locals 1

    .line 320
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPointCallback;

    .line 321
    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPointCallback;->onSettingsActivityTriggered(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private fireWifiApBleStateChangeCallback(ILjava/lang/String;)V
    .locals 1

    .line 460
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mWifiApBleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$WifiApBleStateChangeCallback;

    .line 461
    invoke-interface {v0, p1, p2}, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$WifiApBleStateChangeCallback;->onWifiApBleStateChanged(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private isOpenNetwork(Lcom/android/wifitrackerlib/WifiEntry;)Z
    .locals 0

    .line 556
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurity()I

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurity()I

    move-result p0

    const/4 p1, 0x4

    if-ne p0, p1, :cond_0

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

.method private synthetic lambda$addAccessPointCallback$2()V
    .locals 1

    .line 215
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/LifecycleRegistry;->setCurrentState(Landroidx/lifecycle/Lifecycle$State;)V

    return-void
.end method

.method private synthetic lambda$finalize$1()V
    .locals 1

    .line 196
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/LifecycleRegistry;->setCurrentState(Landroidx/lifecycle/Lifecycle$State;)V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    .line 173
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/LifecycleRegistry;->setCurrentState(Landroidx/lifecycle/Lifecycle$State;)V

    return-void
.end method

.method private synthetic lambda$removeAccessPointCallback$3()V
    .locals 1

    .line 225
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/LifecycleRegistry;->setCurrentState(Landroidx/lifecycle/Lifecycle$State;)V

    return-void
.end method


# virtual methods
.method public addAccessPointCallback(Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPointCallback;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 211
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 212
    :cond_0
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addCallback "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AccessPointController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 215
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mMainExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public addWifiApBleStateChangeCallback(Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$WifiApBleStateChangeCallback;)V
    .locals 1

    .line 380
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mWifiApBleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 381
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mWifiApBleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 382
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mSemWifiApSmartCallback:Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mWifiPickerTrackerFactory:Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$WifiPickerTrackerFactory;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$WifiPickerTrackerFactory;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/samsung/android/wifi/SemWifiManager;->registerWifiApSmartCallback(Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback;Ljava/util/concurrent/Executor;)V

    :cond_0
    return-void
.end method

.method public canConfigWifi()Z
    .locals 2

    .line 201
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mUserManager:Landroid/os/UserManager;

    new-instance v1, Landroid/os/UserHandle;

    iget p0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mCurrentUser:I

    invoke-direct {v1, p0}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo p0, "no_config_wifi"

    invoke-virtual {v0, p0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public connect(Lcom/android/wifitrackerlib/WifiEntry;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 290
    :cond_0
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 291
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    const-string v2, "AccessPointController"

    if-eqz v1, :cond_1

    .line 292
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connect networkId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    iget v3, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 294
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connect to unsaved network "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 298
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mConnectCallback:Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;

    invoke-virtual {p1, p0}, Lcom/android/wifitrackerlib/WifiEntry;->connect(Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;)V

    goto :goto_1

    .line 302
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->isOpenNetwork(Lcom/android/wifitrackerlib/WifiEntry;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 304
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->startSettings(Lcom/android/wifitrackerlib/WifiEntry;)V

    const/4 p0, 0x1

    return p0

    .line 313
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mConnectCallback:Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;

    invoke-virtual {p1, p0}, Lcom/android/wifitrackerlib/WifiEntry;->connect(Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;)V

    :goto_1
    return v0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    .line 342
    new-instance v0, Landroid/util/IndentingPrintWriter;

    invoke-direct {v0, p1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    const-string p1, "AccessPointControllerImpl:"

    .line 343
    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 344
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 345
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Callbacks: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 346
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WifiPickerTracker: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 347
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 348
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connected: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiPickerTracker;->getConnectedWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 349
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Other wifi entries: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    .line 350
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->getWifiEntries()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 349
    invoke-virtual {v0, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 351
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    if-eqz p0, :cond_1

    const-string p0, "WifiPickerTracker not started, cannot get reliable entries"

    .line 352
    invoke-virtual {v0, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 354
    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 196
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mMainExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 197
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getIcon(Lcom/android/wifitrackerlib/WifiEntry;)I
    .locals 4

    .line 249
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getLevel()I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    move v0, v1

    :cond_0
    const/4 v2, 0x4

    if-le v0, v2, :cond_1

    move v0, v2

    .line 253
    :cond_1
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->semIsWifi6ENetwork()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    .line 254
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->isOpenNetwork(Lcom/android/wifitrackerlib/WifiEntry;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 255
    sget-object p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->ICONS_WIFI6E:[[I

    aget-object p0, p0, v0

    aget p0, p0, v3

    return p0

    .line 257
    :cond_2
    sget-object p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->ICONS_WIFI6E:[[I

    aget-object p0, p0, v0

    aget p0, p0, v1

    return p0

    .line 259
    :cond_3
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->semIsWifi6Network()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 260
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->isOpenNetwork(Lcom/android/wifitrackerlib/WifiEntry;)Z

    move-result p0

    if-nez p0, :cond_4

    .line 261
    sget-object p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->ICONS_WIFI6:[[I

    aget-object p0, p0, v0

    aget p0, p0, v3

    return p0

    .line 263
    :cond_4
    sget-object p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->ICONS_WIFI6:[[I

    aget-object p0, p0, v0

    aget p0, p0, v1

    return p0

    .line 267
    :cond_5
    instance-of v2, p1, Lcom/android/wifitrackerlib/StandardWifiEntry;

    if-eqz v2, :cond_7

    move-object v2, p1

    check-cast v2, Lcom/android/wifitrackerlib/StandardWifiEntry;

    invoke-virtual {v2}, Lcom/android/wifitrackerlib/StandardWifiEntry;->semIsOllehGigaAp()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 268
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->isOpenNetwork(Lcom/android/wifitrackerlib/WifiEntry;)Z

    move-result p0

    if-nez p0, :cond_6

    .line 269
    sget-object p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->ICONS_GIGA:[[I

    aget-object p0, p0, v0

    aget p0, p0, v3

    return p0

    .line 271
    :cond_6
    sget-object p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->ICONS_GIGA:[[I

    aget-object p0, p0, v0

    aget p0, p0, v1

    return p0

    .line 273
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->isOpenNetwork(Lcom/android/wifitrackerlib/WifiEntry;)Z

    move-result p0

    if-nez p0, :cond_8

    .line 274
    sget-object p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->ICONS:[[I

    aget-object p0, p0, v0

    aget p0, p0, v3

    return p0

    .line 276
    :cond_8
    sget-object p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->ICONS:[[I

    aget-object p0, p0, v0

    aget p0, p0, v1

    return p0
.end method

.method public getLifecycle()Landroidx/lifecycle/Lifecycle;
    .locals 0

    .line 191
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    return-object p0
.end method

.method public getSmartTetheringIcon(Lcom/samsung/android/wifi/SemWifiApBleScanResult;)I
    .locals 4

    .line 401
    iget p0, p1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mBLERssi:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, -0x3c

    if-lt p0, v2, :cond_0

    const/4 p0, 0x4

    goto :goto_0

    :cond_0
    const/16 v2, -0x46

    if-lt p0, v2, :cond_1

    const/4 p0, 0x3

    goto :goto_0

    :cond_1
    const/16 v2, -0x50

    if-lt p0, v2, :cond_2

    const/4 p0, 0x2

    goto :goto_0

    :cond_2
    const/16 v2, -0x5a

    if-lt p0, v2, :cond_3

    move p0, v1

    goto :goto_0

    :cond_3
    move p0, v0

    .line 412
    :goto_0
    iget v2, p1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mNetworkType:I

    sget v3, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->MHS_WIFI_6_NETWORK:I

    if-ne v2, v3, :cond_5

    .line 414
    iget p1, p1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mSecurity:I

    if-ne p1, v1, :cond_4

    .line 415
    sget-object p1, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->ICONS_WIFI6:[[I

    aget-object p0, p1, p0

    aget p0, p0, v1

    return p0

    .line 417
    :cond_4
    sget-object p1, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->ICONS_WIFI6:[[I

    aget-object p0, p1, p0

    aget p0, p0, v0

    return p0

    .line 419
    :cond_5
    sget v3, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->MHS_WIFI_6E_NETWORK:I

    if-ne v2, v3, :cond_7

    .line 420
    iget p1, p1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mSecurity:I

    if-ne p1, v1, :cond_6

    .line 421
    sget-object p1, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->ICONS_WIFI6E:[[I

    aget-object p0, p1, p0

    aget p0, p0, v1

    return p0

    .line 423
    :cond_6
    sget-object p1, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->ICONS_WIFI6E:[[I

    aget-object p0, p1, p0

    aget p0, p0, v0

    return p0

    :cond_7
    if-ne v2, v3, :cond_9

    .line 427
    iget p1, p1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mSecurity:I

    if-ne p1, v1, :cond_8

    .line 428
    sget-object p1, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->ICONS_WIFI6:[[I

    aget-object p0, p1, p0

    aget p0, p0, v1

    return p0

    .line 430
    :cond_8
    sget-object p1, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->ICONS_WIFI6:[[I

    aget-object p0, p1, p0

    aget p0, p0, v0

    return p0

    .line 433
    :cond_9
    iget p1, p1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mSecurity:I

    if-ne p1, v1, :cond_a

    .line 434
    sget-object p1, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->ICONS:[[I

    aget-object p0, p1, p0

    aget p0, p0, v1

    return p0

    .line 436
    :cond_a
    sget-object p1, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->ICONS:[[I

    aget-object p0, p1, p0

    aget p0, p0, v0

    return p0
.end method

.method public getWifiApBleScanList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/wifi/SemWifiApBleScanResult;",
            ">;"
        }
    .end annotation

    .line 396
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->getAutoHotspotEntries()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getWifiApBleStatus(Ljava/lang/String;)I
    .locals 0

    .line 443
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    if-eqz p0, :cond_0

    .line 444
    invoke-virtual {p0, p1}, Lcom/samsung/android/wifi/SemWifiManager;->getSmartApConnectedStatusFromScanResult(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public init()V
    .locals 3

    .line 183
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    if-nez v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mWifiPickerTrackerFactory:Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$WifiPickerTrackerFactory;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$WifiPickerTrackerFactory;->create(Landroidx/lifecycle/Lifecycle;Lcom/android/wifitrackerlib/WifiPickerTracker$WifiPickerTrackerCallback;Z)Lcom/android/wifitrackerlib/WifiPickerTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    :cond_0
    return-void
.end method

.method public onNumSavedNetworksChanged()V
    .locals 0

    return-void
.end method

.method public onNumSavedSubscriptionsChanged()V
    .locals 0

    return-void
.end method

.method public onUserSwitched(I)V
    .locals 0

    .line 206
    iput p1, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mCurrentUser:I

    return-void
.end method

.method public onWifiEntriesChanged()V
    .locals 0

    .line 364
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->scanForAccessPoints()V

    return-void
.end method

.method public onWifiStateChanged()V
    .locals 0

    .line 359
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->scanForAccessPoints()V

    return-void
.end method

.method public removeAccessPointCallback(Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPointCallback;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 222
    :cond_0
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeCallback "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AccessPointController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 224
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 225
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mMainExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public removeWifiApBleStateChangeCallback(Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$WifiApBleStateChangeCallback;)V
    .locals 1

    .line 388
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mWifiApBleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 389
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mWifiApBleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 390
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mSemWifiApSmartCallback:Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback;

    invoke-virtual {p1, p0}, Lcom/samsung/android/wifi/SemWifiManager;->unregisterWifiApSmartCallback(Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback;)V

    :cond_0
    return-void
.end method

.method public scanForAccessPoints()V
    .locals 3

    .line 231
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    if-nez v0, :cond_0

    .line 232
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->fireAccessPointsCallback(Ljava/util/List;)V

    return-void

    .line 239
    :cond_0
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->getWifiEntries()Ljava/util/List;

    move-result-object v0

    .line 240
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiPickerTracker;->getConnectedWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    .line 242
    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 244
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->fireAccessPointsCallback(Ljava/util/List;)V

    return-void
.end method

.method public startSettings(Lcom/android/wifitrackerlib/WifiEntry;)V
    .locals 3

    .line 333
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 334
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "wifi_start_connect_ssid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 335
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurity()I

    move-result p1

    const-string/jumbo v1, "wifi_start_connect_security"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 336
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p1, "com.android.settings"

    .line 337
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 338
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->fireSettingsIntentCallback(Landroid/content/Intent;)V

    return-void
.end method

.method public triggerWifiApBleConnection(Lcom/samsung/android/wifi/SemWifiApBleScanResult;)Z
    .locals 10

    .line 452
    iget v0, p1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mBattery:I

    const/16 v1, 0xf

    if-le v0, v1, :cond_0

    .line 453
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    iget-object v3, p1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mDevice:Ljava/lang/String;

    iget v4, p1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mMHSdeviceType:I

    iget v5, p1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mhidden:I

    iget v6, p1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mSecurity:I

    iget-object v7, p1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    iget-object v8, p1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mUserName:Ljava/lang/String;

    iget v9, p1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->version:I

    invoke-virtual/range {v2 .. v9}, Lcom/android/wifitrackerlib/BaseWifiTracker;->connectToSmartMHS(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 455
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "triggerWifiApBleConnection() : bleDevice -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mSSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mBattery: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mBattery:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " ret: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AccessPointController.AutoHotspot"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method
