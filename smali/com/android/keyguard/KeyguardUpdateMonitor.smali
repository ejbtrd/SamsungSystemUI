.class public Lcom/android/keyguard/KeyguardUpdateMonitor;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitor.java"

# interfaces
.implements Landroid/app/trust/TrustManager$TrustListener;
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;,
        Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;,
        Lcom/android/keyguard/KeyguardUpdateMonitor$DisplayClientState;,
        Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;
    }
.end annotation


# static fields
.field public static final CORE_APPS_ONLY:Z

.field private static final DEBUG_FACE:Z

.field private static final DEBUG_FINGERPRINT:Z

.field private static final FALLBACK_HOME_COMPONENT:Landroid/content/ComponentName;

.field private static sCurrentUser:I

.field protected static sFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;


# instance fields
.field private final mAcquiredHapticEnabled:Z

.field private mActiveMobileDataSubscription:I

.field private mActiveRemoteLockIndex:I

.field private mAssistantVisible:Z

.field private final mAuthController:Lcom/android/systemui/biometrics/AuthController;

.field private mAuthHandler:Landroid/os/Handler;

.field private mAuthInterruptActive:Z

.field private final mBackgroundExecutor:Ljava/util/concurrent/Executor;

.field mBatteryStatus:Lcom/android/settingslib/fuelgauge/BatteryStatus;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mBiometricEnabledCallback:Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback;

.field private mBiometricEnabledForUser:Landroid/util/SparseBooleanArray;

.field protected mBiometricFailedAttempts:Landroid/util/SparseIntArray;

.field private mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

.field protected mBiometricsFace:Z

.field protected mBiometricsFingerprint:Z

.field private mBouncer:Z

.field protected final mBroadcastAllReceiver:Landroid/content/BroadcastReceiver;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field protected final mBroadcastReceiver:Landroid/content/BroadcastReceiver;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field protected final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/keyguard/KeyguardUpdateMonitorCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCocktailBarStateChangedListener:Lcom/samsung/android/cocktailbar/SemCocktailBarManager$CocktailBarStateChangedListener;

.field private mCocktailBarWindowType:I

.field private final mContext:Landroid/content/Context;

.field private mCredentialAttempted:Z

.field protected mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

.field protected mDeviceInteractive:Z

.field private final mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mDeviceProvisioned:Z

.field private mDeviceProvisionedObserver:Landroid/database/ContentObserver;

.field private mDisableCamera:Z

.field private mDisabledBiometricBySecurityDialog:Z

.field private mDisplayClientState:Lcom/android/keyguard/KeyguardUpdateMonitor$DisplayClientState;

.field private final mDreamManager:Landroid/service/dreams/IDreamManager;

.field final mFaceAuthenticationCallback:Landroid/hardware/face/FaceManager$AuthenticationCallback;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mFaceCancelNotReceived:Ljava/lang/Runnable;

.field private mFaceCancelSignal:Landroid/os/CancellationSignal;

.field private final mFaceDetectionCallback:Landroid/hardware/face/FaceManager$FaceDetectionCallback;

.field protected mFaceLockedOutPermanent:Z

.field private final mFaceLockoutResetCallback:Landroid/hardware/face/FaceManager$LockoutResetCallback;

.field private mFaceManager:Landroid/hardware/face/FaceManager;

.field private mFaceRunningState:I

.field private mFaceSensorProperties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/face/FaceSensorPropertiesInternal;",
            ">;"
        }
    .end annotation
.end field

.field private mFingerPrintBadQualityCounts:Landroid/util/SparseIntArray;

.field private mFingerPrintFailedAttempts:Landroid/util/SparseIntArray;

.field final mFingerprintAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mFingerprintAuthenticationSequence:I

.field private mFingerprintCancelSignal:Landroid/os/CancellationSignal;

.field private final mFingerprintDetectionCallback:Landroid/hardware/fingerprint/FingerprintManager$FingerprintDetectionCallback;

.field private mFingerprintLockedOut:Z

.field protected mFingerprintLockedOutPermanent:Z

.field private final mFingerprintLockoutResetCallback:Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;

.field private mFingerprintRunningState:I

.field protected mForceStartFinger:Z

.field private final mFpCancelNotReceived:Ljava/lang/Runnable;

.field private mFpInDisplayState:I

.field private mFpm:Landroid/hardware/fingerprint/FingerprintManager;

.field private mGoingToSleep:Z

.field protected mHandler:Landroid/os/Handler;

.field private mHardwareFaceUnavailableRetryCount:I

.field private mHardwareFingerprintUnavailableRetryCount:I

.field private mHasFocus:Z

.field private mHasLockscreenWallpaper:Z

.field private final mIsAutomotive:Z

.field private mIsDialogShowing:Z

.field private mIsDreaming:Z

.field private mIsFODStrictMode:Z

.field private mIsFPCanceledByForegroundApp:Z

.field private mIsFaceAuthUserRequested:Z

.field private mIsFaceEnrolled:Z

.field private mIsFaceReady:Z

.field private mIsFaceWidgetFullScreenMode:Z

.field private mIsFpLeave:Z

.field private mIsNotiStarShown:Z

.field private mIsOutOfService:Z

.field private mIsPanelExpandingStarted:Z

.field private final mIsPrimaryUser:Z

.field protected mIsScreenOffInDexMode:Z

.field protected mIsScreenSaverRunning:Z

.field protected mIsShadeLockedState:Z

.field private mIsShortcutPreviewShowing:Z

.field private mIsShowingKeepScreenOnPopup:Z

.field protected mIsSkipFPResponse:Z

.field private mIsUdfpsEnrolled:Z

.field private mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field private mKeyguardGoingAway:Z

.field private mKeyguardIsVisible:Z

.field private mKeyguardOccluded:Z

.field private mKeyguardShowing:Z

.field private mKeyguardUnlocking:Z

.field private final mListenModels:Lcom/android/keyguard/KeyguardListenQueue;

.field private mLockIconPressed:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockScreenMode:I

.field protected mLockoutReason:Ljava/lang/String;

.field private mLogoutEnabled:Z

.field private mMaximumFailedPasswordsForWipe:I

.field private mNeedsSlowUnlockTransition:Z

.field private mOccludingAppRequestingFace:Z

.field private mOccludingAppRequestingFp:Z

.field private mPhoneState:I

.field public mPhoneStateListener:Landroid/telephony/TelephonyCallback$ActiveDataSubscriptionIdListener;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mPowerManager:Landroid/os/PowerManager;

.field private mRemoteLockInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/RemoteLockInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mRetryFaceAuthentication:Ljava/lang/Runnable;

.field private mRetryFingerprintAuthentication:Ljava/lang/Runnable;

.field private mRingMode:I

.field private final mRingerModeObserver:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRingerModeTracker:Lcom/android/systemui/util/RingerModeTracker;

.field private mSIPShown:Z

.field private mScreenOn:Z

.field private mSecondaryLockscreenRequirement:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mSecureCameraLaunched:Z

.field private mSemCocktailBarManager:Lcom/samsung/android/cocktailbar/SemCocktailBarManager;

.field private mSemFaceCancelSignal:Landroid/os/CancellationSignal;

.field mServiceStates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/telephony/ServiceState;",
            ">;"
        }
    .end annotation
.end field

.field private final mServiceStatesBySlotId:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/telephony/ServiceState;",
            ">;"
        }
    .end annotation
.end field

.field mSimDatas:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;",
            ">;"
        }
    .end annotation
.end field

.field private mSimPinPassed:[Z

.field private mStatusBarState:I

.field private final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field private final mStatusBarStateControllerListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

.field private mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

.field private mSubscriptionInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mSwitchingUser:Z

.field protected mSystemReady:Z

.field private final mTaskStackListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

.field protected mTelephonyCapable:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mTelephonyListenerManager:Lcom/android/systemui/telephony/TelephonyListenerManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTimeFormatChangeObserver:Landroid/database/ContentObserver;

.field protected final mTimeoutSkipFPResponse:Ljava/lang/Runnable;

.field private mTimeoutWithoutFace:Z

.field private mTrustManager:Landroid/app/trust/TrustManager;

.field private mUpdateBiometricListeningState:Ljava/lang/Runnable;

.field mUserFaceAuthenticated:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;",
            ">;"
        }
    .end annotation
.end field

.field private mUserFaceUnlockRunning:Landroid/util/SparseBooleanArray;

.field mUserFingerprintAuthenticated:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;",
            ">;"
        }
    .end annotation
.end field

.field private mUserHasTrust:Landroid/util/SparseBooleanArray;

.field private mUserIsUnlocked:Landroid/util/SparseBooleanArray;

.field private mUserManager:Landroid/os/UserManager;

.field private final mUserSwitchObserver:Landroid/app/UserSwitchObserver;

.field private final mUserTrustFlags:Landroid/util/SparseIntArray;

.field private mUserTrustIsManaged:Landroid/util/SparseBooleanArray;

.field private mUserTrustIsUsuallyManaged:Landroid/util/SparseBooleanArray;

.field private final mVibrator:Landroid/os/Vibrator;

.field private mWaitingFocusRunnable:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$-hp381TCE1bwQaR9U0RBoFfTBiw(ILjava/lang/String;Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->lambda$handleFingerprintError$17(ILjava/lang/String;Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$-sPDEf5HPIRI79ld8QpIzxA9vBI(ILjava/lang/String;Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->lambda$handleFingerprintHelp$15(ILjava/lang/String;Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$05qayBtXZ9jQ1OhPvYmxPF0TKRM(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->lambda$new$40()V

    return-void
.end method

.method public static synthetic $r8$lambda$0K6JfH7XOEkCKwLjEx_hm3rTZ1c(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerRingerTracker()V

    return-void
.end method

.method public static synthetic $r8$lambda$1SW0n8Q2TyDCqknZnBGq49uLrkc(ZILcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->lambda$handleFaceUnlockStateChanged$27(ZILcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2-AMVMAFGautb84L_Nnmi90jOD0(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->lambda$onFaceAuthenticationSucceeded$72()V

    return-void
.end method

.method public static synthetic $r8$lambda$2k6-pn7IMFbdUdMqgMfVDl2m1_I(ILcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->lambda$handleUserSwitching$47(ILcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2pce8SMRRjyN9PAo4piMcCSJEtU(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$3qzmf-CsRxTerGrYg_mL95pM8oU(ILcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->lambda$handleFinishedGoingToSleep$35(ILcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4kn9WEYVgq98aLiGrzpze0Epgms(ILcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->lambda$handleUserSwitchComplete$48(ILcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$52M_CJoKLK_za03npoGbu8z_dsw(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->lambda$clearFailedUnlockAttempts$67(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$5K_wUQmY_E1z0Sinh8WQj9nL1nU(IIILcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->lambda$handleSimStateChange$57(IIILcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5wQfsefeRIowBkrJiaTl6P89MpQ(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->lambda$requestSessionClose$69()V

    return-void
.end method

.method public static synthetic $r8$lambda$6QTOzYJ741zhnKtnheETVJM4IF8(Ljava/lang/String;Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->lambda$handleTimeZoneUpdate$52(Ljava/lang/String;Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6_raKHizgQmrgQ00Bdbn2qsegOA(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->lambda$showFingerprintBlockPopup$73(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$9ZqavwDdWdJxNeONzsTUenbYgoY(Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->lambda$updateTelephonyCapable$55(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DSgajtPpZpGGySZjryibRMOzr80(Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->lambda$notifyFingerprintRunningStateChanged$18(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GdBx9OSePKRkIuNquo9FFTc04CM(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->lambda$handleFingerprintAcquired$10()V

    return-void
.end method

.method public static synthetic $r8$lambda$HYwK5CsIdpV6idpLcEHZdDj-E7Y(ILjava/lang/String;Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->lambda$handleFaceError$25(ILjava/lang/String;Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IZwgxRMAomLvmfVdifa3YSPADjs(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->lambda$handleFingerprintAcquired$11(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IdpzvtmDDABXzgzn9sqWIdhbVZA(IIILcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->lambda$handleSimStateChange$58(IIILcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ivg7mCVR2NLlt0ptf5gMDd-X6e4(ILcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->lambda$handleUserInfoChanged$38(ILcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Je9ZkOlThWiJlXpsByQZagfikBc(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->lambda$handleFingerprintAuthFailed$8(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$K523pp18Se7F0X3tyyTIA2gRxG4(ZLcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->lambda$handleFaceAuthenticated$23(ZLcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KDY7s4xkRPtX8eY9d_VVYccP2IE(Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->lambda$notifyFaceRunningStateChanged$26(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LutEbO_7nrF02xE18MQXORMFmJA(Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->lambda$new$41(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MRWO15HDv1EOJjSqXNb8hN8lq0g(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->notifyStrongAuthStateChanged(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Mm39wE9lCqRnhGkkFPNBUDPqNNM(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->lambda$handleFaceAuthFailed$20(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MtvFLo7NPFZ3sezve_qpoecBzzc(Lcom/android/keyguard/KeyguardUpdateMonitor;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->lambda$setShowingKeepScreenOnPopup$76(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$NvkfHg84SmVj0wzPEHYsRjvsGv0(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->lambda$onFingerprintAuthenticated$6(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$PtlWhgzQzUr_AfQ-qeY_28hjN_8(Lcom/android/keyguard/KeyguardUpdateMonitor;IIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->lambda$new$32(IIZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$RTaSUO2RE4MhI3R0fFrQtN1jhDc(Ljava/lang/CharSequence;Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->lambda$dispatchErrorMessage$31(Ljava/lang/CharSequence;Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Rm0M22tzAlHmMLtarVTH-2pIe0o(Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/app/admin/DevicePolicyManager;I)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->lambda$isFaceDisabled$28(Landroid/app/admin/DevicePolicyManager;I)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$TSH_OwqzCTJZ39VtDerMJ3iyT8k(ZZZIILcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->lambda$onTrustChanged$2(ZZZIILcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Tln56mu_3tontpmL8BzLtmBG-4w(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->lambda$setFocusForInDisplayFingerprint$75()V

    return-void
.end method

.method public static synthetic $r8$lambda$VSO1f5XHtivTqFy4nSGoFXyFj48(Lcom/android/keyguard/KeyguardUpdateMonitor;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->lambda$setFaceWidgetFullScreenMode$64(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$XHiOlHIKjLenZo5K8yw-AGyAQwA(Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->lambda$handleSimSubscriptionInfoChanged$3(Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Xx52oV-HQ6LiOd8Ikh8eEkrx0uk(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->lambda$handleFaceAcquired$22(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Y-8dtc7rCEf4qBCRk0lJXCJOdJk(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->lambda$handleFingerprintAcquired$12(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Yz3qCsR7dA0yW63r0eoGLZ46n-E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->lambda$sendSALog$77(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_6HJ60H0EOgakKo-GW6Ebp7d3XQ(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->lambda$onFpAuthenticationSucceeded$71()V

    return-void
.end method

.method public static synthetic $r8$lambda$bDbAWQBgpteZP9U11LV-uGWCHxw(ILjava/lang/String;Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->lambda$handleFaceHelp$24(ILjava/lang/String;Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dqzrf3yyrxNlWy8PxWWn8oP4YjE(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;Ljava/lang/ref/WeakReference;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->lambda$removeCallback$62(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;Ljava/lang/ref/WeakReference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$eIhrEmOD44TVExi3oIZaEa3Zycg(Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->lambda$handlePhoneStateChanged$49(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gUGt5NNiTc1R2cSKjZlHXPNW9QA(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->lambda$new$39()V

    return-void
.end method

.method public static synthetic $r8$lambda$hEVaeC3vHurFqtRvMJDS1rKfLvg(ZLcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->lambda$setHasLockscreenWallpaper$46(ZLcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hjPZ2283Cu85k25PmpUG6FhAjAY(ILcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->lambda$handleRingerModeChange$50(ILcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ipXClB1vH16zJ_LRbPmpRaGzGvU(Lcom/android/keyguard/KeyguardUpdateMonitor;ZZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->lambda$sendKeyguardStateUpdated$65(ZZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$jatcyJZ2Kv7YcNzLUDrVLfRrAzM(ILcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->lambda$updateSecondaryLockscreenRequirement$29(ILcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jf-Xf-2VJXNqgW19VhEBcZ-zbRM(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->lambda$handleFingerprintAcquired$9()V

    return-void
.end method

.method public static synthetic $r8$lambda$kRSNNjIkmPqRD3UIDbnr14e765c(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$kksn1g8FNE7bF5g6vr7BvGrPNhM(Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->lambda$new$42(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lkyTEdjEnKNxZOM9sPRkFhrgHZs(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->lambda$requestSessionOpen$70()V

    return-void
.end method

.method public static synthetic $r8$lambda$lmZJf2dxAWHeZwcRVZFNAri-sBQ(IIILcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->lambda$handleSimStateChange$56(IIILcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$msX8CQwbWFiEHYq7uTqUU7VPBRM(Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->lambda$handleKeyguardBouncerChanged$61(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nqx0u6ydsXyWFKDLdVWazIS-_pE(ZZLcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->lambda$setBackDropViewShowing$44(ZZLcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ouAvN8_CQD29KkdQFGn7uAV6qXo(ZLcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->lambda$setKeyguardOccluded$5(ZLcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$p8se3O4M3653YZ-1cYGK31a6WHM(ZLcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->lambda$onKeyguardVisibilityChanged$59(ZLcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pJngwp0EbFJdUvHy_xXYOl8_4xA(Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->lambda$showFingerprintBlockPopup$74(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$pKrllfwcWnEmFaD8ZwsEhqurrwI(Lcom/android/keyguard/KeyguardUpdateMonitor;IIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->lambda$new$33(IIZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$qSqb2JXcWLZE-cCOf7fDyVKe5LQ(Ljava/lang/String;Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->lambda$handleTimeFormatUpdate$53(Ljava/lang/String;Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qm36uLQKSTMsTrbhPbZ9y3OZb_o(ILcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->lambda$notifyStrongAuthStateChanged$30(ILcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$thONAE85aNWMedJlA0NUzKt-yKM(IZZLcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->lambda$dispatchWallpaperTypeChanged$45(IZZLcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tjNPujm-JUQPv4ZK1hZIv96MJ1U(Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/samsung/android/cocktailbar/SemCocktailBarStateInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->lambda$new$68(Lcom/samsung/android/cocktailbar/SemCocktailBarStateInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$u60GYwUeHwu2wuCJiYJU1AWW7r0(ILcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->lambda$onTrustManagedChanged$4(ILcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uX1-C79VvICD3UUx2YSXEOM_FtU(ZLcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->lambda$onKeyguardVisibilityChanged$60(ZLcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uhRby_cxUHeDVkqzny8CKz34-aI(Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->lambda$handleLockScreenMode$51(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$v-g10gOwNLQZR9kGgKuhYlyJ3j0(Lcom/android/systemui/statusbar/KeyguardBatteryStatus;Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->lambda$handleBatteryUpdate$66(Lcom/android/systemui/statusbar/KeyguardBatteryStatus;Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$v4rfn7p8EQMQQGOyPVqWOhWoKv0(Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->lambda$handleDreamingStateChanged$36(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vrXgKmCgOghpltjYCu158ov4-F8(IZLcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->lambda$onFaceAuthenticated$19(IZLcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wyGPlV0TJnXX7Z9vrKgr0j1ienc(ILcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->lambda$handleStartedGoingToSleep$34(ILcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yufHAum8K27TkMb6Y1KE6EE4Vw4(ZLcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->lambda$setFaceWidgetFullScreenMode$63(ZLcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zWz4dVXEPqmXYwQkaMM2TnK1NoU(IZLcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->lambda$onFingerprintAuthenticated$7(IZLcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 216
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->DEBUG_FACE:Z

    .line 217
    sput-boolean v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->DEBUG_FINGERPRINT:Z

    .line 294
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.FallbackHome"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->FALLBACK_HOME_COMPONENT:Landroid/content/ComponentName;

    :try_start_0
    const-string v0, "package"

    .line 306
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 305
    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 306
    invoke-interface {v0}, Landroid/content/pm/IPackageManager;->isOnlyCoreApps()Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->CORE_APPS_ONLY:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 308
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/util/RingerModeTracker;Ljava/util/concurrent/Executor;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/systemui/biometrics/AuthController;Lcom/android/systemui/telephony/TelephonyListenerManager;Lcom/android/systemui/statusbar/FeatureFlags;Landroid/os/Vibrator;)V
    .locals 21
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    .line 2590
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 318
    new-instance v6, Lcom/android/keyguard/KeyguardUpdateMonitor$1;

    invoke-direct {v6, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor$1;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    iput-object v6, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStatusBarStateControllerListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    .line 336
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    .line 337
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mServiceStates:Ljava/util/HashMap;

    const/4 v7, 0x0

    .line 357
    iput-boolean v7, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mAcquiredHapticEnabled:Z

    .line 371
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v8

    iput-object v8, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    .line 388
    iput v7, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintRunningState:I

    .line 389
    iput v7, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceRunningState:I

    const/4 v8, -0x1

    .line 402
    iput v8, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mActiveMobileDataSubscription:I

    .line 414
    iput v7, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHardwareFingerprintUnavailableRetryCount:I

    .line 415
    iput v7, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHardwareFaceUnavailableRetryCount:I

    .line 424
    sget-object v9, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Invalid:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    iput-object v9, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 436
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mRemoteLockInfo:Ljava/util/ArrayList;

    .line 438
    iput v8, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mActiveRemoteLockIndex:I

    const/4 v9, 0x0

    .line 445
    iput-object v9, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSemCocktailBarManager:Lcom/samsung/android/cocktailbar/SemCocktailBarManager;

    .line 447
    iput v7, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCocktailBarWindowType:I

    .line 451
    iput-boolean v7, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsScreenOffInDexMode:Z

    .line 453
    iput-boolean v7, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsScreenSaverRunning:Z

    .line 455
    iput-object v9, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockoutReason:Ljava/lang/String;

    .line 463
    iput-boolean v7, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDisabledBiometricBySecurityDialog:Z

    .line 465
    new-instance v10, Landroid/util/SparseIntArray;

    invoke-direct {v10}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v10, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBiometricFailedAttempts:Landroid/util/SparseIntArray;

    .line 467
    new-instance v10, Landroid/util/SparseIntArray;

    invoke-direct {v10}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v10, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerPrintFailedAttempts:Landroid/util/SparseIntArray;

    .line 469
    new-instance v10, Landroid/util/SparseIntArray;

    invoke-direct {v10}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v10, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerPrintBadQualityCounts:Landroid/util/SparseIntArray;

    .line 477
    iput v7, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintAuthenticationSequence:I

    .line 480
    iput-object v9, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mAuthHandler:Landroid/os/Handler;

    .line 482
    new-instance v10, Lcom/android/keyguard/KeyguardUpdateMonitor$2;

    invoke-direct {v10, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor$2;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    iput-object v10, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTimeoutSkipFPResponse:Ljava/lang/Runnable;

    .line 495
    iput v7, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpInDisplayState:I

    .line 497
    iput-boolean v7, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsDialogShowing:Z

    .line 499
    iput-boolean v7, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsShortcutPreviewShowing:Z

    .line 501
    iput-boolean v7, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsPanelExpandingStarted:Z

    const/4 v10, 0x1

    .line 503
    iput-boolean v10, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHasFocus:Z

    .line 505
    new-instance v11, Lcom/android/keyguard/KeyguardUpdateMonitor$3;

    invoke-direct {v11, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor$3;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    iput-object v11, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mWaitingFocusRunnable:Ljava/lang/Runnable;

    .line 521
    iput-boolean v7, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsShowingKeepScreenOnPopup:Z

    const/4 v11, 0x2

    new-array v11, v11, [Z

    .line 542
    iput-object v11, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimPinPassed:[Z

    .line 545
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    iput-object v11, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mServiceStatesBySlotId:Ljava/util/HashMap;

    .line 553
    iput-boolean v7, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTimeoutWithoutFace:Z

    .line 556
    iput-boolean v7, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mForceStartFinger:Z

    .line 566
    iput-boolean v10, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsOutOfService:Z

    .line 569
    new-instance v11, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda17;

    invoke-direct {v11, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda17;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    iput-object v11, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpCancelNotReceived:Ljava/lang/Runnable;

    .line 575
    new-instance v11, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda10;

    invoke-direct {v11, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda10;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    iput-object v11, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceCancelNotReceived:Ljava/lang/Runnable;

    .line 584
    new-instance v11, Lcom/android/keyguard/KeyguardUpdateMonitor$4;

    invoke-direct {v11, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor$4;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    iput-object v11, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mRingerModeObserver:Landroidx/lifecycle/Observer;

    .line 591
    new-instance v11, Landroid/util/SparseBooleanArray;

    invoke-direct {v11}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v11, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBiometricEnabledForUser:Landroid/util/SparseBooleanArray;

    .line 593
    new-instance v11, Lcom/android/keyguard/KeyguardUpdateMonitor$5;

    invoke-direct {v11, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor$5;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    iput-object v11, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBiometricEnabledCallback:Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback;

    .line 608
    new-instance v11, Lcom/android/keyguard/KeyguardUpdateMonitor$6;

    invoke-direct {v11, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor$6;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    iput-object v11, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPhoneStateListener:Landroid/telephony/TelephonyCallback$ActiveDataSubscriptionIdListener;

    .line 618
    new-instance v11, Lcom/android/keyguard/KeyguardUpdateMonitor$7;

    invoke-direct {v11, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor$7;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    iput-object v11, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 637
    new-instance v11, Landroid/util/SparseBooleanArray;

    invoke-direct {v11}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v11, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserIsUnlocked:Landroid/util/SparseBooleanArray;

    .line 638
    new-instance v11, Landroid/util/SparseBooleanArray;

    invoke-direct {v11}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v11, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserHasTrust:Landroid/util/SparseBooleanArray;

    .line 639
    new-instance v11, Landroid/util/SparseBooleanArray;

    invoke-direct {v11}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v11, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTrustIsManaged:Landroid/util/SparseBooleanArray;

    .line 640
    new-instance v11, Landroid/util/SparseBooleanArray;

    invoke-direct {v11}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v11, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTrustIsUsuallyManaged:Landroid/util/SparseBooleanArray;

    .line 641
    new-instance v11, Landroid/util/SparseBooleanArray;

    invoke-direct {v11}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v11, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFaceUnlockRunning:Landroid/util/SparseBooleanArray;

    .line 642
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    iput-object v11, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSecondaryLockscreenRequirement:Ljava/util/Map;

    .line 644
    new-instance v11, Landroid/util/SparseArray;

    invoke-direct {v11}, Landroid/util/SparseArray;-><init>()V

    iput-object v11, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFingerprintAuthenticated:Landroid/util/SparseArray;

    .line 646
    new-instance v11, Landroid/util/SparseArray;

    invoke-direct {v11}, Landroid/util/SparseArray;-><init>()V

    iput-object v11, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFaceAuthenticated:Landroid/util/SparseArray;

    .line 650
    new-instance v11, Lcom/android/keyguard/KeyguardListenQueue;

    invoke-direct {v11}, Lcom/android/keyguard/KeyguardListenQueue;-><init>()V

    iput-object v11, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mListenModels:Lcom/android/keyguard/KeyguardListenQueue;

    .line 653
    new-instance v11, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda5;

    invoke-direct {v11, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda5;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    iput-object v11, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUpdateBiometricListeningState:Ljava/lang/Runnable;

    .line 663
    new-instance v11, Landroid/util/SparseIntArray;

    invoke-direct {v11}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v11, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTrustFlags:Landroid/util/SparseIntArray;

    .line 1274
    new-instance v11, Lcom/android/keyguard/KeyguardUpdateMonitor$9;

    invoke-direct {v11, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor$9;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    iput-object v11, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mRetryFingerprintAuthentication:Ljava/lang/Runnable;

    .line 1552
    new-instance v11, Lcom/android/keyguard/KeyguardUpdateMonitor$10;

    invoke-direct {v11, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor$10;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    iput-object v11, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mRetryFaceAuthentication:Ljava/lang/Runnable;

    .line 1924
    new-instance v11, Lcom/android/keyguard/KeyguardUpdateMonitor$DisplayClientState;

    invoke-direct {v11}, Lcom/android/keyguard/KeyguardUpdateMonitor$DisplayClientState;-><init>()V

    iput-object v11, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDisplayClientState:Lcom/android/keyguard/KeyguardUpdateMonitor$DisplayClientState;

    .line 1926
    new-instance v11, Lcom/android/keyguard/KeyguardUpdateMonitor$11;

    invoke-direct {v11, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor$11;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    iput-object v11, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 2054
    new-instance v12, Lcom/android/keyguard/KeyguardUpdateMonitor$12;

    invoke-direct {v12, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor$12;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    iput-object v12, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBroadcastAllReceiver:Landroid/content/BroadcastReceiver;

    .line 2101
    new-instance v13, Lcom/android/keyguard/KeyguardUpdateMonitor$13;

    invoke-direct {v13, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor$13;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    iput-object v13, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintLockoutResetCallback:Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;

    .line 2109
    new-instance v13, Lcom/android/keyguard/KeyguardUpdateMonitor$14;

    invoke-direct {v13, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor$14;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    iput-object v13, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceLockoutResetCallback:Landroid/hardware/face/FaceManager$LockoutResetCallback;

    .line 2117
    new-instance v13, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda2;

    invoke-direct {v13, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda2;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    iput-object v13, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintDetectionCallback:Landroid/hardware/fingerprint/FingerprintManager$FingerprintDetectionCallback;

    .line 2123
    new-instance v13, Lcom/android/keyguard/KeyguardUpdateMonitor$15;

    invoke-direct {v13, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor$15;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    iput-object v13, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    .line 2188
    new-instance v13, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda1;

    invoke-direct {v13, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    iput-object v13, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceDetectionCallback:Landroid/hardware/face/FaceManager$FaceDetectionCallback;

    .line 2194
    new-instance v13, Lcom/android/keyguard/KeyguardUpdateMonitor$16;

    invoke-direct {v13, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor$16;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    iput-object v13, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceAuthenticationCallback:Landroid/hardware/face/FaceManager$AuthenticationCallback;

    .line 3003
    new-instance v13, Lcom/android/keyguard/KeyguardUpdateMonitor$19;

    invoke-direct {v13, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor$19;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    iput-object v13, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserSwitchObserver:Landroid/app/UserSwitchObserver;

    .line 4883
    new-instance v14, Lcom/android/keyguard/KeyguardUpdateMonitor$21;

    invoke-direct {v14, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor$21;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    iput-object v14, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTaskStackListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    .line 5692
    new-instance v14, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda4;

    invoke-direct {v14, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda4;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    iput-object v14, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCocktailBarStateChangedListener:Lcom/samsung/android/cocktailbar/SemCocktailBarManager$CocktailBarStateChangedListener;

    .line 2591
    iput-object v2, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    .line 2592
    invoke-static/range {p1 .. p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v14

    iput-object v14, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    move-object/from16 v14, p10

    .line 2593
    iput-object v14, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTelephonyListenerManager:Lcom/android/systemui/telephony/TelephonyListenerManager;

    .line 2594
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceProvisionedInSettingsDb()Z

    move-result v14

    iput-boolean v14, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    .line 2595
    new-instance v14, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    new-instance v15, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda57;

    invoke-direct {v15, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda57;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    invoke-direct {v14, v2, v15, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;-><init>(Landroid/content/Context;Ljava/util/function/Consumer;Landroid/os/Looper;)V

    iput-object v14, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    .line 2597
    iput-object v4, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    .line 2598
    iput-object v3, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    move-object/from16 v14, p5

    .line 2599
    iput-object v14, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mRingerModeTracker:Lcom/android/systemui/util/RingerModeTracker;

    .line 2600
    iput-object v5, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 2601
    invoke-interface {v5, v6}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 2602
    invoke-interface/range {p7 .. p7}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v5

    iput v5, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStatusBarState:I

    move-object/from16 v5, p8

    .line 2603
    iput-object v5, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v5, p9

    .line 2604
    iput-object v5, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mAuthController:Lcom/android/systemui/biometrics/AuthController;

    .line 2605
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v6, p4

    invoke-virtual {v6, v5, v1}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    move-object/from16 v5, p12

    .line 2606
    iput-object v5, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mVibrator:Landroid/os/Vibrator;

    .line 2608
    new-instance v5, Lcom/android/keyguard/KeyguardUpdateMonitor$17;

    invoke-direct {v5, v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor$17;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/os/Looper;)V

    iput-object v5, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    .line 2752
    iget-boolean v0, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    if-nez v0, :cond_0

    .line 2753
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->watchForDeviceProvisioning()V

    .line 2757
    :cond_0
    new-instance v0, Lcom/android/settingslib/fuelgauge/BatteryStatus;

    const/4 v15, 0x1

    const/16 v16, 0x64

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1

    move-object v14, v0

    invoke-direct/range {v14 .. v20}, Lcom/android/settingslib/fuelgauge/BatteryStatus;-><init>(IIIIIZ)V

    iput-object v0, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/settingslib/fuelgauge/BatteryStatus;

    .line 2760
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v5, "android.intent.action.TIME_TICK"

    .line 2761
    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "android.intent.action.TIME_SET"

    .line 2762
    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "android.intent.action.BATTERY_CHANGED"

    .line 2763
    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "android.intent.action.TIMEZONE_CHANGED"

    .line 2764
    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "android.intent.action.AIRPLANE_MODE"

    .line 2765
    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "android.intent.action.SIM_STATE_CHANGED"

    .line 2766
    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "android.intent.action.SERVICE_STATE"

    .line 2767
    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    .line 2768
    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "android.intent.action.PHONE_STATE"

    .line 2769
    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    .line 2770
    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v6, "android.intent.action.LOCALE_CHANGED"

    .line 2773
    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2775
    iget-object v6, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v11, v0, v6}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiverWithHandler(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/os/Handler;)V

    .line 2778
    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda15;

    invoke-direct {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda15;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    invoke-interface {v4, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2797
    iget-object v0, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda8;

    invoke-direct {v4, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda8;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2799
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "android.intent.action.USER_INFO_CHANGED"

    .line 2800
    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.app.action.NEXT_ALARM_CLOCK_CHANGED"

    .line 2801
    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "com.android.facelock.FACE_UNLOCK_STARTED"

    .line 2802
    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "com.android.facelock.FACE_UNLOCK_STOPPED"

    .line 2803
    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2804
    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.USER_UNLOCKED"

    .line 2805
    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.USER_STOPPED"

    .line 2806
    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.USER_REMOVED"

    .line 2807
    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.nfc.action.REQUIRE_UNLOCK_FOR_NFC"

    .line 2808
    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2809
    iget-object v4, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v12, v0, v4, v5}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiverWithHandler(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/os/Handler;Landroid/os/UserHandle;)V

    .line 2812
    iget-object v0, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v3, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v3}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 2814
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    const-string v3, "KeyguardUpdateMonitor"

    invoke-interface {v0, v13, v3}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2816
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 2819
    :goto_0
    const-class v0, Landroid/app/trust/TrustManager;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/trust/TrustManager;

    iput-object v0, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTrustManager:Landroid/app/trust/TrustManager;

    .line 2821
    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda7;

    invoke-direct {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda7;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->runSystemUserOnly(Ljava/lang/Runnable;)V

    const-string v0, "dreams"

    .line 2832
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2831
    invoke-static {v0}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v0

    iput-object v0, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDreamManager:Landroid/service/dreams/IDreamManager;

    .line 2834
    iget-object v0, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "android.hardware.fingerprint"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "fingerprint"

    .line 2835
    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v0, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    .line 2837
    :cond_1
    iget-object v0, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "android.hardware.biometrics.face"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "face"

    .line 2838
    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/face/FaceManager;

    iput-object v0, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceManager:Landroid/hardware/face/FaceManager;

    .line 2839
    invoke-virtual {v0}, Landroid/hardware/face/FaceManager;->getSensorPropertiesInternal()Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceSensorProperties:Ljava/util/List;

    .line 2843
    :cond_2
    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda23;

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda23;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->runSystemUserOnly(Ljava/lang/Runnable;)V

    const-string v0, "power"

    .line 2883
    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPowerManager:Landroid/os/PowerManager;

    .line 2886
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isAutomotive()Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsAutomotive:Z

    .line 2888
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserManager:Landroid/os/UserManager;

    .line 2889
    invoke-virtual {v0}, Landroid/os/UserManager;->isPrimaryUser()Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsPrimaryUser:Z

    .line 2890
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 2891
    iget-object v3, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserIsUnlocked:Landroid/util/SparseBooleanArray;

    sget-boolean v4, Lcom/android/systemui/LsRune;->KEYGUARD_FBE:Z

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isFbeSupported()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v4, v0}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result v10

    :cond_3
    invoke-virtual {v3, v0, v10}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2892
    const-class v3, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    iput-object v3, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 2895
    sget v4, Lcom/android/keyguard/KeyguardUpdateMonitor;->sCurrentUser:I

    invoke-virtual {v3, v9, v4}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;I)Z

    move-result v4

    iput-boolean v4, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDisableCamera:Z

    .line 2896
    sget v4, Lcom/android/keyguard/KeyguardUpdateMonitor;->sCurrentUser:I

    invoke-virtual {v3, v9, v4}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I

    move-result v4

    iput v4, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mMaximumFailedPasswordsForWipe:I

    .line 2898
    invoke-virtual {v3}, Landroid/app/admin/DevicePolicyManager;->isLogoutEnabled()Z

    move-result v3

    iput-boolean v3, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLogoutEnabled:Z

    .line 2899
    invoke-direct {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateSecondaryLockscreenRequirement(I)V

    .line 2900
    iget-object v0, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    .line 2901
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 2902
    iget-object v4, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTrustIsUsuallyManaged:Landroid/util/SparseBooleanArray;

    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    iget-object v5, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTrustManager:Landroid/app/trust/TrustManager;

    .line 2903
    invoke-virtual {v5, v3}, Landroid/app/trust/TrustManager;->isTrustUsuallyManaged(I)Z

    move-result v5

    .line 2902
    invoke-virtual {v4, v3, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_1

    .line 2905
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateAirplaneModeState()V

    const-string v0, "phone"

    .line 2908
    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 2910
    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda24;

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda24;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/content/Context;)V

    .line 2925
    invoke-static {}, Lcom/android/systemui/util/Assert;->isCurrentTestableLooper()Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_2

    .line 2926
    :cond_5
    iget-object v9, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    .line 2910
    :goto_2
    invoke-static {v0, v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->runSystemUserOnly(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 2944
    invoke-virtual/range {p11 .. p11}, Lcom/android/systemui/statusbar/FeatureFlags;->isKeyguardLayoutEnabled()Z

    move-result v0

    invoke-direct {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateLockScreenMode(Z)V

    .line 2946
    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor$18;

    iget-object v2, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor$18;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/os/Handler;)V

    iput-object v0, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTimeFormatChangeObserver:Landroid/database/ContentObserver;

    .line 2956
    iget-object v0, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "time_12_24"

    .line 2957
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v1, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTimeFormatChangeObserver:Landroid/database/ContentObserver;

    .line 2956
    invoke-virtual {v0, v2, v7, v1, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method static synthetic access$002(Lcom/android/keyguard/KeyguardUpdateMonitor;I)I
    .locals 0

    .line 210
    iput p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStatusBarState:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/util/SparseBooleanArray;
    .locals 0

    .line 210
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBiometricEnabledForUser:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/keyguard/KeyguardUpdateMonitor;)[Z
    .locals 0

    .line 210
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimPinPassed:[Z

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    .line 210
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFingerprintLockoutReset()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    .line 210
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFaceLockoutReset()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/keyguard/KeyguardUpdateMonitor;ILjava/lang/String;)V
    .locals 0

    .line 210
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFingerprintHelp(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/keyguard/KeyguardUpdateMonitor;ILjava/lang/String;)V
    .locals 0

    .line 210
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFingerprintError(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V
    .locals 0

    .line 210
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFingerprintAcquired(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/keyguard/KeyguardUpdateMonitor;)Lcom/android/systemui/statusbar/phone/KeyguardBypassController;
    .locals 0

    .line 210
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/android/keyguard/KeyguardUpdateMonitor;ILjava/lang/String;)V
    .locals 0

    .line 210
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFaceHelp(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/keyguard/KeyguardUpdateMonitor;ILjava/lang/String;)V
    .locals 0

    .line 210
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFaceError(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V
    .locals 0

    .line 210
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFaceAcquired(I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    .line 210
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleTimeUpdate()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/keyguard/KeyguardUpdateMonitor;I)I
    .locals 0

    .line 210
    iput p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mActiveMobileDataSubscription:I

    return p1
.end method

.method static synthetic access$2100(Lcom/android/keyguard/KeyguardUpdateMonitor;Ljava/lang/String;)V
    .locals 0

    .line 210
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleTimeZoneUpdate(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/KeyguardBatteryStatus;)V
    .locals 0

    .line 210
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleBatteryUpdate(Lcom/android/systemui/statusbar/KeyguardBatteryStatus;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V
    .locals 0

    .line 210
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleRingerModeChange(I)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/keyguard/KeyguardUpdateMonitor;Ljava/lang/String;)V
    .locals 0

    .line 210
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handlePhoneStateChanged(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    .line 210
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleDeviceProvisioned()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V
    .locals 0

    .line 210
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleDevicePolicyManagerStateChanged(I)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V
    .locals 0

    .line 210
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleUserSwitchComplete(I)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/keyguard/KeyguardUpdateMonitor;Z)V
    .locals 0

    .line 210
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleNotiStarState(Z)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    .line 210
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleKeyguardReset()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/keyguard/KeyguardUpdateMonitor;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 0

    .line 210
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V
    .locals 0

    .line 210
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleKeyguardBouncerChanged(I)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V
    .locals 0

    .line 210
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleUserInfoChanged(I)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    .line 210
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleReportEmergencyCallAction()V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/keyguard/KeyguardUpdateMonitor;ZI)V
    .locals 0

    .line 210
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFaceUnlockStateChanged(ZI)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    .line 210
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleSimSubscriptionInfoChanged()V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    .line 210
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleCarrierTextUpdated()V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    .line 210
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleAirplaneModeChanged()V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    .line 210
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleScreenTurnedOn()V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    .line 210
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleScreenTurnedOff()V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V
    .locals 0

    .line 210
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleDreamingStateChanged(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/keyguard/KeyguardUpdateMonitor;)I
    .locals 0

    .line 210
    iget p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHardwareFingerprintUnavailableRetryCount:I

    return p0
.end method

.method static synthetic access$4000(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V
    .locals 0

    .line 210
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleUserUnlocked(I)V

    return-void
.end method

.method static synthetic access$408(Lcom/android/keyguard/KeyguardUpdateMonitor;)I
    .locals 2

    .line 210
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHardwareFingerprintUnavailableRetryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHardwareFingerprintUnavailableRetryCount:I

    return v0
.end method

.method static synthetic access$4100(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V
    .locals 0

    .line 210
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleUserStopped(I)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    .line 210
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateLogoutEnabled()V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/keyguard/KeyguardUpdateMonitor;Z)V
    .locals 0

    .line 210
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleKeyguardGoingAway(Z)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    .line 210
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleLockScreenMode()V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/keyguard/KeyguardUpdateMonitor;Ljava/lang/String;)V
    .locals 0

    .line 210
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleTimeFormatUpdate(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    .line 210
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleRequireUnlockForNfc()V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/content/Context;
    .locals 0

    .line 210
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$4800(Lcom/android/keyguard/KeyguardUpdateMonitor;)Z
    .locals 0

    .line 210
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    return p0
.end method

.method static synthetic access$4802(Lcom/android/keyguard/KeyguardUpdateMonitor;Z)Z
    .locals 0

    .line 210
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    return p1
.end method

.method static synthetic access$4900(Lcom/android/keyguard/KeyguardUpdateMonitor;)Z
    .locals 0

    .line 210
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceProvisionedInSettingsDb()Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/hardware/fingerprint/FingerprintManager;
    .locals 0

    .line 210
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/keyguard/KeyguardUpdateMonitor;)Ljava/lang/Runnable;
    .locals 0

    .line 210
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mRetryFingerprintAuthentication:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/keyguard/KeyguardUpdateMonitor;)I
    .locals 0

    .line 210
    iget p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHardwareFaceUnavailableRetryCount:I

    return p0
.end method

.method private callbacksRefreshCarrierInfo()V
    .locals 1

    .line 814
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 816
    sget-object v0, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda76;->INSTANCE:Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda76;

    invoke-interface {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->dispatchCallback(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private clearBiometricRecognized(I)V
    .locals 2

    .line 4830
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 4831
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFingerprintAuthenticated:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 4832
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFaceAuthenticated:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 4833
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTrustManager:Landroid/app/trust/TrustManager;

    sget-object v1, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {v0, v1, p1}, Landroid/app/trust/TrustManager;->clearAllBiometricRecognized(Landroid/hardware/biometrics/BiometricSourceType;I)V

    .line 4834
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTrustManager:Landroid/app/trust/TrustManager;

    sget-object v1, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {v0, v1, p1}, Landroid/app/trust/TrustManager;->clearAllBiometricRecognized(Landroid/hardware/biometrics/BiometricSourceType;I)V

    .line 4837
    sget-object p1, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda71;->INSTANCE:Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda71;

    invoke-interface {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->dispatchCallback(Ljava/util/function/Consumer;)V

    return-void
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

.method private dispatchErrorMessage(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1904
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 1906
    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda59;

    invoke-direct {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda59;-><init>(Ljava/lang/CharSequence;)V

    invoke-interface {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->dispatchCallback(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static declared-synchronized getCurrentUser()I
    .locals 2

    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    monitor-enter v0

    .line 660
    :try_start_0
    sget v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->sCurrentUser:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getFailedAttemptsBeforeWipe()I
    .locals 1

    .line 5523
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isAutoWipe()Z

    move-result v0

    .line 5524
    iget p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mMaximumFailedPasswordsForWipe:I

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    const/16 p0, 0xf

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getFingerprintStrongBiometric(I)Z
    .locals 0

    .line 6099
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFingerprintAuthenticated:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;

    if-eqz p0, :cond_0

    .line 6100
    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;->access$900(Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getIsFaceAuthenticated()Z
    .locals 1

    .line 1721
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFaceAuthenticated:Landroid/util/SparseArray;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;

    if-eqz p0, :cond_0

    .line 1723
    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;->access$800(Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static declared-synchronized getSemBioFaceManager(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;
    .locals 2

    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    monitor-enter v0

    .line 6215
    :try_start_0
    sget-object v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->sFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-nez v1, :cond_0

    .line 6216
    invoke-static {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object p0

    sput-object p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->sFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    .line 6218
    :cond_0
    sget-object p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->sFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private handleAirplaneModeChanged()V
    .locals 0

    .line 810
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->callbacksRefreshCarrierInfo()V

    return-void
.end method

.method private handleBatteryUpdate(Lcom/android/systemui/statusbar/KeyguardBatteryStatus;)V
    .locals 2

    .line 5375
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "handleBatteryUpdate"

    .line 5376
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5377
    invoke-interface {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->updateBatteryState(Lcom/android/systemui/statusbar/KeyguardBatteryStatus;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5379
    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda58;

    invoke-direct {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda58;-><init>(Lcom/android/systemui/statusbar/KeyguardBatteryStatus;)V

    invoke-interface {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->dispatchCallback(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method private handleCarrierTextUpdated()V
    .locals 0

    .line 5651
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->callbacksRefreshCarrierInfo()V

    return-void
.end method

.method private handleDevicePolicyManagerStateChanged(I)V
    .locals 2

    .line 4107
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 4108
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 4109
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateSecondaryLockscreenRequirement(I)V

    .line 4110
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_KNOX_SUPPORT_DUAL_DAR_AT_DO:Z

    if-eqz v0, :cond_0

    .line 4111
    invoke-interface {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->updateDualDARInnerLockscreenRequirement(I)V

    .line 4114
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 4115
    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDisableCamera:Z

    .line 4116
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I

    move-result p1

    iput p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mMaximumFailedPasswordsForWipe:I

    .line 4120
    :cond_1
    sget-object p1, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda72;->INSTANCE:Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda72;

    invoke-interface {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->dispatchCallback(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private handleDeviceProvisioned()V
    .locals 2

    .line 4189
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 4191
    sget-object v0, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda73;->INSTANCE:Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda73;

    invoke-interface {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->dispatchCallback(Ljava/util/function/Consumer;)V

    .line 4194
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisionedObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 4196
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisionedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 4197
    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisionedObserver:Landroid/database/ContentObserver;

    :cond_0
    return-void
.end method

.method private handleDreamingStateChanged(I)V
    .locals 6

    .line 2469
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 2472
    :goto_0
    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mGoingToSleep:Z

    if-nez v2, :cond_1

    if-eqz p1, :cond_1

    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardOccluded:Z

    if-eqz v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, v0

    .line 2473
    :goto_1
    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsDreaming:Z

    if-eq v3, p1, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    move v3, v0

    .line 2474
    :goto_2
    iget-boolean v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsScreenSaverRunning:Z

    if-eq v4, v2, :cond_3

    goto :goto_3

    :cond_3
    move v1, v0

    :goto_3
    if-nez v3, :cond_4

    if-nez v1, :cond_4

    return-void

    .line 2478
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleDreamingStateChanged() dreaming : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsDreaming:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", screen saver : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsScreenSaverRunning:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "KeyguardUpdateMonitor"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2481
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsDreaming:Z

    .line 2482
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsScreenSaverRunning:Z

    .line 2485
    new-instance p1, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda56;

    invoke-direct {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda56;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    invoke-interface {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->dispatchCallback(Ljava/util/function/Consumer;)V

    if-eqz v2, :cond_5

    .line 2489
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->clearBiometricRecognized()V

    .line 2490
    invoke-interface {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->setFaceAuthenticated(Z)V

    .line 2493
    :cond_5
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    if-eqz v1, :cond_6

    .line 2495
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFaceListeningState()V

    :cond_6
    return-void
.end method

.method private handleFaceAcquired(I)V
    .locals 1

    .line 1470
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    if-eqz p1, :cond_0

    return-void

    .line 1474
    :cond_0
    sget-boolean p1, Lcom/android/keyguard/KeyguardUpdateMonitor;->DEBUG_FACE:Z

    if-eqz p1, :cond_1

    const-string p1, "KeyguardFace"

    const-string v0, "Face acquired"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1476
    :cond_1
    sget-object p1, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda85;->INSTANCE:Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda85;

    invoke-interface {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->dispatchCallback(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private handleFaceError(ILjava/lang/String;)V
    .locals 5

    .line 1562
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 1564
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDetectionRunning()Z

    move-result v0

    const-string v1, "KeyguardFace"

    if-nez v0, :cond_0

    const-string p0, "onAuthenticationError(), Face is not running"

    .line 1565
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    const-string p0, "onAuthenticationError(), FACE_ERROR_CANCELED ignore"

    .line 1569
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1572
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAuthenticationError(), errorCode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", errString="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-nez p2, :cond_2

    .line 1576
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$string;->kg_face_not_working_text:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    .line 1577
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$string;->kg_face_error_restart_text:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1578
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    const-string p2, ""

    .line 1580
    :cond_2
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopListeningForFace()V

    const v1, 0x186a1

    if-ne p1, v1, :cond_3

    .line 1581
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBouncer:Z

    if-nez v1, :cond_3

    .line 1582
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    const/16 v2, 0x31

    .line 1583
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    .line 1584
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$dimen;->status_bar_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 1583
    invoke-virtual {v1, v2, v0, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 1585
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_5

    .line 1589
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTimeoutWithoutFace:Z

    if-eqz v0, :cond_4

    const-string v0, "4"

    goto :goto_0

    :cond_4
    const-string v0, "3"

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->sendFaceSALog(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const/16 v0, 0x3ee

    if-ne p1, v0, :cond_6

    const-string v0, "5"

    .line 1592
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->sendFaceSALog(Ljava/lang/String;)V

    .line 1597
    :cond_6
    :goto_1
    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda44;

    invoke-direct {v0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda44;-><init>(ILjava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->dispatchCallback(Ljava/util/function/Consumer;)V

    .line 1601
    const-class p0, Lcom/android/systemui/util/DesktopManager;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/DesktopManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/util/DesktopManager;->notifyFaceAuthenticationError(ILjava/lang/CharSequence;)V

    return-void
.end method

.method private handleFaceHelp(ILjava/lang/String;)V
    .locals 2

    .line 1545
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 1546
    sget-boolean v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->DEBUG_FACE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Face help received: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardFace"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1548
    :cond_0
    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda45;

    invoke-direct {v0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda45;-><init>(ILjava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->dispatchCallback(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private handleFaceLockoutReset()V
    .locals 1

    const/4 v0, 0x0

    .line 1644
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceLockedOutPermanent:Z

    .line 1645
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFaceListeningState()V

    return-void
.end method

.method private handleFaceUnlockStateChanged(ZI)V
    .locals 1

    .line 1674
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 1675
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFaceUnlockRunning:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1677
    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda68;

    invoke-direct {v0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda68;-><init>(ZI)V

    invoke-interface {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->dispatchCallback(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private handleFingerprintAcquired(I)V
    .locals 6

    .line 1061
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 1063
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleFingerprintAcquired( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardFingerPrint"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x2712

    if-eq p1, v3, :cond_1

    const/16 v4, 0x2714

    if-eq p1, v4, :cond_0

    goto :goto_0

    .line 1070
    :cond_0
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsFpLeave:Z

    goto :goto_0

    .line 1067
    :cond_1
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsFpLeave:Z

    .line 1076
    :goto_0
    iget-boolean v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsSkipFPResponse:Z

    if-eqz v4, :cond_2

    if-ne p1, v3, :cond_2

    .line 1077
    iget-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTimeoutSkipFPResponse:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-string v4, "FP Capture started. Therefore, the FP response will be skipped."

    .line 1078
    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/16 v1, 0x3ec

    if-eq p1, v1, :cond_3

    move v0, v2

    .line 1083
    :cond_3
    new-instance v1, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda12;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    invoke-static {v0, v1}, Lcom/android/systemui/Rune;->runIf(ZLjava/lang/Runnable;)V

    .line 1092
    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed(Z)Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDisabledBiometricBySecurityDialog:Z

    if-nez v0, :cond_4

    if-ne p1, v3, :cond_6

    .line 1096
    sget-object p1, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda82;->INSTANCE:Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda82;

    invoke-interface {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->dispatchCallback(Ljava/util/function/Consumer;)V

    goto :goto_1

    :cond_4
    if-eqz p1, :cond_5

    return-void

    .line 1104
    :cond_5
    sget-object p1, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda86;->INSTANCE:Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda86;

    invoke-interface {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->dispatchCallback(Ljava/util/function/Consumer;)V

    :cond_6
    :goto_1
    return-void
.end method

.method private handleFingerprintError(ILjava/lang/String;)V
    .locals 6

    .line 1289
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 1291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleFingerprintError( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardFingerPrint"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x1388

    if-ne v0, p1, :cond_1

    .line 1293
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDetectionRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "handleFingerprintError( restart FingerPrint by FINGERPRINT_ERROR_NEED_TO_RETRY !! )"

    .line 1294
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1296
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->startListeningForFingerprint()V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x3ec

    if-ne v0, p1, :cond_2

    .line 1302
    iget-object p2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->kg_finger_print_database_error_message:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_2
    const/16 v0, 0x3ea

    if-eq v0, p1, :cond_6

    const/16 v0, 0x3eb

    if-ne v0, p1, :cond_3

    goto :goto_0

    :cond_3
    const/16 v0, 0x3e9

    if-ne v0, p1, :cond_5

    .line 1308
    sget-boolean p2, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY_OPTICAL:Z

    if-eqz p2, :cond_4

    .line 1309
    iget-object p2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->kg_finger_print_optical_sensor_with_recalibration_error_message:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 1312
    :cond_4
    iget-object p2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->kg_finger_print_sensor_with_recalibration_error_message:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_5
    const/16 v0, 0x3ed

    if-ne v0, p1, :cond_7

    .line 1316
    iget-object p2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->kg_finger_print_sensor_changed_error_message:I

    .line 1317
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 1305
    :cond_6
    :goto_0
    iget-object p2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->kg_finger_print_not_responding_error_message:I

    .line 1306
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 1320
    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4, v4}, Landroid/os/PowerManager;->userActivity(JII)V

    .line 1324
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpCancelNotReceived:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1325
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpCancelNotReceived:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_8
    const/4 v0, 0x0

    .line 1329
    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintCancelSignal:Landroid/os/CancellationSignal;

    .line 1331
    sget-boolean v2, Lcom/android/systemui/LsRune;->SECURITY_BACKGROUND_AUTHENTICATION:Z

    const/4 v3, 0x5

    const/4 v5, 0x1

    if-eqz v2, :cond_9

    if-ne p1, v3, :cond_9

    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardOccluded:Z

    if-eqz v2, :cond_9

    iget v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintRunningState:I

    if-ne v2, v5, :cond_9

    const-string v0, "mIsFPCanceledByForegroundApp true"

    .line 1334
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1335
    iput-boolean v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsFPCanceledByForegroundApp:Z

    .line 1336
    invoke-direct {p0, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFingerprintRunningState(I)V

    goto :goto_2

    :cond_9
    if-ne p1, v3, :cond_a

    .line 1337
    iget v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintRunningState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_a

    .line 1339
    invoke-direct {p0, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFingerprintRunningState(I)V

    .line 1340
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    goto :goto_2

    .line 1342
    :cond_a
    invoke-direct {p0, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFingerprintRunningState(I)V

    .line 1343
    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintCancelSignal:Landroid/os/CancellationSignal;

    .line 1344
    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceCancelSignal:Landroid/os/CancellationSignal;

    :goto_2
    if-ne p1, v5, :cond_b

    .line 1348
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mRetryFingerprintAuthentication:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_b
    const/16 v0, 0x9

    if-ne p1, v0, :cond_c

    .line 1352
    iput-boolean v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintLockedOutPermanent:Z

    .line 1353
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->requireStrongAuthIfAllLockedOut()V

    :cond_c
    const/4 v1, 0x7

    if-eq p1, v1, :cond_d

    if-ne p1, v0, :cond_e

    .line 1358
    :cond_d
    iput-boolean v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintLockedOut:Z

    .line 1359
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUdfpsEnrolled()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1360
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 1366
    :cond_e
    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda42;

    invoke-direct {v0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda42;-><init>(ILjava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->dispatchCallback(Ljava/util/function/Consumer;)V

    .line 1371
    const-class p0, Lcom/android/systemui/util/DesktopManager;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/DesktopManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/util/DesktopManager;->notifyFingerprintError(ILjava/lang/String;)V

    return-void
.end method

.method private handleFingerprintHelp(ILjava/lang/String;)V
    .locals 11

    .line 1182
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 1185
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 1186
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsSkipFPResponse:Z

    const/4 v2, 0x0

    const-string v3, "KeyguardFingerPrint"

    if-eqz v1, :cond_0

    .line 1187
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsSkipFPResponse:Z

    const-string p0, "handleFingerprintHelp( skipped FP response )"

    .line 1188
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v1, -0x1

    const/4 v4, 0x1

    if-eq p1, v1, :cond_1

    .line 1191
    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed(Z)Z

    move-result v5

    if-nez v5, :cond_1

    const-string p1, "handleFingerprintHelp( unlock is not allowed. )"

    .line 1192
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopListeningForFingerprint()V

    return-void

    .line 1197
    :cond_1
    iget-boolean v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    const-wide/16 v6, 0x2710

    const/16 v8, 0x3ec

    const-wide/16 v9, 0x0

    if-eqz v5, :cond_2

    if-eq p1, v8, :cond_b

    .line 1199
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4, v2, v2}, Landroid/os/PowerManager;->userActivity(JII)V

    goto/16 :goto_2

    :cond_2
    if-eq p1, v8, :cond_c

    const/16 v5, 0x3ed

    if-ne p1, v5, :cond_3

    goto/16 :goto_4

    :cond_3
    const/4 v5, 0x0

    if-eq p1, v1, :cond_7

    .line 1208
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFingerPrintBadQualityCounts()I

    move-result p1

    add-int/2addr p1, v4

    .line 1209
    iget-object p2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerPrintBadQualityCounts:Landroid/util/SparseIntArray;

    sget v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->sCurrentUser:I

    invoke-virtual {p2, v0, p1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1210
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleFingerprintHelp( Update Bad Quality Count = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " )"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p2, 0x32

    if-lt p1, p2, :cond_5

    const-string p1, "301"

    const-string p2, "1099"

    .line 1214
    invoke-direct {p0, p1, p2, v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->sendSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1216
    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->getSettingsHelper()Lcom/android/systemui/util/SettingsHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isFingerprintSensorPopupShowAgain()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1217
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->showFingerprintBlockPopup()V

    goto :goto_0

    :cond_4
    const-string p1, "Skip to show fingerprint sensor block popup"

    .line 1219
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 1222
    invoke-direct {p0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFodStrictMode(Z)V

    goto :goto_1

    :cond_5
    const/16 p2, 0x1e

    if-ne p1, p2, :cond_6

    .line 1224
    invoke-direct {p0, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFodStrictMode(Z)V

    .line 1227
    :cond_6
    :goto_1
    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->getPluginAODManager()Lcom/android/systemui/doze/PluginAODManager;

    move-result-object p0

    invoke-virtual {p0, v9, v10}, Lcom/android/systemui/doze/PluginAODManager;->hideChargingInfoByFinger(J)V

    return-void

    .line 1231
    :cond_7
    invoke-interface {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->getFailedBiometricUnlockAttempts(I)I

    move-result v1

    .line 1232
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v2

    .line 1233
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleFingerprintHelp( Failed count when screen off = "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " ) - "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", t = "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    invoke-interface {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->getFailedBiometricUnlockAttempts(I)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_9

    .line 1236
    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->getKeyguardBatteryStatus()Lcom/android/systemui/statusbar/KeyguardBatteryStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/KeyguardBatteryStatus;->getChargingType()I

    move-result v3

    .line 1237
    sget-boolean v4, Lcom/android/systemui/LsRune;->SECURITY_SENSOR_LIMITATION_WIRELESS_CHARGER:Z

    if-eqz v4, :cond_9

    const/16 v4, 0xd

    if-eq v3, v4, :cond_8

    const/16 v4, 0xc

    if-ne v3, v4, :cond_9

    .line 1240
    :cond_8
    new-instance v5, Lcom/samsung/android/aod/AODToast$Builder;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    .line 1241
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$string;->kg_fingerprint_wireless_charger_warning:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Lcom/samsung/android/aod/AODToast$Builder;-><init>(Ljava/lang/String;)V

    .line 1244
    :cond_9
    invoke-interface {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->isMaxFailedBiometricUnlockAttemptsShort(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1245
    new-instance v5, Lcom/samsung/android/aod/AODToast$Builder;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardTextBuilder;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardTextBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 1246
    invoke-virtual {v0, v1, v3, v2}, Lcom/android/keyguard/KeyguardTextBuilder;->getFPFailedAttemptGuideMessageWhenScreenOff(ILcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/samsung/android/aod/AODToast$Builder;-><init>(Ljava/lang/String;)V

    :cond_a
    if-eqz v5, :cond_b

    .line 1250
    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/aod/AODToast$Builder;->setDurationInMillis(J)Lcom/samsung/android/aod/AODToast$Builder;

    .line 1251
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/aod/AODManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/aod/AODManager;

    move-result-object v0

    invoke-virtual {v5}, Lcom/samsung/android/aod/AODToast$Builder;->build()Lcom/samsung/android/aod/AODToast;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/aod/AODManager;->requestAODToast(Lcom/samsung/android/aod/AODToast;)V

    goto :goto_3

    :cond_b
    :goto_2
    move-wide v6, v9

    .line 1257
    :goto_3
    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda43;

    invoke-direct {v0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda43;-><init>(ILjava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->dispatchCallback(Ljava/util/function/Consumer;)V

    .line 1261
    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->getPluginAODManager()Lcom/android/systemui/doze/PluginAODManager;

    move-result-object p0

    invoke-virtual {p0, v6, v7}, Lcom/android/systemui/doze/PluginAODManager;->hideChargingInfoByFinger(J)V

    .line 1265
    const-class p0, Lcom/android/systemui/util/DesktopManager;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/DesktopManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/util/DesktopManager;->notifyFingerprintHelp(ILjava/lang/String;)V

    return-void

    :cond_c
    :goto_4
    const-string p0, "handleFingerprintHelp( skip TSP block/unblock )"

    .line 1205
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private handleFingerprintLockoutReset()V
    .locals 4

    const/4 v0, 0x0

    .line 1377
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintLockedOut:Z

    .line 1378
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintLockedOutPermanent:Z

    .line 1380
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUdfpsEnrolled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1386
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda6;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1389
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    :goto_0
    return-void
.end method

.method private handleKeyguardBouncerChanged(I)V
    .locals 3

    .line 4549
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 4550
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleKeyguardBouncerChanged("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUpdateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 4551
    :goto_0
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBouncer:Z

    .line 4553
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p1

    .line 4554
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Swipe:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v2, :cond_1

    .line 4556
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceOptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFaceAuthenticated(I)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDetectionRunning()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4557
    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFaceRunningState(I)V

    .line 4558
    invoke-interface {p0, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->setFaceAuthenticated(Z)V

    .line 4562
    :cond_1
    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBouncer:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsShadeLockedState:Z

    if-eqz p1, :cond_2

    .line 4563
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsShadeLockedState:Z

    .line 4566
    :cond_2
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockCompleted()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 4567
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFaceListeningState()V

    .line 4569
    :cond_3
    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBouncer:Z

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDetectionRunning()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 4570
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSemBioFaceManager(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->resetAuthenticationTimeout()Z

    .line 4574
    :cond_4
    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBouncer:Z

    if-eqz p1, :cond_5

    .line 4579
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSecureCameraLaunched:Z

    goto :goto_1

    .line 4581
    :cond_5
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCredentialAttempted:Z

    .line 4585
    :goto_1
    new-instance p1, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda54;

    invoke-direct {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda54;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    invoke-interface {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->dispatchCallback(Ljava/util/function/Consumer;)V

    .line 4588
    sget-boolean p1, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY:Z

    if-eqz p1, :cond_6

    .line 4589
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz p1, :cond_6

    .line 4590
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBouncer:Z

    invoke-virtual {p1, v0}, Landroid/hardware/fingerprint/FingerprintManager;->semShowBouncerScreen(I)I

    .line 4595
    :cond_6
    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardIsVisible:Z

    if-nez p1, :cond_7

    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBouncer:Z

    if-nez p1, :cond_7

    .line 4596
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setUnlockingKeyguard(Z)V

    .line 4601
    :cond_7
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setShortcutPreviewShowing(Z)V

    .line 4604
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateBiometricListeningState()V

    .line 4606
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBouncer:Z

    if-eqz p0, :cond_8

    .line 4607
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object p0

    const-string p1, "1001"

    const-string v0, "1"

    invoke-static {p0, p1, v0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    return-void
.end method

.method private handleKeyguardGoingAway(Z)V
    .locals 0

    .line 2552
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 2553
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setKeyguardGoingAway(Z)V

    return-void
.end method

.method private handleKeyguardReset()V
    .locals 2

    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "handleKeyguardReset"

    .line 4511
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4512
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateBiometricListeningState()V

    .line 4515
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isForcedLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4516
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDetectionRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4517
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopListeningForFace()V

    .line 4521
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->resolveNeedsSlowUnlockTransition()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mNeedsSlowUnlockTransition:Z

    return-void
.end method

.method private handleLockScreenMode()V
    .locals 2

    .line 4249
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 4250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleLockScreenMode("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockScreenMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUpdateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4252
    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda55;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda55;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    invoke-interface {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->dispatchCallback(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private handleNotiStarState(Z)V
    .locals 2

    .line 782
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsNotiStarShown:Z

    if-eq v0, p1, :cond_2

    .line 784
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleNotiStarState( prev:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsNotiStarShown:Z

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

    .line 785
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsNotiStarShown:Z

    .line 786
    const-class p1, Lcom/android/systemui/util/DesktopManager;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/DesktopManager;

    invoke-virtual {p1}, Lcom/android/systemui/util/DesktopManager;->isDesktopMode()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockCompleted()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 789
    :cond_0
    sget-boolean p1, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY:Z

    if-eqz p1, :cond_1

    .line 790
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 793
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFaceListeningState()V

    nop

    :cond_2
    :goto_0
    return-void
.end method

.method private handlePhoneStateChanged(Ljava/lang/String;)V
    .locals 2

    .line 4205
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 4206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handlePhoneStateChanged("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUpdateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4207
    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 4208
    iput p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPhoneState:I

    goto :goto_0

    .line 4209
    :cond_0
    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x2

    .line 4210
    iput p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPhoneState:I

    goto :goto_0

    .line 4211
    :cond_1
    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 4212
    iput p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPhoneState:I

    .line 4215
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 4218
    new-instance p1, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda53;

    invoke-direct {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda53;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    invoke-interface {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->dispatchCallback(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private handleReportEmergencyCallAction()V
    .locals 1

    .line 4626
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 4628
    sget-object v0, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda74;->INSTANCE:Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda74;

    invoke-interface {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->dispatchCallback(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private handleRequireUnlockForNfc()V
    .locals 1

    .line 4616
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 4618
    sget-object v0, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda77;->INSTANCE:Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda77;

    invoke-interface {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->dispatchCallback(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private handleRingerModeChange(I)V
    .locals 2

    .line 4226
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 4227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleRingerModeChange("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUpdateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4228
    iput p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mRingMode:I

    .line 4230
    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda34;

    invoke-direct {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda34;-><init>(I)V

    invoke-interface {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->dispatchCallback(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private handleScreenTurnedOff()V
    .locals 2

    const-string v0, "KeyguardUpdateMonitor#handleScreenTurnedOff"

    .line 2457
    invoke-static {v0}, Lcom/android/systemui/DejankUtils;->startDetectingBlockingIpcs(Ljava/lang/String;)V

    .line 2458
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    const/4 v1, 0x0

    .line 2459
    iput v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHardwareFingerprintUnavailableRetryCount:I

    .line 2460
    iput v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHardwareFaceUnavailableRetryCount:I

    .line 2462
    sget-object v1, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda78;->INSTANCE:Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda78;

    invoke-interface {p0, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->dispatchCallback(Ljava/util/function/Consumer;)V

    .line 2465
    invoke-static {v0}, Lcom/android/systemui/DejankUtils;->stopDetectingBlockingIpcs(Ljava/lang/String;)V

    return-void
.end method

.method private handleScreenTurnedOn()V
    .locals 1

    .line 2448
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 2450
    sget-object v0, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda79;->INSTANCE:Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda79;

    invoke-interface {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->dispatchCallback(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private handleSimSubscriptionInfoChanged()V
    .locals 11

    .line 716
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "onSubscriptionInfoChanged()"

    .line 718
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 720
    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getCompleteActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 722
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 723
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SubInfo:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v1, "onSubscriptionInfoChanged: list is null"

    .line 726
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v1, 0x1

    .line 729
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSubscriptionInfo(Z)Ljava/util/List;

    move-result-object v1

    .line 734
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 735
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    const/4 v4, 0x0

    move v5, v4

    .line 736
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 737
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/SubscriptionInfo;

    .line 738
    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 739
    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v7

    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v8

    invoke-direct {p0, v7, v8}, Lcom/android/keyguard/KeyguardUpdateMonitor;->refreshSimState(II)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 741
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 747
    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 748
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 749
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 750
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 751
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Previously active sub id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " is now invalid, will remove"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    .line 756
    iget v6, v5, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->subId:I

    iget v7, v5, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->slotId:I

    invoke-direct {p0, v6, v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->refreshSimState(II)Z

    move-result v6

    .line 758
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    if-eqz v6, :cond_4

    move v6, v4

    .line 761
    :goto_2
    iget-object v7, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_4

    .line 762
    iget-object v7, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v7, :cond_5

    .line 764
    iget v8, v5, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->subId:I

    iget v9, v5, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->slotId:I

    iget v10, v5, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simState:I

    invoke-virtual {v7, v8, v9, v10}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onSimStateChanged(III)V

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 771
    :cond_6
    :goto_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_7

    .line 772
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    .line 774
    new-instance v1, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda49;

    invoke-direct {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda49;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;)V

    invoke-interface {p0, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->dispatchCallback(Ljava/util/function/Consumer;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 777
    :cond_7
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->callbacksRefreshCarrierInfo()V

    return-void
.end method

.method private handleTimeFormatUpdate(Ljava/lang/String;)V
    .locals 2

    .line 4277
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 4278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleTimeFormatUpdate timeFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUpdateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4280
    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda61;

    invoke-direct {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda61;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->dispatchCallback(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private handleTimeUpdate()V
    .locals 2

    .line 4238
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "handleTimeUpdate"

    .line 4239
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4241
    sget-object v0, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda80;->INSTANCE:Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda80;

    invoke-interface {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->dispatchCallback(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private handleTimeZoneUpdate(Ljava/lang/String;)V
    .locals 2

    .line 4260
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "handleTimeZoneUpdate"

    .line 4261
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4263
    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda60;

    invoke-direct {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda60;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->dispatchCallback(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private handleUserInfoChanged(I)V
    .locals 1

    .line 2508
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 2510
    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda33;

    invoke-direct {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda33;-><init>(I)V

    invoke-interface {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->dispatchCallback(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private handleUserStopped(I)V
    .locals 1

    .line 2540
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 2541
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserIsUnlocked:Landroid/util/SparseBooleanArray;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result p0

    invoke-virtual {v0, p1, p0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    return-void
.end method

.method private handleUserSwitchComplete(I)V
    .locals 2

    .line 4146
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 4149
    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->getSettingsHelper()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->onUserSwitched()V

    .line 4153
    invoke-interface {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->updateSecureLockState(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->updateBiometricsOptionState(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4154
    :cond_0
    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->handleLockModeChanged()V

    .line 4156
    :cond_1
    invoke-interface {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->updateLockscreenDisabled(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4157
    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->handleLockDisabledChanged()V

    .line 4159
    :cond_2
    invoke-interface {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->updateOwnerInfoState(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4160
    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->handleOwnerInfoChanged()V

    .line 4165
    :cond_3
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateBiometricListeningState()V

    .line 4169
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    .line 4170
    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDisableCamera:Z

    .line 4171
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mMaximumFailedPasswordsForWipe:I

    .line 4176
    :cond_4
    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda32;

    invoke-direct {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda32;-><init>(I)V

    invoke-interface {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->dispatchCallback(Ljava/util/function/Consumer;)V

    .line 4179
    sget-boolean v0, Lcom/android/systemui/LsRune;->KEYGUARD_FBE:Z

    if-eqz v0, :cond_5

    .line 4180
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserIsUnlocked:Landroid/util/SparseBooleanArray;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 4181
    invoke-interface {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->updateUserUnlockNotification(I)V

    :cond_5
    return-void
.end method

.method private handleUserUnlocked(I)V
    .locals 2

    .line 2515
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 2517
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleUserUnlocked("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUpdateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2519
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserIsUnlocked:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2520
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->resolveNeedsSlowUnlockTransition()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mNeedsSlowUnlockTransition:Z

    .line 2522
    sget-boolean v0, Lcom/android/systemui/LsRune;->KEYGUARD_FBE:Z

    if-eqz v0, :cond_0

    .line 2523
    invoke-interface {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->updateUserUnlockNotification(I)V

    .line 2527
    :cond_0
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-interface {p0, v0, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->updateFMMLock(IZ)Z

    .line 2530
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_KNOX_SUPPORT_DUAL_DAR_AT_DO:Z

    if-eqz v0, :cond_1

    .line 2531
    invoke-interface {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->updateDualDARInnerLockscreenRequirement(I)V

    .line 2535
    :cond_1
    sget-object p1, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda81;->INSTANCE:Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda81;

    invoke-interface {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->dispatchCallback(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private isAutomotive()Z
    .locals 1

    .line 4669
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.type.automotive"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private isDeviceProvisionedInSettingsDb()Z
    .locals 2

    .line 4037
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "device_provisioned"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private isEncryptedOrLockdown(I)Z
    .locals 3

    .line 1844
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getStrongAuthForUser(I)I

    move-result p1

    const/4 v0, 0x2

    .line 1846
    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->containsFlag(II)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    const/16 v0, 0x20

    .line 1847
    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->containsFlag(II)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    .line 1848
    :goto_1
    invoke-direct {p0, p1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->containsFlag(II)Z

    move-result p0

    if-nez p0, :cond_2

    if-eqz v0, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    return v1
.end method

.method private isReadyBackgroundAuthentication()Z
    .locals 1

    .line 6274
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_BACKGROUND_AUTHENTICATION:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardShowing:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardOccluded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBouncer:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsScreenSaverRunning:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPhoneState:I

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsFPCanceledByForegroundApp:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSimPinSecure(I)Z
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    .line 4942
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_SIM_PERM_DISABLED:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    if-eq p0, v0, :cond_2

    :cond_0
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_SIM_PERSO_LOCK:Z

    if-eqz v0, :cond_1

    const/16 v0, 0xc

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isTrustDisabled(I)Z
    .locals 0

    .line 1697
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$clearFailedUnlockAttempts$67(I)V
    .locals 1

    .line 5594
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->clearFailedUnlockAttempt(I)V

    .line 5595
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->clearLockoutAttemptDeadline(I)V

    .line 5596
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->clearBiometricAttemptDeadline(I)V

    .line 5598
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->clearFailedFMMUnlockAttempt(I)V

    return-void
.end method

.method private static synthetic lambda$dispatchErrorMessage$31(Ljava/lang/CharSequence;Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    .line 1906
    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onTrustAgentErrorMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static synthetic lambda$dispatchWallpaperTypeChanged$45(IZZLcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    .line 4078
    invoke-interface {p3, p0, p1, p2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorCallback;->onWallpaperTypeChanged(IZZ)V

    return-void
.end method

.method private static synthetic lambda$handleBatteryUpdate$66(Lcom/android/systemui/statusbar/KeyguardBatteryStatus;Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    .line 5379
    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onRefreshBatteryInfo(Lcom/android/systemui/statusbar/KeyguardBatteryStatus;)V

    return-void
.end method

.method private synthetic lambda$handleDreamingStateChanged$36(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    .line 2485
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsDreaming:Z

    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onDreamingStateChanged(Z)V

    return-void
.end method

.method private static synthetic lambda$handleFaceAcquired$22(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 1

    .line 1476
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onBiometricAcquired(Landroid/hardware/biometrics/BiometricSourceType;)V

    return-void
.end method

.method private static synthetic lambda$handleFaceAuthFailed$20(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 1

    .line 1452
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onBiometricAuthFailed(Landroid/hardware/biometrics/BiometricSourceType;)V

    return-void
.end method

.method private static synthetic lambda$handleFaceAuthenticated$23(ZLcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 2

    .line 1503
    sget v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->sCurrentUser:I

    sget-object v1, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {p1, v0, v1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onBiometricAuthenticated(ILandroid/hardware/biometrics/BiometricSourceType;Z)V

    return-void
.end method

.method private static synthetic lambda$handleFaceError$25(ILjava/lang/String;Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 1

    .line 1597
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {p2, p0, p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onBiometricError(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V

    return-void
.end method

.method private static synthetic lambda$handleFaceHelp$24(ILjava/lang/String;Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 1

    .line 1548
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {p2, p0, p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onBiometricHelp(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V

    return-void
.end method

.method private static synthetic lambda$handleFaceUnlockStateChanged$27(ZILcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    .line 1677
    invoke-virtual {p2, p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onFaceUnlockStateChanged(ZI)V

    return-void
.end method

.method private synthetic lambda$handleFingerprintAcquired$10()V
    .locals 2

    .line 1084
    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->getFastBioUnlockController()Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    move-result-object v0

    new-instance v1, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda16;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    const-string p0, "PowerManager#userActivity"

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->submit(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$handleFingerprintAcquired$11(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 1

    .line 1096
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onBiometricAcquired(Landroid/hardware/biometrics/BiometricSourceType;)V

    return-void
.end method

.method private static synthetic lambda$handleFingerprintAcquired$12(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 1

    .line 1104
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onBiometricAcquired(Landroid/hardware/biometrics/BiometricSourceType;)V

    return-void
.end method

.method private synthetic lambda$handleFingerprintAcquired$9()V
    .locals 3

    .line 1085
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/os/PowerManager;->userActivity(JII)V

    return-void
.end method

.method private static synthetic lambda$handleFingerprintAuthFailed$8(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 1

    .line 1047
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onBiometricAuthFailed(Landroid/hardware/biometrics/BiometricSourceType;)V

    return-void
.end method

.method private static synthetic lambda$handleFingerprintError$17(ILjava/lang/String;Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 1

    .line 1366
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {p2, p0, p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onBiometricError(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V

    return-void
.end method

.method private static synthetic lambda$handleFingerprintHelp$15(ILjava/lang/String;Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 1

    .line 1257
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {p2, p0, p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onBiometricHelp(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V

    return-void
.end method

.method private static synthetic lambda$handleFinishedGoingToSleep$35(ILcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    .line 2438
    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onFinishedGoingToSleep(I)V

    return-void
.end method

.method private synthetic lambda$handleKeyguardBouncerChanged$61(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    .line 4585
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBouncer:Z

    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onKeyguardBouncerChanged(Z)V

    return-void
.end method

.method private synthetic lambda$handleLockScreenMode$51(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    .line 4252
    iget p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockScreenMode:I

    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onLockScreenModeChanged(I)V

    return-void
.end method

.method private synthetic lambda$handlePhoneStateChanged$49(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    .line 4218
    iget p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPhoneState:I

    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onPhoneStateChanged(I)V

    return-void
.end method

.method private static synthetic lambda$handleRingerModeChange$50(ILcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    .line 4230
    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onRingerModeChanged(I)V

    return-void
.end method

.method private static synthetic lambda$handleSimStateChange$56(IIILcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    .line 4333
    invoke-virtual {p3, p0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onSimStateChanged(III)V

    return-void
.end method

.method private static synthetic lambda$handleSimStateChange$57(IIILcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    .line 4390
    invoke-virtual {p3, p0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onSimStateChanged(III)V

    return-void
.end method

.method private static synthetic lambda$handleSimStateChange$58(IIILcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    .line 4404
    invoke-virtual {p3, p0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onSimStateChanged(III)V

    return-void
.end method

.method private static synthetic lambda$handleSimSubscriptionInfoChanged$3(Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 2

    .line 774
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->subId:I

    iget v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->slotId:I

    iget p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simState:I

    invoke-virtual {p1, v0, v1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onSimStateChanged(III)V

    return-void
.end method

.method private static synthetic lambda$handleStartedGoingToSleep$34(ILcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    .line 2390
    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onStartedGoingToSleep(I)V

    return-void
.end method

.method private static synthetic lambda$handleTimeFormatUpdate$53(Ljava/lang/String;Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    .line 4280
    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onTimeFormatChanged(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$handleTimeZoneUpdate$52(Ljava/lang/String;Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    .line 4264
    invoke-static {p0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onTimeZoneChanged(Ljava/util/TimeZone;)V

    .line 4266
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onTimeChanged()V

    return-void
.end method

.method private static synthetic lambda$handleUserInfoChanged$38(ILcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    .line 2510
    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onUserInfoChanged(I)V

    return-void
.end method

.method private static synthetic lambda$handleUserSwitchComplete$48(ILcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    .line 4176
    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onUserSwitchComplete(I)V

    return-void
.end method

.method private static synthetic lambda$handleUserSwitching$47(ILcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    .line 4133
    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onUserSwitching(I)V

    return-void
.end method

.method private synthetic lambda$isFaceDisabled$28(Landroid/app/admin/DevicePolicyManager;I)Ljava/lang/Boolean;
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 1714
    invoke-virtual {p1, v0, p2}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result p1

    and-int/lit16 p1, p1, 0x80

    if-nez p1, :cond_1

    .line 1716
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    .line 1714
    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$new$0()V
    .locals 2

    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "Fp cancellation not received, transitioning to STOPPED"

    .line 570
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 571
    iput v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintRunningState:I

    .line 572
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 2

    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "Face cancellation not received, transitioning to STOPPED"

    .line 576
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 577
    iput v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceRunningState:I

    .line 578
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFaceListeningState()V

    return-void
.end method

.method private synthetic lambda$new$32(IIZ)V
    .locals 0

    const/4 p1, 0x0

    .line 2120
    invoke-virtual {p0, p2, p3, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFingerprintAuthenticated(IZI)V

    return-void
.end method

.method private synthetic lambda$new$33(IIZ)V
    .locals 0

    .line 2191
    invoke-virtual {p0, p2, p3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFaceAuthenticated(IZ)V

    return-void
.end method

.method private synthetic lambda$new$39()V
    .locals 5

    .line 2779
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    .line 2780
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    const-class v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 2781
    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->getServiceStateForSubscriber(I)Landroid/telephony/ServiceState;

    move-result-object v1

    .line 2782
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x14a

    const/4 v4, 0x0

    .line 2783
    invoke-virtual {v2, v3, v0, v4, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2782
    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2786
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/settingslib/fuelgauge/BatteryStatus;

    if-nez v0, :cond_0

    .line 2787
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2791
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/settingslib/fuelgauge/BatteryStatus;

    if-nez v1, :cond_0

    .line 2792
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$40()V
    .locals 1

    .line 2822
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTrustManager:Landroid/app/trust/TrustManager;

    invoke-virtual {v0, p0}, Landroid/app/trust/TrustManager;->registerTrustListener(Landroid/app/trust/TrustManager$TrustListener;)V

    .line 2823
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setStrongAuthTracker(Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;)V

    return-void
.end method

.method private synthetic lambda$new$41(Landroid/content/Context;)V
    .locals 1

    .line 2844
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceManager:Landroid/hardware/face/FaceManager;

    if-eqz v0, :cond_1

    .line 2845
    :cond_0
    const-class v0, Landroid/hardware/biometrics/BiometricManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/biometrics/BiometricManager;

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

    .line 2846
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBiometricEnabledCallback:Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback;

    invoke-virtual {p1, v0}, Landroid/hardware/biometrics/BiometricManager;->registerEnabledOnKeyguardCallback(Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback;)V

    .line 2849
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateBiometricListeningState()V

    .line 2850
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz p1, :cond_2

    .line 2851
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintLockoutResetCallback:Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;

    invoke-virtual {p1, v0}, Landroid/hardware/fingerprint/FingerprintManager;->addLockoutResetCallback(Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;)V

    .line 2853
    :cond_2
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceManager:Landroid/hardware/face/FaceManager;

    if-eqz p1, :cond_3

    .line 2854
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceLockoutResetCallback:Landroid/hardware/face/FaceManager$LockoutResetCallback;

    invoke-virtual {p1, v0}, Landroid/hardware/face/FaceManager;->addLockoutResetCallback(Landroid/hardware/face/FaceManager$LockoutResetCallback;)V

    .line 2858
    :cond_3
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/cocktailbar/SemCocktailBarManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSemCocktailBarManager:Lcom/samsung/android/cocktailbar/SemCocktailBarManager;

    if-eqz p1, :cond_4

    .line 2860
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCocktailBarStateChangedListener:Lcom/samsung/android/cocktailbar/SemCocktailBarManager$CocktailBarStateChangedListener;

    invoke-virtual {p1, v0}, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->registerStateListener(Lcom/samsung/android/cocktailbar/SemCocktailBarManager$CocktailBarStateChangedListener;)V

    .line 2864
    :cond_4
    invoke-static {}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->getInstance()Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    move-result-object p1

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTaskStackListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    invoke-virtual {p1, p0}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->registerTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    return-void
.end method

.method private synthetic lambda$new$42(Landroid/content/Context;)V
    .locals 10

    .line 2911
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    .line 2912
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTelephonyListenerManager:Lcom/android/systemui/telephony/TelephonyListenerManager;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPhoneStateListener:Landroid/telephony/TelephonyCallback$ActiveDataSubscriptionIdListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/telephony/TelephonyListenerManager;->addActiveDataSubscriptionIdListener(Landroid/telephony/TelephonyCallback$ActiveDataSubscriptionIdListener;)V

    const/4 v0, 0x0

    move v1, v0

    .line 2914
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2915
    invoke-static {p1, v1}, Lcom/android/systemui/util/DeviceState;->getSimState(Landroid/content/Context;I)I

    move-result v2

    .line 2916
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v3, v1}, Landroid/telephony/SubscriptionManager;->getSubscriptionIds(I)[I

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2918
    array-length v4, v3

    move v5, v0

    :goto_1
    if-ge v5, v4, :cond_0

    aget v6, v3, v5

    .line 2919
    iget-object v7, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x130

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v6, v1, v9}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 2920
    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private synthetic lambda$new$68(Lcom/samsung/android/cocktailbar/SemCocktailBarStateInfo;)V
    .locals 1

    .line 5694
    iget p1, p1, Lcom/samsung/android/cocktailbar/SemCocktailBarStateInfo;->windowType:I

    iput p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCocktailBarWindowType:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 5697
    :cond_0
    sget-boolean p1, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintOptionEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5698
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 5701
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFaceListeningState()V

    :cond_2
    return-void
.end method

.method private synthetic lambda$notifyFaceRunningStateChanged$26(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 1

    .line 1664
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDetectionRunning()Z

    move-result p0

    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {p1, p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onBiometricRunningStateChanged(ZLandroid/hardware/biometrics/BiometricSourceType;)V

    return-void
.end method

.method private synthetic lambda$notifyFingerprintRunningStateChanged$18(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 1

    .line 1409
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDetectionRunning()Z

    move-result p0

    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {p1, p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onBiometricRunningStateChanged(ZLandroid/hardware/biometrics/BiometricSourceType;)V

    return-void
.end method

.method private static synthetic lambda$notifyStrongAuthStateChanged$30(ILcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    .line 1878
    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onStrongAuthStateChanged(I)V

    return-void
.end method

.method private static synthetic lambda$onFaceAuthenticated$19(IZLcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 1

    .line 1431
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {p2, p0, v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onBiometricAuthenticated(ILandroid/hardware/biometrics/BiometricSourceType;Z)V

    return-void
.end method

.method private synthetic lambda$onFaceAuthenticationSucceeded$72()V
    .locals 2

    .line 6000
    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->getFastBioUnlockController()Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onFaceAuthenticationSucceeded end"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->logLapTime(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$onFingerprintAuthenticated$6(I)V
    .locals 1

    .line 985
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTrustManager:Landroid/app/trust/TrustManager;

    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {p0, p1, v0}, Landroid/app/trust/TrustManager;->unlockedByBiometricForUser(ILandroid/hardware/biometrics/BiometricSourceType;)V

    return-void
.end method

.method private static synthetic lambda$onFingerprintAuthenticated$7(IZLcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 1

    .line 996
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {p2, p0, v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onBiometricAuthenticated(ILandroid/hardware/biometrics/BiometricSourceType;Z)V

    return-void
.end method

.method private synthetic lambda$onFpAuthenticationSucceeded$71()V
    .locals 2

    .line 5887
    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->getFastBioUnlockController()Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onFpAuthenticationSucceeded end"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->logLapTime(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$onKeyguardVisibilityChanged$59(ZLcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    .line 4461
    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onKeyguardVisibilityChangedRaw(Z)V

    return-void
.end method

.method private static synthetic lambda$onKeyguardVisibilityChanged$60(ZLcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    .line 4487
    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onKeyguardVisibilityChangedRaw(Z)V

    return-void
.end method

.method private static synthetic lambda$onTrustChanged$2(ZZZIILcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    if-nez p0, :cond_0

    if-eq p1, p2, :cond_1

    .line 683
    :cond_0
    invoke-virtual {p5, p3}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onTrustChanged(I)V

    :cond_1
    if-eqz p2, :cond_2

    if-eqz p4, :cond_2

    .line 687
    invoke-virtual {p5, p4, p3}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onTrustGrantedWithFlags(II)V

    :cond_2
    return-void
.end method

.method private static synthetic lambda$onTrustManagedChanged$4(ILcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    .line 879
    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onTrustManagedChanged(I)V

    return-void
.end method

.method private static synthetic lambda$removeCallback$62(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;Ljava/lang/ref/WeakReference;)Z
    .locals 0

    .line 4683
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$requestSessionClose$69()V
    .locals 2

    .line 5726
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceOptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5727
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDetectionRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5728
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopListeningForFace()V

    :cond_0
    const/4 v0, 0x0

    .line 5730
    invoke-interface {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->setFaceAuthenticated(Z)V

    .line 5731
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSemBioFaceManager(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v0, "KeyguardFace"

    const-string/jumbo v1, "requestSessionClose()"

    .line 5733
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5734
    invoke-virtual {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->requestSessionClose()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$requestSessionOpen$70()V
    .locals 2

    .line 5743
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    .line 5744
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEnabledWof()Z

    move-result v0

    const-string/jumbo v1, "requestSessionOpen()"

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    if-nez v0, :cond_0

    .line 5746
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintOptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5747
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_0

    const-string v0, "KeyguardFingerPrint"

    .line 5748
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5749
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->requestSessionOpen()Z

    .line 5753
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockCompleted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5754
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    if-nez v0, :cond_1

    .line 5755
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceOptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5756
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSemBioFaceManager(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v0, "KeyguardFace"

    .line 5758
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5759
    invoke-virtual {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->requestSessionOpen()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$sendKeyguardStateUpdated$65(ZZZ)V
    .locals 2

    .line 5140
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.keyguard.KEYGUARD_STATE_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "showing"

    .line 5141
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "occluded"

    .line 5142
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "bouncerShowing"

    .line 5143
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5144
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const-string/jumbo p3, "timeStamp"

    invoke-virtual {v0, p3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 5145
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "broadcast intent= "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "KeyguardUpdateMonitor"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5146
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private static synthetic lambda$sendSALog$77(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 6324
    invoke-static {p0, p1, p2}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$setBackDropViewShowing$44(ZZLcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    .line 4072
    invoke-interface {p2, p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorCallback;->onBackDropViewShowing(ZZ)V

    return-void
.end method

.method private static synthetic lambda$setFaceWidgetFullScreenMode$63(ZLcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    .line 5019
    invoke-interface {p1, p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorCallback;->onFaceWidgetFullscreenModeChanged(Z)V

    return-void
.end method

.method private synthetic lambda$setFaceWidgetFullScreenMode$64(Z)V
    .locals 1

    .line 5019
    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda67;

    invoke-direct {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda67;-><init>(Z)V

    invoke-interface {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->dispatchCallback(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic lambda$setFocusForInDisplayFingerprint$75()V
    .locals 0

    .line 6169
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    return-void
.end method

.method private static synthetic lambda$setHasLockscreenWallpaper$46(ZLcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    .line 4091
    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onHasLockscreenWallpaperChanged(Z)V

    return-void
.end method

.method private static synthetic lambda$setKeyguardOccluded$5(ZLcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    .line 919
    invoke-interface {p1, p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorCallback;->onOccluded(Z)V

    return-void
.end method

.method private synthetic lambda$setShowingKeepScreenOnPopup$76(Z)V
    .locals 2

    .line 6203
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsShowingKeepScreenOnPopup:Z

    if-eq v0, p1, :cond_0

    .line 6204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsShowingKeepScreenOnPopup = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsShowingKeepScreenOnPopup:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " -> isShowingKeepScreenOnPopup = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUpdateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6206
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsShowingKeepScreenOnPopup:Z

    .line 6207
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$showFingerprintBlockPopup$73(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 6056
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private synthetic lambda$showFingerprintBlockPopup$74(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 6062
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "showFingerprintBlockPopup onCheckedChanged :  "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "KeyguardUpdateMonitor"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6063
    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->getSettingsHelper()Lcom/android/systemui/util/SettingsHelper;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/systemui/util/SettingsHelper;->setFingerprintSensorPopupDoNotShowAgain(Z)V

    return-void
.end method

.method private static synthetic lambda$updateSecondaryLockscreenRequirement$29(ILcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    .line 1806
    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onSecondaryLockscreenRequirementChanged(I)V

    return-void
.end method

.method private synthetic lambda$updateTelephonyCapable$55(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    .line 4310
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTelephonyCapable:Z

    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onTelephonyCapable(Z)V

    return-void
.end method

.method private notifyFaceRunningStateChanged()V
    .locals 1

    .line 1662
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 1664
    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda52;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda52;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    invoke-interface {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->dispatchCallback(Ljava/util/function/Consumer;)V

    .line 1669
    const-class v0, Lcom/android/systemui/util/DesktopManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/DesktopManager;

    iget p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceRunningState:I

    invoke-virtual {v0, p0}, Lcom/android/systemui/util/DesktopManager;->notifyFaceAuthenticationRunningStateChange(I)V

    return-void
.end method

.method private notifyFingerprintRunningStateChanged()V
    .locals 1

    .line 1407
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 1409
    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda51;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda51;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    invoke-interface {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->dispatchCallback(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private notifyStrongAuthStateChanged(I)V
    .locals 3

    .line 1871
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 1873
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUserInLockdown(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1874
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setKeyguardGoingAway(Z)V

    .line 1878
    :cond_0
    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda36;

    invoke-direct {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda36;-><init>(I)V

    invoke-interface {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->dispatchCallback(Ljava/util/function/Consumer;)V

    .line 1882
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getStrongAuthForUser(I)I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_1

    .line 1883
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateBiometricListeningState()V

    .line 1888
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFaceStrongBiometric(I)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;->isUnlockingWithBiometricAllowed(Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1889
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->clearBiometricRecognized()V

    .line 1890
    invoke-interface {p0, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->setFaceAuthenticated(Z)V

    .line 1894
    :cond_2
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintOptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1895
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFingerprintStrongBiometric(I)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;->isUnlockingWithBiometricAllowed(Z)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFodStrictMode(Z)V

    :cond_3
    return-void
.end method

.method private refreshSimState(II)Z
    .locals 4

    .line 4905
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    .line 4906
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4908
    invoke-virtual {v0, p2}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 4911
    :goto_0
    invoke-interface {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->checkSimState(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinPassed(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4912
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "refreshSimState isSimPinPassed slotId"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KeyguardUpdateMonitor"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 4917
    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    const/4 v3, 0x1

    if-nez v2, :cond_2

    .line 4920
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4921
    new-instance v1, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    invoke-direct {v1, v0, p2, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;-><init>(III)V

    .line 4922
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v3

    goto :goto_1

    .line 4928
    :cond_2
    iget p0, v2, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simState:I

    if-eq p0, v0, :cond_3

    move v1, v3

    .line 4929
    :cond_3
    iput v0, v2, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simState:I

    .line 4931
    iput p1, v2, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->subId:I

    .line 4932
    iput p2, v2, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->slotId:I

    :cond_4
    :goto_1
    return v1
.end method

.method private registerRingerTracker()V
    .locals 1

    .line 2573
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mRingerModeTracker:Lcom/android/systemui/util/RingerModeTracker;

    invoke-interface {v0}, Lcom/android/systemui/util/RingerModeTracker;->getRingerMode()Landroidx/lifecycle/LiveData;

    move-result-object v0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mRingerModeObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private reportSuccessfulBiometricUnlock(ZI)V
    .locals 2

    .line 1022
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/keyguard/KeyguardUpdateMonitor$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor$8;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;ZI)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private requestSessionOpen()V
    .locals 2

    .line 5742
    const-class v0, Lcom/android/systemui/UiOffloadThread;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/UiOffloadThread;

    new-instance v1, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda18;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/UiOffloadThread;->execute(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private requireStrongAuthIfAllLockedOut()V
    .locals 4

    .line 1729
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceLockedOutPermanent:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 1730
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->shouldListenForFace()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getIsFaceAuthenticated()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 1731
    :goto_0
    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintLockedOutPermanent:Z

    if-nez v3, :cond_3

    .line 1732
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUdfpsEnrolled()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->shouldListenForFingerprint(Z)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "All biometrics locked out - requiring strong auth"

    .line 1735
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1736
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/16 v0, 0x8

    .line 1737
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    .line 1736
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->requireStrongAuth(II)V

    :cond_4
    return-void
.end method

.method private resolveNeedsSlowUnlockTransition()Z
    .locals 3

    .line 4525
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUserUnlocked(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 4528
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 4529
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 4530
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    .line 4529
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 4534
    invoke-virtual {p0}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 4540
    :cond_1
    sget-object v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->FALLBACK_HOME_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const-string p0, "KeyguardUpdateMonitor"

    const-string/jumbo v0, "resolveNeedsSlowUnlockTransition: returning false since activity could not be resolved."

    .line 4535
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private static runSystemUserOnly(Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    .line 5672
    invoke-static {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->runSystemUserOnly(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private static runSystemUserOnly(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 2

    if-eqz p0, :cond_1

    .line 5677
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 5679
    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 5681
    :cond_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_1
    :goto_0
    return-void
.end method

.method private sendFaceSALog(Ljava/lang/String;)V
    .locals 2

    .line 6332
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBouncer:Z

    if-eqz v0, :cond_0

    const-string v0, "102"

    const-string v1, "1095"

    goto :goto_0

    :cond_0
    const-string v0, "101"

    const-string v1, "1094"

    .line 6336
    :goto_0
    invoke-direct {p0, v0, v1, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->sendSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private sendFingerprintSALog(Ljava/lang/String;)V
    .locals 2

    .line 6343
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    if-nez v0, :cond_0

    const-string v0, "301"

    const-string v1, "1098"

    goto :goto_0

    .line 6346
    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBouncer:Z

    if-eqz v0, :cond_1

    const-string v0, "102"

    const-string v1, "1097"

    goto :goto_0

    :cond_1
    const-string v0, "101"

    const-string v1, "1096"

    .line 6350
    :goto_0
    invoke-direct {p0, v0, v1, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->sendSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private sendSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 6323
    const-class p0, Lcom/android/systemui/UiOffloadThread;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/UiOffloadThread;

    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda29;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda29;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/UiOffloadThread;->execute(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public static declared-synchronized setCurrentUser(I)V
    .locals 1

    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    monitor-enter v0

    .line 656
    :try_start_0
    sput p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->sCurrentUser:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 657
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private setFaceRunningState(I)V
    .locals 3

    .line 1649
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceRunningState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-ne p1, v2, :cond_1

    move v1, v2

    .line 1651
    :cond_1
    iput p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceRunningState:I

    .line 1652
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "faceRunningState: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceRunningState:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "KeyguardFace"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v0, v1, :cond_2

    .line 1657
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->notifyFaceRunningStateChanged()V

    :cond_2
    return-void
.end method

.method private setFingerprintRunningState(I)V
    .locals 3

    .line 1394
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintRunningState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-ne p1, v2, :cond_1

    move v1, v2

    .line 1396
    :cond_1
    iput p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintRunningState:I

    .line 1397
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fingerprintRunningState: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintRunningState:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "KeyguardFingerPrint"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v0, v1, :cond_2

    .line 1402
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->notifyFingerprintRunningStateChanged()V

    :cond_2
    return-void
.end method

.method private setFodStrictMode(Z)V
    .locals 4

    .line 6176
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsFODStrictMode:Z

    if-eq v0, p1, :cond_2

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 6178
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFingerPrintBadQualityCounts()I

    move-result v1

    const/16 v2, 0x1e

    if-ge v1, v2, :cond_1

    .line 6179
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->userNeedsStrongAuth()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v0

    :goto_1
    if-eqz v1, :cond_2

    .line 6182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setFodStrictMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " strongAuth : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    .line 6183
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getStrongAuthForUser(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " callStack : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xf

    .line 6184
    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KeyguardFingerPrint"

    .line 6182
    invoke-static {v0, v2, v1}, Lcom/android/systemui/keyguard/KeyguardLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 6186
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsFODStrictMode:Z

    .line 6187
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz p0, :cond_2

    .line 6188
    invoke-virtual {p0, p1}, Landroid/hardware/fingerprint/FingerprintManager;->semSetFodStrictMode(Z)V

    :cond_2
    return-void
.end method

.method private showFingerprintBlockPopup()V
    .locals 9

    .line 6052
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 6053
    new-instance v7, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-direct {v7, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    .line 6054
    sget v1, Lcom/android/systemui/R$string;->kg_fingerprint_bad_quality_popup_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 6055
    sget v1, Lcom/android/systemui/R$string;->kg_fingerprint_bad_quality_popup_message:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 6056
    sget v1, Lcom/android/systemui/R$string;->kg_keycode_ok:I

    sget-object v2, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda0;

    invoke-virtual {v7, v1, v2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 6058
    new-instance v2, Landroid/widget/CheckBox;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/systemui/R$style;->Theme_SystemUI_Dialog:I

    invoke-direct {v1, v3, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v2, v1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 6059
    sget v1, Lcom/android/systemui/R$string;->kg_fingerprint_bad_quality_popup_checkbox:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 6060
    sget v1, Lcom/android/systemui/R$dimen;->qs_checkbox_text_side_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v8, 0x0

    invoke-virtual {v2, v1, v8, v8, v8}, Landroid/widget/CheckBox;->setPadding(IIII)V

    .line 6061
    new-instance v1, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda3;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 6065
    sget p0, Lcom/android/systemui/R$dimen;->checkbox_popup_text_margin:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 6066
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    .line 6065
    invoke-virtual/range {v1 .. v6}, Landroid/app/AlertDialog;->setView(Landroid/view/View;IIII)V

    .line 6067
    invoke-virtual {v7, v8}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 6068
    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private startListeningForFace()V
    .locals 10

    .line 3876
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceRunningState:I

    const-string v1, "KeyguardFace"

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSemBioFaceManager(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "startListeningForFace()"

    .line 3882
    invoke-static {v1, v0}, Lcom/android/systemui/keyguard/KeyguardLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 3884
    invoke-interface {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->setFaceAuthenticated(Z)V

    .line 3885
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSemFaceCancelSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_1

    .line 3887
    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    const/4 v0, 0x0

    .line 3888
    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSemFaceCancelSignal:Landroid/os/CancellationSignal;

    .line 3890
    :cond_1
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSemFaceCancelSignal:Landroid/os/CancellationSignal;

    .line 3891
    invoke-direct {p0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFaceRunningState(I)V

    .line 3892
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSemBioFaceManager(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSemFaceCancelSignal:Landroid/os/CancellationSignal;

    const/4 v4, 0x0

    new-instance v5, Lcom/android/keyguard/SecFaceAuthCallback;

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->getFaceMsgDispatcher()Ljava/util/function/Consumer;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/android/keyguard/SecFaceAuthCallback;-><init>(Ljava/util/function/Consumer;)V

    iget-object v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mAuthHandler:Landroid/os/Handler;

    sget v7, Lcom/android/keyguard/KeyguardUpdateMonitor;->sCurrentUser:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v1 .. v9}, Lcom/samsung/android/bio/face/SemBioFaceManager;->authenticate(Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;Landroid/view/View;)V

    return-void

    .line 3877
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t start startListeningForFace(), mFaceRunningState = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceRunningState:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private startListeningForFingerprint()V
    .locals 11

    .line 3790
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v6

    .line 3791
    invoke-virtual {p0, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFingerprintPossible(I)Z

    move-result v0

    .line 3792
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintCancelSignal:Landroid/os/CancellationSignal;

    const-string v2, "KeyguardUpdateMonitor"

    if-eqz v1, :cond_0

    .line 3793
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cancellation signal is not null, high chance of bug in fp auth lifecycle management. FP state: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintRunningState:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", unlockPossible: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3798
    :cond_0
    iget v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintRunningState:I

    const/4 v3, 0x2

    const/4 v4, 0x3

    if-ne v1, v3, :cond_1

    .line 3799
    invoke-direct {p0, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFingerprintRunningState(I)V

    return-void

    :cond_1
    if-ne v1, v4, :cond_2

    return-void

    :cond_2
    const-string/jumbo v1, "startListeningForFingerprint()"

    .line 3806
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "KeyguardFingerPrint"

    if-eqz v0, :cond_7

    .line 3810
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintAuthenticationSequence:I

    const/4 v8, 0x1

    add-int/2addr v0, v8

    iput v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintAuthenticationSequence:I

    const-string/jumbo v0, "startListeningForFingerprint"

    .line 3812
    invoke-static {v8, v7, v0}, Lcom/android/systemui/keyguard/KeyguardLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 3815
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startListeningForFingerprint() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintAuthenticationSequence:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", callers: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x5

    .line 3817
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3815
    invoke-static {v7, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3819
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintCancelSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_3

    .line 3821
    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    const/4 v0, 0x0

    .line 3822
    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintCancelSignal:Landroid/os/CancellationSignal;

    .line 3824
    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.fingerprint"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3825
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintCancelSignal:Landroid/os/CancellationSignal;

    .line 3827
    new-instance v0, Landroid/hardware/fingerprint/FingerprintManager;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    const-string v2, "fingerprint"

    .line 3828
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintService;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/hardware/fingerprint/FingerprintManager;-><init>(Landroid/content/Context;Landroid/hardware/fingerprint/IFingerprintService;)V

    .line 3829
    invoke-direct {p0, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isEncryptedOrLockdown(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3830
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->is2StepVerification()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    .line 3831
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintCancelSignal:Landroid/os/CancellationSignal;

    const/16 v3, 0x1000

    new-instance v4, Lcom/android/keyguard/SecFpAuthCallback;

    iget v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintAuthenticationSequence:I

    .line 3833
    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->getFpMsgDispatcher()Ljava/util/function/Consumer;

    move-result-object v9

    new-instance v10, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda19;

    invoke-direct {v10, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda19;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    invoke-direct {v4, v5, v9, v10}, Lcom/android/keyguard/SecFpAuthCallback;-><init>(ILjava/util/function/Consumer;Ljava/lang/Runnable;)V

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mAuthHandler:Landroid/os/Handler;

    .line 3831
    invoke-virtual/range {v0 .. v6}, Landroid/hardware/fingerprint/FingerprintManager;->authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;I)V

    goto :goto_0

    .line 3835
    :cond_4
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintCancelSignal:Landroid/os/CancellationSignal;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintDetectionCallback:Landroid/hardware/fingerprint/FingerprintManager$FingerprintDetectionCallback;

    invoke-virtual {v0, v1, v2, v6}, Landroid/hardware/fingerprint/FingerprintManager;->detectFingerprint(Landroid/os/CancellationSignal;Landroid/hardware/fingerprint/FingerprintManager$FingerprintDetectionCallback;I)V

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    .line 3839
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintCancelSignal:Landroid/os/CancellationSignal;

    const/4 v3, 0x0

    new-instance v4, Lcom/android/keyguard/SecFpAuthCallback;

    iget v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintAuthenticationSequence:I

    .line 3841
    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->getFpMsgDispatcher()Ljava/util/function/Consumer;

    move-result-object v9

    new-instance v10, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda19;

    invoke-direct {v10, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda19;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    invoke-direct {v4, v5, v9, v10}, Lcom/android/keyguard/SecFpAuthCallback;-><init>(ILjava/util/function/Consumer;Ljava/lang/Runnable;)V

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mAuthHandler:Landroid/os/Handler;

    .line 3839
    invoke-virtual/range {v0 .. v6}, Landroid/hardware/fingerprint/FingerprintManager;->authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;I)V

    .line 3847
    :goto_0
    invoke-direct {p0, v8}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFingerprintRunningState(I)V

    .line 3848
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsSkipFPResponse:Z

    if-eqz v0, :cond_8

    .line 3849
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTimeoutSkipFPResponse:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3850
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTimeoutSkipFPResponse:Ljava/lang/Runnable;

    const-wide/16 v1, 0x2bc

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string p0, "FP started by the power key. If it receives a response within 700ms, it will skip."

    .line 3851
    invoke-static {v7, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    const-string/jumbo p0, "startListeningForFingerprint() return - fingerprint service is not supported"

    .line 3844
    invoke-static {v7, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7
    const-string p0, "Can\'t start startListeningForFingerprint()"

    .line 3855
    invoke-static {v7, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_1
    return-void
.end method

.method private stopListeningForFace()V
    .locals 3

    .line 4004
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceRunningState:I

    const-string v1, "KeyguardFace"

    if-nez v0, :cond_1

    .line 4005
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBiometricsFace:Z

    if-eqz v0, :cond_0

    .line 4006
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t stop stopListeningForFace(), mFaceRunningState = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceRunningState:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    const-string/jumbo v0, "stopListeningForFace()"

    .line 4010
    invoke-static {v1, v0}, Lcom/android/systemui/keyguard/KeyguardLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4012
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSemFaceCancelSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_2

    .line 4014
    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    const/4 v0, 0x0

    .line 4015
    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSemFaceCancelSignal:Landroid/os/CancellationSignal;

    :cond_2
    const/4 v0, 0x0

    .line 4017
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsFaceReady:Z

    .line 4018
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFaceRunningState(I)V

    return-void
.end method

.method private updateActiveRemoteLockIndex()V
    .locals 3

    const/4 v0, -0x1

    .line 5331
    iput v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mActiveRemoteLockIndex:I

    const/4 v1, 0x0

    .line 5332
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mRemoteLockInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 5333
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mRemoteLockInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/RemoteLockInfo;

    iget v2, v2, Lcom/android/internal/widget/RemoteLockInfo;->lockType:I

    if-ge v0, v2, :cond_0

    .line 5334
    iput v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mActiveRemoteLockIndex:I

    .line 5335
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mRemoteLockInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/RemoteLockInfo;

    iget v0, v0, Lcom/android/internal/widget/RemoteLockInfo;->lockType:I

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateAirplaneModeState()V
    .locals 2

    .line 3019
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/WirelessUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x149

    .line 3020
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3023
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private updateLockScreenMode(Z)V
    .locals 1

    .line 2963
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockScreenMode:I

    if-eq p1, v0, :cond_0

    .line 2964
    iput p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockScreenMode:I

    .line 2965
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 p1, 0x157

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method private updateLogoutEnabled()V
    .locals 2

    .line 5076
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 5077
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->isLogoutEnabled()Z

    move-result v0

    .line 5078
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLogoutEnabled:Z

    if-eq v1, v0, :cond_0

    .line 5079
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLogoutEnabled:Z

    .line 5082
    sget-object v0, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda75;->INSTANCE:Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda75;

    invoke-interface {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->dispatchCallback(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method private updateOfflineState()V
    .locals 5

    .line 6300
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mServiceStatesBySlotId:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 6301
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ServiceState;

    if-eqz v1, :cond_0

    .line 6303
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v3

    if-eq v3, v2, :cond_1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 6304
    :cond_1
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v3

    if-ne v3, v2, :cond_0

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v2, 0x0

    .line 6310
    :cond_3
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsOutOfService:Z

    if-eq v0, v2, :cond_4

    .line 6311
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsOutOfService:Z

    .line 6312
    sget-object v0, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda88;->INSTANCE:Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda88;

    invoke-interface {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->dispatchCallback(Ljava/util/function/Consumer;)V

    :cond_4
    return-void
.end method

.method private updateSecondaryLockscreenRequirement(I)V
    .locals 5

    .line 1777
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSecondaryLockscreenRequirement:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 1778
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->isSecondaryLockscreenEnabled(Landroid/os/UserHandle;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 1782
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 1784
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 1783
    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerOrDeviceOwnerSupervisionComponent(Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1786
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No Profile Owner or Device Owner supervision app found for User "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUpdateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1789
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.app.action.BIND_SECONDARY_LOCKSCREEN_SERVICE"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1791
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1792
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1793
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v1, :cond_2

    .line 1794
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 1795
    invoke-virtual {v0}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 1796
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSecondaryLockscreenRequirement:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    .line 1801
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSecondaryLockscreenRequirement:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v3

    :goto_1
    if-eqz v2, :cond_3

    .line 1806
    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda35;

    invoke-direct {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda35;-><init>(I)V

    invoke-interface {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->dispatchCallback(Ljava/util/function/Consumer;)V

    :cond_3
    return-void
.end method

.method private updateUdfpsEnrolled(I)V
    .locals 1

    .line 2970
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mAuthController:Lcom/android/systemui/biometrics/AuthController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/biometrics/AuthController;->isUdfpsEnrolled(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsUdfpsEnrolled:Z

    return-void
.end method

.method private watchForDeviceProvisioning()V
    .locals 4

    .line 4042
    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor$20;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor$20;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisionedObserver:Landroid/database/ContentObserver;

    .line 4054
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    .line 4055
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisionedObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    .line 4054
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 4060
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceProvisionedInSettingsDb()Z

    move-result v0

    .line 4061
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    if-eq v0, v1, :cond_0

    .line 4062
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    if-eqz v0, :cond_0

    .line 4064
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x134

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public addFailedFMMUnlockAttempt(I)I
    .locals 0

    .line 5342
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-eqz p0, :cond_0

    .line 5343
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->addFailedFMMUnlockAttempt(I)J

    move-result-wide p0

    long-to-int p0, p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public awakenFromDream()V
    .locals 1

    .line 964
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsDreaming:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDreamManager:Landroid/service/dreams/IDreamManager;

    if-eqz p0, :cond_0

    .line 966
    :try_start_0
    invoke-interface {p0}, Landroid/service/dreams/IDreamManager;->awaken()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "KeyguardUpdateMonitor"

    const-string v0, "Unable to awaken from dream"

    .line 968
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public cancelFaceAuth()V
    .locals 0

    .line 3151
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopListeningForFace()V

    return-void
.end method

.method public checkWaitingFocus(Z)V
    .locals 2

    .line 6158
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardShowing:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 6159
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mWaitingFocusRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public clearBiometricRecognized()V
    .locals 1

    const/16 v0, -0x2710

    .line 4822
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->clearBiometricRecognized(I)V

    return-void
.end method

.method public clearBiometricRecognizedWhenKeyguardDone(I)V
    .locals 0

    .line 4826
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->clearBiometricRecognized(I)V

    return-void
.end method

.method public clearFailedUnlockAttempts()V
    .locals 3

    .line 5583
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 5584
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSecure(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5586
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBiometricFailedAttempts:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->delete(I)V

    .line 5587
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerPrintFailedAttempts:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->delete(I)V

    const/4 v1, 0x0

    .line 5588
    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFodStrictMode(Z)V

    .line 5589
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerPrintBadQualityCounts:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->delete(I)V

    const/4 v1, 0x0

    .line 5590
    iput-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockoutReason:Ljava/lang/String;

    .line 5593
    const-class v1, Lcom/android/systemui/UiOffloadThread;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/UiOffloadThread;

    new-instance v2, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda21;

    invoke-direct {v2, p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda21;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/UiOffloadThread;->execute(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_0
    return-void
.end method

.method public clearFingerBadQualityCounts()V
    .locals 1

    .line 6073
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerPrintBadQualityCounts:Landroid/util/SparseIntArray;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/util/SparseIntArray;->delete(I)V

    return-void
.end method

.method public dispatchDreamingStarted()V
    .locals 3

    .line 4987
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x14d

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public dispatchDreamingStopped()V
    .locals 2

    .line 4991
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x14d

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public dispatchFinishedGoingToSleep(I)V
    .locals 2

    .line 4966
    monitor-enter p0

    const/4 v0, 0x0

    .line 4967
    :try_start_0
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    .line 4968
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4969
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x140

    invoke-virtual {p0, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_0
    move-exception p1

    .line 4968
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public dispatchKeyguardGoingAway(Z)V
    .locals 1

    .line 5000
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/16 v0, 0x156

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public dispatchNotiStarState(Z)V
    .locals 2

    .line 803
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x404

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 804
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 806
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public dispatchScreenTurnedOff()V
    .locals 1

    .line 4980
    monitor-enter p0

    const/4 v0, 0x0

    .line 4981
    :try_start_0
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mScreenOn:Z

    .line 4982
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4983
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x14c

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :catchall_0
    move-exception v0

    .line 4982
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public dispatchScreenTurnedOn()V
    .locals 1

    .line 4973
    monitor-enter p0

    const/4 v0, 0x1

    .line 4974
    :try_start_0
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mScreenOn:Z

    .line 4975
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4976
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x14b

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :catchall_0
    move-exception v0

    .line 4975
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public dispatchStartedGoingToSleep(I)V
    .locals 2

    .line 4962
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x141

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public dispatchStartedWakingUp()V
    .locals 1

    .line 4955
    monitor-enter p0

    const/4 v0, 0x1

    .line 4956
    :try_start_0
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    .line 4957
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4958
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x13f

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :catchall_0
    move-exception v0

    .line 4957
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public dispatchStatusBarState(Z)V
    .locals 2

    .line 5769
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x456

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5770
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5772
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public dispatchWallpaperTypeChanged(IZZ)V
    .locals 1

    .line 4077
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 4078
    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda48;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda48;-><init>(IZZ)V

    invoke-interface {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->dispatchCallback(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "KeyguardUpdateMonitor state:"

    .line 5152
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  SIM States:"

    .line 5153
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5154
    iget-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "    "

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    .line 5155
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v2, "  Subs:"

    .line 5157
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5158
    iget-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionInfo:Ljava/util/List;

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    .line 5159
    :goto_1
    iget-object v5, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionInfo:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 5160
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionInfo:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 5163
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Current active data subId="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mActiveMobileDataSubscription:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  Service states:"

    .line 5164
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5165
    iget-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mServiceStates:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v6, "="

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 5166
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mServiceStates:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 5169
    :cond_2
    sget-boolean v2, Lcom/android/systemui/LsRune;->SECURITY_DISABLE_EMERGENCY_CALL_WHEN_OFFLINE:Z

    if-eqz v2, :cond_3

    const-string v2, "  Service states by slot id:"

    .line 5170
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5171
    iget-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mServiceStatesBySlotId:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 5172
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 5177
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Current user id="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5178
    iget-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 5179
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    .line 5180
    iget-object v5, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    const-string v6, "    trustManaged="

    const-string v7, "    strongAuthFlags="

    const-string v8, "    possible="

    const-string v9, "    disabled(DPM)="

    const-string v10, "    authSinceBoot="

    const-string v11, "    auth\'d="

    const-string v12, "    allowed="

    const-string v13, ")"

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 5181
    iget-object v5, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    invoke-virtual {v5, v4}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getStrongAuthForUser(I)I

    move-result v5

    .line 5182
    iget-object v15, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFingerprintAuthenticated:Landroid/util/SparseArray;

    invoke-virtual {v15, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;

    .line 5183
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Fingerprint state (user="

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5184
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v15, :cond_4

    .line 5186
    invoke-static {v15}, Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;->access$900(Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;)Z

    move-result v14

    invoke-virtual {v0, v14}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed(Z)Z

    move-result v14

    if-eqz v14, :cond_4

    const/4 v14, 0x1

    goto :goto_5

    :cond_4
    const/4 v14, 0x0

    :goto_5
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5184
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5187
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v15, :cond_5

    invoke-static {v15}, Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;->access$800(Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;)Z

    move-result v14

    if-eqz v14, :cond_5

    const/4 v14, 0x1

    goto :goto_6

    :cond_5
    const/4 v14, 0x0

    :goto_6
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5188
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5189
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getStrongAuthTracker()Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;->hasUserAuthenticatedSinceBoot()Z

    move-result v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5188
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5190
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDisabled(I)Z

    move-result v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5191
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFingerprintPossible(I)Z

    move-result v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5192
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "    listening: actual="

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintRunningState:I

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " expected="

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v14, 0x0

    .line 5193
    invoke-virtual {v0, v14}, Lcom/android/keyguard/KeyguardUpdateMonitor;->shouldListenForFingerprint(Z)Z

    move-result v15

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5192
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5194
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5195
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserTrustIsManaged(I)Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5196
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    udfpsEnrolled="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUdfpsEnrolled()Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5197
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUdfpsEnrolled()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 5198
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "        shouldListenForUdfps="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->shouldListenForFingerprint(Z)Z

    move-result v15

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5199
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "        bouncerVisible="

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v15, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBouncer:Z

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5200
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "        mStatusBarState="

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStatusBarState:I

    .line 5201
    invoke-static {v15}, Lcom/android/systemui/statusbar/StatusBarState;->toShortString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5200
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_7

    :cond_6
    const/4 v5, 0x1

    goto :goto_7

    :cond_7
    const/4 v5, 0x1

    const/4 v14, 0x0

    .line 5204
    :goto_7
    iget-object v3, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceManager:Landroid/hardware/face/FaceManager;

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Landroid/hardware/face/FaceManager;->isHardwareDetected()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 5205
    iget-object v3, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getStrongAuthForUser(I)I

    move-result v3

    .line 5206
    iget-object v15, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFaceAuthenticated:Landroid/util/SparseArray;

    invoke-virtual {v15, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;

    .line 5207
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  Face authentication state (user="

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5208
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v15, :cond_8

    .line 5209
    invoke-static {v15}, Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;->access$900(Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;)Z

    move-result v12

    invoke-virtual {v0, v12}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed(Z)Z

    move-result v12

    if-eqz v12, :cond_8

    const/4 v12, 0x1

    goto :goto_8

    :cond_8
    const/4 v12, 0x0

    :goto_8
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 5208
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5210
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v15, :cond_9

    .line 5211
    invoke-static {v15}, Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;->access$800(Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;)Z

    move-result v11

    if-eqz v11, :cond_9

    const/4 v14, 0x1

    goto :goto_9

    :cond_9
    const/4 v14, 0x0

    :goto_9
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 5210
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5212
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5213
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getStrongAuthTracker()Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;->hasUserAuthenticatedSinceBoot()Z

    move-result v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 5212
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5214
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDisabled(I)Z

    move-result v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5215
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFacePossible(I)Z

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5216
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5217
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserTrustIsManaged(I)Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5218
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    enabledByUser="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBiometricEnabledForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5219
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    mSecureCameraLaunched="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSecureCameraLaunched:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5221
    :cond_a
    invoke-interface {v0, v1, v4}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->dump(Ljava/io/PrintWriter;I)V

    .line 5222
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    mDisableCamera="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " - "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDisableCamera:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5223
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    mMaximumFailedPasswordsForWipe="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mMaximumFailedPasswordsForWipe:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5224
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    getUserCanSkipBouncer="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5225
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    getUserHasTrust="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5226
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    isUserUnlocked="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserIsUnlocked:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 5229
    :cond_b
    iget-boolean v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsAutomotive:Z

    if-eqz v0, :cond_c

    const-string v0, "  Running on Automotive build"

    .line 5230
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_c
    return-void
.end method

.method public enableSecurityDebug()V
    .locals 2

    .line 5481
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isShipBuild()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableSecurityDebug : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x5

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUpdateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5483
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->setSecurityDebugLevel(I)V

    :cond_0
    return-void
.end method

.method public getBiometricType(I)I
    .locals 0

    .line 5607
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-nez p0, :cond_0

    const-string p0, "KeyguardUpdateMonitor"

    const-string p1, "mLockPatternUtils is null"

    .line 5608
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 5611
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricType(I)I

    move-result p0

    return p0
.end method

.method public getBiometricsAuthenticated(I)I
    .locals 1

    .line 6232
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceOptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->getSettingsHelper()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEnabledFaceStayOnLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6233
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFaceAuthenticated(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x100

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getFaceAuthenticated(I)Z
    .locals 0

    .line 6262
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFaceAuthenticated:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;

    if-eqz p0, :cond_0

    .line 6263
    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;->access$800(Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getFaceStrongBiometric(I)Z
    .locals 0

    .line 6268
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFaceAuthenticated:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;

    if-eqz p0, :cond_0

    .line 6269
    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;->access$900(Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getFailedFMMUnlockAttempt(I)I
    .locals 0

    .line 5350
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-eqz p0, :cond_0

    .line 5351
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getFailedFMMUnlockAttempt(I)J

    move-result-wide p0

    long-to-int p0, p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getFailedUnlockAttempts(I)I
    .locals 0

    .line 5494
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getFailedUnlockAttempt(I)J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method

.method public getFilteredSubscriptionInfo(Z)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    .line 846
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSubscriptionInfo(Z)Ljava/util/List;

    move-result-object v0

    .line 847
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 848
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/SubscriptionInfo;

    const/4 v1, 0x1

    .line 849
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 850
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getGroupUuid()Landroid/os/ParcelUuid;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getGroupUuid()Landroid/os/ParcelUuid;

    move-result-object v2

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getGroupUuid()Landroid/os/ParcelUuid;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 852
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->isOpportunistic()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->isOpportunistic()Z

    move-result v2

    if-nez v2, :cond_0

    return-object v0

    .line 856
    :cond_0
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object v2

    const-string v3, "always_show_primary_signal_bar_in_opportunistic_network_boolean"

    .line 857
    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 860
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->isOpportunistic()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move-object p1, v1

    :goto_0
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 862
    :cond_2
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    iget p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mActiveMobileDataSubscription:I

    if-ne v2, p0, :cond_3

    move-object p1, v1

    :cond_3
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    return-object v0
.end method

.method public getFingerPrintBadQualityCounts()I
    .locals 2

    .line 6083
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerPrintBadQualityCounts:Landroid/util/SparseIntArray;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    return p0
.end method

.method public getFingerprintAuthenticated(I)Z
    .locals 0

    .line 6093
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFingerprintAuthenticated:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;

    if-eqz p0, :cond_0

    .line 6094
    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;->access$800(Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected getFingerprintManager()Landroid/hardware/fingerprint/FingerprintManager;
    .locals 0

    .line 6196
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    return-object p0
.end method

.method public getLockoutBiometricAttemptDeadline()J
    .locals 2

    .line 5664
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;->hasUserAuthenticatedSinceBoot()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 5667
    :cond_0
    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->getSecLockoutBiometricAttemptDeadline()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNextSubIdForState(I)I
    .locals 8

    const/4 v0, 0x0

    .line 5037
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSubscriptionInfo(Z)Ljava/util/List;

    move-result-object v1

    const/4 v2, -0x1

    const v3, 0x7fffffff

    .line 5040
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 5041
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    .line 5042
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    .line 5043
    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSlotId(I)I

    move-result v5

    .line 5044
    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimState(I)I

    move-result v6

    if-ne p1, v6, :cond_2

    if-le v3, v5, :cond_2

    .line 5045
    invoke-interface {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->checkSimState(I)Z

    move-result v6

    const-string v7, "KeyguardUpdateMonitor"

    if-eqz v6, :cond_0

    .line 5046
    invoke-virtual {p0, v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinPassed(I)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v4, "getNextSubIdForState() PIN_REQUIRED happen on isSimPinPassed slot"

    .line 5047
    invoke-static {v7, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 5048
    :cond_0
    sget-boolean v6, Lcom/android/systemui/LsRune;->SECURITY_ESIM:Z

    if-eqz v6, :cond_1

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->isESimRemoveButtonClicked()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 5049
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getNextSubIdForState() "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " happen on isESimRemoveButtonClicked slotId = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    move v2, v4

    move v3, v5

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v2
.end method

.method public getPhoneState()I
    .locals 0

    .line 6355
    iget p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPhoneState:I

    return p0
.end method

.method public getRemainingAttempt(I)I
    .locals 4

    .line 5549
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts(I)I

    move-result v0

    .line 5550
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getRemainingAttemptsBeforeWipe()I

    move-result v1

    .line 5551
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRemainingAttempt type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", failedAttempts : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", remainingAttempts : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "KeyguardUpdateMonitor"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5553
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isAutoWipe()Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x5

    if-eqz p1, :cond_2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x6

    if-lt v0, p0, :cond_3

    const/16 p0, 0x9

    if-gt v0, p0, :cond_3

    return v1

    :cond_1
    if-ge v1, p0, :cond_3

    return v1

    :cond_2
    if-gt v1, p0, :cond_3

    return v1

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public getRemainingAttemptsBeforeWipe()I
    .locals 1

    .line 5515
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 5516
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts(I)I

    move-result v0

    .line 5517
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedAttemptsBeforeWipe()I

    move-result p0

    if-lez p0, :cond_0

    sub-int/2addr p0, v0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public getRemoteLockInfo()Lcom/android/internal/widget/RemoteLockInfo;
    .locals 1

    .line 5312
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mActiveRemoteLockIndex:I

    if-ltz v0, :cond_0

    .line 5313
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mRemoteLockInfo:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/widget/RemoteLockInfo;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getRemoteLockType()I
    .locals 1

    .line 5321
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mActiveRemoteLockIndex:I

    if-ltz v0, :cond_0

    .line 5322
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mRemoteLockInfo:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/widget/RemoteLockInfo;

    iget p0, p0, Lcom/android/internal/widget/RemoteLockInfo;->lockType:I

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getSecondaryLockscreenRequirement(I)Landroid/content/Intent;
    .locals 0

    .line 1816
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSecondaryLockscreenRequirement:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Intent;

    return-object p0
.end method

.method public getServiceState(I)Landroid/telephony/ServiceState;
    .locals 0

    .line 4818
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mServiceStates:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/ServiceState;

    return-object p0
.end method

.method public getSimState(I)I
    .locals 2

    .line 4868
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4869
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    iget p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simState:I

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected getSlotId(I)I
    .locals 2

    .line 4877
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4878
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->refreshSimState(II)Z

    .line 4880
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    iget p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->slotId:I

    return p0
.end method

.method public getStrongAuthTracker()Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;
    .locals 0

    .line 1867
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    return-object p0
.end method

.method public getSubscriptionInfo(Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .line 824
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionInfo:Ljava/util/List;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    .line 826
    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {p1}, Landroid/telephony/SubscriptionManager;->getCompleteActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    .line 830
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionInfo:Ljava/util/List;

    goto :goto_0

    .line 832
    :cond_2
    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionInfo:Ljava/util/List;

    .line 834
    :goto_0
    new-instance p1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionInfo:Ljava/util/List;

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method public getSubscriptionInfoForSubId(I)Landroid/telephony/SubscriptionInfo;
    .locals 3

    const/4 v0, 0x0

    .line 5060
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSubscriptionInfo(Z)Ljava/util/List;

    move-result-object p0

    .line 5061
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 5062
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 5063
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    if-ne p1, v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getUserCanSkipBouncer(I)Z
    .locals 2

    .line 1742
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isForcedLock()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1746
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1747
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserUnlockedWithBiometric(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1748
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->is2StepVerification()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const-class p0, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 1750
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-interface {p0}, Lcom/android/systemui/knox/KnoxStateMonitor;->isSetToSwipeLock()Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public getUserHasTrust(I)Z
    .locals 1

    .line 1756
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isTrustDisabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserHasTrust:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getUserTrustIsManaged(I)Z
    .locals 1

    .line 1773
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTrustIsManaged:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isTrustDisabled(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getUserUnlockedWithBiometric(I)Z
    .locals 4

    .line 1763
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFingerprintAuthenticated:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;

    .line 1764
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFaceAuthenticated:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1765
    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;->access$800(Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1766
    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;->access$900(Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz p1, :cond_1

    .line 1767
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;->access$800(Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1768
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;->access$900(Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed(Z)Z

    move-result p0

    if-eqz p0, :cond_1

    move p0, v1

    goto :goto_1

    :cond_1
    move p0, v2

    :goto_1
    if-nez v0, :cond_3

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :cond_3
    :goto_2
    return v1
.end method

.method protected handleFaceAuthFailed()V
    .locals 2

    .line 1446
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 1448
    sget v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->sCurrentUser:I

    const-string v1, "face"

    invoke-interface {p0, v0, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->reportFailedBiometricUnlockAttempt(ILjava/lang/String;)V

    .line 1449
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopListeningForFace()V

    .line 1452
    sget-object v0, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda84;->INSTANCE:Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda84;

    invoke-interface {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->dispatchCallback(Ljava/util/function/Consumer;)V

    .line 1456
    const-class p0, Lcom/android/systemui/util/DesktopManager;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/DesktopManager;

    invoke-virtual {p0}, Lcom/android/systemui/util/DesktopManager;->notifyFaceAuthenticationFailed()V

    return-void
.end method

.method protected handleFaceAuthenticated(IZ)V
    .locals 2

    const-string v0, "KeyGuardUpdateMonitor#handlerFaceAuthenticated"

    .line 1482
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1484
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->sCurrentUser:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->reportSuccessfulPasswordAttempt(I)V

    .line 1487
    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->getSettingsHelper()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEnabledFaceStayOnLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1488
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBiometricFailedAttempts:Landroid/util/SparseIntArray;

    sget v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->sCurrentUser:I

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->delete(I)V

    goto :goto_0

    .line 1490
    :cond_0
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY_OPTICAL:Z

    if-eqz v0, :cond_1

    .line 1491
    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->removeMaskViewForOpticalFpSensor()V

    .line 1494
    :cond_1
    :goto_0
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintRunningState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const-string v0, "KeyguardFingerPrint"

    const-string v1, "Face onAuthenticationSucceeded. FP will be stop!"

    .line 1496
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1497
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopListeningForFingerprint()V

    .line 1502
    :cond_2
    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda62;

    invoke-direct {v0, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda62;-><init>(Z)V

    const-string v1, "onBiometricAuthenticated"

    invoke-interface {p0, v0, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->dispatchCallback(Ljava/util/function/Consumer;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1507
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFaceRunningState(I)V

    .line 1509
    invoke-direct {p0, p2, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportSuccessfulBiometricUnlock(ZI)V

    .line 1512
    const-class p0, Lcom/android/systemui/util/DesktopManager;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/DesktopManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/util/DesktopManager;->notifyFaceAuthenticated(IZ)V

    .line 1541
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method protected handleFingerprintAuthFailed()V
    .locals 3

    .line 1032
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 1034
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 1035
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsSkipFPResponse:Z

    const-string v2, "KeyguardFingerPrint"

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 1036
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsSkipFPResponse:Z

    const-string p0, "handleFingerprintAuthFailed( skipped FP response )"

    .line 1037
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 1040
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed(Z)Z

    move-result v1

    if-nez v1, :cond_1

    const-string p0, "handleFingerprintAuthFailed( unlock is not allowed. )"

    .line 1041
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string v1, "fingerprint"

    .line 1044
    invoke-interface {p0, v0, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->reportFailedBiometricUnlockAttempt(ILjava/lang/String;)V

    .line 1047
    sget-object v0, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda83;->INSTANCE:Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda83;

    invoke-interface {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->dispatchCallback(Ljava/util/function/Consumer;)V

    const/4 v0, -0x1

    .line 1050
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->kg_fingerprint_no_match:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFingerprintHelp(ILjava/lang/String;)V

    .line 1052
    const-class p0, Lcom/android/systemui/util/DesktopManager;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/DesktopManager;

    invoke-virtual {p0}, Lcom/android/systemui/util/DesktopManager;->notifyFingerprintAuthFailed()V

    return-void
.end method

.method protected handleFingerprintAuthenticated(IZI)V
    .locals 4

    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "KeyGuardUpdateMonitor#handlerFingerPrintAuthenticated"

    .line 1124
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1126
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsSkipFPResponse:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1127
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsSkipFPResponse:Z

    const-string p1, "KeyguardFingerPrint"

    const-string p2, "handleFingerprintAuthenticated( skipped FP response )"

    .line 1128
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    invoke-direct {p0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFingerprintRunningState(I)V

    const/4 p1, 0x0

    .line 1131
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintCancelSignal:Landroid/os/CancellationSignal;

    .line 1132
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 1133
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    .line 1141
    :cond_0
    :try_start_0
    sget v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->sCurrentUser:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v1, p1, :cond_1

    .line 1150
    :try_start_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Fingerprint authenticated for wrong user: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1159
    invoke-direct {p0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFingerprintRunningState(I)V

    return-void

    .line 1153
    :cond_1
    :try_start_2
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDisabled(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1154
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Fingerprint disabled by DPM for userId: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1159
    invoke-direct {p0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFingerprintRunningState(I)V

    return-void

    .line 1157
    :cond_2
    :try_start_3
    invoke-virtual {p0, v1, p2, p3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->onFingerprintAuthenticated(IZI)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1159
    invoke-direct {p0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFingerprintRunningState(I)V

    .line 1162
    sget-boolean p3, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY_OPTICAL:Z

    if-eqz p3, :cond_4

    .line 1165
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->is2StepVerification()Z

    move-result p3

    if-nez p3, :cond_3

    .line 1166
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isForcedLock()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 1167
    :cond_3
    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->removeMaskViewForOpticalFpSensor()V

    .line 1171
    :cond_4
    sget-boolean p3, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_COVER:Z

    if-eqz p3, :cond_5

    .line 1172
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mForceStartFinger:Z

    .line 1174
    :cond_5
    invoke-virtual {p0, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed(Z)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 1175
    const-class p0, Lcom/android/systemui/util/DesktopManager;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/DesktopManager;

    invoke-virtual {p0, p1, v2}, Lcom/android/systemui/util/DesktopManager;->notifyFingerprintAuthenticated(II)V

    .line 1178
    :cond_6
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_4
    const-string p2, "Failed to get current user id: "

    .line 1146
    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1159
    invoke-direct {p0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFingerprintRunningState(I)V

    return-void

    :goto_0
    invoke-direct {p0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFingerprintRunningState(I)V

    .line 1160
    throw p1
.end method

.method protected handleFinishedGoingToSleep(I)V
    .locals 1

    .line 2435
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    const/4 v0, 0x0

    .line 2436
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mGoingToSleep:Z

    .line 2438
    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda31;

    invoke-direct {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda31;-><init>(I)V

    invoke-interface {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->dispatchCallback(Ljava/util/function/Consumer;)V

    .line 2442
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->requestSessionOpen()V

    .line 2444
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateBiometricListeningState()V

    return-void
.end method

.method handleServiceStateChange(IILandroid/telephony/ServiceState;)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4416
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleServiceStateChange(subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", slotId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", serviceState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUpdateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4420
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_DISABLE_EMERGENCY_CALL_WHEN_OFFLINE:Z

    if-eqz v0, :cond_0

    .line 4421
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mServiceStatesBySlotId:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4422
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateOfflineState()V

    .line 4425
    :cond_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p0, "invalid subId in handleServiceStateChange()"

    .line 4426
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 p2, 0x1

    .line 4429
    invoke-virtual {p0, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateTelephonyCapable(Z)V

    .line 4432
    iget-object p2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mServiceStates:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4434
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->callbacksRefreshCarrierInfo()V

    return-void
.end method

.method handleSimStateChange(III)V
    .locals 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4319
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 4321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleSimStateChange(subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", slotId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUpdateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4325
    invoke-interface {p0, p3}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->checkSimState(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinPassed(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "handleSimStateChange isSimPinPassed"

    .line 4326
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4330
    :cond_0
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_ESIM:Z

    if-eqz v0, :cond_1

    .line 4331
    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->isESimRemoveButtonClicked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4333
    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda41;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda41;-><init>(III)V

    invoke-interface {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->dispatchCallback(Ljava/util/function/Consumer;)V

    return-void

    .line 4339
    :cond_1
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v2, :cond_9

    const-string v2, "invalid subId in handleSimStateChange()"

    .line 4340
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p3, v5, :cond_4

    .line 4344
    invoke-virtual {p0, v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateTelephonyCapable(Z)V

    .line 4348
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    .line 4351
    iget v6, v2, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->slotId:I

    if-ne v6, p2, :cond_2

    .line 4352
    iput v5, v2, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simState:I

    goto :goto_0

    :cond_3
    move v0, v5

    goto :goto_3

    :cond_4
    const/16 v2, 0x8

    if-ne p3, v2, :cond_5

    .line 4356
    invoke-virtual {p0, v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateTelephonyCapable(Z)V

    goto :goto_2

    :cond_5
    if-eqz v0, :cond_8

    if-nez p3, :cond_8

    .line 4359
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    .line 4360
    iget v0, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->slotId:I

    if-ne v0, p2, :cond_6

    iget v0, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simState:I

    if-eq v0, v3, :cond_7

    const/4 v2, 0x3

    if-ne v0, v2, :cond_6

    :cond_7
    const-string v0, "Update SIM_STATE_UNKNOWN"

    .line 4363
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4364
    iput p3, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simState:I

    goto :goto_1

    :cond_8
    return-void

    :cond_9
    :goto_2
    move v0, v4

    .line 4372
    :goto_3
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    if-nez v2, :cond_a

    .line 4375
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 4376
    new-instance v2, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    invoke-direct {v2, p3, p2, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;-><init>(III)V

    .line 4377
    iget-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v4, v5

    goto :goto_4

    .line 4383
    :cond_a
    iget v6, v2, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simState:I

    if-ne v6, p3, :cond_b

    iget v6, v2, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->subId:I

    if-ne v6, p1, :cond_b

    iget v6, v2, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->slotId:I

    if-eq v6, p2, :cond_c

    :cond_b
    move v4, v5

    .line 4384
    :cond_c
    iput p3, v2, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simState:I

    .line 4385
    iput p1, v2, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->subId:I

    .line 4386
    iput p2, v2, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->slotId:I

    :cond_d
    :goto_4
    if-nez v4, :cond_e

    if-eqz v0, :cond_f

    :cond_e
    if-eqz p3, :cond_f

    .line 4390
    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda39;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda39;-><init>(III)V

    invoke-interface {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->dispatchCallback(Ljava/util/function/Consumer;)V

    :cond_f
    if-nez p3, :cond_11

    .line 4395
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-nez v0, :cond_10

    const-string p0, "BluetoothAdapter is null, return"

    .line 4397
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_10
    const/16 v2, 0xa

    .line 4400
    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v0

    .line 4401
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSimStateChange( Sim state is UNKNOWN.), SAP status : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v0, v3, :cond_11

    const-string v0, "SAP connected"

    .line 4403
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4404
    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda40;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda40;-><init>(III)V

    invoke-interface {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->dispatchCallback(Ljava/util/function/Consumer;)V

    :cond_11
    return-void
.end method

.method protected handleStartedGoingToSleep(I)V
    .locals 5

    .line 2386
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    const/4 v0, 0x0

    .line 2387
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockIconPressed:Z

    .line 2388
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->clearBiometricRecognized()V

    .line 2390
    new-instance v1, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda38;

    invoke-direct {v1, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda38;-><init>(I)V

    invoke-interface {p0, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->dispatchCallback(Ljava/util/function/Consumer;)V

    .line 2393
    sget-boolean v1, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_SIDE:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->getSettingsHelper()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isEnabledWof()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2394
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isSideFingerprintExclusiveSupported()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 2396
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTimeoutSkipFPResponse:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2397
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsSkipFPResponse:Z

    .line 2398
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTimeoutSkipFPResponse:Ljava/lang/Runnable;

    const-wide/16 v3, 0x2bc

    invoke-virtual {p1, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string p1, "KeyguardFingerPrint"

    const-string v1, "ScreenOff by the powerKey. If it receives a response within 700ms, it will skip."

    .line 2399
    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2403
    :cond_0
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mGoingToSleep:Z

    .line 2404
    sget-boolean p1, Lcom/android/systemui/LsRune;->SECURITY_BACKGROUND_AUTHENTICATION:Z

    if-eqz p1, :cond_1

    .line 2405
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsFPCanceledByForegroundApp:Z

    .line 2410
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setUnlockingKeyguard(Z)V

    .line 2411
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsShortcutPreviewShowing:Z

    .line 2412
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsFaceWidgetFullScreenMode:Z

    .line 2415
    sget-boolean p1, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_COVER:Z

    if-eqz p1, :cond_2

    .line 2416
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mForceStartFinger:Z

    .line 2421
    :cond_2
    invoke-interface {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->setFaceAuthenticated(Z)V

    .line 2423
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateBiometricListeningState()V

    .line 2425
    sget-boolean p1, Lcom/android/systemui/LsRune;->SECURITY_ESIM:Z

    if-eqz p1, :cond_3

    .line 2426
    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->clearESimRemoved()V

    .line 2429
    :cond_3
    sget-boolean p0, Lcom/android/systemui/LsRune;->KEYGUARD_DCM_LIVE_UX:Z

    if-eqz p0, :cond_4

    .line 2430
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->invalidateCachedIsDcmLauncher()V

    :cond_4
    return-void
.end method

.method protected handleStartedWakingUp()V
    .locals 1

    const-string v0, "KeyguardUpdateMonitor#handleStartedWakingUp"

    .line 2375
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 2376
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 2377
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateBiometricListeningState()V

    .line 2379
    sget-object v0, Lcom/android/keyguard/KeyguardSecUpdateMonitor$$ExternalSyntheticLambda22;->INSTANCE:Lcom/android/keyguard/KeyguardSecUpdateMonitor$$ExternalSyntheticLambda22;

    invoke-interface {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->dispatchCallback(Ljava/util/function/Consumer;)V

    .line 2382
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method handleUserRemoved(I)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2546
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 2547
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserIsUnlocked:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 2548
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTrustIsUsuallyManaged:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    return-void
.end method

.method handleUserSwitching(ILandroid/os/IRemoteCallback;)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4129
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 4130
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->clearBiometricRecognized()V

    .line 4131
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTrustIsUsuallyManaged:Landroid/util/SparseBooleanArray;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTrustManager:Landroid/app/trust/TrustManager;

    invoke-virtual {v1, p1}, Landroid/app/trust/TrustManager;->isTrustUsuallyManaged(I)Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 4133
    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda30;

    invoke-direct {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda30;-><init>(I)V

    invoke-interface {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->dispatchCallback(Ljava/util/function/Consumer;)V

    const/4 p0, 0x0

    .line 4137
    :try_start_0
    invoke-interface {p2, p0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public hasLockscreenWallpaper()Z
    .locals 0

    .line 4100
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHasLockscreenWallpaper:Z

    return p0
.end method

.method public is2StepVerification()Z
    .locals 0

    .line 5474
    const-class p0, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-interface {p0}, Lcom/android/systemui/knox/KnoxStateMonitor;->isMultifactorAuthEnforced()Z

    move-result p0

    return p0
.end method

.method public isAdminLock()Z
    .locals 0

    .line 5466
    const-class p0, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-interface {p0}, Lcom/android/systemui/knox/KnoxStateMonitor;->isAdminLockEnabled()Z

    move-result p0

    return p0
.end method

.method public isAllSimState(I)Z
    .locals 1

    .line 5628
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    .line 5629
    iget v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simState:I

    if-eq v0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public isAuthenticatedByWOF(Ljava/lang/String;I)Z
    .locals 3

    .line 5805
    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->getSettingsHelper()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    .line 5806
    sget-boolean v1, Lcom/android/systemui/LsRune;->SECURITY_WOF:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 5807
    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEnabledWof()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5808
    invoke-virtual {p0, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFingerprintAuthenticated(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "isAuthenticatedByWOF is true : already authenticated by fingerprint!"

    .line 5809
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 5812
    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isLiftToWakeEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5813
    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEnabledFaceStayOnLock()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5814
    invoke-virtual {p0, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFaceAuthenticated(I)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "isAuthenticatedByWOF is true : already authenticated by face!"

    .line 5815
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    const-string p0, "isAuthenticatedByWOF is false!"

    .line 5819
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public isAuthenticatedWithBiometric(I)Z
    .locals 1

    .line 5688
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFingerprintAuthenticated(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5689
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFaceAuthenticated(I)Z

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

.method public isAutoWipe()Z
    .locals 2

    .line 5504
    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->isFMMLock()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 5508
    :cond_0
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mMaximumFailedPasswordsForWipe:I

    if-gtz v0, :cond_1

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->getSettingsHelper()Lcom/android/systemui/util/SettingsHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isAutoWipeEnable()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isCameraDisabledByPolicy()Z
    .locals 1

    .line 6242
    const-class v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 6243
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-interface {v0}, Lcom/android/systemui/knox/KnoxStateMonitor;->isFaceRecognitionDisabledByMdm()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 6246
    :cond_0
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDisableCamera:Z

    return p0
.end method

.method public isDeviceInteractive()Z
    .locals 0

    .line 5024
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    return p0
.end method

.method public isDeviceProvisioned()Z
    .locals 0

    .line 4814
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    return p0
.end method

.method public isDreaming()Z
    .locals 0

    .line 957
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsDreaming:Z

    return p0
.end method

.method public isFaceAuthEnabledForUser(I)Z
    .locals 0

    .line 3958
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceOptionEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3959
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isForcedLock()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isFaceDetectionRunning()Z
    .locals 1

    .line 1690
    iget p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceRunningState:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFaceDisabled(I)Z
    .locals 2

    .line 1711
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    .line 1712
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 1714
    new-instance v1, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda91;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda91;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/app/admin/DevicePolicyManager;I)V

    invoke-static {v1}, Lcom/android/systemui/DejankUtils;->whitelistIpcs(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isFaceEnrolled()Z
    .locals 0

    .line 3000
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsFaceEnrolled:Z

    return p0
.end method

.method public isFaceOptionEnabled()Z
    .locals 1

    .line 6223
    invoke-static {}, Lcom/android/systemui/util/SafeUIState;->isSysUiSafeModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 6226
    :cond_0
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBiometricsFace:Z

    return p0
.end method

.method public isFingerprintDetectionRunning()Z
    .locals 1

    .line 1686
    iget p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintRunningState:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFingerprintDisabled(I)Z
    .locals 2

    .line 1703
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    .line 1704
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1705
    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result p1

    and-int/lit8 p1, p1, 0x20

    if-nez p1, :cond_1

    .line 1707
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFingerprintDisabledWithBadQuality()Z
    .locals 1

    .line 6088
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFingerPrintBadQualityCounts()I

    move-result p0

    const/16 v0, 0x32

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFingerprintLeave()Z
    .locals 0

    .line 6318
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsFpLeave:Z

    return p0
.end method

.method public isFingerprintOptionEnabled()Z
    .locals 1

    .line 5825
    invoke-static {}, Lcom/android/systemui/util/SafeUIState;->isSysUiSafeModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 5828
    :cond_0
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBiometricsFingerprint:Z

    return p0
.end method

.method public isForcedLock()Z
    .locals 2

    .line 5438
    invoke-static {}, Lcom/samsung/android/security/mdf/MdfUtils;->isMdfDisabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string p0, "KeyguardUpdateMonitor"

    const-string v0, "Prevent the Biometric from unlocking because CC mode is disabled."

    .line 5439
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 5444
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isRemoteLock()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public isGoingToSleep()Z
    .locals 0

    .line 5028
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mGoingToSleep:Z

    return p0
.end method

.method public isInDisplayFingerprintMarginAccepted()Z
    .locals 3

    .line 6105
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;->isUnlockingWithBiometricAllowed(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY:Z

    if-eqz v0, :cond_0

    .line 6107
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintOptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Swipe:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v2, :cond_0

    .line 6109
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->checkFullscreenBouncerMode(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    .line 6110
    invoke-static {p0}, Lcom/android/systemui/util/DeviceState;->isSmartViewFitToActiveDisplay(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isKeyguardUnlocking()Z
    .locals 1

    .line 5358
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardGoingAway:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardUnlocking:Z

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

.method public isKeyguardVisible()Z
    .locals 0

    .line 4438
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardIsVisible:Z

    return p0
.end method

.method public isOutOfService()Z
    .locals 0

    .line 6294
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsOutOfService:Z

    return p0
.end method

.method public isPerformingWipeOut()Z
    .locals 2

    .line 5531
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts(I)I

    move-result v0

    .line 5532
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedAttemptsBeforeWipe()I

    move-result p0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    if-ne v0, p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method public isRemoteLock()Z
    .locals 1

    .line 5458
    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->isFMMLock()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->isCarrierLock()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isRemoteLockEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isAdminLock()Z

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

.method public isRemoteLockEnabled()Z
    .locals 0

    .line 5450
    iget p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mActiveRemoteLockIndex:I

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isScreenOn()Z
    .locals 0

    .line 1900
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mScreenOn:Z

    return p0
.end method

.method public isSecure()Z
    .locals 1

    .line 5413
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSecure(I)Z

    move-result p0

    return p0
.end method

.method public isSecure(I)Z
    .locals 1

    .line 5418
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 5422
    invoke-interface {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->getCredentialTypeForUser(I)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 5423
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result p1

    if-nez p1, :cond_1

    .line 5424
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isRemoteLock()Z

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

    .line 5426
    :cond_2
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result p0

    return p0
.end method

.method protected isSimPinPassed(I)Z
    .locals 1

    if-ltz p1, :cond_1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 6289
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimPinPassed:[Z

    aget-boolean p0, p0, p1

    return p0

    .line 6286
    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isSimPinPassed  Slot Boundary Exception SlotNum: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KeyguardUpdateMonitor"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public isSimPinSecure()Z
    .locals 5

    const/4 v0, 0x0

    .line 4853
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSubscriptionInfo(Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 4854
    sget-boolean v3, Lcom/android/systemui/LsRune;->SECURITY_SIM_PERM_DISABLED:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    .line 4855
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimState(I)I

    move-result v2

    .line 4856
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x7

    if-ne v2, v3, :cond_1

    return v0

    .line 4859
    :cond_1
    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure(I)Z

    move-result v2

    if-eqz v2, :cond_0

    return v4

    .line 4861
    :cond_2
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimState(I)I

    move-result v2

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure(I)Z

    move-result v2

    if-eqz v2, :cond_0

    return v4

    :cond_3
    return v0
.end method

.method public isSimPinVoiceSecure()Z
    .locals 0

    .line 4843
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result p0

    return p0
.end method

.method public isSimState(I)Z
    .locals 3

    const/4 v0, 0x0

    .line 5618
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSubscriptionInfo(Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 5619
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimState(I)I

    move-result v2

    if-ne v2, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public isSwitchingUser()Z
    .locals 0

    .line 4716
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSwitchingUser:Z

    return p0
.end method

.method public isTimerRunning()Z
    .locals 4

    .line 5798
    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->getLockoutAttemptDeadline()J

    move-result-wide v0

    .line 5799
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getLockoutBiometricAttemptDeadline()J

    move-result-wide v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTrustUsuallyManaged(I)Z
    .locals 0

    .line 1823
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 1824
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTrustIsUsuallyManaged:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    return p0
.end method

.method public isUdfpsAvailable()Z
    .locals 1

    .line 2992
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mAuthController:Lcom/android/systemui/biometrics/AuthController;

    invoke-virtual {v0}, Lcom/android/systemui/biometrics/AuthController;->getUdfpsProps()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mAuthController:Lcom/android/systemui/biometrics/AuthController;

    .line 2993
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthController;->getUdfpsProps()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isUdfpsEnrolled()Z
    .locals 0

    .line 2984
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsUdfpsEnrolled:Z

    return p0
.end method

.method public isUnlockCompleted()Z
    .locals 1

    .line 5777
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->is2StepVerification()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 5780
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;->hasUserAuthenticatedSinceBoot()Z

    move-result p0

    return p0
.end method

.method public isUnlockWithFacePossible(I)Z
    .locals 1

    .line 3950
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceAuthEnabledForUser(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDisabled(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isUnlockWithFingerprintPossible(I)Z
    .locals 1

    .line 3944
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDisabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    .line 3945
    invoke-virtual {p0, p1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledTemplates(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isUnlockingWithBiometricAllowed(Z)Z
    .locals 4

    .line 1829
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;->isUnlockingWithBiometricAllowed(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDisabledBiometricBySecurityDialog:Z

    if-nez p1, :cond_0

    .line 1831
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getLockoutBiometricAttemptDeadline()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-gtz p1, :cond_0

    .line 1832
    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->getSettingsHelper()Lcom/android/systemui/util/SettingsHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isUltraPowerSavingModeLegacy()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1833
    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->getSettingsHelper()Lcom/android/systemui/util/SettingsHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isUnlockingWithBiometricsPossible(I)Z
    .locals 1

    .line 3939
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFacePossible(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFingerprintPossible(I)Z

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

.method public isUpdateSecurityMessage()Z
    .locals 4

    .line 5577
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 5578
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isAuthenticatedWithBiometric(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->getLockoutAttemptDeadline()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardUnlocking()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isUserInLockdown(I)Z
    .locals 1

    .line 1839
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getStrongAuthForUser(I)I

    move-result p1

    const/16 v0, 0x20

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->containsFlag(II)Z

    move-result p0

    return p0
.end method

.method public isUserUnlocked(I)Z
    .locals 0

    .line 3115
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserIsUnlocked:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    return p0
.end method

.method public needsSlowUnlockTransition()Z
    .locals 0

    .line 1863
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mNeedsSlowUnlockTransition:Z

    return p0
.end method

.method public notifyFailedUnlockAttemptChanged()V
    .locals 1

    .line 5489
    sget-object v0, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda87;->INSTANCE:Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda87;

    invoke-interface {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->dispatchCallback(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onAuthInterruptDetected(Z)V
    .locals 2

    .line 3124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAuthInterruptDetected("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUpdateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3125
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mAuthInterruptActive:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 3128
    :cond_0
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mAuthInterruptActive:Z

    .line 3129
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFaceListeningState()V

    return-void
.end method

.method public onCameraLaunched()V
    .locals 1

    const/4 v0, 0x1

    .line 949
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSecureCameraLaunched:Z

    .line 950
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateBiometricListeningState()V

    return-void
.end method

.method protected onFaceAuthenticated(IZ)V
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-string v0, "KeyGuardUpdateMonitor#onFaceAuthenticated"

    .line 1417
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1418
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 1419
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFaceAuthenticated:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;-><init>(ZZ)V

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1422
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1423
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTrustManager:Landroid/app/trust/TrustManager;

    sget-object v1, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {v0, p1, v1}, Landroid/app/trust/TrustManager;->unlockedByBiometricForUser(ILandroid/hardware/biometrics/BiometricSourceType;)V

    :cond_0
    const/4 v0, 0x0

    .line 1426
    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceCancelSignal:Landroid/os/CancellationSignal;

    .line 1428
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateBiometricListeningState()V

    .line 1431
    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda46;

    invoke-direct {v0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda46;-><init>(IZ)V

    invoke-interface {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->dispatchCallback(Ljava/util/function/Consumer;)V

    const/4 v0, 0x0

    .line 1436
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mAssistantVisible:Z

    .line 1439
    invoke-direct {p0, p2, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportSuccessfulBiometricUnlock(ZI)V

    .line 1441
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method protected onFaceAuthenticationAcquired(I)V
    .locals 4

    .line 6018
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDetectionRunning()Z

    move-result v0

    const-string v1, "KeyguardFace"

    if-nez v0, :cond_0

    const-string p0, "onAuthenticationAcquired(), Face is not running"

    .line 6019
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6022
    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsFaceReady:Z

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 6023
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsFaceReady:Z

    .line 6025
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAuthenticationAcquired(), acquireInfo="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_2

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto :goto_0

    :cond_2
    :pswitch_0
    const/4 v0, 0x0

    .line 6043
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTimeoutWithoutFace:Z

    goto :goto_0

    .line 6029
    :cond_3
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTimeoutWithoutFace:Z

    .line 6047
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFaceAcquired(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3ee
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3f3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onFaceAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 0

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 5961
    :cond_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFaceError(ILjava/lang/String;)V

    return-void
.end method

.method protected onFaceAuthenticationFailed()V
    .locals 2

    .line 6005
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDetectionRunning()Z

    move-result v0

    const-string v1, "KeyguardFace"

    if-nez v0, :cond_0

    const-string p0, "onAuthenticationFailed(), Face is not running"

    .line 6006
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "onAuthenticationFailed()"

    .line 6009
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "2"

    .line 6011
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->sendFaceSALog(Ljava/lang/String;)V

    .line 6013
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFaceAuthFailed()V

    return-void
.end method

.method protected onFaceAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 3

    .line 5966
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDetectionRunning()Z

    move-result v0

    const-string v1, "KeyguardFace"

    if-nez v0, :cond_0

    const-string p0, "onAuthenticationHelp(), Face is not running"

    .line 5967
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5970
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAuthenticationHelp(), helpCode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", helpString="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5971
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFaceHelp(ILjava/lang/String;)V

    return-void
.end method

.method protected onFaceAuthenticationSucceeded(Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;)V
    .locals 5

    .line 5976
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDetectionRunning()Z

    move-result v0

    const-string v1, "KeyguardFace"

    if-nez v0, :cond_0

    const-string p0, "onAuthenticationSucceeded(), Face is not running"

    .line 5977
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5981
    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardGoingAway:Z

    if-eqz v0, :cond_1

    const-string p0, "onAuthenticationSucceeded() - return, goingAway is true"

    .line 5982
    invoke-static {v1, p0}, Lcom/android/systemui/keyguard/KeyguardLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5986
    :cond_1
    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getBiometricUnlockController()Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->isLockStayEnabled()Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    .line 5987
    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->getFastBioUnlockController()Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda28;

    invoke-direct {v4, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda28;-><init>(Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;)V

    .line 5986
    invoke-static {v0, v4}, Lcom/android/systemui/Rune;->runIf(ZLjava/lang/Runnable;)V

    const-string v0, "onAuthenticationSucceeded()"

    .line 5990
    invoke-static {v1, v0}, Lcom/android/systemui/keyguard/KeyguardLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5993
    invoke-interface {p0, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->setFaceAuthenticated(Z)V

    const-string v0, "1"

    .line 5995
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->sendFaceSALog(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 5997
    invoke-virtual {p1}, Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;->isStrongBiometric()Z

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFaceAuthenticated(IZ)V

    .line 5999
    new-instance p1, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda9;

    invoke-direct {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda9;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    invoke-static {v2, p1}, Lcom/android/systemui/Rune;->runIf(ZLjava/lang/Runnable;)V

    return-void
.end method

.method protected onFingerprintAuthenticated(IZI)V
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 975
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    const-string v0, "KeyGuardUpdateMonitor#onFingerPrintAuthenticated"

    .line 976
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 977
    invoke-virtual {p0, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 978
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFingerprintAuthenticated:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;-><init>(ZZ)V

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 982
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 984
    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->getFastBioUnlockController()Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    move-result-object v0

    new-instance v1, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda22;

    invoke-direct {v1, p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda22;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V

    const-string v2, "TrsutManager#unlockedByBiometricForUser"

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->submit(Ljava/lang/Runnable;Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    .line 992
    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintCancelSignal:Landroid/os/CancellationSignal;

    .line 994
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateBiometricListeningState()V

    .line 996
    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda47;

    invoke-direct {v0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda47;-><init>(IZ)V

    invoke-interface {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->dispatchCallback(Ljava/util/function/Consumer;)V

    .line 1000
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x150

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const/4 v0, 0x0

    .line 1004
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mAssistantVisible:Z

    .line 1007
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x45b

    invoke-virtual {v0, v1, p1, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1011
    invoke-direct {p0, p2, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportSuccessfulBiometricUnlock(ZI)V

    .line 1013
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->is2StepVerification()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "KeyguardFingerPrint"

    const-string p2, "onFingerprintAuthenticated ( stop fingerprint )"

    .line 1014
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 1018
    :cond_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method protected onFpAuthenticationAcquired(II)V
    .locals 2

    .line 5950
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintAuthenticationSequence:I

    const-string v1, "KeyguardFingerPrint"

    if-eq v0, p1, :cond_0

    .line 5951
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onAuthenticationAcquired() - return, sequence error ("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintAuthenticationSequence:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5955
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onAuthenticationAcquired( "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "  )"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5956
    invoke-direct {p0, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFingerprintAcquired(I)V

    return-void
.end method

.method protected onFpAuthenticationError(IILjava/lang/CharSequence;)V
    .locals 2

    .line 5935
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintAuthenticationSequence:I

    const-string v1, "KeyguardFingerPrint"

    if-eq v0, p1, :cond_0

    .line 5936
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onAuthenticationError() - return, sequence error ("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintAuthenticationSequence:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5940
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isTimerRunning()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p0, "onAuthenticationError() - return, isTimerRunning is true"

    .line 5941
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string p1, "onAuthenticationError()"

    .line 5944
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5945
    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFingerprintError(ILjava/lang/String;)V

    return-void
.end method

.method protected onFpAuthenticationFailed(I)V
    .locals 3

    .line 5833
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintAuthenticationSequence:I

    const-string v1, "KeyguardFingerPrint"

    if-eq v0, p1, :cond_0

    .line 5834
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAuthenticationFailed() - return, sequence error ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintAuthenticationSequence:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5838
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isTimerRunning()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p0, "onAuthenticationFailed() - return, isTimerRunning is true"

    .line 5839
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string p1, "onAuthenticationFailed()"

    .line 5842
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "2"

    .line 5844
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->sendFingerprintSALog(Ljava/lang/String;)V

    .line 5846
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFingerprintAuthFailed()V

    return-void
.end method

.method protected onFpAuthenticationHelp(IILjava/lang/CharSequence;)V
    .locals 2

    .line 5894
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintAuthenticationSequence:I

    const-string v1, "KeyguardFingerPrint"

    if-eq v0, p1, :cond_0

    .line 5896
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onAuthenticationHelp() - return, sequence error ("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintAuthenticationSequence:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5901
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isTimerRunning()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p0, "onAuthenticationHelp() - return, isTimerRunning is true"

    .line 5903
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5908
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onAuthenticationHelp( helpMsgId = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " , helpString = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " )"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    if-eq p2, p1, :cond_6

    const/4 p1, 0x2

    if-eq p2, p1, :cond_5

    const/4 p1, 0x3

    if-eq p2, p1, :cond_4

    const/4 p1, 0x5

    if-eq p2, p1, :cond_3

    const/16 p1, 0x3eb

    if-eq p2, p1, :cond_2

    goto :goto_0

    :cond_2
    const-string p1, "7"

    .line 5926
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->sendFingerprintSALog(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string p1, "3"

    .line 5914
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->sendFingerprintSALog(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string p1, "6"

    .line 5923
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->sendFingerprintSALog(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string p1, "5"

    .line 5920
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->sendFingerprintSALog(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const-string p1, "4"

    .line 5917
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->sendFingerprintSALog(Ljava/lang/String;)V

    .line 5930
    :goto_0
    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFingerprintHelp(ILjava/lang/String;)V

    return-void
.end method

.method protected onFpAuthenticationSucceeded(ILandroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V
    .locals 3

    .line 5851
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintAuthenticationSequence:I

    const-string v1, "KeyguardFingerPrint"

    if-eq v0, p1, :cond_0

    .line 5852
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onAuthenticationSucceeded() - return, sequence error ("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintAuthenticationSequence:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5856
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isTimerRunning()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p0, "onAuthenticationSucceeded() - return, isTimerRunning is true"

    .line 5857
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5861
    :cond_1
    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardGoingAway:Z

    if-eqz p1, :cond_2

    const-string p0, "onAuthenticationSucceeded() - return, goingAway is true"

    .line 5862
    invoke-static {v1, p0}, Lcom/android/systemui/keyguard/KeyguardLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5866
    :cond_2
    invoke-virtual {p2}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;->isStrongBiometric()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed(Z)Z

    move-result p1

    .line 5867
    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->getFastBioUnlockController()Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda28;

    invoke-direct {v2, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda28;-><init>(Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;)V

    .line 5866
    invoke-static {p1, v2}, Lcom/android/systemui/Rune;->runIf(ZLjava/lang/Runnable;)V

    const-string p1, "KeyguardUpdateMonitor#onAuthenticationSucceeded"

    .line 5869
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const-string p1, "onAuthenticationSucceeded()"

    .line 5872
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5876
    invoke-virtual {p2}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;->getFingerprint()Landroid/hardware/fingerprint/Fingerprint;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result p1

    .line 5878
    invoke-interface {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->setBiometricId(I)V

    .line 5880
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fingerprint id : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "1"

    .line 5882
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->sendFingerprintSALog(Ljava/lang/String;)V

    .line 5884
    invoke-virtual {p2}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;->getUserId()I

    move-result v0

    invoke-virtual {p2}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;->isStrongBiometric()Z

    move-result p2

    invoke-virtual {p0, v0, p2, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFingerprintAuthenticated(IZI)V

    const/4 p1, 0x1

    .line 5886
    new-instance p2, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda14;

    invoke-direct {p2, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda14;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    invoke-static {p1, p2}, Lcom/android/systemui/Rune;->runIf(ZLjava/lang/Runnable;)V

    .line 5889
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 2

    .line 4447
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 4448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onKeyguardVisibilityChanged("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUpdateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4449
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardIsVisible:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 4452
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSecureCameraLaunched:Z

    .line 4455
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    if-eqz v1, :cond_1

    .line 4457
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->setUserHasDeviceEntryIntent(Z)V

    .line 4461
    :cond_1
    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda65;

    invoke-direct {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda65;-><init>(Z)V

    invoke-interface {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->dispatchCallback(Ljava/util/function/Consumer;)V

    .line 4464
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateBiometricListeningState()V

    return-void
.end method

.method public onKeyguardVisibilityChanged(ZZZ)V
    .locals 3

    .line 4469
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 4471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onKeyguardVisibilityChanged(v="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardIsVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", s="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardShowing:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", o="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardOccluded:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUpdateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4476
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY:Z

    if-eqz v0, :cond_0

    .line 4477
    invoke-virtual {p0, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->checkWaitingFocus(Z)V

    .line 4479
    :cond_0
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardIsVisible:Z

    .line 4480
    iput-boolean p2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardShowing:Z

    .line 4481
    iput-boolean p3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardOccluded:Z

    .line 4482
    sget-boolean p2, Lcom/android/systemui/LsRune;->SECURITY_BACKGROUND_AUTHENTICATION:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    if-nez p3, :cond_1

    .line 4483
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsFPCanceledByForegroundApp:Z

    .line 4487
    :cond_1
    new-instance p2, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda66;

    invoke-direct {p2, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda66;-><init>(Z)V

    invoke-interface {p0, p2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->dispatchCallback(Ljava/util/function/Consumer;)V

    .line 4490
    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardIsVisible:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBouncer:Z

    if-nez p1, :cond_2

    .line 4491
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setUnlockingKeyguard(Z)V

    .line 4495
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setShortcutPreviewShowing(Z)V

    .line 4498
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 4500
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockCompleted()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardUnlocking:Z

    if-nez p1, :cond_3

    .line 4502
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFaceListeningState()V

    :cond_3
    return-void
.end method

.method public onLockIconPressed()V
    .locals 3

    const/4 v0, 0x1

    .line 3782
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockIconPressed:Z

    .line 3783
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 3784
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFaceAuthenticated:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3785
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFaceListeningState()V

    .line 3786
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;->onStrongAuthRequiredChanged(I)V

    return-void
.end method

.method public onTrustChanged(ZII)V
    .locals 9

    .line 668
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 670
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserHasTrust:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gez v0, :cond_0

    move v4, v1

    goto :goto_0

    :cond_0
    move v4, v2

    .line 671
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserHasTrust:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    .line 672
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserHasTrust:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p2, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 674
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTrustFlags:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    .line 675
    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTrustFlags:Landroid/util/SparseIntArray;

    invoke-virtual {v5, p2, p3}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    .line 678
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v1, 0x2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v1, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v1, 0x4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    const-string v1, "KeyguardUpdateMonitor"

    const-string v2, "onTrustChanged hasNoKey:%s prevTrust:%s enabled:%s, prevFlags=0x%x, flags=0x%x"

    .line 677
    invoke-static {v1, v2, v5}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v4, :cond_1

    if-ne v0, p1, :cond_1

    if-eqz p1, :cond_2

    if-eq v3, p3, :cond_2

    .line 681
    :cond_1
    new-instance v1, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda70;

    move-object v3, v1

    move v5, v0

    move v6, p1

    move v7, p2

    move v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda70;-><init>(ZZZII)V

    invoke-interface {p0, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->dispatchCallback(Ljava/util/function/Consumer;)V

    :cond_2
    if-eq v0, p1, :cond_3

    .line 693
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateBiometricListeningState()V

    :cond_3
    return-void
.end method

.method public onTrustError(Ljava/lang/CharSequence;)V
    .locals 0

    .line 712
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchErrorMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onTrustManagedChanged(ZI)V
    .locals 1

    .line 874
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 875
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTrustIsManaged:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 876
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTrustIsUsuallyManaged:Landroid/util/SparseBooleanArray;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTrustManager:Landroid/app/trust/TrustManager;

    invoke-virtual {v0, p2}, Landroid/app/trust/TrustManager;->isTrustUsuallyManaged(I)Z

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 879
    new-instance p1, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda37;

    invoke-direct {p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda37;-><init>(I)V

    invoke-interface {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->dispatchCallback(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public playAcquiredHaptic()V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    return-void
.end method

.method public registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 3

    .line 4693
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 4694
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "*** register callback for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUpdateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 4697
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 4698
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 4700
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "Called by"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const-string p1, "Object tried to add another callback"

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4706
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 4707
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 4708
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->sendUpdates(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 2

    .line 4678
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 4680
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "*** unregister callback for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUpdateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4683
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda90;

    invoke-direct {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda90;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    return-void
.end method

.method public reportEmergencyCallAction(Z)V
    .locals 0

    if-nez p1, :cond_0

    .line 4802
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 p1, 0x13e

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 4804
    :cond_0
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 4805
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleReportEmergencyCallAction()V

    :goto_0
    return-void
.end method

.method public reportFailedStrongAuthUnlockAttempt(I)V
    .locals 0

    .line 5499
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->addFailedUnlockAttempt(I)J

    return-void
.end method

.method public reportSimUnlocked(I)V
    .locals 3

    .line 4782
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "reportSimUnlocked(subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUpdateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4784
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSlotId(I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    if-ne v0, v1, :cond_1

    .line 4786
    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimPinPassed:[Z

    aput-boolean v1, v2, v0

    .line 4789
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSlotId(I)I

    move-result v0

    const/4 v1, 0x5

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleSimStateChange(III)V

    return-void
.end method

.method public requestBiometricsAuth(I)V
    .locals 2

    const-string v0, "KeyguardUpdateMonitor"

    const-string/jumbo v1, "requestBiometricAuth()"

    .line 5785
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5786
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBiometricsFingerprint:Z

    if-eqz v0, :cond_0

    .line 5787
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 5789
    :cond_0
    invoke-interface {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->isPossibleWakeup(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5790
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceOptionEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5791
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFaceListeningState()V

    :cond_1
    return-void
.end method

.method public requestFaceAuth(Z)V
    .locals 2

    .line 3138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "requestFaceAuth() userInitiated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUpdateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3139
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsFaceAuthUserRequested:Z

    or-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsFaceAuthUserRequested:Z

    .line 3140
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFaceListeningState()V

    return-void
.end method

.method public requestFaceAuthOnOccludingApp(Z)V
    .locals 0

    .line 930
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mOccludingAppRequestingFace:Z

    .line 931
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFaceListeningState()V

    return-void
.end method

.method public requestFingerprintAuthOnOccludingApp(Z)V
    .locals 0

    .line 941
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mOccludingAppRequestingFp:Z

    .line 942
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    return-void
.end method

.method public requestSessionClose()V
    .locals 2

    .line 5708
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintOptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5709
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "requestSessionClose() - isFingerprintDetectionRunning : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5710
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDetectionRunning()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardFingerPrint"

    .line 5709
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5711
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDetectionRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5712
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY_OPTICAL:Z

    if-eqz v0, :cond_0

    .line 5713
    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->removeMaskViewForOpticalFpSensor()V

    .line 5715
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopListeningForFingerprint()V

    goto :goto_0

    .line 5717
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintCancelSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_2

    .line 5719
    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    const/4 v0, 0x0

    .line 5720
    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintCancelSignal:Landroid/os/CancellationSignal;

    .line 5725
    :cond_2
    :goto_0
    const-class v0, Lcom/android/systemui/UiOffloadThread;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/UiOffloadThread;

    new-instance v1, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda11;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/UiOffloadThread;->execute(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method resetBiometricListeningState()V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    .line 2568
    iput v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintRunningState:I

    .line 2569
    iput v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceRunningState:I

    return-void
.end method

.method public sendKeyguardBouncerChanged(Z)V
    .locals 2

    .line 4766
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendKeyguardBouncerChanged("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUpdateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4767
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x142

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 4768
    iput p1, p0, Landroid/os/Message;->arg1:I

    .line 4769
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public sendKeyguardReset()V
    .locals 1

    .line 4759
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x138

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public sendKeyguardStateUpdated(ZZZ)V
    .locals 2

    .line 5129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendKeyguardStateUpdated("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUpdateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5131
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY:Z

    if-eqz v0, :cond_0

    .line 5132
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->checkWaitingFocus(Z)V

    .line 5135
    :cond_0
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardShowing:Z

    .line 5136
    iput-boolean p2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardOccluded:Z

    .line 5139
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda27;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda27;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;ZZZ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected sendUpdates(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 4

    .line 4733
    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->getKeyguardBatteryStatus()Lcom/android/systemui/statusbar/KeyguardBatteryStatus;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onRefreshBatteryInfo(Lcom/android/systemui/statusbar/KeyguardBatteryStatus;)V

    .line 4737
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onTimeChanged()V

    .line 4738
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mRingMode:I

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onRingerModeChanged(I)V

    .line 4739
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPhoneState:I

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onPhoneStateChanged(I)V

    .line 4740
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onRefreshCarrierInfo()V

    .line 4741
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onClockVisibilityChanged()V

    .line 4742
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardIsVisible:Z

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onKeyguardVisibilityChangedRaw(Z)V

    .line 4743
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTelephonyCapable:Z

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onTelephonyCapable(Z)V

    .line 4744
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockScreenMode:I

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onLockScreenModeChanged(I)V

    .line 4746
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 4747
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    if-eqz v1, :cond_0

    .line 4749
    iget v2, v1, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simState:I

    invoke-interface {p0, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->checkSimState(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, v1, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->slotId:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinPassed(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4750
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "sendUpdates isSimPinPassed state.slotId = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v1, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->slotId:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KeyguardUpdateMonitor"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4754
    :cond_0
    iget v2, v1, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->subId:I

    iget v3, v1, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->slotId:I

    iget v1, v1, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simState:I

    invoke-virtual {p1, v2, v3, v1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onSimStateChanged(III)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method setAssistantVisible(Z)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1912
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mAssistantVisible:Z

    .line 1913
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateBiometricListeningState()V

    return-void
.end method

.method public setBackDropViewShowing(ZZ)V
    .locals 1

    .line 4071
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 4072
    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda69;

    invoke-direct {v0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda69;-><init>(ZZ)V

    invoke-interface {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->dispatchCallback(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public setCredentialAttempted()V
    .locals 1

    const/4 v0, 0x1

    .line 889
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCredentialAttempted:Z

    return-void
.end method

.method public setDialogStateForFace(Z)V
    .locals 2

    .line 6251
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsDialogShowing:Z

    if-eq v0, p1, :cond_0

    .line 6252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDialogStateForFace() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsDialogShowing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", callers: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x5

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->addAdditionalLog(Ljava/lang/String;)V

    .line 6253
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsDialogShowing:Z

    .line 6255
    :cond_0
    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardIsVisible:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceOptionEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6256
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFaceListeningState()V

    :cond_1
    return-void
.end method

.method public setDialogStateForInDisplayFingerprint(Z)V
    .locals 2

    .line 6121
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsDialogShowing:Z

    if-eq v0, p1, :cond_0

    .line 6122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDialogStateForInDisplayFingerprint() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsDialogShowing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", callers: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x5

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->addAdditionalLog(Ljava/lang/String;)V

    .line 6123
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsDialogShowing:Z

    .line 6125
    :cond_0
    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardIsVisible:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardOccluded:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBouncer:Z

    if-eqz p1, :cond_2

    :cond_1
    sget-boolean p1, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY:Z

    if-eqz p1, :cond_2

    .line 6126
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintOptionEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6127
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    :cond_2
    return-void
.end method

.method public setDisableBiometricBySecurityDialog(Z)V
    .locals 2

    .line 6115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDisableBiometricBySecurityDialog( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardFingerPrint"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6116
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDisabledBiometricBySecurityDialog:Z

    return-void
.end method

.method public setFaceWidgetFullScreenMode(Z)V
    .locals 4

    .line 5005
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 5006
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsFaceWidgetFullScreenMode:Z

    if-eq v0, p1, :cond_2

    .line 5007
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setFaceWidgetFullScreenMode(), enabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsFaceWidgetFullScreenMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUpdateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5008
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsFaceWidgetFullScreenMode:Z

    .line 5010
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockCompleted()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 5015
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateBiometricListeningState()V

    goto :goto_0

    .line 5017
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUpdateBiometricListeningState:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5019
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda26;

    invoke-direct {v1, p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda26;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method public setFocusForInDisplayFingerprint(Z)V
    .locals 2

    .line 6165
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHasFocus:Z

    if-eq v0, p1, :cond_0

    .line 6166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setFocusForInDisplayFingerprint : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHasFocus:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardFingerPrint"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6167
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHasFocus:Z

    .line 6168
    sget-boolean p1, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardIsVisible:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintOptionEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6169
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda13;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public setHasLockscreenWallpaper(Z)V
    .locals 1

    .line 4087
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 4088
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHasLockscreenWallpaper:Z

    if-eq p1, v0, :cond_0

    .line 4089
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHasLockscreenWallpaper:Z

    .line 4091
    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda63;

    invoke-direct {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda63;-><init>(Z)V

    invoke-interface {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->dispatchCallback(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public setKeyguardBypassController(Lcom/android/systemui/statusbar/phone/KeyguardBypassController;)V
    .locals 0

    .line 4712
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    return-void
.end method

.method public setKeyguardGoingAway(Z)V
    .locals 2

    .line 899
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardGoingAway:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 903
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setKeyguardGoingAway( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardGoingAway:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUpdateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardGoingAway:Z

    .line 906
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateBiometricListeningState()V

    return-void
.end method

.method public setKeyguardOccluded(Z)V
    .locals 1

    .line 919
    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda64;

    invoke-direct {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda64;-><init>(Z)V

    invoke-interface {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->dispatchCallback(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public setPanelExpandingStarted(Z)V
    .locals 2

    .line 6145
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintOptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 6149
    :goto_0
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsPanelExpandingStarted:Z

    if-eq v0, p1, :cond_1

    .line 6150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPanelExpandingStarted() mIsPanelExpandingStarted = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsPanelExpandingStarted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUpdateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6151
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsPanelExpandingStarted:Z

    .line 6152
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    :cond_1
    return-void
.end method

.method public setShortcutPreviewShowing(Z)V
    .locals 2

    .line 5363
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsShortcutPreviewShowing:Z

    if-eq v0, p1, :cond_0

    .line 5364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setShortcutPreviewShowing() mIsShortcutPreviewShowing = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsShortcutPreviewShowing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUpdateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5366
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsShortcutPreviewShowing:Z

    .line 5367
    sget-boolean p1, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBiometricsFingerprint:Z

    if-eqz p1, :cond_0

    .line 5368
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    :cond_0
    return-void
.end method

.method public setShowingKeepScreenOnPopup(Z)V
    .locals 2

    .line 6201
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintOptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6202
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda25;

    invoke-direct {v1, p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda25;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method protected setStrongAuthTracker(Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2558
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    if-eqz v0, :cond_0

    .line 2559
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->unregisterStrongAuthTracker(Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;)V

    .line 2562
    :cond_0
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    .line 2563
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->registerStrongAuthTracker(Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;)V

    return-void
.end method

.method public setSwitchingUser(Z)V
    .locals 1

    .line 4721
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSwitchingUser:Z

    .line 4723
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUpdateBiometricListeningState:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/16 p1, 0xffe

    .line 4725
    invoke-interface {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->dispatchSecureState(I)V

    return-void
.end method

.method public setUnlockingKeyguard(Z)V
    .locals 2

    .line 5386
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardUnlocking:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 5389
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setUnlockingKeyguard( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardUnlocking:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " ), caller : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUpdateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5390
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardUnlocking:Z

    if-eqz p1, :cond_2

    .line 5393
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopListeningForFingerprint()V

    .line 5394
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopListeningForFace()V

    .line 5396
    sget-boolean p1, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY_OPTICAL:Z

    if-eqz p1, :cond_1

    .line 5397
    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->removeMaskViewForOpticalFpSensor()V

    .line 5400
    :cond_1
    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->dispatchSecureLockUpdate()V

    .line 5403
    sget-object p1, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda89;->INSTANCE:Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda89;

    invoke-interface {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->dispatchCallback(Ljava/util/function/Consumer;)V

    :cond_2
    return-void
.end method

.method public shouldListenForFace()Z
    .locals 10

    .line 3524
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 3525
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceOptionEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 3530
    :cond_0
    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->isEarlyWakeUp()Z

    move-result v1

    .line 3531
    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardIsVisible:Z

    const/4 v4, 0x1

    const-string v5, "KeyguardFace"

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBouncer:Z

    if-eqz v3, :cond_4

    :cond_1
    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardGoingAway:Z

    if-nez v3, :cond_4

    .line 3533
    invoke-virtual {p0, v5, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isAuthenticatedByWOF(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSwitchingUser:Z

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mGoingToSleep:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsScreenSaverRunning:Z

    if-eqz v3, :cond_3

    :cond_2
    if-eqz v1, :cond_4

    :cond_3
    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardUnlocking:Z

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSystemReady:Z

    if-eqz v3, :cond_4

    move v3, v4

    goto :goto_0

    :cond_4
    move v3, v2

    .line 3538
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "shouldListenForFace ( isFaceDefaultCondition = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " , mKeyguardIsVisible = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardIsVisible:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " , mDeviceInteractive = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " , mBouncer = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBouncer:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " , mSwitchingUser = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSwitchingUser:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " , mGoingToSleep = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mGoingToSleep:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " , mKeyguardGoingAway = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardGoingAway:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " , mKeyguardUnlocking = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardUnlocking:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " , mIsEarlyWakeUp = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " , mIsScreenSaverRunning = "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsScreenSaverRunning:Z

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " , mSystemReady = "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSystemReady:Z

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v3, :cond_5

    const-string/jumbo p0, "shouldListenForFace ( return false, Face is not default condition)"

    .line 3552
    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3556
    :cond_5
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getLockoutBiometricAttemptDeadline()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-lez v3, :cond_6

    const-string/jumbo p0, "shouldListenForFace ( return false, because of Biometric lockoutAttemptDeadline)"

    .line 3557
    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3562
    :cond_6
    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->getLockoutAttemptDeadline()J

    move-result-wide v6

    cmp-long v3, v6, v8

    if-lez v3, :cond_7

    const-string/jumbo p0, "shouldListenForFace ( return false, because of lockoutAttemptDeadline)"

    .line 3563
    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3568
    :cond_7
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDisabled(I)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string/jumbo p0, "shouldListenForFace (return false, because face is disabled by dpm)"

    .line 3569
    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3574
    :cond_8
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isForcedLock()Z

    move-result v3

    if-eqz v3, :cond_9

    const-string/jumbo p0, "shouldListenForFace ( return false, because security policy)"

    .line 3575
    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3580
    :cond_9
    iget v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCocktailBarWindowType:I

    const/4 v6, 0x2

    if-ne v3, v6, :cond_a

    const-string/jumbo p0, "shouldListenForFace ( return false, the cocktail bar is expanded)"

    .line 3581
    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3586
    :cond_a
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isCameraDisabledByPolicy()Z

    move-result v3

    if-eqz v3, :cond_b

    const-string/jumbo p0, "shouldListenForFace ( return false, the camera is block by policy)"

    .line 3587
    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3592
    :cond_b
    sget-boolean v3, Lcom/android/systemui/LsRune;->COVER_SUPPORTED:Z

    if-eqz v3, :cond_c

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->isCoverClosed()Z

    move-result v3

    if-eqz v3, :cond_c

    const-string/jumbo p0, "shouldListenForFace ( return false as cover is closed. )"

    .line 3593
    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3598
    :cond_c
    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBouncer:Z

    if-nez v3, :cond_d

    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsShadeLockedState:Z

    if-nez v3, :cond_e

    :cond_d
    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsFaceWidgetFullScreenMode:Z

    if-eqz v3, :cond_f

    .line 3599
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "shouldListenForFace ( return false, because mIsShadeLockedState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsShadeLockedState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", or mIsFaceWidgetFullScreen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsFaceWidgetFullScreenMode:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " )"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3606
    :cond_f
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockCompleted()Z

    move-result v3

    if-nez v3, :cond_10

    const-string/jumbo p0, "shouldListenForFace ( return false, unlocking never happened )"

    .line 3607
    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3612
    :cond_10
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFaceStrongBiometric(I)Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed(Z)Z

    move-result v3

    if-nez v3, :cond_11

    .line 3613
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "shouldListenForFace ( return false, because isUnlockingWithBiometricAllowed() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3614
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFaceStrongBiometric(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed(Z)Z

    move-result p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3613
    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3619
    :cond_11
    const-class v1, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-interface {v1}, Lcom/android/systemui/knox/KnoxStateMonitor;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v1

    if-eqz v1, :cond_12

    const-string/jumbo p0, "shouldListenForFace ( return false, device is locked by administrator )"

    .line 3620
    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3625
    :cond_12
    const-class v1, Lcom/android/systemui/util/DesktopManager;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/DesktopManager;

    invoke-virtual {v1}, Lcom/android/systemui/util/DesktopManager;->isDesktopBarConnected()Z

    move-result v1

    if-eqz v1, :cond_13

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsScreenOffInDexMode:Z

    if-eqz v1, :cond_13

    const-string/jumbo p0, "shouldListenForFace ( return false, device is off in dex mode )"

    .line 3626
    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3631
    :cond_13
    sget-object v1, Lcom/android/systemui/noticenter/NotiCenterPlugin;->INSTANCE:Lcom/android/systemui/noticenter/NotiCenterPlugin;

    invoke-virtual {v1}, Lcom/android/systemui/noticenter/NotiCenterPlugin;->isNotiCenterPluginConnected()Z

    move-result v1

    if-eqz v1, :cond_14

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsNotiStarShown:Z

    if-eqz v1, :cond_14

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBouncer:Z

    if-nez v1, :cond_14

    const-string/jumbo p0, "shouldListenForFace ( return false, NotiStar is shown )"

    .line 3633
    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3637
    :cond_14
    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->getSettingsHelper()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    .line 3639
    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isEnabledFaceStayOnLock()Z

    move-result v3

    if-eqz v3, :cond_15

    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    if-eqz v3, :cond_15

    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardIsVisible:Z

    if-eqz v3, :cond_15

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v3

    if-eqz v3, :cond_15

    const-string/jumbo p0, "shouldListenForFace ( return false, getUserHasTrust() is true)"

    .line 3640
    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3647
    :cond_15
    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBouncer:Z

    if-nez v3, :cond_16

    .line 3648
    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->isDynamicLockViewMode()Z

    move-result v3

    if-eqz v3, :cond_16

    const-string p0, "KeyguardUpdateMonitor"

    const-string/jumbo v0, "shouldListenForFace ( return false, DynamicLockViewMode"

    .line 3649
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3655
    :cond_16
    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    if-eqz v3, :cond_17

    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsDialogShowing:Z

    if-eqz v3, :cond_17

    const-string/jumbo p0, "shouldListenForFace ( return false, dialog is showing )"

    .line 3656
    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3661
    :cond_17
    sget-boolean v3, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_COVER:Z

    if-nez v3, :cond_18

    sget-boolean v3, Lcom/android/systemui/LsRune;->SECURITY_DUAL_LCD_FOLDER:Z

    if-eqz v3, :cond_19

    :cond_18
    const-class v3, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 3662
    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {v3}, Lcom/android/systemui/keyguard/DisplayLifecycle;->isFolderOpened()Z

    move-result v3

    if-nez v3, :cond_19

    const-string/jumbo p0, "shouldListenForFace ( return false, Dual LCD folder is closed )"

    .line 3663
    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3668
    :cond_19
    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isEnabledFaceStayOnLock()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFaceAuthenticated(I)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 3669
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFaceStrongBiometric(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed(Z)Z

    move-result p0

    if-eqz p0, :cond_1a

    const-string/jumbo p0, "shouldListenForFace ( return false, LockStay is true)"

    .line 3670
    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1a
    return v4
.end method

.method protected shouldListenForFingerprint(Z)Z
    .locals 12
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3195
    const-class p1, Lcom/android/systemui/util/DesktopManager;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    const-string v1, "keyguard.fingerprint_test"

    const/4 v2, 0x0

    .line 3196
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 3197
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintOptionEnabled()Z

    move-result v3

    if-eqz v3, :cond_24

    .line 3200
    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->getSettingsHelper()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v3

    .line 3201
    sget-boolean v4, Lcom/android/systemui/LsRune;->SECURITY_WOF:Z

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/android/systemui/util/SettingsHelper;->isEnabledWof()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3202
    iget-boolean v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardIsVisible:Z

    if-nez v6, :cond_0

    iget-boolean v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBouncer:Z

    if-nez v6, :cond_0

    iget-boolean v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mGoingToSleep:Z

    if-nez v6, :cond_0

    if-nez v1, :cond_0

    .line 3203
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isReadyBackgroundAuthentication()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSwitchingUser:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardUnlocking:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardGoingAway:Z

    if-nez v1, :cond_1

    .line 3207
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFingerprintAuthenticated(I)Z

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    move v1, v5

    goto :goto_1

    :cond_1
    move v1, v2

    goto :goto_1

    .line 3210
    :cond_2
    iget-boolean v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardIsVisible:Z

    if-nez v6, :cond_3

    iget-boolean v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBouncer:Z

    if-nez v6, :cond_3

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isReadyBackgroundAuthentication()Z

    move-result v6

    if-nez v6, :cond_3

    if-eqz v1, :cond_1

    :cond_3
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSwitchingUser:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mGoingToSleep:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardUnlocking:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardGoingAway:Z

    if-nez v1, :cond_1

    goto :goto_0

    .line 3217
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "shouldListenForFingerprint ( isFingerprintEnabled = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " , mKeyguardIsVisible = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardIsVisible:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " , mDeviceInteractive = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " , mBouncer = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBouncer:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " , mGoingToSleep = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mGoingToSleep:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " , mSwitchingUser = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSwitchingUser:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " , mKeyguardUnlocking = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardUnlocking:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " , mKeyguardGoingAway = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardGoingAway:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " , mKeyguardShowing = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardShowing:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " , mKeyguardOccluded = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardOccluded:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " , mHasFocus = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHasFocus:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "KeyguardFingerPrint"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_24

    .line 3236
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getLockoutBiometricAttemptDeadline()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v1, v8, v10

    if-lez v1, :cond_4

    const-string/jumbo p0, "shouldListenForFingerprint ( return false, because of Biometric lockoutAttemptDeadline )"

    .line 3237
    invoke-static {v7, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3244
    :cond_4
    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->getLockoutAttemptDeadline()J

    move-result-wide v8

    cmp-long v1, v8, v10

    if-lez v1, :cond_5

    const-string/jumbo p0, "shouldListenForFingerprint ( return false, because of lockoutAttemptDeadline )"

    .line 3245
    invoke-static {v7, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3251
    :cond_5
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDisabled(I)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string/jumbo p0, "shouldListenForFingerprint ( return false, because fingerprint is disabled by dpm )"

    .line 3252
    invoke-static {v7, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3259
    :cond_6
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isForcedLock()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string/jumbo p0, "shouldListenForFingerprint ( return false, because lock to force a lockscreen )"

    .line 3260
    invoke-static {v7, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3266
    :cond_7
    sget-boolean v1, Lcom/android/systemui/LsRune;->COVER_SUPPORTED:Z

    if-eqz v1, :cond_9

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->isCoverClosed()Z

    move-result v1

    if-eqz v1, :cond_9

    sget-boolean v1, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_REAR:Z

    if-eqz v1, :cond_8

    .line 3267
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/DesktopManager;

    invoke-virtual {v1}, Lcom/android/systemui/util/DesktopManager;->isDualView()Z

    move-result v1

    if-nez v1, :cond_9

    :cond_8
    const-string/jumbo p0, "shouldListenForFingerprint ( return false as cover is closed. )"

    .line 3268
    invoke-static {v7, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_9
    if-eqz v4, :cond_a

    .line 3274
    invoke-virtual {v3}, Lcom/android/systemui/util/SettingsHelper;->isEnabledWof()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 3275
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    if-nez v1, :cond_a

    .line 3276
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDisabledWithBadQuality()Z

    move-result v1

    if-eqz v1, :cond_a

    const-string/jumbo p0, "shouldListenForFingerprint ( bad quality count is maximum. )"

    .line 3277
    invoke-static {v7, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3283
    :cond_a
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->is2StepVerification()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 3284
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isAuthenticatedWithBiometric(I)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string/jumbo p0, "shouldListenForFingerprint ( return false, authenticated with biometric)"

    .line 3285
    invoke-static {v7, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3290
    :cond_b
    const-class v1, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-interface {v1}, Lcom/android/systemui/knox/KnoxStateMonitor;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v1

    if-eqz v1, :cond_c

    const-string/jumbo p0, "shouldListenForFingerprint ( return false, device is locked by administrator )"

    .line 3291
    invoke-static {v7, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3296
    :cond_c
    const-class v1, Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_d

    const-string/jumbo p0, "shouldListenForFingerprint ( return false, dependency class destroy)"

    .line 3297
    invoke-static {v7, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3302
    :cond_d
    sget-boolean v1, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_COVER:Z

    if-eqz v1, :cond_e

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mForceStartFinger:Z

    if-nez v1, :cond_e

    const-class v1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 3304
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {v1}, Lcom/android/systemui/keyguard/DisplayLifecycle;->isFolderOpened()Z

    move-result v1

    if-nez v1, :cond_e

    const-string/jumbo p0, "shouldListenForFingerprint ( return false, folder is closed )"

    .line 3305
    invoke-static {v7, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3310
    :cond_e
    invoke-virtual {v3}, Lcom/android/systemui/util/SettingsHelper;->isScreenOffMemoEnabled()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->isScreenOffMemoRunning()Z

    move-result v1

    if-eqz v1, :cond_f

    const-string/jumbo p0, "shouldListenForFingerprint ( return false, because Screen off Memo is running. )"

    .line 3311
    invoke-static {v7, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3316
    :cond_f
    sget-boolean v1, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_SIDE:Z

    if-eqz v1, :cond_10

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsShowingKeepScreenOnPopup:Z

    if-eqz v1, :cond_10

    const-string/jumbo p0, "shouldListenForFingerprint ( return false, because keep screen on popup is showing. )"

    .line 3317
    invoke-static {v7, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3322
    :cond_10
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    invoke-virtual {v1, v5}, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;->isUnlockingWithBiometricAllowed(Z)Z

    move-result v1

    if-nez v1, :cond_11

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    if-eqz v1, :cond_11

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardOccluded:Z

    if-eqz v1, :cond_11

    const-string/jumbo p0, "shouldListenForFingerprint ( return false, strong auth with occluded )"

    .line 3323
    invoke-static {v7, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3329
    :cond_11
    sget-boolean v1, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY:Z

    if-eqz v1, :cond_23

    .line 3331
    sget-object v1, Lcom/android/systemui/noticenter/NotiCenterPlugin;->INSTANCE:Lcom/android/systemui/noticenter/NotiCenterPlugin;

    invoke-virtual {v1}, Lcom/android/systemui/noticenter/NotiCenterPlugin;->isNotiCenterPluginConnected()Z

    move-result v1

    if-eqz v1, :cond_12

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsNotiStarShown:Z

    if-eqz v1, :cond_12

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBouncer:Z

    if-nez v1, :cond_12

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    if-eqz v1, :cond_12

    const-string/jumbo p0, "shouldListenForFingerprint ( return false, NotiStar is shown )"

    .line 3333
    invoke-static {v7, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3338
    :cond_12
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBouncer:Z

    const-string v4, " )"

    if-nez v1, :cond_13

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsShadeLockedState:Z

    if-nez v1, :cond_14

    :cond_13
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsFaceWidgetFullScreenMode:Z

    if-eqz v1, :cond_15

    .line 3339
    :cond_14
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "shouldListenForFingerprint ( return false, because mIsShadeLockedState = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsShadeLockedState:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", or mIsFaceWidgetFullScreen="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsFaceWidgetFullScreenMode:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3346
    :cond_15
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    invoke-virtual {v1, v5}, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;->isUnlockingWithBiometricAllowed(Z)Z

    move-result v1

    if-nez v1, :cond_16

    const-string/jumbo p0, "shouldListenForFingerprint ( return false, strong auth with in-display fingerprint)"

    .line 3347
    invoke-static {v7, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3353
    :cond_16
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsShortcutPreviewShowing:Z

    if-eqz v1, :cond_17

    const-string/jumbo p0, "shouldListenForFingerprint ( return false, shortcut preview is showing )"

    .line 3354
    invoke-static {v7, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3359
    :cond_17
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBouncer:Z

    if-nez v1, :cond_18

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsPanelExpandingStarted:Z

    if-eqz v1, :cond_18

    const-string/jumbo p0, "shouldListenForFingerprint ( return false, quick panel is showing )"

    .line 3360
    invoke-static {v7, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3365
    :cond_18
    invoke-virtual {v3}, Lcom/android/systemui/util/SettingsHelper;->isOneHandModeRunning()Z

    move-result v1

    if-eqz v1, :cond_19

    const-string/jumbo p0, "shouldListenForFingerprint ( return false, one hand mode is running)"

    .line 3366
    invoke-static {v7, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3371
    :cond_19
    iget v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCocktailBarWindowType:I

    const/4 v6, 0x2

    if-ne v1, v6, :cond_1a

    const-string/jumbo p0, "shouldListenForFingerprint ( return false, the cocktail bar is expanded)"

    .line 3372
    invoke-static {v7, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3377
    :cond_1a
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    if-eqz v1, :cond_1b

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardIsVisible:Z

    if-eqz v1, :cond_1b

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v1

    if-eqz v1, :cond_1b

    const-string/jumbo p0, "shouldListenForFingerprint ( return false, getUserHasTrust() is true)"

    .line 3378
    invoke-static {v7, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3383
    :cond_1b
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    if-eqz v1, :cond_1c

    const-string/jumbo p0, "shouldListenForFingerprint ( return false, this process is for the sub-user)"

    .line 3384
    invoke-static {v7, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3389
    :cond_1c
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    if-nez v1, :cond_1d

    iget v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPhoneState:I

    if-eqz v1, :cond_1d

    .line 3390
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "shouldListenForFingerprint ( return false, Calling state is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPhoneState:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3396
    :cond_1d
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBouncer:Z

    if-nez v1, :cond_1e

    .line 3397
    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->isDynamicLockViewMode()Z

    move-result v1

    if-eqz v1, :cond_1e

    const-string p0, "KeyguardUpdateMonitor"

    const-string/jumbo p1, "shouldListenForFingerprint ( return false, DynamicLockViewMode"

    .line 3398
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3404
    :cond_1e
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    if-eqz v1, :cond_1f

    iget-boolean v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsDialogShowing:Z

    if-eqz v4, :cond_1f

    const-string/jumbo p0, "shouldListenForFingerprint ( return false, dialog is showing )"

    .line 3405
    invoke-static {v7, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3410
    :cond_1f
    iget-boolean v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBouncer:Z

    if-eqz v4, :cond_20

    iget-boolean v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSIPShown:Z

    if-eqz v6, :cond_20

    const-string/jumbo p0, "shouldListenForFingerprint ( return false, SIP is showing )"

    .line 3411
    invoke-static {v7, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_20
    if-eqz v1, :cond_21

    if-nez v4, :cond_21

    .line 3416
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardShowing:Z

    if-eqz v1, :cond_21

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHasFocus:Z

    if-nez v1, :cond_21

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mWaitingFocusRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 3417
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/DesktopManager;

    invoke-virtual {v1}, Lcom/android/systemui/util/DesktopManager;->isDesktopMode()Z

    move-result v1

    if-nez v1, :cond_21

    const-string/jumbo p0, "shouldListenForFingerprint ( return false, Not focus on NotificationShade )"

    .line 3418
    invoke-static {v7, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3423
    :cond_21
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/DesktopManager;

    invoke-virtual {p1}, Lcom/android/systemui/util/DesktopManager;->isDesktopMode()Z

    move-result p1

    if-eqz p1, :cond_22

    .line 3424
    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->isFpStopRequested()Z

    move-result p1

    if-eqz p1, :cond_22

    const-string/jumbo p0, "shouldListenForFingerprint ( return false, Stop request on dex mode )"

    .line 3425
    invoke-static {v7, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3430
    :cond_22
    invoke-virtual {v3}, Lcom/android/systemui/util/SettingsHelper;->isEnabledFaceStayOnLock()Z

    move-result p1

    if-eqz p1, :cond_23

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFaceAuthenticated(I)Z

    move-result p1

    if-eqz p1, :cond_23

    .line 3431
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFaceStrongBiometric(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed(Z)Z

    move-result p0

    if-eqz p0, :cond_23

    const-string/jumbo p0, "shouldListenForFingerprint ( return false, LockStay is true)"

    .line 3432
    invoke-static {v7, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_23
    return v5

    :cond_24
    return v2
.end method

.method public stopListeningForFingerprint()V
    .locals 3

    const-string v0, "KeyguardUpdateMonitor"

    const-string/jumbo v1, "stopListeningForFingerprint()"

    .line 3970
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3972
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintCancelSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    .line 3974
    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    const/4 v0, 0x0

    .line 3975
    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintCancelSignal:Landroid/os/CancellationSignal;

    :cond_0
    const/4 v0, 0x0

    .line 3980
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFingerprintRunningState(I)V

    .line 3981
    sget-boolean v1, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_SIDE:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsSkipFPResponse:Z

    if-eqz v1, :cond_1

    .line 3982
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTimeoutSkipFPResponse:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3983
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsSkipFPResponse:Z

    const-string p0, "KeyguardFingerPrint"

    const-string/jumbo v0, "skip FP response canceled by stopListeningForFingerprint"

    .line 3984
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public updateBiometricListeningState()V
    .locals 3

    .line 3028
    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_BINDER_CALL_MONITOR:Z

    new-instance v1, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda20;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda20;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    invoke-static {v0, v1}, Lcom/android/systemui/Rune;->runIf(ZLjava/lang/Runnable;)V

    const-string v0, "KeyguardUpdateMonitor"

    const-string/jumbo v1, "updateBiometricListeningState()"

    .line 3032
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3034
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mAuthHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 3035
    new-instance v0, Landroid/os/HandlerThread;

    const/16 v1, 0xa

    const-string v2, "mAuthHandler"

    invoke-direct {v0, v2, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 3037
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 3038
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mAuthHandler:Landroid/os/Handler;

    .line 3041
    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBiometricsFingerprint:Z

    if-eqz v0, :cond_1

    .line 3042
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 3044
    :cond_1
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBiometricsFace:Z

    if-eqz v0, :cond_2

    .line 3045
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFaceListeningState()V

    :cond_2
    return-void
.end method

.method public updateCarrierTextInfo()V
    .locals 2

    const-string v0, "KeyguardUpdateMonitor"

    const-string/jumbo v1, "updateCarrierTextInfo"

    .line 5639
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5642
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x451

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5643
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5646
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public updateFaceListeningState()V
    .locals 1

    .line 3156
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->shouldListenForFace()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3157
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->startListeningForFace()V

    goto :goto_0

    .line 3159
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopListeningForFace()V

    :goto_0
    return-void
.end method

.method public updateFingerprintListeningState()V
    .locals 6

    .line 3056
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x150

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3061
    :cond_0
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateUdfpsEnrolled(I)V

    .line 3062
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUdfpsEnrolled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->shouldListenForFingerprint(Z)Z

    move-result v0

    .line 3063
    iget v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintRunningState:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    const/4 v4, 0x3

    if-ne v1, v4, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v3

    .line 3065
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateFingerprintListeningState#mFingerprintRunningState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintRunningState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " shouldListenForFingerprint="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " isUdfpsEnrolled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3067
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUdfpsEnrolled()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " bioType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getBiometricType(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "KeyguardFingerPrint"

    .line 3065
    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_4

    if-nez v0, :cond_4

    .line 3070
    iget v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintRunningState:I

    if-ne v1, v3, :cond_7

    .line 3071
    sget-boolean v1, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY_OPTICAL:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardShowing:Z

    if-nez v1, :cond_3

    .line 3072
    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->removeMaskViewForOpticalFpSensor()V

    .line 3074
    :cond_3
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopListeningForFingerprint()V

    goto :goto_2

    :cond_4
    if-nez v1, :cond_6

    if-eqz v0, :cond_6

    .line 3080
    sget-boolean v1, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY_OPTICAL:Z

    if-eqz v1, :cond_5

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->getSettingsHelper()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isOneHandModeRunning()Z

    move-result v1

    if-nez v1, :cond_5

    .line 3082
    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->addMaskViewForOpticalFpSensor()V

    .line 3084
    :cond_5
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->startListeningForFingerprint()V

    goto :goto_2

    :cond_6
    if-nez v1, :cond_7

    if-nez v0, :cond_7

    .line 3086
    sget-boolean v1, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY_OPTICAL:Z

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintOptionEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 3087
    sget-boolean v1, Lcom/android/systemui/LsRune;->COVER_SUPPORTED:Z

    if-eqz v1, :cond_7

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->isCoverClosed()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardShowing:Z

    if-eqz v1, :cond_7

    .line 3088
    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->addMaskViewForOpticalFpSensor()V

    .line 3093
    :cond_7
    :goto_2
    sget-boolean v1, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY:Z

    if-eqz v1, :cond_a

    if-eqz v0, :cond_a

    .line 3095
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mGoingToSleep:Z

    if-eqz v0, :cond_9

    :cond_8
    move v2, v3

    .line 3096
    :cond_9
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpInDisplayState:I

    if-eq v0, v2, :cond_a

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_a

    .line 3097
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mFpInDisplayState is changed : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpInDisplayState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3098
    iput v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpInDisplayState:I

    .line 3099
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p0, v2}, Landroid/hardware/fingerprint/FingerprintManager;->semSetScreenStatus(I)I

    :cond_a
    return-void
.end method

.method public updateRemoteLockInfo(Lcom/android/internal/widget/RemoteLockInfo;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 5293
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mRemoteLockInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 5294
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mRemoteLockInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/RemoteLockInfo;

    iget v2, v2, Lcom/android/internal/widget/RemoteLockInfo;->lockType:I

    iget v3, p1, Lcom/android/internal/widget/RemoteLockInfo;->lockType:I

    if-ne v2, v3, :cond_0

    .line 5295
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mRemoteLockInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/RemoteLockInfo;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5299
    :cond_1
    iget-boolean v1, p1, Lcom/android/internal/widget/RemoteLockInfo;->lockState:Z

    if-eqz v1, :cond_2

    .line 5300
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mRemoteLockInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5302
    :cond_2
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateActiveRemoteLockIndex()V

    .line 5303
    invoke-virtual {p1, v0}, Lcom/android/internal/widget/RemoteLockInfo;->diff(Lcom/android/internal/widget/RemoteLockInfo;)I

    move-result p1

    .line 5304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateRemoteLockInfo() diff="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUpdateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3

    .line 5306
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 p1, 0x452

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_3
    return-void
.end method

.method public updateSIPShownState(Z)V
    .locals 2

    .line 6133
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSIPShown:Z

    if-eq v0, p1, :cond_0

    .line 6134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateSIPShownState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUpdateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6135
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSIPShown:Z

    .line 6136
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintOptionEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6137
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    :cond_0
    return-void
.end method

.method public updateSecurityModeChanged(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .locals 1

    .line 5656
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, p1, :cond_0

    .line 5657
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 5658
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x453

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method updateTelephonyCapable(Z)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4304
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 4305
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTelephonyCapable:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 4308
    :cond_0
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTelephonyCapable:Z

    .line 4310
    new-instance p1, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda50;

    invoke-direct {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda50;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    invoke-interface {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->dispatchCallback(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public userNeedsStrongAuth()Z
    .locals 1

    .line 1854
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getStrongAuthForUser(I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
