.class public Lcom/android/systemui/volume/VolumeInfraMediatorImpl;
.super Ljava/lang/Object;
.source "VolumeInfraMediatorImpl.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;


# instance fields
.field private final mAccessibilityManagerWrapper:Lcom/android/systemui/volume/util/AccessibilityManagerWrapper;

.field private final mAudioManagerWrapper:Lcom/android/systemui/volume/util/AudioManagerWrapper;

.field private final mBixbyServiceManager:Lcom/android/systemui/volume/util/BixbyServiceManager;

.field private final mBluetoothAdapterWrapper:Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;

.field private final mBluetoothAudioCastWrapper:Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper;

.field private final mBroadcastManager:Lcom/android/systemui/volume/util/BroadcastManager;

.field private final mConfigurationWrapper:Lcom/android/systemui/volume/util/ConfigurationWrapper;

.field private final mContext:Landroid/content/Context;

.field private final mDesktopManagerWrapper:Lcom/android/systemui/volume/util/DesktopManagerWrapper;

.field private final mDeviceProvisionedWrapper:Lcom/android/systemui/volume/util/DeviceProvisionedWrapper;

.field private final mDisplayManagerWrapper:Lcom/android/systemui/volume/util/DisplayManagerWrapper;

.field private final mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

.field private final mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

.field private final mPowerManagerWrapper:Lcom/android/systemui/volume/util/PowerManagerWrapper;

.field private final mSALoggingWrapper:Lcom/android/systemui/volume/util/SALoggingWrapper;

.field private final mSemPersonaManagerWrapper:Lcom/android/systemui/volume/util/SemPersonaManagerWrapper;

.field private final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field private final mSoundAssistantManagerWrapper:Lcom/android/systemui/volume/util/SoundAssistantManagerWrapper;

.field private final mSoundPoolWrapper:Lcom/android/systemui/volume/util/SoundPoolWrapper;

.field private final mStatusBarStateControllerWrapper:Lcom/android/systemui/volume/util/StatusBarStateControllerWrapper;

.field private final mStatusBarWrapper:Lcom/android/systemui/volume/util/StatusBarWrapper;

.field private final mSystemClockWrapper:Lcom/android/systemui/volume/util/SystemClockWrapper;

.field private final mVolumeController:Lcom/android/systemui/plugins/VolumeDialogController;

.field private final mVolumeRuneWrapper:Lcom/android/systemui/volume/util/VolumeRuneWrapper;

.field private final mZenModeHelper:Lcom/android/systemui/volume/util/ZenModeHelper;


# direct methods
.method public static synthetic $r8$lambda$JHnlqPbN8l9glzVV0G-LwI77jIA(Lcom/android/systemui/volume/VolumeInfraMediatorImpl;Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->lambda$get$1(Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$e523lKWHVcT8A6tMD1HtqGuSjnM(Lcom/android/systemui/volume/VolumeInfraMediatorImpl;Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->lambda$isEnabled$0(Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/volume/VolumeDependencyBase;)V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const-class v0, Landroid/content/Context;

    invoke-interface {p1, v0}, Lcom/android/systemui/volume/VolumeDependencyBase;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->mContext:Landroid/content/Context;

    .line 62
    const-class v0, Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {p1, v0}, Lcom/android/systemui/volume/VolumeDependencyBase;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/VolumeDialogController;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->mVolumeController:Lcom/android/systemui/plugins/VolumeDialogController;

    .line 63
    const-class v0, Lcom/android/systemui/volume/util/AudioManagerWrapper;

    invoke-interface {p1, v0}, Lcom/android/systemui/volume/VolumeDependencyBase;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/util/AudioManagerWrapper;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->mAudioManagerWrapper:Lcom/android/systemui/volume/util/AudioManagerWrapper;

    .line 64
    const-class v0, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;

    invoke-interface {p1, v0}, Lcom/android/systemui/volume/VolumeDependencyBase;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->mBluetoothAdapterWrapper:Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;

    .line 65
    const-class v0, Lcom/android/systemui/volume/util/BixbyServiceManager;

    invoke-interface {p1, v0}, Lcom/android/systemui/volume/VolumeDependencyBase;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/util/BixbyServiceManager;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->mBixbyServiceManager:Lcom/android/systemui/volume/util/BixbyServiceManager;

    .line 66
    const-class v0, Lcom/android/systemui/basic/util/LogWrapper;

    invoke-interface {p1, v0}, Lcom/android/systemui/volume/VolumeDependencyBase;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/basic/util/LogWrapper;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    .line 67
    const-class v0, Lcom/android/systemui/volume/util/DisplayManagerWrapper;

    invoke-interface {p1, v0}, Lcom/android/systemui/volume/VolumeDependencyBase;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/util/DisplayManagerWrapper;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->mDisplayManagerWrapper:Lcom/android/systemui/volume/util/DisplayManagerWrapper;

    .line 68
    const-class v0, Lcom/android/systemui/volume/util/ZenModeHelper;

    invoke-interface {p1, v0}, Lcom/android/systemui/volume/VolumeDependencyBase;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/util/ZenModeHelper;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->mZenModeHelper:Lcom/android/systemui/volume/util/ZenModeHelper;

    .line 69
    const-class v0, Lcom/android/systemui/volume/util/VolumeRuneWrapper;

    invoke-interface {p1, v0}, Lcom/android/systemui/volume/VolumeDependencyBase;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/util/VolumeRuneWrapper;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->mVolumeRuneWrapper:Lcom/android/systemui/volume/util/VolumeRuneWrapper;

    .line 70
    const-class v0, Lcom/android/systemui/volume/util/SoundPoolWrapper;

    invoke-interface {p1, v0}, Lcom/android/systemui/volume/VolumeDependencyBase;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/util/SoundPoolWrapper;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->mSoundPoolWrapper:Lcom/android/systemui/volume/util/SoundPoolWrapper;

    .line 71
    const-class v0, Lcom/android/systemui/volume/util/AccessibilityManagerWrapper;

    invoke-interface {p1, v0}, Lcom/android/systemui/volume/VolumeDependencyBase;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/util/AccessibilityManagerWrapper;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->mAccessibilityManagerWrapper:Lcom/android/systemui/volume/util/AccessibilityManagerWrapper;

    .line 72
    const-class v0, Lcom/android/systemui/volume/util/StatusBarStateControllerWrapper;

    invoke-interface {p1, v0}, Lcom/android/systemui/volume/VolumeDependencyBase;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/util/StatusBarStateControllerWrapper;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->mStatusBarStateControllerWrapper:Lcom/android/systemui/volume/util/StatusBarStateControllerWrapper;

    .line 73
    const-class v0, Lcom/android/systemui/volume/util/SoundAssistantManagerWrapper;

    invoke-interface {p1, v0}, Lcom/android/systemui/volume/VolumeDependencyBase;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/util/SoundAssistantManagerWrapper;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->mSoundAssistantManagerWrapper:Lcom/android/systemui/volume/util/SoundAssistantManagerWrapper;

    .line 74
    const-class v0, Lcom/android/systemui/volume/util/StatusBarWrapper;

    invoke-interface {p1, v0}, Lcom/android/systemui/volume/VolumeDependencyBase;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/util/StatusBarWrapper;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->mStatusBarWrapper:Lcom/android/systemui/volume/util/StatusBarWrapper;

    .line 75
    const-class v0, Lcom/android/systemui/volume/util/SystemClockWrapper;

    invoke-interface {p1, v0}, Lcom/android/systemui/volume/VolumeDependencyBase;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/util/SystemClockWrapper;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->mSystemClockWrapper:Lcom/android/systemui/volume/util/SystemClockWrapper;

    .line 76
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-interface {p1, v0}, Lcom/android/systemui/volume/VolumeDependencyBase;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 77
    const-class v0, Lcom/android/systemui/volume/util/ConfigurationWrapper;

    invoke-interface {p1, v0}, Lcom/android/systemui/volume/VolumeDependencyBase;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/util/ConfigurationWrapper;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->mConfigurationWrapper:Lcom/android/systemui/volume/util/ConfigurationWrapper;

    .line 78
    const-class v0, Lcom/android/systemui/volume/util/DesktopManagerWrapper;

    invoke-interface {p1, v0}, Lcom/android/systemui/volume/VolumeDependencyBase;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/util/DesktopManagerWrapper;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->mDesktopManagerWrapper:Lcom/android/systemui/volume/util/DesktopManagerWrapper;

    .line 79
    const-class v0, Lcom/android/systemui/volume/util/HandlerWrapper;

    invoke-interface {p1, v0}, Lcom/android/systemui/volume/VolumeDependencyBase;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/util/HandlerWrapper;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    .line 80
    const-class v0, Lcom/android/systemui/volume/util/PowerManagerWrapper;

    invoke-interface {p1, v0}, Lcom/android/systemui/volume/VolumeDependencyBase;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/util/PowerManagerWrapper;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->mPowerManagerWrapper:Lcom/android/systemui/volume/util/PowerManagerWrapper;

    .line 81
    const-class v0, Lcom/android/systemui/volume/util/BroadcastManager;

    invoke-interface {p1, v0}, Lcom/android/systemui/volume/VolumeDependencyBase;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/util/BroadcastManager;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->mBroadcastManager:Lcom/android/systemui/volume/util/BroadcastManager;

    .line 82
    const-class v0, Lcom/android/systemui/volume/util/SALoggingWrapper;

    invoke-interface {p1, v0}, Lcom/android/systemui/volume/VolumeDependencyBase;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/util/SALoggingWrapper;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->mSALoggingWrapper:Lcom/android/systemui/volume/util/SALoggingWrapper;

    .line 83
    const-class v0, Lcom/android/systemui/volume/util/SemPersonaManagerWrapper;

    invoke-interface {p1, v0}, Lcom/android/systemui/volume/VolumeDependencyBase;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/util/SemPersonaManagerWrapper;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->mSemPersonaManagerWrapper:Lcom/android/systemui/volume/util/SemPersonaManagerWrapper;

    .line 84
    const-class v0, Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper;

    invoke-interface {p1, v0}, Lcom/android/systemui/volume/VolumeDependencyBase;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->mBluetoothAudioCastWrapper:Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper;

    .line 85
    const-class v0, Lcom/android/systemui/volume/util/DeviceProvisionedWrapper;

    invoke-interface {p1, v0}, Lcom/android/systemui/volume/VolumeDependencyBase;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/volume/util/DeviceProvisionedWrapper;

    iput-object p1, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->mDeviceProvisionedWrapper:Lcom/android/systemui/volume/util/DeviceProvisionedWrapper;

    return-void
.end method

.method private synthetic lambda$get$1(Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;Ljava/lang/Object;)V
    .locals 1

    .line 323
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/basic/util/LogWrapper;->p(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$isEnabled$0(Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;Z)V
    .locals 1

    .line 252
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/basic/util/LogWrapper;->p(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public disableSafeMediaVolume()V
    .locals 0

    .line 382
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->mAudioManagerWrapper:Lcom/android/systemui/volume/util/AudioManagerWrapper;

    invoke-virtual {p0}, Lcom/android/systemui/volume/util/AudioManagerWrapper;->disableSafeMediaVolume()V

    return-void
.end method

.method public varargs get(Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 260
    sget-object v0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl$1;->$SwitchMap$com$samsung$systemui$splugins$volume$VolumeInfraMediator$Values:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 319
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto/16 :goto_0

    .line 315
    :pswitch_0
    iget-object p2, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->mSoundAssistantManagerWrapper:Lcom/android/systemui/volume/util/SoundAssistantManagerWrapper;

    invoke-virtual {p2}, Lcom/android/systemui/volume/util/SoundAssistantManagerWrapper;->getMultiSoundDevice()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto/16 :goto_0

    .line 311
    :pswitch_1
    iget-object p2, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->mBluetoothAudioCastWrapper:Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper;

    invoke-virtual {p2}, Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper;->getAudioSharingDeviceName()Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_0

    .line 307
    :pswitch_2
    iget-object p2, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->mBluetoothAdapterWrapper:Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;

    invoke-virtual {p2}, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;->getActiveBTDeviceName()Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_0

    .line 303
    :pswitch_3
    iget-object p2, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->mSystemClockWrapper:Lcom/android/systemui/volume/util/SystemClockWrapper;

    invoke-virtual {p2}, Lcom/android/systemui/volume/util/SystemClockWrapper;->uptimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    goto/16 :goto_0

    .line 299
    :pswitch_4
    iget-object p2, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->mStatusBarWrapper:Lcom/android/systemui/volume/util/StatusBarWrapper;

    invoke-virtual {p2}, Lcom/android/systemui/volume/util/StatusBarWrapper;->getCutoutHeight()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_0

    .line 294
    :pswitch_5
    iget-object p2, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->mAccessibilityManagerWrapper:Lcom/android/systemui/volume/util/AccessibilityManagerWrapper;

    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->FLAG_CONTENT_CONTROLS:I

    sget v2, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->FLAG_CONTENT_TEXT:I

    or-int/2addr v0, v2

    invoke-virtual {p2, v1, v0}, Lcom/android/systemui/volume/util/AccessibilityManagerWrapper;->getRecommendedTimeoutMillis(II)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_0

    .line 290
    :pswitch_6
    iget-object p2, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->mAccessibilityManagerWrapper:Lcom/android/systemui/volume/util/AccessibilityManagerWrapper;

    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->FLAG_CONTENT_CONTROLS:I

    invoke-virtual {p2, v1, v0}, Lcom/android/systemui/volume/util/AccessibilityManagerWrapper;->getRecommendedTimeoutMillis(II)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_0

    .line 286
    :pswitch_7
    iget-object p2, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->mDisplayManagerWrapper:Lcom/android/systemui/volume/util/DisplayManagerWrapper;

    invoke-virtual {p2}, Lcom/android/systemui/volume/util/DisplayManagerWrapper;->getSmartViewDeviceName()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 282
    :pswitch_8
    iget-object p2, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->mAudioManagerWrapper:Lcom/android/systemui/volume/util/AudioManagerWrapper;

    invoke-virtual {p2}, Lcom/android/systemui/volume/util/AudioManagerWrapper;->getPinDevice()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_0

    .line 278
    :pswitch_9
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->mAudioManagerWrapper:Lcom/android/systemui/volume/util/AudioManagerWrapper;

    aget-object p2, p2, v1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/android/systemui/volume/util/AudioManagerWrapper;->getPinDeviceName(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 274
    :pswitch_a
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->mAudioManagerWrapper:Lcom/android/systemui/volume/util/AudioManagerWrapper;

    aget-object p2, p2, v1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/android/systemui/volume/util/AudioManagerWrapper;->getPinAppName(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 270
    :pswitch_b
    iget-object p2, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->mAudioManagerWrapper:Lcom/android/systemui/volume/util/AudioManagerWrapper;

    invoke-virtual {p2}, Lcom/android/systemui/volume/util/AudioManagerWrapper;->getDevicesForStreamMusic()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_0

    .line 266
    :pswitch_c
    iget-object p2, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->mBluetoothAdapterWrapper:Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;

    invoke-virtual {p2}, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;->getBtScoDeviceName()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 262
    :pswitch_d
    iget-object p2, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->mAudioManagerWrapper:Lcom/android/systemui/volume/util/AudioManagerWrapper;

    invoke-virtual {p2}, Lcom/android/systemui/volume/util/AudioManagerWrapper;->getEarProtectLevel()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    :goto_0
    if-eqz p2, :cond_0

    .line 322
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;->SYSTEM_TIME:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    new-instance v1, Lcom/android/systemui/volume/VolumeInfraMediatorImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/volume/VolumeInfraMediatorImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/volume/VolumeInfraMediatorImpl;Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/util/HandlerWrapper;->postInBgThread(Ljava/lang/Runnable;)Z

    :cond_0
    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getBixbyServiceState()V
    .locals 0

    .line 330
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->mBixbyServiceManager:Lcom/android/systemui/volume/util/BixbyServiceManager;

    invoke-virtual {p0}, Lcom/android/systemui/volume/util/BixbyServiceManager;->getBixbyServiceState()V

    return-void
.end method

.method public getCaptionsComponentState(Z)V
    .locals 0

    .line 417
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->mVolumeController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/VolumeDialogController;->getCaptionsComponentState(Z)V

    return-void
.end method

.method public initSound(I)V
    .locals 0

    .line 335
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->mSoundPoolWrapper:Lcom/android/systemui/volume/util/SoundPoolWrapper;

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/util/SoundPoolWrapper;->initSound(I)V

    return-void
.end method

.method public varargs isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;[Ljava/lang/Object;)Z
    .locals 2

    .line 97
    sget-object v0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl$1;->$SwitchMap$com$samsung$systemui$splugins$volume$VolumeInfraMediator$Conditions:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 244
    :pswitch_0
    iget-object p2, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->mVolumeRuneWrapper:Lcom/android/systemui/volume/util/VolumeRuneWrapper;

    invoke-virtual {p2}, Lcom/android/systemui/volume/util/VolumeRuneWrapper;->supportDualAudio()Z

    move-result v1

    goto/16 :goto_0

    .line 240
    :pswitch_1
    iget-object p2, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->mVolumeRuneWrapper:Lcom/android/systemui/volume/util/VolumeRuneWrapper;

    invoke-virtual {p2}, Lcom/android/systemui/volume/util/VolumeRuneWrapper;->isVolumeSupportBudsTogether()Z

    move-result v1

    goto/16 :goto_0

    .line 236
    :pswitch_2
    iget-object p2, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->mVolumeRuneWrapper:Lcom/android/systemui/volume/util/VolumeRuneWrapper;

    invoke-virtual {p2}, Lcom/android/systemui/volume/util/VolumeRuneWrapper;->supportWarningPopupSideView()Z

    move-result v1

    goto/16 :goto_0

    .line 232
    :pswitch_3
    iget-object p2, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->mVolumeRuneWrapper:Lcom/android/systemui/volume/util/VolumeRuneWrapper;

    invoke-virtual {p2}, Lcom/android/systemui/volume/util/VolumeRuneWrapper;->supportWarningPopupWalletMini()Z

    move-result v1

    goto/16 :goto_0

    .line 228
    :pswitch_4
    iget-object p2, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->mVolumeRuneWrapper:Lcom/android/systemui/volume/util/VolumeRuneWrapper;

    invoke-virtual {p2}, Lcom/android/systemui/volume/util/VolumeRuneWrapper;->supportSmartViewStream()Z

    move-result v1

    goto/16 :goto_0

    .line 223
    :pswitch_5
    iget-object p2, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->mSoundAssistantManagerWrapper:Lcom/android/systemui/volume/util/SoundAssistantManagerWrapper;

    invoke-virtual {p2}, Lcom/android/systemui/volume/util/SoundAssistantManagerWrapper;->isMultiSoundOn()Z

    move-result v1

    goto/16 :goto_0

    .line 219
    :pswitch_6
    iget-object p2, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->mVolumeController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {p2}, Lcom/android/systemui/plugins/VolumeDialogController;->areCaptionsEnabled()Z

    move-result v1

    goto/16 :goto_0

    .line 215
    :pswitch_7
    iget-object p2, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->mDeviceProvisionedWrapper:Lcom/android/systemui/volume/util/DeviceProvisionedWrapper;

    invoke-virtual {p2}, Lcom/android/systemui/volume/util/DeviceProvisionedWrapper;->isDeviceProvisioned()Z

    move-result v1

    goto/16 :goto_0

    .line 211
    :pswitch_8
    iget-object p2, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->mVolumeController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {p2}, Lcom/android/systemui/plugins/VolumeDialogController;->isAudioSharingEnabled()Z

    move-result v1

    goto/16 :goto_0

    .line 207
    :pswitch_9
    iget-object p2, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->mSemPersonaManagerWrapper:Lcom/android/systemui/volume/util/SemPersonaManagerWrapper;

    invoke-virtual {p2}, Lcom/android/systemui/volume/util/SemPersonaManagerWrapper;->isKioskModeEnabled()Z

    move-result v1

    goto/16 :goto_0

    .line 203
    :pswitch_a
    iget-object p2, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->mDesktopManagerWrapper:Lcom/android/systemui/volume/util/DesktopManagerWrapper;

    invoke-virtual {p2}, Lcom/android/systemui/volume/util/DesktopManagerWrapper;->isDexMode()Z

    move-result v1

    goto/16 :goto_0

    .line 199
    :pswitch_b
    iget-object p2, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->mPowerManagerWrapper:Lcom/android/systemui/volume/util/PowerManagerWrapper;

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v0}, Lcom/android/systemui/volume/util/PowerManagerWrapper;->isInteractive(Landroid/content/Context;)Z

    move-result p2

    xor-int/lit8 v1, p2, 0x1

    goto/16 :goto_0

    .line 195
    :pswitch_c
    iget-object p2, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->mConfigurationWrapper:Lcom/android/systemui/volume/util/ConfigurationWrapper;

    invoke-virtual {p2}, Lcom/android/systemui/volume/util/ConfigurationWrapper;->isDisplayTypeChanged()Z

    move-result v1

    goto/16 :goto_0

    .line 191
    :pswitch_d
    iget-object p2, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->mDesktopManagerWrapper:Lcom/android/systemui/volume/util/DesktopManagerWrapper;

    invoke-virtual {p2}, Lcom/android/systemui/volume/util/DesktopManagerWrapper;->isStandalone()Z

    move-result v1

    goto/16 :goto_0

    .line 187
    :pswitch_e
    iget-object p2, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->mConfigurationWrapper:Lcom/android/systemui/volume/util/ConfigurationWrapper;

    invoke-virtual {p2}, Lcom/android/systemui/volume/util/ConfigurationWrapper;->isDensityOrFontScaleChanged()Z

    move-result v1

    goto/16 :goto_0

    .line 183
    :pswitch_f
    iget-object p2, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->mConfigurationWrapper:Lcom/android/systemui/volume/util/ConfigurationWrapper;

    invoke-virtual {p2}, Lcom/android/systemui/volume/util/ConfigurationWrapper;->isOrientationChanged()Z

    move-result v1

    goto/16 :goto_0

    .line 179
    :pswitch_10
    iget-object p2, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->mStatusBarStateControllerWrapper:Lcom/android/systemui/volume/util/StatusBarStateControllerWrapper;

    invoke-virtual {p2}, Lcom/android/systemui/volume/util/StatusBarStateControllerWrapper;->isShadeLockedState()Z

    move-result v1

    goto/16 :goto_0

    .line 175
    :pswitch_11
    iget-object p2, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->mStatusBarStateControllerWrapper:Lcom/android/systemui/volume/util/StatusBarStateControllerWrapper;

    invoke-virtual {p2}, Lcom/android/systemui/volume/util/StatusBarStateControllerWrapper;->isKeyguardState()Z

    move-result v1

    goto/16 :goto_0

    .line 171
    :pswitch_12
    iget-object p2, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->mSoundAssistantManagerWrapper:Lcom/android/systemui/volume/util/SoundAssistantManagerWrapper;

    invoke-virtual {p2}, Lcom/android/systemui/volume/util/SoundAssistantManagerWrapper;->isMediaDefault()Z

    move-result v1

    goto/16 :goto_0

    .line 167
    :pswitch_13
    iget-object p2, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->mVolumeController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {p2}, Lcom/android/systemui/plugins/VolumeDialogController;->hasVibrator()Z

    move-result v1

    goto/16 :goto_0

    .line 163
    :pswitch_14
    iget-object p2, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p2}, Lcom/android/systemui/util/SettingsHelper;->isAllSoundOff()Z

    move-result v1

    goto/16 :goto_0

    .line 159
    :pswitch_15
    iget-object p2, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->mAudioManagerWrapper:Lcom/android/systemui/volume/util/AudioManagerWrapper;

    invoke-virtual {p2}, Lcom/android/systemui/volume/util/AudioManagerWrapper;->shouldShowRingtoneVolume()Z

    move-result v1

    goto/16 :goto_0

    .line 155
    :pswitch_16
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->mZenModeHelper:Lcom/android/systemui/volume/util/ZenModeHelper;

    aget-object p2, p2, v1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/android/systemui/volume/util/ZenModeHelper;->isZenModeNo(I)Z

    move-result v1

    goto/16 :goto_0

    .line 151
    :pswitch_17
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->mZenModeHelper:Lcom/android/systemui/volume/util/ZenModeHelper;

    aget-object p2, p2, v1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/android/systemui/volume/util/ZenModeHelper;->isZenModePriorityOnly(I)Z

    move-result v1

    goto :goto_0

    .line 147
    :pswitch_18
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->mZenModeHelper:Lcom/android/systemui/volume/util/ZenModeHelper;

    aget-object p2, p2, v1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/android/systemui/volume/util/ZenModeHelper;->isZenModeEnabled(I)Z

    move-result v1

    goto :goto_0

    .line 143
    :pswitch_19
    iget-object p2, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->mDisplayManagerWrapper:Lcom/android/systemui/volume/util/DisplayManagerWrapper;

    invoke-virtual {p2}, Lcom/android/systemui/volume/util/DisplayManagerWrapper;->isScreenSharing()Z

    move-result v1

    goto :goto_0

    .line 139
    :pswitch_1a
    iget-object p2, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->mDisplayManagerWrapper:Lcom/android/systemui/volume/util/DisplayManagerWrapper;

    invoke-virtual {p2}, Lcom/android/systemui/volume/util/DisplayManagerWrapper;->isValidPlayerType()Z

    move-result v1

    goto :goto_0

    .line 135
    :pswitch_1b
    iget-object p2, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->mVolumeController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {p2}, Lcom/android/systemui/plugins/VolumeDialogController;->supportTvVolumeControl()Z

    move-result v1

    goto :goto_0

    .line 131
    :pswitch_1c
    iget-object p2, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->mVolumeController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {p2}, Lcom/android/systemui/plugins/VolumeDialogController;->isDLNAEnabled()Z

    move-result v1

    goto :goto_0

    .line 127
    :pswitch_1d
    iget-object p2, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->mVolumeController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {p2}, Lcom/android/systemui/plugins/VolumeDialogController;->isAudioDLNAEnabled()Z

    move-result v1

    goto :goto_0

    .line 123
    :pswitch_1e
    iget-object p2, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->mVolumeController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {p2}, Lcom/android/systemui/plugins/VolumeDialogController;->isSmartViewEnabled()Z

    move-result v1

    goto :goto_0

    .line 119
    :pswitch_1f
    iget-object p2, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->mBixbyServiceManager:Lcom/android/systemui/volume/util/BixbyServiceManager;

    invoke-virtual {p2}, Lcom/android/systemui/volume/util/BixbyServiceManager;->isBixbyServiceOn()Z

    move-result v1

    goto :goto_0

    .line 115
    :pswitch_20
    iget-object p2, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->mBixbyServiceManager:Lcom/android/systemui/volume/util/BixbyServiceManager;

    invoke-virtual {p2}, Lcom/android/systemui/volume/util/BixbyServiceManager;->isBixbyServiceForeground()Z

    move-result v1

    goto :goto_0

    .line 111
    :pswitch_21
    iget-object p2, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->mAudioManagerWrapper:Lcom/android/systemui/volume/util/AudioManagerWrapper;

    invoke-virtual {p2}, Lcom/android/systemui/volume/util/AudioManagerWrapper;->isBluetoothScoOn()Z

    move-result v1

    goto :goto_0

    .line 107
    :pswitch_22
    iget-object p2, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->mAudioManagerWrapper:Lcom/android/systemui/volume/util/AudioManagerWrapper;

    invoke-virtual {p2}, Lcom/android/systemui/volume/util/AudioManagerWrapper;->isUserInCall()Z

    move-result v1

    goto :goto_0

    .line 103
    :pswitch_23
    iget-object p2, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->mAudioManagerWrapper:Lcom/android/systemui/volume/util/AudioManagerWrapper;

    invoke-virtual {p2}, Lcom/android/systemui/volume/util/AudioManagerWrapper;->isSafeMediaVolumePinDeviceOn()Z

    move-result v1

    goto :goto_0

    .line 99
    :pswitch_24
    iget-object p2, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->mAudioManagerWrapper:Lcom/android/systemui/volume/util/AudioManagerWrapper;

    invoke-virtual {p2}, Lcom/android/systemui/volume/util/AudioManagerWrapper;->isSafeMediaVolumeDeviceOn()Z

    move-result v1

    .line 252
    :goto_0
    iget-object p2, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    new-instance v0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, v1}, Lcom/android/systemui/volume/VolumeInfraMediatorImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/volume/VolumeInfraMediatorImpl;Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;Z)V

    invoke-virtual {p2, v0}, Lcom/android/systemui/volume/util/HandlerWrapper;->postInBgThread(Ljava/lang/Runnable;)Z

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public notifyVisible(Z)V
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->mVolumeController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/VolumeDialogController;->notifyVisible(Z)V

    return-void
.end method

.method public playSound()V
    .locals 0

    .line 340
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->mSoundPoolWrapper:Lcom/android/systemui/volume/util/SoundPoolWrapper;

    invoke-virtual {p0}, Lcom/android/systemui/volume/util/SoundPoolWrapper;->playSound()V

    return-void
.end method

.method public playSound(I)V
    .locals 0

    .line 346
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->mSoundPoolWrapper:Lcom/android/systemui/volume/util/SoundPoolWrapper;

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/util/SoundPoolWrapper;->playSound(I)V

    return-void
.end method

.method public sendEventLog(Lcom/android/systemui/volume/util/SALoggingWrapper$Event;)V
    .locals 0

    .line 402
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->mSALoggingWrapper:Lcom/android/systemui/volume/util/SALoggingWrapper;

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/util/SALoggingWrapper;->sendEventLog(Lcom/android/systemui/volume/util/SALoggingWrapper$Event;)V

    return-void
.end method

.method public sendSystemDialogsCloseAction()V
    .locals 0

    .line 392
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->mBroadcastManager:Lcom/android/systemui/volume/util/BroadcastManager;

    invoke-virtual {p0}, Lcom/android/systemui/volume/util/BroadcastManager;->sendSystemDialogsCloseAction()V

    return-void
.end method

.method public setActiveStream(I)V
    .locals 0

    .line 367
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->mVolumeController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/VolumeDialogController;->setActiveStream(I)V

    return-void
.end method

.method public setCaptionEnabled(Z)V
    .locals 0

    .line 422
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->mVolumeController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/VolumeDialogController;->setCaptionsEnabled(Z)V

    return-void
.end method

.method public setRingerMode(IZ)V
    .locals 0

    .line 372
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->mVolumeController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/plugins/VolumeDialogController;->setRingerMode(IZ)V

    return-void
.end method

.method public setSafeVolumeDialogShowing(Z)V
    .locals 0

    .line 377
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->mVolumeController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/VolumeDialogController;->setSafeVolumeDialogShowing(Z)V

    return-void
.end method

.method public setStreamVolume(II)V
    .locals 0

    .line 357
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->mVolumeController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/plugins/VolumeDialogController;->setStreamVolume(II)V

    return-void
.end method

.method public setStreamVolumeDualAudio(IILjava/lang/String;)V
    .locals 0

    .line 412
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->mVolumeController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/systemui/plugins/VolumeDialogController;->setStreamVolumeDualAudio(IILjava/lang/String;)V

    return-void
.end method

.method public startHearingEnhancementsActivity()V
    .locals 0

    .line 407
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->mStatusBarWrapper:Lcom/android/systemui/volume/util/StatusBarWrapper;

    invoke-virtual {p0}, Lcom/android/systemui/volume/util/StatusBarWrapper;->startHearingEnhancementsActivity()V

    return-void
.end method

.method public startSettingsActivity()V
    .locals 0

    .line 387
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->mStatusBarWrapper:Lcom/android/systemui/volume/util/StatusBarWrapper;

    invoke-virtual {p0}, Lcom/android/systemui/volume/util/StatusBarWrapper;->startSettingsActivity()V

    return-void
.end method

.method public startVolumeSettingsActivity()V
    .locals 0

    .line 397
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->mStatusBarWrapper:Lcom/android/systemui/volume/util/StatusBarWrapper;

    invoke-virtual {p0}, Lcom/android/systemui/volume/util/StatusBarWrapper;->startVolumeSettingsActivity()V

    return-void
.end method

.method public toggleWifiDisplayMute()V
    .locals 0

    .line 362
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->mDisplayManagerWrapper:Lcom/android/systemui/volume/util/DisplayManagerWrapper;

    invoke-virtual {p0}, Lcom/android/systemui/volume/util/DisplayManagerWrapper;->toggleWifiDisplayMute()V

    return-void
.end method

.method public userActivity()V
    .locals 0

    .line 352
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->mVolumeController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {p0}, Lcom/android/systemui/plugins/VolumeDialogController;->userActivity()V

    return-void
.end method
