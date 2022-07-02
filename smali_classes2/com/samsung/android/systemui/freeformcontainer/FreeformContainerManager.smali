.class Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;
.super Ljava/lang/Object;
.source "FreeformContainerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field private static volatile sFreeformContainerManager:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;


# instance fields
.field private mConfiguration:Landroid/content/res/Configuration;

.field private final mContext:Landroid/content/Context;

.field private final mFreeformContainerFilter:Landroid/content/IntentFilter;

.field private final mFreeformContainerReceiver:Landroid/content/BroadcastReceiver;

.field final mH:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;

.field private mLeboChangedCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private mRotation:I

.field private final mRotationWatcher:Landroid/view/IRotationWatcher$Stub;

.field private mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field private mThread:Landroid/os/HandlerThread;


# direct methods
.method public static synthetic $r8$lambda$3T28KohxOm5djUriWpcEwZm99aQ(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;->lambda$new$0(Landroid/net/Uri;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 75
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    sput-boolean v0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;->DEBUG:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$1;-><init>(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;)V

    iput-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;->mRotationWatcher:Landroid/view/IRotationWatcher$Stub;

    .line 103
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;->mFreeformContainerFilter:Landroid/content/IntentFilter;

    .line 105
    new-instance v1, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$2;-><init>(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;)V

    iput-object v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;->mFreeformContainerReceiver:Landroid/content/BroadcastReceiver;

    .line 167
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;->mContext:Landroid/content/Context;

    .line 169
    new-instance p1, Landroid/os/HandlerThread;

    const-string v1, "FreeformContainerHandlerThread"

    const/4 v2, 0x0

    invoke-direct {p1, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;->mThread:Landroid/os/HandlerThread;

    .line 170
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 171
    new-instance p1, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;

    iget-object v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {p1, p0, v1, v3}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;-><init>(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;Landroid/os/Looper;Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$1;)V

    iput-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;->mH:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;

    const-string p1, "android.intent.action.CONFIGURATION_CHANGED"

    .line 173
    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p1, "android.intent.action.DATE_CHANGED"

    .line 174
    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p1, "android.os.action.POWER_SAVE_MODE_CHANGED"

    .line 175
    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p1, "android.intent.action.USER_SWITCHED"

    .line 176
    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 180
    invoke-static {p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerSystemProxy;->setHasTopUi(Z)V

    .line 182
    const-class v1, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/SettingsHelper;

    iput-object v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 184
    sget-boolean v1, Lcom/android/wm/shell/CoreShellRune;->BAIDU_CARLIFE:Z

    if-eqz v1, :cond_0

    const-string v1, "com.samsung.intent.action.LELINK_CAST_CONNECTION_CHANGED"

    .line 185
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.intent.action.WIFI_DISPLAY_SOURCE_STATE"

    .line 186
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 188
    new-instance v0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;)V

    iput-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;->mLeboChangedCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    .line 194
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    new-array p1, p1, [Landroid/net/Uri;

    const-string v1, "lelink_cast_on"

    .line 195
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    aput-object v1, p1, v2

    .line 194
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;)Landroid/content/Context;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;)Landroid/content/res/Configuration;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;->mConfiguration:Landroid/content/res/Configuration;

    return-object p0
.end method

.method static synthetic access$102(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;Landroid/content/res/Configuration;)Landroid/content/res/Configuration;
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;->mConfiguration:Landroid/content/res/Configuration;

    return-object p1
.end method

.method static synthetic access$300(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;)I
    .locals 0

    .line 73
    iget p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;->mRotation:I

    return p0
.end method

.method static synthetic access$302(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;I)I
    .locals 0

    .line 73
    iput p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;->mRotation:I

    return p1
.end method

.method static synthetic access$400(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;)Landroid/view/IRotationWatcher$Stub;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;->mRotationWatcher:Landroid/view/IRotationWatcher$Stub;

    return-object p0
.end method

.method static synthetic access$500(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;)Landroid/content/BroadcastReceiver;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;->mFreeformContainerReceiver:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method static synthetic access$600(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;)Landroid/content/IntentFilter;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;->mFreeformContainerFilter:Landroid/content/IntentFilter;

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;
    .locals 2

    .line 155
    sget-object v0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;->sFreeformContainerManager:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;

    if-nez v0, :cond_1

    .line 156
    const-class v0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;

    monitor-enter v0

    .line 157
    :try_start_0
    sget-object v1, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;->sFreeformContainerManager:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;

    if-nez v1, :cond_0

    .line 158
    new-instance v1, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;->sFreeformContainerManager:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;

    .line 160
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 163
    :cond_1
    :goto_0
    sget-object p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;->sFreeformContainerManager:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;

    return-object p0
.end method

.method private isWifiDisplayRunning(Landroid/content/Context;)Z
    .locals 2

    const-string p0, "display"

    .line 220
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    const/4 p1, 0x0

    if-eqz p0, :cond_1

    .line 221
    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 222
    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplayState()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-ne p0, v1, :cond_1

    :cond_0
    move p1, v0

    :cond_1
    return p1
.end method

.method private synthetic lambda$new$0(Landroid/net/Uri;)V
    .locals 0

    .line 189
    invoke-virtual {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;->shouldHideInformation()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 190
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;->mH:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;

    const/16 p1, 0x19

    invoke-virtual {p0, p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;->sendMessage(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    const/4 v0, 0x0

    .line 207
    iput-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;->mThread:Landroid/os/HandlerThread;

    return-void
.end method

.method getContext()Landroid/content/Context;
    .locals 0

    .line 201
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public shouldHideInformation()Z
    .locals 2

    .line 212
    sget-boolean v0, Lcom/android/wm/shell/CoreShellRune;->BAIDU_CARLIFE:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/systemui/Operator;->isCHNBranding()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;->mContext:Landroid/content/Context;

    .line 213
    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper;->isLeboRunning(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;->isWifiDisplayRunning(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
