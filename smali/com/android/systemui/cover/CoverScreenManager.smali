.class public Lcom/android/systemui/cover/CoverScreenManager;
.super Ljava/lang/Object;
.source "CoverScreenManager.java"

# interfaces
.implements Lcom/android/systemui/plugins/PluginListener;
.implements Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/cover/CoverScreenManager$DisplayWindowListenerImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/plugins/PluginListener<",
        "Lcom/android/systemui/plugins/Plugin;",
        ">;",
        "Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;",
        "Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;",
        "Lcom/android/systemui/Dumpable;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CoverScreenManager"


# instance fields
.field private mActivity:Lcom/android/systemui/cover/CoverHomeActivity;

.field private final mBackgroundExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field private mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mConfiguration:Landroid/content/res/Configuration;

.field private mContext:Landroid/content/Context;

.field private mCoverHost:Lcom/android/systemui/cover/CoverHost;

.field private mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

.field private mCoverState:Lcom/samsung/android/cover/CoverState;

.field private mCoverWindowDelegate:Lcom/android/systemui/cover/CoverWindowDelegate;

.field private final mDisplayContainerListener:Landroid/view/IDisplayWindowListener;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mDumpManager:Lcom/android/systemui/dump/DumpManager;

.field private mFaceWidgetManagerLazy:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mIDisplayManager:Landroid/hardware/display/IDisplayManager;

.field private mIsAttached:Z

.field private mIsPluginListenerAdded:Z

.field private mIsStarted:Z

.field private mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mMaxRefreshRateToken:Lcom/samsung/android/hardware/display/IRefreshRateMaxLimitToken;

.field private mPluginAODManagerLazy:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/doze/PluginAODManager;",
            ">;"
        }
    .end annotation
.end field

.field private mPluginConnectionConsumer:Ljava/util/function/Consumer;

.field private mPluginContext:Landroid/content/Context;

.field private mPluginManager:Lcom/android/systemui/shared/plugins/PluginManager;

.field private mPowerManager:Landroid/os/PowerManager;

.field private final mRefreshRateToken:Landroid/os/IBinder;

.field private mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

.field private final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field private mSubRoomMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/systemui/plugins/subscreen/SubRoom;",
            ">;"
        }
    .end annotation
.end field

.field private mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

.field private mVisibleRect:Landroid/graphics/Rect;

.field private mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;


# direct methods
.method public static synthetic $r8$lambda$RMVi5Hvgjs6ftT8O6bhiKH54WOo(Lcom/android/systemui/cover/CoverScreenManager;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/cover/CoverScreenManager;->lambda$new$0(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Te34jlWQToMmQ-XiUm-wWzgXG1o(Lcom/android/systemui/cover/CoverScreenManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/cover/CoverScreenManager;->lambda$prepareCoverHomeActivity$1()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/cover/CoverHost;Lcom/android/keyguard/KeyguardUpdateMonitor;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/systemui/shared/plugins/PluginManager;Landroid/hardware/display/DisplayManager;Lcom/android/systemui/util/concurrency/DelayableExecutor;Landroid/os/PowerManager;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/dump/DumpManager;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/cover/CoverHost;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/doze/PluginAODManager;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;",
            ">;",
            "Lcom/android/systemui/shared/plugins/PluginManager;",
            "Landroid/hardware/display/DisplayManager;",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            "Landroid/os/PowerManager;",
            "Lcom/android/systemui/util/SettingsHelper;",
            "Lcom/android/systemui/dump/DumpManager;",
            ")V"
        }
    .end annotation

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 106
    iput-boolean v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mIsAttached:Z

    .line 107
    iput-boolean v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mIsStarted:Z

    .line 108
    iput-boolean v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mIsPluginListenerAdded:Z

    .line 119
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mSubRoomMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 142
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mRefreshRateToken:Landroid/os/IBinder;

    .line 145
    new-instance v0, Lcom/android/systemui/cover/CoverScreenManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/systemui/cover/CoverScreenManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/cover/CoverScreenManager;)V

    iput-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mPluginConnectionConsumer:Ljava/util/function/Consumer;

    .line 152
    new-instance v0, Lcom/android/systemui/cover/CoverScreenManager$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/cover/CoverScreenManager$1;-><init>(Lcom/android/systemui/cover/CoverScreenManager;)V

    iput-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 177
    new-instance v0, Lcom/android/systemui/cover/CoverScreenManager$2;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/cover/CoverScreenManager$2;-><init>(Lcom/android/systemui/cover/CoverScreenManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mHandler:Landroid/os/Handler;

    .line 214
    iput-object p1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mContext:Landroid/content/Context;

    .line 215
    iput-object p2, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverHost:Lcom/android/systemui/cover/CoverHost;

    .line 216
    iput-object p3, p0, Lcom/android/systemui/cover/CoverScreenManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 217
    iput-object p4, p0, Lcom/android/systemui/cover/CoverScreenManager;->mPluginAODManagerLazy:Ldagger/Lazy;

    .line 218
    iput-object p5, p0, Lcom/android/systemui/cover/CoverScreenManager;->mFaceWidgetManagerLazy:Ldagger/Lazy;

    .line 219
    iput-object p6, p0, Lcom/android/systemui/cover/CoverScreenManager;->mPluginManager:Lcom/android/systemui/shared/plugins/PluginManager;

    .line 220
    iput-object p7, p0, Lcom/android/systemui/cover/CoverScreenManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 221
    iput-object p8, p0, Lcom/android/systemui/cover/CoverScreenManager;->mBackgroundExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 222
    iput-object p9, p0, Lcom/android/systemui/cover/CoverScreenManager;->mPowerManager:Landroid/os/PowerManager;

    .line 223
    iput-object p10, p0, Lcom/android/systemui/cover/CoverScreenManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 224
    iput-object p11, p0, Lcom/android/systemui/cover/CoverScreenManager;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 225
    new-instance p1, Landroid/content/res/Configuration;

    iget-object p2, p0, Lcom/android/systemui/cover/CoverScreenManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object p1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mConfiguration:Landroid/content/res/Configuration;

    .line 226
    new-instance p1, Lcom/android/systemui/cover/CoverScreenManager$DisplayWindowListenerImpl;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/cover/CoverScreenManager$DisplayWindowListenerImpl;-><init>(Lcom/android/systemui/cover/CoverScreenManager;Lcom/android/systemui/cover/CoverScreenManager$1;)V

    iput-object p1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mDisplayContainerListener:Landroid/view/IDisplayWindowListener;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 91
    sget-object v0, Lcom/android/systemui/cover/CoverScreenManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/cover/CoverScreenManager;)Lcom/samsung/android/cover/CoverState;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/cover/CoverScreenManager;Lcom/samsung/android/cover/CoverState;)V
    .locals 0

    .line 91
    invoke-direct {p0, p1}, Lcom/android/systemui/cover/CoverScreenManager;->initialize(Lcom/samsung/android/cover/CoverState;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/cover/CoverScreenManager;)Lcom/android/systemui/cover/CoverWindowDelegate;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverWindowDelegate:Lcom/android/systemui/cover/CoverWindowDelegate;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/systemui/cover/CoverScreenManager;I)V
    .locals 0

    .line 91
    invoke-direct {p0, p1}, Lcom/android/systemui/cover/CoverScreenManager;->onDisplayRemoved(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/systemui/cover/CoverScreenManager;I)V
    .locals 0

    .line 91
    invoke-direct {p0, p1}, Lcom/android/systemui/cover/CoverScreenManager;->onDisplayAdded(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/cover/CoverScreenManager;Lcom/samsung/android/cover/CoverState;)Z
    .locals 0

    .line 91
    invoke-direct {p0, p1}, Lcom/android/systemui/cover/CoverScreenManager;->isUseCoverPlugin(Lcom/samsung/android/cover/CoverState;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/android/systemui/cover/CoverScreenManager;Lcom/samsung/android/cover/CoverState;)Z
    .locals 0

    .line 91
    invoke-direct {p0, p1}, Lcom/android/systemui/cover/CoverScreenManager;->isUseDisplayCoverPlugin(Lcom/samsung/android/cover/CoverState;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/android/systemui/cover/CoverScreenManager;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Lcom/android/systemui/cover/CoverScreenManager;->updatePluginListener()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/cover/CoverScreenManager;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Lcom/android/systemui/cover/CoverScreenManager;->onUserUnlocked()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/cover/CoverScreenManager;Z)V
    .locals 0

    .line 91
    invoke-direct {p0, p1}, Lcom/android/systemui/cover/CoverScreenManager;->onLockDisabledChanged(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/cover/CoverScreenManager;)Landroid/hardware/display/VirtualDisplay;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/cover/CoverScreenManager;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Lcom/android/systemui/cover/CoverScreenManager;->prepareVirtualDisplay()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/cover/CoverScreenManager;)Landroid/os/Handler;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private addPluginListener(Lcom/samsung/android/cover/CoverState;)V
    .locals 6

    .line 698
    iget-boolean v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mIsPluginListenerAdded:Z

    if-eqz v0, :cond_0

    return-void

    .line 702
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/cover/CoverScreenManager;->isUseCoverPlugin(Lcom/samsung/android/cover/CoverState;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/systemui/cover/CoverScreenManager;->isUseDisplayCoverPlugin(Lcom/samsung/android/cover/CoverState;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 703
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/cover/CoverScreenManager;->isUseCoverPlugin(Lcom/samsung/android/cover/CoverState;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 704
    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mPluginManager:Lcom/android/systemui/shared/plugins/PluginManager;

    const-class v2, Lcom/android/systemui/plugins/cover/PluginViewCover;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lcom/android/systemui/shared/plugins/PluginManager;->addPluginListener(Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;ZZI)V

    goto :goto_0

    .line 706
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    if-nez p1, :cond_3

    .line 707
    sget-object p0, Lcom/android/systemui/cover/CoverScreenManager;->TAG:Ljava/lang/String;

    const-string p1, "addPluginListener fail. wait virtual display"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 710
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mActivity:Lcom/android/systemui/cover/CoverHomeActivity;

    if-nez v0, :cond_4

    .line 711
    sget-object p0, Lcom/android/systemui/cover/CoverScreenManager;->TAG:Ljava/lang/String;

    const-string p1, "addPluginListener fail. wait activity created"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 714
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mPluginManager:Lcom/android/systemui/shared/plugins/PluginManager;

    const-class v2, Lcom/android/systemui/plugins/cover/PluginDisplayCover;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {p1}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v5

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lcom/android/systemui/shared/plugins/PluginManager;->addPluginListener(Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;ZZI)V

    .line 716
    :goto_0
    sget-object p1, Lcom/android/systemui/cover/CoverScreenManager;->TAG:Ljava/lang/String;

    const-string v0, "addPluginListener()"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 717
    iput-boolean p1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mIsPluginListenerAdded:Z

    :cond_5
    return-void
.end method

.method private finishCoverHomeActivity()V
    .locals 0

    .line 877
    iget-object p0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mActivity:Lcom/android/systemui/cover/CoverHomeActivity;

    if-eqz p0, :cond_0

    .line 878
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method private getRoomName(I)Ljava/lang/String;
    .locals 1

    const/16 p0, 0x12d

    if-eq p1, p0, :cond_0

    .line 614
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "INVALID TYPE ["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "SUB_ROOM_NOTIFICATION"

    return-object p0
.end method

.method private getVirtualDisplayDensity()I
    .locals 1

    .line 979
    new-instance p0, Landroid/graphics/Point;

    invoke-direct {p0}, Landroid/graphics/Point;-><init>()V

    .line 980
    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/view/SemWindowManager;->getUserDisplaySize(Landroid/graphics/Point;)V

    .line 981
    iget p0, p0, Landroid/graphics/Point;->x:I

    const/16 v0, 0x438

    if-ge p0, v0, :cond_0

    const/16 p0, 0x140

    return p0

    :cond_0
    const/16 v0, 0x5a0

    if-ge p0, v0, :cond_1

    const/16 p0, 0x1e0

    return p0

    :cond_1
    const/16 p0, 0x280

    return p0
.end method

.method private initialize(Lcom/samsung/android/cover/CoverState;)V
    .locals 3

    .line 667
    invoke-direct {p0, p1}, Lcom/android/systemui/cover/CoverScreenManager;->isUseCoverPlugin(Lcom/samsung/android/cover/CoverState;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 668
    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverWindowDelegate:Lcom/android/systemui/cover/CoverWindowDelegate;

    if-nez v0, :cond_0

    .line 669
    new-instance v0, Lcom/android/systemui/cover/CoverWindowDelegate;

    iget-object v1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/cover/CoverWindowDelegate;-><init>(Landroid/content/Context;Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverWindowDelegate:Lcom/android/systemui/cover/CoverWindowDelegate;

    .line 671
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/cover/CoverScreenManager;->requestPluginConnection(Lcom/samsung/android/cover/CoverState;)V

    goto :goto_0

    .line 672
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/cover/CoverScreenManager;->isUseDisplayCoverPlugin(Lcom/samsung/android/cover/CoverState;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 673
    invoke-direct {p0}, Lcom/android/systemui/cover/CoverScreenManager;->prepareVirtualDisplay()V

    .line 674
    iget-object p1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    if-eqz p1, :cond_2

    .line 675
    invoke-virtual {p1}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/cover/CoverScreenManager;->startCoverHomeActivity(Landroid/view/Display;)V

    .line 677
    iget-object p1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    const-string v0, "CoverScreenManager"

    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/dump/DumpManager;->registerNsDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    goto :goto_0

    .line 682
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mHandler:Landroid/os/Handler;

    const/16 p1, 0x3e8

    const-wide/16 v0, 0x12c

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_3
    :goto_0
    return-void
.end method

.method private isUseCoverPlugin(Lcom/samsung/android/cover/CoverState;)Z
    .locals 3

    .line 826
    sget-boolean p0, Lcom/android/systemui/LsRune;->COVER_DEBUG_CAMERA_COVER_ON_SIDE_COVER:Z

    const/4 v0, 0x0

    const/16 v1, 0xf

    if-eqz p0, :cond_0

    iget p0, p1, Lcom/samsung/android/cover/CoverState;->type:I

    if-ne v1, p0, :cond_0

    return v0

    .line 831
    :cond_0
    iget p0, p1, Lcom/samsung/android/cover/CoverState;->type:I

    const/4 p1, 0x1

    if-eq p0, p1, :cond_1

    const/16 v2, 0x8

    if-eq p0, v2, :cond_1

    const/16 v2, 0xb

    if-eq p0, v2, :cond_1

    if-eq p0, v1, :cond_1

    const/16 v1, 0x10

    if-eq p0, v1, :cond_1

    return v0

    :cond_1
    return p1
.end method

.method private isUseDisplayCoverPlugin(Lcom/samsung/android/cover/CoverState;)Z
    .locals 2

    .line 844
    sget-boolean p0, Lcom/android/systemui/LsRune;->COVER_DEBUG_CAMERA_COVER_ON_SIDE_COVER:Z

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    const/16 p0, 0xf

    iget v1, p1, Lcom/samsung/android/cover/CoverState;->type:I

    if-ne p0, v1, :cond_0

    return v0

    .line 848
    :cond_0
    iget p0, p1, Lcom/samsung/android/cover/CoverState;->type:I

    const/16 p1, 0x11

    if-eq p0, p1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    return v0
.end method

.method private synthetic lambda$new$0(Ljava/lang/Object;)V
    .locals 1

    .line 146
    sget-object p1, Lcom/android/systemui/cover/CoverScreenManager;->TAG:Ljava/lang/String;

    const-string v0, "addPluginListener() PluginFaceWidget is connected"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-boolean p1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mIsAttached:Z

    if-eqz p1, :cond_0

    .line 148
    iget-object p1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-direct {p0, p1}, Lcom/android/systemui/cover/CoverScreenManager;->requestPluginConnection(Lcom/samsung/android/cover/CoverState;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$prepareCoverHomeActivity$1()V
    .locals 3

    .line 555
    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/ActivityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v1, 0x1

    .line 556
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 557
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 558
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/TaskInfo;

    .line 559
    iget-object v1, v0, Landroid/app/TaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v1, :cond_1

    .line 560
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.systemui.cover.CoverHomeActivity"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 561
    sget-object p0, Lcom/android/systemui/cover/CoverScreenManager;->TAG:Ljava/lang/String;

    const-string v0, "ignore startCoverHomeActivity cause already display"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 563
    :cond_0
    iget-object v0, v0, Landroid/app/TaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.android.spay"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 564
    sget-object p0, Lcom/android/systemui/cover/CoverScreenManager;->TAG:Ljava/lang/String;

    const-string v0, "ignore startCoverHomeActivity cause samsung pay"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 569
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/cover/CoverScreenManager;->startCoverHomeActivity(Landroid/view/Display;)V

    return-void
.end method

.method private onDisplayAdded(I)V
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 953
    sget-object p1, Lcom/android/systemui/cover/CoverScreenManager;->TAG:Ljava/lang/String;

    const-string v0, "onDisplayAdded : cover display added"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    iget-object p0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mHandler:Landroid/os/Handler;

    const/16 p1, 0x3e9

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method private onDisplayRemoved(I)V
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 960
    iget-object p1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x3e8

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 961
    sget-object p1, Lcom/android/systemui/cover/CoverScreenManager;->TAG:Ljava/lang/String;

    const-string v1, "onDisplayRemoved : cover display removed"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    iget-object p1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 963
    iget-object p0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method private onLockDisabledChanged(Z)V
    .locals 3

    .line 815
    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    if-nez v0, :cond_0

    .line 816
    sget-object p0, Lcom/android/systemui/cover/CoverScreenManager;->TAG:Ljava/lang/String;

    const-string p1, "onLockDisabledChanged() no plugin"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 819
    :cond_0
    instance-of v0, v0, Lcom/android/systemui/plugins/cover/PluginDisplayCover;

    if-eqz v0, :cond_1

    .line 820
    sget-object v0, Lcom/android/systemui/cover/CoverScreenManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLockDisabledChanged() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    iget-object p0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    check-cast p0, Lcom/android/systemui/plugins/cover/PluginDisplayCover;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/cover/PluginDisplayCover;->onLockDisabledChanged(Z)V

    :cond_1
    return-void
.end method

.method private onUserUnlocked()V
    .locals 2

    .line 804
    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    if-nez v0, :cond_0

    .line 805
    sget-object p0, Lcom/android/systemui/cover/CoverScreenManager;->TAG:Ljava/lang/String;

    const-string v0, "onUserUnlocked() no plugin"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 808
    :cond_0
    instance-of v0, v0, Lcom/android/systemui/plugins/cover/PluginDisplayCover;

    if-eqz v0, :cond_1

    .line 809
    sget-object v0, Lcom/android/systemui/cover/CoverScreenManager;->TAG:Ljava/lang/String;

    const-string v1, "onUserUnlocked() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    iget-object p0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    check-cast p0, Lcom/android/systemui/plugins/cover/PluginDisplayCover;

    invoke-interface {p0}, Lcom/android/systemui/plugins/cover/PluginDisplayCover;->onUserUnlocked()V

    :cond_1
    return-void
.end method

.method private prepareVirtualDisplay()V
    .locals 11

    .line 884
    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    if-nez v0, :cond_4

    .line 885
    invoke-direct {p0}, Lcom/android/systemui/cover/CoverScreenManager;->getVirtualDisplayDensity()I

    move-result v5

    .line 886
    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getVisibleRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    const-string v1, " density="

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/LsRune;->COVER_DEBUG_CAMERA_COVER_ON_SIDE_COVER:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 894
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverState;->getVisibleRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mVisibleRect:Landroid/graphics/Rect;

    .line 895
    sget-object v0, Lcom/android/systemui/cover/CoverScreenManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cover mVisibleRect="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/cover/CoverScreenManager;->mVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 887
    :cond_1
    :goto_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 888
    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/samsung/android/view/SemWindowManager;->getUserDisplaySize(Landroid/graphics/Point;)V

    .line 889
    iget v2, v0, Landroid/graphics/Point;->x:I

    int-to-double v2, v2

    const-wide v6, 0x3fe09374bc6a7efaL    # 0.518

    mul-double/2addr v2, v6

    double-to-int v2, v2

    .line 890
    iget v3, v0, Landroid/graphics/Point;->y:I

    int-to-double v3, v3

    const-wide v6, 0x3f80624dd2f1a9fcL    # 0.008

    mul-double/2addr v3, v6

    double-to-int v3, v3

    .line 891
    new-instance v4, Landroid/graphics/Rect;

    iget v6, v0, Landroid/graphics/Point;->x:I

    int-to-double v6, v6

    const-wide v8, 0x3fdd70a3d70a3d71L    # 0.46

    mul-double/2addr v6, v8

    double-to-int v6, v6

    add-int/2addr v6, v2

    iget v7, v0, Landroid/graphics/Point;->y:I

    int-to-double v7, v7

    const-wide v9, 0x3fd3f7ced916872bL    # 0.312

    mul-double/2addr v7, v9

    double-to-int v7, v7

    add-int/2addr v7, v3

    invoke-direct {v4, v2, v3, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lcom/android/systemui/cover/CoverScreenManager;->mVisibleRect:Landroid/graphics/Rect;

    .line 892
    sget-object v2, Lcom/android/systemui/cover/CoverScreenManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "point="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "  cover mVisibleRect="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const/4 v0, 0x0

    .line 898
    iget-object v1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverWindowDelegate:Lcom/android/systemui/cover/CoverWindowDelegate;

    if-nez v1, :cond_2

    .line 899
    new-instance v1, Lcom/android/systemui/cover/CoverWindowDelegate;

    iget-object v2, p0, Lcom/android/systemui/cover/CoverScreenManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/cover/CoverScreenManager;->mVisibleRect:Landroid/graphics/Rect;

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/cover/CoverWindowDelegate;-><init>(Landroid/content/Context;Landroid/graphics/Rect;)V

    iput-object v1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverWindowDelegate:Lcom/android/systemui/cover/CoverWindowDelegate;

    .line 902
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverWindowDelegate:Lcom/android/systemui/cover/CoverWindowDelegate;

    invoke-virtual {v1}, Lcom/android/systemui/cover/CoverWindowDelegate;->attach()Landroid/view/ViewGroup;

    move-result-object v1

    .line 903
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 905
    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 906
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 907
    iget-object v1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/cover/CoverScreenManager;->mVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl;->resize(II)V

    :cond_3
    if-eqz v0, :cond_4

    .line 911
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 912
    new-instance v6, Landroid/view/Surface;

    invoke-direct {v6, v0}, Landroid/view/Surface;-><init>(Landroid/view/SurfaceControl;)V

    .line 913
    iget-object v1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    const v7, 0x4000060b    # 2.0003688f

    const-string v2, "Cover-Virtual-Display"

    invoke-virtual/range {v1 .. v7}, Landroid/hardware/display/DisplayManager;->createVirtualDisplay(Ljava/lang/String;IIILandroid/view/Surface;I)Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 916
    sget-object v0, Lcom/android/systemui/cover/CoverScreenManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " prepareVirtualDisplay mVirtualDisplay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/cover/CoverScreenManager;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v2}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverWindowDelegate:Lcom/android/systemui/cover/CoverWindowDelegate;

    iget-object p0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {p0}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/cover/CoverWindowDelegate;->setCoverDisplay(Landroid/view/Display;)V

    :cond_4
    return-void
.end method

.method private recreateVirtualDisplay()V
    .locals 4

    .line 942
    sget-object v0, Lcom/android/systemui/cover/CoverScreenManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "recreateVirtualDisplay() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    invoke-direct {p0}, Lcom/android/systemui/cover/CoverScreenManager;->finishCoverHomeActivity()V

    .line 944
    invoke-direct {p0}, Lcom/android/systemui/cover/CoverScreenManager;->removeVirtualDisplay()V

    .line 945
    invoke-direct {p0}, Lcom/android/systemui/cover/CoverScreenManager;->removePluginListener()V

    .line 946
    invoke-direct {p0}, Lcom/android/systemui/cover/CoverScreenManager;->removeWindow()V

    .line 947
    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 948
    iget-object p0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x2710

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private removePluginListener()V
    .locals 2

    .line 722
    iget-boolean v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mIsPluginListenerAdded:Z

    if-nez v0, :cond_0

    return-void

    .line 726
    :cond_0
    sget-object v0, Lcom/android/systemui/cover/CoverScreenManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "removePluginListener() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mPluginManager:Lcom/android/systemui/shared/plugins/PluginManager;

    invoke-interface {v0, p0}, Lcom/android/systemui/shared/plugins/PluginManager;->removePluginListener(Lcom/android/systemui/plugins/PluginListener;)V

    const/4 v0, 0x0

    .line 728
    iput-boolean v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mIsPluginListenerAdded:Z

    return-void
.end method

.method private removeVirtualDisplay()V
    .locals 2

    .line 924
    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    if-eqz v0, :cond_0

    .line 925
    sget-object v0, Lcom/android/systemui/cover/CoverScreenManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "removeVirtualDisplay() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->release()V

    const/4 v0, 0x0

    .line 927
    iput-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 928
    iget-object p0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverWindowDelegate:Lcom/android/systemui/cover/CoverWindowDelegate;

    invoke-virtual {p0, v0}, Lcom/android/systemui/cover/CoverWindowDelegate;->setCoverDisplay(Landroid/view/Display;)V

    :cond_0
    return-void
.end method

.method private removeWindow()V
    .locals 1

    .line 934
    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverWindowDelegate:Lcom/android/systemui/cover/CoverWindowDelegate;

    if-eqz v0, :cond_0

    .line 935
    invoke-virtual {v0}, Lcom/android/systemui/cover/CoverWindowDelegate;->detach()V

    const/4 v0, 0x0

    .line 936
    iput-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverWindowDelegate:Lcom/android/systemui/cover/CoverWindowDelegate;

    :cond_0
    return-void
.end method

.method private requestPluginConnection(Lcom/samsung/android/cover/CoverState;)V
    .locals 2

    .line 688
    sget-object v0, Lcom/android/systemui/cover/CoverScreenManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "requestPluginListener()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    iget-object v1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mFaceWidgetManagerLazy:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;

    invoke-virtual {v1}, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 690
    invoke-direct {p0, p1}, Lcom/android/systemui/cover/CoverScreenManager;->addPluginListener(Lcom/samsung/android/cover/CoverState;)V

    goto :goto_0

    :cond_0
    const-string p1, "addPluginListener() PluginFaceWidget is not connected, wait connection"

    .line 692
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    iget-object p1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mPluginAODManagerLazy:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/doze/PluginAODManager;

    iget-object p0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mPluginConnectionConsumer:Ljava/util/function/Consumer;

    invoke-virtual {p1, p0}, Lcom/android/systemui/doze/PluginAODManager;->addConnectionConsumer(Ljava/util/function/Consumer;)V

    :goto_0
    return-void
.end method

.method private startCover()V
    .locals 6

    .line 740
    iget-boolean v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mIsStarted:Z

    if-eqz v0, :cond_0

    return-void

    .line 744
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    if-nez v0, :cond_1

    .line 745
    sget-object p0, Lcom/android/systemui/cover/CoverScreenManager;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "startCover fail.  plugin is null."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 748
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverWindowDelegate:Lcom/android/systemui/cover/CoverWindowDelegate;

    if-nez v0, :cond_2

    .line 749
    sget-object p0, Lcom/android/systemui/cover/CoverScreenManager;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "startCover fail. cover window is null."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 753
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mIsAttached:Z

    if-eqz v0, :cond_8

    .line 754
    sget-object v0, Lcom/android/systemui/cover/CoverScreenManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startCover:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    iget-object v1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverWindowDelegate:Lcom/android/systemui/cover/CoverWindowDelegate;

    invoke-virtual {v1}, Lcom/android/systemui/cover/CoverWindowDelegate;->attach()Landroid/view/ViewGroup;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 757
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 759
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v3

    .line 760
    iget-object v4, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v4}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v4

    const/16 v5, 0x10

    if-ne v4, v5, :cond_3

    .line 761
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v4

    or-int/2addr v3, v4

    .line 763
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startCover() hide systemBars - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    invoke-interface {v2, v3}, Landroid/view/WindowInsetsController;->hide(I)V

    .line 767
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    instance-of v2, v0, Lcom/android/systemui/plugins/cover/PluginViewCover;

    if-eqz v2, :cond_5

    .line 768
    iget-object v2, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/plugins/cover/PluginCover;->onCoverAttached(Landroid/view/ViewGroup;Lcom/samsung/android/cover/CoverState;)V

    goto :goto_0

    .line 769
    :cond_5
    instance-of v0, v0, Lcom/android/systemui/plugins/cover/PluginDisplayCover;

    if-eqz v0, :cond_6

    .line 770
    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mActivity:Lcom/android/systemui/cover/CoverHomeActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 771
    iget-object v1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mPluginContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 772
    iget-object v1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    iget-object v2, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-interface {v1, v0, v2}, Lcom/android/systemui/plugins/cover/PluginCover;->onCoverAttached(Landroid/view/Window;Lcom/samsung/android/cover/CoverState;)V

    .line 774
    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mPluginAODManagerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/doze/PluginAODManager;

    iget-object v1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mPluginContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/doze/PluginAODManager;->setCoverPlugin(Landroid/content/Context;Lcom/android/systemui/plugins/cover/PluginCover;)V

    .line 775
    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    iget-object v1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/cover/PluginCover;->onCoverStateUpdated(Lcom/samsung/android/cover/CoverState;)V

    .line 776
    sget-boolean v0, Lcom/android/systemui/LsRune;->COVER_VIRTUAL_DISPLAY:Z

    if-eqz v0, :cond_7

    .line 777
    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    instance-of v0, v0, Lcom/android/systemui/plugins/cover/PluginDisplayCover;

    if-eqz v0, :cond_7

    .line 778
    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 779
    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    invoke-interface {v0}, Lcom/android/systemui/plugins/cover/PluginCover;->onStartedWakingUp()V

    :cond_7
    const/4 v0, 0x1

    .line 783
    iput-boolean v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mIsStarted:Z

    :cond_8
    return-void
.end method

.method private startCoverHomeActivity(Landroid/view/Display;)V
    .locals 4

    .line 857
    sget-object v0, Lcom/android/systemui/cover/CoverScreenManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startCoverHomeActivity() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x10010000

    .line 859
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    .line 860
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.SECONDARY_HOME"

    .line 861
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.android.systemui"

    const-string v3, "com.android.systemui.cover.CoverHomeActivity"

    .line 862
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 864
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    .line 865
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    const/4 p1, 0x1

    .line 867
    invoke-virtual {v1, p1}, Landroid/app/ActivityOptions;->setForceLaunchWindowingMode(I)V

    .line 869
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 871
    sget-object p1, Lcom/android/systemui/cover/CoverScreenManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private stopCover()V
    .locals 2

    .line 788
    sget-object v0, Lcom/android/systemui/cover/CoverScreenManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopCover:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 789
    iput-boolean v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mIsStarted:Z

    .line 791
    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 792
    invoke-interface {v0}, Lcom/android/systemui/plugins/cover/PluginCover;->onCoverDetached()V

    .line 793
    iput-object v1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    .line 795
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mIsAttached:Z

    if-nez v0, :cond_1

    .line 796
    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverWindowDelegate:Lcom/android/systemui/cover/CoverWindowDelegate;

    if-eqz v0, :cond_1

    .line 797
    invoke-virtual {v0}, Lcom/android/systemui/cover/CoverWindowDelegate;->detach()V

    .line 798
    iput-object v1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverWindowDelegate:Lcom/android/systemui/cover/CoverWindowDelegate;

    :cond_1
    return-void
.end method

.method private updatePluginListener()V
    .locals 2

    .line 732
    sget-object v0, Lcom/android/systemui/cover/CoverScreenManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updatePluginListener() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    invoke-direct {p0}, Lcom/android/systemui/cover/CoverScreenManager;->removePluginListener()V

    .line 734
    iget-boolean v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mIsAttached:Z

    if-eqz v0, :cond_0

    .line 735
    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-direct {p0, v0}, Lcom/android/systemui/cover/CoverScreenManager;->requestPluginConnection(Lcom/samsung/android/cover/CoverState;)V

    :cond_0
    return-void
.end method

.method private updateRefreshRate(Z)V
    .locals 3

    .line 991
    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->getRefreshRateMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    :cond_0
    if-eqz p1, :cond_3

    .line 993
    iget-object p1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mMaxRefreshRateToken:Lcom/samsung/android/hardware/display/IRefreshRateMaxLimitToken;

    if-nez p1, :cond_2

    .line 994
    iget-object p1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mIDisplayManager:Landroid/hardware/display/IDisplayManager;

    if-nez p1, :cond_1

    const-string p1, "display"

    .line 995
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/display/IDisplayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IDisplayManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mIDisplayManager:Landroid/hardware/display/IDisplayManager;

    .line 998
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mIDisplayManager:Landroid/hardware/display/IDisplayManager;

    if-eqz p1, :cond_2

    .line 1000
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mRefreshRateToken:Landroid/os/IBinder;

    const/16 v1, 0x3c

    sget-object v2, Lcom/android/systemui/cover/CoverScreenManager;->TAG:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2}, Landroid/hardware/display/IDisplayManager;->acquireRefreshRateMaxLimitToken(Landroid/os/IBinder;ILjava/lang/String;)Lcom/samsung/android/hardware/display/IRefreshRateMaxLimitToken;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mMaxRefreshRateToken:Lcom/samsung/android/hardware/display/IRefreshRateMaxLimitToken;

    const-string/jumbo p1, "updateRefreshRate enabled"

    .line 1002
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1004
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1008
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mMaxRefreshRateToken:Lcom/samsung/android/hardware/display/IRefreshRateMaxLimitToken;

    if-nez p0, :cond_4

    .line 1009
    sget-object p0, Lcom/android/systemui/cover/CoverScreenManager;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "updateRefreshRate failed"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1012
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mMaxRefreshRateToken:Lcom/samsung/android/hardware/display/IRefreshRateMaxLimitToken;

    if-eqz p1, :cond_4

    .line 1014
    :try_start_1
    invoke-interface {p1}, Lcom/samsung/android/hardware/display/IRefreshRateMaxLimitToken;->release()V

    .line 1015
    sget-object p1, Lcom/android/systemui/cover/CoverScreenManager;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "updateRefreshRate disabled"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 1017
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    const/4 p1, 0x0

    .line 1019
    iput-object p1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mMaxRefreshRateToken:Lcom/samsung/android/hardware/display/IRefreshRateMaxLimitToken;

    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method public clearCoverHomeActivity(Lcom/android/systemui/cover/CoverHomeActivity;)V
    .locals 2

    .line 539
    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mActivity:Lcom/android/systemui/cover/CoverHomeActivity;

    if-nez v0, :cond_0

    .line 540
    sget-object p0, Lcom/android/systemui/cover/CoverScreenManager;->TAG:Ljava/lang/String;

    const-string p1, "clearCoverHomeActivity() already activity is null"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 543
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 544
    sget-object p1, Lcom/android/systemui/cover/CoverScreenManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearCoverHomeActivity() already exists activity - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mActivity:Lcom/android/systemui/cover/CoverHomeActivity;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 547
    iput-object p1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mActivity:Lcom/android/systemui/cover/CoverHomeActivity;

    .line 548
    invoke-direct {p0}, Lcom/android/systemui/cover/CoverScreenManager;->updatePluginListener()V

    return-void
.end method

.method public dozeTimeTick()V
    .locals 2

    .line 657
    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    if-nez v0, :cond_0

    .line 658
    sget-object p0, Lcom/android/systemui/cover/CoverScreenManager;->TAG:Ljava/lang/String;

    const-string v0, "dozeTimeTick() no plugin"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 662
    :cond_0
    sget-object v0, Lcom/android/systemui/cover/CoverScreenManager;->TAG:Ljava/lang/String;

    const-string v1, "dozeTimeTick() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    iget-object p0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    invoke-interface {p0}, Lcom/android/systemui/plugins/cover/PluginCover;->dozeTimeTick()V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    .line 1063
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mCoverState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    const-string v2, "null"

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1064
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsPluginConnected = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mIsPluginListenerAdded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1065
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mCoverPlugin = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1066
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mVirtualDisplay = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move-object v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1067
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mActivity = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mActivity:Lcom/android/systemui/cover/CoverHomeActivity;

    if-eqz v1, :cond_3

    move-object v2, v1

    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1068
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mRoomMap = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mSubRoomMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1069
    iget-object p0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    if-eqz p0, :cond_4

    .line 1070
    invoke-interface {p0, p1, p2, p3}, Lcom/android/systemui/plugins/cover/PluginCover;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public getClockPreview()Landroid/view/View;
    .locals 1

    .line 621
    iget-object p0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    if-nez p0, :cond_0

    .line 622
    sget-object p0, Lcom/android/systemui/cover/CoverScreenManager;->TAG:Ljava/lang/String;

    const-string v0, "getClockPreview() no plugin"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 626
    :cond_0
    invoke-interface {p0}, Lcom/android/systemui/plugins/cover/PluginCover;->getCoverScreenPreview()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getClockPreview(I)Landroid/view/View;
    .locals 0

    .line 631
    iget-object p0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    if-nez p0, :cond_0

    .line 632
    sget-object p0, Lcom/android/systemui/cover/CoverScreenManager;->TAG:Ljava/lang/String;

    const-string p1, "getClockPreview() no plugin"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 636
    :cond_0
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/cover/PluginCover;->getCoverScreenPreview(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getClockPreview(III)Landroid/view/View;
    .locals 0

    .line 648
    iget-object p0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    if-nez p0, :cond_0

    .line 649
    sget-object p0, Lcom/android/systemui/cover/CoverScreenManager;->TAG:Ljava/lang/String;

    const-string p1, "getClockPreview() no plugin"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 653
    :cond_0
    invoke-interface {p0, p1, p2, p3}, Lcom/android/systemui/plugins/cover/PluginCover;->getCoverScreenPreview(III)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getCoverHost()Ljava/lang/Object;
    .locals 0

    .line 445
    iget-object p0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverHost:Lcom/android/systemui/cover/CoverHost;

    return-object p0
.end method

.method public getSubRoom(I)Lcom/android/systemui/plugins/subscreen/SubRoom;
    .locals 3

    .line 604
    sget-object v0, Lcom/android/systemui/cover/CoverScreenManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSubRoom() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/android/systemui/cover/CoverScreenManager;->getRoomName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    iget-object p0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mSubRoomMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/plugins/subscreen/SubRoom;

    return-object p0
.end method

.method public isCoverDisplay(Landroid/view/Display;)Z
    .locals 1

    .line 576
    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    if-eqz v0, :cond_0

    .line 577
    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 578
    invoke-virtual {p0}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getDisplayId()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 258
    iget-object p0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    if-eqz p0, :cond_0

    .line 259
    instance-of v0, p0, Lcom/android/systemui/plugins/cover/PluginViewCover;

    if-eqz v0, :cond_0

    .line 260
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/cover/PluginCover;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public onCoverAppCovered(Z)I
    .locals 3

    .line 426
    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverHost:Lcom/android/systemui/cover/CoverHost;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 429
    :cond_0
    sget-object v0, Lcom/android/systemui/cover/CoverScreenManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCoverAppCovered() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/keyguard/KeyguardLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverHost:Lcom/android/systemui/cover/CoverHost;

    invoke-interface {v0, p1}, Lcom/android/systemui/cover/CoverHost;->onCoverAppCovered(Z)I

    .line 433
    iget-object p0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    if-eqz p0, :cond_1

    .line 434
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/cover/PluginCover;->onCoverAppCovered(Z)V

    :cond_1
    if-eqz p1, :cond_2

    const/16 p0, 0x10

    return p0

    :cond_2
    const/16 p0, 0x20

    return p0
.end method

.method public onCoverAttached(Lcom/samsung/android/cover/CoverState;)V
    .locals 3

    .line 274
    sget-object v0, Lcom/android/systemui/cover/CoverScreenManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCoverAttached() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/keyguard/KeyguardLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 275
    iput-boolean v1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mIsAttached:Z

    .line 276
    iput-object p1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 278
    invoke-direct {p0, p1}, Lcom/android/systemui/cover/CoverScreenManager;->initialize(Lcom/samsung/android/cover/CoverState;)V

    .line 280
    iget-object v1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v2, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 282
    iget-object v1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverHost:Lcom/android/systemui/cover/CoverHost;

    if-eqz v1, :cond_0

    .line 283
    invoke-interface {v1, p1}, Lcom/android/systemui/cover/CoverHost;->updateCoverState(Lcom/samsung/android/cover/CoverState;)V

    goto :goto_0

    :cond_0
    const-string p1, "onCoverAttached: CoverHost is null"

    .line 285
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :goto_0
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 291
    iget-object p0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mDisplayContainerListener:Landroid/view/IDisplayWindowListener;

    invoke-interface {p1, p0}, Landroid/view/IWindowManager;->registerDisplayWindowListener(Landroid/view/IDisplayWindowListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public onCoverDetached()V
    .locals 4

    .line 299
    sget-object v0, Lcom/android/systemui/cover/CoverScreenManager;->TAG:Ljava/lang/String;

    const-string v1, "onCoverDetached()"

    invoke-static {v0, v1}, Lcom/android/systemui/keyguard/KeyguardLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    iget-object v1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverHost:Lcom/android/systemui/cover/CoverHost;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v3, :cond_0

    .line 301
    iput-boolean v2, v3, Lcom/samsung/android/cover/CoverState;->attached:Z

    const/4 v0, 0x1

    .line 302
    iput-boolean v0, v3, Lcom/samsung/android/cover/CoverState;->switchState:Z

    .line 303
    invoke-interface {v1, v3}, Lcom/android/systemui/cover/CoverHost;->updateCoverState(Lcom/samsung/android/cover/CoverState;)V

    goto :goto_0

    :cond_0
    const-string v1, "onCoverDetached: CoverHost is null"

    .line 305
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/cover/CoverScreenManager;->mIsAttached:Z

    .line 309
    sget-boolean v0, Lcom/android/systemui/LsRune;->COVER_VIRTUAL_DISPLAY:Z

    if-eqz v0, :cond_1

    .line 310
    invoke-direct {p0}, Lcom/android/systemui/cover/CoverScreenManager;->removeVirtualDisplay()V

    .line 311
    sget-boolean v0, Lcom/android/systemui/LsRune;->COVER_ADJUST_REFRESH_RATE:Z

    if-eqz v0, :cond_1

    .line 312
    invoke-direct {p0, v2}, Lcom/android/systemui/cover/CoverScreenManager;->updateRefreshRate(Z)V

    .line 315
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/cover/CoverScreenManager;->removePluginListener()V

    .line 316
    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 318
    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 320
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 322
    iget-object p0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mDisplayContainerListener:Landroid/view/IDisplayWindowListener;

    invoke-interface {v0, p0}, Landroid/view/IWindowManager;->unregisterDisplayWindowListener(Landroid/view/IDisplayWindowListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method

.method public onCoverStateUpdated(Lcom/samsung/android/cover/CoverState;)V
    .locals 7

    .line 330
    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    if-nez v0, :cond_0

    .line 331
    sget-object v0, Lcom/android/systemui/cover/CoverScreenManager;->TAG:Ljava/lang/String;

    const-string v1, "onCoverStateUpdated need to register mScreenLifecycle.Observer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    const-class v0, Lcom/android/systemui/keyguard/ScreenLifecycle;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/ScreenLifecycle;

    iput-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    if-eqz v0, :cond_0

    .line 334
    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    if-nez v0, :cond_1

    .line 339
    sget-object v0, Lcom/android/systemui/cover/CoverScreenManager;->TAG:Ljava/lang/String;

    const-string v1, "onCoverStateUpdated need to register mWakefulnessLifecycle.Observer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    const-class v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iput-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    if-eqz v0, :cond_1

    .line 342
    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    .line 346
    :cond_1
    sget-object v0, Lcom/android/systemui/cover/CoverScreenManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCoverStateUpdated() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/keyguard/KeyguardLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    sget-boolean v1, Lcom/android/systemui/LsRune;->COVER_VIRTUAL_DISPLAY:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    .line 350
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v4

    if-nez v4, :cond_2

    .line 351
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v5}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v5

    if-eq v4, v5, :cond_2

    move v4, v3

    goto :goto_0

    :cond_2
    move v4, v2

    .line 354
    :goto_0
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getVisibleRect()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getVisibleRect()Landroid/graphics/Rect;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v6}, Lcom/samsung/android/cover/CoverState;->getVisibleRect()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 355
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getVisibleRect()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v6}, Lcom/samsung/android/cover/CoverState;->getVisibleRect()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-gt v5, v3, :cond_3

    .line 356
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getVisibleRect()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v6}, Lcom/samsung/android/cover/CoverState;->getVisibleRect()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-gt v5, v3, :cond_3

    .line 357
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getVisibleRect()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v6}, Lcom/samsung/android/cover/CoverState;->getVisibleRect()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-gt v5, v3, :cond_3

    .line 358
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getVisibleRect()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget-object v6, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v6}, Lcom/samsung/android/cover/CoverState;->getVisibleRect()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-le v5, v3, :cond_5

    .line 359
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/cover/CoverScreenManager;->recreateVirtualDisplay()V

    goto :goto_1

    :cond_4
    move v4, v2

    .line 363
    :cond_5
    :goto_1
    iput-object p1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 365
    iget-object v5, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverHost:Lcom/android/systemui/cover/CoverHost;

    if-eqz v5, :cond_6

    .line 366
    invoke-interface {v5, p1}, Lcom/android/systemui/cover/CoverHost;->updateCoverState(Lcom/samsung/android/cover/CoverState;)V

    goto :goto_2

    :cond_6
    const-string v5, "onCoverStateUpdated: CoverHost is null"

    .line 368
    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :goto_2
    iget-object v5, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    if-eqz v5, :cond_a

    .line 372
    invoke-interface {v5, p1}, Lcom/android/systemui/plugins/cover/PluginCover;->onCoverStateUpdated(Lcom/samsung/android/cover/CoverState;)V

    if-eqz v1, :cond_c

    const/16 v0, 0x7d0

    if-eqz v4, :cond_8

    .line 375
    iget-object p1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    instance-of p1, p1, Lcom/android/systemui/plugins/cover/PluginDisplayCover;

    if-eqz p1, :cond_c

    .line 376
    iget-object p1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    if-eqz p1, :cond_c

    .line 377
    invoke-virtual {p1, v3}, Landroid/hardware/display/VirtualDisplay;->setDisplayState(Z)V

    .line 378
    iget-object p1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 379
    invoke-virtual {p0}, Lcom/android/systemui/cover/CoverScreenManager;->prepareCoverHomeActivity()V

    .line 380
    iget-object p1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-virtual {p1}, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->getWakefulness()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_7

    .line 381
    iget-object p1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 382
    iget-object p1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    invoke-interface {p1}, Lcom/android/systemui/plugins/cover/PluginCover;->onStartedWakingUp()V

    .line 384
    :cond_7
    sget-boolean p1, Lcom/android/systemui/LsRune;->COVER_ADJUST_REFRESH_RATE:Z

    if-eqz p1, :cond_c

    .line 385
    invoke-direct {p0, v3}, Lcom/android/systemui/cover/CoverScreenManager;->updateRefreshRate(Z)V

    goto :goto_3

    .line 390
    :cond_8
    iget-object v1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    instance-of v1, v1, Lcom/android/systemui/plugins/cover/PluginDisplayCover;

    if-eqz v1, :cond_c

    .line 391
    iget-object v1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    if-eqz v1, :cond_c

    .line 392
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result p1

    if-ne p1, v3, :cond_c

    .line 393
    iget-object p1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {p1, v2}, Landroid/hardware/display/VirtualDisplay;->setDisplayState(Z)V

    .line 394
    iget-object p1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 395
    iget-object p1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverWindowDelegate:Lcom/android/systemui/cover/CoverWindowDelegate;

    if-eqz p1, :cond_9

    .line 396
    invoke-virtual {p1}, Lcom/android/systemui/cover/CoverWindowDelegate;->minimize()V

    .line 398
    :cond_9
    sget-boolean p1, Lcom/android/systemui/LsRune;->COVER_ADJUST_REFRESH_RATE:Z

    if-eqz p1, :cond_c

    .line 399
    invoke-direct {p0, v2}, Lcom/android/systemui/cover/CoverScreenManager;->updateRefreshRate(Z)V

    goto :goto_3

    .line 406
    :cond_a
    iget-object v5, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget-boolean v5, v5, Lcom/samsung/android/cover/CoverState;->attached:Z

    if-eqz v5, :cond_c

    const-string v5, "onCoverStateUpdated: addPluginListener"

    .line 407
    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    invoke-direct {p0, p1}, Lcom/android/systemui/cover/CoverScreenManager;->addPluginListener(Lcom/samsung/android/cover/CoverState;)V

    if-eqz v1, :cond_c

    .line 410
    iget-object p1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    if-eqz p1, :cond_c

    if-eqz v4, :cond_b

    .line 412
    invoke-virtual {p1, v3}, Landroid/hardware/display/VirtualDisplay;->setDisplayState(Z)V

    .line 413
    iget-object p1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 414
    iget-object p1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {p1}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/cover/CoverScreenManager;->startCoverHomeActivity(Landroid/view/Display;)V

    goto :goto_3

    .line 416
    :cond_b
    iget-object p1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result p1

    if-ne p1, v3, :cond_c

    .line 417
    iget-object p0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {p0, v2}, Landroid/hardware/display/VirtualDisplay;->setDisplayState(Z)V

    :cond_c
    :goto_3
    return-void
.end method

.method public onCreate()V
    .locals 2

    .line 230
    sget-object v0, Lcom/android/systemui/cover/CoverScreenManager;->TAG:Ljava/lang/String;

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Lcom/android/systemui/keyguard/KeyguardLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-object v1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverHost:Lcom/android/systemui/cover/CoverHost;

    if-nez v1, :cond_0

    const-string p0, "onCreate() fail to get CoverHost"

    .line 232
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 235
    :cond_0
    const-class v0, Lcom/android/systemui/keyguard/ScreenLifecycle;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/ScreenLifecycle;

    iput-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    if-eqz v0, :cond_1

    .line 237
    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    .line 240
    :cond_1
    const-class v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iput-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    if-eqz v0, :cond_2

    .line 242
    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 247
    sget-object v0, Lcom/android/systemui/cover/CoverScreenManager;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    if-eqz v0, :cond_0

    .line 249
    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/SecLifecycle;->removeObserver(Ljava/lang/Object;)V

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    if-eqz v0, :cond_1

    .line 253
    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/SecLifecycle;->removeObserver(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public onPluginConnected(Lcom/android/systemui/plugins/Plugin;Landroid/content/Context;)V
    .locals 3

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto :goto_2

    .line 454
    :cond_0
    instance-of v0, p1, Lcom/android/systemui/plugins/cover/PluginViewCover;

    if-eqz v0, :cond_1

    .line 455
    move-object v1, p1

    check-cast v1, Lcom/android/systemui/plugins/cover/PluginViewCover;

    iput-object v1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    goto :goto_0

    .line 456
    :cond_1
    instance-of v1, p1, Lcom/android/systemui/plugins/cover/PluginDisplayCover;

    if-eqz v1, :cond_4

    .line 457
    move-object v1, p1

    check-cast v1, Lcom/android/systemui/plugins/cover/PluginDisplayCover;

    iput-object v1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    .line 463
    :goto_0
    sget-object v1, Lcom/android/systemui/cover/CoverScreenManager;->TAG:Ljava/lang/String;

    const-string v2, "onPluginConnected() "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    iput-object p2, p0, Lcom/android/systemui/cover/CoverScreenManager;->mPluginContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    .line 466
    invoke-direct {p0}, Lcom/android/systemui/cover/CoverScreenManager;->startCover()V

    goto :goto_1

    .line 467
    :cond_2
    instance-of p1, p1, Lcom/android/systemui/plugins/cover/PluginDisplayCover;

    if-eqz p1, :cond_3

    .line 468
    iget-object p1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mActivity:Lcom/android/systemui/cover/CoverHomeActivity;

    if-eqz p1, :cond_3

    .line 469
    invoke-direct {p0}, Lcom/android/systemui/cover/CoverScreenManager;->startCover()V

    :cond_3
    :goto_1
    return-void

    .line 459
    :cond_4
    sget-object p0, Lcom/android/systemui/cover/CoverScreenManager;->TAG:Ljava/lang/String;

    const-string p1, "onPluginConnected fail by wrong instance "

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_2
    return-void
.end method

.method public onPluginDisconnected(Lcom/android/systemui/plugins/Plugin;)V
    .locals 2

    .line 476
    sget-object p1, Lcom/android/systemui/cover/CoverScreenManager;->TAG:Ljava/lang/String;

    const-string v0, "onPluginDisconnected() "

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    iget-object p1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mPluginAODManagerLazy:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/doze/PluginAODManager;

    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mPluginContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/doze/PluginAODManager;->setCoverPlugin(Landroid/content/Context;Lcom/android/systemui/plugins/cover/PluginCover;)V

    .line 478
    invoke-direct {p0}, Lcom/android/systemui/cover/CoverScreenManager;->stopCover()V

    return-void
.end method

.method public onScreenInternalTurningOff()V
    .locals 2

    .line 515
    sget-object v0, Lcom/android/systemui/cover/CoverScreenManager;->TAG:Ljava/lang/String;

    const-string v1, "onScreenInternalTurningOff() "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    iget-object p0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    if-eqz p0, :cond_0

    .line 517
    invoke-interface {p0}, Lcom/android/systemui/plugins/cover/PluginCover;->onScreenInternalTurningOff()V

    :cond_0
    return-void
.end method

.method public onScreenInternalTurningOn()V
    .locals 2

    .line 507
    sget-object v0, Lcom/android/systemui/cover/CoverScreenManager;->TAG:Ljava/lang/String;

    const-string v1, "onScreenInternalTurningOn() "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    iget-object p0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    if-eqz p0, :cond_0

    .line 509
    invoke-interface {p0}, Lcom/android/systemui/plugins/cover/PluginCover;->onScreenInternalTurningOn()V

    :cond_0
    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 2

    .line 491
    sget-object v0, Lcom/android/systemui/cover/CoverScreenManager;->TAG:Ljava/lang/String;

    const-string v1, "onScreenTurnedOff() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    iget-object p0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    if-eqz p0, :cond_0

    .line 493
    invoke-interface {p0}, Lcom/android/systemui/plugins/cover/PluginCover;->onScreenTurnedOff()V

    :cond_0
    return-void
.end method

.method public onScreenTurningOn()V
    .locals 2

    .line 483
    sget-object v0, Lcom/android/systemui/cover/CoverScreenManager;->TAG:Ljava/lang/String;

    const-string v1, "onScreenTurningOn() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    iget-object p0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    if-eqz p0, :cond_0

    .line 485
    invoke-interface {p0}, Lcom/android/systemui/plugins/cover/PluginCover;->onScreenTurningOn()V

    :cond_0
    return-void
.end method

.method public onStartedWakingUp()V
    .locals 2

    .line 499
    sget-object v0, Lcom/android/systemui/cover/CoverScreenManager;->TAG:Ljava/lang/String;

    const-string v1, "onScreenTurningOn() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    iget-object p0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    if-eqz p0, :cond_0

    .line 501
    invoke-interface {p0}, Lcom/android/systemui/plugins/cover/PluginCover;->onStartedWakingUp()V

    :cond_0
    return-void
.end method

.method public onVirtualConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 266
    iget-object p0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    if-eqz p0, :cond_0

    .line 267
    instance-of v0, p0, Lcom/android/systemui/plugins/cover/PluginDisplayCover;

    if-eqz v0, :cond_0

    .line 268
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/cover/PluginCover;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 523
    iget-object p0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    instance-of v0, p0, Lcom/android/systemui/plugins/cover/PluginDisplayCover;

    if-eqz v0, :cond_0

    .line 524
    check-cast p0, Lcom/android/systemui/plugins/cover/PluginDisplayCover;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/cover/PluginDisplayCover;->onWindowFocusChanged(Z)V

    :cond_0
    return-void
.end method

.method public prepareCoverHomeActivity()V
    .locals 4

    .line 553
    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    if-eqz v0, :cond_0

    .line 554
    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mBackgroundExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v1, Lcom/android/systemui/cover/CoverScreenManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/cover/CoverScreenManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/cover/CoverScreenManager;)V

    const-wide/16 v2, 0x64

    invoke-interface {v0, v1, v2, v3}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method public setCoverHomeActivity(Lcom/android/systemui/cover/CoverHomeActivity;)V
    .locals 3

    .line 531
    sget-object v0, Lcom/android/systemui/cover/CoverScreenManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCoverHomeActivity() ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    iput-object p1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mActivity:Lcom/android/systemui/cover/CoverHomeActivity;

    .line 533
    invoke-direct {p0}, Lcom/android/systemui/cover/CoverScreenManager;->updatePluginListener()V

    .line 534
    invoke-direct {p0}, Lcom/android/systemui/cover/CoverScreenManager;->startCover()V

    return-void
.end method

.method public setSubRoom(ILcom/android/systemui/plugins/subscreen/SubRoom;)V
    .locals 3

    .line 593
    sget-object v0, Lcom/android/systemui/cover/CoverScreenManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSubRoom() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/android/systemui/cover/CoverScreenManager;->getRoomName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    iget-object p0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mSubRoomMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
