.class public Lcom/android/systemui/doze/DozeService;
.super Landroid/service/dreams/DreamService;
.source "DozeService.java"

# interfaces
.implements Lcom/android/systemui/doze/DozeMachine$Service;
.implements Lcom/android/systemui/plugins/DozeServicePlugin$RequestDoze;
.implements Lcom/android/systemui/plugins/PluginListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/service/dreams/DreamService;",
        "Lcom/android/systemui/doze/DozeMachine$Service;",
        "Lcom/android/systemui/plugins/DozeServicePlugin$RequestDoze;",
        "Lcom/android/systemui/plugins/PluginListener<",
        "Lcom/android/systemui/plugins/Plugin;",
        ">;"
    }
.end annotation


# static fields
.field static final DEBUG:Z


# instance fields
.field private mAODDozeMachine:Lcom/android/systemui/doze/AODMachine;

.field private mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

.field private mClockPackPlugin:Lcom/android/systemui/plugins/clockpack/PluginClockPack;

.field private final mDozeComponentBuilder:Lcom/android/systemui/doze/dagger/DozeComponent$Builder;

.field private final mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

.field private mFaceWidgetManagerLazy:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;",
            ">;"
        }
    .end annotation
.end field

.field private mIsOccluded:Z

.field private mIsUnlockedState:Z

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

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

.field private mPluginManager:Lcom/android/systemui/shared/plugins/PluginManager;


# direct methods
.method public static synthetic $r8$lambda$EQ6Mheh9ygkZ_7QElm19cDXCDtA(Lcom/android/systemui/doze/DozeService;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/doze/DozeService;->lambda$new$0(Ljava/lang/Object;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string v0, "DozeService"

    const/4 v1, 0x3

    .line 59
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/doze/dagger/DozeComponent$Builder;Lcom/android/systemui/shared/plugins/PluginManager;Ldagger/Lazy;Lcom/android/keyguard/KeyguardUpdateMonitor;Ldagger/Lazy;Lcom/android/systemui/statusbar/phone/DozeServiceHost;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/doze/dagger/DozeComponent$Builder;",
            "Lcom/android/systemui/shared/plugins/PluginManager;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/doze/PluginAODManager;",
            ">;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;",
            ">;",
            "Lcom/android/systemui/statusbar/phone/DozeServiceHost;",
            ")V"
        }
    .end annotation

    .line 103
    invoke-direct {p0}, Landroid/service/dreams/DreamService;-><init>()V

    .line 86
    new-instance v0, Lcom/android/systemui/doze/DozeService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/doze/DozeService$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/doze/DozeService;)V

    iput-object v0, p0, Lcom/android/systemui/doze/DozeService;->mPluginConnectionConsumer:Ljava/util/function/Consumer;

    .line 104
    iput-object p1, p0, Lcom/android/systemui/doze/DozeService;->mDozeComponentBuilder:Lcom/android/systemui/doze/dagger/DozeComponent$Builder;

    .line 105
    sget-boolean p1, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    invoke-virtual {p0, p1}, Landroid/service/dreams/DreamService;->setDebug(Z)V

    .line 106
    iput-object p2, p0, Lcom/android/systemui/doze/DozeService;->mPluginManager:Lcom/android/systemui/shared/plugins/PluginManager;

    .line 108
    iput-object p3, p0, Lcom/android/systemui/doze/DozeService;->mPluginAODManagerLazy:Ldagger/Lazy;

    .line 109
    iput-object p4, p0, Lcom/android/systemui/doze/DozeService;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 110
    iput-object p5, p0, Lcom/android/systemui/doze/DozeService;->mFaceWidgetManagerLazy:Ldagger/Lazy;

    .line 111
    iput-object p6, p0, Lcom/android/systemui/doze/DozeService;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    return-void
.end method

.method private addPluginListener()V
    .locals 13

    .line 387
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mFaceWidgetManagerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;

    invoke-virtual {v0}, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 388
    sget-boolean v0, Lcom/android/systemui/LsRune;->LOCKUI_AOD_PACKAGE_AVAILABLE:Z

    if-eqz v0, :cond_0

    .line 389
    iget-object v1, p0, Lcom/android/systemui/doze/DozeService;->mPluginManager:Lcom/android/systemui/shared/plugins/PluginManager;

    const-class v3, Lcom/android/systemui/plugins/aod/PluginAOD;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v2, p0

    invoke-interface/range {v1 .. v6}, Lcom/android/systemui/shared/plugins/PluginManager;->addPluginListener(Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;ZZI)V

    goto :goto_0

    .line 391
    :cond_0
    iget-object v7, p0, Lcom/android/systemui/doze/DozeService;->mPluginManager:Lcom/android/systemui/shared/plugins/PluginManager;

    const-class v9, Lcom/android/systemui/plugins/clockpack/PluginClockPack;

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object v8, p0

    invoke-interface/range {v7 .. v12}, Lcom/android/systemui/shared/plugins/PluginManager;->addPluginListener(Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;ZZI)V

    goto :goto_0

    :cond_1
    const-string v0, "DozeService"

    const-string v1, "addPluginListener() PluginFaceWidget is not connected, wait connection"

    .line 394
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mPluginAODManagerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/doze/PluginAODManager;

    iget-object p0, p0, Lcom/android/systemui/doze/DozeService;->mPluginConnectionConsumer:Ljava/util/function/Consumer;

    invoke-virtual {v0, p0}, Lcom/android/systemui/doze/PluginAODManager;->addConnectionConsumer(Ljava/util/function/Consumer;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$new$0(Ljava/lang/Object;)V
    .locals 12

    const-string p1, "DozeService"

    const-string v0, "addPluginListener() PluginFaceWidget is connected"

    .line 88
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object p1, p0, Lcom/android/systemui/doze/DozeService;->mAODDozeMachine:Lcom/android/systemui/doze/AODMachine;

    if-eqz p1, :cond_1

    .line 90
    sget-boolean p1, Lcom/android/systemui/LsRune;->LOCKUI_AOD_PACKAGE_AVAILABLE:Z

    if-eqz p1, :cond_0

    .line 91
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mPluginManager:Lcom/android/systemui/shared/plugins/PluginManager;

    const-class v2, Lcom/android/systemui/plugins/aod/PluginAOD;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lcom/android/systemui/shared/plugins/PluginManager;->addPluginListener(Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;ZZI)V

    goto :goto_0

    .line 93
    :cond_0
    iget-object v6, p0, Lcom/android/systemui/doze/DozeService;->mPluginManager:Lcom/android/systemui/shared/plugins/PluginManager;

    const-class v8, Lcom/android/systemui/plugins/clockpack/PluginClockPack;

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object v7, p0

    invoke-interface/range {v6 .. v11}, Lcom/android/systemui/shared/plugins/PluginManager;->addPluginListener(Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;ZZI)V

    :cond_1
    :goto_0
    return-void
.end method

.method private startAlwaysOnDisplay()Z
    .locals 5

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startAlwaysOnDisplay: mAODPlugin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/doze/DozeService;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DozeService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 328
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mPluginAODManagerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/doze/PluginAODManager;

    invoke-virtual {v0}, Lcom/android/systemui/doze/PluginAODManager;->getSysUIConfig()Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;

    move-result-object v0

    const/4 v2, 0x4

    .line 329
    iget-boolean v3, p0, Lcom/android/systemui/doze/DozeService;->mIsUnlockedState:Z

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;->set(IZ)V

    const/4 v2, 0x5

    .line 330
    iget-boolean v3, p0, Lcom/android/systemui/doze/DozeService;->mIsOccluded:Z

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;->set(IZ)V

    const/4 v2, 0x6

    .line 331
    iget-object v3, p0, Lcom/android/systemui/doze/DozeService;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->isScreenOffMemoRunning()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;->set(IZ)V

    const/4 v2, 0x7

    .line 332
    iget-object v3, p0, Lcom/android/systemui/doze/DozeService;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->isFullscreenBouncer()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;->set(IZ)V

    .line 333
    iget-object v2, p0, Lcom/android/systemui/doze/DozeService;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->getNotificationPanelView()Landroid/view/ViewGroup;

    move-result-object v2

    .line 335
    sget-boolean v3, Lcom/android/systemui/LsRune;->AOD_SUB_DISPLAY_AOD_BY_FOLDER_EVENT:Z

    if-eqz v3, :cond_1

    .line 336
    iget-object v3, p0, Lcom/android/systemui/doze/DozeService;->mPluginAODManagerLazy:Ldagger/Lazy;

    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/doze/PluginAODManager;

    invoke-virtual {v3}, Lcom/android/systemui/doze/PluginAODManager;->isStartedByFolderClosed()Z

    move-result v3

    const/4 v4, 0x3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    .line 337
    invoke-virtual {v0, v4, v3}, Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;->set(II)V

    .line 338
    iget-object v3, p0, Lcom/android/systemui/doze/DozeService;->mPluginAODManagerLazy:Ldagger/Lazy;

    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/doze/PluginAODManager;

    invoke-virtual {v3, v1}, Lcom/android/systemui/doze/PluginAODManager;->setStartedByFolderClosed(Z)V

    goto :goto_0

    .line 340
    :cond_0
    invoke-virtual {v0, v4, v1}, Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;->set(II)V

    .line 343
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/doze/DozeService;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    invoke-interface {p0, v2, v0}, Lcom/android/systemui/plugins/aod/PluginAOD;->onDreamingStarted(Landroid/view/ViewGroup;Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;)Z

    move-result v1

    :cond_2
    return v1
.end method

.method private startClockPack()V
    .locals 2

    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startClockPack: mClockPackPlugin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/doze/DozeService;->mClockPackPlugin:Lcom/android/systemui/plugins/clockpack/PluginClockPack;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DozeService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mClockPackPlugin:Lcom/android/systemui/plugins/clockpack/PluginClockPack;

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->getNotificationPanelView()Landroid/view/ViewGroup;

    move-result-object v0

    .line 362
    iget-object v1, p0, Lcom/android/systemui/doze/DozeService;->mClockPackPlugin:Lcom/android/systemui/plugins/clockpack/PluginClockPack;

    iget-object p0, p0, Lcom/android/systemui/doze/DozeService;->mPluginAODManagerLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/doze/PluginAODManager;

    invoke-virtual {p0}, Lcom/android/systemui/doze/PluginAODManager;->getSysUIConfig()Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;

    move-result-object p0

    invoke-interface {v1, v0, p0}, Lcom/android/systemui/plugins/clockpack/PluginClockPack;->onDreamingStarted(Landroid/view/ViewGroup;Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;)V

    :cond_0
    return-void
.end method

.method private stopAlwaysOnDisplay()V
    .locals 2

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stopAlwaysOnDisplay: mAODPlugin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/doze/DozeService;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DozeService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    if-eqz v0, :cond_0

    .line 352
    invoke-interface {v0}, Lcom/android/systemui/plugins/aod/PluginAOD;->onDreamingStopped()V

    const/4 v0, 0x0

    .line 353
    iput-object v0, p0, Lcom/android/systemui/doze/DozeService;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    :cond_0
    return-void
.end method

.method private stopClockPack()V
    .locals 2

    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stopClockPack: mClockPackPlugin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/doze/DozeService;->mClockPackPlugin:Lcom/android/systemui/plugins/clockpack/PluginClockPack;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DozeService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mClockPackPlugin:Lcom/android/systemui/plugins/clockpack/PluginClockPack;

    if-eqz v0, :cond_0

    .line 370
    invoke-interface {v0}, Lcom/android/systemui/plugins/clockpack/PluginClockPack;->onDreamingStopped()V

    const/4 v0, 0x0

    .line 371
    iput-object v0, p0, Lcom/android/systemui/doze/DozeService;->mClockPackPlugin:Lcom/android/systemui/plugins/clockpack/PluginClockPack;

    :cond_0
    return-void
.end method


# virtual methods
.method protected dumpOnHandler(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 278
    invoke-super {p0, p1, p2, p3}, Landroid/service/dreams/DreamService;->dumpOnHandler(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 280
    iget-object p0, p0, Lcom/android/systemui/doze/DozeService;->mAODDozeMachine:Lcom/android/systemui/doze/AODMachine;

    if-eqz p0, :cond_0

    .line 281
    invoke-virtual {p0, p2}, Lcom/android/systemui/doze/DozeMachine;->dump(Ljava/io/PrintWriter;)V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 378
    sget-boolean v0, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConfigurationChanged : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DozeService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    :cond_0
    invoke-super {p0, p1}, Landroid/service/dreams/DreamService;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 380
    iget-object p0, p0, Lcom/android/systemui/doze/DozeService;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    if-eqz p0, :cond_1

    .line 381
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/aod/PluginAOD;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_1
    return-void
.end method

.method public onCreate()V
    .locals 2

    .line 117
    invoke-super {p0}, Landroid/service/dreams/DreamService;->onCreate()V

    const/4 v0, 0x1

    .line 119
    invoke-virtual {p0, v0}, Landroid/service/dreams/DreamService;->setWindowless(Z)V

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DozeService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-direct {p0}, Lcom/android/systemui/doze/DozeService;->addPluginListener()V

    .line 125
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mDozeComponentBuilder:Lcom/android/systemui/doze/dagger/DozeComponent$Builder;

    invoke-interface {v0, p0}, Lcom/android/systemui/doze/dagger/DozeComponent$Builder;->build(Lcom/android/systemui/doze/DozeMachine$Service;)Lcom/android/systemui/doze/dagger/DozeComponent;

    move-result-object v0

    .line 126
    invoke-interface {v0}, Lcom/android/systemui/doze/dagger/DozeComponent;->getAODMachine()Lcom/android/systemui/doze/AODMachine;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/doze/DozeService;->mAODDozeMachine:Lcom/android/systemui/doze/AODMachine;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mPluginManager:Lcom/android/systemui/shared/plugins/PluginManager;

    if-eqz v0, :cond_0

    .line 137
    invoke-interface {v0, p0}, Lcom/android/systemui/shared/plugins/PluginManager;->removePluginListener(Lcom/android/systemui/plugins/PluginListener;)V

    .line 139
    :cond_0
    invoke-super {p0}, Landroid/service/dreams/DreamService;->onDestroy()V

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDestroy: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DozeService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mAODDozeMachine:Lcom/android/systemui/doze/AODMachine;

    invoke-virtual {v0}, Lcom/android/systemui/doze/DozeMachine;->destroy()V

    const/4 v0, 0x0

    .line 143
    iput-object v0, p0, Lcom/android/systemui/doze/DozeService;->mAODDozeMachine:Lcom/android/systemui/doze/AODMachine;

    return-void
.end method

.method public onDreamingStarted()V
    .locals 2

    .line 210
    invoke-super {p0}, Landroid/service/dreams/DreamService;->onDreamingStarted()V

    .line 211
    sget-boolean v0, Lcom/android/systemui/LsRune;->AOD_SAFEMODE:Z

    if-eqz v0, :cond_0

    return-void

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mAODDozeMachine:Lcom/android/systemui/doze/AODMachine;

    const-string v1, "DozeService"

    if-nez v0, :cond_1

    const-string p0, "onDreamingStarted: mAODDozeMachine is null"

    .line 217
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string v0, "onDreamingStarted: "

    .line 220
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    if-eqz v0, :cond_2

    .line 222
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->isUnLockedstate()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/doze/DozeService;->mIsUnlockedState:Z

    .line 223
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->isOccludedstate()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/doze/DozeService;->mIsOccluded:Z

    .line 225
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mAODDozeMachine:Lcom/android/systemui/doze/AODMachine;

    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->INITIALIZED:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {v0, v1}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;)V

    .line 230
    sget-boolean v0, Lcom/android/systemui/LsRune;->AOD_BRIGHTNESS_CONTROL:Z

    if-eqz v0, :cond_3

    const v0, 0x10002

    const/4 v1, -0x1

    .line 231
    invoke-virtual {p0, v0, v1}, Landroid/service/dreams/DreamService;->semSetDozeScreenBrightness(II)V

    .line 234
    :cond_3
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->startDozing()V

    .line 236
    sget-boolean v0, Lcom/android/systemui/LsRune;->LOCKUI_AOD_PACKAGE_AVAILABLE:Z

    if-eqz v0, :cond_4

    .line 237
    invoke-direct {p0}, Lcom/android/systemui/doze/DozeService;->startAlwaysOnDisplay()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    if-eqz v0, :cond_5

    .line 239
    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeService;->onRequestHideDoze()V

    goto :goto_0

    .line 242
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/doze/DozeService;->startClockPack()V

    :cond_5
    :goto_0
    return-void
.end method

.method public onDreamingStopped()V
    .locals 2

    .line 253
    invoke-super {p0}, Landroid/service/dreams/DreamService;->onDreamingStopped()V

    .line 254
    sget-boolean v0, Lcom/android/systemui/LsRune;->AOD_SAFEMODE:Z

    if-eqz v0, :cond_0

    return-void

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mAODDozeMachine:Lcom/android/systemui/doze/AODMachine;

    const-string v1, "DozeService"

    if-nez v0, :cond_1

    const-string p0, "onDreamingStopped: mAODDozeMachine is null"

    .line 260
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string v0, "onDreamingStopped: "

    .line 263
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mAODDozeMachine:Lcom/android/systemui/doze/AODMachine;

    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->FINISH:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {v0, v1}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;)V

    .line 265
    sget-boolean v0, Lcom/android/systemui/LsRune;->LOCKUI_AOD_PACKAGE_AVAILABLE:Z

    if-eqz v0, :cond_2

    .line 266
    invoke-direct {p0}, Lcom/android/systemui/doze/DozeService;->stopAlwaysOnDisplay()V

    :cond_2
    return-void
.end method

.method public onPluginConnected(Lcom/android/systemui/plugins/Plugin;Landroid/content/Context;)V
    .locals 2

    .line 153
    iget-object p2, p0, Lcom/android/systemui/doze/DozeService;->mAODDozeMachine:Lcom/android/systemui/doze/AODMachine;

    const-string v0, "DozeService"

    if-nez p2, :cond_0

    .line 154
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onPluginConnected: mAODDozeMachine is null, plugin="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 157
    :cond_0
    instance-of p2, p1, Lcom/android/systemui/plugins/aod/PluginAOD;

    if-eqz p2, :cond_1

    .line 158
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPluginConnected: PluginAOD plugin="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    check-cast p1, Lcom/android/systemui/plugins/aod/PluginAOD;

    iput-object p1, p0, Lcom/android/systemui/doze/DozeService;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    .line 160
    iget-object p1, p0, Lcom/android/systemui/doze/DozeService;->mPluginAODManagerLazy:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/doze/PluginAODManager;

    iget-object p2, p0, Lcom/android/systemui/doze/DozeService;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    invoke-virtual {p1, p0, p2}, Lcom/android/systemui/doze/PluginAODManager;->setAODPlugin(Landroid/content/Context;Lcom/android/systemui/plugins/aod/PluginAOD;)V

    .line 161
    iget-object p1, p0, Lcom/android/systemui/doze/DozeService;->mPluginAODManagerLazy:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/doze/PluginAODManager;

    iget-object p2, p0, Lcom/android/systemui/doze/DozeService;->mAODDozeMachine:Lcom/android/systemui/doze/AODMachine;

    invoke-virtual {p1, p2}, Lcom/android/systemui/doze/PluginAODManager;->setAODMachine(Lcom/android/systemui/doze/AODMachine;)V

    .line 162
    iget-object p1, p0, Lcom/android/systemui/doze/DozeService;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    iget-object p2, p0, Lcom/android/systemui/doze/DozeService;->mAODDozeMachine:Lcom/android/systemui/doze/AODMachine;

    invoke-interface {p1, p2}, Lcom/android/systemui/plugins/aod/PluginAOD;->setAODPluginCallback(Lcom/android/systemui/plugins/aod/PluginAOD$Callback;)V

    .line 163
    iget-object p1, p0, Lcom/android/systemui/doze/DozeService;->mAODDozeMachine:Lcom/android/systemui/doze/AODMachine;

    iget-object p2, p0, Lcom/android/systemui/doze/DozeService;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    invoke-interface {p2}, Lcom/android/systemui/plugins/aod/PluginAOD;->getAODParameter()Lcom/android/systemui/plugins/aod/PluginAODParameter;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/systemui/doze/AODMachine;->setAODParameter(Lcom/android/systemui/plugins/aod/PluginAODParameter;)V

    .line 164
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->canDoze()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->isDozing()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/doze/DozeService;->startAlwaysOnDisplay()Z

    move-result p1

    if-nez p1, :cond_3

    .line 165
    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeService;->onRequestHideDoze()V

    goto :goto_0

    .line 167
    :cond_1
    instance-of p2, p1, Lcom/android/systemui/plugins/clockpack/PluginClockPack;

    if-eqz p2, :cond_2

    .line 168
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPluginConnected: PluginClockPack plugin="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    check-cast p1, Lcom/android/systemui/plugins/clockpack/PluginClockPack;

    iput-object p1, p0, Lcom/android/systemui/doze/DozeService;->mClockPackPlugin:Lcom/android/systemui/plugins/clockpack/PluginClockPack;

    .line 170
    iget-object p1, p0, Lcom/android/systemui/doze/DozeService;->mPluginAODManagerLazy:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/doze/PluginAODManager;

    iget-object p2, p0, Lcom/android/systemui/doze/DozeService;->mClockPackPlugin:Lcom/android/systemui/plugins/clockpack/PluginClockPack;

    invoke-virtual {p1, p2}, Lcom/android/systemui/doze/PluginAODManager;->setClockPackplugin(Lcom/android/systemui/plugins/clockpack/PluginClockPack;)V

    .line 171
    iget-object p1, p0, Lcom/android/systemui/doze/DozeService;->mClockPackPlugin:Lcom/android/systemui/plugins/clockpack/PluginClockPack;

    iget-object p2, p0, Lcom/android/systemui/doze/DozeService;->mAODDozeMachine:Lcom/android/systemui/doze/AODMachine;

    invoke-interface {p1, p2}, Lcom/android/systemui/plugins/clockpack/PluginClockPack;->setAODPluginCallback(Lcom/android/systemui/plugins/aod/PluginAOD$Callback;)V

    .line 172
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->canDoze()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->isDozing()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 173
    invoke-direct {p0}, Lcom/android/systemui/doze/DozeService;->startClockPack()V

    goto :goto_0

    .line 176
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPluginConnected: abnormal plugin="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeService;->onRequestHideDoze()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onPluginDisconnected(Lcom/android/systemui/plugins/Plugin;)V
    .locals 4

    .line 190
    instance-of v0, p1, Lcom/android/systemui/plugins/aod/PluginAOD;

    const/4 v1, 0x0

    const-string v2, "DozeService"

    if-eqz v0, :cond_0

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPluginDisconnected: PluginAOD plugin="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object p1, p0, Lcom/android/systemui/doze/DozeService;->mPluginAODManagerLazy:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/doze/PluginAODManager;

    invoke-virtual {p1, p0, v1}, Lcom/android/systemui/doze/PluginAODManager;->setAODPlugin(Landroid/content/Context;Lcom/android/systemui/plugins/aod/PluginAOD;)V

    .line 193
    iget-object p1, p0, Lcom/android/systemui/doze/DozeService;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->updateAODWindowLayoutParams()V

    .line 194
    invoke-direct {p0}, Lcom/android/systemui/doze/DozeService;->stopAlwaysOnDisplay()V

    goto :goto_0

    .line 195
    :cond_0
    instance-of v0, p1, Lcom/android/systemui/plugins/clockpack/PluginClockPack;

    if-eqz v0, :cond_1

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPluginDisconnected: PluginClockPack plugin="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object p1, p0, Lcom/android/systemui/doze/DozeService;->mPluginAODManagerLazy:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/doze/PluginAODManager;

    invoke-virtual {p1, v1}, Lcom/android/systemui/doze/PluginAODManager;->setClockPackplugin(Lcom/android/systemui/plugins/clockpack/PluginClockPack;)V

    .line 198
    invoke-direct {p0}, Lcom/android/systemui/doze/DozeService;->stopClockPack()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onRequestHideDoze()V
    .locals 1

    .line 313
    iget-object p0, p0, Lcom/android/systemui/doze/DozeService;->mAODDozeMachine:Lcom/android/systemui/doze/AODMachine;

    if-eqz p0, :cond_0

    .line 314
    sget-object v0, Lcom/android/systemui/doze/DozeMachine$State;->DOZE:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {p0, v0}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;)V

    :cond_0
    return-void
.end method

.method public onRequestShowDoze()V
    .locals 1

    .line 300
    iget-object p0, p0, Lcom/android/systemui/doze/DozeService;->mAODDozeMachine:Lcom/android/systemui/doze/AODMachine;

    if-eqz p0, :cond_0

    .line 301
    sget-object v0, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {p0, v0}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;)V

    :cond_0
    return-void
.end method

.method public requestWakeUp()V
    .locals 4

    .line 292
    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p0, v0}, Landroid/service/dreams/DreamService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    .line 293
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v2, 0x4

    const-string v3, "com.android.systemui:NODOZE"

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    return-void
.end method

.method public setDozeScreenState(I)V
    .locals 0

    .line 401
    invoke-super {p0, p1}, Landroid/service/dreams/DreamService;->setDozeScreenState(I)V

    .line 403
    iget-object p0, p0, Lcom/android/systemui/doze/DozeService;->mAODDozeMachine:Lcom/android/systemui/doze/AODMachine;

    invoke-virtual {p0, p1}, Lcom/android/systemui/doze/DozeMachine;->onScreenState(I)V

    return-void
.end method
