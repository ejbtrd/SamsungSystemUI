.class public Lcom/android/systemui/power/PowerUI;
.super Lcom/android/systemui/SystemUI;
.source "PowerUI.java"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
.implements Lcom/android/systemui/power/ChargerAnimationView$ChargerAnimationListener;
.implements Lcom/android/systemui/power/WirelessMisalignListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/power/PowerUI$UsbThermalEventListener;,
        Lcom/android/systemui/power/PowerUI$SkinThermalEventListener;,
        Lcom/android/systemui/power/PowerUI$WarningsUI;,
        Lcom/android/systemui/power/PowerUI$Receiver;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field private static final SIX_HOURS_MILLIS:J


# instance fields
.field private mBatteryChargingType:I

.field mBatteryCurrentEvent:I

.field private mBatteryHealth:I

.field private mBatteryHealthInterruptionPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mBatteryHealthInterruptionScreenDimWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mBatteryHighVoltageCharger:Z

.field mBatteryLevel:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mBatteryMiscEvent:I

.field private mBatteryOnline:I

.field private mBatteryOverheatLevel:I

.field private mBatterySlowCharger:Z

.field mBatteryStatus:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mBatterySwellingMode:I

.field private mBatteryWaterConnector:Z

.field private mBootCompleted:Z

.field private final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field private mCallState:I

.field private mChargerAnimationView:Lcom/android/systemui/power/ChargerAnimationView;

.field private mChargerAnimationWindowLp:Landroid/view/WindowManager$LayoutParams;

.field private mChargerAnimationWindowManager:Landroid/view/WindowManager;

.field private final mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field mCurrentBatteryStateSnapshot:Lcom/android/systemui/power/BatteryStateSnapshot;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mDismissBatteryHealthInterruptionWarning:Z

.field private mEnableSkinTemperatureWarning:Z

.field private mEnableUsbTemperatureAlarm:Z

.field private mEnhancedEstimates:Lcom/android/systemui/power/EnhancedEstimates;

.field private mFullyConnected:Z

.field protected final mHandler:Landroid/os/Handler;

.field private mInvalidCharger:I

.field private mIsChargerAnimationPlaying:Z

.field private mIsDeviceMoving:Z

.field private mIsHiccupState:Z

.field private mIsMotionDetectionSupported:Z

.field private mIsProtectingBatteryCutOffSettingEnabled:Z

.field private mIsRunningLowBatteryTask:Z

.field private mIsRunningOverheatWarningTask:Z

.field private mIsRunningStopPowerSoundTask:Z

.field private mIsSContextEnabled:Z

.field private mIsSContextListenerRigstered:Z

.field private mIsScreenOn:Z

.field private mIsShutdownTaskDelayed:Z

.field private mIsWirelessMisalignTask:Z

.field mLastBatteryStateSnapshot:Lcom/android/systemui/power/BatteryStateSnapshot;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mLastConfiguration:Landroid/content/res/Configuration;

.field private mLastShowWarningTask:Ljava/util/concurrent/Future;

.field private mLowBatteryAlertCloseLevel:I

.field private final mLowBatteryReminderLevels:[I

.field mLowBatteryWarningTask:Ljava/lang/Runnable;

.field mLowWarningShownThisChargeCycle:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mOverheatShutdownWarningTask:Ljava/lang/Runnable;

.field private mOverlayView:Lcom/android/systemui/power/InattentiveSleepWarningView;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field protected mPlugType:I

.field private mPluginAODManagerLazy:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/doze/PluginAODManager;",
            ">;"
        }
    .end annotation
.end field

.field private mPowerManager:Landroid/os/PowerManager;

.field final mReceiver:Lcom/android/systemui/power/PowerUI$Receiver;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mSContextListener:Landroid/hardware/scontext/SContextListener;

.field private mSContextManager:Landroid/hardware/scontext/SContextManager;

.field private mSIOPLevel:I

.field protected mScreenOffTime:J

.field mScreenOnOffCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field mSevereWarningShownThisChargeCycle:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mSkinThermalEventListener:Landroid/os/IThermalEventListener;

.field private final mStatusBarLazy:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;"
        }
    .end annotation
.end field

.field mStopPowerSoundTask:Ljava/lang/Runnable;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTemperatureHiccupState:Z

.field mThermalService:Landroid/os/IThermalService;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mTurnOffPsmLevel:I

.field private mUltraFastCharger:I

.field private mUsbThermalEventListener:Landroid/os/IThermalEventListener;

.field private mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

.field private mWirelessFodState:Z

.field mWirelessMisalignTimeoutTask:Ljava/lang/Runnable;

.field private mWirelessMisalignView:Lcom/android/systemui/power/WirelessMisalignView;

.field private mWirelessMisalignWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWirelessMisalignWindowLp:Landroid/view/WindowManager$LayoutParams;

.field private mWirelessMisalignWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static synthetic $r8$lambda$RV10pGPWbWiFRF4HsbLl2gxn-Hs(Lcom/android/systemui/power/PowerUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->initThermalEventListeners()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string v0, "PowerUI"

    const/4 v1, 0x3

    .line 99
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/power/PowerUI;->DEBUG:Z

    const-wide/16 v0, 0x6

    .line 105
    invoke-static {v0, v1}, Ljava/time/Duration;->ofHours(J)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/systemui/power/PowerUI;->SIX_HOURS_MILLIS:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/statusbar/CommandQueue;Ldagger/Lazy;Ldagger/Lazy;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            "Lcom/android/systemui/statusbar/CommandQueue;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/doze/PluginAODManager;",
            ">;)V"
        }
    .end annotation

    .line 351
    invoke-direct {p0, p1}, Lcom/android/systemui/SystemUI;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 111
    iput-boolean p1, p0, Lcom/android/systemui/power/PowerUI;->mIsProtectingBatteryCutOffSettingEnabled:Z

    .line 114
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    .line 115
    new-instance v0, Lcom/android/systemui/power/PowerUI$Receiver;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/PowerUI$Receiver;-><init>(Lcom/android/systemui/power/PowerUI;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mReceiver:Lcom/android/systemui/power/PowerUI$Receiver;

    .line 121
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLastConfiguration:Landroid/content/res/Configuration;

    const/4 v0, -0x1

    .line 122
    iput v0, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    .line 123
    iput p1, p0, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 130
    iput-object v1, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    const-wide/16 v1, -0x1

    .line 132
    iput-wide v1, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    const/16 v1, 0x64

    .line 145
    iput v1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    const/4 v1, 0x1

    .line 147
    iput v1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    .line 160
    iput-boolean p1, p0, Lcom/android/systemui/power/PowerUI;->mIsRunningLowBatteryTask:Z

    .line 170
    iput-boolean p1, p0, Lcom/android/systemui/power/PowerUI;->mIsRunningStopPowerSoundTask:Z

    .line 195
    iput-boolean p1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHighVoltageCharger:Z

    .line 196
    iput-boolean v1, p0, Lcom/android/systemui/power/PowerUI;->mFullyConnected:Z

    .line 197
    iput-boolean p1, p0, Lcom/android/systemui/power/PowerUI;->mBatterySlowCharger:Z

    .line 199
    iput p1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    .line 200
    iput v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    .line 215
    iput-boolean p1, p0, Lcom/android/systemui/power/PowerUI;->mIsChargerAnimationPlaying:Z

    const/4 v2, 0x0

    .line 219
    iput-object v2, p0, Lcom/android/systemui/power/PowerUI;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    .line 221
    iput-boolean p1, p0, Lcom/android/systemui/power/PowerUI;->mIsMotionDetectionSupported:Z

    .line 222
    iput-boolean p1, p0, Lcom/android/systemui/power/PowerUI;->mIsSContextEnabled:Z

    .line 223
    iput-boolean p1, p0, Lcom/android/systemui/power/PowerUI;->mIsSContextListenerRigstered:Z

    .line 224
    iput-boolean v1, p0, Lcom/android/systemui/power/PowerUI;->mIsDeviceMoving:Z

    .line 238
    iput p1, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingMode:I

    .line 250
    iput-boolean p1, p0, Lcom/android/systemui/power/PowerUI;->mWirelessFodState:Z

    .line 256
    iput-boolean p1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryWaterConnector:Z

    .line 257
    iput-boolean p1, p0, Lcom/android/systemui/power/PowerUI;->mIsHiccupState:Z

    .line 264
    iput-boolean p1, p0, Lcom/android/systemui/power/PowerUI;->mTemperatureHiccupState:Z

    .line 278
    iput-boolean p1, p0, Lcom/android/systemui/power/PowerUI;->mIsWirelessMisalignTask:Z

    .line 279
    iput-boolean p1, p0, Lcom/android/systemui/power/PowerUI;->mDismissBatteryHealthInterruptionWarning:Z

    .line 281
    iput v1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    .line 305
    iput-boolean p1, p0, Lcom/android/systemui/power/PowerUI;->mIsRunningOverheatWarningTask:Z

    .line 306
    iput-boolean p1, p0, Lcom/android/systemui/power/PowerUI;->mIsShutdownTaskDelayed:Z

    .line 308
    iput v0, p0, Lcom/android/systemui/power/PowerUI;->mSIOPLevel:I

    .line 309
    iput v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOverheatLevel:I

    .line 310
    iput p1, p0, Lcom/android/systemui/power/PowerUI;->mCallState:I

    .line 327
    iput-boolean p1, p0, Lcom/android/systemui/power/PowerUI;->mBootCompleted:Z

    .line 330
    iput-boolean p1, p0, Lcom/android/systemui/power/PowerUI;->mIsScreenOn:Z

    .line 334
    iput p1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryCurrentEvent:I

    .line 340
    iput p1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryMiscEvent:I

    .line 343
    iput v0, p0, Lcom/android/systemui/power/PowerUI;->mTurnOffPsmLevel:I

    .line 1298
    new-instance p1, Lcom/android/systemui/power/PowerUI$5;

    invoke-direct {p1, p0}, Lcom/android/systemui/power/PowerUI$5;-><init>(Lcom/android/systemui/power/PowerUI;)V

    iput-object p1, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryWarningTask:Ljava/lang/Runnable;

    .line 1345
    new-instance p1, Lcom/android/systemui/power/PowerUI$6;

    invoke-direct {p1, p0}, Lcom/android/systemui/power/PowerUI$6;-><init>(Lcom/android/systemui/power/PowerUI;)V

    iput-object p1, p0, Lcom/android/systemui/power/PowerUI;->mStopPowerSoundTask:Ljava/lang/Runnable;

    .line 1480
    new-instance p1, Lcom/android/systemui/power/PowerUI$7;

    invoke-direct {p1, p0}, Lcom/android/systemui/power/PowerUI$7;-><init>(Lcom/android/systemui/power/PowerUI;)V

    iput-object p1, p0, Lcom/android/systemui/power/PowerUI;->mWirelessMisalignTimeoutTask:Ljava/lang/Runnable;

    .line 1804
    new-instance p1, Lcom/android/systemui/power/PowerUI$8;

    invoke-direct {p1, p0}, Lcom/android/systemui/power/PowerUI$8;-><init>(Lcom/android/systemui/power/PowerUI;)V

    iput-object p1, p0, Lcom/android/systemui/power/PowerUI;->mOverheatShutdownWarningTask:Ljava/lang/Runnable;

    .line 1816
    new-instance p1, Lcom/android/systemui/power/PowerUI$9;

    invoke-direct {p1, p0}, Lcom/android/systemui/power/PowerUI$9;-><init>(Lcom/android/systemui/power/PowerUI;)V

    iput-object p1, p0, Lcom/android/systemui/power/PowerUI;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 1949
    new-instance p1, Lcom/android/systemui/power/PowerUI$10;

    invoke-direct {p1, p0}, Lcom/android/systemui/power/PowerUI$10;-><init>(Lcom/android/systemui/power/PowerUI;)V

    iput-object p1, p0, Lcom/android/systemui/power/PowerUI;->mSContextListener:Landroid/hardware/scontext/SContextListener;

    .line 2188
    new-instance p1, Lcom/android/systemui/power/PowerUI$12;

    invoke-direct {p1, p0}, Lcom/android/systemui/power/PowerUI$12;-><init>(Lcom/android/systemui/power/PowerUI;)V

    iput-object p1, p0, Lcom/android/systemui/power/PowerUI;->mScreenOnOffCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 352
    iput-object p2, p0, Lcom/android/systemui/power/PowerUI;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 353
    iput-object p3, p0, Lcom/android/systemui/power/PowerUI;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 354
    iput-object p4, p0, Lcom/android/systemui/power/PowerUI;->mStatusBarLazy:Ldagger/Lazy;

    .line 356
    iput-object p5, p0, Lcom/android/systemui/power/PowerUI;->mPluginAODManagerLazy:Ldagger/Lazy;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/power/PowerUI;)Landroid/content/Context;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/broadcast/BroadcastDispatcher;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/android/systemui/power/PowerUI;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/android/systemui/power/PowerUI;Z)Z
    .locals 0

    .line 95
    iput-boolean p1, p0, Lcom/android/systemui/power/PowerUI;->mBatterySlowCharger:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/power/PowerUI;)I
    .locals 0

    .line 95
    iget p0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    return p0
.end method

.method static synthetic access$1102(Lcom/android/systemui/power/PowerUI;I)I
    .locals 0

    .line 95
    iput p1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    return p1
.end method

.method static synthetic access$1200(Lcom/android/systemui/power/PowerUI;)I
    .locals 0

    .line 95
    iget p0, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingMode:I

    return p0
.end method

.method static synthetic access$1202(Lcom/android/systemui/power/PowerUI;I)I
    .locals 0

    .line 95
    iput p1, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingMode:I

    return p1
.end method

.method static synthetic access$1302(Lcom/android/systemui/power/PowerUI;I)I
    .locals 0

    .line 95
    iput p1, p0, Lcom/android/systemui/power/PowerUI;->mUltraFastCharger:I

    return p1
.end method

.method static synthetic access$1400(Lcom/android/systemui/power/PowerUI;)I
    .locals 0

    .line 95
    iget p0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryAlertCloseLevel:I

    return p0
.end method

.method static synthetic access$1500(Lcom/android/systemui/power/PowerUI;)[I
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/android/systemui/power/PowerUI;)Ljava/util/concurrent/Future;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/android/systemui/power/PowerUI;->mLastShowWarningTask:Ljava/util/concurrent/Future;

    return-object p0
.end method

.method static synthetic access$1702(Lcom/android/systemui/power/PowerUI;Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/android/systemui/power/PowerUI;->mLastShowWarningTask:Ljava/util/concurrent/Future;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/systemui/power/PowerUI;I)V
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Lcom/android/systemui/power/PowerUI;->checkConnectedChargerStatus(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/systemui/power/PowerUI;ZII)V
    .locals 0

    .line 95
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/power/PowerUI;->playChargerConnectionAnimation(ZII)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/power/PowerUI;)Landroid/content/Context;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/android/systemui/power/PowerUI;ZII)V
    .locals 0

    .line 95
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/power/PowerUI;->playChargerConnectionSound(ZII)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/systemui/power/PowerUI;I)V
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Lcom/android/systemui/power/PowerUI;->checkWirelessMisalign(I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/systemui/power/PowerUI;III)V
    .locals 0

    .line 95
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/power/PowerUI;->showChargingNotice(III)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/systemui/power/PowerUI;II)V
    .locals 0

    .line 95
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/power/PowerUI;->checkBatterySwellingStatus(II)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/systemui/power/PowerUI;IIZ)V
    .locals 0

    .line 95
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/power/PowerUI;->checkBatteryHealthInterruptionStatus(IIZ)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/systemui/power/PowerUI;I)V
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Lcom/android/systemui/power/PowerUI;->checkIncompatibleChargerConnection(I)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/systemui/power/PowerUI;Landroid/content/Intent;)V
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Lcom/android/systemui/power/PowerUI;->checkPowerSharingCableStatus(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/systemui/power/PowerUI;I)V
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Lcom/android/systemui/power/PowerUI;->checkFullBatteryStatus(I)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/systemui/power/PowerUI;III)V
    .locals 0

    .line 95
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/power/PowerUI;->sendLowBatteryDumpIfNeeded(III)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/systemui/power/PowerUI;I)V
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Lcom/android/systemui/power/PowerUI;->checkHVchargerEnableConnection(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/power/PowerUI;)Landroid/content/Context;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/android/systemui/power/PowerUI;I)V
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Lcom/android/systemui/power/PowerUI;->checkAbnormalChargingPad(I)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/systemui/power/PowerUI;I)V
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Lcom/android/systemui/power/PowerUI;->checkTipsNotification(I)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/systemui/power/PowerUI;I)V
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Lcom/android/systemui/power/PowerUI;->checkTurnOffPsmNotification(I)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/systemui/power/PowerUI;)V
    .locals 0

    .line 95
    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->updateBatteryNotificationLanguage()V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/systemui/power/PowerUI;Landroid/content/Intent;)V
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Lcom/android/systemui/power/PowerUI;->checkWirelessChargingFodStatus(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/systemui/power/PowerUI;Landroid/content/Intent;)V
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Lcom/android/systemui/power/PowerUI;->checkWaterDetectionStatus(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/systemui/power/PowerUI;Landroid/content/Intent;)V
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Lcom/android/systemui/power/PowerUI;->checkUsbDamageDetectionStatus(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/systemui/power/PowerUI;Landroid/content/Intent;)V
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Lcom/android/systemui/power/PowerUI;->checkCoolDownStatus(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/systemui/power/PowerUI;)V
    .locals 0

    .line 95
    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->checkOverheatShutdownHappened()V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/systemui/power/PowerUI;)Landroid/content/Context;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/power/PowerUI;)I
    .locals 0

    .line 95
    iget p0, p0, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    return p0
.end method

.method static synthetic access$4000(Lcom/android/systemui/power/PowerUI;)Landroid/content/Context;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$402(Lcom/android/systemui/power/PowerUI;I)I
    .locals 0

    .line 95
    iput p1, p0, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    return p1
.end method

.method static synthetic access$4100(Lcom/android/systemui/power/PowerUI;)Landroid/content/Context;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$4302(Lcom/android/systemui/power/PowerUI;Z)Z
    .locals 0

    .line 95
    iput-boolean p1, p0, Lcom/android/systemui/power/PowerUI;->mIsRunningLowBatteryTask:Z

    return p1
.end method

.method static synthetic access$4402(Lcom/android/systemui/power/PowerUI;Z)Z
    .locals 0

    .line 95
    iput-boolean p1, p0, Lcom/android/systemui/power/PowerUI;->mIsRunningStopPowerSoundTask:Z

    return p1
.end method

.method static synthetic access$4500(Lcom/android/systemui/power/PowerUI;)Z
    .locals 0

    .line 95
    iget-boolean p0, p0, Lcom/android/systemui/power/PowerUI;->mIsWirelessMisalignTask:Z

    return p0
.end method

.method static synthetic access$4600(Lcom/android/systemui/power/PowerUI;)V
    .locals 0

    .line 95
    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->removeChargerView()V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/systemui/power/PowerUI;)V
    .locals 0

    .line 95
    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->removeMisalignView()V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/systemui/power/PowerUI;)I
    .locals 0

    .line 95
    iget p0, p0, Lcom/android/systemui/power/PowerUI;->mCallState:I

    return p0
.end method

.method static synthetic access$4802(Lcom/android/systemui/power/PowerUI;I)I
    .locals 0

    .line 95
    iput p1, p0, Lcom/android/systemui/power/PowerUI;->mCallState:I

    return p1
.end method

.method static synthetic access$4900(Lcom/android/systemui/power/PowerUI;)Z
    .locals 0

    .line 95
    iget-boolean p0, p0, Lcom/android/systemui/power/PowerUI;->mIsShutdownTaskDelayed:Z

    return p0
.end method

.method static synthetic access$4902(Lcom/android/systemui/power/PowerUI;Z)Z
    .locals 0

    .line 95
    iput-boolean p1, p0, Lcom/android/systemui/power/PowerUI;->mIsShutdownTaskDelayed:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/power/PowerUI;I)I
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Lcom/android/systemui/power/PowerUI;->findBatteryLevelBucket(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$5000(Lcom/android/systemui/power/PowerUI;)I
    .locals 0

    .line 95
    iget p0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOverheatLevel:I

    return p0
.end method

.method static synthetic access$5102(Lcom/android/systemui/power/PowerUI;Z)Z
    .locals 0

    .line 95
    iput-boolean p1, p0, Lcom/android/systemui/power/PowerUI;->mIsDeviceMoving:Z

    return p1
.end method

.method static synthetic access$5200(Lcom/android/systemui/power/PowerUI;)Z
    .locals 0

    .line 95
    iget-boolean p0, p0, Lcom/android/systemui/power/PowerUI;->mIsSContextListenerRigstered:Z

    return p0
.end method

.method static synthetic access$5202(Lcom/android/systemui/power/PowerUI;Z)Z
    .locals 0

    .line 95
    iput-boolean p1, p0, Lcom/android/systemui/power/PowerUI;->mIsSContextListenerRigstered:Z

    return p1
.end method

.method static synthetic access$5300(Lcom/android/systemui/power/PowerUI;)I
    .locals 0

    .line 95
    iget p0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    return p0
.end method

.method static synthetic access$5400(Lcom/android/systemui/power/PowerUI;)Landroid/hardware/scontext/SContextListener;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/android/systemui/power/PowerUI;->mSContextListener:Landroid/hardware/scontext/SContextListener;

    return-object p0
.end method

.method static synthetic access$5500(Lcom/android/systemui/power/PowerUI;)Landroid/hardware/scontext/SContextManager;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/android/systemui/power/PowerUI;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    return-object p0
.end method

.method static synthetic access$5602(Lcom/android/systemui/power/PowerUI;I)I
    .locals 0

    .line 95
    iput p1, p0, Lcom/android/systemui/power/PowerUI;->mTurnOffPsmLevel:I

    return p1
.end method

.method static synthetic access$5702(Lcom/android/systemui/power/PowerUI;Z)Z
    .locals 0

    .line 95
    iput-boolean p1, p0, Lcom/android/systemui/power/PowerUI;->mIsScreenOn:Z

    return p1
.end method

.method static synthetic access$5800(Lcom/android/systemui/power/PowerUI;)Ldagger/Lazy;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/android/systemui/power/PowerUI;->mStatusBarLazy:Ldagger/Lazy;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/power/PowerUI;)I
    .locals 0

    .line 95
    iget p0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    return p0
.end method

.method static synthetic access$602(Lcom/android/systemui/power/PowerUI;I)I
    .locals 0

    .line 95
    iput p1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/systemui/power/PowerUI;)Z
    .locals 0

    .line 95
    iget-boolean p0, p0, Lcom/android/systemui/power/PowerUI;->mFullyConnected:Z

    return p0
.end method

.method static synthetic access$702(Lcom/android/systemui/power/PowerUI;Z)Z
    .locals 0

    .line 95
    iput-boolean p1, p0, Lcom/android/systemui/power/PowerUI;->mFullyConnected:Z

    return p1
.end method

.method static synthetic access$802(Lcom/android/systemui/power/PowerUI;Z)Z
    .locals 0

    .line 95
    iput-boolean p1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHighVoltageCharger:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/systemui/power/PowerUI;)Z
    .locals 0

    .line 95
    iget-boolean p0, p0, Lcom/android/systemui/power/PowerUI;->mBootCompleted:Z

    return p0
.end method

.method static synthetic access$902(Lcom/android/systemui/power/PowerUI;Z)Z
    .locals 0

    .line 95
    iput-boolean p1, p0, Lcom/android/systemui/power/PowerUI;->mBootCompleted:Z

    return p1
.end method

.method private checkAbnormalChargingPad(I)V
    .locals 2

    const/high16 v0, 0x200000

    and-int/2addr p1, v0

    if-nez p1, :cond_0

    .line 2026
    iget v1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryMiscEvent:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    .line 2028
    iget-object p0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {p0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showAbnormalPadNotification()V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 2029
    iget p1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryMiscEvent:I

    and-int/2addr p1, v0

    if-nez p1, :cond_1

    .line 2031
    iget-object p0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {p0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissAbnormalPadNotification()V

    :cond_1
    :goto_0
    return-void
.end method

.method private checkBatteryHealthInterruptionStatus(IIZ)V
    .locals 12

    .line 1677
    iget p1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    const v0, 0x10000006

    const/4 v1, 0x0

    const/16 v2, 0x8

    const/4 v3, 0x1

    const-wide/32 v4, 0xea60

    const/4 v6, 0x4

    const/4 v7, 0x3

    const-string v8, "PowerUI"

    if-ne v6, p1, :cond_6

    iget v9, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    const/4 v10, 0x6

    if-eq v7, v9, :cond_0

    const/4 v11, 0x7

    if-eq v11, v9, :cond_0

    if-ne v10, v9, :cond_6

    :cond_0
    if-ne v10, v9, :cond_1

    if-eqz p3, :cond_1

    const-string p0, "This status is not charging && false present but direct mode , so we do nothing !!"

    .line 1682
    invoke-static {v8, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string p1, "Unhealth state"

    .line 1685
    invoke-static {v8, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1688
    iget-object p1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealthInterruptionScreenDimWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez p1, :cond_5

    .line 1689
    iget-object p1, p0, Lcom/android/systemui/power/PowerUI;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p1, v0, v8}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealthInterruptionScreenDimWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1692
    sget-boolean p3, Lcom/android/systemui/PowerUiRune;->KEEP_DIMMING_AT_BATTERY_HEALTH_INTERRUPTION:Z

    if-eqz p3, :cond_2

    iget p3, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    if-ne p3, v10, :cond_2

    .line 1694
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0

    .line 1696
    :cond_2
    invoke-virtual {p1, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 1698
    :goto_0
    iget p1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    if-ne p1, v10, :cond_4

    .line 1699
    iget-object p1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealthInterruptionPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez p1, :cond_3

    .line 1700
    iget-object p1, p0, Lcom/android/systemui/power/PowerUI;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p1, v3, v8}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealthInterruptionPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1702
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealthInterruptionPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1706
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {p1}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showBatteryHealthInterruptionWarning()V

    goto/16 :goto_3

    :cond_5
    if-ne v2, p2, :cond_f

    .line 1708
    iget-object p1, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {p1}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showBatteryHealthInterruptionWarning()V

    goto/16 :goto_3

    :cond_6
    if-ne v6, p1, :cond_b

    .line 1710
    iget p3, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    if-ne v2, p3, :cond_b

    .line 1712
    iget-object p1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealthInterruptionScreenDimWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez p1, :cond_9

    .line 1713
    iget-object p1, p0, Lcom/android/systemui/power/PowerUI;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p1, v0, v8}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealthInterruptionScreenDimWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1716
    sget-boolean p3, Lcom/android/systemui/PowerUiRune;->KEEP_DIMMING_AT_BATTERY_HEALTH_INTERRUPTION:Z

    if-eqz p3, :cond_7

    .line 1717
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_1

    .line 1719
    :cond_7
    invoke-virtual {p1, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 1721
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealthInterruptionPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez p1, :cond_8

    .line 1722
    iget-object p1, p0, Lcom/android/systemui/power/PowerUI;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p1, v3, v8}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealthInterruptionPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1724
    :cond_8
    iget-object p1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealthInterruptionPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1726
    iget-object p1, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {p1}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showBatteryHealthInterruptionWarning()V

    goto :goto_3

    :cond_9
    if-ne v7, p2, :cond_f

    .line 1728
    sget-boolean p3, Lcom/android/systemui/PowerUiRune;->KEEP_DIMMING_AT_BATTERY_HEALTH_INTERRUPTION:Z

    if-nez p3, :cond_a

    .line 1729
    invoke-virtual {p1, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 1731
    :cond_a
    iget-object p1, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {p1}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showBatteryHealthInterruptionWarning()V

    goto :goto_3

    .line 1733
    :cond_b
    iget-object p3, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealthInterruptionScreenDimWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz p3, :cond_f

    .line 1734
    iget p3, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    if-ne v6, p3, :cond_c

    if-ne v7, p1, :cond_c

    iget p1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    if-ne v7, p1, :cond_c

    .line 1736
    iput-boolean v3, p0, Lcom/android/systemui/power/PowerUI;->mDismissBatteryHealthInterruptionWarning:Z

    goto :goto_2

    .line 1738
    :cond_c
    iget-object p1, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {p1}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissBatteryHealthInterruptionWarning()V

    .line 1739
    iput-boolean v1, p0, Lcom/android/systemui/power/PowerUI;->mDismissBatteryHealthInterruptionWarning:Z

    .line 1742
    :goto_2
    sget-boolean p1, Lcom/android/systemui/PowerUiRune;->KEEP_DIMMING_AT_BATTERY_HEALTH_INTERRUPTION:Z

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealthInterruptionScreenDimWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1743
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 1744
    iget-object p1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealthInterruptionScreenDimWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1747
    :cond_d
    iget-object p1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealthInterruptionPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 1748
    iget-object p1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealthInterruptionPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_e
    const/4 p1, 0x0

    .line 1751
    iput-object p1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealthInterruptionScreenDimWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1754
    :cond_f
    :goto_3
    iget-boolean p1, p0, Lcom/android/systemui/power/PowerUI;->mDismissBatteryHealthInterruptionWarning:Z

    if-eqz p1, :cond_10

    const/4 p1, 0x2

    iget p3, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    if-ne p1, p3, :cond_10

    .line 1755
    iget-object p1, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {p1}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissBatteryHealthInterruptionWarning()V

    .line 1756
    iput-boolean v1, p0, Lcom/android/systemui/power/PowerUI;->mDismissBatteryHealthInterruptionWarning:Z

    .line 1760
    :cond_10
    iget p1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    if-eq p2, p1, :cond_13

    const/4 p3, 0x5

    if-eq p3, p2, :cond_11

    if-eq p3, p1, :cond_11

    const/16 p3, 0x9

    if-eq p3, p2, :cond_11

    if-ne p3, p1, :cond_13

    .line 1766
    :cond_11
    invoke-static {}, Lcom/samsung/android/knox/custom/SettingsManager;->getInstance()Lcom/samsung/android/knox/custom/SettingsManager;

    move-result-object p1

    if-eqz p1, :cond_12

    .line 1767
    invoke-virtual {p1}, Lcom/samsung/android/knox/custom/SettingsManager;->getScreenWakeupOnPowerState()Z

    move-result p1

    if-nez p1, :cond_12

    const-string p0, "Knox Customization: shouldWakeUp: not waking when battery health is changed"

    .line 1768
    invoke-static {v8, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_12
    const-string p1, "Overvoltage/Undervoltage status is changed so turn on the screen."

    .line 1773
    invoke-static {v8, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1774
    iget-object p1, p0, Lcom/android/systemui/power/PowerUI;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p2

    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p2, p3, p0}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    :cond_13
    return-void
.end method

.method private checkBatterySwellingStatus(II)V
    .locals 2

    .line 1643
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Battery swelling mode - priorBatterySwellingMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mBatterySwellingMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mBatteryStatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerUI"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1646
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingMode:I

    if-ne p1, v0, :cond_0

    iget p1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    if-eq p2, p1, :cond_2

    :cond_0
    if-lez v0, :cond_1

    .line 1647
    iget p1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    .line 1649
    iget-object p1, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {p1, v0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showBatterySwellingNotice(I)V

    .line 1650
    iget-object p1, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    iget p2, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingMode:I

    invoke-interface {p1, p2}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showBatterySwellingPopup(I)V

    .line 1651
    iget-object p0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {p0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissChargingNotice()V

    goto :goto_0

    .line 1653
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {p1}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissBatterySwellingNotice()V

    .line 1654
    iget-object p0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {p0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissBatterySwellingPopup()V

    :cond_2
    :goto_0
    return-void
.end method

.method private checkConnectedChargerStatus(I)V
    .locals 6

    .line 1522
    iget p1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne v1, p1, :cond_f

    .line 1523
    iget p1, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    const/4 v2, 0x1

    const/4 v3, 0x4

    if-eq v2, p1, :cond_3

    if-ne v1, p1, :cond_0

    goto :goto_0

    :cond_0
    if-ne v3, p1, :cond_2

    const/16 p1, 0x64

    .line 1559
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    if-ne p1, v0, :cond_1

    const/4 p1, 0x7

    .line 1560
    iput p1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    goto/16 :goto_1

    :cond_1
    const/4 p1, 0x6

    .line 1562
    iput p1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    goto :goto_1

    .line 1565
    :cond_2
    iput v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    goto :goto_1

    .line 1525
    :cond_3
    :goto_0
    sget-boolean p1, Lcom/android/systemui/PowerUiRune;->SPECIFIC_POWER_REQUEST_BY_VZW:Z

    const/16 v0, 0x8

    const/16 v4, 0x9

    const/4 v5, 0x3

    if-eqz p1, :cond_9

    .line 1526
    iget-boolean p1, p0, Lcom/android/systemui/power/PowerUI;->mBatterySlowCharger:Z

    if-eqz p1, :cond_4

    .line 1527
    iput v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    goto :goto_1

    .line 1528
    :cond_4
    iget-boolean p1, p0, Lcom/android/systemui/power/PowerUI;->mFullyConnected:Z

    if-nez p1, :cond_5

    .line 1529
    iput v4, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    goto :goto_1

    .line 1530
    :cond_5
    iget p1, p0, Lcom/android/systemui/power/PowerUI;->mUltraFastCharger:I

    if-ne p1, v5, :cond_6

    .line 1531
    iput v5, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    goto :goto_1

    :cond_6
    if-ne p1, v3, :cond_7

    .line 1533
    iput v3, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    goto :goto_1

    .line 1536
    :cond_7
    iget-boolean p1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHighVoltageCharger:Z

    if-eqz p1, :cond_8

    .line 1537
    iput v1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    goto :goto_1

    .line 1539
    :cond_8
    iput v2, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    goto :goto_1

    .line 1542
    :cond_9
    iget-boolean p1, p0, Lcom/android/systemui/power/PowerUI;->mFullyConnected:Z

    if-nez p1, :cond_a

    .line 1543
    iput v4, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    goto :goto_1

    .line 1544
    :cond_a
    iget-boolean p1, p0, Lcom/android/systemui/power/PowerUI;->mBatterySlowCharger:Z

    if-eqz p1, :cond_b

    .line 1545
    iput v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    goto :goto_1

    .line 1546
    :cond_b
    iget p1, p0, Lcom/android/systemui/power/PowerUI;->mUltraFastCharger:I

    if-ne p1, v5, :cond_c

    .line 1547
    iput v5, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    goto :goto_1

    :cond_c
    if-ne p1, v3, :cond_d

    .line 1549
    iput v3, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    goto :goto_1

    .line 1552
    :cond_d
    iget-boolean p1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHighVoltageCharger:Z

    if-eqz p1, :cond_e

    .line 1553
    iput v1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    goto :goto_1

    .line 1555
    :cond_e
    iput v2, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    goto :goto_1

    .line 1568
    :cond_f
    iput v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    .line 1571
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    iget p0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    invoke-interface {p1, p0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->setChargingType(I)V

    return-void
.end method

.method private checkCoolDownStatus(Landroid/content/Intent;)V
    .locals 3

    .line 1783
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOverheatLevel:I

    const-string v1, "battery_overheat_level"

    const/4 v2, 0x0

    .line 1784
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOverheatLevel:I

    .line 1785
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Battery overheat Level = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOverheatLevel:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "PowerUI"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1787
    iget p1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOverheatLevel:I

    if-eq v0, p1, :cond_3

    const/4 v2, 0x2

    if-ne v2, p1, :cond_0

    .line 1789
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v0, p1}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showOverheatWarning(I)V

    .line 1790
    iget-object p1, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mOverheatShutdownWarningTask:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7530

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    if-le v2, p1, :cond_1

    if-gt v2, v0, :cond_1

    .line 1792
    iget-object p1, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {p1}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissWillOverheatShutdownWarning()V

    .line 1793
    iget-object p1, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mOverheatShutdownWarningTask:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-string p1, "Battery overheat level recovered from shutdown"

    .line 1794
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1797
    :cond_1
    :goto_0
    iget p1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOverheatLevel:I

    if-nez p1, :cond_2

    .line 1798
    iget-object p0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {p0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissOverheatWarning()V

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    if-ne v0, p1, :cond_3

    .line 1800
    iget-object p0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {p0, p1}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showOverheatWarning(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method private checkFullBatteryStatus(I)V
    .locals 2

    .line 1662
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    if-eq p1, v0, :cond_2

    const/4 v1, 0x5

    if-ne v1, v0, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 1664
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->isProtectingBatteryByCutOff()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1665
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/power/PowerUI;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p1

    if-nez p1, :cond_2

    .line 1667
    iget-object p1, p0, Lcom/android/systemui/power/PowerUI;->mPluginAODManagerLazy:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/doze/PluginAODManager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/systemui/doze/PluginAODManager;->chargingAnimStarted(Z)V

    .line 1668
    iget-object p0, p0, Lcom/android/systemui/power/PowerUI;->mPluginAODManagerLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/doze/PluginAODManager;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/doze/PluginAODManager;->chargingAnimStarted(Z)V

    :cond_2
    return-void
.end method

.method private checkHVchargerEnableConnection(I)V
    .locals 3

    .line 2011
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryCurrentEvent:I

    const/high16 v1, 0x4000000

    and-int v2, v0, v1

    if-eqz v2, :cond_1

    and-int v2, p1, v1

    if-nez v2, :cond_1

    .line 2013
    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->isViewCoverClosed()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 2016
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {p0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showHVchargerEnableAlertDialog()V

    goto :goto_0

    :cond_1
    and-int/2addr p1, v1

    if-eqz p1, :cond_2

    and-int p1, v0, v1

    if-nez p1, :cond_2

    .line 2019
    iget-object p0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {p0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissHVchargerEnableAlertDialog()V

    :cond_2
    :goto_0
    return-void
.end method

.method private checkIncompatibleChargerConnection(I)V
    .locals 1

    .line 1841
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 1843
    iget-object p0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {p0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showIncompatibleChargerNotice()V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    if-eqz v0, :cond_1

    .line 1846
    iget-object p0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {p0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissIncompatibleChargerNotice()V

    :cond_1
    :goto_0
    return-void
.end method

.method private checkOverheatShutdownHappened()V
    .locals 5

    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkOverheatShutdownHappened, boot completed : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/power/PowerUI;->mBootCompleted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerUI"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v2, "com.android.systemui.power_overheat_shutdown_happened"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, "OverheatShutdownHappened"

    .line 365
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 366
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 367
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 368
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 369
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.systemui.power.action.ACTION_CLEAR_SHUTDOWN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 370
    iget-object p0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {p0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showOverheatShutdownHappenedNotice()V

    goto :goto_0

    :cond_0
    const-string p0, "Not an overheat shutdown case"

    .line 372
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private checkPowerSharingCableStatus(Landroid/content/Intent;)V
    .locals 2

    .line 1865
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "power_sharing"

    .line 1866
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    .line 1867
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "showing power sharing dialog"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PowerUI"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_1

    .line 1870
    iget-object p0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {p0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showPowerSharingCableNotice()V

    goto :goto_0

    .line 1872
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {p0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissPowerSharingCableNotice()V

    :goto_0
    return-void
.end method

.method private checkTipsNotification(I)V
    .locals 8

    .line 2045
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    if-nez v0, :cond_4

    const/16 v0, 0x1e

    if-le p1, v0, :cond_4

    iget p1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    if-gt p1, v0, :cond_4

    .line 2047
    iget-object p1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v0, "com.android.systemui.power_tips_notification"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    if-eqz p1, :cond_4

    const-string/jumbo v0, "tipsNotiConfirmed"

    .line 2049
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2050
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkTipsNotificaiton confirmed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PowerUI"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_3

    const-string/jumbo v0, "tipsNotiRegisteredCount"

    .line 2052
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2053
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerUI;->getRefreshRate()I

    move-result v2

    .line 2054
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkTipsNotificaiton notiCount : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "  refreshRate : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x3

    if-ge v0, v4, :cond_2

    if-lez v2, :cond_2

    const-wide/16 v4, 0x0

    const-string/jumbo v0, "tipsNotiLastTime"

    .line 2058
    invoke-interface {p1, v0, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 2059
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 2060
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lastNotifiedTime = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "  currentTime = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sub-long/2addr v6, v4

    const-wide/32 v4, 0x240c8400

    cmp-long v0, v6, v4

    if-lez v0, :cond_1

    const-string v0, "ignoreRUT"

    .line 2062
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 2063
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ignore_rut = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 2065
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerUI;->showTipsNotification()V

    goto :goto_0

    .line 2067
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/android/systemui/power/PowerUI;->getFullBatteryRemainingTime(Landroid/content/Context;)I

    move-result p1

    .line 2068
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "remaining time : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez p1, :cond_4

    const/16 v0, 0x30c

    if-ge p1, v0, :cond_4

    .line 2070
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerUI;->showTipsNotification()V

    goto :goto_0

    :cond_1
    const-string p0, "last tip notification has been registered within 1 week, so we ignore this case!!"

    .line 2074
    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2077
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Noti count = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " refresh rate settings = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " , so we do not register tip notification!!"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string p0, "User confirmed, so we do not register tip notification!!"

    .line 2080
    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    return-void
.end method

.method private checkTurnOffPsmNotification(I)V
    .locals 6

    .line 2087
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mTurnOffPsmLevel:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 2088
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/16 v3, 0x32

    const-string/jumbo v4, "turn_off_psm_trigger_level"

    .line 2089
    invoke-static {v0, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/power/PowerUI;->mTurnOffPsmLevel:I

    .line 2090
    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/power/PowerUI$11;

    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v5, v0}, Lcom/android/systemui/power/PowerUI$11;-><init>(Lcom/android/systemui/power/PowerUI;Landroid/os/Handler;Landroid/content/ContentResolver;)V

    invoke-virtual {v0, v3, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 2098
    :cond_0
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mTurnOffPsmLevel:I

    if-ge p1, v0, :cond_1

    iget p1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    if-lt p1, v0, :cond_1

    .line 2099
    iget-object p1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "low_power"

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 2100
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.samsung.android.sm.ACTION_TURN_OFF_PSM_NOTI"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2101
    sget-object v0, Lcom/android/systemui/power/TipsConfig;->TURN_OFF_PSM_COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2102
    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method private checkUsbDamageDetectionStatus(Landroid/content/Intent;)V
    .locals 3

    .line 1929
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mTemperatureHiccupState:Z

    const-string v1, "misc_event"

    const/4 v2, 0x0

    .line 1931
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 v1, 0x2000

    and-int/2addr p1, v1

    if-ne p1, v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    iput-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mTemperatureHiccupState:Z

    .line 1934
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "USB damage detection - oldTemperatureHiccupState : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mTemperatureHiccupState : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/power/PowerUI;->mTemperatureHiccupState:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "PowerUI"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1937
    iget-object p1, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    iget-boolean v1, p0, Lcom/android/systemui/power/PowerUI;->mTemperatureHiccupState:Z

    invoke-interface {p1, v1}, Lcom/android/systemui/power/PowerUI$WarningsUI;->updateTemperatureHiccupState(Z)V

    .line 1939
    iget-boolean p1, p0, Lcom/android/systemui/power/PowerUI;->mTemperatureHiccupState:Z

    if-eq v0, p1, :cond_1

    if-eqz p1, :cond_1

    .line 1941
    iget-object p1, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {p1}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showUsbDamageProtectionAlertDialog()V

    .line 1942
    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.samsung.systemui.power.action.USB_DAMAGE_POPUP_SHOW"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method private checkWaterDetectionStatus(Landroid/content/Intent;)V
    .locals 6

    .line 1893
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryWaterConnector:Z

    .line 1894
    iget-boolean v1, p0, Lcom/android/systemui/power/PowerUI;->mIsHiccupState:Z

    const-string v2, "misc_event"

    const/4 v3, 0x0

    .line 1896
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x1

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    iput-boolean v4, p0, Lcom/android/systemui/power/PowerUI;->mBatteryWaterConnector:Z

    .line 1899
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 v2, 0x20

    and-int/2addr p1, v2

    if-ne p1, v2, :cond_1

    move v3, v5

    :cond_1
    iput-boolean v3, p0, Lcom/android/systemui/power/PowerUI;->mIsHiccupState:Z

    .line 1902
    iget-object p1, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {p1, v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->updateHiccupState(Z)V

    .line 1904
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SUPPORT_WATER_PROTECTION_POPUP - oldBatteryWaterConnector : "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mBatteryWaterConnector : "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mBatteryWaterConnector:Z

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", oldHiccupState : "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mIsHiccupState : "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mIsHiccupState:Z

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "PowerUI"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1909
    iget-boolean p1, p0, Lcom/android/systemui/power/PowerUI;->mIsHiccupState:Z

    const-string v3, "com.samsung.systemui.power.action.USB_DAMAGE_POPUP_SHOW"

    const-string v4, "checkWaterDetectionStatus  show and sending intent ACTION_USB_DAMAGE_PROTECTION_POPUP_SHOW"

    if-eq v1, p1, :cond_2

    if-eqz p1, :cond_4

    .line 1911
    iget-object p1, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryWaterConnector:Z

    invoke-interface {p1, v0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showWaterProtectionAlertDialog(Z)V

    .line 1912
    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1913
    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 1915
    :cond_2
    iget-boolean p1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryWaterConnector:Z

    if-eq v0, p1, :cond_4

    if-eqz p1, :cond_3

    .line 1917
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v0, p1}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showWaterProtectionAlertDialog(Z)V

    .line 1918
    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1919
    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 1921
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {p0, p1}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissWaterProtectionAlertDialog(Z)V

    :cond_4
    :goto_1
    return-void
.end method

.method private checkWirelessChargingFodStatus(Landroid/content/Intent;)V
    .locals 3

    .line 1878
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mWirelessFodState:Z

    const-string v1, "misc_event"

    const/4 v2, 0x0

    .line 1879
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 v1, 0x100

    and-int/2addr p1, v1

    if-ne p1, v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    iput-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mWirelessFodState:Z

    .line 1882
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SUPPORT_WIRELESS_CHARGER_FOD_POPUP - oldWirelessFodState : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mWirelessFodState : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/power/PowerUI;->mWirelessFodState:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "PowerUI"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1885
    iget-boolean p1, p0, Lcom/android/systemui/power/PowerUI;->mWirelessFodState:Z

    if-eq v0, p1, :cond_1

    if-eqz p1, :cond_1

    .line 1886
    iget-object p0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {p0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showWirelessFodAlertDialog()V

    :cond_1
    return-void
.end method

.method private checkWirelessMisalign(I)V
    .locals 3

    .line 925
    invoke-direct {p0, p1}, Lcom/android/systemui/power/PowerUI;->isMisAlignMiscEvent(I)Z

    move-result p1

    .line 926
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryMiscEvent:I

    invoke-direct {p0, v0}, Lcom/android/systemui/power/PowerUI;->isMisAlignMiscEvent(I)Z

    move-result v0

    .line 927
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "oldMisalign : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", curMisalign : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PowerUI"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    iget v1, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    if-lez v1, :cond_4

    const/4 v1, 0x1

    if-nez p1, :cond_1

    if-eqz v0, :cond_1

    const-string p1, "old not misalign but now misalign"

    .line 931
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->isViewCoverClosed()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 936
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->removeChargerView()V

    .line 937
    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->removeMisalignView()V

    const/4 p1, 0x0

    .line 938
    invoke-direct {p0, p1}, Lcom/android/systemui/power/PowerUI;->setWirelessMisalignView(I)V

    .line 939
    iput-boolean v1, p0, Lcom/android/systemui/power/PowerUI;->mIsWirelessMisalignTask:Z

    .line 940
    iget-object p1, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/power/PowerUI;->mWirelessMisalignTimeoutTask:Ljava/lang/Runnable;

    const-wide/16 v0, 0x7530

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    if-nez v0, :cond_2

    const-string p1, "old misalign but now not misalign"

    .line 942
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->removeChargerView()V

    .line 945
    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->removeMisalignView()V

    .line 946
    invoke-direct {p0, v1}, Lcom/android/systemui/power/PowerUI;->setWirelessMisalignView(I)V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    if-nez v0, :cond_5

    .line 949
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->removeMisalignView()V

    goto :goto_0

    .line 953
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->removeMisalignView()V

    :cond_5
    :goto_0
    return-void
.end method

.method private findBatteryLevelBucket(I)I
    .locals 4

    .line 519
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryAlertCloseLevel:I

    const/4 v1, 0x1

    if-lt p1, v0, :cond_0

    return v1

    .line 522
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    const/4 v2, 0x0

    aget v3, v0, v2

    if-le p1, v3, :cond_1

    return v2

    .line 525
    :cond_1
    array-length v0, v0

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_3

    .line 527
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    aget v1, v1, v0

    if-gt p1, v1, :cond_2

    rsub-int/lit8 p0, v0, -0x1

    return p0

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 531
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "not possible!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getLayoutParam(Ljava/lang/String;)Landroid/view/WindowManager$LayoutParams;
    .locals 6

    .line 2108
    new-instance p0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/4 v3, 0x2

    const v4, 0x1000100

    const/4 v5, -0x3

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 2114
    sget-boolean v0, Lcom/android/systemui/LsRune;->LOCKUI_AOD_PACKAGE_AVAILABLE:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x40000

    .line 2115
    invoke-virtual {p0, v0}, Landroid/view/WindowManager$LayoutParams;->semAddExtensionFlags(I)V

    :cond_0
    const/4 v0, 0x1

    .line 2118
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const/4 v0, 0x0

    .line 2119
    invoke-virtual {p0, v0}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 2120
    invoke-virtual {p0}, Landroid/view/WindowManager$LayoutParams;->setTrustedOverlay()V

    .line 2121
    invoke-virtual {p0, p1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method private initThermalEventListeners()V
    .locals 0

    .line 1168
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerUI;->doSkinThermalEventListenerRegistration()V

    .line 1169
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerUI;->doUsbThermalEventListenerRegistration()V

    return-void
.end method

.method private isMisAlignMiscEvent(I)Z
    .locals 0

    const/high16 p0, 0x400000

    and-int/2addr p1, p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isProtectingBatteryByCutOff()Z
    .locals 2

    .line 1358
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    const/16 v1, 0x55

    if-lt v0, v1, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/power/PowerUI;->mIsProtectingBatteryCutOffSettingEnabled:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isViewCoverClosed()Z
    .locals 2

    .line 1997
    const-class p0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->isCoverClosed()Z

    move-result p0

    if-eqz p0, :cond_0

    const-class p0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1998
    const-class p0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result p0

    .line 1999
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "View Cover is covered and closed, cover type : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerUI"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xf

    if-ne p0, v0, :cond_0

    const-string p0, "S view cover is enabled, so we do not show this hv enable popup"

    .line 2001
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private playChargerConnectionAnimation(ZII)V
    .locals 5

    .line 1365
    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->isProtectingBatteryByCutOff()Z

    move-result v0

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mIsChargerAnimationPlaying:Z

    if-nez v0, :cond_7

    const/4 v0, -0x1

    if-eq p2, v0, :cond_7

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    const/4 v1, 0x2

    if-ne v1, v0, :cond_7

    iget-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mFullyConnected:Z

    if-eqz v2, :cond_7

    const/4 v2, 0x5

    if-eq p3, v2, :cond_0

    if-ne p3, v0, :cond_1

    :cond_0
    iget p3, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    if-ne p2, p3, :cond_1

    if-nez p1, :cond_7

    .line 1371
    :cond_1
    iget-boolean p1, p0, Lcom/android/systemui/power/PowerUI;->mIsMotionDetectionSupported:Z

    const/4 p3, 0x0

    const/4 v0, 0x4

    const/4 v2, 0x1

    const-string v3, "PowerUI"

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/android/systemui/power/PowerUI;->mIsDeviceMoving:Z

    if-nez p1, :cond_2

    iget p1, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    if-ne v0, p1, :cond_2

    const-string p1, "Charger connected but device had no move detection"

    .line 1372
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    iget-object p1, p0, Lcom/android/systemui/power/PowerUI;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p1

    if-nez p1, :cond_7

    const-string p1, "Charger connected but device had no move detection and screen off => trigger AOD"

    .line 1375
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1376
    iget-object p1, p0, Lcom/android/systemui/power/PowerUI;->mPluginAODManagerLazy:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/doze/PluginAODManager;

    invoke-virtual {p1, v2}, Lcom/android/systemui/doze/PluginAODManager;->chargingAnimStarted(Z)V

    .line 1377
    iget-object p0, p0, Lcom/android/systemui/power/PowerUI;->mPluginAODManagerLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/doze/PluginAODManager;

    invoke-virtual {p0, p3}, Lcom/android/systemui/doze/PluginAODManager;->chargingAnimStarted(Z)V

    goto/16 :goto_0

    .line 1382
    :cond_2
    const-class p1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->isCoverClosed()Z

    move-result p1

    .line 1383
    const-class v4, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v4}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 1386
    invoke-virtual {v4}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v1

    .line 1388
    :cond_3
    invoke-direct {p0, p2}, Lcom/android/systemui/power/PowerUI;->shouldNotShowChargingVIandSound(I)Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p0, "Only cable charger type changed, so don\'t play charging animation"

    .line 1389
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    if-eqz p1, :cond_6

    const/16 p1, 0x8

    if-eq v1, p1, :cond_6

    .line 1391
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "View Cover is covered and closed, so don\'t play charging animation but turn on AOD, cover type : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0xf

    if-eq v1, p1, :cond_5

    const/16 p1, 0x10

    if-eq v1, p1, :cond_5

    const/16 p1, 0x11

    if-ne v1, p1, :cond_7

    .line 1396
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/power/PowerUI;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p1

    if-nez p1, :cond_7

    const-string p1, "Supported view cover && cover closed, so we should call PluginAODManager"

    .line 1398
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1399
    iget-object p1, p0, Lcom/android/systemui/power/PowerUI;->mPluginAODManagerLazy:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/doze/PluginAODManager;

    invoke-virtual {p1, v2}, Lcom/android/systemui/doze/PluginAODManager;->chargingAnimStarted(Z)V

    .line 1400
    iget-object p0, p0, Lcom/android/systemui/power/PowerUI;->mPluginAODManagerLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/doze/PluginAODManager;

    invoke-virtual {p0, p3}, Lcom/android/systemui/doze/PluginAODManager;->chargingAnimStarted(Z)V

    goto :goto_0

    .line 1404
    :cond_6
    iget p1, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    if-eqz p1, :cond_7

    .line 1405
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cable charger connected - mUltraFastCharger = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/systemui/power/PowerUI;->mUltraFastCharger:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1406
    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->setChargerAnimationView()V

    .line 1407
    iput-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mIsChargerAnimationPlaying:Z

    .line 1409
    iget-boolean p1, p0, Lcom/android/systemui/power/PowerUI;->mIsMotionDetectionSupported:Z

    if-eqz p1, :cond_7

    iget-boolean p1, p0, Lcom/android/systemui/power/PowerUI;->mIsDeviceMoving:Z

    if-nez p1, :cond_7

    iget p1, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    if-eq v0, p1, :cond_7

    const-string p1, "Current charging plug is not wireless but mIsDeviceMovign is not still released. We should release mIsDeviceMoving to true !!"

    .line 1410
    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1411
    iput-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mIsDeviceMoving:Z

    :cond_7
    :goto_0
    return-void
.end method

.method private playChargerConnectionSound(ZII)V
    .locals 4

    .line 1309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "priorPlugType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mPlugType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " priorBatteryStatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mBatteryStatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerUI"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1311
    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->isProtectingBatteryByCutOff()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x5

    if-eq p3, v0, :cond_0

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    if-ne p3, v0, :cond_1

    :cond_0
    iget p3, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    if-eq p2, p3, :cond_2

    :cond_1
    const/4 p3, -0x1

    if-ne p2, p3, :cond_3

    :cond_2
    iget-boolean p3, p0, Lcom/android/systemui/power/PowerUI;->mFullyConnected:Z

    if-eqz p3, :cond_8

    if-nez p1, :cond_8

    :cond_3
    const/4 p1, 0x2

    .line 1314
    iget p3, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    if-ne p1, p3, :cond_8

    iget p1, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    if-eqz p1, :cond_8

    .line 1317
    iget-boolean p3, p0, Lcom/android/systemui/power/PowerUI;->mIsMotionDetectionSupported:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_5

    const/4 p3, 0x4

    if-ne p3, p1, :cond_5

    .line 1318
    iget-boolean p1, p0, Lcom/android/systemui/power/PowerUI;->mIsDeviceMoving:Z

    if-nez p1, :cond_5

    if-eqz p2, :cond_4

    goto :goto_0

    :cond_4
    move p1, v0

    goto :goto_1

    :cond_5
    :goto_0
    move p1, v1

    :goto_1
    if-eqz p1, :cond_6

    .line 1328
    invoke-direct {p0, p2}, Lcom/android/systemui/power/PowerUI;->shouldNotShowChargingVIandSound(I)Z

    move-result p2

    if-eqz p2, :cond_6

    move p1, v0

    :cond_6
    if-eqz p1, :cond_8

    .line 1333
    iget-boolean p1, p0, Lcom/android/systemui/power/PowerUI;->mIsRunningStopPowerSoundTask:Z

    if-eqz p1, :cond_7

    .line 1334
    iget-object p1, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/systemui/power/PowerUI;->mStopPowerSoundTask:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1335
    iput-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mIsRunningStopPowerSoundTask:Z

    .line 1337
    :cond_7
    iget-object p1, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {p1, v1}, Lcom/android/systemui/power/PowerUI$WarningsUI;->playPowerSound(I)V

    .line 1338
    iget-object p1, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/systemui/power/PowerUI;->mStopPowerSoundTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {p1, p2, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1339
    iput-boolean v1, p0, Lcom/android/systemui/power/PowerUI;->mIsRunningStopPowerSoundTask:Z

    :cond_8
    return-void
.end method

.method private removeChargerView()V
    .locals 3

    .line 1503
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mIsChargerAnimationPlaying:Z

    if-eqz v0, :cond_1

    .line 1504
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mChargerAnimationView:Lcom/android/systemui/power/ChargerAnimationView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mChargerAnimationWindowManager:Landroid/view/WindowManager;

    if-eqz v2, :cond_0

    .line 1505
    invoke-interface {v2, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 1506
    iput-object v1, p0, Lcom/android/systemui/power/PowerUI;->mChargerAnimationView:Lcom/android/systemui/power/ChargerAnimationView;

    .line 1508
    :cond_0
    iput-object v1, p0, Lcom/android/systemui/power/PowerUI;->mChargerAnimationWindowManager:Landroid/view/WindowManager;

    const/4 v0, 0x0

    .line 1509
    iput-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mIsChargerAnimationPlaying:Z

    .line 1512
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "PowerUI"

    const-string v2, "onChargerAnimationEnd : Lcd OFF -> so call chargingAnimStarted(false)"

    .line 1514
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1515
    iget-object p0, p0, Lcom/android/systemui/power/PowerUI;->mPluginAODManagerLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/doze/PluginAODManager;

    invoke-virtual {p0, v0}, Lcom/android/systemui/doze/PluginAODManager;->chargingAnimStarted(Z)V

    :cond_1
    return-void
.end method

.method private removeMisalignView()V
    .locals 3

    .line 1466
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWirelessMisalignWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1467
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWirelessMisalignWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1468
    iput-object v1, p0, Lcom/android/systemui/power/PowerUI;->mWirelessMisalignWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1471
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWirelessMisalignView:Lcom/android/systemui/power/WirelessMisalignView;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mWirelessMisalignWindowManager:Landroid/view/WindowManager;

    if-eqz v2, :cond_1

    .line 1472
    invoke-interface {v2, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 1473
    iput-object v1, p0, Lcom/android/systemui/power/PowerUI;->mWirelessMisalignView:Lcom/android/systemui/power/WirelessMisalignView;

    .line 1475
    :cond_1
    iput-object v1, p0, Lcom/android/systemui/power/PowerUI;->mWirelessMisalignWindowManager:Landroid/view/WindowManager;

    const/4 v0, 0x0

    .line 1476
    iput-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mIsWirelessMisalignTask:Z

    .line 1477
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/power/PowerUI;->mWirelessMisalignTimeoutTask:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private secShouldDismissLowBatteryWarning(Lcom/android/systemui/power/BatteryStateSnapshot;Lcom/android/systemui/power/BatteryStateSnapshot;)Z
    .locals 0

    .line 1293
    invoke-virtual {p1}, Lcom/android/systemui/power/BatteryStateSnapshot;->getPlugged()Z

    move-result p0

    if-nez p0, :cond_1

    .line 1294
    invoke-virtual {p1}, Lcom/android/systemui/power/BatteryStateSnapshot;->getBucket()I

    move-result p0

    invoke-virtual {p2}, Lcom/android/systemui/power/BatteryStateSnapshot;->getBucket()I

    move-result p2

    if-le p0, p2, :cond_0

    .line 1295
    invoke-virtual {p1}, Lcom/android/systemui/power/BatteryStateSnapshot;->getBucket()I

    move-result p0

    if-lez p0, :cond_0

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

.method private secShouldShowLowBatteryWarning(Lcom/android/systemui/power/BatteryStateSnapshot;Lcom/android/systemui/power/BatteryStateSnapshot;)Z
    .locals 2

    .line 1283
    invoke-virtual {p1}, Lcom/android/systemui/power/BatteryStateSnapshot;->getPlugged()Z

    move-result p0

    const/4 v0, 0x1

    if-nez p0, :cond_1

    .line 1284
    invoke-virtual {p1}, Lcom/android/systemui/power/BatteryStateSnapshot;->getBucket()I

    move-result p0

    invoke-virtual {p2}, Lcom/android/systemui/power/BatteryStateSnapshot;->getBucket()I

    move-result v1

    if-lt p0, v1, :cond_0

    .line 1285
    invoke-virtual {p2}, Lcom/android/systemui/power/BatteryStateSnapshot;->getPlugged()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 1286
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/power/BatteryStateSnapshot;->getBucket()I

    move-result p0

    if-gez p0, :cond_1

    .line 1287
    invoke-virtual {p1}, Lcom/android/systemui/power/BatteryStateSnapshot;->getBatteryStatus()I

    move-result p0

    if-eq p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private sendLowBatteryDumpIfNeeded(III)V
    .locals 3

    .line 1981
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "LOW_BATTERY_DUMP"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_3

    .line 1982
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    sub-int v1, p1, v0

    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    sub-int/2addr v0, p1

    if-lt v0, v2, :cond_1

    :cond_0
    const/4 v0, -0x1

    if-ne v0, p1, :cond_2

    :cond_1
    if-ge p3, p2, :cond_3

    const/4 p1, -0x2

    if-ne p1, p3, :cond_3

    .line 1985
    :cond_2
    iget-boolean p1, p0, Lcom/android/systemui/power/PowerUI;->mBootCompleted:Z

    if-eqz p1, :cond_3

    const-string p1, "PowerUI"

    const-string p2, "Low battery dump"

    .line 1986
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1987
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.samsung.systemui.power.action.LOW_BATTERY_DUMP"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 p2, 0x1000000

    .line 1988
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1989
    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_3
    return-void
.end method

.method private setChargerAnimationView()V
    .locals 7

    .line 1420
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mChargerAnimationWindowLp:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x8

    if-nez v0, :cond_0

    const-string v0, "PowerUI.ChargerAnimationViewLp"

    .line 1421
    invoke-direct {p0, v0}, Lcom/android/systemui/power/PowerUI;->getLayoutParam(Ljava/lang/String;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mChargerAnimationWindowLp:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x7e5

    .line 1422
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1423
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr v2, v1

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v2, v2, 0x10

    .line 1424
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1426
    :cond_0
    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/view/SemWindowManager;->isFolded()Z

    move-result v0

    .line 1428
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mChargerAnimationWindowManager:Landroid/view/WindowManager;

    if-nez v2, :cond_4

    .line 1429
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "folder state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PowerUI"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1430
    sget-boolean v2, Lcom/android/systemui/PowerUiRune;->COVER_DISPLAY_WATCHFACE:Z

    const-string/jumbo v4, "window"

    const/4 v5, 0x0

    if-nez v2, :cond_1

    sget-boolean v2, Lcom/android/systemui/LsRune;->KEYGUARD_SUB_DISPLAY_COVER:Z

    if-eqz v2, :cond_3

    :cond_1
    if-eqz v0, :cond_3

    .line 1431
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v2, "display"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    const-string v2, "com.samsung.android.hardware.display.category.BUILTIN"

    .line 1432
    invoke-virtual {v0, v2}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object v0

    .line 1433
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Displays : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v6, v0

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    .line 1434
    aget-object v0, v0, v2

    .line 1435
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SubDisplay id : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1436
    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v0

    .line 1437
    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, p0, Lcom/android/systemui/power/PowerUI;->mChargerAnimationWindowManager:Landroid/view/WindowManager;

    .line 1438
    invoke-static {}, Lcom/android/systemui/power/PowerUtils;->isBloom()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1439
    sget v2, Lcom/android/systemui/R$layout;->battery_charger_animation_bloom:I

    invoke-static {v0, v2, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/power/ChargerAnimationView;

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mChargerAnimationView:Lcom/android/systemui/power/ChargerAnimationView;

    goto :goto_0

    .line 1441
    :cond_2
    sget v2, Lcom/android/systemui/R$layout;->battery_charger_animation:I

    invoke-static {v0, v2, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/power/ChargerAnimationView;

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mChargerAnimationView:Lcom/android/systemui/power/ChargerAnimationView;

    goto :goto_0

    .line 1444
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mChargerAnimationWindowManager:Landroid/view/WindowManager;

    .line 1445
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$layout;->battery_charger_animation:I

    invoke-static {v0, v2, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/power/ChargerAnimationView;

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mChargerAnimationView:Lcom/android/systemui/power/ChargerAnimationView;

    .line 1449
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mChargerAnimationWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mChargerAnimationView:Lcom/android/systemui/power/ChargerAnimationView;

    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mChargerAnimationWindowLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1450
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mChargerAnimationView:Lcom/android/systemui/power/ChargerAnimationView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/power/ChargerAnimationView;->setChargerAnimationViewVisibility(I)V

    .line 1451
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mChargerAnimationView:Lcom/android/systemui/power/ChargerAnimationView;

    invoke-virtual {v0, p0}, Lcom/android/systemui/power/ChargerAnimationView;->setChargingAnimationListner(Lcom/android/systemui/power/ChargerAnimationView$ChargerAnimationListener;)V

    .line 1452
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mChargerAnimationView:Lcom/android/systemui/power/ChargerAnimationView;

    invoke-virtual {v0}, Lcom/android/systemui/power/ChargerAnimationView;->setBackGroundAnimation()V

    .line 1454
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mChargerAnimationView:Lcom/android/systemui/power/ChargerAnimationView;

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mPluginAODManagerLazy:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/doze/PluginAODManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/power/ChargerAnimationView;->setPluginAODManager(Lcom/android/systemui/doze/PluginAODManager;)V

    .line 1456
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mChargerAnimationView:Lcom/android/systemui/power/ChargerAnimationView;

    iget v1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    iget p0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/power/ChargerAnimationView;->startChargerAnimation(II)V

    return-void
.end method

.method private setWirelessMisalignView(I)V
    .locals 4

    .line 879
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWirelessMisalignWindowLp:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_0

    const-string v0, "PowerUI.WirelessMisalignViewLp"

    .line 880
    invoke-direct {p0, v0}, Lcom/android/systemui/power/PowerUI;->getLayoutParam(Ljava/lang/String;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWirelessMisalignWindowLp:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d9

    .line 881
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 883
    :cond_0
    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/view/SemWindowManager;->isFolded()Z

    move-result v0

    .line 884
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mWirelessMisalignWindowManager:Landroid/view/WindowManager;

    const-string v2, "PowerUI"

    if-nez v1, :cond_4

    .line 885
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "window"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/android/systemui/power/PowerUI;->mWirelessMisalignWindowManager:Landroid/view/WindowManager;

    .line 886
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "folder state : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 888
    invoke-static {}, Lcom/android/systemui/power/PowerUtils;->isFoldableDevice()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 889
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$layout;->battery_misalign_normal_layout:I

    invoke-static {v0, v3, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/power/WirelessMisalignView;

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWirelessMisalignView:Lcom/android/systemui/power/WirelessMisalignView;

    goto :goto_0

    .line 895
    :cond_1
    invoke-static {}, Lcom/android/systemui/power/PowerUtils;->isFoldableDevice()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 896
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$layout;->battery_misalign_fold_layout:I

    invoke-static {v0, v3, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/power/WirelessMisalignView;

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWirelessMisalignView:Lcom/android/systemui/power/WirelessMisalignView;

    goto :goto_0

    .line 898
    :cond_2
    invoke-static {}, Lcom/android/systemui/power/PowerUtils;->isB2Model()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 899
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$layout;->battery_misalign_flip_layout:I

    invoke-static {v0, v3, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/power/WirelessMisalignView;

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWirelessMisalignView:Lcom/android/systemui/power/WirelessMisalignView;

    goto :goto_0

    .line 902
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$layout;->battery_misalign_normal_layout:I

    invoke-static {v0, v3, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/power/WirelessMisalignView;

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWirelessMisalignView:Lcom/android/systemui/power/WirelessMisalignView;

    .line 907
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWirelessMisalignWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mWirelessMisalignView:Lcom/android/systemui/power/WirelessMisalignView;

    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mWirelessMisalignWindowLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 908
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWirelessMisalignView:Lcom/android/systemui/power/WirelessMisalignView;

    invoke-virtual {v0, p0}, Lcom/android/systemui/power/WirelessMisalignView;->setWirelessMisalignListener(Lcom/android/systemui/power/WirelessMisalignListener;)V

    .line 909
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWirelessMisalignView:Lcom/android/systemui/power/WirelessMisalignView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/power/WirelessMisalignView;->setMode(I)V

    .line 911
    iget-object p1, p0, Lcom/android/systemui/power/PowerUI;->mPowerManager:Landroid/os/PowerManager;

    if-eqz p1, :cond_5

    const-string/jumbo p1, "turn on screen - misalign view"

    .line 912
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    iget-object p1, p0, Lcom/android/systemui/power/PowerUI;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v3, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v3}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    .line 916
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/power/PowerUI;->mWirelessMisalignWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez p1, :cond_6

    .line 917
    iget-object p1, p0, Lcom/android/systemui/power/PowerUI;->mPowerManager:Landroid/os/PowerManager;

    const v0, 0x10000006

    invoke-virtual {p1, v0, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/power/PowerUI;->mWirelessMisalignWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 920
    :cond_6
    iget-object p1, p0, Lcom/android/systemui/power/PowerUI;->mWirelessMisalignWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v0, 0x7530

    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 921
    iget-object p0, p0, Lcom/android/systemui/power/PowerUI;->mWirelessMisalignView:Lcom/android/systemui/power/WirelessMisalignView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/power/WirelessMisalignView;->setWirelessMisalignViewVisibility(I)V

    return-void
.end method

.method private shouldNotShowChargingVIandSound(I)Z
    .locals 3

    .line 1636
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    if-eq p1, v1, :cond_3

    :cond_0
    if-ne v0, v1, :cond_1

    if-eq p1, v2, :cond_3

    :cond_1
    iget p0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    const/16 p1, 0x63

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :cond_3
    :goto_0
    return v2
.end method

.method private showChargingNotice(III)V
    .locals 7

    .line 1575
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    const/16 v1, 0x2e

    const-string v2, "PowerUI"

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x4

    const/4 v6, 0x1

    if-ne v4, v0, :cond_8

    .line 1576
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    if-eq v6, v0, :cond_6

    if-ne v4, v0, :cond_0

    goto :goto_0

    :cond_0
    if-ne v5, v0, :cond_5

    if-eq v6, p1, :cond_1

    if-ne v4, p1, :cond_2

    .line 1583
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v0, v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showChargingTypeSwitchedNotice(Z)V

    .line 1586
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mIsMotionDetectionSupported:Z

    if-eqz v0, :cond_4

    .line 1587
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mIsSContextEnabled:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mIsSContextListenerRigstered:Z

    if-nez v0, :cond_4

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    const/4 v4, 0x6

    if-eq v0, v4, :cond_3

    const/4 v4, 0x7

    if-ne v0, v4, :cond_4

    :cond_3
    const-string v0, "Register SContextListener"

    .line 1589
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1590
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mSContextListener:Landroid/hardware/scontext/SContextListener;

    invoke-virtual {v0, v4, v1}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;I)Z

    .line 1591
    iput-boolean v6, p0, Lcom/android/systemui/power/PowerUI;->mIsSContextListenerRigstered:Z

    .line 1595
    :cond_4
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mWirelessFodState:Z

    if-nez v0, :cond_7

    if-eq v5, p1, :cond_7

    .line 1597
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissWirelessFodAlertDialog()V

    goto :goto_1

    .line 1600
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissChargingNotice()V

    goto :goto_1

    :cond_6
    :goto_0
    if-ne v5, p1, :cond_7

    .line 1578
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v0, v6}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showChargingTypeSwitchedNotice(Z)V

    .line 1603
    :cond_7
    :goto_1
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    if-eqz v0, :cond_9

    iget v1, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingMode:I

    if-eq v1, v6, :cond_9

    .line 1606
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v1, v0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showChargingNotice(I)V

    goto :goto_2

    .line 1609
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissChargingNotice()V

    .line 1612
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mIsMotionDetectionSupported:Z

    if-eqz v0, :cond_9

    .line 1613
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mIsSContextListenerRigstered:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mIsDeviceMoving:Z

    if-eqz v0, :cond_9

    if-ne v5, p1, :cond_9

    const-string v0, "Unregister SContextListener - From Check charging type"

    .line 1614
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1615
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mSContextListener:Landroid/hardware/scontext/SContextListener;

    invoke-virtual {v0, v4, v1}, Landroid/hardware/scontext/SContextManager;->unregisterListener(Landroid/hardware/scontext/SContextListener;I)V

    .line 1616
    iput-boolean v3, p0, Lcom/android/systemui/power/PowerUI;->mIsSContextListenerRigstered:Z

    :cond_9
    :goto_2
    if-ne v5, p1, :cond_c

    .line 1623
    iget p1, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    if-nez p1, :cond_c

    if-ne p2, v5, :cond_a

    const/4 p1, 0x3

    if-ne p3, p1, :cond_a

    move v3, v6

    :cond_a
    if-nez v3, :cond_b

    .line 1626
    iget-boolean p1, p0, Lcom/android/systemui/power/PowerUI;->mIsDeviceMoving:Z

    if-nez p1, :cond_b

    const-string p0, "Wireless charger has been disconnected but this is no move case, so we do nothing !!"

    .line 1627
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1629
    :cond_b
    iget-object p0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {p0, v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showWirelessChargerDisconnectNotice(Z)V

    :cond_c
    :goto_3
    return-void
.end method

.method private showWarnOnThermalShutdown()V
    .locals 7

    .line 1244
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v1, "powerui_prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "boot_count"

    const/4 v4, -0x1

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1246
    :try_start_0
    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v5, "PowerUI"

    const-string v6, "Failed to read system boot count from Settings.Global.BOOT_COUNT"

    .line 1249
    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-le v4, v0, :cond_0

    .line 1253
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1254
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1255
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->getLastShutdownReason()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1257
    iget-object p0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {p0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showThermalShutdownWarning()V

    :cond_0
    return-void
.end method

.method private updateBatteryNotificationLanguage()V
    .locals 3

    .line 2208
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->isLowBatteryWarningShowing()Z

    move-result v0

    const-string v1, "PowerUI"

    if-eqz v0, :cond_0

    .line 2209
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->updateLowBatteryWarning()V

    const-string v0, "Language is changed so notify LowBatteryNotification again"

    .line 2210
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2214
    :cond_0
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingMode:I

    if-nez v0, :cond_1

    .line 2217
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissChargingNotice()V

    const-string v0, "Language is changed so notify ChargingNotification again"

    .line 2218
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2219
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    iget v2, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    invoke-interface {v0, v2}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showChargingNotice(I)V

    .line 2230
    :cond_1
    sget-boolean v0, Lcom/android/systemui/PowerUiRune;->INCOMPATIBLE_CHARGER_CHECK:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    if-nez v0, :cond_2

    .line 2232
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissIncompatibleChargerNotice()V

    const-string v0, "Language is changed so notify incompatible charger again"

    .line 2233
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2234
    iget-object p0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {p0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showIncompatibleChargerNotice()V

    :cond_2
    return-void
.end method


# virtual methods
.method public dismissInattentiveSleepWarning(Z)V
    .locals 0

    .line 1273
    iget-object p0, p0, Lcom/android/systemui/power/PowerUI;->mOverlayView:Lcom/android/systemui/power/InattentiveSleepWarningView;

    if-eqz p0, :cond_0

    .line 1274
    invoke-virtual {p0, p1}, Lcom/android/systemui/power/InattentiveSleepWarningView;->dismiss(Z)V

    :cond_0
    return-void
.end method

.method declared-synchronized doSkinThermalEventListenerRegistration()V
    .locals 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    monitor-enter p0

    .line 1174
    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mEnableSkinTemperatureWarning:Z

    .line 1177
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "show_temperature_warning"

    iget-object v3, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    .line 1179
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$integer;->config_showTemperatureWarning:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 1177
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/power/PowerUI;->mEnableSkinTemperatureWarning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v1, v0, :cond_5

    .line 1183
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mSkinThermalEventListener:Landroid/os/IThermalEventListener;

    if-nez v0, :cond_1

    .line 1184
    new-instance v0, Lcom/android/systemui/power/PowerUI$SkinThermalEventListener;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/PowerUI$SkinThermalEventListener;-><init>(Lcom/android/systemui/power/PowerUI;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mSkinThermalEventListener:Landroid/os/IThermalEventListener;

    .line 1186
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mThermalService:Landroid/os/IThermalService;

    if-nez v0, :cond_2

    const-string/jumbo v0, "thermalservice"

    .line 1188
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1187
    invoke-static {v0}, Landroid/os/IThermalService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IThermalService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mThermalService:Landroid/os/IThermalService;

    .line 1190
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mEnableSkinTemperatureWarning:Z

    if-eqz v0, :cond_3

    .line 1191
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mThermalService:Landroid/os/IThermalService;

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mSkinThermalEventListener:Landroid/os/IThermalEventListener;

    const/4 v4, 0x3

    invoke-interface {v0, v1, v4}, Landroid/os/IThermalService;->registerThermalEventListenerWithType(Landroid/os/IThermalEventListener;I)Z

    move-result v0

    goto :goto_1

    .line 1194
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mThermalService:Landroid/os/IThermalService;

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mSkinThermalEventListener:Landroid/os/IThermalEventListener;

    invoke-interface {v0, v1}, Landroid/os/IThermalService;->unregisterThermalEventListener(Landroid/os/IThermalEventListener;)Z

    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "PowerUI"

    const-string v4, "Exception while (un)registering skin thermal event listener."

    .line 1197
    invoke-static {v1, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v3

    :goto_1
    if-nez v0, :cond_5

    .line 1201
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mEnableSkinTemperatureWarning:Z

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    move v2, v3

    :goto_2
    iput-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mEnableSkinTemperatureWarning:Z

    const-string v0, "PowerUI"

    const-string v1, "Failed to register or unregister skin thermal event listener."

    .line 1202
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1205
    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized doUsbThermalEventListenerRegistration()V
    .locals 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    monitor-enter p0

    .line 1209
    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mEnableUsbTemperatureAlarm:Z

    .line 1212
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "show_usb_temperature_alarm"

    iget-object v3, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    .line 1214
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$integer;->config_showUsbPortAlarm:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 1212
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/power/PowerUI;->mEnableUsbTemperatureAlarm:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v1, v0, :cond_5

    .line 1218
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mUsbThermalEventListener:Landroid/os/IThermalEventListener;

    if-nez v0, :cond_1

    .line 1219
    new-instance v0, Lcom/android/systemui/power/PowerUI$UsbThermalEventListener;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/PowerUI$UsbThermalEventListener;-><init>(Lcom/android/systemui/power/PowerUI;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mUsbThermalEventListener:Landroid/os/IThermalEventListener;

    .line 1221
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mThermalService:Landroid/os/IThermalService;

    if-nez v0, :cond_2

    const-string/jumbo v0, "thermalservice"

    .line 1223
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1222
    invoke-static {v0}, Landroid/os/IThermalService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IThermalService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mThermalService:Landroid/os/IThermalService;

    .line 1225
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mEnableUsbTemperatureAlarm:Z

    if-eqz v0, :cond_3

    .line 1226
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mThermalService:Landroid/os/IThermalService;

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mUsbThermalEventListener:Landroid/os/IThermalEventListener;

    const/4 v4, 0x4

    invoke-interface {v0, v1, v4}, Landroid/os/IThermalService;->registerThermalEventListenerWithType(Landroid/os/IThermalEventListener;I)Z

    move-result v0

    goto :goto_1

    .line 1229
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mThermalService:Landroid/os/IThermalService;

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mUsbThermalEventListener:Landroid/os/IThermalEventListener;

    invoke-interface {v0, v1}, Landroid/os/IThermalService;->unregisterThermalEventListener(Landroid/os/IThermalEventListener;)Z

    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "PowerUI"

    const-string v4, "Exception while (un)registering usb thermal event listener."

    .line 1232
    invoke-static {v1, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v3

    :goto_1
    if-nez v0, :cond_5

    .line 1236
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mEnableUsbTemperatureAlarm:Z

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    move v2, v3

    :goto_2
    iput-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mEnableUsbTemperatureAlarm:Z

    const-string v0, "PowerUI"

    const-string v1, "Failed to register or unregister usb thermal event listener."

    .line 1237
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1240
    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    const-string p1, "mLowBatteryAlertCloseLevel="

    .line 2241
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2242
    iget p1, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryAlertCloseLevel:I

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(I)V

    const-string p1, "mLowBatteryReminderLevels="

    .line 2243
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2244
    iget-object p1, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "mBatteryLevel="

    .line 2245
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2246
    iget p1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "mBatteryStatus="

    .line 2247
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2248
    iget p1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "mPlugType="

    .line 2249
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2250
    iget p1, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "mInvalidCharger="

    .line 2251
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2252
    iget p1, p0, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "mScreenOffTime="

    .line 2253
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2254
    iget-wide v0, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 2255
    iget-wide v0, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-ltz p1, :cond_0

    const-string p1, " ("

    .line 2256
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2257
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    sub-long/2addr v0, v2

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const-string p1, " ago)"

    .line 2258
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2260
    :cond_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo p1, "soundTimeout="

    .line 2261
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2262
    iget-object p1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 p3, 0x0

    const-string v0, "low_battery_sound_timeout"

    invoke-static {p1, v0, p3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(I)V

    const-string p1, "bucket: "

    .line 2264
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2265
    iget p1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    invoke-direct {p0, p1}, Lcom/android/systemui/power/PowerUI;->findBatteryLevelBucket(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "mEnableSkinTemperatureWarning="

    .line 2266
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2267
    iget-boolean p1, p0, Lcom/android/systemui/power/PowerUI;->mEnableSkinTemperatureWarning:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "mEnableUsbTemperatureAlarm="

    .line 2268
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2269
    iget-boolean p1, p0, Lcom/android/systemui/power/PowerUI;->mEnableUsbTemperatureAlarm:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "IsLowBatterySwellingPopupSupport="

    .line 2270
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2271
    sget-boolean p1, Lcom/android/systemui/PowerUiRune;->BATTERY_SWELLING_NOTICE:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    .line 2272
    iget-object p0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {p0, p2}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method getFullBatteryRemainingTime(Landroid/content/Context;)I
    .locals 4

    .line 2132
    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "low_power"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    if-eqz v1, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    const/4 p0, 0x5

    const/16 v0, 0x27

    .line 2139
    invoke-static {p1, v0}, Lcom/samsung/android/hardware/SemBatteryUtils;->getBatteryRemainingUsageTime(Landroid/content/Context;I)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    .line 2142
    invoke-static {p1, p0}, Lcom/samsung/android/hardware/SemBatteryUtils;->getBatteryRemainingUsageTime(Landroid/content/Context;I)I

    move-result p0

    int-to-long v0, p0

    :cond_2
    long-to-int p0, v0

    return p0
.end method

.method getRefreshRate()I
    .locals 2

    .line 2127
    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "refresh_rate_mode"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method protected maybeShowBatteryWarning(Lcom/android/systemui/power/BatteryStateSnapshot;Lcom/android/systemui/power/BatteryStateSnapshot;)V
    .locals 4

    .line 1110
    invoke-virtual {p1}, Lcom/android/systemui/power/BatteryStateSnapshot;->getBucket()I

    move-result v0

    invoke-virtual {p2}, Lcom/android/systemui/power/BatteryStateSnapshot;->getBucket()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    .line 1111
    invoke-virtual {p2}, Lcom/android/systemui/power/BatteryStateSnapshot;->getPlugged()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v3

    .line 1114
    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/power/PowerUI;->secShouldShowLowBatteryWarning(Lcom/android/systemui/power/BatteryStateSnapshot;Lcom/android/systemui/power/BatteryStateSnapshot;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1115
    invoke-virtual {p1}, Lcom/android/systemui/power/BatteryStateSnapshot;->getBucket()I

    move-result p1

    invoke-virtual {p2}, Lcom/android/systemui/power/BatteryStateSnapshot;->getBucket()I

    move-result p2

    if-eq p1, p2, :cond_2

    iget-object p1, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    .line 1116
    invoke-interface {p1}, Lcom/android/systemui/power/PowerUI$WarningsUI;->isLowBatteryWarningShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1117
    iget-object p1, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {p1}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissLowBatteryWarning()V

    .line 1118
    iput-boolean v3, p0, Lcom/android/systemui/power/PowerUI;->mIsRunningLowBatteryTask:Z

    .line 1119
    iget-object p1, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryWarningTask:Ljava/lang/Runnable;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 1121
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {p0, v0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showLowBatteryWarning(Z)V

    goto :goto_2

    .line 1123
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/power/PowerUI;->secShouldDismissLowBatteryWarning(Lcom/android/systemui/power/BatteryStateSnapshot;Lcom/android/systemui/power/BatteryStateSnapshot;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1124
    iget-boolean p1, p0, Lcom/android/systemui/power/PowerUI;->mIsRunningLowBatteryTask:Z

    if-eqz p1, :cond_4

    .line 1125
    iget-object p1, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryWarningTask:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1126
    iput-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mIsRunningLowBatteryTask:Z

    .line 1128
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {p0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissLowBatteryWarning()V

    goto :goto_2

    .line 1130
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->isLowBatteryWarningShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1131
    invoke-virtual {p1}, Lcom/android/systemui/power/BatteryStateSnapshot;->getBatteryLevel()I

    move-result p1

    invoke-virtual {p2}, Lcom/android/systemui/power/BatteryStateSnapshot;->getBatteryLevel()I

    move-result p2

    if-eq p1, p2, :cond_6

    .line 1132
    iget-object p0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {p0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->updateLowBatteryWarning()V

    :cond_6
    :goto_2
    return-void
.end method

.method protected maybeShowBatteryWarningV2(ZI)V
    .locals 21

    move-object/from16 v0, p0

    .line 963
    iget-object v1, v0, Lcom/android/systemui/power/PowerUI;->mEnhancedEstimates:Lcom/android/systemui/power/EnhancedEstimates;

    invoke-interface {v1}, Lcom/android/systemui/power/EnhancedEstimates;->isHybridNotificationEnabled()Z

    move-result v1

    .line 964
    iget-object v2, v0, Lcom/android/systemui/power/PowerUI;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v5

    .line 968
    sget-boolean v2, Lcom/android/systemui/power/PowerUI;->DEBUG:Z

    const-string v3, "PowerUI"

    if-eqz v2, :cond_0

    const-string v4, "evaluating which notification to show"

    .line 969
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v1, :cond_2

    if-eqz v2, :cond_1

    const-string/jumbo v1, "using hybrid"

    .line 973
    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/power/PowerUI;->refreshEstimateIfNeeded()Lcom/android/settingslib/fuelgauge/Estimate;

    move-result-object v1

    .line 976
    new-instance v2, Lcom/android/systemui/power/BatteryStateSnapshot;

    move-object v3, v2

    iget v4, v0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    iget v8, v0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    iget-object v10, v0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    aget v9, v10, v7

    aget v10, v10, v6

    .line 978
    invoke-virtual {v1}, Lcom/android/settingslib/fuelgauge/Estimate;->getEstimateMillis()J

    move-result-wide v11

    .line 979
    invoke-virtual {v1}, Lcom/android/settingslib/fuelgauge/Estimate;->getAverageDischargeTime()J

    move-result-wide v13

    iget-object v6, v0, Lcom/android/systemui/power/PowerUI;->mEnhancedEstimates:Lcom/android/systemui/power/EnhancedEstimates;

    .line 980
    invoke-interface {v6}, Lcom/android/systemui/power/EnhancedEstimates;->getSevereWarningThreshold()J

    move-result-wide v15

    iget-object v6, v0, Lcom/android/systemui/power/PowerUI;->mEnhancedEstimates:Lcom/android/systemui/power/EnhancedEstimates;

    .line 981
    invoke-interface {v6}, Lcom/android/systemui/power/EnhancedEstimates;->getLowWarningThreshold()J

    move-result-wide v17

    invoke-virtual {v1}, Lcom/android/settingslib/fuelgauge/Estimate;->isBasedOnUsage()Z

    move-result v19

    iget-object v1, v0, Lcom/android/systemui/power/PowerUI;->mEnhancedEstimates:Lcom/android/systemui/power/EnhancedEstimates;

    .line 982
    invoke-interface {v1}, Lcom/android/systemui/power/EnhancedEstimates;->getLowWarningEnabled()Z

    move-result v20

    move/from16 v6, p1

    move/from16 v7, p2

    invoke-direct/range {v3 .. v20}, Lcom/android/systemui/power/BatteryStateSnapshot;-><init>(IZZIIIIJJJJZZ)V

    iput-object v2, v0, Lcom/android/systemui/power/PowerUI;->mCurrentBatteryStateSnapshot:Lcom/android/systemui/power/BatteryStateSnapshot;

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    const-string/jumbo v1, "using standard"

    .line 985
    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    :cond_3
    new-instance v1, Lcom/android/systemui/power/BatteryStateSnapshot;

    iget v4, v0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    iget v8, v0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    iget-object v2, v0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    aget v9, v2, v7

    aget v10, v2, v6

    move-object v3, v1

    move/from16 v6, p1

    move/from16 v7, p2

    invoke-direct/range {v3 .. v10}, Lcom/android/systemui/power/BatteryStateSnapshot;-><init>(IZZIIII)V

    iput-object v1, v0, Lcom/android/systemui/power/PowerUI;->mCurrentBatteryStateSnapshot:Lcom/android/systemui/power/BatteryStateSnapshot;

    .line 992
    :goto_0
    iget-object v1, v0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    iget-object v2, v0, Lcom/android/systemui/power/PowerUI;->mCurrentBatteryStateSnapshot:Lcom/android/systemui/power/BatteryStateSnapshot;

    invoke-interface {v1, v2}, Lcom/android/systemui/power/PowerUI$WarningsUI;->updateSnapshot(Lcom/android/systemui/power/BatteryStateSnapshot;)V

    .line 993
    iget-object v1, v0, Lcom/android/systemui/power/PowerUI;->mCurrentBatteryStateSnapshot:Lcom/android/systemui/power/BatteryStateSnapshot;

    invoke-virtual {v1}, Lcom/android/systemui/power/BatteryStateSnapshot;->isHybrid()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 994
    iget-object v1, v0, Lcom/android/systemui/power/PowerUI;->mCurrentBatteryStateSnapshot:Lcom/android/systemui/power/BatteryStateSnapshot;

    iget-object v2, v0, Lcom/android/systemui/power/PowerUI;->mLastBatteryStateSnapshot:Lcom/android/systemui/power/BatteryStateSnapshot;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/power/PowerUI;->maybeShowHybridWarning(Lcom/android/systemui/power/BatteryStateSnapshot;Lcom/android/systemui/power/BatteryStateSnapshot;)V

    goto :goto_1

    .line 996
    :cond_4
    iget-object v1, v0, Lcom/android/systemui/power/PowerUI;->mCurrentBatteryStateSnapshot:Lcom/android/systemui/power/BatteryStateSnapshot;

    iget-object v2, v0, Lcom/android/systemui/power/PowerUI;->mLastBatteryStateSnapshot:Lcom/android/systemui/power/BatteryStateSnapshot;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/power/PowerUI;->maybeShowBatteryWarning(Lcom/android/systemui/power/BatteryStateSnapshot;Lcom/android/systemui/power/BatteryStateSnapshot;)V

    :goto_1
    return-void
.end method

.method maybeShowHybridWarning(Lcom/android/systemui/power/BatteryStateSnapshot;Lcom/android/systemui/power/BatteryStateSnapshot;)V
    .locals 9
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1022
    invoke-virtual {p1}, Lcom/android/systemui/power/BatteryStateSnapshot;->getTimeRemainingMillis()J

    move-result-wide v0

    .line 1023
    invoke-virtual {p1}, Lcom/android/systemui/power/BatteryStateSnapshot;->getBatteryLevel()I

    move-result v2

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    const-string v6, "PowerUI"

    const/16 v7, 0x2d

    if-lt v2, v7, :cond_1

    sget-wide v7, Lcom/android/systemui/power/PowerUI;->SIX_HOURS_MILLIS:J

    cmp-long v2, v0, v7

    if-gtz v2, :cond_0

    cmp-long v2, v0, v3

    if-nez v2, :cond_1

    .line 1026
    :cond_0
    iput-boolean v5, p0, Lcom/android/systemui/power/PowerUI;->mLowWarningShownThisChargeCycle:Z

    .line 1027
    iput-boolean v5, p0, Lcom/android/systemui/power/PowerUI;->mSevereWarningShownThisChargeCycle:Z

    .line 1028
    sget-boolean v2, Lcom/android/systemui/power/PowerUI;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "Charge cycle reset! Can show warnings again"

    .line 1029
    invoke-static {v6, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    :cond_1
    invoke-virtual {p1}, Lcom/android/systemui/power/BatteryStateSnapshot;->getBucket()I

    move-result v2

    invoke-virtual {p2}, Lcom/android/systemui/power/BatteryStateSnapshot;->getBucket()I

    move-result v7

    const/4 v8, 0x1

    if-ne v2, v7, :cond_2

    .line 1034
    invoke-virtual {p2}, Lcom/android/systemui/power/BatteryStateSnapshot;->getPlugged()Z

    move-result p2

    if-eqz p2, :cond_3

    :cond_2
    move v5, v8

    .line 1036
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/systemui/power/PowerUI;->shouldShowHybridWarning(Lcom/android/systemui/power/BatteryStateSnapshot;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 1037
    iget-object p2, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {p2, v5}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showLowBatteryWarning(Z)V

    cmp-long p2, v0, v3

    if-eqz p2, :cond_4

    .line 1041
    invoke-virtual {p1}, Lcom/android/systemui/power/BatteryStateSnapshot;->getSevereThresholdMillis()J

    move-result-wide v2

    cmp-long p2, v0, v2

    if-lez p2, :cond_5

    .line 1042
    :cond_4
    invoke-virtual {p1}, Lcom/android/systemui/power/BatteryStateSnapshot;->getBatteryLevel()I

    move-result p2

    .line 1043
    invoke-virtual {p1}, Lcom/android/systemui/power/BatteryStateSnapshot;->getSevereLevelThreshold()I

    move-result p1

    if-gt p2, p1, :cond_6

    .line 1044
    :cond_5
    iput-boolean v8, p0, Lcom/android/systemui/power/PowerUI;->mSevereWarningShownThisChargeCycle:Z

    .line 1045
    iput-boolean v8, p0, Lcom/android/systemui/power/PowerUI;->mLowWarningShownThisChargeCycle:Z

    .line 1046
    sget-boolean p0, Lcom/android/systemui/power/PowerUI;->DEBUG:Z

    if-eqz p0, :cond_b

    const-string p0, "Severe warning marked as shown this cycle"

    .line 1047
    invoke-static {v6, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    const-string p1, "Low warning marked as shown this cycle"

    .line 1050
    invoke-static {v6, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    iput-boolean v8, p0, Lcom/android/systemui/power/PowerUI;->mLowWarningShownThisChargeCycle:Z

    goto :goto_0

    .line 1053
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/systemui/power/PowerUI;->shouldDismissHybridWarning(Lcom/android/systemui/power/BatteryStateSnapshot;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 1054
    sget-boolean p1, Lcom/android/systemui/power/PowerUI;->DEBUG:Z

    if-eqz p1, :cond_8

    const-string p1, "Dismissing warning"

    .line 1055
    invoke-static {v6, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    :cond_8
    iget-object p0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {p0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissLowBatteryWarning()V

    goto :goto_0

    .line 1059
    :cond_9
    sget-boolean p1, Lcom/android/systemui/power/PowerUI;->DEBUG:Z

    if-eqz p1, :cond_a

    const-string p1, "Updating warning"

    .line 1060
    invoke-static {v6, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    :cond_a
    iget-object p0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {p0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->updateLowBatteryWarning()V

    :cond_b
    :goto_0
    return-void
.end method

.method public onChargerAnimationEnd()V
    .locals 3

    const-string v0, "PowerUI"

    const-string v1, "onChargerAnimationEnd"

    .line 1492
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1493
    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->removeChargerView()V

    .line 1494
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 1497
    iget-object p0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {p0, v0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showChargingNotice(I)V

    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 481
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result p1

    and-int/lit8 p1, p1, 0x3

    if-eqz p1, :cond_0

    .line 482
    iget-object p1, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/power/PowerUI$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/PowerUI$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/power/PowerUI;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onWirelessMisalignCompleted()V
    .locals 2

    const-string v0, "PowerUI"

    const-string v1, "onWirelessMisalignCompleted"

    .line 1461
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1462
    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->removeMisalignView()V

    return-void
.end method

.method refreshEstimateIfNeeded()Lcom/android/settingslib/fuelgauge/Estimate;
    .locals 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1003
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLastBatteryStateSnapshot:Lcom/android/systemui/power/BatteryStateSnapshot;

    if-eqz v0, :cond_1

    .line 1004
    invoke-virtual {v0}, Lcom/android/systemui/power/BatteryStateSnapshot;->getTimeRemainingMillis()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mLastBatteryStateSnapshot:Lcom/android/systemui/power/BatteryStateSnapshot;

    .line 1005
    invoke-virtual {v1}, Lcom/android/systemui/power/BatteryStateSnapshot;->getBatteryLevel()I

    move-result v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1012
    :cond_0
    new-instance v0, Lcom/android/settingslib/fuelgauge/Estimate;

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mLastBatteryStateSnapshot:Lcom/android/systemui/power/BatteryStateSnapshot;

    invoke-virtual {v1}, Lcom/android/systemui/power/BatteryStateSnapshot;->getTimeRemainingMillis()J

    move-result-wide v3

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mLastBatteryStateSnapshot:Lcom/android/systemui/power/BatteryStateSnapshot;

    .line 1013
    invoke-virtual {v1}, Lcom/android/systemui/power/BatteryStateSnapshot;->isBasedOnUsage()Z

    move-result v5

    iget-object p0, p0, Lcom/android/systemui/power/PowerUI;->mLastBatteryStateSnapshot:Lcom/android/systemui/power/BatteryStateSnapshot;

    .line 1014
    invoke-virtual {p0}, Lcom/android/systemui/power/BatteryStateSnapshot;->getAverageTimeToDischargeMillis()J

    move-result-wide v6

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/settingslib/fuelgauge/Estimate;-><init>(JZJ)V

    return-object v0

    .line 1006
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/power/PowerUI;->mEnhancedEstimates:Lcom/android/systemui/power/EnhancedEstimates;

    invoke-interface {p0}, Lcom/android/systemui/power/EnhancedEstimates;->getEstimate()Lcom/android/settingslib/fuelgauge/Estimate;

    move-result-object p0

    .line 1007
    sget-boolean v0, Lcom/android/systemui/power/PowerUI;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 1008
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updated estimate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/settingslib/fuelgauge/Estimate;->getEstimateMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerUI"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object p0
.end method

.method shouldDismissHybridWarning(Lcom/android/systemui/power/BatteryStateSnapshot;)Z
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1103
    invoke-virtual {p1}, Lcom/android/systemui/power/BatteryStateSnapshot;->getPlugged()Z

    move-result p0

    if-nez p0, :cond_1

    .line 1104
    invoke-virtual {p1}, Lcom/android/systemui/power/BatteryStateSnapshot;->getTimeRemainingMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/android/systemui/power/BatteryStateSnapshot;->getLowThresholdMillis()J

    move-result-wide p0

    cmp-long p0, v0, p0

    if-lez p0, :cond_0

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

.method shouldDismissLowBatteryWarning(Lcom/android/systemui/power/BatteryStateSnapshot;Lcom/android/systemui/power/BatteryStateSnapshot;)Z
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1161
    invoke-virtual {p1}, Lcom/android/systemui/power/BatteryStateSnapshot;->isPowerSaver()Z

    move-result p0

    if-nez p0, :cond_1

    .line 1162
    invoke-virtual {p1}, Lcom/android/systemui/power/BatteryStateSnapshot;->getPlugged()Z

    move-result p0

    if-nez p0, :cond_1

    .line 1163
    invoke-virtual {p1}, Lcom/android/systemui/power/BatteryStateSnapshot;->getBucket()I

    move-result p0

    invoke-virtual {p2}, Lcom/android/systemui/power/BatteryStateSnapshot;->getBucket()I

    move-result p2

    if-le p0, p2, :cond_0

    .line 1164
    invoke-virtual {p1}, Lcom/android/systemui/power/BatteryStateSnapshot;->getBucket()I

    move-result p0

    if-lez p0, :cond_0

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

.method shouldShowHybridWarning(Lcom/android/systemui/power/BatteryStateSnapshot;)Z
    .locals 10
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1068
    invoke-virtual {p1}, Lcom/android/systemui/power/BatteryStateSnapshot;->getPlugged()Z

    move-result v0

    const-string v1, "PowerUI"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_a

    .line 1069
    invoke-virtual {p1}, Lcom/android/systemui/power/BatteryStateSnapshot;->getBatteryStatus()I

    move-result v0

    if-ne v0, v3, :cond_0

    goto/16 :goto_2

    .line 1076
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/power/BatteryStateSnapshot;->getTimeRemainingMillis()J

    move-result-wide v4

    .line 1078
    invoke-virtual {p1}, Lcom/android/systemui/power/BatteryStateSnapshot;->isLowWarningEnabled()Z

    move-result v0

    const-wide/16 v6, -0x1

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mLowWarningShownThisChargeCycle:Z

    if-nez v0, :cond_3

    .line 1079
    invoke-virtual {p1}, Lcom/android/systemui/power/BatteryStateSnapshot;->isPowerSaver()Z

    move-result v0

    if-nez v0, :cond_3

    cmp-long v0, v4, v6

    if-eqz v0, :cond_1

    .line 1081
    invoke-virtual {p1}, Lcom/android/systemui/power/BatteryStateSnapshot;->getLowThresholdMillis()J

    move-result-wide v8

    cmp-long v0, v4, v8

    if-ltz v0, :cond_2

    .line 1082
    :cond_1
    invoke-virtual {p1}, Lcom/android/systemui/power/BatteryStateSnapshot;->getBatteryLevel()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/systemui/power/BatteryStateSnapshot;->getLowLevelThreshold()I

    move-result v8

    if-gt v0, v8, :cond_3

    :cond_2
    move v0, v3

    goto :goto_0

    :cond_3
    move v0, v2

    .line 1085
    :goto_0
    iget-boolean v8, p0, Lcom/android/systemui/power/PowerUI;->mSevereWarningShownThisChargeCycle:Z

    if-nez v8, :cond_6

    cmp-long v6, v4, v6

    if-eqz v6, :cond_4

    .line 1087
    invoke-virtual {p1}, Lcom/android/systemui/power/BatteryStateSnapshot;->getSevereThresholdMillis()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-ltz v4, :cond_5

    .line 1088
    :cond_4
    invoke-virtual {p1}, Lcom/android/systemui/power/BatteryStateSnapshot;->getBatteryLevel()I

    move-result v4

    invoke-virtual {p1}, Lcom/android/systemui/power/BatteryStateSnapshot;->getSevereLevelThreshold()I

    move-result v5

    if-gt v4, v5, :cond_6

    :cond_5
    move v4, v3

    goto :goto_1

    :cond_6
    move v4, v2

    :goto_1
    if-nez v0, :cond_7

    if-eqz v4, :cond_8

    :cond_7
    move v2, v3

    .line 1092
    :cond_8
    sget-boolean v0, Lcom/android/systemui/power/PowerUI;->DEBUG:Z

    if-eqz v0, :cond_9

    .line 1093
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Enhanced trigger is: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "\nwith battery snapshot: mLowWarningShownThisChargeCycle: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/power/PowerUI;->mLowWarningShownThisChargeCycle:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mSevereWarningShownThisChargeCycle: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/power/PowerUI;->mSevereWarningShownThisChargeCycle:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1096
    invoke-virtual {p1}, Lcom/android/systemui/power/BatteryStateSnapshot;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1093
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return v2

    .line 1070
    :cond_a
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "can\'t show warning due to - plugged: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/systemui/power/BatteryStateSnapshot;->getPlugged()Z

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " status unknown: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1072
    invoke-virtual {p1}, Lcom/android/systemui/power/BatteryStateSnapshot;->getBatteryStatus()I

    move-result p1

    if-ne p1, v3, :cond_b

    goto :goto_3

    :cond_b
    move v3, v2

    :goto_3
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1070
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method shouldShowLowBatteryWarning(Lcom/android/systemui/power/BatteryStateSnapshot;Lcom/android/systemui/power/BatteryStateSnapshot;)Z
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1149
    invoke-virtual {p1}, Lcom/android/systemui/power/BatteryStateSnapshot;->getPlugged()Z

    move-result p0

    const/4 v0, 0x1

    if-nez p0, :cond_1

    .line 1150
    invoke-virtual {p1}, Lcom/android/systemui/power/BatteryStateSnapshot;->isPowerSaver()Z

    move-result p0

    if-nez p0, :cond_1

    .line 1151
    invoke-virtual {p1}, Lcom/android/systemui/power/BatteryStateSnapshot;->getBucket()I

    move-result p0

    invoke-virtual {p2}, Lcom/android/systemui/power/BatteryStateSnapshot;->getBucket()I

    move-result v1

    if-lt p0, v1, :cond_0

    .line 1152
    invoke-virtual {p2}, Lcom/android/systemui/power/BatteryStateSnapshot;->getPlugged()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 1153
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/power/BatteryStateSnapshot;->getBucket()I

    move-result p0

    if-gez p0, :cond_1

    .line 1154
    invoke-virtual {p1}, Lcom/android/systemui/power/BatteryStateSnapshot;->getBatteryStatus()I

    move-result p0

    if-eq p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public showInattentiveSleepWarning()V
    .locals 2

    .line 1264
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mOverlayView:Lcom/android/systemui/power/InattentiveSleepWarningView;

    if-nez v0, :cond_0

    .line 1265
    new-instance v0, Lcom/android/systemui/power/InattentiveSleepWarningView;

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/power/InattentiveSleepWarningView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mOverlayView:Lcom/android/systemui/power/InattentiveSleepWarningView;

    .line 1268
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/power/PowerUI;->mOverlayView:Lcom/android/systemui/power/InattentiveSleepWarningView;

    invoke-virtual {p0}, Lcom/android/systemui/power/InattentiveSleepWarningView;->show()V

    return-void
.end method

.method showTipsNotification()V
    .locals 5

    .line 2149
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2151
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.Settings$HighRefreshRatesSettingsActivity"

    .line 2152
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v2, 0x10008000

    .line 2153
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2155
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.android.sm.TIPS_DELETED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.android.systemui"

    const-string v4, "com.android.systemui.power.TipsNotificationService"

    .line 2156
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "com.samsung.android.app.tips"

    const-string v4, "com.samsung.android.app.tips.TipsIntentService"

    .line 2158
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v3, 0x9

    const-string/jumbo v4, "tips_extras"

    .line 2159
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const v3, 0x1d8a7

    .line 2160
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "tips_id"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2161
    iget-object v3, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "tips_app_name"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2162
    iget-object v3, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/systemui/R$string;->motion_smoothness_tips_noti_title:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "tips_title"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2163
    iget-object v3, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/systemui/R$string;->motion_smoothness_tips_noti_content:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "tips_text"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "tips_noti_category"

    const-string v4, "CATEGORY_RECOMMENDATION"

    .line 2164
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "tips_action"

    .line 2165
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v1, "tips_delete_action"

    .line 2166
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v1, "tips_delete_action_type"

    const/4 v2, 0x1

    .line 2167
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "tips_condition"

    .line 2168
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "tips_noti_skip_add_action"

    .line 2169
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "PowerUI"

    const-string/jumbo v2, "showTipsNotification - ALL condition is OK, so show tips notification !!"

    .line 2171
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2174
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const-string v3, "com.android.systemui.power_tips_notification"

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2176
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 2177
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string/jumbo v4, "tipsNotiLastTime"

    invoke-interface {v1, v4, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 2178
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2182
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public start()V
    .locals 5

    .line 378
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mPowerManager:Landroid/os/PowerManager;

    .line 379
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    .line 380
    const-class v0, Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/power/PowerUI$WarningsUI;

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    .line 381
    const-class v0, Lcom/android/systemui/power/EnhancedEstimates;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/power/EnhancedEstimates;

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mEnhancedEstimates:Lcom/android/systemui/power/EnhancedEstimates;

    .line 382
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLastConfiguration:Landroid/content/res/Configuration;

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    const-string/jumbo v0, "sys.boot_completed"

    .line 385
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mBootCompleted:Z

    if-eqz v0, :cond_1

    .line 387
    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->checkOverheatShutdownHappened()V

    .line 391
    :cond_1
    new-instance v0, Lcom/android/systemui/power/PowerUI$1;

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/power/PowerUI$1;-><init>(Lcom/android/systemui/power/PowerUI;Landroid/os/Handler;)V

    .line 397
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "low_power_trigger_level"

    .line 398
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 401
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerUI;->updateBatteryWarningLevels()V

    .line 404
    sget-boolean v0, Lcom/android/systemui/PowerUiRune;->PROTECT_BATTERY_CUTOFF:Z

    if-eqz v0, :cond_2

    .line 405
    new-instance v0, Lcom/android/systemui/power/PowerUI$2;

    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v2}, Lcom/android/systemui/power/PowerUI$2;-><init>(Lcom/android/systemui/power/PowerUI;Landroid/os/Handler;)V

    const-string v2, "protect_battery"

    .line 411
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 414
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerUI;->updateProtectBatteryCutOffSetting()V

    .line 419
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->restoreScreenTimeOutIfNeeded()V

    .line 422
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mReceiver:Lcom/android/systemui/power/PowerUI$Receiver;

    invoke-virtual {v0}, Lcom/android/systemui/power/PowerUI$Receiver;->init()V

    .line 426
    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->showWarnOnThermalShutdown()V

    const-string/jumbo v0, "show_temperature_warning"

    .line 431
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/power/PowerUI$3;

    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v4}, Lcom/android/systemui/power/PowerUI$3;-><init>(Lcom/android/systemui/power/PowerUI;Landroid/os/Handler;)V

    .line 430
    invoke-virtual {v1, v0, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string/jumbo v0, "show_usb_temperature_alarm"

    .line 442
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/power/PowerUI$4;

    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v4}, Lcom/android/systemui/power/PowerUI$4;-><init>(Lcom/android/systemui/power/PowerUI;Landroid/os/Handler;)V

    .line 441
    invoke-virtual {v1, v0, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 450
    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->initThermalEventListeners()V

    .line 451
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 453
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    .line 454
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.sensorhub"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "PowerUI"

    if-eqz v0, :cond_3

    const-string/jumbo v0, "start : hasSystemFeature(com.sec.feature.sensorhub)"

    .line 455
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    iput-boolean v1, p0, Lcom/android/systemui/power/PowerUI;->mIsMotionDetectionSupported:Z

    .line 457
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "scontext"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextManager;

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    if-eqz v0, :cond_3

    const/16 v3, 0x2e

    .line 459
    invoke-virtual {v0, v3}, Landroid/hardware/scontext/SContextManager;->isAvailableService(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mIsSContextEnabled:Z

    .line 460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "start : (mSContextManager != null - mIsSContextEnabled = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/power/PowerUI;->mIsSContextEnabled:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    :cond_3
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mScreenOnOffCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 467
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealthInterruptionPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 470
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 471
    iget-object p0, p0, Lcom/android/systemui/power/PowerUI;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v1, 0x20

    invoke-virtual {v0, p0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method updateBatteryWarningLevels()V
    .locals 4

    .line 487
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0045

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 489
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00a5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-ge v1, v0, :cond_0

    move v1, v0

    .line 496
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v1, 0x1

    .line 497
    aput v0, v2, v1

    .line 498
    aget v0, v2, v3

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    .line 499
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00a4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryAlertCloseLevel:I

    return-void
.end method

.method updateProtectBatteryCutOffSetting()V
    .locals 3

    .line 505
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    .line 506
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "protect_battery"

    const/4 v2, 0x0

    .line 505
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    :cond_0
    iput-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mIsProtectingBatteryCutOffSettingEnabled:Z

    return-void
.end method
