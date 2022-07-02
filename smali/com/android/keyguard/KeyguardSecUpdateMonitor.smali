.class public Lcom/android/keyguard/KeyguardSecUpdateMonitor;
.super Lcom/android/keyguard/KeyguardUpdateMonitor;
.source "KeyguardSecUpdateMonitor.java"


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private final mBackgroundExecutor:Ljava/util/concurrent/Executor;

.field private final mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

.field private final mBinderCallMonitor:Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;

.field private mBiometricId:I

.field private mBiometricLockoutResetRunnable:Ljava/lang/Runnable;

.field private mBiometricType:I

.field private final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mCallbacksList:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/keyguard/KeyguardUpdateMonitorCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCarrierLock:Z

.field private final mContext:Landroid/content/Context;

.field private mCoverState:Lcom/samsung/android/cover/CoverState;

.field private mCredentialType:I

.field private mDeviceOwnerInfoText:Ljava/lang/String;

.field private final mDisplayListener:Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;

.field private final mESimRemoved:[Z

.field private mFMMLock:Z

.field private final mFaceMessages:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/android/keyguard/SecFaceMsg;",
            ">;"
        }
    .end annotation
.end field

.field private final mFaceMsgConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/keyguard/SecFaceMsg;",
            ">;"
        }
    .end annotation
.end field

.field private final mFastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

.field private mFpMaskToken:Landroid/os/IBinder;

.field private final mFpMessages:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/android/keyguard/SecFpMsg;",
            ">;"
        }
    .end annotation
.end field

.field private final mFpMsgConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/keyguard/SecFpMsg;",
            ">;"
        }
    .end annotation
.end field

.field private mFpStopRequest:Z

.field private mHasLoggedOnceAuditlog:Z

.field private mIsDismissActionExist:Z

.field private mIsDualDarInnerAuthRequired:Z

.field private mIsDualDarInnerAuthShowing:Z

.field private mIsDynamicLockViewMode:Z

.field private mIsEarlyWakeUp:Z

.field private mIsOwnerInfoEnabled:Z

.field private mIsRunningBlackMemo:Z

.field private mIsUnkockedWithDedicatedFingerprint:Z

.field private mKeyguardBatteryStatus:Lcom/android/systemui/statusbar/KeyguardBatteryStatus;

.field private mKeyguardDismissActionType:Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

.field private mLockoutAttemptDeadline:J

.field private mLockoutAttemptTimeout:J

.field private mLockoutBiometricAttemptDeadline:J

.field private mLockoutBiometricAttemptTimeout:J

.field private mLockscreenDisabled:Z

.field private final mLooperSlowLogController:Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private final mOneHandModeSettingsCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private mOwnerInfoText:Ljava/lang/String;

.field private final mPluginAODManagerLazy:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/doze/PluginAODManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/keyguard/KeyguardUpdateMonitorCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRemoteLockSimulationInfo:Lcom/android/internal/widget/RemoteLockInfo;

.field private final mSecureLockChangedCallback:Landroid/os/IRemoteCallback;

.field private final mSettingsCallbackForUPSM:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field private final mSettingsValueListForPSM:[Landroid/net/Uri;

.field private mSimDisabledPermanently:Z

.field private final mTrustManager:Landroid/app/trust/TrustManager;

.field private mViewMediatorCallbackLazy:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/keyguard/ViewMediatorCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$1k-gkaY0mh7jMgjvmSjNE6SHZ3U(IZLcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->lambda$handleDualDarInnerLockScreenStateChanged$7(IZLcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2-vKMEzYujb0sQLG6dKfFDnr4Zs(Ljava/lang/String;ZLcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->lambda$handlePackageRemoved$13(Ljava/lang/String;ZLcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2E_o8XgXewCV8f2LJ1VqnyK6HHo(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->lambda$handleSecurityViewChanged$5(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5_0dv3EdRkFN03_D0uwwfKxb1P4(Landroid/content/Intent;Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->lambda$handleFaceWidgetMediaOutputRemoteViews$16(Landroid/content/Intent;Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7a1D6K5-ju4xv8G3FilvkflPnDM(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    invoke-static {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->lambda$handleFailToUnlockSimulation$19(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7y3CwrOR5mCXiP57eNrk1Ph50ko(ILcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->lambda$handleEmergencyStateChanged$15(ILcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AED9WSKl9e08zozMv5nwYXFqYqQ(Ljava/lang/String;Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->lambda$handlePackageDataCleared$14(Ljava/lang/String;Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CedeULSKarC97YfsGm-1iRXOoWc(ILcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->lambda$updateDualDARInnerLockscreenRequirement$8(ILcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$D0YL98w186Pw1Y1bkO2G2wmxdjY(Lcom/android/keyguard/KeyguardSecUpdateMonitor;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->lambda$new$0(Landroid/net/Uri;)V

    return-void
.end method

.method public static synthetic $r8$lambda$N0wht0IQQi0juGf4aaiwuXxaK6s(ILcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->lambda$setFaceAuthenticated$20(ILcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NpEZxudWptWCiMQyQs7__5MJyhM(Lcom/android/keyguard/KeyguardSecUpdateMonitor;Landroid/hardware/biometrics/BiometricSourceType;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->lambda$sendBiometricUnlockState$17(Landroid/hardware/biometrics/BiometricSourceType;Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QlA-NPZ0GVq_nnugh2w6__1I7Kg(ILcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->lambda$handleDlsViewMode$18(ILcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RzB-L3s0VRWAUCxJe0rWRXuv5ms(Lcom/android/keyguard/KeyguardSecUpdateMonitor;Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->lambda$handleLockDisabledChanged$4(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$T_Tn0gwADphyrwIURSyFW_k9Wrg(ZLcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->lambda$handleTableModeChanged$6(ZLcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Vak6WL2c1iDubSPuR1zxX4FyCw0(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    invoke-static {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->lambda$reportFailedBiometricUnlockAttempt$21(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WMZAr6g3iuf3jxIRO_a7SsvXZiM(Lcom/android/keyguard/KeyguardSecUpdateMonitor;Lcom/android/keyguard/SecFpMsg;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->lambda$new$3(Lcom/android/keyguard/SecFpMsg;)V

    return-void
.end method

.method public static synthetic $r8$lambda$enDRHMD8RkN_POw3CobPvhkCNgI(Lcom/samsung/android/cover/CoverState;Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->lambda$handleUpdateCoverState$9(Lcom/samsung/android/cover/CoverState;Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gvD82pm51_VN_84v3pxWKJb9c2o(Ljava/lang/String;Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->lambda$handlePackageChanged$12(Ljava/lang/String;Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$h_yQTJtINjVcernhV9l1cjsASGE(Ljava/util/function/Consumer;Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->lambda$dispatchCallback$1(Ljava/util/function/Consumer;Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mZT6hE2WpUC64acR5bOtY3VPeAg(Landroid/content/Intent;Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->lambda$handleFaceWidgetRemoteViews$10(Landroid/content/Intent;Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pjrbXkk-TIlKD3jU_LWJ_Z5-_sI(Ljava/lang/String;Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->lambda$handlePackageAdded$11(Ljava/lang/String;Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vhhasN69yIUwwveVnq-HozkUZtw(Lcom/android/keyguard/KeyguardSecUpdateMonitor;Lcom/android/keyguard/SecFaceMsg;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->lambda$new$2(Lcom/android/keyguard/SecFaceMsg;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xN5ci0IU3o76dUpmKTFyNZbqITI(Lcom/android/keyguard/KeyguardSecUpdateMonitor;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->onOneHandModeChanged(Landroid/net/Uri;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/app/IBatteryStats;Landroid/app/NotificationManager;Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;Lcom/android/systemui/util/SettingsHelper;Landroid/content/Context;Landroid/os/Looper;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/util/RingerModeTracker;Ljava/util/concurrent/Executor;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/systemui/biometrics/AuthController;Lcom/android/systemui/telephony/TelephonyListenerManager;Lcom/android/systemui/statusbar/FeatureFlags;Ldagger/Lazy;Ldagger/Lazy;Landroid/os/Vibrator;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/app/IBatteryStats;",
            "Landroid/app/NotificationManager;",
            "Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;",
            "Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;",
            "Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;",
            "Lcom/android/systemui/util/SettingsHelper;",
            "Landroid/content/Context;",
            "Landroid/os/Looper;",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            "Lcom/android/systemui/dump/DumpManager;",
            "Lcom/android/systemui/util/RingerModeTracker;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            "Lcom/android/internal/widget/LockPatternUtils;",
            "Lcom/android/systemui/biometrics/AuthController;",
            "Lcom/android/systemui/telephony/TelephonyListenerManager;",
            "Lcom/android/systemui/statusbar/FeatureFlags;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/doze/PluginAODManager;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/android/keyguard/ViewMediatorCallback;",
            ">;",
            "Landroid/os/Vibrator;",
            ")V"
        }
    .end annotation

    move-object/from16 v13, p0

    move-object/from16 v14, p7

    move-object/from16 v15, p9

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move-object/from16 v2, p8

    move-object/from16 v3, p9

    move-object/from16 v4, p10

    move-object/from16 v5, p11

    move-object/from16 v6, p12

    move-object/from16 v7, p13

    move-object/from16 v8, p14

    move-object/from16 v9, p15

    move-object/from16 v10, p16

    move-object/from16 v11, p17

    move-object/from16 v12, p20

    .line 420
    invoke-direct/range {v0 .. v12}, Lcom/android/keyguard/KeyguardUpdateMonitor;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/util/RingerModeTracker;Ljava/util/concurrent/Executor;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/systemui/biometrics/AuthController;Lcom/android/systemui/telephony/TelephonyListenerManager;Lcom/android/systemui/statusbar/FeatureFlags;Landroid/os/Vibrator;)V

    const/4 v0, 0x0

    .line 112
    iput-object v0, v13, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mCoverState:Lcom/samsung/android/cover/CoverState;

    const/4 v1, 0x0

    .line 124
    iput-boolean v1, v13, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mIsEarlyWakeUp:Z

    .line 126
    iput-boolean v1, v13, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mIsDismissActionExist:Z

    .line 128
    sget-object v2, Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;->KEYGUARD_DISMISS_ACTION_ACTIVE:Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;

    iput-object v2, v13, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mKeyguardDismissActionType:Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;

    .line 133
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v13, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mPreCallbacks:Ljava/util/ArrayList;

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/util/ArrayList;

    aput-object v2, v4, v1

    .line 134
    iget-object v2, v13, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    const/4 v5, 0x1

    aput-object v2, v4, v5

    iput-object v4, v13, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mCallbacksList:[Ljava/util/ArrayList;

    .line 137
    iput-boolean v1, v13, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mIsRunningBlackMemo:Z

    const-wide/16 v6, 0x0

    .line 174
    iput-wide v6, v13, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mLockoutAttemptDeadline:J

    .line 176
    iput-wide v6, v13, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mLockoutAttemptTimeout:J

    .line 178
    iput-wide v6, v13, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mLockoutBiometricAttemptDeadline:J

    .line 180
    iput-wide v6, v13, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mLockoutBiometricAttemptTimeout:J

    .line 190
    iput-boolean v1, v13, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mIsOwnerInfoEnabled:Z

    .line 192
    iput-object v0, v13, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mOwnerInfoText:Ljava/lang/String;

    .line 194
    iput-object v0, v13, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mDeviceOwnerInfoText:Ljava/lang/String;

    .line 196
    new-instance v2, Lcom/android/keyguard/KeyguardSecUpdateMonitor$1;

    invoke-direct {v2, v13}, Lcom/android/keyguard/KeyguardSecUpdateMonitor$1;-><init>(Lcom/android/keyguard/KeyguardSecUpdateMonitor;)V

    iput-object v2, v13, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mSecureLockChangedCallback:Landroid/os/IRemoteCallback;

    .line 206
    new-instance v2, Lcom/android/keyguard/KeyguardSecUpdateMonitor$$ExternalSyntheticLambda0;

    invoke-direct {v2, v13}, Lcom/android/keyguard/KeyguardSecUpdateMonitor$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardSecUpdateMonitor;)V

    iput-object v2, v13, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mSettingsCallbackForUPSM:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    new-array v2, v3, [Landroid/net/Uri;

    const-string/jumbo v4, "ultra_powersaving_mode"

    .line 218
    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    aput-object v4, v2, v1

    const-string v4, "emergency_mode"

    .line 219
    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    aput-object v4, v2, v5

    iput-object v2, v13, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mSettingsValueListForPSM:[Landroid/net/Uri;

    .line 222
    new-instance v2, Lcom/android/keyguard/KeyguardSecUpdateMonitor$2;

    invoke-direct {v2, v13}, Lcom/android/keyguard/KeyguardSecUpdateMonitor$2;-><init>(Lcom/android/keyguard/KeyguardSecUpdateMonitor;)V

    iput-object v2, v13, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mDisplayListener:Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;

    .line 263
    new-instance v2, Lcom/android/keyguard/KeyguardSecUpdateMonitor$$ExternalSyntheticLambda1;

    invoke-direct {v2, v13}, Lcom/android/keyguard/KeyguardSecUpdateMonitor$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/KeyguardSecUpdateMonitor;)V

    iput-object v2, v13, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mOneHandModeSettingsCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    new-array v2, v3, [Z

    .line 268
    iput-object v2, v13, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mESimRemoved:[Z

    .line 281
    iput-object v0, v13, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mFpMaskToken:Landroid/os/IBinder;

    .line 297
    new-instance v0, Lcom/android/keyguard/KeyguardSecUpdateMonitor$3;

    invoke-direct {v0, v13}, Lcom/android/keyguard/KeyguardSecUpdateMonitor$3;-><init>(Lcom/android/keyguard/KeyguardSecUpdateMonitor;)V

    iput-object v0, v13, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 380
    new-instance v2, Lcom/android/keyguard/KeyguardSecUpdateMonitor$4;

    invoke-direct {v2, v13}, Lcom/android/keyguard/KeyguardSecUpdateMonitor$4;-><init>(Lcom/android/keyguard/KeyguardSecUpdateMonitor;)V

    iput-object v2, v13, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mBiometricLockoutResetRunnable:Ljava/lang/Runnable;

    .line 974
    iput-boolean v1, v13, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mHasLoggedOnceAuditlog:Z

    .line 1014
    new-instance v2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v2, v13, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mFaceMessages:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 1017
    new-instance v2, Lcom/android/keyguard/KeyguardSecUpdateMonitor$$ExternalSyntheticLambda12;

    invoke-direct {v2, v13}, Lcom/android/keyguard/KeyguardSecUpdateMonitor$$ExternalSyntheticLambda12;-><init>(Lcom/android/keyguard/KeyguardSecUpdateMonitor;)V

    iput-object v2, v13, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mFaceMsgConsumer:Ljava/util/function/Consumer;

    .line 1075
    new-instance v2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v2, v13, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mFpMessages:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 1084
    new-instance v2, Lcom/android/keyguard/KeyguardSecUpdateMonitor$$ExternalSyntheticLambda13;

    invoke-direct {v2, v13}, Lcom/android/keyguard/KeyguardSecUpdateMonitor$$ExternalSyntheticLambda13;-><init>(Lcom/android/keyguard/KeyguardSecUpdateMonitor;)V

    iput-object v2, v13, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mFpMsgConsumer:Ljava/util/function/Consumer;

    .line 1763
    iput-boolean v1, v13, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mIsUnkockedWithDedicatedFingerprint:Z

    .line 433
    iput-object v14, v13, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mContext:Landroid/content/Context;

    move-object/from16 v1, p12

    .line 434
    iput-object v1, v13, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    move-object/from16 v1, p3

    .line 435
    iput-object v1, v13, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mFastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    move-object/from16 v1, p4

    .line 436
    iput-object v1, v13, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mBinderCallMonitor:Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;

    move-object/from16 v1, p5

    .line 437
    iput-object v1, v13, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mLooperSlowLogController:Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;

    move-object/from16 v1, p14

    .line 438
    iput-object v1, v13, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 439
    iput-object v15, v13, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    move-object/from16 v1, p6

    .line 440
    iput-object v1, v13, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    move-object/from16 v1, p1

    .line 441
    iput-object v1, v13, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    move-object/from16 v1, p2

    .line 442
    iput-object v1, v13, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mNotificationManager:Landroid/app/NotificationManager;

    move-object/from16 v1, p18

    .line 443
    iput-object v1, v13, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mPluginAODManagerLazy:Ldagger/Lazy;

    .line 445
    const-class v1, Landroid/app/trust/TrustManager;

    invoke-virtual {v14, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/trust/TrustManager;

    iput-object v1, v13, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mTrustManager:Landroid/app/trust/TrustManager;

    .line 446
    new-instance v1, Lcom/android/systemui/statusbar/KeyguardBatteryStatus;

    const/4 v2, 0x1

    const/16 v3, 0x64

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 p10, v1

    move/from16 p11, v2

    move/from16 p12, v3

    move/from16 p13, v4

    move/from16 p14, v5

    move/from16 p15, v6

    move/from16 p16, v7

    move/from16 p17, v8

    move/from16 p18, v9

    invoke-direct/range {p10 .. p18}, Lcom/android/systemui/statusbar/KeyguardBatteryStatus;-><init>(IIIIIIZZ)V

    iput-object v1, v13, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mKeyguardBatteryStatus:Lcom/android/systemui/statusbar/KeyguardBatteryStatus;

    const-string v1, "alarm"

    .line 449
    invoke-virtual {v14, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, v13, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mAlarmManager:Landroid/app/AlarmManager;

    .line 453
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    .line 454
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    .line 455
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    .line 456
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.PACKAGE_DATA_CLEARED"

    .line 457
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "package"

    .line 458
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 459
    invoke-virtual {v15, v0, v1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 461
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.samsung.android.intent.action.RESPONSE_SERVICEBOX_REMOTEVIEWS"

    .line 462
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.samsung.android.intent.action.RESPONSE_SERVICEBOX_INTERNAL_REMOTEVIEWS"

    .line 463
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    .line 464
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 465
    iget-object v2, v13, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v15, v0, v1, v2}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiverWithHandler(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/os/Handler;)V

    .line 468
    sget-boolean v1, Lcom/android/systemui/LsRune;->LOCKUI_FACE_WIDGET_MEDIA_OUTPUT_REMOTE_VIEWS:Z

    if-eqz v1, :cond_0

    .line 469
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "sec_qs_media_player_media_output_using_remote_views"

    .line 470
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 471
    iget-object v2, v13, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v15, v0, v1, v2}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiverWithHandler(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/os/Handler;)V

    .line 475
    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.sec.android.intent.action.BLACK_MEMO"

    .line 476
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 477
    invoke-virtual {v15, v0, v1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 481
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.samsung.keyguard.BIOMETRIC_LOCKOUT_RESET"

    .line 482
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 483
    invoke-virtual {v15, v0, v1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 487
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 488
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Process.myUserHandle().getIdentifier() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KeyguardUpdateMonitor"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    invoke-virtual {v13, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->updateSecureLockState(I)Z

    .line 490
    invoke-virtual {v13, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->updateLockscreenDisabled(I)Z

    .line 491
    invoke-virtual {v13, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->updateBiometricsOptionState(I)Z

    .line 492
    invoke-virtual {v13, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->updateOwnerInfoState(I)Z

    .line 494
    iget-object v0, v13, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x44d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 497
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_KNOX_SUPPORT_DUAL_DAR_AT_DO:Z

    if-eqz v0, :cond_1

    .line 498
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-virtual {v13, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->updateDualDARInnerLockscreenRequirement(I)V

    :cond_1
    move-object/from16 v0, p19

    .line 502
    iput-object v0, v13, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mViewMediatorCallbackLazy:Ldagger/Lazy;

    .line 503
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->setShellCommandCallback()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardSecUpdateMonitor;)Z
    .locals 0

    .line 103
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mIsRunningBlackMemo:Z

    return p0
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardSecUpdateMonitor;Z)V
    .locals 0

    .line 103
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->setIsRunningBlackMemo(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardSecUpdateMonitor;)Ljava/lang/Runnable;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mBiometricLockoutResetRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/keyguard/KeyguardSecUpdateMonitor;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object p0
.end method

.method static synthetic access$402(Lcom/android/keyguard/KeyguardSecUpdateMonitor;Z)Z
    .locals 0

    .line 103
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mFpStopRequest:Z

    return p1
.end method

.method private containsFlag(II)Z
    .locals 0

    and-int p0, p1, p2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private createChannels()V
    .locals 4

    .line 2148
    new-instance v0, Landroid/app/NotificationChannel;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mContext:Landroid/content/Context;

    .line 2149
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$string;->kg_fbe_notification_header:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "fbe_channel_id"

    const/4 v3, 0x2

    invoke-direct {v0, v2, v1, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v1, 0x1

    .line 2151
    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->enableLights(Z)V

    const/4 v1, 0x0

    .line 2152
    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 2153
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-void
.end method

.method private forceStartFingerprintAuthentication()V
    .locals 2

    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "forceStartFingerprintAuthentication"

    .line 1758
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 1759
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mForceStartFinger:Z

    .line 1760
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    return-void
.end method

.method private getBiometricAttemptDeadlineWithAuditlog(J)J
    .locals 6

    .line 962
    iget-wide v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mLockoutBiometricAttemptDeadline:J

    cmp-long v2, v0, p1

    if-gez v2, :cond_0

    .line 964
    iget-wide v2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mLockoutBiometricAttemptTimeout:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    :cond_0
    iget-wide v2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mLockoutBiometricAttemptTimeout:J

    add-long/2addr p1, v2

    cmp-long p1, v0, p1

    if-lez p1, :cond_2

    .line 966
    :cond_1
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricAttemptDeadline(I)J

    move-result-wide v0

    .line 969
    :cond_2
    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->reportBiometricAuthThrottleAuditLog(J)V

    return-wide v0
.end method

.method private getLockSettings()Lcom/android/internal/widget/ILockSettings;
    .locals 1

    .line 1220
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    if-nez v0, :cond_0

    const-string v0, "lock_settings"

    .line 1222
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1221
    invoke-static {v0}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    .line 1223
    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    .line 1225
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    return-object p0
.end method

.method private handleDlsBiometricMode(Z)V
    .locals 2

    .line 2175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleDlsBiometricMode(), enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUpdateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2176
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mIsDynamicLockViewMode:Z

    if-eq v0, p1, :cond_1

    .line 2177
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mIsDynamicLockViewMode:Z

    .line 2179
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintOptionEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2180
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 2182
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceOptionEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2183
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFaceListeningState()V

    :cond_1
    return-void
.end method

.method private handleDlsViewMode(I)V
    .locals 2

    .line 2215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleDlsViewMode(), mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUpdateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2218
    new-instance v0, Lcom/android/keyguard/KeyguardSecUpdateMonitor$$ExternalSyntheticLambda7;

    invoke-direct {v0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor$$ExternalSyntheticLambda7;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->dispatchCallback(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private handleDualDarInnerLockScreenStateChanged(IZ)V
    .locals 1

    .line 1519
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_KNOX_SUPPORT_DUAL_DAR_AT_DO:Z

    if-eqz v0, :cond_0

    .line 1520
    new-instance v0, Lcom/android/keyguard/KeyguardSecUpdateMonitor$$ExternalSyntheticLambda8;

    invoke-direct {v0, p1, p2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor$$ExternalSyntheticLambda8;-><init>(IZ)V

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->dispatchCallback(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method private handleEmergencyStateChanged(I)V
    .locals 1

    .line 1890
    new-instance v0, Lcom/android/keyguard/KeyguardSecUpdateMonitor$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor$$ExternalSyntheticLambda4;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->dispatchCallback(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private handleFaceAuth(Lcom/android/keyguard/SecFaceMsg;)V
    .locals 7

    const/4 v0, -0x1

    .line 1033
    invoke-static {v0}, Lcom/android/systemui/util/LogUtil;->startTime(I)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    .line 1036
    :goto_0
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mFaceMessages:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/keyguard/SecFaceMsg;

    const-string v4, "KeyguardFace"

    if-eqz v3, :cond_6

    if-ne v3, p1, :cond_0

    .line 1038
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleFaceAuth faceMsg index = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " / type = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p1, Lcom/android/keyguard/SecFaceMsg;->type:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    :cond_0
    iget v4, v3, Lcom/android/keyguard/SecFaceMsg;->type:I

    if-eqz v4, :cond_5

    const/4 v5, 0x1

    if-eq v4, v5, :cond_4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_3

    const/4 v5, 0x3

    if-eq v4, v5, :cond_2

    const/4 v5, 0x4

    if-eq v4, v5, :cond_1

    goto :goto_0

    .line 1063
    :cond_1
    iget v3, v3, Lcom/android/keyguard/SecFaceMsg;->arg:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->onFaceAuthenticationAcquired(I)V

    goto :goto_1

    .line 1058
    :cond_2
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->onFaceAuthenticationFailed()V

    goto :goto_1

    .line 1053
    :cond_3
    iget-object v3, v3, Lcom/android/keyguard/SecFaceMsg;->result:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;

    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->onFaceAuthenticationSucceeded(Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;)V

    goto :goto_1

    .line 1048
    :cond_4
    iget v4, v3, Lcom/android/keyguard/SecFaceMsg;->arg:I

    iget-object v3, v3, Lcom/android/keyguard/SecFaceMsg;->msgString:Ljava/lang/CharSequence;

    invoke-virtual {p0, v4, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->onFaceAuthenticationHelp(ILjava/lang/CharSequence;)V

    goto :goto_1

    .line 1043
    :cond_5
    iget v4, v3, Lcom/android/keyguard/SecFaceMsg;->arg:I

    iget-object v3, v3, Lcom/android/keyguard/SecFaceMsg;->msgString:Ljava/lang/CharSequence;

    invoke-virtual {p0, v4, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->onFaceAuthenticationError(ILjava/lang/CharSequence;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1072
    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "handleFaceAuth dispatchCount = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v0, v4, p0, p1}, Lcom/android/systemui/util/LogUtil;->endTime(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private handleFaceWidgetMediaOutputRemoteViews(Landroid/content/Intent;)V
    .locals 1

    .line 1897
    new-instance v0, Lcom/android/keyguard/KeyguardSecUpdateMonitor$$ExternalSyntheticLambda9;

    invoke-direct {v0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor$$ExternalSyntheticLambda9;-><init>(Landroid/content/Intent;)V

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->dispatchCallback(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private handleFaceWidgetRemoteViews(Landroid/content/Intent;)V
    .locals 1

    .line 1855
    new-instance v0, Lcom/android/keyguard/KeyguardSecUpdateMonitor$$ExternalSyntheticLambda10;

    invoke-direct {v0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor$$ExternalSyntheticLambda10;-><init>(Landroid/content/Intent;)V

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->dispatchCallback(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private handleFingerprintAuth(Lcom/android/keyguard/SecFpMsg;)V
    .locals 7

    const/4 v0, -0x1

    .line 1108
    invoke-static {v0}, Lcom/android/systemui/util/LogUtil;->startTime(I)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    .line 1111
    :goto_0
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mFpMessages:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/keyguard/SecFpMsg;

    const-string v4, "KeyguardFingerPrint"

    if-eqz v3, :cond_6

    if-ne v3, p1, :cond_0

    .line 1113
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleFingerprintAuth fpMsg index = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " / type = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p1, Lcom/android/keyguard/SecFpMsg;->type:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    :cond_0
    iget v4, v3, Lcom/android/keyguard/SecFpMsg;->type:I

    if-eqz v4, :cond_5

    const/4 v5, 0x1

    if-eq v4, v5, :cond_4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_3

    const/4 v5, 0x3

    if-eq v4, v5, :cond_2

    const/4 v5, 0x4

    if-eq v4, v5, :cond_1

    goto :goto_0

    .line 1138
    :cond_1
    iget v4, v3, Lcom/android/keyguard/SecFpMsg;->sequence:I

    iget v3, v3, Lcom/android/keyguard/SecFpMsg;->arg:I

    invoke-virtual {p0, v4, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->onFpAuthenticationAcquired(II)V

    goto :goto_1

    .line 1133
    :cond_2
    iget v3, v3, Lcom/android/keyguard/SecFpMsg;->sequence:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->onFpAuthenticationFailed(I)V

    goto :goto_1

    .line 1128
    :cond_3
    iget v4, v3, Lcom/android/keyguard/SecFpMsg;->sequence:I

    iget-object v3, v3, Lcom/android/keyguard/SecFpMsg;->result:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;

    invoke-virtual {p0, v4, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->onFpAuthenticationSucceeded(ILandroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V

    goto :goto_1

    .line 1123
    :cond_4
    iget v4, v3, Lcom/android/keyguard/SecFpMsg;->sequence:I

    iget v5, v3, Lcom/android/keyguard/SecFpMsg;->arg:I

    iget-object v3, v3, Lcom/android/keyguard/SecFpMsg;->msgString:Ljava/lang/CharSequence;

    invoke-virtual {p0, v4, v5, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->onFpAuthenticationHelp(IILjava/lang/CharSequence;)V

    goto :goto_1

    .line 1118
    :cond_5
    iget v4, v3, Lcom/android/keyguard/SecFpMsg;->sequence:I

    iget v5, v3, Lcom/android/keyguard/SecFpMsg;->arg:I

    iget-object v3, v3, Lcom/android/keyguard/SecFpMsg;->msgString:Ljava/lang/CharSequence;

    invoke-virtual {p0, v4, v5, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->onFpAuthenticationError(IILjava/lang/CharSequence;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1147
    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "handleFingerprintAuth dispatchCount = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v0, v4, p0, p1}, Lcom/android/systemui/util/LogUtil;->endTime(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private handleLocaleChanged()V
    .locals 2

    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "handleLocaleChanged()"

    .line 2159
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2160
    sget-boolean v0, Lcom/android/systemui/LsRune;->KEYGUARD_FBE:Z

    if-eqz v0, :cond_0

    .line 2161
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->createChannels()V

    .line 2165
    :cond_0
    sget-object v0, Lcom/android/keyguard/KeyguardSecUpdateMonitor$$ExternalSyntheticLambda21;->INSTANCE:Lcom/android/keyguard/KeyguardSecUpdateMonitor$$ExternalSyntheticLambda21;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->dispatchCallback(Ljava/util/function/Consumer;)V

    .line 2169
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateCarrierTextInfo()V

    return-void
.end method

.method private handleLockSimulation(Ljava/lang/String;)V
    .locals 7

    .line 2293
    const-class v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 2294
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "knoxguard"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v6, 0x4

    goto :goto_0

    :sswitch_1
    const-string v1, "license"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move v6, v2

    goto :goto_0

    :sswitch_2
    const-string v1, "clear"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v6, v3

    goto :goto_0

    :sswitch_3
    const-string v1, "admin"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    move v6, v4

    goto :goto_0

    :sswitch_4
    const-string/jumbo v1, "rmm"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    move v6, v5

    :goto_0
    const-string p1, "KeyguardUpdateMonitor"

    packed-switch v6, :pswitch_data_0

    goto/16 :goto_1

    .line 2326
    :pswitch_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "customer_package_name"

    const-string v3, "com.samsung.android.calendar"

    .line 2327
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v1, "customer_app_name"

    const-string v3, "Samsung Calendar"

    .line 2328
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2329
    new-instance v1, Lcom/android/internal/widget/RemoteLockInfo$Builder;

    invoke-direct {v1, v2, v4}, Lcom/android/internal/widget/RemoteLockInfo$Builder;-><init>(IZ)V

    const-string v2, "KnoxGuard Lockscreen"

    .line 2330
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setClientName(Ljava/lang/CharSequence;)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v1

    .line 2331
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setBundle(Landroid/os/Bundle;)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v0

    const-string v1, "010-000-0000"

    .line 2332
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setPhoneNumber(Ljava/lang/CharSequence;)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v0

    const-string v1, "This is Knoxguard Lock Test Message.\n\n\n\n\nKG LOCK\n\n\n\n\nKnoxGuard Lockscreen"

    .line 2333
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v0

    .line 2334
    invoke-virtual {v0, v5}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setSkipSupportContainer(Z)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v0

    const-wide/32 v1, 0xea60

    .line 2335
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setLockTimeOut(J)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v0

    const/4 v1, 0x5

    .line 2336
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setAllowFailCount(I)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v0

    .line 2337
    invoke-virtual {v0}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->build()Lcom/android/internal/widget/RemoteLockInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mRemoteLockSimulationInfo:Lcom/android/internal/widget/RemoteLockInfo;

    .line 2339
    :try_start_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mRemoteLockSimulationInfo:Lcom/android/internal/widget/RemoteLockInfo;

    invoke-interface {v0, v1, p0}, Lcom/android/internal/widget/ILockSettings;->setRemoteLock(ILcom/android/internal/widget/RemoteLockInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception p0

    .line 2341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed setRemoteLock(KNOXGUARD)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2299
    :pswitch_1
    invoke-interface {v0, v5, v4}, Lcom/android/systemui/knox/KnoxStateMonitor;->setAdminLock(ZZ)V

    goto :goto_1

    .line 2302
    :pswitch_2
    invoke-interface {v0, v5, v5}, Lcom/android/systemui/knox/KnoxStateMonitor;->setAdminLock(ZZ)V

    .line 2304
    :try_start_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mRemoteLockSimulationInfo:Lcom/android/internal/widget/RemoteLockInfo;

    if-eqz v0, :cond_5

    .line 2305
    iput-boolean v5, v0, Lcom/android/internal/widget/RemoteLockInfo;->lockState:Z

    .line 2306
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mRemoteLockSimulationInfo:Lcom/android/internal/widget/RemoteLockInfo;

    invoke-interface {v0, v1, v2}, Lcom/android/internal/widget/ILockSettings;->setRemoteLock(ILcom/android/internal/widget/RemoteLockInfo;)V

    const/4 v0, 0x0

    .line 2307
    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mRemoteLockSimulationInfo:Lcom/android/internal/widget/RemoteLockInfo;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 2310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed setRemoteLock"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2296
    :pswitch_3
    invoke-interface {v0, v4, v5}, Lcom/android/systemui/knox/KnoxStateMonitor;->setAdminLock(ZZ)V

    goto :goto_1

    .line 2314
    :pswitch_4
    new-instance v0, Lcom/android/internal/widget/RemoteLockInfo$Builder;

    invoke-direct {v0, v3, v4}, Lcom/android/internal/widget/RemoteLockInfo$Builder;-><init>(IZ)V

    const-string v1, "Samsung Lockscreen"

    .line 2315
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setClientName(Ljava/lang/CharSequence;)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v0

    const-string v1, "000-000-0000"

    .line 2316
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setPhoneNumber(Ljava/lang/CharSequence;)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v0

    const-string v1, "This is RMM Lock Test Message."

    .line 2317
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v0

    .line 2318
    invoke-virtual {v0}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->build()Lcom/android/internal/widget/RemoteLockInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mRemoteLockSimulationInfo:Lcom/android/internal/widget/RemoteLockInfo;

    .line 2320
    :try_start_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mRemoteLockSimulationInfo:Lcom/android/internal/widget/RemoteLockInfo;

    invoke-interface {v0, v1, p0}, Lcom/android/internal/widget/ILockSettings;->setRemoteLock(ILcom/android/internal/widget/RemoteLockInfo;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception p0

    .line 2322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed setRemoteLock(RMM)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1b992 -> :sswitch_4
        0x586034f -> :sswitch_3
        0x5a5b64d -> :sswitch_2
        0x9f08441 -> :sswitch_1
        0x5dd70799 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleNotifyLockout()V
    .locals 1

    .line 708
    sget-object v0, Lcom/android/keyguard/KeyguardSecUpdateMonitor$$ExternalSyntheticLambda26;->INSTANCE:Lcom/android/keyguard/KeyguardSecUpdateMonitor$$ExternalSyntheticLambda26;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->dispatchCallback(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private handlePackageAdded(Ljava/lang/String;)V
    .locals 1

    .line 1862
    new-instance v0, Lcom/android/keyguard/KeyguardSecUpdateMonitor$$ExternalSyntheticLambda18;

    invoke-direct {v0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor$$ExternalSyntheticLambda18;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->dispatchCallback(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private handlePackageChanged(Ljava/lang/String;)V
    .locals 1

    .line 1869
    new-instance v0, Lcom/android/keyguard/KeyguardSecUpdateMonitor$$ExternalSyntheticLambda17;

    invoke-direct {v0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor$$ExternalSyntheticLambda17;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->dispatchCallback(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private handlePackageDataCleared(Ljava/lang/String;)V
    .locals 1

    .line 1883
    new-instance v0, Lcom/android/keyguard/KeyguardSecUpdateMonitor$$ExternalSyntheticLambda16;

    invoke-direct {v0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor$$ExternalSyntheticLambda16;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->dispatchCallback(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private handlePackageRemoved(Ljava/lang/String;Z)V
    .locals 1

    .line 1876
    new-instance v0, Lcom/android/keyguard/KeyguardSecUpdateMonitor$$ExternalSyntheticLambda19;

    invoke-direct {v0, p1, p2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor$$ExternalSyntheticLambda19;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->dispatchCallback(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private handleRemoteLockInfoChanged()V
    .locals 1

    .line 1726
    sget-object v0, Lcom/android/keyguard/KeyguardSecUpdateMonitor$$ExternalSyntheticLambda28;->INSTANCE:Lcom/android/keyguard/KeyguardSecUpdateMonitor$$ExternalSyntheticLambda28;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->dispatchCallback(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private handleSecureStateChanged(I)V
    .locals 6

    .line 796
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    const/16 v1, 0x200

    .line 801
    invoke-direct {p0, p1, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->containsFlag(II)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 802
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->updateLockscreenDisabled(I)Z

    move-result v1

    or-int/2addr v1, v2

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const/4 v3, 0x2

    .line 805
    invoke-direct {p0, p1, v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->containsFlag(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 806
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->updateCredentialType(I)Z

    move-result v3

    or-int/2addr v3, v2

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    const/4 v4, 0x4

    .line 809
    invoke-direct {p0, p1, v4}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->containsFlag(II)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 810
    invoke-virtual {p0, v0, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->updateFMMLock(IZ)Z

    move-result v4

    or-int/2addr v3, v4

    :cond_2
    const/16 v4, 0x8

    .line 813
    invoke-direct {p0, p1, v4}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->containsFlag(II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 814
    invoke-virtual {p0, v0, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->updateCarrierLock(IZ)Z

    move-result v4

    or-int/2addr v3, v4

    :cond_3
    const/16 v4, 0x10

    .line 817
    invoke-direct {p0, p1, v4}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->containsFlag(II)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 818
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->updateBiometricsOptionState(I)Z

    move-result v4

    or-int/2addr v3, v4

    :cond_4
    const/16 v4, 0x20

    .line 821
    invoke-direct {p0, p1, v4}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->containsFlag(II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 822
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->updateSecureLockTimeout(I)Z

    move-result v4

    or-int/2addr v3, v4

    :cond_5
    const/16 v4, 0x40

    .line 825
    invoke-direct {p0, p1, v4}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->containsFlag(II)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 826
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->updateBiometricLockTimeout(I)Z

    move-result v4

    or-int/2addr v3, v4

    :cond_6
    const/4 v4, 0x1

    .line 829
    invoke-direct {p0, p1, v4}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->containsFlag(II)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 830
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->updateSecureLockType(I)Z

    move-result v5

    if-nez v5, :cond_8

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->updateBiometricsOptionState(I)Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_2

    :cond_7
    move v4, v2

    :cond_8
    :goto_2
    or-int/2addr v3, v4

    .line 831
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v5, "com.samsung.keyguard.CLEAR_LOCK"

    .line 832
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 833
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    :cond_9
    const/16 v4, 0x80

    .line 836
    invoke-direct {p0, p1, v4}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->containsFlag(II)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 837
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->updateOwnerInfo(I)Z

    move-result v0

    or-int/2addr v2, v0

    :cond_a
    const/16 v0, 0x100

    .line 840
    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->containsFlag(II)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 841
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->updateDeviceOwnerInfo()Z

    move-result v0

    or-int/2addr v2, v0

    .line 844
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSecureStateChanged secureState : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " isSecureStateUpdated : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", isOwnerInfoStateUpdated : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "KeyguardUpdateMonitor"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_c

    .line 846
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->handleLockModeChanged()V

    .line 848
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateBiometricListeningState()V

    :cond_c
    if-eqz v1, :cond_d

    .line 853
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->handleLockDisabledChanged()V

    :cond_d
    if-eqz v2, :cond_e

    .line 857
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->handleOwnerInfoChanged()V

    :cond_e
    return-void
.end method

.method private handleSecurityViewChanged(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .locals 2

    .line 1440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleSecurityViewChanged: securityMode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->addAdditionalLog(Ljava/lang/String;)V

    .line 1442
    new-instance v0, Lcom/android/keyguard/KeyguardSecUpdateMonitor$$ExternalSyntheticLambda14;

    invoke-direct {v0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor$$ExternalSyntheticLambda14;-><init>(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->dispatchCallback(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private handleStartedEarlyWakingUp(I)V
    .locals 2

    const-string v0, "KeyguardUpdateMonitor#handleStartedEarlyWakingUp"

    .line 2114
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 2115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleStartedEarlyWakingUp start "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUpdateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2116
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isPossibleWakeup(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2117
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFaceListeningState()V

    .line 2119
    :cond_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method private handleStartedWakingUp(I)V
    .locals 3

    .line 2091
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KeyguardUpdateMonitor#handleStartedWakingUp "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 2092
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleStartedWakingUp start "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUpdateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2094
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_SIDE:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsSkipFPResponse:Z

    if-eqz v0, :cond_0

    .line 2095
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTimeoutSkipFPResponse:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 2096
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsSkipFPResponse:Z

    .line 2097
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "skip FP response canceled by handleStartedWakingUp : wakeup reason = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "KeyguardFingerPrint"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2100
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->requestBiometricsAuth(I)V

    .line 2104
    sget-object p1, Lcom/android/keyguard/KeyguardSecUpdateMonitor$$ExternalSyntheticLambda22;->INSTANCE:Lcom/android/keyguard/KeyguardSecUpdateMonitor$$ExternalSyntheticLambda22;

    const-string v0, "onStartedWakingUp"

    invoke-virtual {p0, p1, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->dispatchCallback(Ljava/util/function/Consumer;Ljava/lang/String;)V

    const-string p0, "handleStartedWakingUp end"

    .line 2108
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2109
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method private handleStatusBarState(Z)V
    .locals 2

    .line 1731
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsShadeLockedState:Z

    if-eq v0, p1, :cond_2

    .line 1732
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleStatusBarState( prev:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsShadeLockedState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "-> next:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUpdateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1733
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsShadeLockedState:Z

    .line 1734
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockCompleted()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 1737
    :cond_0
    sget-boolean p1, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintOptionEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1738
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 1740
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceOptionEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1741
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFaceListeningState()V

    :cond_2
    return-void
.end method

.method private handleSystemDialogShowing()V
    .locals 1

    .line 1748
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDetectionRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1749
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->cancelFaceAuth()V

    .line 1752
    :cond_0
    sget-object v0, Lcom/android/keyguard/KeyguardSecUpdateMonitor$$ExternalSyntheticLambda29;->INSTANCE:Lcom/android/keyguard/KeyguardSecUpdateMonitor$$ExternalSyntheticLambda29;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->dispatchCallback(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private handleTableModeChanged(Z)V
    .locals 1

    .line 1448
    new-instance v0, Lcom/android/keyguard/KeyguardSecUpdateMonitor$$ExternalSyntheticLambda20;

    invoke-direct {v0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor$$ExternalSyntheticLambda20;-><init>(Z)V

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->dispatchCallback(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private handleUnlockSimulation(Ljava/lang/String;)V
    .locals 5

    .line 2268
    sget-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_SHELL:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->setUnlockTrigger(Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;)V

    const-string v0, "finger"

    .line 2271
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "face"

    if-nez v1, :cond_0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2272
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mFastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    invoke-virtual {v1}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->setEnabled()V

    .line 2275
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "onAuthenticationSucceeded()"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_3

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 2286
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mViewMediatorCallbackLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/ViewMediatorCallback;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p1

    invoke-interface {p0, v3, p1}, Lcom/android/keyguard/ViewMediatorCallback;->keyguardDone(ZI)V

    goto :goto_0

    :cond_2
    const-string p1, "KeyguardFace"

    .line 2281
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2282
    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->setFaceAuthenticated(Z)V

    .line 2283
    invoke-virtual {p0, v4, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFaceAuthenticated(IZ)V

    goto :goto_0

    :cond_3
    const-string p1, "KeyguardFingerPrint"

    .line 2277
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2278
    invoke-virtual {p0, v4, v4, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFingerprintAuthenticated(IZI)V

    :goto_0
    return-void
.end method

.method private handleUpdateSecureLockCallback()V
    .locals 4

    .line 1206
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 1207
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Process.myUserHandle().getIdentifier() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KeyguardUpdateMonitor"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    .line 1210
    :try_start_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mSecureLockChangedCallback:Landroid/os/IRemoteCallback;

    const/4 v3, 0x0

    invoke-interface {v1, p0, v3}, Lcom/android/internal/widget/ILockSettings;->setLockModeChangedCallback(Landroid/os/IRemoteCallback;Z)V

    .line 1211
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setLockModeChangedCallback, userID = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoteException! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private isBatteryUpdateInteresting(Lcom/android/systemui/statusbar/KeyguardBatteryStatus;Lcom/android/systemui/statusbar/KeyguardBatteryStatus;)Z
    .locals 7

    .line 1923
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/KeyguardBatteryStatus;->isPluggedIn()Z

    move-result p0

    .line 1924
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/KeyguardBatteryStatus;->isPluggedIn()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 1925
    iget v3, p1, Lcom/android/settingslib/fuelgauge/BatteryStatus;->status:I

    iget v4, p2, Lcom/android/settingslib/fuelgauge/BatteryStatus;->status:I

    if-eq v3, v4, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    if-ne v0, p0, :cond_a

    if-eqz v3, :cond_1

    goto :goto_1

    .line 1934
    :cond_1
    iget v0, p1, Lcom/android/settingslib/fuelgauge/BatteryStatus;->level:I

    iget v3, p2, Lcom/android/settingslib/fuelgauge/BatteryStatus;->level:I

    if-eq v0, v3, :cond_2

    return v2

    :cond_2
    if-eqz p0, :cond_3

    .line 1939
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/KeyguardBatteryStatus;->highVoltage:Z

    iget-boolean v3, p2, Lcom/android/systemui/statusbar/KeyguardBatteryStatus;->highVoltage:Z

    if-eq v0, v3, :cond_3

    return v2

    :cond_3
    if-eqz p0, :cond_4

    .line 1943
    iget v0, p1, Lcom/android/systemui/statusbar/KeyguardBatteryStatus;->online:I

    iget v3, p2, Lcom/android/systemui/statusbar/KeyguardBatteryStatus;->online:I

    if-eq v0, v3, :cond_4

    return v2

    :cond_4
    if-eqz p0, :cond_5

    .line 1946
    iget v0, p2, Lcom/android/systemui/statusbar/KeyguardBatteryStatus;->swellingMode:I

    if-lez v0, :cond_5

    iget v3, p1, Lcom/android/systemui/statusbar/KeyguardBatteryStatus;->swellingMode:I

    if-eq v3, v0, :cond_5

    return v2

    :cond_5
    if-eqz p0, :cond_6

    .line 1951
    iget v0, p1, Lcom/android/settingslib/fuelgauge/BatteryStatus;->health:I

    iget v3, p2, Lcom/android/settingslib/fuelgauge/BatteryStatus;->health:I

    if-eq v0, v3, :cond_6

    return v2

    :cond_6
    if-eqz p0, :cond_7

    .line 1955
    iget-wide v3, p2, Lcom/android/systemui/statusbar/KeyguardBatteryStatus;->remaining:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_7

    iget-wide v5, p1, Lcom/android/systemui/statusbar/KeyguardBatteryStatus;->remaining:J

    cmp-long v0, v5, v3

    if-eqz v0, :cond_7

    return v2

    :cond_7
    if-eqz p0, :cond_8

    .line 1959
    iget v0, p1, Lcom/android/systemui/statusbar/KeyguardBatteryStatus;->mSuperFastCharger:I

    iget v3, p2, Lcom/android/systemui/statusbar/KeyguardBatteryStatus;->mSuperFastCharger:I

    if-eq v0, v3, :cond_8

    return v2

    :cond_8
    if-eqz p0, :cond_9

    .line 1963
    iget p0, p2, Lcom/android/settingslib/fuelgauge/BatteryStatus;->maxChargingWattage:I

    iget p1, p1, Lcom/android/settingslib/fuelgauge/BatteryStatus;->maxChargingWattage:I

    if-eq p0, p1, :cond_9

    move v1, v2

    :cond_9
    return v1

    :cond_a
    :goto_1
    return v2
.end method

.method private static synthetic lambda$dispatchCallback$1(Ljava/util/function/Consumer;Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    .line 672
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$handleDlsViewMode$18(ILcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    .line 2218
    invoke-interface {p1, p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorCallback;->onDlsViewModeChanged(I)V

    return-void
.end method

.method private static synthetic lambda$handleDualDarInnerLockScreenStateChanged$7(IZLcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    .line 1520
    invoke-interface {p2, p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorCallback;->onDualDarInnerLockScreenStateChanged(IZ)V

    return-void
.end method

.method private static synthetic lambda$handleEmergencyStateChanged$15(ILcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    .line 1890
    invoke-interface {p1, p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorCallback;->onEmergencyStateChanged(I)V

    return-void
.end method

.method private static synthetic lambda$handleFaceWidgetMediaOutputRemoteViews$16(Landroid/content/Intent;Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    .line 1897
    invoke-interface {p1, p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorCallback;->onUpdateFaceWidgetMediaOutputRemoteViews(Landroid/content/Intent;)V

    return-void
.end method

.method private static synthetic lambda$handleFaceWidgetRemoteViews$10(Landroid/content/Intent;Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    .line 1855
    invoke-interface {p1, p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorCallback;->onUpdateFaceWidgetRemoteViews(Landroid/content/Intent;)V

    return-void
.end method

.method private static synthetic lambda$handleFailToUnlockSimulation$19(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 1

    .line 2362
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-interface {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorCallback;->onSimulationFailToUnlock(I)V

    return-void
.end method

.method private synthetic lambda$handleLockDisabledChanged$4(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    .line 1402
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mLockscreenDisabled:Z

    invoke-interface {p1, p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorCallback;->onLockDisabledChanged(Z)V

    return-void
.end method

.method private static synthetic lambda$handlePackageAdded$11(Ljava/lang/String;Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    .line 1862
    invoke-interface {p1, p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorCallback;->onPackageAdded(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$handlePackageChanged$12(Ljava/lang/String;Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    .line 1869
    invoke-interface {p1, p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorCallback;->onPackageChanged(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$handlePackageDataCleared$14(Ljava/lang/String;Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    .line 1883
    invoke-interface {p1, p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorCallback;->onPackageDataCleared(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$handlePackageRemoved$13(Ljava/lang/String;ZLcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    .line 1876
    invoke-interface {p2, p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorCallback;->onPackageRemoved(Ljava/lang/String;Z)V

    return-void
.end method

.method private static synthetic lambda$handleSecurityViewChanged$5(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    .line 1442
    invoke-interface {p1, p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorCallback;->onSecurityViewChanged(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    return-void
.end method

.method private static synthetic lambda$handleTableModeChanged$6(ZLcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    .line 1448
    invoke-interface {p1, p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorCallback;->onTableModeChanged(Z)V

    return-void
.end method

.method private static synthetic lambda$handleUpdateCoverState$9(Lcom/samsung/android/cover/CoverState;Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    .line 1831
    invoke-interface {p1, p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorCallback;->onUpdateCoverState(Lcom/samsung/android/cover/CoverState;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/net/Uri;)V
    .locals 0

    .line 208
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->updateBiometricsOptionState(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 209
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->dispatchLockModeChanged()V

    .line 211
    :cond_0
    sget-boolean p1, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY:Z

    if-eqz p1, :cond_1

    .line 212
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$new$2(Lcom/android/keyguard/SecFaceMsg;)V
    .locals 2

    .line 1019
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mFaceMessages:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 1020
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x459

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const/4 v0, 0x1

    .line 1021
    invoke-virtual {p1, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1022
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    return-void
.end method

.method private synthetic lambda$new$3(Lcom/android/keyguard/SecFpMsg;)V
    .locals 4

    .line 1086
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mFpMessages:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 1087
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x457

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    .line 1088
    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1091
    iget p1, p1, Lcom/android/keyguard/SecFpMsg;->type:I

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    .line 1092
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mFaceMessages:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/keyguard/SecFaceMsg;

    if-eqz p1, :cond_0

    .line 1093
    iget v3, p1, Lcom/android/keyguard/SecFaceMsg;->type:I

    if-ne v3, v2, :cond_0

    .line 1094
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x459

    invoke-virtual {v2, v3, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1095
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1096
    invoke-virtual {p1, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1100
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    if-eqz p1, :cond_1

    .line 1102
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    :cond_1
    return-void
.end method

.method private static synthetic lambda$reportFailedBiometricUnlockAttempt$21(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 1

    const/4 v0, 0x1

    .line 2442
    invoke-interface {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorCallback;->onBiometricLockoutChanged(Z)V

    return-void
.end method

.method private synthetic lambda$sendBiometricUnlockState$17(Landroid/hardware/biometrics/BiometricSourceType;Landroid/content/Intent;)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 2082
    sget-object v1, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p1, v1, :cond_0

    iget p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mBiometricId:I

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string p1, "KeyguardUpdateMonitor"

    const-string/jumbo v1, "sendBiometricUnlockState type=%s biometricId=%d"

    .line 2081
    invoke-static {p1, v1, v0}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2083
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private static synthetic lambda$setFaceAuthenticated$20(ILcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    .line 2401
    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onTrustChanged(I)V

    return-void
.end method

.method private static synthetic lambda$updateDualDARInnerLockscreenRequirement$8(ILcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    .line 1567
    invoke-interface {p1, p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorCallback;->onDualDARInnerLockscreenRequirementChanged(I)V

    return-void
.end method

.method private launchSecureFolderIfNeeded(II)V
    .locals 3

    .line 1773
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->shouldSupportDedicatedFingerprint()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1778
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "android.intent.extra.user_handle"

    .line 1779
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "knox.container.proxy.EXTRA_FINGERPRINT_ID"

    .line 1780
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "knox.container.proxy.EXTRA_FLAG_NOTIFICATION_CLICKED"

    const/4 p2, 0x0

    .line 1781
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "knox.container.proxy.COMMAND_DEDICATED_FINGERPRINT"

    .line 1782
    invoke-static {p1, v0}, Lcom/samsung/android/knox/ContainerProxy;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    const/16 v0, 0x63

    if-eqz p1, :cond_1

    const-string v0, "android.intent.extra.RETURN_RESULT"

    .line 1786
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    :cond_1
    if-nez v0, :cond_2

    const/4 p1, 0x1

    .line 1790
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->setDedicatedFingerprintFlag(Z)V

    .line 1791
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 p1, 0x45c

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1793
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->setDedicatedFingerprintFlag(Z)V

    .line 1795
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "launch SecureFolder by dedicated fingerprint res = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KeyguardUpdateMonitor"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private onOneHandModeChanged(Landroid/net/Uri;)V
    .locals 0

    .line 1606
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 1607
    sget-boolean p1, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY_OPTICAL:Z

    if-eqz p1, :cond_1

    .line 1608
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isOneHandModeRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1609
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->removeMaskViewForOpticalFpSensor()V

    goto :goto_0

    .line 1611
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDetectionRunning()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mFpMaskToken:Landroid/os/IBinder;

    if-nez p1, :cond_1

    .line 1612
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->addMaskViewForOpticalFpSensor()V

    :cond_1
    :goto_0
    return-void
.end method

.method private reportBiometricAuthThrottleAuditLog(J)V
    .locals 9

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-lez p1, :cond_0

    .line 979
    iget-boolean p2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mHasLoggedOnceAuditlog:Z

    if-nez p2, :cond_0

    .line 980
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v6

    .line 981
    invoke-virtual {p0, v6}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getFailedBiometricUnlockAttempts(I)I

    move-result p1

    .line 983
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x1

    .line 987
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-class p2, Lcom/android/keyguard/KeyguardSecUpdateMonitor;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Incorrect biometric authentication attempts ("

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") limit reached"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 986
    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    const/4 p1, 0x1

    .line 990
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mHasLoggedOnceAuditlog:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 992
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 993
    throw p0

    :cond_0
    if-gtz p1, :cond_1

    .line 994
    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mHasLoggedOnceAuditlog:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 995
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mHasLoggedOnceAuditlog:Z

    :cond_1
    :goto_0
    return-void
.end method

.method private setDedicatedFingerprintFlag(Z)V
    .locals 0

    .line 1805
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mIsUnkockedWithDedicatedFingerprint:Z

    return-void
.end method

.method private setIsRunningBlackMemo(Z)V
    .locals 2

    .line 2008
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mIsRunningBlackMemo:Z

    if-eq v0, p1, :cond_0

    .line 2009
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setIsRunningBlackMemo : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mIsRunningBlackMemo:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUpdateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2010
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mIsRunningBlackMemo:Z

    .line 2012
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintOptionEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2013
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    :cond_0
    return-void
.end method

.method private setShellCommandCallback()V
    .locals 2

    .line 2229
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    .line 2231
    :try_start_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    new-instance v1, Lcom/android/keyguard/KeyguardSecUpdateMonitor$7;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor$7;-><init>(Lcom/android/keyguard/KeyguardSecUpdateMonitor;)V

    invoke-interface {v0, v1}, Lcom/android/internal/widget/ILockSettings;->setShellCommandCallback(Landroid/os/IRemoteCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setShellCommandCallback RemoteException! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "KeyguardUpdateMonitor"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private updateCredentialType(I)Z
    .locals 3

    .line 1002
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getCredentialTypeForUser(I)I

    move-result v0

    .line 1003
    iget v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mCredentialType:I

    if-eq v1, v0, :cond_0

    .line 1004
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateCredentialType() userId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", credentialType:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mCredentialType:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "->"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1006
    iput v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mCredentialType:I

    .line 1007
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", isSecure="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSecure()Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1008
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->addAdditionalLog(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private updateDeviceOwnerInfo()Z
    .locals 3

    .line 1338
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getDeviceOwnerInfo()Ljava/lang/String;

    move-result-object v0

    .line 1340
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mDeviceOwnerInfoText:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 1341
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateDeviceOwnerInfo() DO(isEmpty):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mDeviceOwnerInfoText:Ljava/lang/String;

    .line 1342
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1344
    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mDeviceOwnerInfoText:Ljava/lang/String;

    .line 1345
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->addAdditionalLog(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method private updateOwnerInfo(I)Z
    .locals 4

    .line 1320
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isOwnerInfoEnabled(I)Z

    move-result v0

    .line 1321
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    move-result-object v1

    .line 1323
    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mIsOwnerInfoEnabled:Z

    if-ne v2, v0, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mOwnerInfoText:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 1324
    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateOwnerInfoEnabled() userId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", OE:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mIsOwnerInfoEnabled:Z

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "->"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", OI(isEmpty):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mOwnerInfoText:Ljava/lang/String;

    .line 1326
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1328
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mIsOwnerInfoEnabled:Z

    .line 1329
    iput-object v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mOwnerInfoText:Ljava/lang/String;

    .line 1330
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->addAdditionalLog(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method private updateSecureLockType(I)Z
    .locals 3

    .line 787
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->updateCredentialType(I)Z

    move-result v0

    const/4 v1, 0x0

    .line 788
    invoke-virtual {p0, p1, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->updateFMMLock(IZ)Z

    move-result v2

    or-int/2addr v0, v2

    .line 789
    invoke-virtual {p0, p1, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->updateCarrierLock(IZ)Z

    move-result p0

    or-int/2addr p0, v0

    return p0
.end method


# virtual methods
.method public addAdditionalLog(Ljava/lang/String;)V
    .locals 0

    const-string p0, "KeyguardUpdateMonitor"

    .line 1169
    invoke-static {p0, p1}, Lcom/android/systemui/keyguard/SecurityLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addMaskViewForOpticalFpSensor()V
    .locals 3

    .line 1699
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFingerprintManager()Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1700
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mFpMaskToken:Landroid/os/IBinder;

    if-nez v1, :cond_0

    const-string v1, "KeyguardFingerPrint"

    const-string/jumbo v2, "semAddMaskView()"

    .line 1701
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1702
    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->semAddMaskView()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mFpMaskToken:Landroid/os/IBinder;

    const/4 v0, 0x1

    .line 1703
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFocusForInDisplayFingerprint(Z)V

    :cond_0
    return-void
.end method

.method public checkSimState(I)Z
    .locals 0

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    const/4 p0, 0x3

    if-eq p1, p0, :cond_0

    const/16 p0, 0xc

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public clearESimRemoved()V
    .locals 2

    .line 1477
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mESimRemoved:[Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    .line 1478
    aput-boolean v1, p0, v1

    return-void
.end method

.method public dispatchCallback(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/keyguard/KeyguardUpdateMonitorCallback;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 657
    invoke-virtual {p0, p1, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->dispatchCallback(Ljava/util/function/Consumer;Ljava/lang/String;)V

    return-void
.end method

.method public dispatchCallback(Ljava/util/function/Consumer;Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/keyguard/KeyguardUpdateMonitorCallback;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 663
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mCallbacksList:[Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 666
    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_5

    aget-object v4, v0, v3

    move v5, v2

    .line 667
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_4

    .line 668
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v6, :cond_3

    .line 670
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mFastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    .line 671
    invoke-virtual {v7}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_2

    sget-boolean v7, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->DEBUG:Z

    if-eqz v7, :cond_2

    .line 672
    new-instance v7, Lcom/android/keyguard/KeyguardSecUpdateMonitor$$ExternalSyntheticLambda3;

    invoke-direct {v7, p1, v6}, Lcom/android/keyguard/KeyguardSecUpdateMonitor$$ExternalSyntheticLambda3;-><init>(Ljava/util/function/Consumer;Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    const/4 v8, 0x5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "dispatchCallback "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    move-object v10, p2

    goto :goto_2

    :cond_1
    const-string v10, ""

    .line 674
    :goto_2
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " / "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v9, v2, [Ljava/lang/Object;

    const-string v10, "BioUnlock"

    .line 672
    invoke-static {v7, v8, v10, v6, v9}, Lcom/android/systemui/util/LogUtil;->execTime(Ljava/lang/Runnable;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 676
    :cond_2
    invoke-interface {p1, v6}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_3
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public dispatchCoverState(Lcom/samsung/android/cover/CoverState;)V
    .locals 1

    .line 1819
    monitor-enter p0

    .line 1820
    :try_start_0
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 1821
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1822
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x5dd

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 1823
    iput-object p1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1824
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :catchall_0
    move-exception p1

    .line 1821
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public dispatchDlsBiometricMode(Z)V
    .locals 2

    .line 2197
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x57a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2198
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2200
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public dispatchDlsViewMode(I)V
    .locals 2

    .line 2206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatchDlsViewMode(), mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUpdateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2207
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x57b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2208
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2210
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public dispatchDualDarInnerLockScreenState(IZ)V
    .locals 2

    .line 1507
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_KNOX_SUPPORT_DUAL_DAR_AT_DO:Z

    if-eqz v0, :cond_1

    .line 1508
    iput-boolean p2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mIsDualDarInnerAuthShowing:Z

    .line 1510
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x450

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1511
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1513
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void
.end method

.method public dispatchForceStartFingerprint()V
    .locals 2

    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "dispatchForceStartFingerprint"

    .line 2370
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2371
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x45a

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public dispatchLockModeChanged()V
    .locals 2

    .line 1417
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x44f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1418
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1420
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public dispatchSecureLockUpdate()V
    .locals 3

    .line 1434
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x44d

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public dispatchSecureState(I)V
    .locals 3

    .line 1392
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x44e

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1393
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1395
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public dispatchStartedEarlyWakingUp(I)V
    .locals 2

    .line 2047
    monitor-enter p0

    const/4 v0, 0x1

    .line 2048
    :try_start_0
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mIsEarlyWakeUp:Z

    .line 2049
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2050
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x3eb

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_0
    move-exception p1

    .line 2049
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public dispatchStartedWakingUp(I)V
    .locals 2

    .line 2030
    monitor-enter p0

    const/4 v0, 0x1

    .line 2031
    :try_start_0
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    const/4 v0, 0x0

    .line 2033
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mIsEarlyWakeUp:Z

    const/16 v1, 0x68

    if-eq v1, p1, :cond_0

    .line 2037
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsScreenSaverRunning:Z

    .line 2039
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2040
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ea

    invoke-virtual {p0, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_0
    move-exception p1

    .line 2039
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public dump(Ljava/io/PrintWriter;I)V
    .locals 6

    .line 1969
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Security state (user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") - cached state"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1970
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    getBiometricType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p2}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricType(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mBiometricType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1971
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    isFingerprintOptionEnabled="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, p2}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricState(II)I

    move-result v2

    const/4 v4, 0x0

    if-ne v2, v3, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBiometricsFingerprint:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1972
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    isFaceOptionEnabled="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/16 v5, 0x100

    invoke-virtual {v2, v5, p2}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricState(II)I

    move-result v2

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBiometricsFace:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1973
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    getFailedUnlockAttempt="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, p2}, Lcom/android/internal/widget/LockPatternUtils;->getFailedUnlockAttempt(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1974
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mCredentialType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, p2}, Lcom/android/internal/widget/LockPatternUtils;->getCredentialTypeForUser(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mCredentialType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1975
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    isSecure="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, p2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSecure()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-eqz p2, :cond_2

    .line 1977
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    hasSeparateChallenge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0, p2}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public getCoverState()Lcom/samsung/android/cover/CoverState;
    .locals 1

    .line 1811
    monitor-enter p0

    .line 1812
    :try_start_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mCoverState:Lcom/samsung/android/cover/CoverState;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 1813
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCredentialTypeForUser(I)I
    .locals 1

    .line 1153
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 1154
    iget p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mCredentialType:I

    return p0

    .line 1156
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getCredentialTypeForUser(I)I

    move-result p0

    return p0
.end method

.method public getCurrentSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    .locals 0

    .line 1178
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object p0
.end method

.method public getDedicatedFingerprintFlag()Z
    .locals 0

    .line 1800
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mIsUnkockedWithDedicatedFingerprint:Z

    return p0
.end method

.method public getDeviceOwnerInfo()Ljava/lang/String;
    .locals 0

    .line 1372
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mDeviceOwnerInfoText:Ljava/lang/String;

    return-object p0
.end method

.method public getDismissActionType()Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;
    .locals 0

    .line 736
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mKeyguardDismissActionType:Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;

    return-object p0
.end method

.method public getFaceMsgDispatcher()Ljava/util/function/Consumer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Consumer<",
            "Lcom/android/keyguard/SecFaceMsg;",
            ">;"
        }
    .end annotation

    .line 1028
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mFaceMsgConsumer:Ljava/util/function/Consumer;

    return-object p0
.end method

.method public getFailedBiometricUnlockAttempts(I)I
    .locals 1

    .line 2460
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBiometricFailedAttempts:Landroid/util/SparseIntArray;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    return p0
.end method

.method public getFastBioUnlockController()Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;
    .locals 0

    .line 1985
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mFastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    return-object p0
.end method

.method public getFpMsgDispatcher()Ljava/util/function/Consumer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Consumer<",
            "Lcom/android/keyguard/SecFpMsg;",
            ">;"
        }
    .end annotation

    .line 1081
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mFpMsgConsumer:Ljava/util/function/Consumer;

    return-object p0
.end method

.method public getKeyguardBatteryStatus()Lcom/android/systemui/statusbar/KeyguardBatteryStatus;
    .locals 0

    .line 1918
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mKeyguardBatteryStatus:Lcom/android/systemui/statusbar/KeyguardBatteryStatus;

    return-object p0
.end method

.method public getLockoutAttemptDeadline()J
    .locals 8

    .line 907
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 908
    iget-wide v2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mLockoutAttemptDeadline:J

    cmp-long v4, v2, v0

    if-gez v4, :cond_0

    iget-wide v4, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mLockoutAttemptTimeout:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 909
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    return-wide v0

    .line 912
    :cond_0
    iget-wide v4, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mLockoutAttemptTimeout:J

    add-long/2addr v0, v4

    cmp-long v0, v2, v0

    if-lez v0, :cond_1

    .line 913
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    return-wide v0

    :cond_1
    return-wide v2
.end method

.method public getOwnerInfo()Ljava/lang/String;
    .locals 0

    .line 1360
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mOwnerInfoText:Ljava/lang/String;

    return-object p0
.end method

.method public getPluginAODManager()Lcom/android/systemui/doze/PluginAODManager;
    .locals 0

    .line 2224
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mPluginAODManagerLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/doze/PluginAODManager;

    return-object p0
.end method

.method public getSecLockoutBiometricAttemptDeadline()J
    .locals 2

    .line 940
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 944
    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getBiometricAttemptDeadlineWithAuditlog(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSettingsHelper()Lcom/android/systemui/util/SettingsHelper;
    .locals 0

    .line 651
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    return-object p0
.end method

.method public handleFailToUnlockSimulation(Ljava/lang/String;)V
    .locals 2

    .line 2351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleFailToUnlockSimulation unlockType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUpdateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2352
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "finger"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "onAuthenticationFailed()"

    if-nez v0, :cond_1

    const-string v0, "face"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2362
    sget-object p1, Lcom/android/keyguard/KeyguardSecUpdateMonitor$$ExternalSyntheticLambda23;->INSTANCE:Lcom/android/keyguard/KeyguardSecUpdateMonitor$$ExternalSyntheticLambda23;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->dispatchCallback(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_0
    const-string p1, "KeyguardFace"

    .line 2358
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2359
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFaceAuthFailed()V

    goto :goto_0

    :cond_1
    const-string p1, "KeyguardFingerPrint"

    .line 2354
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2355
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFingerprintAuthFailed()V

    :goto_0
    return-void
.end method

.method public handleLockDisabledChanged()V
    .locals 1

    .line 1402
    new-instance v0, Lcom/android/keyguard/KeyguardSecUpdateMonitor$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor$$ExternalSyntheticLambda11;-><init>(Lcom/android/keyguard/KeyguardSecUpdateMonitor;)V

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->dispatchCallback(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public handleLockModeChanged()V
    .locals 1

    .line 1427
    sget-object v0, Lcom/android/keyguard/KeyguardSecUpdateMonitor$$ExternalSyntheticLambda25;->INSTANCE:Lcom/android/keyguard/KeyguardSecUpdateMonitor$$ExternalSyntheticLambda25;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->dispatchCallback(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public handleOwnerInfoChanged()V
    .locals 1

    .line 1410
    sget-object v0, Lcom/android/keyguard/KeyguardSecUpdateMonitor$$ExternalSyntheticLambda27;->INSTANCE:Lcom/android/keyguard/KeyguardSecUpdateMonitor$$ExternalSyntheticLambda27;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->dispatchCallback(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public handleSecMessage(Landroid/os/Message;)V
    .locals 3

    .line 508
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x452

    if-eq v0, v1, :cond_4

    const/16 v1, 0x453

    if-eq v0, v1, :cond_3

    const/16 v1, 0x5dd

    if-eq v0, v1, :cond_2

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    packed-switch v0, :pswitch_data_4

    goto/16 :goto_0

    .line 590
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->handleDlsViewMode(I)V

    goto/16 :goto_0

    .line 587
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->handleDlsBiometricMode(Z)V

    goto/16 :goto_0

    .line 584
    :pswitch_2
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->handleLocaleChanged()V

    goto/16 :goto_0

    .line 643
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/Intent;

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->handleFaceWidgetMediaOutputRemoteViews(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 567
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->handleEmergencyStateChanged(I)V

    goto/16 :goto_0

    .line 564
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->handlePackageDataCleared(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 552
    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/Intent;

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->handleFaceWidgetRemoteViews(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 561
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v2, :cond_0

    move v1, v2

    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->handlePackageRemoved(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 558
    :pswitch_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->handlePackageChanged(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 555
    :pswitch_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->handlePackageAdded(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 632
    :pswitch_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->handleFailToUnlockSimulation(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 629
    :pswitch_b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->handleUnlockSimulation(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 626
    :pswitch_c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->handleLockSimulation(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 598
    :pswitch_d
    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->setDedicatedFingerprintFlag(Z)V

    goto/16 :goto_0

    .line 595
    :pswitch_e
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->launchSecureFolderIfNeeded(II)V

    goto/16 :goto_0

    .line 621
    :pswitch_f
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->forceStartFingerprintAuthentication()V

    goto/16 :goto_0

    .line 516
    :pswitch_10
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/keyguard/SecFaceMsg;

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->handleFaceAuth(Lcom/android/keyguard/SecFaceMsg;)V

    goto/16 :goto_0

    .line 521
    :pswitch_11
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->handleTableModeChanged(Z)V

    goto/16 :goto_0

    .line 511
    :pswitch_12
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/keyguard/SecFpMsg;

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->handleFingerprintAuth(Lcom/android/keyguard/SecFpMsg;)V

    goto/16 :goto_0

    .line 613
    :pswitch_13
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->handleStatusBarState(Z)V

    goto :goto_0

    .line 616
    :pswitch_14
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->handleSystemDialogShowing()V

    goto :goto_0

    .line 542
    :pswitch_15
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    if-ne p1, v2, :cond_1

    move v1, v2

    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->handleDualDarInnerLockScreenStateChanged(IZ)V

    goto :goto_0

    .line 537
    :pswitch_16
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->handleLockModeChanged()V

    goto :goto_0

    .line 534
    :pswitch_17
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->handleSecureStateChanged(I)V

    goto :goto_0

    .line 531
    :pswitch_18
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->handleUpdateSecureLockCallback()V

    goto :goto_0

    .line 526
    :pswitch_19
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->handleNotifyLockout()V

    goto :goto_0

    .line 579
    :pswitch_1a
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->handleStartedEarlyWakingUp(I)V

    goto :goto_0

    .line 572
    :pswitch_1b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KeyguardUpdateMonitor#handler MSG_STARTED_WAKING_UP "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 573
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->handleStartedWakingUp(I)V

    .line 574
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_0

    .line 637
    :pswitch_1c
    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->setIsRunningBlackMemo(Z)V

    goto :goto_0

    .line 547
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/cover/CoverState;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->handleUpdateCoverState(Lcom/samsung/android/cover/CoverState;)V

    goto :goto_0

    .line 603
    :cond_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->handleSecurityViewChanged(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    goto :goto_0

    .line 608
    :cond_4
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->handleRemoteLockInfoChanged()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x44d
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x455
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
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x515
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x579
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public handleUpdateCoverState(Lcom/samsung/android/cover/CoverState;)V
    .locals 1

    .line 1831
    new-instance v0, Lcom/android/keyguard/KeyguardSecUpdateMonitor$$ExternalSyntheticLambda15;

    invoke-direct {v0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor$$ExternalSyntheticLambda15;-><init>(Lcom/samsung/android/cover/CoverState;)V

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->dispatchCallback(Ljava/util/function/Consumer;)V

    .line 1834
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isCoverClosed()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    .line 1835
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardVisible()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const-string p0, "KeyguardUpdateMonitor"

    const-string p1, "handleUpdateCoverState did not call updateBiometricListeningState"

    .line 1836
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1839
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateBiometricListeningState()V

    return-void
.end method

.method public isBiometricErrorLockoutPermanent()Z
    .locals 1

    .line 2415
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintLockedOutPermanent:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceLockedOutPermanent:Z

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

.method public isCarrierLock()Z
    .locals 0

    .line 1263
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mCarrierLock:Z

    return p0
.end method

.method public isCoverClosed()Z
    .locals 3

    .line 1844
    monitor-enter p0

    .line 1845
    :try_start_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mCoverState:Lcom/samsung/android/cover/CoverState;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v2, v0, Lcom/samsung/android/cover/CoverState;->attached:Z

    if-eqz v2, :cond_1

    .line 1846
    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    monitor-exit p0

    return v1

    .line 1848
    :cond_1
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isDeviceOwnerInfoEnabled()Z
    .locals 0

    .line 1366
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mDeviceOwnerInfoText:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isDismissActionExist()Z
    .locals 0

    .line 748
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mIsDismissActionExist:Z

    return p0
.end method

.method public isDualDarInnerAuthRequired(I)Z
    .locals 0

    .line 1527
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mIsDualDarInnerAuthRequired:Z

    return p0
.end method

.method public isDualDarInnerAuthShowing()Z
    .locals 0

    .line 1533
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mIsDualDarInnerAuthShowing:Z

    return p0
.end method

.method public isDualDisplayPolicyAllowed()Z
    .locals 1

    .line 754
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    if-eqz v0, :cond_0

    const-class v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/DisplayLifecycle;->isFolderOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mContext:Landroid/content/Context;

    .line 755
    invoke-static {p0}, Lcom/android/systemui/util/DeviceState;->isSmartViewFitToActiveDisplay(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isDynamicLockViewMode()Z
    .locals 0

    .line 2191
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mIsDynamicLockViewMode:Z

    return p0
.end method

.method public isESimEmbedded()Z
    .locals 2

    const/4 v0, 0x0

    .line 1484
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSubscriptionInfo(Z)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 1485
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public isESimRemoveButtonClicked()Z
    .locals 4

    .line 1465
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mESimRemoved:[Z

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-boolean v3, p0, v2

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public isEarlyWakeUp()Z
    .locals 0

    .line 2057
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mIsEarlyWakeUp:Z

    return p0
.end method

.method public isFMMLock()Z
    .locals 0

    .line 1232
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mFMMLock:Z

    return p0
.end method

.method public isFpStopRequested()Z
    .locals 0

    .line 1721
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mFpStopRequest:Z

    return p0
.end method

.method public isFullscreenBouncer()Z
    .locals 0

    .line 1162
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->checkFullscreenBouncerMode(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Z

    move-result p0

    return p0
.end method

.method public isIccBlockedPermanently()Z
    .locals 1

    const/4 v0, 0x7

    .line 1494
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getNextSubIdForState(I)I

    move-result v0

    .line 1493
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mSimDisabledPermanently:Z

    return v0
.end method

.method public isLockscreenDisabled()Z
    .locals 1

    .line 1275
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1278
    :cond_0
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mLockscreenDisabled:Z

    return p0
.end method

.method public isMaxFailedBiometricUnlockAttempts(I)Z
    .locals 0

    .line 2410
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getFailedBiometricUnlockAttempts(I)I

    move-result p0

    const/16 p1, 0x14

    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isMaxFailedBiometricUnlockAttemptsShort()Z
    .locals 1

    .line 2478
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isMaxFailedBiometricUnlockAttemptsShort(I)Z

    move-result p0

    return p0
.end method

.method public isMaxFailedBiometricUnlockAttemptsShort(I)Z
    .locals 0

    .line 2468
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getFailedBiometricUnlockAttempts(I)I

    move-result p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return p1

    .line 2472
    :cond_0
    rem-int/lit8 p0, p0, 0x5

    if-nez p0, :cond_1

    const/4 p1, 0x1

    :cond_1
    return p1
.end method

.method public isNeedsDeviceDreaming()Z
    .locals 1

    .line 2378
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDreaming()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2379
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mViewMediatorCallbackLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v0}, Lcom/android/keyguard/ViewMediatorCallback;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2383
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDreaming()Z

    move-result p0

    return p0
.end method

.method public isOwnerInfoEnabled()Z
    .locals 0

    .line 1354
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mIsOwnerInfoEnabled:Z

    return p0
.end method

.method public isPossibleWakeup(I)Z
    .locals 1

    const/4 p0, 0x1

    if-eq p1, p0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    const/16 v0, 0x6a

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    const/16 v0, 0x66

    if-eq p1, v0, :cond_0

    const/16 v0, 0x67

    if-eq p1, v0, :cond_0

    const/16 v0, 0x70

    if-eq p1, v0, :cond_0

    const/16 v0, 0x71

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return p0
.end method

.method public isScreenOffMemoRunning()Z
    .locals 0

    .line 2003
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mIsRunningBlackMemo:Z

    return p0
.end method

.method public isSimDisabledPermanently()Z
    .locals 0

    .line 1501
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mSimDisabledPermanently:Z

    return p0
.end method

.method public isTableMode()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isUserUnlocked()Z
    .locals 3

    .line 2021
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 2022
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUserUnlocked(I)Z

    move-result p0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 2023
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const-string v0, "KeyguardUpdateMonitor"

    const-string v2, "isUserUnlocked userId:%s, unlocked:%s"

    invoke-static {v0, v2, v1}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p0
.end method

.method public makeSlowLogEnable()V
    .locals 6

    .line 1998
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mLooperSlowLogController:Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;

    const/4 v1, 0x1

    const-wide/16 v2, 0xa

    const-wide/16 v4, 0x14

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;->enable(IJJ)Z

    return-void
.end method

.method public notifySimStateInitInfo()V
    .locals 6

    .line 721
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 722
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    .line 723
    const-class v2, Lcom/android/systemui/util/DesktopManager;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/util/DesktopManager;

    iget v3, v1, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->subId:I

    iget v4, v1, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->slotId:I

    iget v1, v1, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simState:I

    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinPassed(I)Z

    move-result v5

    invoke-virtual {v2, v3, v4, v1, v5}, Lcom/android/systemui/util/DesktopManager;->notifySimStateInitInfo(IIIZ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public registerPreCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 3

    .line 686
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 687
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "*** register pre-callback for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUpdateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 690
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mPreCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 691
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mPreCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 693
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "Called by"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const-string p1, "Object tried to add another callback"

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 699
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mPreCallbacks:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 700
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 701
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->sendUpdates(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public removeESim(I)V
    .locals 3

    .line 1454
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeESim(subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUpdateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1455
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSlotId(I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    if-ne v0, v1, :cond_1

    .line 1457
    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mESimRemoved:[Z

    aput-boolean v1, v2, v0

    :cond_1
    const/4 v1, 0x0

    .line 1459
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleSimStateChange(III)V

    return-void
.end method

.method public removeMaskViewForOpticalFpSensor()V
    .locals 3

    .line 1710
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFingerprintManager()Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1711
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mFpMaskToken:Landroid/os/IBinder;

    if-eqz v1, :cond_0

    const-string v1, "KeyguardFingerPrint"

    const-string/jumbo v2, "semRemoveMaskView()"

    .line 1712
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1713
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mFpMaskToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->semRemoveMaskView(Landroid/os/IBinder;)I

    const/4 v0, 0x0

    .line 1714
    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mFpMaskToken:Landroid/os/IBinder;

    :cond_0
    return-void
.end method

.method public reportFailedBiometricUnlockAttempt(ILjava/lang/String;)V
    .locals 9

    .line 2421
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getFailedBiometricUnlockAttempts(I)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 2422
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reportFailedBiometricUnlockAttempt ( failedBiometricUnlockAttempts = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "KeyguardUpdateMonitor"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2423
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBiometricFailedAttempts:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 2424
    iput-object p2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockoutReason:Ljava/lang/String;

    const/4 p2, 0x2

    const/16 v2, 0x14

    if-lt v0, v2, :cond_0

    const-string/jumbo v1, "reportFailedBiometricUnlockAttempt ( too many failed. )"

    .line 2426
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2427
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p2, p1}, Lcom/android/internal/widget/LockPatternUtils;->requireStrongAuth(II)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_3

    .line 2428
    rem-int/lit8 v2, v0, 0x5

    if-nez v2, :cond_3

    .line 2429
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/16 v4, 0x7530

    invoke-virtual {v2, p1, v4}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricAttemptDeadline(II)J

    .line 2430
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0x7530

    add-long/2addr v4, v6

    .line 2431
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->updateSecureLockTimeout(I)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->updateBiometricLockTimeout(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2432
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->dispatchLockModeChanged()V

    .line 2434
    :cond_2
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateBiometricListeningState()V

    .line 2435
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.samsung.keyguard.BIOMETRIC_LOCKOUT_RESET"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v6, 0x10000000

    .line 2436
    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2437
    iget-object v6, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    const/high16 v8, 0x14000000

    invoke-static {v6, v7, v2, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    const-string v6, "KeyguardFingerPrint"

    const-string/jumbo v7, "setting Biometric lockout alarm !!"

    .line 2439
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2440
    iget-object v6, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v6, p2, v4, v5, v2}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 2442
    sget-object v2, Lcom/android/keyguard/KeyguardSecUpdateMonitor$$ExternalSyntheticLambda24;->INSTANCE:Lcom/android/keyguard/KeyguardSecUpdateMonitor$$ExternalSyntheticLambda24;

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->dispatchCallback(Ljava/util/function/Consumer;)V

    .line 2445
    const-class v2, Lcom/android/systemui/util/DesktopManager;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/util/DesktopManager;

    invoke-virtual {v2, v1, v0}, Lcom/android/systemui/util/DesktopManager;->notifyBiometricLockoutChanged(ZI)V

    .line 2450
    :cond_3
    :goto_0
    invoke-static {}, Lcom/samsung/android/security/mdf/MdfUtils;->isMdfEnforced()Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0xa

    if-lt v0, v1, :cond_4

    const-string v0, "MDF : reportFailedBiometricUnlockAttempt ( too many failures. )"

    .line 2451
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2452
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0, p2, p1}, Lcom/android/internal/widget/LockPatternUtils;->requireStrongAuth(II)V

    :cond_4
    return-void
.end method

.method public requestFingerprintAuth(Z)V
    .locals 2

    .line 1689
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintOptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1690
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "requestFingerprintAuth : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardFingerPrint"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1691
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mFpStopRequest:Z

    .line 1692
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    :cond_0
    return-void
.end method

.method public sendBiometricUnlockState(Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 4

    .line 2068
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2069
    sget-object v1, Lcom/android/keyguard/KeyguardSecUpdateMonitor$8;->$SwitchMap$android$hardware$biometrics$BiometricSourceType:[I

    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricSourceType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "com.samsung.keyguard.FACE_UNLOCK_STATE"

    .line 2075
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    const-string v1, "com.samsung.keyguard.FINGERPRINT_UNLOCK_STATE"

    .line 2071
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iget v2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mBiometricId:I

    const-string v3, "biometricId"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2079
    :goto_0
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2080
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/keyguard/KeyguardSecUpdateMonitor$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor$$ExternalSyntheticLambda2;-><init>(Lcom/android/keyguard/KeyguardSecUpdateMonitor;Landroid/hardware/biometrics/BiometricSourceType;Landroid/content/Intent;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public setBiometricId(I)V
    .locals 0

    .line 2062
    iput p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mBiometricId:I

    return-void
.end method

.method public setDismissActionExist(Z)V
    .locals 0

    .line 742
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mIsDismissActionExist:Z

    return-void
.end method

.method public setDismissActionType(Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;)V
    .locals 0

    .line 730
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mKeyguardDismissActionType:Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;

    return-void
.end method

.method public setFaceAuthenticated(Z)V
    .locals 4

    .line 2389
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 2390
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFaceAuthenticated(I)Z

    move-result v1

    if-eq v1, p1, :cond_1

    .line 2391
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFaceAuthenticated:Landroid/util/SparseArray;

    new-instance v2, Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;

    .line 2392
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFaceStrongBiometric(I)Z

    move-result v3

    invoke-direct {v2, p1, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;-><init>(ZZ)V

    .line 2391
    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 2393
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2394
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mTrustManager:Landroid/app/trust/TrustManager;

    sget-object v2, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {v1, v0, v2}, Landroid/app/trust/TrustManager;->unlockedByBiometricForUser(ILandroid/hardware/biometrics/BiometricSourceType;)V

    .line 2397
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 2398
    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isEnabledFaceStayOnLock()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2399
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Lock stay is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " by Face"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "KeyguardFace"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2401
    new-instance p1, Lcom/android/keyguard/KeyguardSecUpdateMonitor$$ExternalSyntheticLambda6;

    invoke-direct {p1, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor$$ExternalSyntheticLambda6;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->dispatchCallback(Ljava/util/function/Consumer;)V

    :cond_1
    return-void
.end method

.method public setLockoutAttemptDeadline(II)J
    .locals 6

    .line 887
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline(II)J

    move-result-wide v0

    int-to-long v2, p2

    .line 890
    iget-wide v4, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mLockoutAttemptDeadline:J

    cmp-long p2, v0, v4

    if-nez p2, :cond_0

    iget-wide v4, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mLockoutAttemptTimeout:J

    cmp-long p2, v2, v4

    if-eqz p2, :cond_1

    .line 891
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setLockoutAttemptDeadline() userId "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", AD:"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mLockoutAttemptDeadline:J

    invoke-virtual {p2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "->"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", AT:"

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mLockoutAttemptTimeout:J

    invoke-virtual {p2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 895
    iput-wide v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mLockoutAttemptDeadline:J

    .line 896
    iput-wide v2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mLockoutAttemptTimeout:J

    .line 898
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->addAdditionalLog(Ljava/lang/String;)V

    .line 899
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->dispatchLockModeChanged()V

    .line 901
    :cond_1
    iget-wide p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mLockoutAttemptDeadline:J

    return-wide p0
.end method

.method public setupLocked()V
    .locals 5

    const-string v0, "KeyguardUpdateMonitor"

    const-string/jumbo v1, "setupLocked"

    .line 1622
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 1623
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSystemReady:Z

    .line 1626
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mSettingsCallbackForUPSM:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mSettingsValueListForPSM:[Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 1629
    sget-boolean v1, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY:Z

    if-eqz v1, :cond_0

    .line 1630
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mOneHandModeSettingsCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    new-array v0, v0, [Landroid/net/Uri;

    const/4 v3, 0x0

    const-string v4, "any_screen_running"

    .line 1631
    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    aput-object v4, v0, v3

    .line 1630
    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 1635
    :cond_0
    const-class v0, Lcom/android/systemui/util/DesktopManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/DesktopManager;

    new-instance v1, Lcom/android/keyguard/KeyguardSecUpdateMonitor$5;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor$5;-><init>(Lcom/android/keyguard/KeyguardSecUpdateMonitor;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/DesktopManager;->registerCallback(Lcom/android/systemui/util/DesktopManager$Callback;)V

    .line 1682
    const-class v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mDisplayListener:Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;

    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    return-void
.end method

.method public startMonitoring()V
    .locals 1

    .line 1991
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mBinderCallMonitor:Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;

    if-eqz p0, :cond_0

    const/4 v0, 0x3

    .line 1992
    invoke-virtual {p0, v0}, Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;->startMonitoring(I)Z

    :cond_0
    return-void
.end method

.method public updateBatteryState(Lcom/android/systemui/statusbar/KeyguardBatteryStatus;)Z
    .locals 2

    .line 1905
    :try_start_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    if-eqz v0, :cond_0

    .line 1906
    invoke-interface {v0}, Lcom/android/internal/app/IBatteryStats;->computeChargeTimeRemaining()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/systemui/statusbar/KeyguardBatteryStatus;->remaining:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1910
    :catch_0
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mKeyguardBatteryStatus:Lcom/android/systemui/statusbar/KeyguardBatteryStatus;

    invoke-direct {p0, v0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isBatteryUpdateInteresting(Lcom/android/systemui/statusbar/KeyguardBatteryStatus;Lcom/android/systemui/statusbar/KeyguardBatteryStatus;)Z

    move-result v0

    .line 1911
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mKeyguardBatteryStatus:Lcom/android/systemui/statusbar/KeyguardBatteryStatus;

    return v0
.end method

.method public updateBiometricLockTimeout(I)Z
    .locals 7

    .line 922
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricAttemptDeadline(I)J

    move-result-wide v0

    .line 923
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricAttemptTimeout(I)J

    move-result-wide v2

    .line 924
    iget-wide v4, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mLockoutBiometricAttemptDeadline:J

    cmp-long v4, v4, v0

    if-nez v4, :cond_1

    iget-wide v4, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mLockoutBiometricAttemptTimeout:J

    cmp-long v4, v4, v2

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 926
    :cond_1
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateBiometricLockTimeout() userId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", BD:"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mLockoutBiometricAttemptDeadline:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "->"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", BT:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mLockoutBiometricAttemptTimeout:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 929
    iput-wide v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mLockoutBiometricAttemptDeadline:J

    .line 930
    iput-wide v2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mLockoutBiometricAttemptTimeout:J

    .line 931
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->addAdditionalLog(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public updateBiometricsOptionState(I)Z
    .locals 6

    .line 1288
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricType(I)I

    move-result v0

    .line 1289
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricState(II)I

    move-result v1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 1290
    :goto_0
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/16 v5, 0x100

    invoke-virtual {v4, v5, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricState(II)I

    move-result v4

    if-ne v4, v2, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    .line 1291
    :goto_1
    iget v5, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mBiometricType:I

    if-ne v5, v0, :cond_3

    iget-boolean v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBiometricsFingerprint:Z

    if-ne v5, v1, :cond_3

    iget-boolean v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBiometricsFace:Z

    if-eq v5, v4, :cond_2

    goto :goto_2

    :cond_2
    return v3

    .line 1292
    :cond_3
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateBiometricsOptionState() userId "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", BT:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mBiometricType:I

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "->"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", FP:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBiometricsFingerprint:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", FC:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBiometricsFace:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1297
    iput v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mBiometricType:I

    .line 1298
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBiometricsFingerprint:Z

    .line 1299
    iput-boolean v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBiometricsFace:Z

    .line 1300
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->addAdditionalLog(Ljava/lang/String;)V

    return v2
.end method

.method public updateCarrierLock(IZ)Z
    .locals 3

    .line 1244
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->updateCarrierLock(I)Z

    move-result v0

    .line 1245
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mCarrierLock:Z

    if-eq v0, v1, :cond_1

    .line 1246
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateCarrierLock() userId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", CR:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mCarrierLock:Z

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "->"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1248
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mCarrierLock:Z

    .line 1249
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->addAdditionalLog(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 1251
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->dispatchLockModeChanged()V

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public updateDualDARInnerLockscreenRequirement(I)V
    .locals 8

    .line 1539
    const-class v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mIsDualDarInnerAuthRequired:Z

    .line 1541
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 1542
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-interface {v2, p1}, Lcom/android/systemui/knox/KnoxStateMonitor;->isDualDarDeviceOwner(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1543
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-interface {v2, p1}, Lcom/android/systemui/knox/KnoxStateMonitor;->isSecondaryLockRequired(I)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    const-string v5, "KeyguardUpdateMonitor"

    if-eqz v2, :cond_1

    .line 1546
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-interface {v0, p1}, Lcom/android/systemui/knox/KnoxStateMonitor;->getInnerAuthUserId(I)I

    move-result v0

    .line 1547
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSecure(I)Z

    move-result v0

    .line 1548
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DualDAR Inner isSecure? "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_1

    move v2, v4

    .line 1554
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Inner lockscreen is required? "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_2

    if-nez v1, :cond_2

    .line 1558
    iput-boolean v3, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mIsDualDarInnerAuthRequired:Z

    goto :goto_1

    :cond_2
    if-nez v2, :cond_3

    if-eqz v1, :cond_3

    .line 1561
    iput-boolean v4, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mIsDualDarInnerAuthRequired:Z

    goto :goto_1

    :cond_3
    move v3, v4

    :goto_1
    if-eqz v3, :cond_4

    .line 1567
    new-instance v0, Lcom/android/keyguard/KeyguardSecUpdateMonitor$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor$$ExternalSyntheticLambda5;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->dispatchCallback(Ljava/util/function/Consumer;)V

    :cond_4
    return-void
.end method

.method public updateFMMLock(IZ)Z
    .locals 4

    .line 1185
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isFMMLockEnabled(I)Z

    move-result v0

    .line 1186
    new-instance v1, Lcom/android/internal/widget/RemoteLockInfo$Builder;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lcom/android/internal/widget/RemoteLockInfo$Builder;-><init>(IZ)V

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 1187
    invoke-virtual {v3}, Lcom/android/systemui/util/SettingsHelper;->getFMMMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 1188
    invoke-virtual {v3}, Lcom/android/systemui/util/SettingsHelper;->getFMMPhone()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setPhoneNumber(Ljava/lang/CharSequence;)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v1

    .line 1189
    invoke-virtual {v1}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->build()Lcom/android/internal/widget/RemoteLockInfo;

    move-result-object v1

    .line 1186
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateRemoteLockInfo(Lcom/android/internal/widget/RemoteLockInfo;)V

    .line 1190
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mFMMLock:Z

    if-eq v1, v0, :cond_1

    .line 1191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateFMMLock() userId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", FM:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mFMMLock:Z

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "->"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1193
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mFMMLock:Z

    .line 1194
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->addAdditionalLog(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 1196
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->dispatchLockModeChanged()V

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    return v2
.end method

.method public updateLockscreenDisabled(I)Z
    .locals 3

    .line 1378
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v0

    .line 1379
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mLockscreenDisabled:Z

    if-eq v1, v0, :cond_0

    .line 1380
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateLockscreenDisabled() userId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", lockScreenDisabled:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mLockscreenDisabled:Z

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "->"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1382
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mLockscreenDisabled:Z

    .line 1383
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->addAdditionalLog(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public updateOwnerInfoState(I)Z
    .locals 0

    .line 1312
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->updateOwnerInfo(I)Z

    move-result p1

    or-int/lit8 p1, p1, 0x0

    .line 1313
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->updateDeviceOwnerInfo()Z

    move-result p0

    or-int/2addr p0, p1

    return p0
.end method

.method public updateSecureLockState(I)Z
    .locals 2

    .line 776
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->updateSecureLockType(I)Z

    move-result v0

    .line 777
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->updateSecureLockTimeout(I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 778
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->updateBiometricLockTimeout(I)Z

    move-result p0

    or-int/2addr p0, v0

    return p0
.end method

.method public updateSecureLockTimeout(I)Z
    .locals 7

    .line 869
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    .line 870
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptTimeout(I)J

    move-result-wide v2

    .line 871
    iget-wide v4, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mLockoutAttemptDeadline:J

    cmp-long v4, v4, v0

    if-nez v4, :cond_1

    iget-wide v4, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mLockoutAttemptTimeout:J

    cmp-long v4, v4, v2

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 873
    :cond_1
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateSecureLockTimeout() userId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", AD:"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mLockoutAttemptDeadline:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "->"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", AT:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mLockoutAttemptTimeout:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 876
    iput-wide v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mLockoutAttemptDeadline:J

    .line 877
    iput-wide v2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mLockoutAttemptTimeout:J

    .line 878
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->addAdditionalLog(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public updateUserUnlockNotification(I)V
    .locals 6

    .line 2125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateUserUnlockNotification(), isUserUnlocked("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUserUnlocked(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUpdateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2126
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUserUnlocked(I)Z

    move-result p1

    const/16 v0, 0x3e9

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 2127
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mContext:Landroid/content/Context;

    .line 2128
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcom/android/systemui/R$string;->kg_fbe_notification_header:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 2129
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mContext:Landroid/content/Context;

    .line 2130
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$string;->kg_fbe_notification_message:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2132
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->createChannels()V

    .line 2133
    new-instance v3, Landroid/app/Notification$Builder;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mContext:Landroid/content/Context;

    const-string v5, "fbe_channel_id"

    invoke-direct {v3, v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v4, 0x1080a64

    .line 2135
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    const/4 v4, 0x1

    .line 2136
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 2137
    invoke-virtual {v3, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 2138
    invoke-virtual {p1, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 2139
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    .line 2140
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v0, p1, v2}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 2142
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v0, p1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    :goto_0
    return-void
.end method
