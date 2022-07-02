.class public Lcom/android/systemui/volume/util/BroadcastManager;
.super Ljava/lang/Object;
.source "BroadcastManager.java"


# instance fields
.field private mAllSoundOffBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mAudioSharingBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field private final mContext:Landroid/content/Context;

.field private mDisplayManagerBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mDualPlayModeBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

.field private mMirrorLinkBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mOpenThemeBroadcastReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/basic/util/LogWrapper;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/systemui/volume/util/BroadcastManager;->mContext:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcom/android/systemui/volume/util/BroadcastManager;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    .line 43
    iput-object p3, p0, Lcom/android/systemui/volume/util/BroadcastManager;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/volume/util/BroadcastManager;)Lcom/android/systemui/basic/util/LogWrapper;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/android/systemui/volume/util/BroadcastManager;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    return-object p0
.end method


# virtual methods
.method public registerAllSoundOffAction(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 121
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.settings.ALL_SOUND_MUTE"

    .line 122
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 124
    new-instance v1, Lcom/android/systemui/volume/util/BroadcastManager$3;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/volume/util/BroadcastManager$3;-><init>(Lcom/android/systemui/volume/util/BroadcastManager;Ljava/util/function/Consumer;)V

    iput-object v1, p0, Lcom/android/systemui/volume/util/BroadcastManager;->mAllSoundOffBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 135
    iget-object p0, p0, Lcom/android/systemui/volume/util/BroadcastManager;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public registerAudioSharingStateAction(Ljava/util/function/Consumer;Ljava/lang/Runnable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 84
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.android.bluetooth.audiocast.action.device.AUDIO_SHARING_MODE_CHANGED"

    .line 85
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.bluetooth.audiocast.action.device.AUDIO_SHARING_DEVICE_VOLUME_CHANGED"

    .line 86
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 88
    new-instance v1, Lcom/android/systemui/volume/util/BroadcastManager$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/volume/util/BroadcastManager$2;-><init>(Lcom/android/systemui/volume/util/BroadcastManager;Ljava/util/function/Consumer;Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/android/systemui/volume/util/BroadcastManager;->mAudioSharingBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 110
    iget-object p0, p0, Lcom/android/systemui/volume/util/BroadcastManager;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public registerDisplayManagerStateAction(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 47
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.intent.action.WIFI_DISPLAY_SOURCE_STATE"

    .line 48
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.intent.action.DLNA_STATUS_CHANGED"

    .line 49
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.intent.action.WIFI_DISPLAY_VOLUME_SUPPORT_CHANGED"

    .line 50
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 52
    new-instance v1, Lcom/android/systemui/volume/util/BroadcastManager$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/volume/util/BroadcastManager$1;-><init>(Lcom/android/systemui/volume/util/BroadcastManager;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    iput-object v1, p0, Lcom/android/systemui/volume/util/BroadcastManager;->mDisplayManagerBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 73
    iget-object p0, p0, Lcom/android/systemui/volume/util/BroadcastManager;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public registerDualPlayModeAction(Ljava/lang/Runnable;)V
    .locals 2

    .line 176
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.bluetooth.a2dp.intent.action.DUAL_PLAY_MODE_ENABLED"

    .line 177
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 179
    new-instance v1, Lcom/android/systemui/volume/util/BroadcastManager$6;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/volume/util/BroadcastManager$6;-><init>(Lcom/android/systemui/volume/util/BroadcastManager;Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/android/systemui/volume/util/BroadcastManager;->mDualPlayModeBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 190
    iget-object p0, p0, Lcom/android/systemui/volume/util/BroadcastManager;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public registerMirrorLinkAction(Ljava/lang/Runnable;)V
    .locals 2

    .line 139
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.android.mirrorlink.ML_STATE"

    .line 140
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 142
    new-instance v1, Lcom/android/systemui/volume/util/BroadcastManager$4;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/volume/util/BroadcastManager$4;-><init>(Lcom/android/systemui/volume/util/BroadcastManager;Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/android/systemui/volume/util/BroadcastManager;->mMirrorLinkBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 153
    iget-object p0, p0, Lcom/android/systemui/volume/util/BroadcastManager;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public registerOpenThemeChangedAction(Ljava/lang/Runnable;)V
    .locals 2

    .line 158
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.android.theme.themecenter.THEME_APPLY"

    .line 159
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 161
    new-instance v1, Lcom/android/systemui/volume/util/BroadcastManager$5;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/volume/util/BroadcastManager$5;-><init>(Lcom/android/systemui/volume/util/BroadcastManager;Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/android/systemui/volume/util/BroadcastManager;->mOpenThemeBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 172
    iget-object p0, p0, Lcom/android/systemui/volume/util/BroadcastManager;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public sendSystemDialogsCloseAction()V
    .locals 2

    .line 217
    iget-object p0, p0, Lcom/android/systemui/volume/util/BroadcastManager;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public unregisterBroadcastReceiver()V
    .locals 3

    .line 194
    iget-object v0, p0, Lcom/android/systemui/volume/util/BroadcastManager;->mAllSoundOffBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 195
    iget-object v2, p0, Lcom/android/systemui/volume/util/BroadcastManager;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-virtual {v2, v0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 196
    iput-object v1, p0, Lcom/android/systemui/volume/util/BroadcastManager;->mAllSoundOffBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/util/BroadcastManager;->mMirrorLinkBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 200
    iget-object v2, p0, Lcom/android/systemui/volume/util/BroadcastManager;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-virtual {v2, v0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 201
    iput-object v1, p0, Lcom/android/systemui/volume/util/BroadcastManager;->mMirrorLinkBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/util/BroadcastManager;->mOpenThemeBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    .line 205
    iget-object v2, p0, Lcom/android/systemui/volume/util/BroadcastManager;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-virtual {v2, v0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 206
    iput-object v1, p0, Lcom/android/systemui/volume/util/BroadcastManager;->mOpenThemeBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 209
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/volume/util/BroadcastManager;->mDualPlayModeBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_3

    .line 210
    iget-object v2, p0, Lcom/android/systemui/volume/util/BroadcastManager;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-virtual {v2, v0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 211
    iput-object v1, p0, Lcom/android/systemui/volume/util/BroadcastManager;->mDualPlayModeBroadcastReceiver:Landroid/content/BroadcastReceiver;

    :cond_3
    return-void
.end method
