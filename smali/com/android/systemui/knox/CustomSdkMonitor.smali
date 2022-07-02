.class Lcom/android/systemui/knox/CustomSdkMonitor;
.super Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback$Stub;
.source "CustomSdkMonitor.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field private final knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

.field private mBatteryLevelColourItem:Lcom/samsung/android/knox/custom/StatusbarIconItem;

.field private mChargerConnectionSoundEnabledState:Z

.field private mHardKeyIntentState:Z

.field private mHideNotificationMessages:I

.field private mIsCustomSdkStatusBarHidden:Z

.field private mKnoxCustomDoubleTapState:Z

.field private mKnoxCustomLockScreenHiddenItems:I

.field private mKnoxCustomLockScreenOverrideMode:I

.field private mKnoxCustomQuickPanelButtonUsers:Z

.field private mKnoxCustomQuickPanelButtons:I

.field private mKnoxCustomQuickPanelEditMode:I

.field private mKnoxCustomUnlockSimOnBootState:Z

.field private mQuickPanelItems:Ljava/lang/String;

.field private mQuickPanelUnavailableButtons:Ljava/lang/String;

.field private mStatusBarIconsState:Z

.field private mStatusBarMode:I

.field private mStatusBarNotificationsState:Z

.field private mStatusBarText:Ljava/lang/String;

.field private mStatusBarTextSize:I

.field private mStatusBarTextStyle:I

.field private mStatusBarTextWidth:I

.field private mUnlockSimPin:Ljava/lang/String;

.field private mVolumePanelEnabledState:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/knox/KnoxStateMonitorImpl;)V
    .locals 3

    .line 52
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback$Stub;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomUnlockSimOnBootState:Z

    const/4 v1, 0x1

    .line 26
    iput-boolean v1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomQuickPanelButtonUsers:Z

    .line 27
    iput-boolean v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomDoubleTapState:Z

    .line 28
    iput-boolean v1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mStatusBarIconsState:Z

    .line 29
    iput-boolean v1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mStatusBarNotificationsState:Z

    .line 30
    iput-boolean v1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mChargerConnectionSoundEnabledState:Z

    .line 31
    iput-boolean v1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mVolumePanelEnabledState:Z

    .line 32
    iput-boolean v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mIsCustomSdkStatusBarHidden:Z

    .line 33
    iput-boolean v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mHardKeyIntentState:Z

    .line 35
    iput v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomLockScreenHiddenItems:I

    .line 36
    iput v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomLockScreenOverrideMode:I

    const/4 v2, 0x7

    .line 37
    iput v2, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomQuickPanelButtons:I

    .line 38
    iput v1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomQuickPanelEditMode:I

    const/4 v1, 0x2

    .line 39
    iput v1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mStatusBarMode:I

    .line 40
    iput v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mStatusBarTextStyle:I

    .line 41
    iput v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mStatusBarTextSize:I

    .line 42
    iput v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mStatusBarTextWidth:I

    .line 43
    iput v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mHideNotificationMessages:I

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mUnlockSimPin:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mQuickPanelItems:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mStatusBarText:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mQuickPanelUnavailableButtons:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mBatteryLevelColourItem:Lcom/samsung/android/knox/custom/StatusbarIconItem;

    .line 53
    iput-object p1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    return-void
.end method

.method private registerCallback()V
    .locals 4

    .line 63
    invoke-static {}, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;

    move-result-object v0

    const-string v1, "CustomSdkMonitor"

    if-eqz v0, :cond_0

    .line 67
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerCallback this = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-virtual {v0, p0}, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;->registerSystemUICallback(Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;)Z

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "registerSystemUICallback() cannot reference because privateCustomDeviceManager is null"

    .line 71
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string/jumbo v0, "registerSystemUICallback() Failed!"

    .line 74
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    const-string p1, "CustomSdkMonitor state:"

    .line 502
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "-mKnoxCustomLockScreenHiddenItems="

    .line 503
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomLockScreenHiddenItems:I

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(I)V

    const-string p1, "-mKnoxCustomLockScreenOverrideMode="

    .line 504
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomLockScreenOverrideMode:I

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(I)V

    const-string p1, "-mKnoxCustomUnlockSimOnBootState="

    .line 505
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomUnlockSimOnBootState:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "-mUnlockSimPin="

    .line 506
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mUnlockSimPin:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "-mKnoxCustomQuickPanelButtons="

    .line 507
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomQuickPanelButtons:I

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(I)V

    const-string p1, "-mKnoxCustomQuickPanelButtonUsers="

    .line 508
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomQuickPanelButtonUsers:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "-mKnoxCustomQuickPanelEditMode="

    .line 509
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomQuickPanelEditMode:I

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(I)V

    const-string p1, "-mQuickPanelItems="

    .line 510
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mQuickPanelItems:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "-mQuickPanelUnavailableButtons="

    .line 511
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mQuickPanelUnavailableButtons:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "-mKnoxCustomDoubleTapState="

    .line 512
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomDoubleTapState:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "-mStatusBarText="

    .line 513
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mStatusBarText:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "-mStatusBarMode="

    .line 514
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mStatusBarMode:I

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(I)V

    const-string p1, "-mStatusBarTextStyle="

    .line 515
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mStatusBarTextStyle:I

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(I)V

    const-string p1, "-mStatusBarTextSize="

    .line 516
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mStatusBarTextSize:I

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(I)V

    const-string p1, "-mStatusBarTextWidth="

    .line 517
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mStatusBarTextWidth:I

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(I)V

    const-string p1, "-mStatusBarIconsState="

    .line 518
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mStatusBarIconsState:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    .line 519
    iget-object p1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mBatteryLevelColourItem:Lcom/samsung/android/knox/custom/StatusbarIconItem;

    if-eqz p1, :cond_0

    const-string p1, "-mBatteryLevelColourItem="

    .line 520
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mBatteryLevelColourItem:Lcom/samsung/android/knox/custom/StatusbarIconItem;

    invoke-virtual {p1}, Lcom/samsung/android/knox/custom/StatusbarIconItem;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "-mBatteryLevelColourItem=null"

    .line 522
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_0
    const-string p1, "-mHideNotificationMessages="

    .line 524
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mHideNotificationMessages:I

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(I)V

    const-string p1, "-mStatusBarNotificationsState="

    .line 525
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mStatusBarNotificationsState:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "-mChargerConnectionSoundEnabledState="

    .line 526
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mChargerConnectionSoundEnabledState:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "-mVolumePanelEnabledState="

    .line 527
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mVolumePanelEnabledState:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "-mIsCustomSdkStatusBarHidden="

    .line 528
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mIsCustomSdkStatusBarHidden:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "-mHardKeyIntentState="

    .line 529
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mHardKeyIntentState:Z

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method public getBatteryLevelColourItem()Lcom/samsung/android/knox/custom/StatusbarIconItem;
    .locals 0

    .line 347
    iget-object p0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mBatteryLevelColourItem:Lcom/samsung/android/knox/custom/StatusbarIconItem;

    return-object p0
.end method

.method public getQuickPanelItems()Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 241
    iget-object v1, v0, Lcom/android/systemui/knox/CustomSdkMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {v1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isContainerKioskMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v2, "SecureFolder"

    const-string v3, "Aod"

    const-string v4, "Sync"

    const-string v5, "Dnd"

    const-string v6, "DND"

    const-string v7, "AllShareCastOld"

    const-string v8, "AllShareCast"

    const-string v9, "DailyBoard"

    const-string v10, "UDS"

    const-string v11, "Dolby"

    const-string v12, "DeviceVisibility"

    const-string v13, "BikeMode"

    const-string v14, "bikemode"

    const-string v15, "PowerPlanning"

    const-string v16, "PersonalMode"

    const-string v17, "KidsHome"

    const-string v18, "EdgeLighting"

    const-string v19, "WifiCalling"

    .line 243
    filled-new-array/range {v2 .. v19}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 248
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 249
    iget-object v0, v0, Lcom/android/systemui/knox/CustomSdkMonitor;->mQuickPanelItems:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v2, ","

    .line 250
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 251
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 252
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 253
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v1

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public getQuickPanelUnavailableButtons()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 265
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 266
    iget-object p0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mQuickPanelUnavailableButtons:Ljava/lang/String;

    if-eqz p0, :cond_2

    const-string v1, ","

    .line 267
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 268
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 269
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 270
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public getStatusBarText()Ljava/lang/String;
    .locals 0

    .line 312
    iget-object p0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mStatusBarText:Ljava/lang/String;

    return-object p0
.end method

.method public getStatusBarTextSize()I
    .locals 0

    .line 326
    iget p0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mStatusBarTextSize:I

    return p0
.end method

.method public getStatusBarTextStyle()I
    .locals 0

    .line 319
    iget p0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mStatusBarTextStyle:I

    return p0
.end method

.method public getStatusBarTextWidth()I
    .locals 0

    .line 333
    iget p0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mStatusBarTextWidth:I

    return p0
.end method

.method public getUnlockSimPin()Ljava/lang/String;
    .locals 0

    .line 451
    iget-object p0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mUnlockSimPin:Ljava/lang/String;

    return-object p0
.end method

.method public init()V
    .locals 1

    .line 58
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isTesting()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 59
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/knox/CustomSdkMonitor;->registerCallback()V

    return-void
.end method

.method public isBatteryNotificationEnabled()Z
    .locals 1

    .line 354
    iget p0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mHideNotificationMessages:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method public isBrightnessControllerEnabled()Z
    .locals 1

    .line 295
    iget p0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomQuickPanelButtons:I

    const/4 v0, 0x4

    and-int/2addr p0, v0

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isCarrierTextEnabled()Z
    .locals 0

    .line 363
    iget p0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomLockScreenHiddenItems:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isChargerConnectionSoundEnabledState()Z
    .locals 0

    .line 467
    iget-boolean p0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mChargerConnectionSoundEnabledState:Z

    return p0
.end method

.method public isLockScreenDisabledbyKNOX()Z
    .locals 0

    .line 426
    iget p0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomLockScreenOverrideMode:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isLockscreenAllDisabled()Z
    .locals 1

    .line 417
    iget p0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomLockScreenHiddenItems:I

    const/16 v0, 0x3ff

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isLockscreenBatteryInfoEnabled()Z
    .locals 0

    .line 381
    iget p0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomLockScreenHiddenItems:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isLockscreenClockEnabled()Z
    .locals 1

    .line 390
    iget p0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomLockScreenHiddenItems:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method public isLockscreenDateEnabled()Z
    .locals 0

    .line 399
    iget p0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomLockScreenHiddenItems:I

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isLockscreenHelpTextEnabled()Z
    .locals 0

    .line 372
    iget p0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomLockScreenHiddenItems:I

    and-int/lit16 p0, p0, 0x100

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isLockscreenOwnerInfoEnabled()Z
    .locals 0

    .line 408
    iget p0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomLockScreenHiddenItems:I

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isPanelExpandEnabled()Z
    .locals 0

    .line 288
    iget-boolean p0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mStatusBarNotificationsState:Z

    return p0
.end method

.method public isQuickSettingEditEnabled()Z
    .locals 0

    .line 232
    iget p0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomQuickPanelEditMode:I

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isSetToSwipeLock()Z
    .locals 1

    .line 435
    iget p0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomLockScreenOverrideMode:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isStatusBarDoubleTapEnabled()Z
    .locals 0

    .line 281
    iget-boolean p0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomDoubleTapState:Z

    return p0
.end method

.method public isStatusBarHidden()Z
    .locals 0

    .line 480
    iget-boolean p0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mIsCustomSdkStatusBarHidden:Z

    return p0
.end method

.method public isStatusBarIconsEnabled()Z
    .locals 0

    .line 340
    iget-boolean p0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mStatusBarIconsState:Z

    return p0
.end method

.method public isUnlockSimOnBootState()Z
    .locals 0

    .line 444
    iget-boolean p0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomUnlockSimOnBootState:Z

    return p0
.end method

.method public isUsersEnabled()Z
    .locals 0

    .line 305
    iget-boolean p0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomQuickPanelButtonUsers:Z

    return p0
.end method

.method public isVolumePanelEnabledState()Z
    .locals 0

    .line 474
    iget-boolean p0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mVolumePanelEnabledState:Z

    return p0
.end method

.method public setBatteryLevelColourItem(Lcom/samsung/android/knox/custom/StatusbarIconItem;)V
    .locals 1

    .line 162
    iput-object p1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mBatteryLevelColourItem:Lcom/samsung/android/knox/custom/StatusbarIconItem;

    .line 163
    iget-object p1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {p1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getHandler()Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x139a

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 164
    iget-object p0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {p0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public setChargerConnectionSoundEnabledState(Z)V
    .locals 1

    .line 192
    iget-boolean v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mChargerConnectionSoundEnabledState:Z

    if-eq v0, p1, :cond_0

    .line 193
    iput-boolean p1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mChargerConnectionSoundEnabledState:Z

    :cond_0
    return-void
.end method

.method public setHardKeyIntentState(Z)V
    .locals 2

    .line 484
    iget-boolean v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mHardKeyIntentState:Z

    if-eq v0, p1, :cond_0

    .line 485
    iput-boolean p1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mHardKeyIntentState:Z

    .line 486
    iget-object v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {v0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x13a3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 487
    iget-object v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {v0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 488
    iget-object p0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {p0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public setHideNotificationMessages(I)V
    .locals 1

    .line 168
    iget v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mHideNotificationMessages:I

    if-eq v0, p1, :cond_0

    .line 169
    iput p1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mHideNotificationMessages:I

    :cond_0
    return-void
.end method

.method public setLockScreenHiddenItems(I)V
    .locals 1

    .line 79
    iget v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomLockScreenHiddenItems:I

    if-eq v0, p1, :cond_0

    .line 80
    iput p1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomLockScreenHiddenItems:I

    .line 81
    iget-object p1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {p1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getHandler()Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x1392

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 82
    iget-object p0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {p0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public setLockScreenOverrideMode(I)V
    .locals 1

    .line 87
    iget v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomLockScreenOverrideMode:I

    if-eq v0, p1, :cond_0

    .line 88
    iput p1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomLockScreenOverrideMode:I

    .line 89
    iget-object p1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {p1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getHandler()Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x1393

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 90
    iget-object p0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {p0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public setQuickPanelButtonUsers(Z)V
    .locals 1

    .line 103
    iget-boolean v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomQuickPanelButtonUsers:Z

    if-eq v0, p1, :cond_0

    .line 104
    iput-boolean p1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomQuickPanelButtonUsers:Z

    .line 105
    iget-object p1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {p1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getHandler()Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x139f

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 106
    iget-object p0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {p0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public setQuickPanelButtons(I)V
    .locals 1

    .line 95
    iget v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomQuickPanelButtons:I

    if-eq v0, p1, :cond_0

    .line 96
    iput p1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomQuickPanelButtons:I

    .line 97
    iget-object p1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {p1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getHandler()Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x1394

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 98
    iget-object p0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {p0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public setQuickPanelEditMode(I)V
    .locals 1

    .line 111
    iget v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomQuickPanelEditMode:I

    if-eq v0, p1, :cond_0

    .line 112
    iput p1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomQuickPanelEditMode:I

    .line 113
    iget-object p1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {p1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getHandler()Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x1395

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 114
    iget-object p0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {p0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public setQuickPanelItems(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 119
    iget-object v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mQuickPanelItems:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mQuickPanelItems:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 120
    :cond_1
    iput-object p1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mQuickPanelItems:Ljava/lang/String;

    .line 121
    iget-object p1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {p1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getHandler()Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x1396

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 122
    iget-object p0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {p0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    return-void
.end method

.method public setQuickPanelUnavailableButtons(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 127
    iget-object v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mQuickPanelUnavailableButtons:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mQuickPanelUnavailableButtons:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 128
    :cond_1
    iput-object p1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mQuickPanelUnavailableButtons:Ljava/lang/String;

    .line 129
    iget-object p1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {p1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getHandler()Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x13a4

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 130
    iget-object p0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {p0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    return-void
.end method

.method public setScreenOffOnStatusBarDoubleTapState(Z)V
    .locals 0

    .line 135
    iput-boolean p1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomDoubleTapState:Z

    return-void
.end method

.method public setStatusBarHidden(Z)V
    .locals 1

    .line 204
    iget-boolean v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mIsCustomSdkStatusBarHidden:Z

    if-eq v0, p1, :cond_0

    .line 205
    iput-boolean p1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mIsCustomSdkStatusBarHidden:Z

    .line 206
    iget-object p1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {p1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getHandler()Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x139b

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 207
    iget-object p0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {p0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public setStatusBarIconsState(Z)V
    .locals 1

    .line 154
    iget-boolean v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mStatusBarIconsState:Z

    if-eq v0, p1, :cond_0

    .line 155
    iput-boolean p1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mStatusBarIconsState:Z

    .line 156
    iget-object p1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {p1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getHandler()Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x1399

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 157
    iget-object p0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {p0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public setStatusBarNotificationsState(Z)V
    .locals 1

    .line 174
    iget-boolean v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mStatusBarNotificationsState:Z

    if-eq v0, p1, :cond_0

    .line 175
    iput-boolean p1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mStatusBarNotificationsState:Z

    :cond_0
    return-void
.end method

.method public setStatusBarTextInfo(Ljava/lang/String;III)V
    .locals 1

    if-eqz p1, :cond_0

    .line 139
    iget-object v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mStatusBarText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mStatusBarText:Ljava/lang/String;

    if-nez v0, :cond_2

    :cond_1
    iget v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mStatusBarTextStyle:I

    if-ne v0, p2, :cond_2

    iget v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mStatusBarTextSize:I

    if-ne v0, p3, :cond_2

    iget v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mStatusBarTextWidth:I

    if-eq v0, p4, :cond_3

    .line 144
    :cond_2
    iput-object p1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mStatusBarText:Ljava/lang/String;

    .line 145
    iput p2, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mStatusBarTextStyle:I

    .line 146
    iput p3, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mStatusBarTextSize:I

    .line 147
    iput p4, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mStatusBarTextWidth:I

    .line 148
    iget-object p1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {p1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getHandler()Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x1397

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 149
    iget-object p0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {p0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_3
    return-void
.end method

.method public setUnlockSimOnBootState(Z)V
    .locals 1

    .line 180
    iget-boolean v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomUnlockSimOnBootState:Z

    if-eq v0, p1, :cond_0

    .line 181
    iput-boolean p1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomUnlockSimOnBootState:Z

    :cond_0
    return-void
.end method

.method public setUnlockSimPin(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 186
    iget-object v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mUnlockSimPin:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mUnlockSimPin:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 187
    :cond_1
    iput-object p1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mUnlockSimPin:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method public setVolumePanelEnabledState(Z)V
    .locals 1

    .line 198
    iget-boolean v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mVolumePanelEnabledState:Z

    if-eq v0, p1, :cond_0

    .line 199
    iput-boolean p1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mVolumePanelEnabledState:Z

    :cond_0
    return-void
.end method
