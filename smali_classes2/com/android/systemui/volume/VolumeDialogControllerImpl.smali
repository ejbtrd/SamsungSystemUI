.class public Lcom/android/systemui/volume/VolumeDialogControllerImpl;
.super Ljava/lang/Object;
.source "VolumeDialogControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/plugins/VolumeDialogController;
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/volume/VolumeDialogControllerImpl$UserActivityListener;,
        Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;,
        Lcom/android/systemui/volume/VolumeDialogControllerImpl$Receiver;,
        Lcom/android/systemui/volume/VolumeDialogControllerImpl$SettingObserver;,
        Lcom/android/systemui/volume/VolumeDialogControllerImpl$RingerModeObservers;,
        Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;,
        Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;,
        Lcom/android/systemui/volume/VolumeDialogControllerImpl$VC;
    }
.end annotation


# static fields
.field private static DEFAULT_MAX_LEVEL:I

.field private static DEFAULT_MIN_LEVEL:I

.field private static FLAG_SMART_VIEW_NONE:I

.field private static final SONIFICIATION_VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

.field static final STREAMS:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;

.field private static mIsVolumeStarEnabled:Z


# instance fields
.field protected mAudio:Landroid/media/AudioManager;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mAudioService:Landroid/media/IAudioService;

.field private final mBluetoothAdapterManager:Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;

.field protected mBluetoothAudioCastWrapper:Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper;

.field protected final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field private final mBroadcastManager:Lcom/android/systemui/volume/util/BroadcastManager;

.field protected mCallbacks:Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

.field private final mContext:Landroid/content/Context;

.field protected mDesktopManagerWrapper:Lcom/android/systemui/volume/util/DesktopManagerWrapper;

.field private mDestroyed:Z

.field private mDeviceInteractive:Z

.field private final mDisplayManagerWrapper:Lcom/android/systemui/volume/util/DisplayManagerWrapper;

.field private final mHasVibrator:Z

.field private mIsAudioSharingEnabled:Z

.field private mIsDLNAEnabled:Ljava/lang/Boolean;

.field private mIsSupportTvVolumeControl:Ljava/lang/Boolean;

.field private mIsVolumeDialogShowing:Z

.field private mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

.field private mLastToggledRingerOn:J

.field private final mMediaSessions:Lcom/android/settingslib/volume/MediaSessions;

.field protected final mMediaSessionsCallbacksW:Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;

.field private final mNoMan:Landroid/app/NotificationManager;

.field private final mObserver:Lcom/android/systemui/volume/VolumeDialogControllerImpl$SettingObserver;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mReceiver:Lcom/android/systemui/volume/VolumeDialogControllerImpl$Receiver;

.field private final mRingerModeObservers:Lcom/android/systemui/volume/VolumeDialogControllerImpl$RingerModeObservers;

.field private final mSALoggingWrapper:Lcom/android/systemui/volume/util/SALoggingWrapper;

.field private final mSemWindowManagerWrapper:Lcom/android/systemui/volume/util/SemWindowManagerWrapper;

.field private mShowA11yStream:Z

.field private mShowDndTile:Z

.field private mShowSafetyWarning:Z

.field private mShowVolumeDialog:Z

.field private mSmartViewFlag:I

.field private final mSoundAssistantManagerWrapper:Lcom/android/systemui/volume/util/SoundAssistantManagerWrapper;

.field private final mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

.field private mUserActivityListener:Lcom/android/systemui/volume/VolumeDialogControllerImpl$UserActivityListener;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field private final mVibrator:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Landroid/os/Vibrator;",
            ">;"
        }
    .end annotation
.end field

.field protected final mVolumeController:Lcom/android/systemui/volume/VolumeDialogControllerImpl$VC;

.field private mVolumePolicy:Landroid/media/VolumePolicy;

.field private final mWakefullnessLifecycleObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

.field private final mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

.field private final mWorker:Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;

.field private final mWorkerLooper:Landroid/os/Looper;


# direct methods
.method public static synthetic $r8$lambda$J_psbwhO9ZReqdTrfCyVPuEtRsI(Lcom/android/systemui/volume/VolumeDialogControllerImpl;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->lambda$register$0(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$W1aSs2eb9xcFJRq5Zs7PmWr9noY(Lcom/android/systemui/volume/VolumeDialogControllerImpl;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->lambda$register$1(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$b3Rpdq8XGIkkwzQbAEll67Pa3rs(Lcom/android/systemui/volume/VolumeDialogControllerImpl;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->lambda$register$3(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bF8eo4O1pn6g-LtdWR8t6h8F4VQ(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->lambda$register$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$dXqwLLapdmxqIa2ZMWodUhslBN8(Landroid/os/VibrationEffect;Landroid/os/Vibrator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->lambda$vibrate$5(Landroid/os/VibrationEffect;Landroid/os/Vibrator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jS4jmCEamkRc0zm1OF8-TEe0xWU(Lcom/android/systemui/volume/VolumeDialogControllerImpl;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->lambda$register$2(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$x13EClYgwL1CwqYo5TYL-R2QQHU(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->lambda$setFineVolumeForDualAudio$6(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 7

    .line 114
    const-class v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/Util;->logTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->TAG:Ljava/lang/String;

    .line 120
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x4

    .line 122
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/16 v2, 0xd

    .line 123
    invoke-virtual {v0, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 124
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->SONIFICIATION_VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 126
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->STREAMS:Landroid/util/ArrayMap;

    .line 129
    invoke-static {}, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->initValues()V

    const/4 v2, 0x0

    .line 130
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$string;->volume_icon_description_incall:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x1

    .line 131
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget v5, Lcom/android/systemui/R$string;->volumepanel_system:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x2

    .line 132
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget v5, Lcom/android/systemui/R$string;->volumepanel_ringtone:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x3

    .line 133
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget v5, Lcom/android/systemui/R$string;->volumepanel_media:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v3, Lcom/android/systemui/R$string;->volume_alarm:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x5

    .line 135
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v3, Lcom/android/systemui/R$string;->volumepanel_notification:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x6

    .line 136
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x7

    .line 137
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v3, Lcom/android/systemui/R$string;->stream_system_enforced:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x8

    .line 138
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v3, Lcom/android/systemui/R$string;->stream_dtmf:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x9

    .line 139
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v3, Lcom/android/systemui/R$string;->stream_tts:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xa

    .line 140
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v3, Lcom/android/systemui/R$string;->stream_accessibility:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget v1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_SMART_VIEW:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget v1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_MULTI_SOUND:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget v1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_BIXBY_VOICE:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v3, Lcom/android/systemui/R$string;->volumepanel_bixby_voice:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget v1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_DUAL_AUDIO:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget v1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_AUDIO_SHARING:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v3, Lcom/android/systemui/R$string;->volumepanel_music_share:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    sput v2, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->DEFAULT_MIN_LEVEL:I

    const/16 v0, 0xf

    .line 207
    sput v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->DEFAULT_MAX_LEVEL:I

    const/4 v0, -0x1

    .line 222
    sput v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->FLAG_SMART_VIEW_NONE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/util/RingerModeTracker;Lcom/android/systemui/util/concurrency/ThreadFactory;Landroid/media/AudioManager;Landroid/app/NotificationManager;Ljava/util/Optional;Landroid/media/IAudioService;Landroid/view/accessibility/AccessibilityManager;Landroid/content/pm/PackageManager;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/volume/util/SALoggingWrapper;Lcom/android/systemui/volume/util/BroadcastManager;Lcom/android/systemui/volume/util/DisplayManagerWrapper;Lcom/android/systemui/volume/util/DesktopManagerWrapper;Lcom/android/systemui/knox/KnoxStateMonitor;Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;Lcom/android/systemui/volume/util/SoundAssistantManagerWrapper;Lcom/android/systemui/volume/util/SemWindowManagerWrapper;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            "Lcom/android/systemui/util/RingerModeTracker;",
            "Lcom/android/systemui/util/concurrency/ThreadFactory;",
            "Landroid/media/AudioManager;",
            "Landroid/app/NotificationManager;",
            "Ljava/util/Optional<",
            "Landroid/os/Vibrator;",
            ">;",
            "Landroid/media/IAudioService;",
            "Landroid/view/accessibility/AccessibilityManager;",
            "Landroid/content/pm/PackageManager;",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            "Lcom/android/systemui/volume/util/SALoggingWrapper;",
            "Lcom/android/systemui/volume/util/BroadcastManager;",
            "Lcom/android/systemui/volume/util/DisplayManagerWrapper;",
            "Lcom/android/systemui/volume/util/DesktopManagerWrapper;",
            "Lcom/android/systemui/knox/KnoxStateMonitor;",
            "Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;",
            "Lcom/android/systemui/volume/util/SoundAssistantManagerWrapper;",
            "Lcom/android/systemui/volume/util/SemWindowManagerWrapper;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p11

    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    new-instance v2, Lcom/android/systemui/volume/VolumeDialogControllerImpl$Receiver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$Receiver;-><init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl;Lcom/android/systemui/volume/VolumeDialogControllerImpl$1;)V

    iput-object v2, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mReceiver:Lcom/android/systemui/volume/VolumeDialogControllerImpl$Receiver;

    .line 178
    new-instance v4, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    invoke-direct {v4, p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;-><init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)V

    iput-object v4, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    .line 179
    new-instance v4, Lcom/android/systemui/plugins/VolumeDialogController$State;

    invoke-direct {v4}, Lcom/android/systemui/plugins/VolumeDialogController$State;-><init>()V

    iput-object v4, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    const/4 v4, 0x1

    .line 187
    iput-boolean v4, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mDeviceInteractive:Z

    .line 191
    iput-boolean v4, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mShowDndTile:Z

    .line 195
    new-instance v5, Lcom/android/systemui/volume/VolumeDialogControllerImpl$VC;

    invoke-direct {v5, p0, v3}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$VC;-><init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl;Lcom/android/systemui/volume/VolumeDialogControllerImpl$1;)V

    iput-object v5, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mVolumeController:Lcom/android/systemui/volume/VolumeDialogControllerImpl$VC;

    .line 216
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v6, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mIsSupportTvVolumeControl:Ljava/lang/Boolean;

    .line 218
    iput-object v6, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mIsDLNAEnabled:Ljava/lang/Boolean;

    .line 257
    new-instance v6, Lcom/android/systemui/volume/VolumeDialogControllerImpl$1;

    invoke-direct {v6, p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$1;-><init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)V

    iput-object v6, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mWakefullnessLifecycleObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    .line 299
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    iput-object v7, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v8, p10

    .line 300
    iput-object v8, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 301
    iput-object v1, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    const/4 v8, 0x0

    new-array v9, v8, [Ljava/lang/Object;

    const/4 v10, 0x5

    .line 302
    invoke-static {v10, v9}, Lcom/android/systemui/volume/Events;->writeEvent(I[Ljava/lang/Object;)V

    .line 303
    const-class v9, Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    .line 304
    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v10, p4

    .line 303
    invoke-interface {v10, v9}, Lcom/android/systemui/util/concurrency/ThreadFactory;->buildLooperOnNewThread(Ljava/lang/String;)Landroid/os/Looper;

    move-result-object v9

    iput-object v9, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mWorkerLooper:Landroid/os/Looper;

    .line 305
    new-instance v10, Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;

    invoke-direct {v10, p0, v9}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;-><init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl;Landroid/os/Looper;)V

    iput-object v10, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mWorker:Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;

    .line 306
    new-instance v11, Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;

    invoke-direct {v11, p0, v7}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;-><init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl;Landroid/content/Context;)V

    iput-object v11, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mMediaSessionsCallbacksW:Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;

    .line 307
    invoke-virtual {p0, v7, v9, v11}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->createMediaSessions(Landroid/content/Context;Landroid/os/Looper;Lcom/android/settingslib/volume/MediaSessions$Callbacks;)Lcom/android/settingslib/volume/MediaSessions;

    move-result-object v9

    iput-object v9, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mMediaSessions:Lcom/android/settingslib/volume/MediaSessions;

    move-object/from16 v9, p5

    .line 308
    iput-object v9, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    move-object/from16 v9, p6

    .line 309
    iput-object v9, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mNoMan:Landroid/app/NotificationManager;

    .line 310
    new-instance v9, Lcom/android/systemui/volume/VolumeDialogControllerImpl$SettingObserver;

    invoke-direct {v9, p0, v10}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$SettingObserver;-><init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl;Landroid/os/Handler;)V

    iput-object v9, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mObserver:Lcom/android/systemui/volume/VolumeDialogControllerImpl$SettingObserver;

    .line 311
    new-instance v10, Lcom/android/systemui/volume/VolumeDialogControllerImpl$RingerModeObservers;

    .line 312
    invoke-interface/range {p3 .. p3}, Lcom/android/systemui/util/RingerModeTracker;->getRingerMode()Landroidx/lifecycle/LiveData;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/util/RingerModeLiveData;

    .line 313
    invoke-interface/range {p3 .. p3}, Lcom/android/systemui/util/RingerModeTracker;->getRingerModeInternal()Landroidx/lifecycle/LiveData;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/util/RingerModeLiveData;

    invoke-direct {v10, p0, v11, v12}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$RingerModeObservers;-><init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl;Lcom/android/systemui/util/RingerModeLiveData;Lcom/android/systemui/util/RingerModeLiveData;)V

    iput-object v10, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mRingerModeObservers:Lcom/android/systemui/volume/VolumeDialogControllerImpl$RingerModeObservers;

    .line 315
    invoke-virtual {v10}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$RingerModeObservers;->init()V

    move-object v10, p2

    .line 316
    iput-object v10, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 317
    invoke-virtual {v9}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$SettingObserver;->init()V

    .line 318
    invoke-virtual {v2}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$Receiver;->init()V

    move-object/from16 v2, p7

    .line 319
    iput-object v2, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mVibrator:Ljava/util/Optional;

    .line 320
    invoke-virtual/range {p7 .. p7}, Ljava/util/Optional;->isPresent()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual/range {p7 .. p7}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    invoke-virtual {v2}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v4, v8

    :goto_0
    iput-boolean v4, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mHasVibrator:Z

    move-object/from16 v2, p8

    .line 321
    iput-object v2, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudioService:Landroid/media/IAudioService;

    .line 324
    invoke-virtual/range {p9 .. p9}, Landroid/view/accessibility/AccessibilityManager;->isAccessibilityVolumeStreamActive()Z

    move-result v2

    .line 325
    invoke-virtual {v5, v2}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$VC;->setA11yMode(I)V

    .line 329
    invoke-virtual {v1, v6}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    move-object/from16 v1, p12

    .line 331
    iput-object v1, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mSALoggingWrapper:Lcom/android/systemui/volume/util/SALoggingWrapper;

    move-object/from16 v1, p15

    .line 332
    iput-object v1, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mDesktopManagerWrapper:Lcom/android/systemui/volume/util/DesktopManagerWrapper;

    move-object/from16 v1, p13

    .line 339
    iput-object v1, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mBroadcastManager:Lcom/android/systemui/volume/util/BroadcastManager;

    move-object/from16 v1, p14

    .line 340
    iput-object v1, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mDisplayManagerWrapper:Lcom/android/systemui/volume/util/DisplayManagerWrapper;

    move-object/from16 v1, p16

    .line 347
    iput-object v1, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 353
    new-instance v1, Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper;

    invoke-direct {v1, v7}, Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mBluetoothAudioCastWrapper:Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper;

    move-object/from16 v1, p17

    .line 359
    iput-object v1, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mBluetoothAdapterManager:Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;

    move-object/from16 v1, p18

    .line 360
    iput-object v1, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mSoundAssistantManagerWrapper:Lcom/android/systemui/volume/util/SoundAssistantManagerWrapper;

    .line 366
    sget-boolean v1, Lcom/android/systemui/BasicRune;->VOLUME_SUB_DISPLAY_VOLUME_DIALOG:Z

    if-eqz v1, :cond_1

    move-object/from16 v1, p19

    .line 367
    iput-object v1, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mSemWindowManagerWrapper:Lcom/android/systemui/volume/util/SemWindowManagerWrapper;

    goto :goto_1

    .line 369
    :cond_1
    iput-object v3, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mSemWindowManagerWrapper:Lcom/android/systemui/volume/util/SemWindowManagerWrapper;

    :goto_1
    return-void
.end method

.method static synthetic access$1002(Z)Z
    .locals 0

    .line 113
    sput-boolean p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mIsVolumeStarEnabled:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/android/systemui/volume/VolumeDialogControllerImpl;II)V
    .locals 0

    .line 113
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->checkSmartViewAndVolumeChanged(II)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/volume/VolumeDialogControllerImpl;I)V
    .locals 0

    .line 113
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->onDismissRequestedW(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)V
    .locals 0

    .line 113
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->onGetStateW()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/systemui/volume/VolumeDialogControllerImpl;IZ)V
    .locals 0

    .line 113
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->onSetRingerModeW(IZ)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/systemui/volume/VolumeDialogControllerImpl;I)V
    .locals 0

    .line 113
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->onSetZenModeW(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/systemui/volume/VolumeDialogControllerImpl;Landroid/service/notification/Condition;)V
    .locals 0

    .line 113
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->onSetExitConditionW(Landroid/service/notification/Condition;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/systemui/volume/VolumeDialogControllerImpl;IZ)V
    .locals 0

    .line 113
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->onSetStreamMuteW(IZ)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/systemui/volume/VolumeDialogControllerImpl;II)V
    .locals 0

    .line 113
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->onSetStreamVolumeW(II)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/systemui/volume/VolumeDialogControllerImpl;I)V
    .locals 0

    .line 113
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->onSetActiveStreamW(I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/systemui/volume/VolumeDialogControllerImpl;Z)V
    .locals 0

    .line 113
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->onNotifyVisibleW(Z)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/systemui/volume/VolumeDialogControllerImpl;Z)Z
    .locals 0

    .line 113
    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mDeviceInteractive:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)V
    .locals 0

    .line 113
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->onUserActivityW()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/systemui/volume/VolumeDialogControllerImpl;I)V
    .locals 0

    .line 113
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->onShowSafetyWarningW(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/systemui/volume/VolumeDialogControllerImpl;Z)V
    .locals 0

    .line 113
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->onGetCaptionsComponentStateW(Z)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/systemui/volume/VolumeDialogControllerImpl;Ljava/lang/Boolean;)V
    .locals 0

    .line 113
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->onAccessibilityModeChanged(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)V
    .locals 0

    .line 113
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->onShowVolumeLimiterToast()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/systemui/volume/VolumeDialogControllerImpl;IILjava/lang/String;)V
    .locals 0

    .line 113
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->onSetStreamVolumeDualAudioW(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)Lcom/android/systemui/plugins/VolumeDialogController$State;
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/android/systemui/volume/VolumeDialogControllerImpl;I)Z
    .locals 0

    .line 113
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->updateRingerModeExternalW(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2900(Lcom/android/systemui/volume/VolumeDialogControllerImpl;I)V
    .locals 0

    .line 113
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->updateStreamVolume(I)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/systemui/volume/VolumeDialogControllerImpl;I)Z
    .locals 0

    .line 113
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->updateRingerModeInternalW(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$3100(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)Landroid/content/Context;
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)Z
    .locals 0

    .line 113
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->updateZenModeW()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3300(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)Z
    .locals 0

    .line 113
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->updateZenConfig()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3400(Lcom/android/systemui/volume/VolumeDialogControllerImpl;I)Z
    .locals 0

    .line 113
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->checkRoutedToBluetoothW(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$3500(Lcom/android/systemui/volume/VolumeDialogControllerImpl;IZ)Z
    .locals 0

    .line 113
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->updateStreamMuteW(IZ)Z

    move-result p0

    return p0
.end method

.method static synthetic access$3600(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)Landroid/app/NotificationManager;
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mNoMan:Landroid/app/NotificationManager;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/android/systemui/volume/VolumeDialogControllerImpl;Landroid/content/ComponentName;)Z
    .locals 0

    .line 113
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->updateEffectsSuppressorW(Landroid/content/ComponentName;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$3800(Lcom/android/systemui/volume/VolumeDialogControllerImpl;I)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;
    .locals 0

    .line 113
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->streamStateW(I)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3900(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)Z
    .locals 0

    .line 113
    iget-boolean p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mIsVolumeDialogShowing:Z

    return p0
.end method

.method static synthetic access$4000(Lcom/android/systemui/volume/VolumeDialogControllerImpl;I)Z
    .locals 0

    .line 113
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->shouldShowUI(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$4100(Lcom/android/systemui/volume/VolumeDialogControllerImpl;I)Z
    .locals 0

    .line 113
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->updateActiveStreamW(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$4200(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)Lcom/android/settingslib/volume/MediaSessions;
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mMediaSessions:Lcom/android/settingslib/volume/MediaSessions;

    return-object p0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .line 113
    sget-object v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)Z
    .locals 0

    .line 113
    iget-boolean p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mDestroyed:Z

    return p0
.end method

.method static synthetic access$800(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mWorker:Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)Z
    .locals 0

    .line 113
    iget-boolean p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mShowA11yStream:Z

    return p0
.end method

.method static synthetic access$902(Lcom/android/systemui/volume/VolumeDialogControllerImpl;Z)Z
    .locals 0

    .line 113
    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mShowA11yStream:Z

    return p1
.end method

.method private broadcastLights(I)V
    .locals 3

    .line 249
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.LightsService.action.LED_CONTROL_WHITE_LED_PATTERN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "details"

    const-string v2, "Volume:Light"

    .line 250
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "mode"

    const/16 v2, 0xa

    .line 251
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "extra"

    .line 252
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 253
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mContext:Landroid/content/Context;

    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private checkRoutedToBluetoothW(I)Z
    .locals 5

    const/4 v0, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1

    .line 690
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {v3, v0}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v0

    and-int/lit16 v0, v0, 0x3a0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    .line 691
    :goto_0
    invoke-direct {p0, p1, v1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->updateStreamRoutedToBluetoothW(IZ)Z

    move-result p0

    or-int/2addr v2, p0

    goto :goto_3

    .line 692
    :cond_1
    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_MULTI_SOUND:I

    if-ne p1, v0, :cond_4

    .line 693
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->semGetPinDevice()I

    move-result v0

    and-int/lit16 v3, v0, 0x3a0

    if-eqz v3, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    const v4, 0x8000

    and-int/2addr v0, v4

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    .line 696
    :goto_2
    invoke-direct {p0, p1, v3}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->updateStreamRoutedToBluetoothW(IZ)Z

    move-result v0

    or-int/2addr v0, v2

    .line 697
    invoke-direct {p0, p1, v1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->updateStreamRoutedToAppMirroring(IZ)Z

    move-result p0

    or-int v2, v0, p0

    goto :goto_3

    .line 698
    :cond_4
    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_AUDIO_SHARING:I

    if-eq p1, v0, :cond_5

    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_DUAL_AUDIO:I

    if-ne p1, v0, :cond_6

    .line 700
    :cond_5
    invoke-direct {p0, p1, v1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->updateStreamRoutedToBluetoothW(IZ)Z

    move-result p0

    or-int/2addr v2, p0

    :cond_6
    :goto_3
    return v2
.end method

.method private checkSmartViewAndVolumeChanged(II)V
    .locals 1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const/high16 v0, 0x400000

    and-int/2addr v0, p2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 1788
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mIsVolumeDialogShowing:Z

    if-eqz v0, :cond_1

    .line 1790
    iput p2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mSmartViewFlag:I

    goto :goto_1

    .line 1792
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->onVolumeChangedW(II)Z

    .line 1793
    sget p1, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->FLAG_SMART_VIEW_NONE:I

    iput p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mSmartViewFlag:I

    :goto_1
    return-void
.end method

.method private static getApplicationName(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 968
    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 970
    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 971
    invoke-virtual {v0, p0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    const-string v0, ""

    invoke-static {p0, v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 972
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v0, :cond_1

    return-object p0

    :catch_0
    :cond_1
    return-object p1
.end method

.method private getDualAudioState()Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;>;"
        }
    .end annotation

    .line 1859
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1860
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget-boolean v1, v1, Lcom/android/systemui/plugins/VolumeDialogController$State;->dualAudio:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1861
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mBluetoothAdapterManager:Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;

    invoke-virtual {p0}, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1862
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    const/4 p0, 0x1

    move v2, p0

    .line 1864
    :cond_0
    new-instance p0, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method private getDualAudioState(Ljava/lang/String;)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;>;"
        }
    .end annotation

    .line 1800
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1801
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget-boolean v1, v1, Lcom/android/systemui/plugins/VolumeDialogController$State;->dualAudio:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1802
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mBluetoothAdapterManager:Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;

    invoke-virtual {p0}, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1803
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    move v2, p0

    .line 1805
    :cond_0
    new-instance p0, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method private getLastAudibleStreamVolume(I)I
    .locals 1

    .line 1875
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->isMediaStream(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1877
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->getDualAudioState()Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1879
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->getDualAudioState()Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 1880
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->getMediaVolumeForDualAudio(ILjava/util/List;)I

    move-result p0

    goto :goto_0

    .line 1882
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->getMediaVolume(I)I

    move-result p0

    :goto_0
    mul-int/lit8 p0, p0, 0xa

    goto :goto_1

    .line 1885
    :cond_1
    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_SMART_VIEW:I

    if-ne p1, v0, :cond_2

    .line 1886
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->isSmartViewEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1887
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mDisplayManagerWrapper:Lcom/android/systemui/volume/util/DisplayManagerWrapper;

    invoke-virtual {p0}, Lcom/android/systemui/volume/util/DisplayManagerWrapper;->getDisplayCurrentVolume()I

    move-result p0

    goto :goto_1

    .line 1889
    :cond_2
    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_AUDIO_SHARING:I

    if-ne p1, v0, :cond_4

    .line 1890
    iget-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mIsAudioSharingEnabled:Z

    if-eqz p1, :cond_3

    .line 1891
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mBluetoothAudioCastWrapper:Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper;

    invoke-virtual {p0}, Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper;->getAudioSharingDeviceVolume()I

    move-result p0

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    goto :goto_1

    .line 1894
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p0

    :goto_1
    return p0
.end method

.method private getMediaVolume(I)I
    .locals 2

    .line 1902
    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_MULTI_SOUND:I

    const/4 v1, 0x3

    if-ne p1, v0, :cond_0

    .line 1903
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {p1}, Landroid/media/AudioManager;->semGetPinDevice()I

    move-result p1

    .line 1904
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {p0, v1, p1}, Landroid/media/AudioManager;->getFineVolume(II)I

    move-result p0

    goto :goto_0

    .line 1906
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {p0, v1}, Landroid/media/AudioManager;->semGetFineVolume(I)I

    move-result p0

    :goto_0
    return p0
.end method

.method private getMediaVolumeForDualAudio(ILjava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;)I"
        }
    .end annotation

    .line 1914
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->isMultiSoundBT()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eqz v0, :cond_2

    if-ne p1, v3, :cond_0

    .line 1916
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {p0, v3}, Landroid/media/AudioManager;->semGetFineVolume(I)I

    move-result p0

    goto :goto_2

    .line 1918
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_MULTI_SOUND:I

    if-ne p1, v0, :cond_1

    .line 1919
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 1918
    invoke-virtual {p0, p1, v3}, Landroid/media/AudioManager;->semGetFineVolume(Landroid/bluetooth/BluetoothDevice;I)I

    move-result p0

    goto :goto_2

    .line 1922
    :cond_2
    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_MULTI_SOUND:I

    if-ne p1, v0, :cond_3

    .line 1923
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {p1}, Landroid/media/AudioManager;->semGetPinDevice()I

    move-result p1

    .line 1924
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {p0, v3, p1}, Landroid/media/AudioManager;->getFineVolume(II)I

    move-result p0

    goto :goto_2

    .line 1926
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    if-ne p1, v3, :cond_4

    .line 1927
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    :cond_4
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_1
    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 1926
    invoke-virtual {p0, p1, v3}, Landroid/media/AudioManager;->semGetFineVolume(Landroid/bluetooth/BluetoothDevice;I)I

    move-result p0

    :goto_2
    return p0
.end method

.method private getStreamMaxVolume(I)I
    .locals 1

    .line 1935
    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_SMART_VIEW:I

    if-ne p1, v0, :cond_1

    .line 1936
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->isSmartViewEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mDisplayManagerWrapper:Lcom/android/systemui/volume/util/DisplayManagerWrapper;

    invoke-virtual {p0}, Lcom/android/systemui/volume/util/DisplayManagerWrapper;->getDisplayMaxVolume()I

    move-result p0

    goto :goto_0

    :cond_0
    sget p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->DEFAULT_MAX_LEVEL:I

    :goto_0
    return p0

    .line 1937
    :cond_1
    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_MULTI_SOUND:I

    if-eq p1, v0, :cond_4

    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_DUAL_AUDIO:I

    if-ne p1, v0, :cond_2

    goto :goto_1

    .line 1940
    :cond_2
    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_AUDIO_SHARING:I

    if-ne p1, v0, :cond_3

    .line 1941
    sget p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->DEFAULT_MAX_LEVEL:I

    return p0

    .line 1944
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p0

    return p0

    .line 1939
    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p0

    return p0
.end method

.method private getStreamMinVolume(I)I
    .locals 1

    .line 1949
    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_SMART_VIEW:I

    if-ne p1, v0, :cond_1

    .line 1950
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->isSmartViewEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mDisplayManagerWrapper:Lcom/android/systemui/volume/util/DisplayManagerWrapper;

    invoke-virtual {p0}, Lcom/android/systemui/volume/util/DisplayManagerWrapper;->getDisplayMinVolume()I

    move-result p0

    goto :goto_0

    :cond_0
    sget p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->DEFAULT_MIN_LEVEL:I

    :goto_0
    return p0

    .line 1951
    :cond_1
    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_MULTI_SOUND:I

    if-eq p1, v0, :cond_4

    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_DUAL_AUDIO:I

    if-ne p1, v0, :cond_2

    goto :goto_1

    .line 1954
    :cond_2
    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_AUDIO_SHARING:I

    if-ne p1, v0, :cond_3

    .line 1955
    sget p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->DEFAULT_MIN_LEVEL:I

    return p0

    .line 1957
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getStreamMinVolumeInt(I)I

    move-result p0

    return p0

    .line 1953
    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getStreamMinVolumeInt(I)I

    move-result p0

    return p0
.end method

.method private isAudioManagerStreamMute(I)Z
    .locals 1

    .line 1967
    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_SMART_VIEW:I

    if-eq p1, v0, :cond_3

    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_AUDIO_SHARING:I

    if-ne p1, v0, :cond_0

    goto :goto_1

    .line 1970
    :cond_0
    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_MULTI_SOUND:I

    if-eq p1, v0, :cond_2

    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_DUAL_AUDIO:I

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 1974
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result p0

    return p0

    .line 1972
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result p0

    return p0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method private static isLogWorthy(I)Z
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isMediaStream(I)Z
    .locals 0

    const/4 p0, 0x3

    if-eq p1, p0, :cond_1

    .line 1869
    sget p0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_MULTI_SOUND:I

    if-eq p1, p0, :cond_1

    sget p0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_DUAL_AUDIO:I

    if-ne p1, p0, :cond_0

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

.method private isMultiSoundBT()Z
    .locals 2

    .line 1999
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mSoundAssistantManagerWrapper:Lcom/android/systemui/volume/util/SoundAssistantManagerWrapper;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/volume/util/SoundAssistantManagerWrapper;->isMultiSoundOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2000
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mSoundAssistantManagerWrapper:Lcom/android/systemui/volume/util/SoundAssistantManagerWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/volume/util/SoundAssistantManagerWrapper;->getMultiSoundDevice()I

    move-result v0

    .line 2001
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {p0}, Landroid/media/AudioManager;->semGetCurrentDeviceType()I

    move-result p0

    if-eq p0, v0, :cond_0

    const/16 p0, 0x8

    if-ne v0, p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private static isRinger(I)Z
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

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

.method private synthetic lambda$register$0(Ljava/lang/Boolean;)V
    .locals 0

    .line 429
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mIsSupportTvVolumeControl:Ljava/lang/Boolean;

    return-void
.end method

.method private synthetic lambda$register$1(Ljava/lang/Boolean;)V
    .locals 0

    .line 430
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mIsDLNAEnabled:Ljava/lang/Boolean;

    return-void
.end method

.method private synthetic lambda$register$2(Ljava/lang/Boolean;)V
    .locals 2

    .line 433
    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_SMART_VIEW:I

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->streamStateW(I)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->muted:Z

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 434
    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_SMART_VIEW:I

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->updateStreamMuteW(IZ)Z

    .line 436
    :cond_0
    iget-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mIsVolumeDialogShowing:Z

    if-eqz p1, :cond_2

    .line 437
    sget p1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_SMART_VIEW:I

    iget v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mSmartViewFlag:I

    sget v1, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->FLAG_SMART_VIEW_NONE:I

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->onVolumeChangedW(II)Z

    :cond_2
    return-void
.end method

.method private synthetic lambda$register$3(Ljava/lang/Boolean;)V
    .locals 0

    .line 444
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mIsAudioSharingEnabled:Z

    return-void
.end method

.method private synthetic lambda$register$4()V
    .locals 2

    .line 445
    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_AUDIO_SHARING:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->onVolumeChangedW(II)Z

    return-void
.end method

.method private static synthetic lambda$setFineVolumeForDualAudio$6(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 0

    .line 1837
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$vibrate$5(Landroid/os/VibrationEffect;Landroid/os/Vibrator;)V
    .locals 1

    .line 616
    sget-object v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->SONIFICIATION_VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {p1, p0, v0}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V

    return-void
.end method

.method private onAccessibilityModeChanged(Ljava/lang/Boolean;)V
    .locals 0

    .line 679
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onAccessibilityModeChanged(Ljava/lang/Boolean;)V

    return-void
.end method

.method private onDismissRequestedW(I)V
    .locals 0

    .line 1073
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onDismissRequested(I)V

    return-void
.end method

.method private onGetCaptionsComponentStateW(Z)V
    .locals 6

    .line 649
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x1040301

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 651
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 653
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onCaptionComponentStateChanged(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void

    .line 657
    :cond_0
    sget-boolean v1, Lcom/android/systemui/volume/D;->BUG:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 658
    sget-object v1, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->TAG:Ljava/lang/String;

    const-string v4, "isCaptionsServiceEnabled componentNameString=%s"

    new-array v5, v3, [Ljava/lang/Object;

    aput-object v0, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    :cond_1
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_2

    .line 664
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onCaptionComponentStateChanged(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void

    .line 668
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 669
    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v0

    if-ne v0, v3, :cond_3

    move v2, v3

    :cond_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 670
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 668
    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onCaptionComponentStateChanged(Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 672
    sget-object v1, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->TAG:Ljava/lang/String;

    const-string v2, "isCaptionsServiceEnabled failed to check for captions component"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 674
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onCaptionComponentStateChanged(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    :goto_0
    return-void
.end method

.method private onGetStateW()V
    .locals 5

    .line 876
    sget-object v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->STREAMS:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 877
    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->getAudioManagerStreamVolume(I)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->updateStreamLevelW(II)Z

    .line 878
    invoke-direct {p0, v1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->streamStateW(I)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v2

    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->getAudioManagerStreamMinVolume(I)I

    move-result v3

    iput v3, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMin:I

    .line 880
    invoke-direct {p0, v1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->streamStateW(I)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v2

    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->getAudioManagerStreamMaxVolume(I)I

    move-result v3

    iput v3, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMax:I

    .line 881
    invoke-direct {p0, v1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->isAudioManagerStreamMute(I)Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->updateStreamMuteW(IZ)Z

    .line 886
    invoke-direct {p0, v1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->streamStateW(I)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v2

    .line 887
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {v3, v1}, Landroid/media/AudioManager;->isStreamAffectedByMute(I)Z

    move-result v3

    iput-boolean v3, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->muteSupported:Z

    .line 888
    sget-object v3, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->STREAMS:Landroid/util/ArrayMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->name:I

    .line 889
    invoke-direct {p0, v1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->checkRoutedToBluetoothW(I)Z

    .line 893
    sget v3, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_MULTI_SOUND:I

    if-eq v1, v3, :cond_0

    sget v3, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_DUAL_AUDIO:I

    if-eq v1, v3, :cond_0

    sget v3, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_AUDIO_SHARING:I

    .line 895
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v3, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->name:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->nameRes:Ljava/lang/String;

    goto :goto_0

    .line 899
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mRingerModeObservers:Lcom/android/systemui/volume/VolumeDialogControllerImpl$RingerModeObservers;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$RingerModeObservers;->access$400(Lcom/android/systemui/volume/VolumeDialogControllerImpl$RingerModeObservers;)Lcom/android/systemui/util/RingerModeLiveData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/RingerModeLiveData;->getValue()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->updateRingerModeExternalW(I)Z

    .line 900
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->updateZenModeW()Z

    .line 901
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->updateZenConfig()Z

    .line 902
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mNoMan:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getEffectsSuppressor()Landroid/content/ComponentName;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->updateEffectsSuppressorW(Landroid/content/ComponentName;)Z

    .line 903
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    invoke-virtual {v0, p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onStateChanged(Lcom/android/systemui/plugins/VolumeDialogController$State;)V

    return-void
.end method

.method private onNotifyVisibleW(Z)V
    .locals 2

    .line 624
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mDestroyed:Z

    if-eqz v0, :cond_0

    return-void

    .line 625
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mVolumeController:Lcom/android/systemui/volume/VolumeDialogControllerImpl$VC;

    invoke-virtual {v0, v1, p1}, Landroid/media/AudioManager;->notifyVolumeControllerVisible(Landroid/media/IVolumeController;Z)V

    if-nez p1, :cond_1

    const/4 p1, -0x1

    .line 627
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->updateActiveStreamW(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 628
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    invoke-virtual {p1, p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onStateChanged(Lcom/android/systemui/plugins/VolumeDialogController$State;)V

    :cond_1
    return-void
.end method

.method private onSetActiveStreamW(I)V
    .locals 0

    .line 1057
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->updateActiveStreamW(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1059
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    invoke-virtual {p1, p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onStateChanged(Lcom/android/systemui/plugins/VolumeDialogController$State;)V

    :cond_0
    return-void
.end method

.method private onSetExitConditionW(Landroid/service/notification/Condition;)V
    .locals 2

    .line 1064
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mNoMan:Landroid/app/NotificationManager;

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget p0, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->zenMode:I

    if-eqz p1, :cond_0

    iget-object p1, p1, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    sget-object v1, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v0, p0, p1, v1}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method private onSetRingerModeW(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1036
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    .line 1038
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    :goto_0
    return-void
.end method

.method private onSetStreamMuteW(IZ)V
    .locals 1

    .line 1043
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    if-eqz p2, :cond_0

    const/16 p2, -0x64

    goto :goto_0

    :cond_0
    const/16 p2, 0x64

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    return-void
.end method

.method private onSetStreamVolumeDualAudioW(IILjava/lang/String;)V
    .locals 3

    .line 2070
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSetStreamVolumeDualAudioW "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " level="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " btDeviceAddress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .line 2071
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->setStreamVolume(IIILjava/lang/String;)V

    return-void
.end method

.method private onSetStreamVolumeW(II)V
    .locals 3

    .line 1048
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSetStreamVolume "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " level="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v0, 0x64

    if-lt p1, v0, :cond_1

    .line 1050
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mMediaSessionsCallbacksW:Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;->setStreamVolume(II)V

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 1053
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->setAudioManagerStreamVolume(III)V

    return-void
.end method

.method private onSetZenModeW(I)V
    .locals 3

    .line 1068
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSetZenModeW "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mNoMan:Landroid/app/NotificationManager;

    const/4 v0, 0x0

    sget-object v1, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->TAG:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method private onShowSafetyWarningW(I)V
    .locals 1

    .line 642
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mShowSafetyWarning:Z

    if-eqz v0, :cond_0

    .line 643
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onShowSafetyWarning(I)V

    :cond_0
    return-void
.end method

.method private onShowVolumeLimiterToast()V
    .locals 0

    .line 1781
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onShowVolumeLimiterToast()V

    return-void
.end method

.method private onUserActivityW()V
    .locals 1

    .line 634
    monitor-enter p0

    .line 635
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mUserActivityListener:Lcom/android/systemui/volume/VolumeDialogControllerImpl$UserActivityListener;

    if-eqz v0, :cond_0

    .line 636
    invoke-interface {v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$UserActivityListener;->onUserActivity()V

    .line 638
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private playTouchFeedback()V
    .locals 4

    .line 605
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mLastToggledRingerOn:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 607
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudioService:Landroid/media/IAudioService;

    const/4 v0, 0x5

    invoke-interface {p0, v0}, Landroid/media/IAudioService;->playSoundEffect(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private setFineVolume(III)V
    .locals 2

    .line 1848
    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_MULTI_SOUND:I

    const/4 v1, 0x3

    if-ne p1, v0, :cond_0

    .line 1849
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {p1}, Landroid/media/AudioManager;->semGetPinDevice()I

    move-result p1

    .line 1850
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {p0, v1, p3, p2, p1}, Landroid/media/AudioManager;->setFineVolume(IIII)V

    goto :goto_0

    .line 1852
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {p0, v1, p3, p2}, Landroid/media/AudioManager;->semSetFineVolume(III)V

    :goto_0
    return-void
.end method

.method private setFineVolumeForDualAudio(ILjava/lang/String;ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;)V"
        }
    .end annotation

    .line 1836
    invoke-interface {p4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p4

    new-instance v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$$ExternalSyntheticLambda6;

    invoke-direct {v0, p2}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$$ExternalSyntheticLambda6;-><init>(Ljava/lang/String;)V

    .line 1837
    invoke-interface {p4, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p2

    .line 1838
    invoke-interface {p2}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p2

    const/4 p4, 0x0

    invoke-virtual {p2, p4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/bluetooth/BluetoothDevice;

    const/4 p4, 0x3

    if-eqz p2, :cond_0

    .line 1840
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {p0, p2, p4, p3, p1}, Landroid/media/AudioManager;->semSetFineVolume(Landroid/bluetooth/BluetoothDevice;III)V

    goto :goto_0

    .line 1842
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {p0, p4, p3, p1}, Landroid/media/AudioManager;->semSetFineVolume(III)V

    :goto_0
    return-void
.end method

.method private setStreamVolume(IIILjava/lang/String;)V
    .locals 2

    .line 1810
    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_SMART_VIEW:I

    if-ne p1, v0, :cond_0

    return-void

    .line 1813
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->isMediaStream(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1814
    div-int/lit8 p2, p2, 0xa

    .line 1816
    invoke-direct {p0, p4}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->getDualAudioState(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    .line 1817
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1819
    iget-object p1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    .line 1820
    invoke-direct {p0, p3, p4, p2, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->setFineVolumeForDualAudio(ILjava/lang/String;ILjava/util/List;)V

    goto :goto_0

    .line 1822
    :cond_1
    invoke-direct {p0, p1, p3, p2}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->setFineVolume(III)V

    goto :goto_0

    .line 1824
    :cond_2
    sget p4, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_AUDIO_SHARING:I

    if-ne p1, p4, :cond_3

    .line 1825
    iget-boolean p3, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mIsAudioSharingEnabled:Z

    if-eqz p3, :cond_4

    .line 1826
    iget-object p3, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mBluetoothAudioCastWrapper:Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper;

    invoke-virtual {p3, p2}, Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper;->setAudioSharingDeviceVolume(I)V

    const/4 p2, 0x0

    .line 1827
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->onVolumeChangedW(II)Z

    goto :goto_0

    .line 1830
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {p0, p1, p2, p3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    :cond_4
    :goto_0
    return-void
.end method

.method private shouldShowUI(I)Z
    .locals 4

    .line 716
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 717
    invoke-interface {v0}, Lcom/android/systemui/knox/KnoxStateMonitor;->isVolumeDialogEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 718
    sget-object p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->TAG:Ljava/lang/String;

    const-string p1, "KnoxStateMonitor : Disable VolumeDialog"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 722
    :cond_0
    sget-boolean v0, Lcom/android/systemui/BasicRune;->VOLUME_SUB_DISPLAY_VOLUME_DIALOG:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mSemWindowManagerWrapper:Lcom/android/systemui/volume/util/SemWindowManagerWrapper;

    if-eqz v0, :cond_1

    .line 723
    invoke-virtual {v0}, Lcom/android/systemui/volume/util/SemWindowManagerWrapper;->isFolded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mShowVolumeDialog:Z

    if-eqz v0, :cond_1

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_1

    return v2

    .line 728
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->getWakefulness()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    .line 729
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mDeviceInteractive:Z

    if-eqz v0, :cond_2

    and-int/2addr p1, v2

    if-eqz p1, :cond_2

    iget-boolean p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mShowVolumeDialog:Z

    if-eqz p0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method private streamStateW(I)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;
    .locals 1

    .line 867
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget-object v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    if-nez v0, :cond_0

    .line 869
    new-instance v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    invoke-direct {v0}, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;-><init>()V

    .line 870
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget-object p0, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method private updateActiveStreamW(I)Z
    .locals 5

    .line 846
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget v1, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->activeStream:I

    const/4 v2, 0x0

    if-ne p1, v1, :cond_0

    return v2

    .line 847
    :cond_0
    iput p1, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->activeStream:I

    const/4 v0, 0x2

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/Object;

    .line 848
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Lcom/android/systemui/volume/Events;->writeEvent(I[Ljava/lang/Object;)V

    .line 849
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateActiveStreamW "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/16 v0, 0x64

    if-ge p1, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    .line 852
    :goto_0
    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_MULTI_SOUND:I

    if-ne p1, v0, :cond_3

    const/16 p1, 0x2713

    .line 855
    :cond_3
    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_AUDIO_SHARING:I

    if-eq p1, v0, :cond_4

    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_SMART_VIEW:I

    if-eq p1, v0, :cond_4

    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_DUAL_AUDIO:I

    if-ne p1, v0, :cond_5

    :cond_4
    const/4 p1, 0x3

    .line 861
    :cond_5
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_6

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "forceVolumeControlStream "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    :cond_6
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->forceVolumeControlStream(I)V

    return v1
.end method

.method private updateBluetoothDeviceAddressW()Z
    .locals 7

    .line 2010
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->isMultiSoundBT()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_MULTI_SOUND:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->streamStateW(I)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v0

    .line 2011
    sget v1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_DUAL_AUDIO:I

    invoke-direct {p0, v1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->streamStateW(I)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v1

    .line 2015
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget-boolean v2, v2, Lcom/android/systemui/plugins/VolumeDialogController$State;->dualAudio:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_1

    .line 2016
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mBluetoothAdapterManager:Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;

    invoke-virtual {p0}, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;->getConnectedDevicesAddress()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 2017
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v6, 0x2

    if-ne v2, v6, :cond_1

    .line 2018
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/lang/String;

    .line 2019
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object p0, v5

    .line 2023
    :goto_1
    iget-object v2, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->bluetoothDeviceAddress:Ljava/lang/String;

    invoke-static {v5, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->bluetoothDeviceAddress:Ljava/lang/String;

    .line 2024
    invoke-static {p0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v3

    .line 2028
    :cond_2
    iput-object v5, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->bluetoothDeviceAddress:Ljava/lang/String;

    .line 2029
    iput-object p0, v1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->bluetoothDeviceAddress:Ljava/lang/String;

    return v4
.end method

.method private updateBluetoothDeviceNameW()Z
    .locals 7

    .line 2036
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->isMultiSoundBT()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_MULTI_SOUND:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->streamStateW(I)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v0

    .line 2037
    sget v1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_DUAL_AUDIO:I

    invoke-direct {p0, v1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->streamStateW(I)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v1

    .line 2041
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget-boolean v2, v2, Lcom/android/systemui/plugins/VolumeDialogController$State;->dualAudio:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_1

    .line 2042
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mBluetoothAdapterManager:Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;

    invoke-virtual {p0}, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;->getConnectedDevicesName()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 2043
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v6, 0x2

    if-ne v2, v6, :cond_1

    .line 2044
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/lang/String;

    .line 2045
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object p0, v5

    .line 2049
    :goto_1
    iget-object v2, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->bluetoothDeviceName:Ljava/lang/String;

    invoke-static {v5, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->bluetoothDeviceName:Ljava/lang/String;

    .line 2050
    invoke-static {p0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v3

    .line 2054
    :cond_2
    iput-object v5, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->bluetoothDeviceName:Ljava/lang/String;

    .line 2055
    iput-object p0, v1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->bluetoothDeviceName:Ljava/lang/String;

    return v4
.end method

.method private updateEffectsSuppressorW(Landroid/content/ComponentName;)Z
    .locals 3

    .line 957
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget-object v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->effectsSuppressor:Landroid/content/ComponentName;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 958
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iput-object p1, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->effectsSuppressor:Landroid/content/ComponentName;

    .line 959
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 960
    invoke-static {v2, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->getApplicationName(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->effectsSuppressorName:Ljava/lang/String;

    const/16 p1, 0xe

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 961
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget-object v2, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->effectsSuppressor:Landroid/content/ComponentName;

    aput-object v2, v0, v1

    iget-object p0, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->effectsSuppressorName:Ljava/lang/String;

    const/4 v1, 0x1

    aput-object p0, v0, v1

    invoke-static {p1, v0}, Lcom/android/systemui/volume/Events;->writeEvent(I[Ljava/lang/Object;)V

    return v1
.end method

.method private updateRingerModeExternalW(I)Z
    .locals 3

    .line 1016
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget v0, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeExternal:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    return v1

    .line 1017
    :cond_0
    iput p1, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeExternal:I

    const/16 p0, 0xc

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Object;

    .line 1018
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-static {p0, v2}, Lcom/android/systemui/volume/Events;->writeEvent(I[Ljava/lang/Object;)V

    return v0
.end method

.method private updateRingerModeInternalW(I)Z
    .locals 4

    .line 1023
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget v1, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    const/4 v2, 0x0

    if-ne p1, v1, :cond_0

    return v2

    .line 1024
    :cond_0
    iput p1, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    const/16 v0, 0xb

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/Object;

    .line 1025
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-static {v0, v3}, Lcom/android/systemui/volume/Events;->writeEvent(I[Ljava/lang/Object;)V

    .line 1027
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget p1, p1, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 1028
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->playTouchFeedback()V

    :cond_1
    return v1
.end method

.method private updateStreamLevelW(II)Z
    .locals 3

    .line 916
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->streamStateW(I)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object p0

    .line 917
    iget v0, p0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    const/4 v1, 0x0

    if-ne v0, p2, :cond_0

    return v1

    .line 918
    :cond_0
    iput p2, p0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    .line 919
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->isLogWorthy(I)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    const/16 p0, 0xa

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 920
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v0

    invoke-static {p0, v2}, Lcom/android/systemui/volume/Events;->writeEvent(I[Ljava/lang/Object;)V

    :cond_1
    return v0
.end method

.method private updateStreamMuteW(IZ)Z
    .locals 5

    .line 940
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->streamStateW(I)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v0

    .line 941
    iget-boolean v1, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->muted:Z

    const/4 v2, 0x0

    if-ne v1, p2, :cond_0

    return v2

    .line 942
    :cond_0
    iput-boolean p2, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->muted:Z

    .line 943
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->isLogWorthy(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const/16 v0, 0xf

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 944
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-static {v0, v3}, Lcom/android/systemui/volume/Events;->writeEvent(I[Ljava/lang/Object;)V

    :cond_1
    if-eqz p2, :cond_2

    .line 946
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->isRinger(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 947
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mRingerModeObservers:Lcom/android/systemui/volume/VolumeDialogControllerImpl$RingerModeObservers;

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$RingerModeObservers;->access$500(Lcom/android/systemui/volume/VolumeDialogControllerImpl$RingerModeObservers;)Lcom/android/systemui/util/RingerModeLiveData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/util/RingerModeLiveData;->getValue()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->updateRingerModeInternalW(I)Z

    :cond_2
    return v1
.end method

.method private updateStreamRoutedToAppMirroring(IZ)Z
    .locals 2

    .line 1980
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->streamStateW(I)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object p0

    .line 1981
    iget-boolean v0, p0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->appMirroring:Z

    if-ne v0, p2, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1982
    :cond_0
    iput-boolean p2, p0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->appMirroring:Z

    .line 1983
    sget-boolean p0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz p0, :cond_1

    sget-object p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateStreamRoutedToAppMirroring stream="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " appMirroring="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private updateStreamRoutedToBluetoothW(IZ)Z
    .locals 2

    .line 907
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->streamStateW(I)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object p0

    .line 908
    iget-boolean v0, p0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->routedToBluetooth:Z

    if-ne v0, p2, :cond_0

    const/4 p0, 0x0

    return p0

    .line 909
    :cond_0
    iput-boolean p2, p0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->routedToBluetooth:Z

    .line 910
    sget-boolean p0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz p0, :cond_1

    sget-object p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateStreamRoutedToBluetoothW stream="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " routedToBluetooth="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private updateStreamVolume(I)V
    .locals 1

    .line 1962
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->getLastAudibleStreamVolume(I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->updateStreamLevelW(II)Z

    return-void
.end method

.method private updateZenConfig()Z
    .locals 9

    .line 989
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mNoMan:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getConsolidatedNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v0

    .line 990
    iget v1, v0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v2, v1, 0x20

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    and-int/lit8 v5, v1, 0x40

    if-nez v5, :cond_1

    move v5, v3

    goto :goto_1

    :cond_1
    move v5, v4

    :goto_1
    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v4

    .line 998
    :goto_2
    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->areAllPriorityOnlyRingerSoundsMuted(Landroid/app/NotificationManager$Policy;)Z

    move-result v0

    .line 999
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget-boolean v6, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->disallowAlarms:Z

    if-ne v6, v2, :cond_3

    iget-boolean v6, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->disallowMedia:Z

    if-ne v6, v5, :cond_3

    iget-boolean v6, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->disallowRinger:Z

    if-ne v6, v0, :cond_3

    iget-boolean v6, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->disallowSystem:Z

    if-ne v6, v1, :cond_3

    return v4

    .line 1005
    :cond_3
    iput-boolean v2, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->disallowAlarms:Z

    .line 1006
    iput-boolean v5, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->disallowMedia:Z

    .line 1007
    iput-boolean v1, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->disallowSystem:Z

    .line 1008
    iput-boolean v0, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->disallowRinger:Z

    const/16 p0, 0x11

    new-array v6, v3, [Ljava/lang/Object;

    .line 1009
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "disallowAlarms="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " disallowMedia="

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " disallowSystem="

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " disallowRinger="

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v4

    invoke-static {p0, v6}, Lcom/android/systemui/volume/Events;->writeEvent(I[Ljava/lang/Object;)V

    return v3
.end method

.method private updateZenModeW()Z
    .locals 4

    .line 980
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "zen_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 982
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget v1, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->zenMode:I

    if-ne v1, v0, :cond_0

    return v2

    .line 983
    :cond_0
    iput v0, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->zenMode:I

    const/16 p0, 0xd

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/Object;

    .line 984
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v2

    invoke-static {p0, v3}, Lcom/android/systemui/volume/Events;->writeEvent(I[Ljava/lang/Object;)V

    return v1
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;Landroid/os/Handler;)V
    .locals 1

    .line 505
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->add(Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;Landroid/os/Handler;)V

    .line 506
    iget-boolean p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mShowA11yStream:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;->onAccessibilityModeChanged(Ljava/lang/Boolean;)V

    return-void
.end method

.method public areCaptionsEnabled()Z
    .locals 3

    .line 526
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "odi_captions_enabled"

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method protected createMediaSessions(Landroid/content/Context;Landroid/os/Looper;Lcom/android/settingslib/volume/MediaSessions$Callbacks;)Lcom/android/settingslib/volume/MediaSessions;
    .locals 0

    .line 461
    new-instance p0, Lcom/android/settingslib/volume/MediaSessions;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/volume/MediaSessions;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/settingslib/volume/MediaSessions$Callbacks;)V

    return-object p0
.end method

.method public dismiss()V
    .locals 1

    .line 378
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onDismissRequested(I)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 488
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-class p3, Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " state:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  mDestroyed: "

    .line 489
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mDestroyed:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  mVolumePolicy: "

    .line 490
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mVolumePolicy:Landroid/media/VolumePolicy;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string p1, "  mState: "

    .line 491
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    const/4 p3, 0x4

    invoke-virtual {p1, p3}, Lcom/android/systemui/plugins/VolumeDialogController$State;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  mShowDndTile: "

    .line 492
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mShowDndTile:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  mHasVibrator: "

    .line 493
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mHasVibrator:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    .line 494
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mMediaSessionsCallbacksW:Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;->access$300(Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;)Ljava/util/HashMap;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    const-string p3, "  mRemoteStreams: "

    .line 495
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 496
    iget-object p3, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mMediaSessionsCallbacksW:Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;

    invoke-static {p3}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;->access$300(Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;)Ljava/util/HashMap;

    move-result-object p3

    .line 497
    invoke-virtual {p3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p3

    .line 496
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 498
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p1, "  mShowA11yStream: "

    .line 499
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mShowA11yStream:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    .line 500
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 501
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mMediaSessions:Lcom/android/settingslib/volume/MediaSessions;

    invoke-virtual {p0, p2}, Lcom/android/settingslib/volume/MediaSessions;->dump(Ljava/io/PrintWriter;)V

    return-void

    :catchall_0
    move-exception p0

    .line 498
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public getAudioManager()Landroid/media/AudioManager;
    .locals 0

    .line 374
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    return-object p0
.end method

.method protected getAudioManagerStreamMaxVolume(I)I
    .locals 0

    .line 406
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->getStreamMaxVolume(I)I

    move-result p0

    return p0
.end method

.method protected getAudioManagerStreamMinVolume(I)I
    .locals 0

    .line 413
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->getStreamMinVolume(I)I

    move-result p0

    return p0
.end method

.method protected getAudioManagerStreamVolume(I)I
    .locals 0

    .line 399
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->getLastAudibleStreamVolume(I)I

    move-result p0

    return p0
.end method

.method public getCaptionsComponentState(Z)V
    .locals 1

    .line 543
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mDestroyed:Z

    if-eqz v0, :cond_0

    return-void

    .line 544
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mWorker:Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;

    const/16 v0, 0x10

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public getState()V
    .locals 1

    .line 521
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mDestroyed:Z

    if-eqz v0, :cond_0

    return-void

    .line 522
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mWorker:Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public hasVibrator()Z
    .locals 0

    .line 620
    iget-boolean p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mHasVibrator:Z

    return p0
.end method

.method public isAudioDLNAEnabled()Z
    .locals 1

    .line 1754
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mIsSupportTvVolumeControl:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mIsDLNAEnabled:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isAudioSharingEnabled()Z
    .locals 0

    .line 1776
    iget-boolean p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mIsAudioSharingEnabled:Z

    return p0
.end method

.method public isCaptionStreamOptedOut()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isDLNAEnabled()Z
    .locals 0

    .line 1748
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mIsDLNAEnabled:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isSmartViewEnabled()Z
    .locals 1

    .line 1742
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mIsDLNAEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mIsSupportTvVolumeControl:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

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

.method public notifyVisible(Z)V
    .locals 2

    .line 548
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mDestroyed:Z

    if-eqz v0, :cond_0

    return-void

    .line 550
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mIsVolumeDialogShowing:Z

    .line 552
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mWorker:Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;

    const/16 v0, 0xc

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method onVolumeChangedW(II)Z
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 736
    iget-object v2, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mDesktopManagerWrapper:Lcom/android/systemui/volume/util/DesktopManagerWrapper;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/systemui/volume/util/DesktopManagerWrapper;->isStandalone()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mIsVolumeStarEnabled:Z

    if-nez v2, :cond_0

    return v3

    .line 740
    :cond_0
    invoke-direct {v0, v1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->shouldShowUI(I)Z

    move-result v2

    and-int/lit16 v4, v1, 0x1000

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    move v4, v5

    goto :goto_0

    :cond_1
    move v4, v3

    :goto_0
    and-int/lit16 v6, v1, 0x800

    if-eqz v6, :cond_2

    move v6, v5

    goto :goto_1

    :cond_2
    move v6, v3

    :goto_1
    and-int/lit16 v7, v1, 0x80

    if-eqz v7, :cond_3

    move v7, v5

    goto :goto_2

    :cond_3
    move v7, v3

    .line 748
    :goto_2
    iget-object v8, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    const/high16 v9, 0x40000

    and-int/2addr v9, v1

    if-eqz v9, :cond_4

    move v9, v5

    goto :goto_3

    :cond_4
    move v9, v3

    :goto_3
    iput-boolean v9, v8, Lcom/android/systemui/plugins/VolumeDialogController$State;->fixedSCOVolume:Z

    const/high16 v9, 0x4000000

    and-int/2addr v9, v1

    if-eqz v9, :cond_5

    move v9, v5

    goto :goto_4

    :cond_5
    move v9, v3

    .line 749
    :goto_4
    iput-boolean v9, v8, Lcom/android/systemui/plugins/VolumeDialogController$State;->remoteMic:Z

    const/high16 v8, 0x800000

    and-int/2addr v8, v1

    if-eqz v8, :cond_6

    move v8, v5

    goto :goto_5

    :cond_6
    move v8, v3

    :goto_5
    if-eqz v8, :cond_7

    .line 753
    sget v8, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_MULTI_SOUND:I

    goto :goto_6

    :cond_7
    move/from16 v8, p1

    :goto_6
    const/high16 v9, 0x400000

    and-int/2addr v9, v1

    if-eqz v9, :cond_8

    move v9, v5

    goto :goto_7

    :cond_8
    move v9, v3

    :goto_7
    if-eqz v9, :cond_9

    .line 759
    sget v8, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_SMART_VIEW:I

    .line 760
    sget v9, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->FLAG_SMART_VIEW_NONE:I

    iput v9, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mSmartViewFlag:I

    .line 761
    invoke-direct {v0, v8}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->streamStateW(I)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v9

    invoke-virtual {v0, v8}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->getAudioManagerStreamMinVolume(I)I

    move-result v10

    iput v10, v9, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMin:I

    .line 762
    invoke-direct {v0, v8}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->streamStateW(I)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v9

    invoke-virtual {v0, v8}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->getAudioManagerStreamMaxVolume(I)I

    move-result v10

    iput v10, v9, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMax:I

    :cond_9
    const/high16 v9, 0x80000

    and-int/2addr v9, v1

    const/4 v10, 0x2

    if-eqz v9, :cond_a

    .line 767
    iget-object v9, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mBluetoothAdapterManager:Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;

    .line 768
    invoke-virtual {v9}, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;->getConnectedDevices()Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_a

    iget-object v9, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mBluetoothAdapterManager:Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;

    .line 769
    invoke-virtual {v9}, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;->getConnectedDevices()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ne v9, v10, :cond_a

    move v9, v5

    goto :goto_8

    :cond_a
    move v9, v3

    .line 770
    :goto_8
    iget-object v11, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    if-eqz v9, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->shouldDualAudioUIEnabled()Z

    move-result v9

    if-eqz v9, :cond_b

    move v9, v5

    goto :goto_9

    :cond_b
    move v9, v3

    :goto_9
    iput-boolean v9, v11, Lcom/android/systemui/plugins/VolumeDialogController$State;->dualAudio:Z

    .line 771
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->updateBluetoothDeviceAddressW()Z

    move-result v9

    or-int/2addr v9, v3

    .line 772
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->updateBluetoothDeviceNameW()Z

    move-result v11

    or-int/2addr v9, v11

    .line 773
    sget v11, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_DUAL_AUDIO:I

    invoke-virtual {v0, v11}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->getAudioManagerStreamVolume(I)I

    move-result v12

    invoke-direct {v0, v11, v12}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->updateStreamLevelW(II)Z

    move-result v11

    or-int/2addr v9, v11

    .line 774
    sget v11, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_DUAL_AUDIO:I

    invoke-direct {v0, v11}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->checkRoutedToBluetoothW(I)Z

    move-result v11

    or-int/2addr v9, v11

    if-eqz v2, :cond_c

    .line 778
    invoke-direct {v0, v8}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->checkRoutedToBluetoothW(I)Z

    move-result v11

    or-int/2addr v9, v11

    .line 779
    sget v11, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_MUSIC:I

    if-ne v8, v11, :cond_c

    .line 780
    sget v11, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_MULTI_SOUND:I

    invoke-direct {v0, v11}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->checkRoutedToBluetoothW(I)Z

    move-result v11

    or-int/2addr v9, v11

    .line 784
    :cond_c
    sget-boolean v11, Lcom/android/systemui/BasicRune;->VOLUME_HOME_IOT:Z

    if-eqz v11, :cond_11

    .line 785
    invoke-direct {v0, v8}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->streamStateW(I)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v12

    .line 786
    invoke-virtual {v0, v8}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->getAudioManagerStreamVolume(I)I

    move-result v13

    .line 787
    iget v14, v12, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMin:I

    invoke-direct {v0, v8}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->isMediaStream(I)Z

    move-result v15

    if-eqz v15, :cond_d

    div-int/lit8 v15, v13, 0x64

    goto :goto_a

    :cond_d
    move v15, v13

    :goto_a
    if-ne v14, v15, :cond_e

    iget v14, v12, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    if-ne v14, v13, :cond_e

    move v12, v10

    goto :goto_c

    .line 790
    :cond_e
    iget v14, v12, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMax:I

    invoke-direct {v0, v8}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->isMediaStream(I)Z

    move-result v15

    if-eqz v15, :cond_f

    div-int/lit8 v15, v13, 0x64

    goto :goto_b

    :cond_f
    move v15, v13

    :goto_b
    if-ne v14, v15, :cond_10

    iget v14, v12, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    if-ne v14, v13, :cond_10

    const/4 v12, 0x3

    goto :goto_c

    .line 793
    :cond_10
    iget v12, v12, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    if-ge v12, v13, :cond_11

    move v12, v5

    goto :goto_c

    :cond_11
    move v12, v3

    :goto_c
    if-eqz v2, :cond_12

    .line 802
    invoke-direct {v0, v8}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->updateActiveStreamW(I)Z

    move-result v13

    or-int/2addr v9, v13

    .line 804
    :cond_12
    invoke-virtual {v0, v8}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->getAudioManagerStreamVolume(I)I

    move-result v13

    .line 805
    invoke-direct {v0, v8, v13}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->updateStreamLevelW(II)Z

    move-result v14

    or-int/2addr v9, v14

    .line 807
    sget-object v14, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onVolumeChangedW stream = "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", flags = "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", lastAudibleStreamVolume = "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", changed = "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", showUI = "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", dualAudio = "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget-boolean v3, v3, Lcom/android/systemui/plugins/VolumeDialogController$State;->dualAudio:Z

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v9, :cond_13

    .line 812
    iget-object v3, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    iget-object v14, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    invoke-virtual {v3, v14}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onStateChanged(Lcom/android/systemui/plugins/VolumeDialogController$State;)V

    :cond_13
    if-eqz v2, :cond_14

    .line 815
    iget-object v3, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    invoke-virtual {v3, v5}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onShowRequested(I)V

    :cond_14
    if-eqz v6, :cond_15

    .line 818
    iget-object v3, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    invoke-virtual {v3}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onShowVibrateHint()V

    :cond_15
    if-eqz v7, :cond_16

    .line 821
    iget-object v3, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    invoke-virtual {v3}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onShowSilentHint()V

    :cond_16
    const/4 v3, 0x4

    and-int/2addr v1, v3

    if-eqz v1, :cond_17

    move v1, v5

    goto :goto_d

    :cond_17
    const/4 v1, 0x0

    :goto_d
    if-eqz v1, :cond_1a

    if-eqz v11, :cond_19

    .line 827
    invoke-direct {v0, v8}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->isMediaStream(I)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 828
    div-int/lit8 v1, v13, 0x64

    goto :goto_e

    :cond_18
    move v1, v13

    .line 827
    :goto_e
    invoke-direct {v0, v1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->broadcastLights(I)V

    .line 829
    iget-object v1, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    invoke-virtual {v1, v8, v4, v12}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onPlaySound(IZI)V

    goto :goto_f

    .line 831
    :cond_19
    iget-object v1, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    invoke-virtual {v1, v8, v4}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onPlaySound(IZ)V

    :cond_1a
    :goto_f
    if-eqz v4, :cond_1b

    if-eqz v2, :cond_1b

    .line 836
    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mSALoggingWrapper:Lcom/android/systemui/volume/util/SALoggingWrapper;

    sget-object v1, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;->VOLUME_KEY:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/util/SALoggingWrapper;->sendEventLog(Lcom/android/systemui/volume/util/SALoggingWrapper$Event;)V

    :cond_1b
    if-eqz v9, :cond_1c

    if-eqz v4, :cond_1c

    new-array v0, v10, [Ljava/lang/Object;

    .line 840
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {v3, v0}, Lcom/android/systemui/volume/Events;->writeEvent(I[Ljava/lang/Object;)V

    :cond_1c
    return v9
.end method

.method public register()V
    .locals 3

    .line 419
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->setVolumeController()V

    .line 420
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mVolumePolicy:Landroid/media/VolumePolicy;

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->setVolumePolicy(Landroid/media/VolumePolicy;)V

    .line 421
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mShowDndTile:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->showDndTile(Z)V

    .line 423
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mMediaSessions:Lcom/android/settingslib/volume/MediaSessions;

    invoke-virtual {v0}, Lcom/android/settingslib/volume/MediaSessions;->init()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 425
    sget-object v1, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->TAG:Ljava/lang/String;

    const-string v2, "No access to media sessions"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 428
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mBroadcastManager:Lcom/android/systemui/volume/util/BroadcastManager;

    new-instance v1, Lcom/android/systemui/volume/VolumeDialogControllerImpl$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)V

    new-instance v2, Lcom/android/systemui/volume/VolumeDialogControllerImpl$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/volume/util/BroadcastManager;->registerDisplayManagerStateAction(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 432
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mDisplayManagerWrapper:Lcom/android/systemui/volume/util/DisplayManagerWrapper;

    new-instance v1, Lcom/android/systemui/volume/VolumeDialogControllerImpl$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/util/DisplayManagerWrapper;->registerDisplayVolumeListener(Ljava/util/function/Consumer;)V

    .line 443
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mBroadcastManager:Lcom/android/systemui/volume/util/BroadcastManager;

    new-instance v1, Lcom/android/systemui/volume/VolumeDialogControllerImpl$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)V

    new-instance v2, Lcom/android/systemui/volume/VolumeDialogControllerImpl$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/volume/util/BroadcastManager;->registerAudioSharingStateAction(Ljava/util/function/Consumer;Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeCallback(Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;)V
    .locals 0

    .line 517
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->remove(Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;)V

    return-void
.end method

.method public scheduleTouchFeedback()V
    .locals 2

    .line 601
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mLastToggledRingerOn:J

    return-void
.end method

.method public setActiveStream(I)V
    .locals 2

    .line 590
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mDestroyed:Z

    if-eqz v0, :cond_0

    return-void

    .line 591
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mWorker:Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;

    const/16 v0, 0xb

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method protected setAudioManagerStreamVolume(III)V
    .locals 1

    const/4 v0, 0x0

    .line 391
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->setStreamVolume(IIILjava/lang/String;)V

    return-void
.end method

.method public setCaptionsEnabled(Z)V
    .locals 2

    .line 532
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, -0x2

    const-string/jumbo v1, "odi_captions_enabled"

    invoke-static {p0, v1, p1, v0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public setEnableDialogs(ZZ)V
    .locals 0

    .line 595
    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mShowVolumeDialog:Z

    .line 596
    iput-boolean p2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mShowSafetyWarning:Z

    return-void
.end method

.method public setRingerMode(IZ)V
    .locals 1

    .line 562
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mDestroyed:Z

    if-eqz v0, :cond_0

    return-void

    .line 563
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mWorker:Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setSafeVolumeDialogShowing(Z)V
    .locals 1

    .line 1767
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudioService:Landroid/media/IAudioService;

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mVolumeController:Lcom/android/systemui/volume/VolumeDialogControllerImpl$VC;

    invoke-interface {v0, p0, p1}, Landroid/media/IAudioService;->notifySafetyVolumeDialogVisible(Landroid/media/IVolumeController;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public setStreamVolume(II)V
    .locals 2

    .line 582
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mDestroyed:Z

    if-eqz v0, :cond_0

    return-void

    .line 584
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mWorker:Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 586
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mWorker:Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;

    invoke-virtual {p0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setStreamVolumeDualAudio(IILjava/lang/String;)V
    .locals 2

    .line 2063
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mDestroyed:Z

    if-eqz v0, :cond_0

    return-void

    .line 2064
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mWorker:Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2065
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mWorker:Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;

    invoke-virtual {p0, v1, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setUserActivityListener(Lcom/android/systemui/volume/VolumeDialogControllerImpl$UserActivityListener;)V
    .locals 1

    .line 510
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mDestroyed:Z

    if-eqz v0, :cond_0

    return-void

    .line 511
    :cond_0
    monitor-enter p0

    .line 512
    :try_start_0
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mUserActivityListener:Lcom/android/systemui/volume/VolumeDialogControllerImpl$UserActivityListener;

    .line 513
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected setVolumeController()V
    .locals 2

    .line 383
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mVolumeController:Lcom/android/systemui/volume/VolumeDialogControllerImpl$VC;

    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->setVolumeController(Landroid/media/IVolumeController;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 385
    sget-object v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->TAG:Ljava/lang/String;

    const-string v1, "Unable to set the volume controller"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setVolumePolicy(Landroid/media/VolumePolicy;)V
    .locals 0

    .line 450
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mVolumePolicy:Landroid/media/VolumePolicy;

    if-nez p1, :cond_0

    return-void

    .line 453
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->setVolumePolicy(Landroid/media/VolumePolicy;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 455
    :catch_0
    sget-object p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->TAG:Ljava/lang/String;

    const-string p1, "No volume policy api"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method protected shouldDualAudioUIEnabled()Z
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1991
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->semGetCurrentDeviceType()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    .line 1992
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mSoundAssistantManagerWrapper:Lcom/android/systemui/volume/util/SoundAssistantManagerWrapper;

    if-eqz v1, :cond_0

    .line 1993
    invoke-virtual {v1}, Lcom/android/systemui/volume/util/SoundAssistantManagerWrapper;->isMultiSoundOn()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mSoundAssistantManagerWrapper:Lcom/android/systemui/volume/util/SoundAssistantManagerWrapper;

    .line 1994
    invoke-virtual {p0}, Lcom/android/systemui/volume/util/SoundAssistantManagerWrapper;->getMultiSoundDevice()I

    move-result p0

    if-eq v0, p0, :cond_0

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

.method public showDndTile(Z)V
    .locals 2

    .line 1077
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showDndTile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/android/systemui/qs/tiles/DndTile;->setVisible(Landroid/content/Context;Z)V

    return-void
.end method

.method public supportTvVolumeControl()Z
    .locals 0

    .line 1760
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mIsSupportTvVolumeControl:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public userActivity()V
    .locals 2

    .line 556
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mDestroyed:Z

    if-eqz v0, :cond_0

    return-void

    .line 557
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mWorker:Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 558
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mWorker:Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public vibrate(Landroid/os/VibrationEffect;)V
    .locals 1

    .line 615
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mVibrator:Ljava/util/Optional;

    new-instance v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$$ExternalSyntheticLambda1;-><init>(Landroid/os/VibrationEffect;)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method
