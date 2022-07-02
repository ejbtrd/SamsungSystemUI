.class public Lcom/android/systemui/subscreen/SubScreenManager;
.super Ljava/lang/Object;
.source "SubScreenManager.java"

# interfaces
.implements Lcom/android/systemui/plugins/PluginListener;
.implements Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;
.implements Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/plugins/PluginListener<",
        "Lcom/android/systemui/plugins/subscreen/PluginSubScreen;",
        ">;",
        "Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;",
        "Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;",
        "Lcom/android/systemui/Dumpable;",
        "Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;"
    }
.end annotation


# instance fields
.field private mActivity:Lcom/android/systemui/subscreen/SubHomeActivity;

.field private final mBackgroundExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field private mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mContext:Landroid/content/Context;

.field private mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

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

.field private mIsFolderOpened:Z

.field private mIsPluginConnected:Z

.field private mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

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

.field private mPresentation:Landroid/app/Presentation;

.field private mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

.field private mSettingsHelperLazy:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/util/SettingsHelper;",
            ">;"
        }
    .end annotation
.end field

.field private mSubDisplay:Landroid/view/Display;

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

.field private mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

.field private mSubScreenWindow:Landroid/view/Window;

.field private mWakefulnessLifeCycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;


# direct methods
.method public static synthetic $r8$lambda$6F9303tLqqdOvJ9jLfZkmcqi0ek(Lcom/android/systemui/subscreen/SubScreenManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/subscreen/SubScreenManager;->lambda$prepareSubHomeActivity$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$mwjSztISL5P3oeT42vaz53KxXNM(Lcom/android/systemui/subscreen/SubScreenManager;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/subscreen/SubScreenManager;->lambda$new$0(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/keyguard/ScreenLifecycle;Lcom/android/systemui/keyguard/DisplayLifecycle;Landroid/hardware/display/DisplayManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/systemui/shared/plugins/PluginManager;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Ldagger/Lazy;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/keyguard/ScreenLifecycle;",
            "Lcom/android/systemui/keyguard/DisplayLifecycle;",
            "Landroid/hardware/display/DisplayManager;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/doze/PluginAODManager;",
            ">;",
            "Lcom/android/systemui/shared/plugins/PluginManager;",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            "Lcom/android/systemui/dump/DumpManager;",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/util/SettingsHelper;",
            ">;)V"
        }
    .end annotation

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubRoomMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 112
    new-instance v0, Lcom/android/systemui/subscreen/SubScreenManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/systemui/subscreen/SubScreenManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/subscreen/SubScreenManager;)V

    iput-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mPluginConnectionConsumer:Ljava/util/function/Consumer;

    .line 117
    new-instance v0, Lcom/android/systemui/subscreen/SubScreenManager$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/subscreen/SubScreenManager$1;-><init>(Lcom/android/systemui/subscreen/SubScreenManager;)V

    iput-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 167
    iput-object p1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mContext:Landroid/content/Context;

    .line 168
    iput-object p2, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    .line 169
    iput-object p3, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 170
    iput-object p4, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 171
    iput-object p5, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 172
    iput-object p6, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mFaceWidgetManagerLazy:Ldagger/Lazy;

    .line 173
    iput-object p7, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mPluginAODManagerLazy:Ldagger/Lazy;

    .line 174
    iput-object p8, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mPluginManager:Lcom/android/systemui/shared/plugins/PluginManager;

    .line 175
    iput-object p9, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mBackgroundExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 176
    iput-object p10, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 177
    iput-object p11, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mWakefulnessLifeCycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 178
    iput-object p12, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSettingsHelperLazy:Ldagger/Lazy;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/subscreen/SubScreenManager;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/android/systemui/subscreen/SubScreenManager;->updatePluginListener()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/subscreen/SubScreenManager;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/android/systemui/subscreen/SubScreenManager;->onUserUnlocked()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/subscreen/SubScreenManager;Ljava/lang/String;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/android/systemui/subscreen/SubScreenManager;->onPackageAdded(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/subscreen/SubScreenManager;Ljava/lang/String;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/android/systemui/subscreen/SubScreenManager;->onPackageChanged(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/subscreen/SubScreenManager;Ljava/lang/String;Z)V
    .locals 0

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/subscreen/SubScreenManager;->onPackageRemoved(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/subscreen/SubScreenManager;Ljava/lang/String;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/android/systemui/subscreen/SubScreenManager;->onPackageDataCleared(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/subscreen/SubScreenManager;Z)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/android/systemui/subscreen/SubScreenManager;->onLockDisabledChanged(Z)V

    return-void
.end method

.method private addPluginListener()V
    .locals 8

    .line 477
    iget-boolean v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mIsPluginConnected:Z

    const-string v1, "SubScreenManager"

    if-eqz v0, :cond_0

    const-string p0, "addPluginListener() already connected"

    .line 478
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "addPluginListener() "

    .line 481
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    iget-object v2, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mPluginManager:Lcom/android/systemui/shared/plugins/PluginManager;

    const-class v4, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v3, p0

    invoke-interface/range {v2 .. v7}, Lcom/android/systemui/shared/plugins/PluginManager;->addPluginListener(Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;ZZI)V

    const/4 v0, 0x1

    .line 483
    iput-boolean v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mIsPluginConnected:Z

    return-void
.end method

.method private getRoomName(I)Ljava/lang/String;
    .locals 1

    const/16 p0, 0x12c

    if-eq p1, p0, :cond_2

    const/16 p0, 0x12d

    if-eq p1, p0, :cond_1

    const/16 p0, 0x12f

    if-eq p1, p0, :cond_0

    .line 626
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
    const-string p0, "SUB_ROOM_NETWORK"

    return-object p0

    :cond_1
    const-string p0, "SUB_ROOM_NOTIFICATION"

    return-object p0

    :cond_2
    const-string p0, "SUB_ROOM_QUICKPANEL"

    return-object p0
.end method

.method private getSubDisplay()Landroid/view/Display;
    .locals 5

    .line 216
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const-string v1, "com.samsung.android.hardware.display.category.BUILTIN"

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object v0

    .line 217
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 218
    invoke-direct {p0, v3}, Lcom/android/systemui/subscreen/SubScreenManager;->isSubDisplay(Landroid/view/Display;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getWindow()Landroid/view/Window;
    .locals 1

    .line 453
    sget-boolean v0, Lcom/android/systemui/LsRune;->SUBSCREEN_WATCHFACE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mActivity:Lcom/android/systemui/subscreen/SubHomeActivity;

    if-eqz v0, :cond_0

    .line 454
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    return-object p0

    .line 455
    :cond_0
    sget-boolean v0, Lcom/android/systemui/LsRune;->SUBSCREEN_UI:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mPresentation:Landroid/app/Presentation;

    if-eqz p0, :cond_1

    .line 456
    invoke-virtual {p0}, Landroid/app/Presentation;->getWindow()Landroid/view/Window;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "SubScreenManager"

    const-string v0, "getWindow() no window"

    .line 458
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private init()V
    .locals 2

    const-string v0, "SubScreenManager"

    const-string v1, "init() "

    .line 190
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-direct {p0}, Lcom/android/systemui/subscreen/SubScreenManager;->getSubDisplay()Landroid/view/Display;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubDisplay:Landroid/view/Display;

    .line 193
    invoke-direct {p0}, Lcom/android/systemui/subscreen/SubScreenManager;->initWindow()V

    .line 196
    iget-object v1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    invoke-virtual {v1, v0, p0}, Lcom/android/systemui/dump/DumpManager;->registerNsDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    return-void
.end method

.method private initWindow()V
    .locals 2

    .line 203
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubDisplay:Landroid/view/Display;

    if-nez v0, :cond_0

    const-string p0, "SubScreenManager"

    const-string v0, "initWindow() mSubDisplay is not initialized"

    .line 204
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 208
    :cond_0
    sget-boolean v1, Lcom/android/systemui/LsRune;->SUBSCREEN_WATCHFACE:Z

    if-eqz v1, :cond_1

    .line 209
    invoke-direct {p0, v0}, Lcom/android/systemui/subscreen/SubScreenManager;->startSubHomeActivity(Landroid/view/Display;)V

    goto :goto_0

    .line 210
    :cond_1
    sget-boolean v1, Lcom/android/systemui/LsRune;->SUBSCREEN_UI:Z

    if-eqz v1, :cond_2

    .line 211
    invoke-direct {p0, v0}, Lcom/android/systemui/subscreen/SubScreenManager;->startSubScreenPresentation(Landroid/view/Display;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private isSubDisplay(Landroid/view/Display;)Z
    .locals 3

    const/4 p0, 0x0

    const-string v0, "SubScreenManager"

    if-nez p1, :cond_0

    const-string p1, "Do not show SubScreen UI on null display"

    .line 464
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    .line 467
    :cond_0
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 468
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Show SubScreen UI on this display "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 472
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Do not show SubScreen UI on this display "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method private synthetic lambda$new$0(Ljava/lang/Object;)V
    .locals 1

    const-string p1, "SubScreenManager"

    const-string/jumbo v0, "requestPluginConnection() PluginFaceWidget is connected"

    .line 113
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-direct {p0}, Lcom/android/systemui/subscreen/SubScreenManager;->addPluginListener()V

    return-void
.end method

.method private synthetic lambda$prepareSubHomeActivity$1()V
    .locals 3

    .line 508
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/ActivityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v1, 0x1

    .line 509
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 510
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 511
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/TaskInfo;

    .line 512
    iget-object v1, v0, Landroid/app/TaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v1, :cond_1

    .line 513
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.systemui.subscreen.SubHomeActivity"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "SubScreenManager"

    if-eqz v1, :cond_0

    const-string p0, "ignore startSubHomeActivity cause already display"

    .line 514
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 516
    :cond_0
    iget-object v0, v0, Landroid/app/TaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.android.spay"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "ignore startSubHomeActivity by samsung pay"

    .line 517
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 522
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/subscreen/SubScreenManager;->startSubHomeActivity()V

    return-void
.end method

.method private onLockDisabledChanged(Z)V
    .locals 3

    .line 389
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    const-string v1, "SubScreenManager"

    if-nez v0, :cond_0

    const-string/jumbo p0, "onLockDisabledChanged() no plugin"

    .line 390
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 393
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onLockDisabledChanged() "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->onLockDisabledChanged(Z)V

    return-void
.end method

.method private onPackageAdded(Ljava/lang/String;)V
    .locals 0

    .line 348
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    if-nez p0, :cond_0

    const-string p0, "SubScreenManager"

    const-string/jumbo p1, "onPackageAdded() no plugin"

    .line 349
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 352
    :cond_0
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->onPackageAdded(Ljava/lang/String;)V

    return-void
.end method

.method private onPackageChanged(Ljava/lang/String;)V
    .locals 0

    .line 356
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    if-nez p0, :cond_0

    const-string p0, "SubScreenManager"

    const-string/jumbo p1, "onPackageChanged() no plugin"

    .line 357
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 360
    :cond_0
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->onPackageChanged(Ljava/lang/String;)V

    return-void
.end method

.method private onPackageDataCleared(Ljava/lang/String;)V
    .locals 0

    .line 372
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    if-nez p0, :cond_0

    const-string p0, "SubScreenManager"

    const-string/jumbo p1, "onPackageDataCleared() no plugin"

    .line 373
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 376
    :cond_0
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->onPackageDataCleared(Ljava/lang/String;)V

    return-void
.end method

.method private onPackageRemoved(Ljava/lang/String;Z)V
    .locals 0

    .line 364
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    if-nez p0, :cond_0

    const-string p0, "SubScreenManager"

    const-string/jumbo p1, "onPackageRemoved() no plugin"

    .line 365
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 368
    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->onPackageRemoved(Ljava/lang/String;Z)V

    return-void
.end method

.method private onUserUnlocked()V
    .locals 2

    .line 380
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    const-string v1, "SubScreenManager"

    if-nez v0, :cond_0

    const-string/jumbo p0, "onUserUnlocked() no plugin"

    .line 381
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v0, "onUserUnlocked() "

    .line 384
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    invoke-interface {p0}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->onUserUnlocked()V

    return-void
.end method

.method private removePluginListener()V
    .locals 2

    .line 487
    iget-boolean v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mIsPluginConnected:Z

    const-string v1, "SubScreenManager"

    if-nez v0, :cond_0

    const-string/jumbo p0, "removePluginListener() already disconnected"

    .line 488
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v0, "removePluginListener() "

    .line 491
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mPluginManager:Lcom/android/systemui/shared/plugins/PluginManager;

    invoke-interface {v0, p0}, Lcom/android/systemui/shared/plugins/PluginManager;->removePluginListener(Lcom/android/systemui/plugins/PluginListener;)V

    const/4 v0, 0x0

    .line 493
    iput-boolean v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mIsPluginConnected:Z

    return-void
.end method

.method private requestPluginConnection()V
    .locals 2

    .line 226
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mActivity:Lcom/android/systemui/subscreen/SubHomeActivity;

    const-string v1, "SubScreenManager"

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mPresentation:Landroid/app/Presentation;

    if-nez v0, :cond_0

    const-string/jumbo p0, "requestPluginConnection() no activity and no presentation"

    .line 227
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mFaceWidgetManagerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;

    invoke-virtual {v0}, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 231
    invoke-direct {p0}, Lcom/android/systemui/subscreen/SubScreenManager;->addPluginListener()V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "requestPluginConnection() PluginFaceWidget is not connected, wait connection"

    .line 233
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mPluginAODManagerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/doze/PluginAODManager;

    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mPluginConnectionConsumer:Ljava/util/function/Consumer;

    invoke-virtual {v0, p0}, Lcom/android/systemui/doze/PluginAODManager;->addConnectionConsumer(Ljava/util/function/Consumer;)V

    :goto_0
    return-void
.end method

.method private startSubHomeActivity(Landroid/view/Display;)V
    .locals 5

    .line 536
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startSubHomeActivity() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SubScreenManager"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v3, 0x10000000

    .line 538
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    .line 539
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "android.intent.category.SECONDARY_HOME"

    .line 540
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "com.android.systemui"

    const-string v4, "com.android.systemui.subscreen.SubHomeActivity"

    .line 541
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 543
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v3

    .line 544
    sget-boolean v4, Lcom/android/systemui/LsRune;->SUBSCREEN_DEBUG_ACTIVITY_ON_MAIN:Z

    if-nez v4, :cond_0

    .line 545
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result p1

    invoke-virtual {v3, p1}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    :cond_0
    const/4 p1, 0x1

    .line 547
    invoke-virtual {v3, p1}, Landroid/app/ActivityOptions;->setForceLaunchWindowingMode(I)V

    .line 549
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 551
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private startSubScreen(Lcom/android/systemui/plugins/subscreen/PluginSubScreen;Landroid/content/Context;)V
    .locals 4

    const-string v0, "SubScreenManager"

    if-nez p1, :cond_0

    const-string/jumbo p0, "startSubScreen() plugin is null"

    .line 399
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 402
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    if-ne v1, p1, :cond_1

    const-string/jumbo p0, "startSubScreen() already started"

    .line 403
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-eqz v1, :cond_2

    const-string/jumbo v1, "startSubScreen: plugin is changed, stop old plugin"

    .line 407
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    invoke-direct {p0}, Lcom/android/systemui/subscreen/SubScreenManager;->stopSubScreen()V

    .line 411
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/subscreen/SubScreenManager;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-nez v1, :cond_3

    const-string/jumbo p0, "startSubScreen() no window"

    .line 413
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 416
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startSubScreen() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    iput-object v1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenWindow:Landroid/view/Window;

    .line 419
    iput-object p1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    .line 420
    iput-object p2, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mPluginContext:Landroid/content/Context;

    .line 422
    iget-object p1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {p1}, Lcom/android/systemui/keyguard/DisplayLifecycle;->isFolderOpened()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mIsFolderOpened:Z

    .line 423
    iget-object p1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {p1, p0}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    .line 424
    iget-object p1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    invoke-virtual {p1, p0}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    .line 425
    iget-object p1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mWakefulnessLifeCycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-virtual {p1, p0}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    .line 427
    iget-object p1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mPluginContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenWindow:Landroid/view/Window;

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 428
    iget-object p1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    iget-object p2, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenWindow:Landroid/view/Window;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-interface {p1, p2, v0}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->onSubUIStarted(Landroid/view/Window;Landroid/os/Bundle;)V

    .line 429
    iget-object p1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mPluginAODManagerLazy:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/doze/PluginAODManager;

    iget-object p2, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mPluginContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    invoke-virtual {p1, p2, v0}, Lcom/android/systemui/doze/PluginAODManager;->setSubScreenPlugin(Landroid/content/Context;Lcom/android/systemui/plugins/subscreen/PluginSubScreen;)V

    .line 430
    iget-object p1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    iget-boolean p2, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mIsFolderOpened:Z

    invoke-interface {p1, p2}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->onFolderStateChanged(Z)V

    .line 431
    iget-object p1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method private startSubScreenPresentation(Landroid/view/Display;)V
    .locals 3

    const-string v0, "SubScreenManager"

    if-nez p1, :cond_0

    const-string/jumbo p0, "startSubScreenPresentation: display is null"

    .line 558
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 561
    :cond_0
    new-instance v1, Lcom/android/systemui/subscreen/SubScreenPresentation;

    iget-object v2, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1}, Lcom/android/systemui/subscreen/SubScreenPresentation;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    .line 563
    :try_start_0
    invoke-virtual {v1}, Landroid/app/Presentation;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$InvalidDisplayException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "Invalid display: "

    .line 565
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 569
    iput-object v1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mPresentation:Landroid/app/Presentation;

    .line 570
    invoke-direct {p0}, Lcom/android/systemui/subscreen/SubScreenManager;->updatePluginListener()V

    :cond_1
    return-void
.end method

.method private stopSubScreen()V
    .locals 3

    .line 435
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    const-string v1, "SubScreenManager"

    if-nez v0, :cond_0

    const-string/jumbo p0, "stopSubScreen() no plugin"

    .line 436
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v0, "stopSubScreen()"

    .line 439
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/SecLifecycle;->removeObserver(Ljava/lang/Object;)V

    .line 442
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/SecLifecycle;->removeObserver(Ljava/lang/Object;)V

    .line 443
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mWakefulnessLifeCycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/SecLifecycle;->removeObserver(Ljava/lang/Object;)V

    .line 445
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mPluginAODManagerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/doze/PluginAODManager;

    iget-object v1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mPluginContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/doze/PluginAODManager;->setSubScreenPlugin(Landroid/content/Context;Lcom/android/systemui/plugins/subscreen/PluginSubScreen;)V

    .line 446
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    invoke-interface {v0}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->onSubUIStopped()V

    .line 447
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 449
    iput-object v2, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    return-void
.end method

.method private updatePluginListener()V
    .locals 2

    .line 497
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updatePluginListener() mIsPluginConnected = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mIsPluginConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SubScreenManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    iget-boolean v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mIsPluginConnected:Z

    if-eqz v0, :cond_0

    .line 499
    invoke-direct {p0}, Lcom/android/systemui/subscreen/SubScreenManager;->removePluginListener()V

    .line 502
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/subscreen/SubScreenManager;->requestPluginConnection()V

    return-void
.end method


# virtual methods
.method public clearSubHomeActivity(Lcom/android/systemui/subscreen/SubHomeActivity;)V
    .locals 2

    .line 581
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mActivity:Lcom/android/systemui/subscreen/SubHomeActivity;

    const-string v1, "SubScreenManager"

    if-nez v0, :cond_0

    const-string p0, "clearSubHomeActivity() already activity is null"

    .line 582
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 585
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 586
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "clearSubHomeActivity() already exists activity - "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mActivity:Lcom/android/systemui/subscreen/SubHomeActivity;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 589
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "clearSubHomeActivity() ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mActivity:Lcom/android/systemui/subscreen/SubHomeActivity;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "] >>> [null]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 590
    iput-object p1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mActivity:Lcom/android/systemui/subscreen/SubHomeActivity;

    .line 591
    invoke-direct {p0}, Lcom/android/systemui/subscreen/SubScreenManager;->updatePluginListener()V

    return-void
.end method

.method public dozeTimeTick()V
    .locals 2

    .line 668
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    const-string v1, "SubScreenManager"

    if-nez v0, :cond_0

    const-string p0, "dozeTimeTick() no plugin"

    .line 669
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "dozeTimeTick() "

    .line 673
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    invoke-interface {p0}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->dozeTimeTick()V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 690
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSubDisplay = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubDisplay:Landroid/view/Display;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 691
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsPluginConnected = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mIsPluginConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 692
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsFolderOpened = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mIsFolderOpened:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 693
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSubScreenPlugin = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 694
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  getWindow() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/systemui/subscreen/SubScreenManager;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 695
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSubScreenWindow = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenWindow:Landroid/view/Window;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 696
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSubRoomMap = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubRoomMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 698
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    if-eqz p0, :cond_0

    .line 699
    invoke-interface {p0, p1, p2, p3}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_0
    const-string p0, " ----------------------------------------------- "

    .line 702
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getClockPreview()Landroid/view/View;
    .locals 1

    .line 632
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    if-nez p0, :cond_0

    const-string p0, "SubScreenManager"

    const-string v0, "getClockPreview() no plugin"

    .line 633
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 637
    :cond_0
    invoke-interface {p0}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->getSubScreenPreview()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getClockPreview(I)Landroid/view/View;
    .locals 0

    .line 642
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    if-nez p0, :cond_0

    const-string p0, "SubScreenManager"

    const-string p1, "getClockPreview() no plugin"

    .line 643
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 647
    :cond_0
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->getSubScreenPreview(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getClockPreview(III)Landroid/view/View;
    .locals 0

    .line 659
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    if-nez p0, :cond_0

    const-string p0, "SubScreenManager"

    const-string p1, "getClockPreview() no plugin"

    .line 660
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 664
    :cond_0
    invoke-interface {p0, p1, p2, p3}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->getSubScreenPreview(III)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getSubRoom(I)Lcom/android/systemui/plugins/subscreen/SubRoom;
    .locals 2

    .line 613
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSubRoom() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/android/systemui/subscreen/SubScreenManager;->getRoomName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SubScreenManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubRoomMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/plugins/subscreen/SubRoom;

    return-object p0
.end method

.method public hasWindowFocus()Z
    .locals 0

    .line 678
    invoke-direct {p0}, Lcom/android/systemui/subscreen/SubScreenManager;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 680
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 682
    invoke-virtual {p0}, Landroid/view/View;->hasWindowFocus()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onBootCompleted()V
    .locals 2

    const-string v0, "SubScreenManager"

    const-string/jumbo v1, "onBootCompleted() "

    .line 182
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubDisplay:Landroid/view/Display;

    if-nez v0, :cond_0

    .line 185
    invoke-direct {p0}, Lcom/android/systemui/subscreen/SubScreenManager;->init()V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 340
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    if-nez p0, :cond_0

    const-string p0, "SubScreenManager"

    const-string/jumbo p1, "onConfigurationChanged() no plugin"

    .line 341
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 344
    :cond_0
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onFinishedGoingToSleep()V
    .locals 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    if-nez p0, :cond_0

    const-string p0, "SubScreenManager"

    const-string/jumbo v0, "onFinishedGoingToSleep() no plugin"

    .line 303
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 306
    :cond_0
    invoke-interface {p0}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->onFinishedGoingToSleep()V

    return-void
.end method

.method public onFinishedWakingUp()V
    .locals 1

    .line 284
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    if-nez p0, :cond_0

    const-string p0, "SubScreenManager"

    const-string/jumbo v0, "onFinishedWakingUp() no plugin"

    .line 285
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 288
    :cond_0
    invoke-interface {p0}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->onFinishedWakingUp()V

    return-void
.end method

.method public onFolderStateChanged(Z)V
    .locals 2

    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onFolderStateChanged() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SubScreenManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iget-boolean v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mIsFolderOpened:Z

    if-eq v0, p1, :cond_3

    .line 313
    iput-boolean p1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mIsFolderOpened:Z

    if-nez p1, :cond_0

    .line 315
    invoke-direct {p0}, Lcom/android/systemui/subscreen/SubScreenManager;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo p1, "onFolderStateChanged() no window"

    .line 316
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    invoke-direct {p0}, Lcom/android/systemui/subscreen/SubScreenManager;->initWindow()V

    return-void

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    if-nez v0, :cond_1

    const-string/jumbo p0, "onFolderStateChanged() no plugin"

    .line 322
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 326
    :cond_1
    invoke-interface {v0, p1}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->onFolderStateChanged(Z)V

    .line 327
    sget-boolean v0, Lcom/android/systemui/LsRune;->SUBSCREEN_WATCHFACE:Z

    if-eqz v0, :cond_3

    if-nez p1, :cond_2

    .line 329
    invoke-virtual {p0}, Lcom/android/systemui/subscreen/SubScreenManager;->prepareSubHomeActivity()V

    goto :goto_0

    .line 331
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSettingsHelperLazy:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isShowNavigationForSubscreen()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 332
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSettingsHelperLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/SettingsHelper;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/SettingsHelper;->setShowNavigationForSubscreen(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public bridge synthetic onPluginConnected(Lcom/android/systemui/plugins/Plugin;Landroid/content/Context;)V
    .locals 0

    .line 70
    check-cast p1, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/subscreen/SubScreenManager;->onPluginConnected(Lcom/android/systemui/plugins/subscreen/PluginSubScreen;Landroid/content/Context;)V

    return-void
.end method

.method public onPluginConnected(Lcom/android/systemui/plugins/subscreen/PluginSubScreen;Landroid/content/Context;)V
    .locals 2

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 243
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPluginConnected() ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SubScreenManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/subscreen/SubScreenManager;->startSubScreen(Lcom/android/systemui/plugins/subscreen/PluginSubScreen;Landroid/content/Context;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic onPluginDisconnected(Lcom/android/systemui/plugins/Plugin;)V
    .locals 0

    .line 70
    check-cast p1, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    invoke-virtual {p0, p1}, Lcom/android/systemui/subscreen/SubScreenManager;->onPluginDisconnected(Lcom/android/systemui/plugins/subscreen/PluginSubScreen;)V

    return-void
.end method

.method public onPluginDisconnected(Lcom/android/systemui/plugins/subscreen/PluginSubScreen;)V
    .locals 2

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPluginDisconnected() ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SubScreenManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    invoke-direct {p0}, Lcom/android/systemui/subscreen/SubScreenManager;->stopSubScreen()V

    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 1

    .line 266
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    if-nez p0, :cond_0

    const-string p0, "SubScreenManager"

    const-string/jumbo v0, "onScreenTurnedOff() no plugin"

    .line 267
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 270
    :cond_0
    invoke-interface {p0}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->onScreenTurnedOff()V

    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 1

    .line 257
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    if-nez p0, :cond_0

    const-string p0, "SubScreenManager"

    const-string/jumbo v0, "onScreenTurnedOn() no plugin"

    .line 258
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 261
    :cond_0
    invoke-interface {p0}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->onScreenTurnedOn()V

    return-void
.end method

.method public onStartedGoingToSleep()V
    .locals 1

    .line 293
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    if-nez p0, :cond_0

    const-string p0, "SubScreenManager"

    const-string/jumbo v0, "onStartedGoingToSleep() no plugin"

    .line 294
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 297
    :cond_0
    invoke-interface {p0}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->onStartedGoingToSleep()V

    return-void
.end method

.method public onStartedWakingUp()V
    .locals 1

    .line 275
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    if-nez p0, :cond_0

    const-string p0, "SubScreenManager"

    const-string/jumbo v0, "onStartedWakingUp() no plugin"

    .line 276
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 279
    :cond_0
    invoke-interface {p0}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->onStartedWakingUp()V

    return-void
.end method

.method public prepareSubHomeActivity()V
    .locals 4

    .line 507
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mBackgroundExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v1, Lcom/android/systemui/subscreen/SubScreenManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/subscreen/SubScreenManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/subscreen/SubScreenManager;)V

    const-wide/16 v2, 0x64

    invoke-interface {v0, v1, v2, v3}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Ljava/lang/Runnable;

    return-void
.end method

.method public setSubHomeActivity(Lcom/android/systemui/subscreen/SubHomeActivity;)V
    .locals 2

    .line 575
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSubHomeActivity() ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mActivity:Lcom/android/systemui/subscreen/SubHomeActivity;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "] >>> ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SubScreenManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    iput-object p1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mActivity:Lcom/android/systemui/subscreen/SubHomeActivity;

    .line 577
    invoke-direct {p0}, Lcom/android/systemui/subscreen/SubScreenManager;->updatePluginListener()V

    return-void
.end method

.method public setSubRoom(ILcom/android/systemui/plugins/subscreen/SubRoom;)V
    .locals 2

    .line 603
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSubRoom() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/android/systemui/subscreen/SubScreenManager;->getRoomName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SubScreenManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubRoomMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public startSubHomeActivity()V
    .locals 2

    .line 528
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubDisplay:Landroid/view/Display;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mIsFolderOpened:Z

    if-nez v0, :cond_0

    const-string v0, "SubScreenManager"

    const-string/jumbo v1, "startSubHomeActivity() "

    .line 529
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubDisplay:Landroid/view/Display;

    invoke-direct {p0, v0}, Lcom/android/systemui/subscreen/SubScreenManager;->startSubHomeActivity(Landroid/view/Display;)V

    :cond_0
    return-void
.end method
