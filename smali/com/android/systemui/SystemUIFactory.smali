.class public Lcom/android/systemui/SystemUIFactory;
.super Ljava/lang/Object;
.source "SystemUIFactory.java"


# static fields
.field static mFactory:Lcom/android/systemui/SystemUIFactory;


# instance fields
.field private mInitializeComponents:Z

.field private mRootComponent:Lcom/android/systemui/dagger/GlobalRootComponent;

.field private mSysUIComponent:Lcom/android/systemui/dagger/SysUIComponent;

.field private mWMComponent:Lcom/android/systemui/dagger/WMComponent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static cleanup()V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    .line 83
    sput-object v0, Lcom/android/systemui/SystemUIFactory;->mFactory:Lcom/android/systemui/SystemUIFactory;

    return-void
.end method

.method public static createFromConfig(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 56
    invoke-static {p0, v0}, Lcom/android/systemui/SystemUIFactory;->createFromConfig(Landroid/content/Context;Z)V

    return-void
.end method

.method public static createFromConfig(Landroid/content/Context;Z)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 61
    sget-object v0, Lcom/android/systemui/SystemUIFactory;->mFactory:Lcom/android/systemui/SystemUIFactory;

    if-eqz v0, :cond_0

    return-void

    .line 65
    :cond_0
    sget v0, Lcom/android/systemui/R$string;->config_systemUIFactoryComponent:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 66
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 72
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 73
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/SystemUIFactory;

    sput-object v1, Lcom/android/systemui/SystemUIFactory;->mFactory:Lcom/android/systemui/SystemUIFactory;

    .line 74
    invoke-virtual {v1, p0, p1}, Lcom/android/systemui/SystemUIFactory;->init(Landroid/content/Context;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 76
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error creating SystemUIFactory component: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SystemUIFactory"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 77
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 67
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "No SystemUIFactory component configured"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getInstance()Lcom/android/systemui/SystemUIFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/systemui/SystemUIFactory;",
            ">()TT;"
        }
    .end annotation

    .line 52
    sget-object v0, Lcom/android/systemui/SystemUIFactory;->mFactory:Lcom/android/systemui/SystemUIFactory;

    return-object v0
.end method


# virtual methods
.method protected buildGlobalRootComponent(Landroid/content/Context;)Lcom/android/systemui/dagger/GlobalRootComponent;
    .locals 0

    .line 163
    invoke-static {}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent;->builder()Lcom/android/systemui/dagger/GlobalRootComponent$Builder;

    move-result-object p0

    .line 164
    invoke-interface {p0, p1}, Lcom/android/systemui/dagger/GlobalRootComponent$Builder;->context(Landroid/content/Context;)Lcom/android/systemui/dagger/GlobalRootComponent$Builder;

    move-result-object p0

    .line 165
    invoke-interface {p0}, Lcom/android/systemui/dagger/GlobalRootComponent$Builder;->build()Lcom/android/systemui/dagger/GlobalRootComponent;

    move-result-object p0

    return-object p0
.end method

.method public createBackGestureTfClassifierProvider(Landroid/content/res/AssetManager;Ljava/lang/String;)Lcom/android/systemui/navigationbar/gestural/BackGestureTfClassifierProvider;
    .locals 0

    .line 204
    new-instance p0, Lcom/android/systemui/navigationbar/gestural/BackGestureTfClassifierProvider;

    invoke-direct {p0}, Lcom/android/systemui/navigationbar/gestural/BackGestureTfClassifierProvider;-><init>()V

    return-object p0
.end method

.method public getRootComponent()Lcom/android/systemui/dagger/GlobalRootComponent;
    .locals 0

    .line 173
    iget-object p0, p0, Lcom/android/systemui/SystemUIFactory;->mRootComponent:Lcom/android/systemui/dagger/GlobalRootComponent;

    return-object p0
.end method

.method public getSysUIComponent()Lcom/android/systemui/dagger/SysUIComponent;
    .locals 0

    .line 181
    iget-object p0, p0, Lcom/android/systemui/SystemUIFactory;->mSysUIComponent:Lcom/android/systemui/dagger/SysUIComponent;

    return-object p0
.end method

.method public getSystemUIServiceComponentsPerUser(Landroid/content/res/Resources;)[Ljava/lang/String;
    .locals 0

    .line 195
    sget p0, Lcom/android/systemui/R$array;->config_systemUIServiceComponentsPerUser:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public init(Landroid/content/Context;Z)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 93
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/UserHandle;->isSystem()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 94
    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lcom/android/systemui/SystemUIFactory;->mInitializeComponents:Z

    .line 95
    invoke-virtual {p0, p1}, Lcom/android/systemui/SystemUIFactory;->buildGlobalRootComponent(Landroid/content/Context;)Lcom/android/systemui/dagger/GlobalRootComponent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/SystemUIFactory;->mRootComponent:Lcom/android/systemui/dagger/GlobalRootComponent;

    .line 97
    invoke-interface {p1}, Lcom/android/systemui/dagger/GlobalRootComponent;->getWMComponentBuilder()Lcom/android/systemui/dagger/WMComponent$Builder;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/systemui/dagger/WMComponent$Builder;->build()Lcom/android/systemui/dagger/WMComponent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/SystemUIFactory;->mWMComponent:Lcom/android/systemui/dagger/WMComponent;

    .line 98
    iget-boolean p2, p0, Lcom/android/systemui/SystemUIFactory;->mInitializeComponents:Z

    if-eqz p2, :cond_1

    .line 101
    invoke-interface {p1}, Lcom/android/systemui/dagger/WMComponent;->init()V

    .line 105
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/SystemUIFactory;->mRootComponent:Lcom/android/systemui/dagger/GlobalRootComponent;

    invoke-interface {p1}, Lcom/android/systemui/dagger/GlobalRootComponent;->getSysUIComponent()Lcom/android/systemui/dagger/SysUIComponent$Builder;

    move-result-object p1

    .line 106
    iget-boolean p2, p0, Lcom/android/systemui/SystemUIFactory;->mInitializeComponents:Z

    if-eqz p2, :cond_2

    .line 109
    iget-object p2, p0, Lcom/android/systemui/SystemUIFactory;->mWMComponent:Lcom/android/systemui/dagger/WMComponent;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/SystemUIFactory;->prepareSysUIComponentBuilder(Lcom/android/systemui/dagger/SysUIComponent$Builder;Lcom/android/systemui/dagger/WMComponent;)Lcom/android/systemui/dagger/SysUIComponent$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/SystemUIFactory;->mWMComponent:Lcom/android/systemui/dagger/WMComponent;

    .line 110
    invoke-interface {p2}, Lcom/android/systemui/dagger/WMComponent;->getPip()Ljava/util/Optional;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/android/systemui/dagger/SysUIComponent$Builder;->setPip(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/SystemUIFactory;->mWMComponent:Lcom/android/systemui/dagger/WMComponent;

    .line 111
    invoke-interface {p2}, Lcom/android/systemui/dagger/WMComponent;->getLegacySplitScreen()Ljava/util/Optional;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/android/systemui/dagger/SysUIComponent$Builder;->setLegacySplitScreen(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/SystemUIFactory;->mWMComponent:Lcom/android/systemui/dagger/WMComponent;

    .line 112
    invoke-interface {p2}, Lcom/android/systemui/dagger/WMComponent;->getSplitScreen()Ljava/util/Optional;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/android/systemui/dagger/SysUIComponent$Builder;->setSplitScreen(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/SystemUIFactory;->mWMComponent:Lcom/android/systemui/dagger/WMComponent;

    .line 113
    invoke-interface {p2}, Lcom/android/systemui/dagger/WMComponent;->getOneHanded()Ljava/util/Optional;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/android/systemui/dagger/SysUIComponent$Builder;->setOneHanded(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/SystemUIFactory;->mWMComponent:Lcom/android/systemui/dagger/WMComponent;

    .line 114
    invoke-interface {p2}, Lcom/android/systemui/dagger/WMComponent;->getBubbles()Ljava/util/Optional;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/android/systemui/dagger/SysUIComponent$Builder;->setBubbles(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/SystemUIFactory;->mWMComponent:Lcom/android/systemui/dagger/WMComponent;

    .line 115
    invoke-interface {p2}, Lcom/android/systemui/dagger/WMComponent;->getHideDisplayCutout()Ljava/util/Optional;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/android/systemui/dagger/SysUIComponent$Builder;->setHideDisplayCutout(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/SystemUIFactory;->mWMComponent:Lcom/android/systemui/dagger/WMComponent;

    .line 116
    invoke-interface {p2}, Lcom/android/systemui/dagger/WMComponent;->getShellCommandHandler()Ljava/util/Optional;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/android/systemui/dagger/SysUIComponent$Builder;->setShellCommandHandler(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/SystemUIFactory;->mWMComponent:Lcom/android/systemui/dagger/WMComponent;

    .line 117
    invoke-interface {p2}, Lcom/android/systemui/dagger/WMComponent;->getAppPairs()Ljava/util/Optional;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/android/systemui/dagger/SysUIComponent$Builder;->setAppPairs(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/SystemUIFactory;->mWMComponent:Lcom/android/systemui/dagger/WMComponent;

    .line 118
    invoke-interface {p2}, Lcom/android/systemui/dagger/WMComponent;->getTaskViewFactory()Ljava/util/Optional;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/android/systemui/dagger/SysUIComponent$Builder;->setTaskViewFactory(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/SystemUIFactory;->mWMComponent:Lcom/android/systemui/dagger/WMComponent;

    .line 119
    invoke-interface {p2}, Lcom/android/systemui/dagger/WMComponent;->getTransitions()Lcom/android/wm/shell/transition/ShellTransitions;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/android/systemui/dagger/SysUIComponent$Builder;->setTransitions(Lcom/android/wm/shell/transition/ShellTransitions;)Lcom/android/systemui/dagger/SysUIComponent$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/SystemUIFactory;->mWMComponent:Lcom/android/systemui/dagger/WMComponent;

    .line 120
    invoke-interface {p2}, Lcom/android/systemui/dagger/WMComponent;->getStartingSurface()Ljava/util/Optional;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/android/systemui/dagger/SysUIComponent$Builder;->setStartingSurface(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/SystemUIFactory;->mWMComponent:Lcom/android/systemui/dagger/WMComponent;

    .line 121
    invoke-interface {p2}, Lcom/android/systemui/dagger/WMComponent;->getTaskSurfaceHelper()Ljava/util/Optional;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/android/systemui/dagger/SysUIComponent$Builder;->setTaskSurfaceHelper(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/SystemUIFactory;->mWMComponent:Lcom/android/systemui/dagger/WMComponent;

    .line 122
    invoke-interface {p2}, Lcom/android/systemui/dagger/WMComponent;->getDisplayController()Ljava/util/Optional;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/android/systemui/dagger/SysUIComponent$Builder;->setDisplayController(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;

    move-result-object p1

    goto :goto_1

    .line 126
    :cond_2
    iget-object p2, p0, Lcom/android/systemui/SystemUIFactory;->mWMComponent:Lcom/android/systemui/dagger/WMComponent;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/SystemUIFactory;->prepareSysUIComponentBuilder(Lcom/android/systemui/dagger/SysUIComponent$Builder;Lcom/android/systemui/dagger/WMComponent;)Lcom/android/systemui/dagger/SysUIComponent$Builder;

    move-result-object p1

    const/4 p2, 0x0

    .line 127
    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/systemui/dagger/SysUIComponent$Builder;->setPip(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;

    move-result-object p1

    .line 128
    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/systemui/dagger/SysUIComponent$Builder;->setLegacySplitScreen(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;

    move-result-object p1

    .line 129
    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/systemui/dagger/SysUIComponent$Builder;->setSplitScreen(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;

    move-result-object p1

    .line 130
    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/systemui/dagger/SysUIComponent$Builder;->setOneHanded(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;

    move-result-object p1

    .line 131
    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/systemui/dagger/SysUIComponent$Builder;->setBubbles(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;

    move-result-object p1

    .line 132
    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/systemui/dagger/SysUIComponent$Builder;->setHideDisplayCutout(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;

    move-result-object p1

    .line 133
    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/systemui/dagger/SysUIComponent$Builder;->setShellCommandHandler(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;

    move-result-object p1

    .line 134
    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/systemui/dagger/SysUIComponent$Builder;->setAppPairs(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;

    move-result-object p1

    .line 135
    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/systemui/dagger/SysUIComponent$Builder;->setTaskViewFactory(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;

    move-result-object p1

    .line 136
    invoke-static {}, Lcom/android/wm/shell/transition/Transitions;->createEmptyForTesting()Lcom/android/wm/shell/transition/ShellTransitions;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/systemui/dagger/SysUIComponent$Builder;->setTransitions(Lcom/android/wm/shell/transition/ShellTransitions;)Lcom/android/systemui/dagger/SysUIComponent$Builder;

    move-result-object p1

    .line 137
    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/systemui/dagger/SysUIComponent$Builder;->setStartingSurface(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;

    move-result-object p1

    .line 138
    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/systemui/dagger/SysUIComponent$Builder;->setTaskSurfaceHelper(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;

    move-result-object p1

    .line 139
    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/android/systemui/dagger/SysUIComponent$Builder;->setDisplayController(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;

    move-result-object p1

    .line 141
    :goto_1
    invoke-interface {p1}, Lcom/android/systemui/dagger/SysUIComponent$Builder;->build()Lcom/android/systemui/dagger/SysUIComponent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/SystemUIFactory;->mSysUIComponent:Lcom/android/systemui/dagger/SysUIComponent;

    .line 142
    iget-boolean p2, p0, Lcom/android/systemui/SystemUIFactory;->mInitializeComponents:Z

    if-eqz p2, :cond_3

    .line 143
    invoke-interface {p1}, Lcom/android/systemui/dagger/SysUIComponent;->init()V

    .line 148
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/SystemUIFactory;->mSysUIComponent:Lcom/android/systemui/dagger/SysUIComponent;

    invoke-interface {p0}, Lcom/android/systemui/dagger/SysUIComponent;->createDependency()Lcom/android/systemui/Dependency;

    move-result-object p0

    .line 149
    invoke-virtual {p0}, Lcom/android/systemui/Dependency;->start()V

    return-void
.end method

.method protected prepareSysUIComponentBuilder(Lcom/android/systemui/dagger/SysUIComponent$Builder;Lcom/android/systemui/dagger/WMComponent;)Lcom/android/systemui/dagger/SysUIComponent$Builder;
    .locals 0

    return-object p1
.end method
