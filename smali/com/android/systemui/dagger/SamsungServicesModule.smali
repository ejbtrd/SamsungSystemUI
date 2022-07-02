.class public abstract Lcom/android/systemui/dagger/SamsungServicesModule;
.super Ljava/lang/Object;
.source "SamsungServicesModule.java"


# direct methods
.method public static provideAODLogger(Lcom/android/systemui/log/LogcatEchoTracker;Lcom/android/systemui/dump/DumpManager;)Lcom/android/systemui/log/SamsungServiceLogger;
    .locals 7

    .line 170
    new-instance v6, Lcom/android/systemui/log/SamsungServiceLoggerImpl;

    const-string v1, "AODLogger"

    const/16 v2, 0xc8

    const/16 v3, 0xa

    move-object v0, v6

    move-object v4, p1

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/log/SamsungServiceLoggerImpl;-><init>(Ljava/lang/String;IILcom/android/systemui/dump/DumpManager;Lcom/android/systemui/log/LogcatEchoTracker;)V

    return-object v6
.end method

.method public static provideBinderCallMonitorLogger(Lcom/android/systemui/log/LogcatEchoTracker;Lcom/android/systemui/dump/DumpManager;)Lcom/android/systemui/log/SamsungServiceLogger;
    .locals 7

    .line 137
    new-instance v6, Lcom/android/systemui/log/SamsungServiceLoggerImpl;

    sget v2, Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;->MAX_BUF_COUNT:I

    const-string v1, "BinderCallMonitorLogger"

    const/16 v3, 0xa

    move-object v0, v6

    move-object v4, p1

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/log/SamsungServiceLoggerImpl;-><init>(Ljava/lang/String;IILcom/android/systemui/dump/DumpManager;Lcom/android/systemui/log/LogcatEchoTracker;)V

    return-object v6
.end method

.method public static provideBinderProxyDumpHelper(Lcom/android/systemui/dump/DumpManager;)Lcom/android/systemui/BinderProxyDumpHelper;
    .locals 1

    .line 117
    new-instance v0, Lcom/android/systemui/BinderProxyDumpHelper;

    invoke-direct {v0, p0}, Lcom/android/systemui/BinderProxyDumpHelper;-><init>(Lcom/android/systemui/dump/DumpManager;)V

    return-object v0
.end method

.method public static provideControlsLogWrapper(Lcom/android/systemui/log/SamsungServiceLogger;)Lcom/android/systemui/basic/util/LogWrapper;
    .locals 2

    .line 326
    new-instance v0, Lcom/android/systemui/basic/util/LogWrapper;

    sget-object v1, Lcom/android/systemui/basic/util/ModuleType;->CONTROLS:Lcom/android/systemui/basic/util/ModuleType;

    invoke-direct {v0, v1, p0}, Lcom/android/systemui/basic/util/LogWrapper;-><init>(Lcom/android/systemui/basic/util/ModuleType;Lcom/android/systemui/log/SamsungServiceLogger;)V

    return-object v0
.end method

.method public static provideControlsLogger(Lcom/android/systemui/log/LogcatEchoTracker;Lcom/android/systemui/dump/DumpManager;)Lcom/android/systemui/log/SamsungServiceLogger;
    .locals 7

    .line 317
    new-instance v6, Lcom/android/systemui/log/SamsungServiceLoggerImpl;

    const-string v1, "ControlsLogger"

    const/16 v2, 0xc8

    const/16 v3, 0xa

    move-object v0, v6

    move-object v4, p1

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/log/SamsungServiceLoggerImpl;-><init>(Ljava/lang/String;IILcom/android/systemui/dump/DumpManager;Lcom/android/systemui/log/LogcatEchoTracker;)V

    return-object v6
.end method

.method public static provideKeyguardLogger(Lcom/android/systemui/log/LogcatEchoTracker;Lcom/android/systemui/dump/DumpManager;)Lcom/android/systemui/log/SamsungServiceLogger;
    .locals 7

    .line 152
    new-instance v6, Lcom/android/systemui/log/SamsungServiceLoggerImpl;

    const-string v1, "KeyguardLogger"

    const/16 v2, 0x8fc

    const/16 v3, 0xa

    move-object v0, v6

    move-object v4, p1

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/log/SamsungServiceLoggerImpl;-><init>(Ljava/lang/String;IILcom/android/systemui/dump/DumpManager;Lcom/android/systemui/log/LogcatEchoTracker;)V

    return-object v6
.end method

.method public static provideNavBarServiceLogger(Lcom/android/systemui/log/LogcatEchoTracker;Lcom/android/systemui/dump/DumpManager;)Lcom/android/systemui/log/SamsungServiceLogger;
    .locals 7

    .line 189
    new-instance v6, Lcom/android/systemui/log/SamsungServiceLoggerImpl;

    const-string v1, "NavBarLogger"

    const/16 v2, 0xc8

    const/16 v3, 0xa

    move-object v0, v6

    move-object v4, p1

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/log/SamsungServiceLoggerImpl;-><init>(Ljava/lang/String;IILcom/android/systemui/dump/DumpManager;Lcom/android/systemui/log/LogcatEchoTracker;)V

    return-object v6
.end method

.method public static provideNavbarBgHandler()Landroid/os/Handler;
    .locals 3

    .line 241
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SysUiNavbarBg"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 243
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 245
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object v1
.end method

.method public static provideSPluginManager(Landroid/content/Context;)Lcom/samsung/systemui/splugins/SPluginManager;
    .locals 2

    .line 96
    new-instance v0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;

    new-instance v1, Lcom/samsung/systemui/splugins/SPluginInitializerImpl;

    invoke-direct {v1}, Lcom/samsung/systemui/splugins/SPluginInitializerImpl;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/systemui/splugins/SPluginManagerImpl;-><init>(Landroid/content/Context;Lcom/samsung/systemui/splugins/SPluginInitializer;)V

    return-object v0
.end method

.method public static provideSecurityLogger(Lcom/android/systemui/log/LogcatEchoTracker;Lcom/android/systemui/dump/DumpManager;)Lcom/android/systemui/log/SamsungServiceLogger;
    .locals 7

    .line 161
    new-instance v6, Lcom/android/systemui/log/SamsungServiceLoggerImpl;

    const-string v1, "SecurityLogger"

    const/16 v2, 0x3e8

    const/16 v3, 0xa

    move-object v0, v6

    move-object v4, p1

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/log/SamsungServiceLoggerImpl;-><init>(Ljava/lang/String;IILcom/android/systemui/dump/DumpManager;Lcom/android/systemui/log/LogcatEchoTracker;)V

    return-object v6
.end method

.method public static provideVolumeLogWrapper(Lcom/android/systemui/log/SamsungServiceLogger;)Lcom/android/systemui/basic/util/LogWrapper;
    .locals 2

    .line 265
    new-instance v0, Lcom/android/systemui/basic/util/LogWrapper;

    sget-object v1, Lcom/android/systemui/basic/util/ModuleType;->VOLUME:Lcom/android/systemui/basic/util/ModuleType;

    invoke-direct {v0, v1, p0}, Lcom/android/systemui/basic/util/LogWrapper;-><init>(Lcom/android/systemui/basic/util/ModuleType;Lcom/android/systemui/log/SamsungServiceLogger;)V

    return-object v0
.end method

.method public static provideVolumePanelLogger(Lcom/android/systemui/log/LogcatEchoTracker;Lcom/android/systemui/dump/DumpManager;)Lcom/android/systemui/log/SamsungServiceLogger;
    .locals 7

    .line 254
    new-instance v6, Lcom/android/systemui/log/SamsungServiceLoggerImpl;

    const-string v1, "VolumePanelLogger"

    const/16 v2, 0xc8

    const/16 v3, 0xa

    move-object v0, v6

    move-object v4, p1

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/log/SamsungServiceLoggerImpl;-><init>(Ljava/lang/String;IILcom/android/systemui/dump/DumpManager;Lcom/android/systemui/log/LogcatEchoTracker;)V

    return-object v6
.end method

.method public static providesBandAidPackFactoryBase()Lcom/android/systemui/navigationbar/bandaid/BandAidPackFactoryBase;
    .locals 1

    .line 214
    new-instance v0, Lcom/android/systemui/navigationbar/bandaid/BandAidPackFactory;

    invoke-direct {v0}, Lcom/android/systemui/navigationbar/bandaid/BandAidPackFactory;-><init>()V

    return-object v0
.end method

.method public static providesLayoutProviderContainer(Landroid/content/Context;)Lcom/samsung/systemui/splugins/navigationbar/LayoutProviderContainer;
    .locals 1

    .line 207
    new-instance v0, Lcom/android/systemui/navigationbar/layout/LayoutProviderContainerImpl;

    invoke-direct {v0, p0}, Lcom/android/systemui/navigationbar/layout/LayoutProviderContainerImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static providesNavBarLogger(Lcom/android/systemui/log/SamsungServiceLogger;)Lcom/android/systemui/basic/util/LogWrapper;
    .locals 2

    .line 200
    new-instance v0, Lcom/android/systemui/basic/util/LogWrapper;

    sget-object v1, Lcom/android/systemui/basic/util/ModuleType;->NAVBAR:Lcom/android/systemui/basic/util/ModuleType;

    invoke-direct {v0, v1, p0}, Lcom/android/systemui/basic/util/LogWrapper;-><init>(Lcom/android/systemui/basic/util/ModuleType;Lcom/android/systemui/log/SamsungServiceLogger;)V

    return-object v0
.end method

.method public static providesNavbarStore(Landroid/content/Context;Lcom/android/systemui/util/SettingsHelper;Lcom/samsung/systemui/splugins/navigationbar/LayoutProviderContainer;Lcom/android/systemui/navigationbar/interactor/InteractorFactory;Lcom/android/systemui/navigationbar/bandaid/BandAidPackFactoryBase;Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;Lcom/android/systemui/navigationbar/gesture/GestureHintAnimator;Lcom/android/systemui/navigationbar/util/StoreLogUtil;Lcom/android/systemui/navigationbar/util/DisplayUtil;Lcom/android/systemui/basic/util/CoverUtilWrapper;Lcom/android/systemui/model/SysUiState;)Lcom/android/systemui/navigationbar/store/NavBarStore;
    .locals 13

    .line 231
    new-instance v12, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    move-object v0, v12

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;-><init>(Landroid/content/Context;Lcom/android/systemui/util/SettingsHelper;Lcom/samsung/systemui/splugins/navigationbar/LayoutProviderContainer;Lcom/android/systemui/navigationbar/interactor/InteractorFactory;Lcom/android/systemui/navigationbar/bandaid/BandAidPackFactoryBase;Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;Lcom/android/systemui/navigationbar/gesture/GestureHintAnimator;Lcom/android/systemui/navigationbar/util/StoreLogUtil;Lcom/android/systemui/navigationbar/util/DisplayUtil;Lcom/android/systemui/basic/util/CoverUtilWrapper;Lcom/android/systemui/model/SysUiState;)V

    return-object v12
.end method

.method public static providesPopupUILogWrapper()Lcom/android/systemui/basic/util/LogWrapper;
    .locals 3

    .line 297
    new-instance v0, Lcom/android/systemui/basic/util/LogWrapper;

    sget-object v1, Lcom/android/systemui/basic/util/ModuleType;->POPUPUI:Lcom/android/systemui/basic/util/ModuleType;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/basic/util/LogWrapper;-><init>(Lcom/android/systemui/basic/util/ModuleType;Lcom/android/systemui/log/SamsungServiceLogger;)V

    return-object v0
.end method

.method public static providesPopupUIViewModelList(Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;Lcom/android/systemui/popup/viewmodel/MWOverheatWarningViewModel;Lcom/android/systemui/popup/viewmodel/SimTrayWaterProtectionViewModel;Lcom/android/systemui/popup/viewmodel/SimTrayReverseProtectionViewModel;Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;Lcom/android/systemui/popup/viewmodel/MobileDeviceWarningViewModel;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;",
            "Lcom/android/systemui/popup/viewmodel/MWOverheatWarningViewModel;",
            "Lcom/android/systemui/popup/viewmodel/SimTrayWaterProtectionViewModel;",
            "Lcom/android/systemui/popup/viewmodel/SimTrayReverseProtectionViewModel;",
            "Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;",
            "Lcom/android/systemui/popup/viewmodel/MobileDeviceWarningViewModel;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/systemui/popup/viewmodel/PopupUIViewModel;",
            ">;"
        }
    .end annotation

    .line 278
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 279
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    sget-boolean p0, Lcom/android/systemui/BasicRune;->POPUPUI_MOBILE_DEVICE_WARNING:Z

    if-eqz p0, :cond_0

    .line 286
    invoke-interface {v0, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method public static providesSlimIndicatorViewMediator(Landroid/content/Context;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;)Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;
    .locals 1

    .line 306
    new-instance v0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;-><init>(Landroid/content/Context;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;)V

    return-object v0
.end method
