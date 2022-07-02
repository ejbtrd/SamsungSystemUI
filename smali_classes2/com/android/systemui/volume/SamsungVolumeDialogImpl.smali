.class public Lcom/android/systemui/volume/SamsungVolumeDialogImpl;
.super Ljava/lang/Object;
.source "SamsungVolumeDialogImpl.java"

# interfaces
.implements Lcom/android/systemui/plugins/VolumeDialog;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/volume/SamsungVolumeDialogImpl$VolumeStateMapper;
    }
.end annotation


# instance fields
.field private final mBroadcastManager:Lcom/android/systemui/volume/util/BroadcastManager;

.field private mCallbacks:Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;

.field private final mContext:Landroid/content/Context;

.field private mCoverUtilWrapper:Lcom/android/systemui/basic/util/CoverUtilWrapper;

.field private final mDependency:Lcom/android/systemui/volume/VolumeDependency;

.field private mDeviceProvisionedListener:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;

.field private mDeviceProvisionedWrapper:Lcom/android/systemui/volume/util/DeviceProvisionedWrapper;

.field private final mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

.field private mKeyguardUpdateMonitorWrapper:Lcom/android/systemui/volume/util/KeyguardUpdateMonitorWrapper;

.field private mSemWindowManagerWrapper:Lcom/android/systemui/volume/util/SemWindowManagerWrapper;

.field private final mSoundPoolWrapper:Lcom/android/systemui/volume/util/SoundPoolWrapper;

.field private final mVolumeController:Lcom/android/systemui/plugins/VolumeDialogController;

.field private final mVolumePanel:Lcom/android/systemui/volume/VolumePanelImpl;


# direct methods
.method public static synthetic $r8$lambda$UhGvckOsjyYQyfBX95_B1W9dr-s(Lcom/android/systemui/volume/SamsungVolumeDialogImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->lambda$init$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$YAb6d8V5FtWIfWFFdN0OrrBEV08(Lcom/android/systemui/volume/SamsungVolumeDialogImpl;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->lambda$init$0(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fgsJ4p3k6-OXIxaJuODqgtChgK4(Lcom/android/systemui/volume/SamsungVolumeDialogImpl;Ljava/lang/Boolean;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->lambda$init$4(Ljava/lang/Boolean;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$l0_eio1Ne0VgZSYNSgOHN4_ghvc(Lcom/android/systemui/volume/SamsungVolumeDialogImpl;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->lambda$init$5(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mQIjb5Tulk67daVRE3NENLZO8HA(Lcom/android/systemui/volume/SamsungVolumeDialogImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->lambda$init$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$qhPwZQsrNkXMnr19AVPryY2GaFY(Lcom/android/systemui/volume/SamsungVolumeDialogImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->lambda$init$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$wK2uBuXI3tTybpbaIi9TicB_GXE(Lcom/android/systemui/volume/SamsungVolumeDialogImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->lambda$init$3()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/volume/VolumeDependency;)V
    .locals 1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    new-instance v0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/SamsungVolumeDialogImpl$1;-><init>(Lcom/android/systemui/volume/SamsungVolumeDialogImpl;)V

    iput-object v0, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->mCallbacks:Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;

    .line 234
    new-instance v0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/SamsungVolumeDialogImpl$2;-><init>(Lcom/android/systemui/volume/SamsungVolumeDialogImpl;)V

    iput-object v0, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->mDeviceProvisionedListener:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;

    .line 90
    iput-object p1, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->mContext:Landroid/content/Context;

    .line 91
    iput-object p2, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->mDependency:Lcom/android/systemui/volume/VolumeDependency;

    .line 92
    new-instance v0, Lcom/android/systemui/volume/VolumePanelImpl;

    invoke-direct {v0, p1, p2}, Lcom/android/systemui/volume/VolumePanelImpl;-><init>(Landroid/content/Context;Lcom/android/systemui/volume/VolumeDependencyBase;)V

    iput-object v0, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->mVolumePanel:Lcom/android/systemui/volume/VolumePanelImpl;

    .line 93
    const-class p1, Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/VolumeDialogController;

    iput-object p1, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->mVolumeController:Lcom/android/systemui/plugins/VolumeDialogController;

    .line 94
    const-class p1, Lcom/android/systemui/volume/util/HandlerWrapper;

    invoke-virtual {p2, p1}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/volume/util/HandlerWrapper;

    iput-object p1, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    .line 95
    const-class p1, Lcom/android/systemui/volume/util/SoundPoolWrapper;

    invoke-virtual {p2, p1}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/volume/util/SoundPoolWrapper;

    iput-object p1, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->mSoundPoolWrapper:Lcom/android/systemui/volume/util/SoundPoolWrapper;

    .line 96
    const-class p1, Lcom/android/systemui/volume/util/BroadcastManager;

    invoke-virtual {p2, p1}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/volume/util/BroadcastManager;

    iput-object p1, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->mBroadcastManager:Lcom/android/systemui/volume/util/BroadcastManager;

    .line 97
    const-class p1, Lcom/android/systemui/volume/util/KeyguardUpdateMonitorWrapper;

    invoke-virtual {p2, p1}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/volume/util/KeyguardUpdateMonitorWrapper;

    iput-object p1, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->mKeyguardUpdateMonitorWrapper:Lcom/android/systemui/volume/util/KeyguardUpdateMonitorWrapper;

    .line 98
    const-class p1, Lcom/android/systemui/volume/util/DeviceProvisionedWrapper;

    invoke-virtual {p2, p1}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/volume/util/DeviceProvisionedWrapper;

    iput-object p1, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->mDeviceProvisionedWrapper:Lcom/android/systemui/volume/util/DeviceProvisionedWrapper;

    .line 101
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isCoverSupported()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 102
    const-class p1, Lcom/android/systemui/basic/util/CoverUtilWrapper;

    invoke-virtual {p2, p1}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/basic/util/CoverUtilWrapper;

    iput-object p1, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->mCoverUtilWrapper:Lcom/android/systemui/basic/util/CoverUtilWrapper;

    .line 105
    :cond_0
    sget-boolean p1, Lcom/android/systemui/BasicRune;->VOLUME_SUB_DISPLAY_VOLUME_DIALOG:Z

    if-eqz p1, :cond_1

    .line 106
    const-class p1, Lcom/android/systemui/volume/util/SemWindowManagerWrapper;

    invoke-virtual {p2, p1}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/volume/util/SemWindowManagerWrapper;

    iput-object p1, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->mSemWindowManagerWrapper:Lcom/android/systemui/volume/util/SemWindowManagerWrapper;

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/volume/SamsungVolumeDialogImpl;)Lcom/android/systemui/volume/VolumePanelImpl;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->mVolumePanel:Lcom/android/systemui/volume/VolumePanelImpl;

    return-object p0
.end method

.method public static initValues()V
    .locals 6

    const/4 v0, 0x0

    .line 59
    sput v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->RINGER_MODE_SILENT:I

    const/4 v1, 0x1

    .line 60
    sput v1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->RINGER_MODE_VIBRATE:I

    const/4 v2, 0x2

    .line 61
    sput v2, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->RINGER_MODE_NORMAL:I

    .line 62
    sput v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->DEVICE_NONE:I

    const/16 v3, 0x8

    .line 63
    sput v3, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->DEVICE_BLUETOOTH:I

    .line 64
    sput v2, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->FLAG_CONTENT_TEXT:I

    const/4 v4, 0x4

    .line 65
    sput v4, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->FLAG_CONTENT_CONTROLS:I

    const/high16 v5, 0x8000000

    .line 66
    sput v5, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->FLAG_DISMISS_UI_WARNINGS:I

    .line 67
    sput v2, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_RING:I

    const/4 v2, 0x3

    .line 68
    sput v2, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_MUSIC:I

    .line 69
    sput v1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_SYSTEM:I

    const/4 v1, 0x5

    .line 70
    sput v1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_NOTIFICATION:I

    const/16 v1, 0xa

    .line 71
    sput v1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_ACCESSIBILITY:I

    .line 72
    sput v4, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_ALARM:I

    .line 73
    sput v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_VOICE_CALL:I

    const/4 v0, 0x6

    .line 74
    sput v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_BLUETOOTH_SCO:I

    const/16 v0, 0xb

    .line 75
    sput v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_BIXBY_VOICE:I

    const/16 v0, 0x14

    .line 76
    sput v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_SMART_VIEW:I

    const/16 v0, 0x15

    .line 77
    sput v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_MULTI_SOUND:I

    const/16 v0, 0x16

    .line 78
    sput v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_DUAL_AUDIO:I

    const/16 v0, 0x17

    .line 79
    sput v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_AUDIO_SHARING:I

    const/4 v0, -0x1

    .line 80
    sput v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_NONE:I

    .line 81
    sput v3, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->TYPE_CLEAR_COVER:I

    const/16 v0, 0xf

    .line 82
    sput v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->TYPE_CLEAR_SIDE_VIEW_COVER:I

    const/16 v0, 0x11

    .line 83
    sput v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->TYPE_CLEAR_CAMERA_VIEW_COVER:I

    const/16 v0, 0x10

    .line 84
    sput v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->TYPE_MINI_SVIEW_WALLET_COVER:I

    const/high16 v0, 0x40000000    # 2.0f

    .line 85
    sput v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->FLAG_SHOW_CSD_100_WARNINGS:I

    return-void
.end method

.method private synthetic lambda$init$0(Ljava/lang/Boolean;)V
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->mVolumePanel:Lcom/android/systemui/volume/VolumePanelImpl;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/VolumePanelImpl;->onAllSoundOff(Z)V

    return-void
.end method

.method private synthetic lambda$init$1()V
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->mVolumePanel:Lcom/android/systemui/volume/VolumePanelImpl;

    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumePanelImpl;->onMirrorLink()V

    return-void
.end method

.method private synthetic lambda$init$2()V
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->mVolumePanel:Lcom/android/systemui/volume/VolumePanelImpl;

    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumePanelImpl;->onThemeChanged()V

    return-void
.end method

.method private synthetic lambda$init$3()V
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->mVolumePanel:Lcom/android/systemui/volume/VolumePanelImpl;

    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumePanelImpl;->onDualPlayModeChanged()V

    return-void
.end method

.method private synthetic lambda$init$4(Ljava/lang/Boolean;Ljava/lang/Integer;)V
    .locals 0

    .line 130
    iget-object p0, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->mVolumePanel:Lcom/android/systemui/volume/VolumePanelImpl;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/volume/VolumePanelImpl;->onCoverStateChanged(ZI)V

    return-void
.end method

.method private synthetic lambda$init$5(Ljava/lang/Boolean;)V
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->mVolumePanel:Lcom/android/systemui/volume/VolumePanelImpl;

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/VolumePanelImpl;->onFolderStateChanged(Ljava/lang/Boolean;)V

    return-void
.end method

.method private synthetic lambda$init$6()V
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->mVolumePanel:Lcom/android/systemui/volume/VolumePanelImpl;

    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumePanelImpl;->onUserSwitchComplete()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->mVolumePanel:Lcom/android/systemui/volume/VolumePanelImpl;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumePanelImpl;->onDestroy()V

    .line 144
    iget-object v0, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->mVolumeController:Lcom/android/systemui/plugins/VolumeDialogController;

    iget-object v1, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->mCallbacks:Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/VolumeDialogController;->removeCallback(Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;)V

    .line 145
    iget-object v0, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/volume/util/HandlerWrapper;->quitBgThread()V

    .line 146
    iget-object v0, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->mBroadcastManager:Lcom/android/systemui/volume/util/BroadcastManager;

    invoke-virtual {v0}, Lcom/android/systemui/volume/util/BroadcastManager;->unregisterBroadcastReceiver()V

    .line 147
    iget-object v0, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->mCoverUtilWrapper:Lcom/android/systemui/basic/util/CoverUtilWrapper;

    if-eqz v0, :cond_0

    .line 148
    sget-object v1, Lcom/android/systemui/basic/util/ModuleType;->VOLUME:Lcom/android/systemui/basic/util/ModuleType;

    invoke-virtual {v0, v1}, Lcom/android/systemui/basic/util/CoverUtilWrapper;->removeListener(Lcom/android/systemui/basic/util/ModuleType;)V

    .line 150
    :cond_0
    sget-boolean v0, Lcom/android/systemui/BasicRune;->VOLUME_SUB_DISPLAY_VOLUME_DIALOG:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->mSemWindowManagerWrapper:Lcom/android/systemui/volume/util/SemWindowManagerWrapper;

    if-eqz v0, :cond_1

    .line 151
    invoke-virtual {v0}, Lcom/android/systemui/volume/util/SemWindowManagerWrapper;->unregisterFoldStateListener()V

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->mKeyguardUpdateMonitorWrapper:Lcom/android/systemui/volume/util/KeyguardUpdateMonitorWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/volume/util/KeyguardUpdateMonitorWrapper;->unregisterCallback()V

    .line 155
    iget-object v0, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->mDeviceProvisionedWrapper:Lcom/android/systemui/volume/util/DeviceProvisionedWrapper;

    iget-object p0, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->mDeviceProvisionedListener:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;

    invoke-virtual {v0, p0}, Lcom/android/systemui/volume/util/DeviceProvisionedWrapper;->removeCallback(Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;)V

    return-void
.end method

.method public init(ILcom/android/systemui/plugins/VolumeDialog$Callback;)V
    .locals 2

    .line 112
    iget-object p1, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->mVolumePanel:Lcom/android/systemui/volume/VolumePanelImpl;

    invoke-virtual {p1}, Lcom/android/systemui/volume/VolumePanelImpl;->onInitialize()V

    .line 113
    iget-object p1, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->mVolumeController:Lcom/android/systemui/plugins/VolumeDialogController;

    iget-object p2, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->mCallbacks:Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-interface {p1, p2, v0}, Lcom/android/systemui/plugins/VolumeDialogController;->addCallback(Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;Landroid/os/Handler;)V

    .line 114
    iget-object p1, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->mVolumeController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {p1}, Lcom/android/systemui/plugins/VolumeDialogController;->getState()V

    .line 115
    iget-object p1, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->mSoundPoolWrapper:Lcom/android/systemui/volume/util/SoundPoolWrapper;

    invoke-virtual {p1}, Lcom/android/systemui/volume/util/SoundPoolWrapper;->makeSound()V

    .line 117
    iget-object p1, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->mBroadcastManager:Lcom/android/systemui/volume/util/BroadcastManager;

    new-instance p2, Lcom/android/systemui/volume/SamsungVolumeDialogImpl$$ExternalSyntheticLambda5;

    invoke-direct {p2, p0}, Lcom/android/systemui/volume/SamsungVolumeDialogImpl$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/volume/SamsungVolumeDialogImpl;)V

    invoke-virtual {p1, p2}, Lcom/android/systemui/volume/util/BroadcastManager;->registerAllSoundOffAction(Ljava/util/function/Consumer;)V

    .line 121
    iget-object p1, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->mBroadcastManager:Lcom/android/systemui/volume/util/BroadcastManager;

    new-instance p2, Lcom/android/systemui/volume/SamsungVolumeDialogImpl$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lcom/android/systemui/volume/SamsungVolumeDialogImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/volume/SamsungVolumeDialogImpl;)V

    invoke-virtual {p1, p2}, Lcom/android/systemui/volume/util/BroadcastManager;->registerMirrorLinkAction(Ljava/lang/Runnable;)V

    .line 125
    iget-object p1, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->mBroadcastManager:Lcom/android/systemui/volume/util/BroadcastManager;

    new-instance p2, Lcom/android/systemui/volume/SamsungVolumeDialogImpl$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/systemui/volume/SamsungVolumeDialogImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/volume/SamsungVolumeDialogImpl;)V

    invoke-virtual {p1, p2}, Lcom/android/systemui/volume/util/BroadcastManager;->registerOpenThemeChangedAction(Ljava/lang/Runnable;)V

    .line 127
    iget-object p1, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->mBroadcastManager:Lcom/android/systemui/volume/util/BroadcastManager;

    new-instance p2, Lcom/android/systemui/volume/SamsungVolumeDialogImpl$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0}, Lcom/android/systemui/volume/SamsungVolumeDialogImpl$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/volume/SamsungVolumeDialogImpl;)V

    invoke-virtual {p1, p2}, Lcom/android/systemui/volume/util/BroadcastManager;->registerDualPlayModeAction(Ljava/lang/Runnable;)V

    .line 129
    iget-object p1, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->mCoverUtilWrapper:Lcom/android/systemui/basic/util/CoverUtilWrapper;

    if-eqz p1, :cond_0

    .line 130
    sget-object p2, Lcom/android/systemui/basic/util/ModuleType;->VOLUME:Lcom/android/systemui/basic/util/ModuleType;

    new-instance v0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/SamsungVolumeDialogImpl$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/volume/SamsungVolumeDialogImpl;)V

    invoke-virtual {p1, p2, v0}, Lcom/android/systemui/basic/util/CoverUtilWrapper;->addListener(Lcom/android/systemui/basic/util/ModuleType;Ljava/util/function/BiConsumer;)V

    .line 132
    :cond_0
    sget-boolean p1, Lcom/android/systemui/BasicRune;->VOLUME_SUB_DISPLAY_VOLUME_DIALOG:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->mSemWindowManagerWrapper:Lcom/android/systemui/volume/util/SemWindowManagerWrapper;

    if-eqz p1, :cond_1

    .line 133
    new-instance p2, Lcom/android/systemui/volume/SamsungVolumeDialogImpl$$ExternalSyntheticLambda6;

    invoke-direct {p2, p0}, Lcom/android/systemui/volume/SamsungVolumeDialogImpl$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/volume/SamsungVolumeDialogImpl;)V

    invoke-virtual {p1, p2}, Lcom/android/systemui/volume/util/SemWindowManagerWrapper;->registerFoldStateListener(Ljava/util/function/Consumer;)V

    .line 136
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->mKeyguardUpdateMonitorWrapper:Lcom/android/systemui/volume/util/KeyguardUpdateMonitorWrapper;

    new-instance p2, Lcom/android/systemui/volume/SamsungVolumeDialogImpl$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/android/systemui/volume/SamsungVolumeDialogImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/volume/SamsungVolumeDialogImpl;)V

    invoke-virtual {p1, p2}, Lcom/android/systemui/volume/util/KeyguardUpdateMonitorWrapper;->registerCallback(Ljava/lang/Runnable;)V

    .line 138
    iget-object p1, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->mDeviceProvisionedWrapper:Lcom/android/systemui/volume/util/DeviceProvisionedWrapper;

    iget-object p0, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->mDeviceProvisionedListener:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;

    invoke-virtual {p1, p0}, Lcom/android/systemui/volume/util/DeviceProvisionedWrapper;->addCallback(Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;)V

    return-void
.end method
