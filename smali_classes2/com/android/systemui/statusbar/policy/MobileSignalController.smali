.class public Lcom/android/systemui/statusbar/policy/MobileSignalController;
.super Lcom/android/systemui/statusbar/policy/SignalController;
.source "MobileSignalController.java"

# interfaces
.implements Lcom/android/systemui/util/SystemUIImsManager$ImsRegStateChangedCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/MobileSignalController$SignalUpdateHandler;,
        Lcom/android/systemui/statusbar/policy/MobileSignalController$CellLocationCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/statusbar/policy/SignalController<",
        "Lcom/android/settingslib/SignalIcon$MobileState;",
        "Lcom/android/settingslib/SignalIcon$MobileIconGroup;",
        ">;",
        "Lcom/android/systemui/util/SystemUIImsManager$ImsRegStateChangedCallback;"
    }
.end annotation


# static fields
.field private static final SSDF:Ljava/text/SimpleDateFormat;


# instance fields
.field private final LTE_ON_CDMA_TRUE:I

.field private mBootDataSvcAcquired:Z

.field private mBootVoiceSvcAcquired:Z

.field private mCallback:Lcom/android/settingslib/mobile/MobileStatusTracker$Callback;

.field mCardOperatorUpdateUtil:Lcom/android/systemui/statusbar/utils/CardOperatorUpdateUtil;

.field private final mCarrierConfigTracker:Lcom/android/systemui/util/CarrierConfigTracker;

.field mCellLocationCallback:Lcom/android/systemui/statusbar/policy/MobileSignalController$CellLocationCallback;

.field private mConfig:Lcom/android/settingslib/mobile/MobileMappings$Config;

.field private mCurSvcSate:I

.field private mCurrentSignalStrength:I

.field private mDataState:I

.field private mDefaultIcons:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field private final mDefaults:Lcom/android/settingslib/mobile/MobileStatusTracker$SubscriptionDefaults;

.field private mEpdgConnected:Z

.field private mHandler:Landroid/os/Handler;

.field private mHasVoWifiPlmn:Z

.field private final mImsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

.field private mImsType:I

.field mIndicatorRuneWrapper:Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;

.field mInflateSignalStrengths:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mIsAnotherSlotCallingState:Z

.field private mIsAnotherSlotCtcCard:Z

.field private mIsLteOnCdma:Z

.field mIsPLMNbyIntent:Z

.field private mLastLevel:I

.field private mLastWlanCrossSimLevel:I

.field private mLastWlanLevel:I

.field private mLastWwanLevel:I

.field mLatinNetworkNameUtil:Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;

.field mLocationController:Lcom/android/systemui/statusbar/policy/LocationController;

.field private mMobileDataObserver:Landroid/database/ContentObserver;

.field mMobileDataResource:Lcom/android/systemui/statusbar/utils/MobileDataResource;

.field mMobileSignalResource:Lcom/android/systemui/statusbar/utils/MobileSignalResource;

.field private final mMobileStatusHistory:[Ljava/lang/String;

.field private mMobileStatusHistoryIndex:I

.field mMobileStatusTracker:Lcom/android/settingslib/mobile/MobileStatusTracker;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mNWBoosterObserver:Landroid/database/ContentObserver;

.field mNetworkDependency:Lcom/android/systemui/statusbar/NetworkDependency;

.field private mNetworkNameDefault:Ljava/lang/String;

.field private final mNetworkNameSeparator:Ljava/lang/String;

.field mNetworkToIconLookup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settingslib/SignalIcon$MobileIconGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final mObserver:Landroid/database/ContentObserver;

.field mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

.field private final mPhone:Landroid/telephony/TelephonyManager;

.field private mPreSvcSate:I

.field private final mProviderModelBehavior:Z

.field private final mProviderModelSetting:Z

.field private final mReceiverHandler:Landroid/os/Handler;

.field private mRegistrationCallback:Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

.field mRoamingResource:Lcom/android/systemui/statusbar/utils/RoamingResource;

.field private mServiceState:Landroid/telephony/ServiceState;

.field private mSignalStrength:Landroid/telephony/SignalStrength;

.field private mSlotId:I

.field private mSubId:I

.field final mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

.field private mTargetSignalStrength:I

.field private mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

.field private mTransitionState:Z

.field private final mTryRegisterIms:Ljava/lang/Runnable;

.field private mVoLTEConnected:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 128
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->SSDF:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/mobile/MobileMappings$Config;ZLandroid/telephony/TelephonyManager;Lcom/android/systemui/statusbar/policy/CallbackHandler;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Landroid/telephony/SubscriptionInfo;Lcom/android/settingslib/mobile/MobileStatusTracker$SubscriptionDefaults;Landroid/os/Looper;Lcom/android/systemui/util/CarrierConfigTracker;Lcom/android/systemui/statusbar/FeatureFlags;Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;Lcom/android/systemui/statusbar/NetworkDependency;Lcom/android/systemui/statusbar/policy/LocationController;)V
    .locals 14

    move-object v6, p0

    move/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p9

    move-object/from16 v10, p14

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MobileSignalController("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p7 .. p7}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ")"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/policy/SignalController;-><init>(Ljava/lang/String;Landroid/content/Context;ILcom/android/systemui/statusbar/policy/CallbackHandler;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    const/4 v12, 0x1

    .line 143
    iput v12, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mImsType:I

    const/4 v13, 0x0

    .line 152
    iput v13, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataState:I

    .line 153
    new-instance v0, Landroid/telephony/TelephonyDisplayInfo;

    invoke-direct {v0, v13, v13}, Landroid/telephony/TelephonyDisplayInfo;-><init>(II)V

    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    .line 161
    iput-boolean v13, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mInflateSignalStrengths:Z

    const/16 v0, 0x40

    new-array v0, v0, [Ljava/lang/String;

    .line 172
    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mMobileStatusHistory:[Ljava/lang/String;

    .line 184
    iput-boolean v13, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mBootDataSvcAcquired:Z

    .line 185
    iput-boolean v13, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mBootVoiceSvcAcquired:Z

    .line 189
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController$1;-><init>(Lcom/android/systemui/statusbar/policy/MobileSignalController;Landroid/os/Handler;)V

    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mMobileDataObserver:Landroid/database/ContentObserver;

    .line 206
    iput v13, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentSignalStrength:I

    .line 208
    iput v13, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurSvcSate:I

    .line 210
    iput v13, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPreSvcSate:I

    .line 212
    iput v13, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTargetSignalStrength:I

    .line 214
    iput-boolean v13, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTransitionState:Z

    .line 217
    iput v12, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->LTE_ON_CDMA_TRUE:I

    .line 221
    iput-boolean v13, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mIsAnotherSlotCallingState:Z

    .line 225
    iput-boolean v13, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mIsLteOnCdma:Z

    .line 231
    iput-boolean v13, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mEpdgConnected:Z

    .line 546
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController$5;-><init>(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V

    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTryRegisterIms:Ljava/lang/Runnable;

    .line 1646
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$CellLocationCallback;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController$CellLocationCallback;-><init>(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V

    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCellLocationCallback:Lcom/android/systemui/statusbar/policy/MobileSignalController$CellLocationCallback;

    .line 1677
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$6;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController$6;-><init>(Lcom/android/systemui/statusbar/policy/MobileSignalController;Landroid/os/Handler;)V

    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNWBoosterObserver:Landroid/database/ContentObserver;

    .line 255
    invoke-virtual/range {p12 .. p12}, Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;->supportNetworkDebugInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    invoke-virtual/range {p7 .. p7}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    iput v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubId:I

    .line 257
    invoke-virtual/range {p7 .. p7}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v0

    iput v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkController.MobileSignalController("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    :cond_0
    move-object/from16 v0, p10

    .line 261
    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCarrierConfigTracker:Lcom/android/systemui/util/CarrierConfigTracker;

    move-object/from16 v0, p2

    .line 262
    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/settingslib/mobile/MobileMappings$Config;

    .line 263
    iput-object v8, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    move-object/from16 v4, p8

    .line 264
    iput-object v4, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDefaults:Lcom/android/settingslib/mobile/MobileStatusTracker$SubscriptionDefaults;

    move-object/from16 v3, p7

    .line 265
    iput-object v3, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    .line 266
    sget v0, Lcom/android/systemui/R$string;->status_bar_network_name_separator:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/SignalController;->getTextIfExists(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 267
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkNameSeparator:Ljava/lang/String;

    const v0, 0x104064b

    .line 268
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/SignalController;->getTextIfExists(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 269
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkNameDefault:Ljava/lang/String;

    .line 270
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, v9}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mReceiverHandler:Landroid/os/Handler;

    .line 272
    iget-object v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/settingslib/mobile/MobileMappings$Config;

    invoke-static {v0}, Lcom/android/settingslib/mobile/MobileMappings;->mapIconSets(Lcom/android/settingslib/mobile/MobileMappings$Config;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    .line 273
    iget-object v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/settingslib/mobile/MobileMappings$Config;

    invoke-static {v0}, Lcom/android/settingslib/mobile/MobileMappings;->getDefaultIcons(Lcom/android/settingslib/mobile/MobileMappings$Config;)Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    move-result-object v0

    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDefaultIcons:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 275
    invoke-virtual/range {p12 .. p12}, Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;->customeNetwork()Z

    move-result v0

    move-object/from16 v11, p12

    if-eqz v0, :cond_1

    .line 276
    iput-object v11, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mIndicatorRuneWrapper:Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;

    move-object/from16 v0, p13

    .line 277
    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    .line 278
    iput-object v10, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkDependency:Lcom/android/systemui/statusbar/NetworkDependency;

    .line 280
    const-class v0, Lcom/android/systemui/statusbar/utils/MobileDataResource;

    invoke-virtual {v10, v0}, Lcom/android/systemui/statusbar/NetworkDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/utils/MobileDataResource;

    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mMobileDataResource:Lcom/android/systemui/statusbar/utils/MobileDataResource;

    .line 281
    iget-object v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkDependency:Lcom/android/systemui/statusbar/NetworkDependency;

    const-class v1, Lcom/android/systemui/statusbar/utils/MobileSignalResource;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NetworkDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/utils/MobileSignalResource;

    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mMobileSignalResource:Lcom/android/systemui/statusbar/utils/MobileSignalResource;

    .line 282
    iget-object v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkDependency:Lcom/android/systemui/statusbar/NetworkDependency;

    const-class v1, Lcom/android/systemui/statusbar/utils/RoamingResource;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NetworkDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/utils/RoamingResource;

    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mRoamingResource:Lcom/android/systemui/statusbar/utils/RoamingResource;

    .line 283
    iget-object v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkDependency:Lcom/android/systemui/statusbar/NetworkDependency;

    const-class v1, Lcom/android/systemui/statusbar/utils/CardOperatorUpdateUtil;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NetworkDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/utils/CardOperatorUpdateUtil;

    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCardOperatorUpdateUtil:Lcom/android/systemui/statusbar/utils/CardOperatorUpdateUtil;

    .line 286
    :cond_1
    sget-boolean v0, Lcom/android/systemui/BasicRune;->STATUS_NETWORK_MULTI_SIM:Z

    if-eqz v0, :cond_2

    .line 287
    iget-object v0, v6, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v0, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-object v1, v6, Lcom/android/systemui/statusbar/policy/SignalController;->mContext:Landroid/content/Context;

    iget v2, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    invoke-static {v1, v2}, Lcom/android/systemui/util/DeviceState;->getSimSettingState(Landroid/content/Context;I)I

    move-result v1

    iput v1, v0, Lcom/android/settingslib/SignalIcon$MobileState;->simCardActivated:I

    .line 291
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isDummySubId()Z

    move-result v0

    if-nez v0, :cond_3

    .line 292
    iget-object v0, v6, Lcom/android/systemui/statusbar/policy/SignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->displayInfos:[Landroid/telephony/TelephonyDisplayInfo;

    iget v2, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    aget-object v1, v1, v2

    iput-object v1, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    .line 293
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->serviceState:[Landroid/telephony/ServiceState;

    aget-object v1, v1, v2

    iput-object v1, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    .line 294
    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->signalStrength:[Landroid/telephony/SignalStrength;

    aget-object v0, v0, v2

    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 295
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateDataTypeByOverrideType()V

    .line 296
    iget-object v0, v6, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MobileSignalController create : mTelephonyDisplayInfo= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 299
    :cond_3
    iget v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    invoke-virtual {v8, v0}, Landroid/telephony/TelephonyManager;->semGetServiceState(I)Landroid/telephony/ServiceState;

    move-result-object v0

    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    .line 300
    iget-object v0, v6, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    const-string v1, "MobileSignalController semGetServiceState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :goto_0
    iget-object v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_4

    .line 303
    iget-object v0, v6, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MobileSignalController voiceState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " dataState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    .line 304
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mTelephonyDisplayInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 303
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :cond_4
    invoke-virtual/range {p7 .. p7}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual/range {p7 .. p7}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 310
    :cond_5
    iget-object v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkNameDefault:Ljava/lang/String;

    :goto_1
    move-object v10, v0

    .line 311
    iget-object v0, v6, Lcom/android/systemui/statusbar/policy/SignalController;->mLastState:Lcom/android/settingslib/SignalIcon$State;

    move-object v1, v0

    check-cast v1, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-object v2, v6, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    move-object v5, v2

    check-cast v5, Lcom/android/settingslib/SignalIcon$MobileState;

    iput-object v10, v5, Lcom/android/settingslib/SignalIcon$MobileState;->networkName:Ljava/lang/String;

    iput-object v10, v1, Lcom/android/settingslib/SignalIcon$MobileState;->networkName:Ljava/lang/String;

    .line 312
    move-object v1, v0

    check-cast v1, Lcom/android/settingslib/SignalIcon$MobileState;

    move-object v5, v2

    check-cast v5, Lcom/android/settingslib/SignalIcon$MobileState;

    iput-object v10, v5, Lcom/android/settingslib/SignalIcon$MobileState;->networkNameData:Ljava/lang/String;

    iput-object v10, v1, Lcom/android/settingslib/SignalIcon$MobileState;->networkNameData:Ljava/lang/String;

    .line 313
    move-object v1, v0

    check-cast v1, Lcom/android/settingslib/SignalIcon$MobileState;

    move-object v5, v2

    check-cast v5, Lcom/android/settingslib/SignalIcon$MobileState;

    iput-boolean v7, v5, Lcom/android/settingslib/SignalIcon$State;->enabled:Z

    iput-boolean v7, v1, Lcom/android/settingslib/SignalIcon$State;->enabled:Z

    .line 314
    check-cast v0, Lcom/android/settingslib/SignalIcon$MobileState;

    check-cast v2, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-object v1, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDefaultIcons:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    iput-object v1, v2, Lcom/android/settingslib/SignalIcon$State;->iconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

    iput-object v1, v0, Lcom/android/settingslib/SignalIcon$State;->iconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

    const-string v0, ""

    .line 316
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isDummySubId()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 317
    iget-object v0, v6, Lcom/android/systemui/statusbar/policy/SignalController;->mLastState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v0, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-object v1, v6, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v1, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-object v2, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkNameDefault:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/settingslib/SignalIcon$MobileState;->networkName:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/settingslib/SignalIcon$MobileState;->networkName:Ljava/lang/String;

    .line 319
    :cond_6
    iget-object v0, v6, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set network name from init of MobileSignalController="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v6, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v2, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-object v2, v2, Lcom/android/settingslib/SignalIcon$MobileState;->networkName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->refreshCarrierText()V

    .line 322
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v9}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController$2;-><init>(Lcom/android/systemui/statusbar/policy/MobileSignalController;Landroid/os/Handler;)V

    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mObserver:Landroid/database/ContentObserver;

    .line 330
    iget v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubId:I

    invoke-virtual {v8, v0}, Landroid/telephony/TelephonyManager;->getLteOnCdmaMode(I)I

    move-result v0

    if-ne v0, v12, :cond_7

    move v0, v12

    goto :goto_2

    :cond_7
    move v0, v13

    :goto_2
    iput-boolean v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mIsLteOnCdma:Z

    .line 333
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController$3;-><init>(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V

    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCallback:Lcom/android/settingslib/mobile/MobileStatusTracker$Callback;

    .line 362
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController$4;-><init>(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V

    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mRegistrationCallback:Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

    .line 407
    invoke-virtual/range {p7 .. p7}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/ims/ImsMmTelManager;->createForSubscriptionId(I)Landroid/telephony/ims/ImsMmTelManager;

    move-result-object v0

    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mImsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

    .line 408
    new-instance v7, Lcom/android/settingslib/mobile/MobileStatusTracker;

    iget-object v5, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCallback:Lcom/android/settingslib/mobile/MobileStatusTracker$Callback;

    move-object v0, v7

    move-object/from16 v1, p4

    move-object/from16 v2, p9

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    invoke-direct/range {v0 .. v5}, Lcom/android/settingslib/mobile/MobileStatusTracker;-><init>(Landroid/telephony/TelephonyManager;Landroid/os/Looper;Landroid/telephony/SubscriptionInfo;Lcom/android/settingslib/mobile/MobileStatusTracker$SubscriptionDefaults;Lcom/android/settingslib/mobile/MobileStatusTracker$Callback;)V

    iput-object v7, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mMobileStatusTracker:Lcom/android/settingslib/mobile/MobileStatusTracker;

    .line 410
    invoke-virtual/range {p12 .. p12}, Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;->supportNetworkDebugInfo()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 411
    iget-object v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mMobileStatusTracker:Lcom/android/settingslib/mobile/MobileStatusTracker;

    iget v1, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    invoke-virtual {v0, v12, v1}, Lcom/android/settingslib/mobile/MobileStatusTracker;->enableLog(ZI)V

    .line 413
    :cond_8
    invoke-virtual/range {p11 .. p11}, Lcom/android/systemui/statusbar/FeatureFlags;->isCombinedStatusBarSignalIconsEnabled()Z

    move-result v0

    iput-boolean v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mProviderModelBehavior:Z

    .line 414
    invoke-virtual/range {p11 .. p11}, Lcom/android/systemui/statusbar/FeatureFlags;->isProviderModelSettingEnabled()Z

    move-result v0

    iput-boolean v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mProviderModelSetting:Z

    .line 423
    iget-object v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object v1, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->SUPPORT_LTE_WIDE_BAND_ICON:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    iget v2, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    new-array v3, v13, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 424
    iget-object v0, v6, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v0, Lcom/android/settingslib/SignalIcon$MobileState;

    const-string/jumbo v1, "ril.lteCaStatus"

    invoke-static {v1, v13}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/settingslib/SignalIcon$MobileState;->ca:Z

    .line 428
    :cond_9
    iget-object v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object v1, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->NEED_TO_APPLY_CONFIG_RULE_FOR_SHOW_PLMN:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    const/4 v2, -0x1

    new-array v3, v13, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    if-eqz v10, :cond_a

    .line 430
    const-class v0, Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;

    .line 431
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getIndicatorCarrierPlmnText()Ljava/lang/String;

    move-result-object v1

    .line 430
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;->updateCarrierPlmnText(Ljava/lang/String;)V

    .line 434
    :cond_a
    iget-object v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mIndicatorRuneWrapper:Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;->showSignalInEmergencyOnly()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object v1, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->NEED_TO_CHECK_ONE_LEVEL_PER_SEC:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    iget v2, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    new-array v3, v13, [Ljava/lang/Object;

    .line 435
    invoke-interface {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 436
    :cond_b
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$SignalUpdateHandler;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController$SignalUpdateHandler;-><init>(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V

    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mHandler:Landroid/os/Handler;

    .line 440
    :cond_c
    iget v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    const-string/jumbo v1, "persist.sys.softsim.status"

    const-string v2, "default"

    invoke-static {v1, v0, v2}, Lcom/android/systemui/util/DeviceState;->getMSimSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "activating"

    .line 441
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "activated"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    :cond_d
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isDummySubId()Z

    move-result v1

    if-nez v1, :cond_e

    .line 442
    iget-object v1, v6, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MobileSignalController softSimState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    iget-object v0, v6, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v0, Lcom/android/settingslib/SignalIcon$MobileState;

    iput-boolean v12, v0, Lcom/android/settingslib/SignalIcon$MobileState;->swRoaming:Z

    :cond_e
    move-object/from16 v0, p15

    .line 448
    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLocationController:Lcom/android/systemui/statusbar/policy/LocationController;

    .line 449
    new-instance v0, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;

    iget v1, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;-><init>(I)V

    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLatinNetworkNameUtil:Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;

    .line 450
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->listenLocationInfoIfNecessary()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V
    .locals 0

    .line 126
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateTelephony()V

    return-void
.end method

.method static synthetic access$100()Ljava/text/SimpleDateFormat;
    .locals 1

    .line 126
    sget-object v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->SSDF:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Landroid/os/Handler;
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mReceiverHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Landroid/telephony/ims/RegistrationManager$RegistrationCallback;
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mRegistrationCallback:Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Landroid/telephony/ims/ImsMmTelManager;
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mImsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Ljava/lang/Runnable;
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTryRegisterIms:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Landroid/telephony/TelephonyDisplayInfo;
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Landroid/telephony/ServiceState;
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/policy/MobileSignalController;)I
    .locals 0

    .line 126
    iget p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    return p0
.end method

.method static synthetic access$1700(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V
    .locals 0

    .line 126
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateSignalOneLevelPerSec()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/MobileSignalController;Ljava/lang/String;)V
    .locals 0

    .line 126
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->recordLastMobileStatus(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/MobileSignalController;Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;)V
    .locals 0

    .line 126
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateMobileStatus(Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;)V

    return-void
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/policy/MobileSignalController;I)I
    .locals 0

    .line 126
    iput p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mImsType:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/policy/MobileSignalController;)I
    .locals 0

    .line 126
    iget p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastWwanLevel:I

    return p0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/policy/MobileSignalController;IZ)I
    .locals 0

    .line 126
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getCallStrengthIcon(IZ)I

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/policy/MobileSignalController;IZ)Ljava/lang/String;
    .locals 0

    .line 126
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getCallStrengthDescription(IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/policy/MobileSignalController;)I
    .locals 0

    .line 126
    iget p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastWlanLevel:I

    return p0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/policy/MobileSignalController;)I
    .locals 0

    .line 126
    iget p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastWlanCrossSimLevel:I

    return p0
.end method

.method private checkDefaultData()V
    .locals 3

    .line 1537
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    move-object v1, v0

    check-cast v1, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-object v1, v1, Lcom/android/settingslib/SignalIcon$State;->iconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

    sget-object v2, Lcom/android/settingslib/mobile/TelephonyIcons;->NOT_DEFAULT_DATA:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    if-eq v1, v2, :cond_0

    .line 1538
    check-cast v0, Lcom/android/settingslib/SignalIcon$MobileState;

    const/4 p0, 0x0

    iput-boolean p0, v0, Lcom/android/settingslib/SignalIcon$MobileState;->defaultDataOff:Z

    return-void

    .line 1542
    :cond_0
    check-cast v0, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isDataControllerDisabled()Z

    move-result p0

    iput-boolean p0, v0, Lcom/android/settingslib/SignalIcon$MobileState;->defaultDataOff:Z

    return-void
.end method

.method private getCallStrengthDescription(IZ)Ljava/lang/String;
    .locals 0

    if-eqz p2, :cond_0

    .line 1234
    sget-object p2, Lcom/android/settingslib/AccessibilityContentDescriptions;->WIFI_CONNECTION_STRENGTH:[I

    aget p1, p2, p1

    .line 1233
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/SignalController;->getTextIfExists(I)Ljava/lang/CharSequence;

    move-result-object p0

    .line 1234
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 1236
    :cond_0
    sget-object p2, Lcom/android/settingslib/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget p1, p2, p1

    .line 1235
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/SignalController;->getTextIfExists(I)Ljava/lang/CharSequence;

    move-result-object p0

    .line 1236
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private getCallStrengthIcon(IZ)I
    .locals 0

    if-eqz p2, :cond_0

    .line 1227
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->WIFI_CALL_STRENGTH_ICONS:[I

    aget p0, p0, p1

    goto :goto_0

    .line 1228
    :cond_0
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->MOBILE_CALL_STRENGTH_ICONS:[I

    aget p0, p0, p1

    :goto_0
    return p0
.end method

.method private getCdmaLevel(Landroid/telephony/SignalStrength;)I
    .locals 1

    .line 1165
    const-class p0, Landroid/telephony/CellSignalStrengthCdma;

    .line 1166
    invoke-virtual {p1, p0}, Landroid/telephony/SignalStrength;->getCellSignalStrengths(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    .line 1167
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1168
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/CellSignalStrengthCdma;

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getLevel()I

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method private getCurrentRSSIState()I
    .locals 0

    .line 1845
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->hasService()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private getCurrentSignalStrengthIcon()I
    .locals 4

    .line 1812
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object v1, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->NEED_TO_CHECK_ONE_LEVEL_PER_SEC:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1813
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTransitionState:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v0, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v0, v0, Lcom/android/settingslib/SignalIcon$State;->connected:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurSvcSate:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 1816
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateSignalOneLevelPerSec()V

    goto :goto_1

    .line 1814
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v0, Lcom/android/settingslib/SignalIcon$MobileState;

    iget v0, v0, Lcom/android/settingslib/SignalIcon$State;->level:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTargetSignalStrength:I

    .line 1818
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mMobileSignalResource:Lcom/android/systemui/statusbar/utils/MobileSignalResource;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v1, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTransitionState:Z

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentSignalStrength:I

    iget p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/android/systemui/statusbar/utils/MobileSignalResource;->getCurrentSignalStrengthIconOneLevelPerSec(Lcom/android/settingslib/SignalIcon$MobileState;ZII)I

    move-result p0

    return p0

    .line 1821
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mMobileSignalResource:Lcom/android/systemui/statusbar/utils/MobileSignalResource;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v1, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    .line 1822
    invoke-virtual {v2}, Landroid/telephony/TelephonyDisplayInfo;->getNetworkType()I

    move-result v2

    iget p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    .line 1821
    invoke-virtual {v0, v1, v2, p0}, Lcom/android/systemui/statusbar/utils/MobileSignalResource;->getCurrentSignalStrengthIcon(Lcom/android/settingslib/SignalIcon$MobileState;II)I

    move-result p0

    return p0
.end method

.method private getDataActivityString(ZZ)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    const-string p0, "inout"

    return-object p0

    :cond_0
    const-string p0, "in"

    return-object p0

    :cond_1
    if-eqz p2, :cond_2

    const-string/jumbo p0, "out"

    return-object p0

    :cond_2
    const-string p0, ""

    return-object p0
.end method

.method private getIndicatorCarrierPlmnText()Ljava/lang/String;
    .locals 3

    .line 1598
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    move-object v1, v0

    check-cast v1, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-object v1, v1, Lcom/android/settingslib/SignalIcon$MobileState;->networkName:Ljava/lang/String;

    const-string v2, ""

    if-eqz v1, :cond_2

    .line 1599
    check-cast v0, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-object v0, v0, Lcom/android/settingslib/SignalIcon$MobileState;->networkName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkNameDefault:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1600
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v0, Lcom/android/settingslib/SignalIcon$MobileState;

    iput-object v2, v0, Lcom/android/settingslib/SignalIcon$MobileState;->networkName:Ljava/lang/String;

    .line 1602
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v0, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-object v0, v0, Lcom/android/settingslib/SignalIcon$MobileState;->networkName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x13

    if-le v0, v1, :cond_1

    .line 1603
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast p0, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-object p0, p0, Lcom/android/settingslib/SignalIcon$MobileState;->networkName:Ljava/lang/String;

    const/4 v1, 0x0

    const/16 v2, 0x12

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "..."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1605
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast p0, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-object v2, p0, Lcom/android/settingslib/SignalIcon$MobileState;->networkName:Ljava/lang/String;

    :cond_2
    :goto_0
    return-object v2
.end method

.method private getNumLevels()I
    .locals 0

    .line 610
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mInflateSignalStrengths:Z

    if-eqz p0, :cond_0

    .line 611
    invoke-static {}, Landroid/telephony/CellSignalStrength;->getNumSignalStrengthLevels()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0

    .line 613
    :cond_0
    invoke-static {}, Landroid/telephony/CellSignalStrength;->getNumSignalStrengthLevels()I

    move-result p0

    return p0
.end method

.method private hasService()Z
    .locals 8

    .line 1736
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 1737
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->shouldDisplayNoService()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 1740
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mIndicatorRuneWrapper:Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;->showSignalInEmergencyOnly()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 1741
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isEmergencyOnly()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object v3, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->SUPPORT_SIGNAL_ICON_AT_EMERGENCY_ONLY:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    new-array v5, v1, [Ljava/lang/Object;

    .line 1742
    invoke-interface {v0, v3, v4, v5}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1743
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Display signal bar by emergency only["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isEmergencyOnly()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "]["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    iget p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    new-array v1, v1, [Ljava/lang/Object;

    .line 1744
    invoke-interface {v5, v3, p0, v1}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1743
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 1748
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v0

    if-eq v0, v2, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 p0, 0x3

    if-eq v0, p0, :cond_2

    return v2

    :cond_2
    return v1

    .line 1755
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object v3, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->SIGNAL_COMBINED_WITH_DATA_REG:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    new-array v5, v1, [Ljava/lang/Object;

    invoke-interface {v0, v3, v4, v5}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1756
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object v3, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->SIGNAL_FROM_DAT_REG_IN_OPPORTUNISTIC:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    new-array v5, v1, [Ljava/lang/Object;

    invoke-interface {v0, v3, v4, v5}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1759
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->isOpportunistic()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    move v0, v2

    goto :goto_0

    :cond_5
    move v0, v1

    .line 1766
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object v4, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->SHOULD_DISPLAY_CTC_OP_SIGNAL_SPEC:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    iget v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    new-array v6, v2, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v7, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-object v7, v7, Lcom/android/settingslib/SignalIcon$MobileState;->cardOperator:Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;

    aput-object v7, v6, v1

    invoke-interface {v3, v4, v5, v6}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    move v0, v2

    :cond_6
    if-eqz v0, :cond_7

    .line 1772
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    const-string v3, "Checking connected state from data reg of ServiceState"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1773
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result p0

    if-nez p0, :cond_7

    move v1, v2

    :cond_7
    return v1
.end method

.method private hideNoCalling()Z
    .locals 1

    .line 1222
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->hasDefaultNetwork()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCarrierConfigTracker:Lcom/android/systemui/util/CarrierConfigTracker;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    .line 1223
    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/util/CarrierConfigTracker;->getNoCallingConfig(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isCallingState()Z
    .locals 3

    .line 1722
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    move-object v0, p0

    check-cast v0, Lcom/android/settingslib/SignalIcon$MobileState;

    iget v0, v0, Lcom/android/settingslib/SignalIcon$MobileState;->callState:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    check-cast p0, Lcom/android/settingslib/SignalIcon$MobileState;

    iget p0, p0, Lcom/android/settingslib/SignalIcon$MobileState;->callState:I

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private isCarrierNetworkChangeActive()Z
    .locals 0

    .line 914
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast p0, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean p0, p0, Lcom/android/settingslib/SignalIcon$MobileState;->carrierNetworkChangeMode:Z

    return p0
.end method

.method private isCdma()Z
    .locals 0

    .line 847
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isCdmaLTE()Z
    .locals 1

    .line 1837
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mIsLteOnCdma:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    iget p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubId:I

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(I)I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isNoSimState()Z
    .locals 5

    .line 1791
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v0, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-object v0, v0, Lcom/android/settingslib/SignalIcon$MobileState;->simState:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "UNKNOWN"

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    .line 1792
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-nez v0, :cond_2

    .line 1793
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    invoke-static {v0, v2}, Lcom/android/systemui/util/DeviceState;->getSimState(Landroid/content/Context;I)I

    move-result v0

    .line 1794
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set initial sim state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    .line 1796
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v0, Lcom/android/settingslib/SignalIcon$MobileState;

    const-string v2, "READY"

    iput-object v2, v0, Lcom/android/settingslib/SignalIcon$MobileState;->simState:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/16 v2, 0xa

    if-ne v0, v2, :cond_1

    .line 1798
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v0, Lcom/android/settingslib/SignalIcon$MobileState;

    const-string v2, "LOADED"

    iput-object v2, v0, Lcom/android/settingslib/SignalIcon$MobileState;->simState:Ljava/lang/String;

    goto :goto_0

    .line 1800
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v0, Lcom/android/settingslib/SignalIcon$MobileState;

    iput-object v1, v0, Lcom/android/settingslib/SignalIcon$MobileState;->simState:Ljava/lang/String;

    .line 1804
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v0, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-object v0, v0, Lcom/android/settingslib/SignalIcon$MobileState;->simState:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v0, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-object v0, v0, Lcom/android/settingslib/SignalIcon$MobileState;->simState:Ljava/lang/String;

    .line 1805
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v0, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-object v0, v0, Lcom/android/settingslib/SignalIcon$MobileState;->simState:Ljava/lang/String;

    const-string v1, "ABSENT"

    .line 1806
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast p0, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-object p0, p0, Lcom/android/settingslib/SignalIcon$MobileState;->simState:Ljava/lang/String;

    const-string v0, "NOT_READY"

    .line 1807
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 p0, 0x1

    :goto_2
    return p0
.end method

.method private isRoaming()Z
    .locals 6

    .line 864
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isCarrierNetworkChangeActive()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 868
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v0, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v0, v0, Lcom/android/settingslib/SignalIcon$MobileState;->swRoaming:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    .line 872
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object v3, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->APPLY_FEMTO_CELL_ICON:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    new-array v5, v1, [Ljava/lang/Object;

    invoke-interface {v0, v3, v4, v5}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 873
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getFemtocellIndicator()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 874
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast p0, Lcom/android/settingslib/SignalIcon$MobileState;

    iput-boolean v2, p0, Lcom/android/settingslib/SignalIcon$MobileState;->isLTEFemtoCell:Z

    return v2

    .line 877
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v0, Lcom/android/settingslib/SignalIcon$MobileState;

    iput-boolean v1, v0, Lcom/android/settingslib/SignalIcon$MobileState;->isLTEFemtoCell:Z

    .line 880
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mIndicatorRuneWrapper:Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;->supportRoamingAtPSOnly(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_4

    .line 881
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->isPsOnlyReg()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    .line 882
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v0

    const/16 v3, 0xd

    if-ne v0, v3, :cond_4

    .line 883
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getSprDisplayRoam()Z

    move-result p0

    return p0

    .line 886
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isCdma()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isCdmaLTE()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 887
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_7

    .line 888
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getCdmaEriIconMode()I

    .line 910
    :cond_6
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result p0

    if-eqz p0, :cond_7

    move v1, v2

    :cond_7
    return v1
.end method

.method private listenLocationInfoIfNecessary()V
    .locals 4

    .line 1650
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object v1, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->IS_MULTI_LINE_PANEL_CARRIER_LABEL_VIEW:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1651
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLocationController:Lcom/android/systemui/statusbar/policy/LocationController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/LocationController;->isLocationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1652
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    const-string v1, "Location is enabled, start listening cell location"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1653
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mReceiverHandler:Landroid/os/Handler;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroidx/mediarouter/media/MediaRoute2Provider$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Landroidx/mediarouter/media/MediaRoute2Provider$$ExternalSyntheticLambda0;-><init>(Landroid/os/Handler;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCellLocationCallback:Lcom/android/systemui/statusbar/policy/MobileSignalController$CellLocationCallback;

    invoke-virtual {v0, v2, p0}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    goto :goto_0

    .line 1655
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    const-string v1, "Location is turned off, stop listening cell location"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1656
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCellLocationCallback:Lcom/android/systemui/statusbar/policy/MobileSignalController$CellLocationCallback;

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->unregisterTelephonyCallback(Landroid/telephony/TelephonyCallback;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private recordLastMobileStatus(Ljava/lang/String;)V
    .locals 2

    .line 1564
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mMobileStatusHistory:[Ljava/lang/String;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mMobileStatusHistoryIndex:I

    aput-object p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 1565
    rem-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mMobileStatusHistoryIndex:I

    return-void
.end method

.method private shouldDisplayNoService()Z
    .locals 5

    .line 1827
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object v1, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->SHOULD_DISPLAY_NO_SERVICE_AT_NO_SIM:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v4}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1828
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isNoSimState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1829
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Display no service by no sim state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast p0, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-object p0, p0, Lcom/android/settingslib/SignalIcon$MobileState;->simState:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    return v3
.end method

.method private updateCardOperatorInfo(Ljava/lang/String;)V
    .locals 4

    .line 1663
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v0, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCardOperatorUpdateUtil:Lcom/android/systemui/statusbar/utils/CardOperatorUpdateUtil;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    .line 1664
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getGroupIdLevel1()Ljava/lang/String;

    move-result-object v3

    .line 1663
    invoke-virtual {v1, v2, v3, p1}, Lcom/android/systemui/statusbar/utils/CardOperatorUpdateUtil;->getCardOperatorInfo(ILjava/lang/String;Ljava/lang/String;)Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;

    move-result-object p1

    iput-object p1, v0, Lcom/android/settingslib/SignalIcon$MobileState;->cardOperator:Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;

    .line 1667
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object v0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->SHOULD_LIMIT_ICON_AT_CTC_SLAVE_SLOT:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {p1, v0, v1, v3}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1668
    iget p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    invoke-static {p1}, Lcom/android/systemui/Operator;->isAnotherSlotCtcCard(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mIsAnotherSlotCtcCard:Z

    .line 1669
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateLimitedStateForCTCSlaveVoLTE()V

    .line 1671
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object v0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->IS_US:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    const/4 v1, -0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 1672
    invoke-interface {p1, v0, v1, v2}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1673
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateIconBrandingForSimMobility()V

    :cond_1
    return-void
.end method

.method private updateDataSim()V
    .locals 3

    .line 1060
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDefaults:Lcom/android/settingslib/mobile/MobileStatusTracker$SubscriptionDefaults;

    invoke-virtual {v0}, Lcom/android/settingslib/mobile/MobileStatusTracker$SubscriptionDefaults;->getActiveDataSubId()I

    move-result v0

    .line 1061
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 1062
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v1, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p0

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, v1, Lcom/android/settingslib/SignalIcon$MobileState;->dataSim:Z

    goto :goto_1

    .line 1071
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast p0, Lcom/android/settingslib/SignalIcon$MobileState;

    iput-boolean v2, p0, Lcom/android/settingslib/SignalIcon$MobileState;->dataSim:Z

    :goto_1
    return-void
.end method

.method private updateInflateSignalStrength()V
    .locals 2

    .line 605
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    .line 606
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    .line 605
    invoke-static {v0, v1}, Lcom/android/settingslib/net/SignalStrengthUtil;->shouldInflateSignalStrength(Landroid/content/Context;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mInflateSignalStrengths:Z

    return-void
.end method

.method private updateLimitedStateForCTCSlaveVoLTE()V
    .locals 6

    .line 1929
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v0, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-object v0, v0, Lcom/android/settingslib/SignalIcon$MobileState;->cardOperator:Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;

    sget-object v1, Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;->CTC:Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    .line 1930
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateLimitedStateForCTCSlaveVoLTE: isCTCCard:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " mIsAnotherSlotCtcCard:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mIsAnotherSlotCtcCard:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " mVoLTEConnected:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mVoLTEConnected:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1933
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    move-object v4, v1

    check-cast v4, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v4, v4, Lcom/android/settingslib/SignalIcon$MobileState;->dataSim:Z

    if-nez v4, :cond_1

    move-object v4, v1

    check-cast v4, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v4, v4, Lcom/android/settingslib/SignalIcon$MobileState;->airplaneMode:Z

    if-nez v4, :cond_1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mIsAnotherSlotCtcCard:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mVoLTEConnected:Z

    if-nez v0, :cond_1

    check-cast v1, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v0, v1, Lcom/android/settingslib/SignalIcon$MobileState;->roaming:Z

    if-nez v0, :cond_1

    .line 1935
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper;->getVoiceCallType(I)I

    move-result v0

    if-nez v0, :cond_1

    .line 1937
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v0, Lcom/android/settingslib/SignalIcon$MobileState;

    iput-boolean v2, v0, Lcom/android/settingslib/SignalIcon$MobileState;->isLimitedStateForCTCSlaveVoLTE:Z

    .line 1940
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast p0, Lcom/android/settingslib/SignalIcon$MobileState;

    iput-boolean v3, p0, Lcom/android/settingslib/SignalIcon$MobileState;->isLimitedStateForCTCSlaveVoLTE:Z

    return-void
.end method

.method private updateMobileStatus(Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;)V
    .locals 4

    .line 1174
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    move-object v1, v0

    check-cast v1, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v2, p1, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;->activityIn:Z

    iput-boolean v2, v1, Lcom/android/settingslib/SignalIcon$State;->activityIn:Z

    .line 1175
    move-object v1, v0

    check-cast v1, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v2, p1, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;->activityOut:Z

    iput-boolean v2, v1, Lcom/android/settingslib/SignalIcon$State;->activityOut:Z

    .line 1176
    move-object v1, v0

    check-cast v1, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v2, p1, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;->dataSim:Z

    iput-boolean v2, v1, Lcom/android/settingslib/SignalIcon$MobileState;->dataSim:Z

    .line 1177
    check-cast v0, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v1, p1, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;->carrierNetworkChangeMode:Z

    iput-boolean v1, v0, Lcom/android/settingslib/SignalIcon$MobileState;->carrierNetworkChangeMode:Z

    .line 1178
    iget v0, p1, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;->dataState:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataState:I

    .line 1179
    iget-object v0, p1, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;->signalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->notifyMobileLevelChangeIfNecessary(Landroid/telephony/SignalStrength;)V

    .line 1180
    iget-object v0, p1, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;->signalStrength:Landroid/telephony/SignalStrength;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 1181
    iget-object v0, p1, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;->telephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    .line 1182
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1183
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mIndicatorRuneWrapper:Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;->showSignalInEmergencyOnly()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isDummySubId()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1184
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    const-string v3, "Ignore ServiceState since we\'re gonna handle it by intent in no sim state"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1186
    :cond_1
    iget-object v2, p1, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;->serviceState:Landroid/telephony/ServiceState;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    .line 1188
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v1

    .line 1190
    :goto_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mIndicatorRuneWrapper:Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;->customeNetwork()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1191
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateMobileStatusBySamsung(Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;)V

    .line 1197
    :cond_3
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mProviderModelBehavior:Z

    if-eqz p1, :cond_6

    if-eq v0, v2, :cond_6

    if-eq v0, v1, :cond_4

    if-eqz v0, :cond_4

    if-nez v2, :cond_6

    :cond_4
    const/4 p1, 0x1

    if-eqz v2, :cond_5

    move v0, p1

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    .line 1203
    :goto_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->hideNoCalling()Z

    move-result v1

    xor-int/2addr p1, v1

    and-int/2addr p1, v0

    .line 1204
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    sget v1, Lcom/android/systemui/R$drawable;->ic_qs_no_calling_sms:I

    sget v2, Lcom/android/settingslib/AccessibilityContentDescriptions;->NO_CALLING:I

    .line 1206
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/SignalController;->getTextIfExists(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZILjava/lang/String;)V

    .line 1207
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/policy/SignalController;->notifyCallStateChange(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;I)V

    :cond_6
    return-void
.end method

.method private updateSignalOneLevelPerSec()V
    .locals 9

    .line 1853
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurSvcSate:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPreSvcSate:I

    .line 1854
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getCurrentRSSIState()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurSvcSate:I

    .line 1855
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UPDATE_STRENGTH mPreSvcSate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPreSvcSate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mCurSvcSate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurSvcSate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1857
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPreSvcSate:I

    const/16 v1, 0x46

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 1858
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTransitionState:Z

    const/4 v2, -0x1

    .line 1859
    iput v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentSignalStrength:I

    .line 1861
    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurSvcSate:I

    if-eq v0, v2, :cond_0

    .line 1862
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mHandler:Landroid/os/Handler;

    .line 1863
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v4, 0x64

    .line 1862
    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1864
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTransitionState:Z

    goto/16 :goto_3

    .line 1866
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SignalController;->notifyListeners()V

    goto/16 :goto_3

    :cond_1
    if-ne v0, v3, :cond_9

    .line 1869
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurSvcSate:I

    const-wide/16 v4, 0x3e8

    const-string v6, ", "

    if-nez v0, :cond_4

    .line 1870
    iput v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTargetSignalStrength:I

    .line 1871
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentSignalStrength:I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v0, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v0, v0, Lcom/android/settingslib/SignalIcon$MobileState;->airplaneMode:Z

    if-eqz v0, :cond_2

    goto :goto_0

    .line 1878
    :cond_2
    iput v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurSvcSate:I

    .line 1879
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTransitionState:Z

    .line 1880
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "UPDATE_STRENGTH(NO_SVC) : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTargetSignalStrength:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentSignalStrength:I

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1872
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UPDATE_STRENGTH(NO_SVC) no diff : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTargetSignalStrength:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentSignalStrength:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1874
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mHandler:Landroid/os/Handler;

    .line 1875
    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1874
    invoke-virtual {p0, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 1884
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v0, Lcom/android/settingslib/SignalIcon$MobileState;

    iget v0, v0, Lcom/android/settingslib/SignalIcon$State;->level:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTargetSignalStrength:I

    .line 1885
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "UPDATE_STRENGTH : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTargetSignalStrength:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentSignalStrength:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1888
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentSignalStrength:I

    iget v7, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTargetSignalStrength:I

    if-ne v0, v7, :cond_5

    .line 1889
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UPDATE_STRENGTH(IN_SVC) no diff :"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTargetSignalStrength:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentSignalStrength:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1891
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTransitionState:Z

    return-void

    .line 1893
    :cond_5
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTransitionState:Z

    if-nez v0, :cond_6

    .line 1894
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTransitionState:Z

    .line 1898
    :cond_6
    :goto_1
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentSignalStrength:I

    iget v6, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTargetSignalStrength:I

    if-ge v0, v6, :cond_7

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object v7, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;->MAX_SIGNAL_LEVEL:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;

    iget v8, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    new-array v2, v2, [Ljava/lang/Object;

    .line 1899
    invoke-interface {v6, v7, v8, v2}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->get(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v0, v2, :cond_7

    .line 1901
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentSignalStrength:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentSignalStrength:I

    goto :goto_2

    .line 1902
    :cond_7
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentSignalStrength:I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTargetSignalStrength:I

    if-le v0, v2, :cond_8

    if-lez v0, :cond_8

    sub-int/2addr v0, v3

    .line 1904
    iput v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentSignalStrength:I

    .line 1906
    :cond_8
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SignalController;->notifyListeners()V

    .line 1907
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mHandler:Landroid/os/Handler;

    .line 1908
    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1907
    invoke-virtual {p0, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_9
    :goto_3
    return-void
.end method

.method private updateSimcardActivated()V
    .locals 3

    .line 1528
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v0, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    invoke-static {v1, v2}, Lcom/android/systemui/util/DeviceState;->getSimSettingState(Landroid/content/Context;I)I

    move-result v1

    iput v1, v0, Lcom/android/settingslib/SignalIcon$MobileState;->simCardActivated:I

    .line 1529
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v0, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->hasMobileDataFeature()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v1, Lcom/android/settingslib/SignalIcon$MobileState;

    iget v1, v1, Lcom/android/settingslib/SignalIcon$MobileState;->simCardActivated:I

    if-nez v1, :cond_0

    .line 1530
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isDummySubId()Z

    move-result v1

    if-eqz v1, :cond_1

    iget p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    iput-boolean p0, v0, Lcom/android/settingslib/SignalIcon$State;->enabled:Z

    return-void
.end method

.method private final updateTelephony()V
    .locals 6

    .line 1443
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1444
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateTelephonySignalStrength: hasService="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    .line 1445
    invoke-static {v2}, Lcom/android/settingslib/Utils;->isInService(Landroid/telephony/ServiceState;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " ss="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " displayInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1444
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1448
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->checkDefaultData()V

    .line 1449
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v0, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mIndicatorRuneWrapper:Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;->customSignal()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 1450
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->hasService()Z

    move-result v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-static {v1}, Lcom/android/settingslib/Utils;->isInService(Landroid/telephony/ServiceState;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    iput-boolean v1, v0, Lcom/android/settingslib/SignalIcon$State;->connected:Z

    .line 1451
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    move-object v1, v0

    check-cast v1, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v1, v1, Lcom/android/settingslib/SignalIcon$State;->connected:Z

    if-eqz v1, :cond_3

    .line 1452
    check-cast v0, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getSignalLevel(Landroid/telephony/SignalStrength;)I

    move-result v1

    iput v1, v0, Lcom/android/settingslib/SignalIcon$State;->level:I

    .line 1455
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mIndicatorRuneWrapper:Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;->customDataIcon()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1456
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    invoke-static {v0}, Lcom/android/settingslib/mobile/MobileMappings;->getIconKey(Landroid/telephony/TelephonyDisplayInfo;)Ljava/lang/String;

    move-result-object v0

    .line 1457
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1458
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v1, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/SignalIcon$IconGroup;

    iput-object v0, v1, Lcom/android/settingslib/SignalIcon$State;->iconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

    .line 1462
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v0, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mIndicatorRuneWrapper:Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;->customDataIcon()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v1, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v1, v1, Lcom/android/settingslib/SignalIcon$State;->connected:Z

    if-eqz v1, :cond_6

    :cond_5
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataState:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_6

    move v1, v2

    goto :goto_1

    :cond_6
    move v1, v3

    :goto_1
    iput-boolean v1, v0, Lcom/android/settingslib/SignalIcon$MobileState;->dataConnected:Z

    .line 1465
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v0, Lcom/android/settingslib/SignalIcon$MobileState;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isRoaming()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/settingslib/SignalIcon$MobileState;->roaming:Z

    .line 1468
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_7

    .line 1469
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v1, Lcom/android/settingslib/SignalIcon$MobileState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getCdmaEriIconIndex()I

    move-result v0

    iput v0, v1, Lcom/android/settingslib/SignalIcon$MobileState;->cdmaEriIconIndex:I

    .line 1470
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v0, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getCdmaEriIconMode()I

    move-result v1

    iput v1, v0, Lcom/android/settingslib/SignalIcon$MobileState;->cdmaEriIconMode:I

    .line 1474
    :cond_7
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isCarrierNetworkChangeActive()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1475
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v0, Lcom/android/settingslib/SignalIcon$MobileState;

    sget-object v1, Lcom/android/settingslib/mobile/TelephonyIcons;->CARRIER_NETWORK_CHANGE:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    iput-object v1, v0, Lcom/android/settingslib/SignalIcon$State;->iconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

    goto :goto_2

    .line 1476
    :cond_8
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isDataDisabled()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/settingslib/mobile/MobileMappings$Config;

    iget-boolean v0, v0, Lcom/android/settingslib/mobile/MobileMappings$Config;->alwaysShowDataRatIcon:Z

    if-nez v0, :cond_a

    .line 1477
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDefaults:Lcom/android/settingslib/mobile/MobileStatusTracker$SubscriptionDefaults;

    invoke-virtual {v1}, Lcom/android/settingslib/mobile/MobileStatusTracker$SubscriptionDefaults;->getDefaultDataSubId()I

    move-result v1

    if-eq v0, v1, :cond_9

    .line 1478
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v0, Lcom/android/settingslib/SignalIcon$MobileState;

    sget-object v1, Lcom/android/settingslib/mobile/TelephonyIcons;->NOT_DEFAULT_DATA:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    iput-object v1, v0, Lcom/android/settingslib/SignalIcon$State;->iconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

    goto :goto_2

    .line 1480
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v0, Lcom/android/settingslib/SignalIcon$MobileState;

    sget-object v1, Lcom/android/settingslib/mobile/TelephonyIcons;->DATA_DISABLED:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    iput-object v1, v0, Lcom/android/settingslib/SignalIcon$State;->iconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

    .line 1483
    :cond_a
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isEmergencyOnly()Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    move-object v4, v1

    check-cast v4, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v4, v4, Lcom/android/settingslib/SignalIcon$MobileState;->isEmergency:Z

    if-eq v0, v4, :cond_b

    .line 1484
    check-cast v1, Lcom/android/settingslib/SignalIcon$MobileState;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isEmergencyOnly()Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/settingslib/SignalIcon$MobileState;->isEmergency:Z

    .line 1485
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->recalculateEmergency()V

    .line 1488
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v0, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-object v0, v0, Lcom/android/settingslib/SignalIcon$MobileState;->networkName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkNameDefault:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_c

    .line 1489
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 1490
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v0, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settingslib/SignalIcon$MobileState;->networkName:Ljava/lang/String;

    .line 1493
    :cond_c
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v0, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-object v0, v0, Lcom/android/settingslib/SignalIcon$MobileState;->networkNameData:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkNameDefault:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v1, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v1, v1, Lcom/android/settingslib/SignalIcon$MobileState;->dataSim:Z

    if-eqz v1, :cond_d

    .line 1495
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 1496
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v0, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settingslib/SignalIcon$MobileState;->networkNameData:Ljava/lang/String;

    .line 1499
    :cond_d
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mIndicatorRuneWrapper:Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;->supportCarrierInfoLogo()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1500
    const-class v0, Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    move-object v4, v1

    check-cast v4, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v4, v4, Lcom/android/settingslib/SignalIcon$State;->connected:Z

    if-eqz v4, :cond_e

    check-cast v1, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v1, v1, Lcom/android/settingslib/SignalIcon$MobileState;->roaming:Z

    if-nez v1, :cond_e

    goto :goto_3

    :cond_e
    move v2, v3

    :goto_3
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;->updateCarrierLogoVisibilities(Z)V

    .line 1505
    :cond_f
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->isFakeConditionEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1506
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    .line 1507
    invoke-interface {v0}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->getFakeNetworkConditions()Lcom/android/systemui/statusbar/utils/FakeNetworkConditionProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v1, Lcom/android/settingslib/SignalIcon$MobileState;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/utils/FakeNetworkConditionProvider;->getFakeMobileStateConditions(Lcom/android/settingslib/SignalIcon$MobileState;)Lcom/android/systemui/statusbar/utils/FakeNetworkConditionProvider$FakeMobileState;

    .line 1511
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->getFakeNetworkConditions()Lcom/android/systemui/statusbar/utils/FakeNetworkConditionProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/utils/FakeNetworkConditionProvider;->addFakeVoWiFiIcons()V

    .line 1514
    :cond_10
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mIndicatorRuneWrapper:Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;->customDataIcon()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1515
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    move-object v1, v0

    check-cast v1, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mMobileDataResource:Lcom/android/systemui/statusbar/utils/MobileDataResource;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    check-cast v0, Lcom/android/settingslib/SignalIcon$MobileState;

    iget v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    invoke-virtual {v2, v3, v4, v0, v5}, Lcom/android/systemui/statusbar/utils/MobileDataResource;->getCurrentDataIconGroup(Landroid/telephony/TelephonyDisplayInfo;Landroid/telephony/ServiceState;Lcom/android/settingslib/SignalIcon$MobileState;I)Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    move-result-object v0

    iput-object v0, v1, Lcom/android/settingslib/SignalIcon$State;->iconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

    .line 1519
    :cond_11
    sget-boolean v0, Lcom/android/systemui/BasicRune;->STATUS_NETWORK_MULTI_SIM:Z

    if-eqz v0, :cond_12

    .line 1520
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateSimcardActivated()V

    .line 1523
    :cond_12
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SignalController;->notifyListenersIfNecessary()V

    return-void
.end method


# virtual methods
.method public IsPowerOffServiceState()Z
    .locals 2

    .line 2055
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    .line 2057
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v0, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v0, v0, Lcom/android/settingslib/SignalIcon$MobileState;->airplaneMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    .line 2058
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->canCellularVoiceService()Z

    move-result p0

    if-nez p0, :cond_0

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

.method protected cleanState()Lcom/android/settingslib/SignalIcon$MobileState;
    .locals 0

    .line 843
    new-instance p0, Lcom/android/settingslib/SignalIcon$MobileState;

    invoke-direct {p0}, Lcom/android/settingslib/SignalIcon$MobileState;-><init>()V

    return-object p0
.end method

.method protected bridge synthetic cleanState()Lcom/android/settingslib/SignalIcon$State;
    .locals 0

    .line 126
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->cleanState()Lcom/android/settingslib/SignalIcon$MobileState;

    move-result-object p0

    return-object p0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 6

    .line 1969
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/policy/SignalController;->dump(Ljava/io/PrintWriter;)V

    .line 1970
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSubscription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1971
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mServiceState="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1972
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mSignalStrength="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1973
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mTelephonyDisplayInfo="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1974
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDataState="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataState:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1975
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mInflateSignalStrengths="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mInflateSignalStrengths:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1976
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  isDataDisabled="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isDataDisabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  MobileStatusHistory"

    .line 1977
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x40

    if-ge v0, v2, :cond_1

    .line 1980
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mMobileStatusHistory:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1985
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mMobileStatusHistoryIndex:I

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    .line 1986
    :goto_1
    iget v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mMobileStatusHistoryIndex:I

    add-int/2addr v3, v2

    sub-int/2addr v3, v1

    if-lt v0, v3, :cond_2

    .line 1987
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Previous MobileStatus("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mMobileStatusHistoryIndex:I

    add-int/2addr v4, v2

    sub-int/2addr v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mMobileStatusHistory:[Ljava/lang/String;

    and-int/lit8 v5, v0, 0x3f

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1993
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCardOperatorUpdateUtil:Lcom/android/systemui/statusbar/utils/CardOperatorUpdateUtil;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/utils/CardOperatorUpdateUtil;->dump(Ljava/io/PrintWriter;)V

    .line 1996
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mHasVoWifiPlmn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mHasVoWifiPlmn:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getCurrentIconId()I
    .locals 6

    .line 618
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mIndicatorRuneWrapper:Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;->customSignal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 619
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getCurrentSignalStrengthIcon()I

    move-result p0

    return p0

    .line 622
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    move-object v1, v0

    check-cast v1, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-object v1, v1, Lcom/android/settingslib/SignalIcon$State;->iconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

    sget-object v2, Lcom/android/settingslib/mobile/TelephonyIcons;->CARRIER_NETWORK_CHANGE:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    if-ne v1, v2, :cond_1

    .line 623
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getNumLevels()I

    move-result p0

    invoke-static {p0}, Lcom/android/settingslib/graph/SignalDrawable;->getCarrierChangeState(I)I

    move-result p0

    return p0

    .line 624
    :cond_1
    move-object v1, v0

    check-cast v1, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v1, v1, Lcom/android/settingslib/SignalIcon$State;->connected:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    .line 625
    move-object v1, v0

    check-cast v1, Lcom/android/settingslib/SignalIcon$MobileState;

    iget v1, v1, Lcom/android/settingslib/SignalIcon$State;->level:I

    .line 626
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mInflateSignalStrengths:Z

    if-eqz v3, :cond_2

    add-int/lit8 v1, v1, 0x1

    .line 629
    :cond_2
    move-object v3, v0

    check-cast v3, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v3, v3, Lcom/android/settingslib/SignalIcon$MobileState;->userSetup:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    move-object v3, v0

    check-cast v3, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-object v3, v3, Lcom/android/settingslib/SignalIcon$State;->iconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

    sget-object v5, Lcom/android/settingslib/mobile/TelephonyIcons;->DATA_DISABLED:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    if-eq v3, v5, :cond_3

    move-object v3, v0

    check-cast v3, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-object v3, v3, Lcom/android/settingslib/SignalIcon$State;->iconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

    sget-object v5, Lcom/android/settingslib/mobile/TelephonyIcons;->NOT_DEFAULT_DATA:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    if-ne v3, v5, :cond_4

    move-object v3, v0

    check-cast v3, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v3, v3, Lcom/android/settingslib/SignalIcon$MobileState;->defaultDataOff:Z

    if-eqz v3, :cond_4

    :cond_3
    move v3, v4

    goto :goto_0

    :cond_4
    move v3, v2

    .line 633
    :goto_0
    check-cast v0, Lcom/android/settingslib/SignalIcon$MobileState;

    iget v0, v0, Lcom/android/settingslib/SignalIcon$State;->inetCondition:I

    if-nez v0, :cond_5

    move v0, v4

    goto :goto_1

    :cond_5
    move v0, v2

    :goto_1
    if-nez v3, :cond_6

    if-eqz v0, :cond_7

    :cond_6
    move v2, v4

    .line 635
    :cond_7
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getNumLevels()I

    move-result p0

    invoke-static {v1, p0, v2}, Lcom/android/settingslib/graph/SignalDrawable;->getState(IIZ)I

    move-result p0

    return p0

    .line 636
    :cond_8
    check-cast v0, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v0, v0, Lcom/android/settingslib/SignalIcon$State;->enabled:Z

    if-eqz v0, :cond_9

    .line 637
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getNumLevels()I

    move-result p0

    invoke-static {p0}, Lcom/android/settingslib/graph/SignalDrawable;->getEmptyState(I)I

    move-result p0

    return p0

    :cond_9
    return v2
.end method

.method public getEpdgConnectedState()Z
    .locals 0

    .line 2016
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mEpdgConnected:Z

    return p0
.end method

.method getNetworkNameForCarrierWiFi()Ljava/lang/String;
    .locals 0

    .line 859
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getQsCurrentIconId()I
    .locals 0

    .line 645
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getCurrentIconId()I

    move-result p0

    return p0
.end method

.method getSignalLevel(Landroid/telephony/SignalStrength;)I
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1325
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/settingslib/mobile/MobileMappings$Config;

    iget-boolean v1, v1, Lcom/android/settingslib/mobile/MobileMappings$Config;->alwaysShowCdmaRssi:Z

    if-eqz v1, :cond_1

    .line 1326
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getCdmaLevel(Landroid/telephony/SignalStrength;)I

    move-result p0

    return p0

    .line 1328
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mIndicatorRuneWrapper:Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;->customSignal()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1329
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getVendorLevel()I

    move-result p1

    .line 1330
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object v2, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;->MAX_SIGNAL_LEVEL:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    new-array v4, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3, v4}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->get(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le p1, v1, :cond_2

    .line 1331
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    iget p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p1, v2, p0, v0}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->get(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_2
    if-gez p1, :cond_3

    goto :goto_0

    :cond_3
    move v0, p1

    :goto_0
    return v0

    .line 1337
    :cond_4
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result p0

    return p0
.end method

.method public getSlotId()I
    .locals 0

    .line 1575
    iget p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    return p0
.end method

.method protected getStringIfExists(I)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 1580
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public handleBroadcast(Landroid/content/Intent;)V
    .locals 9

    .line 918
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.telephony.action.SERVICE_PROVIDERS_UPDATED"

    .line 919
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string/jumbo v0, "showEpdg"

    .line 921
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mHasVoWifiPlmn:Z

    const-string v0, "android.telephony.extra.SHOW_SPN"

    .line 923
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    const-string v0, "android.telephony.extra.SPN"

    .line 924
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "android.telephony.extra.DATA_SPN"

    .line 925
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "android.telephony.extra.SHOW_PLMN"

    .line 926
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    const-string v0, "android.telephony.extra.PLMN"

    .line 927
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v3, p0

    .line 923
    invoke-virtual/range {v3 .. v8}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateNetworkName(ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 928
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SignalController;->notifyListenersIfNecessary()V

    goto/16 :goto_1

    :cond_0
    const-string v1, "com.sec.android.app.UPDATE_NETWORK_EMERGENCY_ONLY"

    .line 930
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 931
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLatinNetworkNameUtil:Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;

    .line 932
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->getNETWORK_MANUALLY_SELECTED()Ljava/lang/String;

    move-result-object v0

    .line 931
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 933
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLatinNetworkNameUtil:Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->getNETWORK_MANUALLY_SELECTED_PHONE_ID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eqz v0, :cond_1

    if-ltz p1, :cond_1

    .line 935
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLatinNetworkNameUtil:Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->setMNetworkManuallySelected(Ljava/lang/String;)V

    .line 937
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    if-ne p1, v0, :cond_11

    .line 938
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLatinNetworkNameUtil:Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->getMLastShowSpn()Z

    move-result v1

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLatinNetworkNameUtil:Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;

    .line 939
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->getMLastSpn()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLatinNetworkNameUtil:Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;

    .line 940
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->getMLastDataSpn()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLatinNetworkNameUtil:Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;

    .line 941
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->getMLastShowPlmn()Z

    move-result v4

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLatinNetworkNameUtil:Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;

    .line 942
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->getMLastPlmn()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    .line 938
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateNetworkName(ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    goto/16 :goto_1

    :cond_2
    const-string v1, "android.location.MODE_CHANGED"

    .line 945
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 946
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->listenLocationInfoIfNecessary()V

    goto/16 :goto_1

    :cond_3
    const-string v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    .line 947
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    sget-boolean v1, Lcom/android/systemui/BasicRune;->STATUS_NETWORK_MULTI_SIM:Z

    if-eqz v1, :cond_4

    const-string v3, "android.samsung.action.ACTION_NETWORK_SLOT_CHANGING_FINISH"

    .line 949
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    const-string v3, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    .line 950
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto/16 :goto_0

    :cond_4
    const-string v3, "android.telephony.action.AREA_INFO_UPDATED"

    .line 954
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string/jumbo v4, "phone"

    const-string v5, "android.telephony.extra.SLOT_INDEX"

    const-string v6, "com.sec.android.app.mms.CB_CLEAR"

    if-eqz v3, :cond_7

    const/4 v0, -0x1

    .line 955
    invoke-virtual {p1, v5, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "enable"

    const/4 v5, 0x1

    .line 957
    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    if-ne v1, v0, :cond_5

    .line 959
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[INVALID_SIM_SLOT_INDEX] latinSlotCB: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mLastPlmn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLatinNetworkNameUtil:Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;

    .line 960
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->getMLastPlmn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mSlotId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 959
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLatinNetworkNameUtil:Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;

    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->setMShowCBMsg(Z)V

    .line 962
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLatinNetworkNameUtil:Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->getMLastShowSpn()Z

    move-result v1

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLatinNetworkNameUtil:Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;

    .line 963
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->getMLastSpn()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLatinNetworkNameUtil:Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;

    .line 964
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->getMLastDataSpn()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLatinNetworkNameUtil:Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;

    .line 965
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->getMLastShowPlmn()Z

    move-result v4

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLatinNetworkNameUtil:Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;

    .line 966
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->getMLastPlmn()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    .line 962
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateNetworkName(ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    goto/16 :goto_1

    .line 967
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_6

    .line 968
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 969
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 970
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 972
    :cond_6
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLatinNetworkNameUtil:Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->getMLastPlmn()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_11

    iget p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    if-ne v1, p1, :cond_11

    .line 973
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLatinNetworkNameUtil:Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;

    .line 974
    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->getCellBroadcastMessage(I)Ljava/lang/String;

    move-result-object v0

    .line 973
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->setMCBMsgBody(Ljava/lang/String;)V

    .line 975
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLatinNetworkNameUtil:Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->getMCBMsgBody()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLatinNetworkNameUtil:Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;

    .line 976
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->getMCBMsgBody()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_11

    .line 977
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CellBroadcast Message arrived. Slot = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Plmn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLatinNetworkNameUtil:Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;

    .line 978
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->getMLastPlmn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " CbMsg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLatinNetworkNameUtil:Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;

    .line 979
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->getMCBMsgBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 977
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLatinNetworkNameUtil:Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;

    invoke-virtual {p1, v5}, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->setMShowCBMsg(Z)V

    .line 981
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLatinNetworkNameUtil:Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->getMLastShowSpn()Z

    move-result v1

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLatinNetworkNameUtil:Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;

    .line 982
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->getMLastSpn()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLatinNetworkNameUtil:Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;

    .line 983
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->getMLastDataSpn()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLatinNetworkNameUtil:Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;

    .line 984
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->getMLastShowPlmn()Z

    move-result v4

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLatinNetworkNameUtil:Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;

    .line 985
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->getMLastPlmn()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    .line 981
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateNetworkName(ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    goto/16 :goto_1

    .line 990
    :cond_7
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 991
    invoke-virtual {p1, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 992
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CB beeing cleared on slot = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    if-ne p1, v0, :cond_11

    .line 994
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLatinNetworkNameUtil:Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->setMCBMsgBody(Ljava/lang/String;)V

    .line 995
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLatinNetworkNameUtil:Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;

    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->setMShowCBMsg(Z)V

    .line 996
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLatinNetworkNameUtil:Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->getMLastShowSpn()Z

    move-result v1

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLatinNetworkNameUtil:Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;

    .line 997
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->getMLastSpn()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLatinNetworkNameUtil:Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;

    .line 998
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->getMLastDataSpn()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLatinNetworkNameUtil:Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;

    .line 999
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->getMLastShowPlmn()Z

    move-result v4

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLatinNetworkNameUtil:Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;

    .line 1000
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->getMLastPlmn()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    .line 996
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateNetworkName(ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    goto/16 :goto_1

    .line 1003
    :cond_8
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mIndicatorRuneWrapper:Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;->customSignal()Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    .line 1004
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1005
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateCardOperatorInfo(Ljava/lang/String;)V

    .line 1006
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mIndicatorRuneWrapper:Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;->supportCarrierInfo()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1007
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->refreshCarrierText()V

    .line 1009
    :cond_9
    invoke-virtual {p1, v5, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1010
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTION_SIM_STATE_CHANGED ["

    .line 1011
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1012
    iget v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    if-ne v0, v3, :cond_a

    .line 1013
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v0, Lcom/android/settingslib/SignalIcon$MobileState;

    const-string/jumbo v3, "ss"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/settingslib/SignalIcon$MobileState;->simState:Ljava/lang/String;

    const-string p1, " updated="

    .line 1014
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast p1, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-object p1, p1, Lcom/android/settingslib/SignalIcon$MobileState;->simState:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1016
    :cond_a
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_b

    .line 1019
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateSimcardActivated()V

    .line 1021
    :cond_b
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SignalController;->notifyListenersIfNecessary()V

    goto/16 :goto_1

    .line 1022
    :cond_c
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mIndicatorRuneWrapper:Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;->showSignalInEmergencyOnly()Z

    move-result v3

    if-eqz v3, :cond_e

    const-string v3, "android.intent.action.SERVICE_STATE"

    .line 1023
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1024
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 1026
    invoke-static {p1}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    .line 1027
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "new mServiceState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->shouldDisplayNoService()Z

    move-result p1

    if-nez p1, :cond_d

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz p1, :cond_d

    .line 1033
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object v0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->SUPPORT_SIGNAL_ICON_AT_EMERGENCY_ONLY:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    new-array v2, v2, [Ljava/lang/Object;

    .line 1034
    invoke-interface {p1, v0, v1, v2}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .line 1035
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->hasVoiceCallingFeature()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 1036
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast p1, Lcom/android/settingslib/SignalIcon$MobileState;

    const v0, 0x1040443

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getStringIfExists(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/settingslib/SignalIcon$MobileState;->networkName:Ljava/lang/String;

    .line 1038
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->refreshCarrierText()V

    .line 1042
    :cond_d
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateTelephony()V

    goto :goto_1

    .line 1044
    :cond_e
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mIndicatorRuneWrapper:Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;->showSignalInEmergencyOnly()Z

    move-result v2

    if-eqz v2, :cond_f

    const-string v2, "android.intent.action.SIG_STR"

    .line 1045
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1046
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 1048
    invoke-static {p1}, Landroid/telephony/SignalStrength;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/SignalStrength;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 1049
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "new mSignalStrength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateTelephony()V

    goto :goto_1

    :cond_f
    if-eqz v1, :cond_11

    const-string p1, "com.samsung.settings.SIMCARD_MGT_ACTIVATED"

    .line 1053
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 1054
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ACTION_SIMCARD_MGT_ACTIVATED sim activated : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v1, Lcom/android/settingslib/SignalIcon$MobileState;

    iget v1, v1, Lcom/android/settingslib/SignalIcon$MobileState;->simCardActivated:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateTelephony()V

    goto :goto_1

    .line 951
    :cond_10
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateDataSim()V

    .line 952
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SignalController;->notifyListenersIfNecessary()V

    :cond_11
    :goto_1
    return-void
.end method

.method public hasVoWifiPlmn()Z
    .locals 0

    .line 1585
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mHasVoWifiPlmn:Z

    return p0
.end method

.method isDataDisabled()Z
    .locals 0

    .line 1551
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isDataConnectionAllowed()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method isDummySubId()Z
    .locals 1

    .line 1914
    iget p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubId:I

    const v0, 0x7fffffff

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEmergencyOnly()Z
    .locals 0

    .line 851
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInService()Z
    .locals 0

    .line 855
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-static {p0}, Lcom/android/settingslib/Utils;->isInService(Landroid/telephony/ServiceState;)Z

    move-result p0

    return p0
.end method

.method isMatchedSimWithCsc()Z
    .locals 5

    .line 1958
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object v1, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;->ICON_BRANDING_FROM_CSC_FEATURE:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v4}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->get(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1960
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object v2, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;->ICON_BRANDING_FROM_CARRIER_FEATURE:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v4, v3}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->get(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1962
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isMatchedSimWithCsc CSC="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", Carrier="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1964
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method isUsingVZWSim()Z
    .locals 5

    .line 1945
    sget-boolean v0, Lcom/android/systemui/BasicRune;->STATUS_NETWORK_DATA_5G_DSDS:Z

    const-string v1, "isUsingVZWSim="

    if-eqz v0, :cond_0

    .line 1946
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object v2, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;->ICON_BRANDING_FROM_CARRIER_FEATURE:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3, v4}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->get(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1948
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1950
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v1, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-object v1, v1, Lcom/android/settingslib/SignalIcon$MobileState;->cardOperator:Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1953
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mMobileDataResource:Lcom/android/systemui/statusbar/utils/MobileDataResource;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast p0, Lcom/android/settingslib/SignalIcon$MobileState;

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/statusbar/utils/MobileDataResource;->isUsingVZWSim(ILcom/android/settingslib/SignalIcon$MobileState;)Z

    move-result p0

    return p0
.end method

.method notifyDefaultMobileLevelChange(I)V
    .locals 4

    .line 1286
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mProviderModelBehavior:Z

    if-nez v0, :cond_0

    return-void

    .line 1289
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastWlanCrossSimLevel:I

    .line 1290
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mImsType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    return-void

    .line 1293
    :cond_1
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1295
    invoke-direct {p0, p1, v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getCallStrengthIcon(IZ)I

    move-result v3

    .line 1296
    invoke-direct {p0, p1, v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getCallStrengthDescription(IZ)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, v3, p1}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZILjava/lang/String;)V

    .line 1297
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/policy/SignalController;->notifyCallStateChange(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;I)V

    return-void
.end method

.method public notifyListeners(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 652
    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isCarrierMergedWifi(I)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 656
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/SignalController;->getIcons()Lcom/android/settingslib/SignalIcon$IconGroup;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 658
    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mIndicatorRuneWrapper:Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;->customSignal()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 659
    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mMobileSignalResource:Lcom/android/systemui/statusbar/utils/MobileSignalResource;

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v4, Lcom/android/settingslib/SignalIcon$MobileState;

    iget v5, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/statusbar/utils/MobileSignalResource;->getSignalContentDescription(Lcom/android/settingslib/SignalIcon$MobileState;I)I

    move-result v3

    goto :goto_0

    .line 660
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/SignalController;->getContentDescription()I

    move-result v3

    .line 658
    :goto_0
    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/policy/SignalController;->getTextIfExists(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 660
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 661
    iget v4, v2, Lcom/android/settingslib/SignalIcon$MobileIconGroup;->dataContentDescription:I

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/policy/SignalController;->getTextIfExists(I)Ljava/lang/CharSequence;

    move-result-object v13

    .line 667
    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v15, 0x0

    .line 666
    invoke-static {v4, v15}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v4

    .line 667
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 668
    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v5, Lcom/android/settingslib/SignalIcon$MobileState;

    iget v5, v5, Lcom/android/settingslib/SignalIcon$State;->inetCondition:I

    if-nez v5, :cond_2

    .line 669
    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/systemui/R$string;->data_connection_no_internet:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    :cond_2
    move-object v12, v4

    .line 672
    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mIndicatorRuneWrapper:Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;

    iget v5, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;->supportDisabledDataIcon(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 673
    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v4, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mMobileDataResource:Lcom/android/systemui/statusbar/utils/MobileDataResource;

    iget-object v6, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    .line 675
    invoke-virtual {v6}, Landroid/telephony/TelephonyDisplayInfo;->getNetworkType()I

    move-result v6

    iget v7, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    iget-object v8, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v8, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-object v9, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    iget-object v10, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .line 679
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isWifiConnectedState()Z

    move-result v10

    .line 674
    invoke-virtual/range {v5 .. v10}, Lcom/android/systemui/statusbar/utils/MobileDataResource;->shouldShowDisabledDataIcon(IILcom/android/settingslib/SignalIcon$MobileState;Landroid/telephony/ServiceState;Z)Z

    move-result v5

    iput-boolean v5, v4, Lcom/android/settingslib/SignalIcon$MobileState;->showDisabledDataIcon:Z

    .line 681
    :cond_3
    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    move-object v5, v4

    check-cast v5, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-object v5, v5, Lcom/android/settingslib/SignalIcon$State;->iconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

    sget-object v6, Lcom/android/settingslib/mobile/TelephonyIcons;->DATA_DISABLED:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const/4 v14, 0x1

    if-eq v5, v6, :cond_4

    check-cast v4, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-object v4, v4, Lcom/android/settingslib/SignalIcon$State;->iconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

    sget-object v5, Lcom/android/settingslib/mobile/TelephonyIcons;->NOT_DEFAULT_DATA:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    if-eq v4, v5, :cond_4

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mIndicatorRuneWrapper:Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;

    .line 683
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;->customDataIcon()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v4, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v4, v4, Lcom/android/settingslib/SignalIcon$MobileState;->showDisabledDataIcon:Z

    if-eqz v4, :cond_5

    :cond_4
    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v4, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v4, v4, Lcom/android/settingslib/SignalIcon$MobileState;->userSetup:Z

    if-eqz v4, :cond_5

    move v4, v14

    goto :goto_1

    :cond_5
    move v4, v15

    .line 686
    :goto_1
    iget-boolean v5, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mProviderModelBehavior:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_14

    .line 688
    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    move-object v7, v5

    check-cast v7, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v7, v7, Lcom/android/settingslib/SignalIcon$MobileState;->dataConnected:Z

    if-nez v7, :cond_7

    if-eqz v4, :cond_6

    goto :goto_2

    :cond_6
    move v4, v15

    goto :goto_3

    :cond_7
    :goto_2
    move v4, v14

    .line 694
    :goto_3
    move-object v7, v5

    check-cast v7, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v7, v7, Lcom/android/settingslib/SignalIcon$MobileState;->dataSim:Z

    if-eqz v7, :cond_c

    move-object v7, v5

    check-cast v7, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v7, v7, Lcom/android/settingslib/SignalIcon$MobileState;->isDefault:Z

    if-eqz v7, :cond_c

    if-nez v4, :cond_9

    .line 696
    iget-object v7, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/settingslib/mobile/MobileMappings$Config;

    iget-boolean v7, v7, Lcom/android/settingslib/mobile/MobileMappings$Config;->alwaysShowDataRatIcon:Z

    if-eqz v7, :cond_8

    goto :goto_4

    :cond_8
    move v7, v15

    goto :goto_5

    :cond_9
    :goto_4
    iget v7, v2, Lcom/android/settingslib/SignalIcon$MobileIconGroup;->qsDataType:I

    .line 697
    :goto_5
    new-instance v8, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    move-object v9, v5

    check-cast v9, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v9, v9, Lcom/android/settingslib/SignalIcon$State;->enabled:Z

    if-eqz v9, :cond_a

    check-cast v5, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v5, v5, Lcom/android/settingslib/SignalIcon$MobileState;->isEmergency:Z

    if-nez v5, :cond_a

    move v5, v14

    goto :goto_6

    :cond_a
    move v5, v15

    .line 698
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getQsCurrentIconId()I

    move-result v9

    invoke-direct {v8, v5, v9, v3}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZILjava/lang/String;)V

    .line 699
    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    move-object v9, v5

    check-cast v9, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v9, v9, Lcom/android/settingslib/SignalIcon$MobileState;->isEmergency:Z

    if-eqz v9, :cond_b

    goto :goto_7

    :cond_b
    check-cast v5, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-object v6, v5, Lcom/android/settingslib/SignalIcon$MobileState;->networkName:Ljava/lang/String;

    :goto_7
    move-object/from16 v16, v6

    move v9, v7

    move-object v7, v8

    goto :goto_8

    :cond_c
    move-object v7, v6

    move-object/from16 v16, v7

    move v9, v15

    .line 701
    :goto_8
    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    move-object v6, v5

    check-cast v6, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v6, v6, Lcom/android/settingslib/SignalIcon$MobileState;->dataConnected:Z

    if-eqz v6, :cond_d

    move-object v6, v5

    check-cast v6, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v6, v6, Lcom/android/settingslib/SignalIcon$MobileState;->carrierNetworkChangeMode:Z

    if-nez v6, :cond_d

    move-object v6, v5

    check-cast v6, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v6, v6, Lcom/android/settingslib/SignalIcon$State;->activityIn:Z

    if-eqz v6, :cond_d

    move v10, v14

    goto :goto_9

    :cond_d
    move v10, v15

    .line 704
    :goto_9
    move-object v6, v5

    check-cast v6, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v6, v6, Lcom/android/settingslib/SignalIcon$MobileState;->dataConnected:Z

    if-eqz v6, :cond_e

    move-object v6, v5

    check-cast v6, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v6, v6, Lcom/android/settingslib/SignalIcon$MobileState;->carrierNetworkChangeMode:Z

    if-nez v6, :cond_e

    move-object v6, v5

    check-cast v6, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v6, v6, Lcom/android/settingslib/SignalIcon$State;->activityOut:Z

    if-eqz v6, :cond_e

    move v11, v14

    goto :goto_a

    :cond_e
    move v11, v15

    .line 707
    :goto_a
    move-object v6, v5

    check-cast v6, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v6, v6, Lcom/android/settingslib/SignalIcon$MobileState;->dataSim:Z

    if-eqz v6, :cond_f

    move-object v6, v5

    check-cast v6, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v6, v6, Lcom/android/settingslib/SignalIcon$MobileState;->isDefault:Z

    if-eqz v6, :cond_f

    move v6, v14

    goto :goto_b

    :cond_f
    move v6, v15

    :goto_b
    and-int/2addr v4, v6

    if-eqz v4, :cond_10

    .line 708
    move-object v6, v5

    check-cast v6, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v6, v6, Lcom/android/settingslib/SignalIcon$MobileState;->airplaneMode:Z

    if-nez v6, :cond_10

    move/from16 v18, v14

    goto :goto_c

    :cond_10
    move/from16 v18, v15

    :goto_c
    if-nez v4, :cond_12

    .line 709
    iget-object v6, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/settingslib/mobile/MobileMappings$Config;

    iget-boolean v6, v6, Lcom/android/settingslib/mobile/MobileMappings$Config;->alwaysShowDataRatIcon:Z

    if-eqz v6, :cond_11

    goto :goto_d

    :cond_11
    move v8, v15

    goto :goto_e

    :cond_12
    :goto_d
    iget v6, v2, Lcom/android/settingslib/SignalIcon$MobileIconGroup;->dataType:I

    move v8, v6

    .line 710
    :goto_e
    move-object v6, v5

    check-cast v6, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v6, v6, Lcom/android/settingslib/SignalIcon$MobileState;->roaming:Z

    or-int/2addr v4, v6

    .line 711
    new-instance v6, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    if-eqz v4, :cond_13

    check-cast v5, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v4, v5, Lcom/android/settingslib/SignalIcon$MobileState;->airplaneMode:Z

    if-nez v4, :cond_13

    move v15, v14

    .line 712
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getCurrentIconId()I

    move-result v4

    invoke-direct {v6, v15, v4, v3}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZILjava/lang/String;)V

    .line 713
    new-instance v3, Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataIndicators;

    iget-boolean v15, v2, Lcom/android/settingslib/SignalIcon$MobileIconGroup;->isWide:Z

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    .line 716
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v0, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v0, v0, Lcom/android/settingslib/SignalIcon$MobileState;->roaming:Z

    move-object v5, v3

    move-object/from16 v14, v16

    move/from16 v16, v2

    move/from16 v17, v0

    invoke-direct/range {v5 .. v18}, Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataIndicators;-><init>(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;IIZZLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZIZZ)V

    .line 718
    invoke-interface {v1, v3}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setMobileDataIndicators(Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataIndicators;)V

    goto/16 :goto_25

    .line 720
    :cond_14
    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    move-object v7, v5

    check-cast v7, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v7, v7, Lcom/android/settingslib/SignalIcon$MobileState;->dataConnected:Z

    if-nez v7, :cond_16

    if-eqz v4, :cond_15

    goto :goto_f

    :cond_15
    move v7, v15

    goto :goto_10

    :cond_16
    :goto_f
    move v7, v14

    .line 721
    :goto_10
    new-instance v8, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    move-object v9, v5

    check-cast v9, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v9, v9, Lcom/android/settingslib/SignalIcon$State;->enabled:Z

    if-eqz v9, :cond_17

    check-cast v5, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v5, v5, Lcom/android/settingslib/SignalIcon$MobileState;->airplaneMode:Z

    if-nez v5, :cond_17

    move v5, v14

    goto :goto_11

    :cond_17
    move v5, v15

    .line 722
    :goto_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getCurrentIconId()I

    move-result v9

    invoke-direct {v8, v5, v9, v3}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZILjava/lang/String;)V

    .line 729
    iget-boolean v5, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mProviderModelSetting:Z

    if-eqz v5, :cond_1c

    .line 730
    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    move-object v9, v5

    check-cast v9, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v9, v9, Lcom/android/settingslib/SignalIcon$MobileState;->dataSim:Z

    if-eqz v9, :cond_21

    move-object v9, v5

    check-cast v9, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v9, v9, Lcom/android/settingslib/SignalIcon$MobileState;->isDefault:Z

    if-eqz v9, :cond_21

    if-nez v7, :cond_19

    .line 732
    iget-object v9, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/settingslib/mobile/MobileMappings$Config;

    iget-boolean v9, v9, Lcom/android/settingslib/mobile/MobileMappings$Config;->alwaysShowDataRatIcon:Z

    if-eqz v9, :cond_18

    goto :goto_12

    :cond_18
    move v9, v15

    goto :goto_13

    :cond_19
    :goto_12
    iget v9, v2, Lcom/android/settingslib/SignalIcon$MobileIconGroup;->qsDataType:I

    .line 733
    :goto_13
    new-instance v10, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    move-object v11, v5

    check-cast v11, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v11, v11, Lcom/android/settingslib/SignalIcon$State;->enabled:Z

    if-eqz v11, :cond_1a

    check-cast v5, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v5, v5, Lcom/android/settingslib/SignalIcon$MobileState;->isEmergency:Z

    if-nez v5, :cond_1a

    move v5, v14

    goto :goto_14

    :cond_1a
    move v5, v15

    .line 735
    :goto_14
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getQsCurrentIconId()I

    move-result v11

    invoke-direct {v10, v5, v11, v3}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZILjava/lang/String;)V

    .line 736
    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    move-object v5, v3

    check-cast v5, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v5, v5, Lcom/android/settingslib/SignalIcon$MobileState;->isEmergency:Z

    if-eqz v5, :cond_1b

    goto :goto_18

    :cond_1b
    check-cast v3, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-object v6, v3, Lcom/android/settingslib/SignalIcon$MobileState;->networkName:Ljava/lang/String;

    goto :goto_18

    .line 739
    :cond_1c
    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    move-object v9, v5

    check-cast v9, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v9, v9, Lcom/android/settingslib/SignalIcon$MobileState;->dataSim:Z

    if-eqz v9, :cond_21

    if-nez v7, :cond_1e

    .line 741
    iget-object v9, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/settingslib/mobile/MobileMappings$Config;

    iget-boolean v9, v9, Lcom/android/settingslib/mobile/MobileMappings$Config;->alwaysShowDataRatIcon:Z

    if-eqz v9, :cond_1d

    goto :goto_15

    :cond_1d
    move v9, v15

    goto :goto_16

    :cond_1e
    :goto_15
    iget v9, v2, Lcom/android/settingslib/SignalIcon$MobileIconGroup;->qsDataType:I

    .line 742
    :goto_16
    new-instance v10, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    move-object v11, v5

    check-cast v11, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v11, v11, Lcom/android/settingslib/SignalIcon$State;->enabled:Z

    if-eqz v11, :cond_1f

    check-cast v5, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v5, v5, Lcom/android/settingslib/SignalIcon$MobileState;->isEmergency:Z

    if-nez v5, :cond_1f

    move v5, v14

    goto :goto_17

    :cond_1f
    move v5, v15

    .line 744
    :goto_17
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getQsCurrentIconId()I

    move-result v11

    invoke-direct {v10, v5, v11, v3}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZILjava/lang/String;)V

    .line 745
    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    move-object v5, v3

    check-cast v5, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v5, v5, Lcom/android/settingslib/SignalIcon$MobileState;->isEmergency:Z

    if-eqz v5, :cond_20

    goto :goto_18

    :cond_20
    check-cast v3, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-object v6, v3, Lcom/android/settingslib/SignalIcon$MobileState;->networkName:Ljava/lang/String;

    :goto_18
    move-object v3, v6

    goto :goto_19

    :cond_21
    move-object v3, v6

    move-object v10, v3

    move v9, v15

    .line 749
    :goto_19
    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    move-object v6, v5

    check-cast v6, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v6, v6, Lcom/android/settingslib/SignalIcon$MobileState;->dataConnected:Z

    if-eqz v6, :cond_22

    move-object v6, v5

    check-cast v6, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v6, v6, Lcom/android/settingslib/SignalIcon$MobileState;->carrierNetworkChangeMode:Z

    if-nez v6, :cond_22

    move-object v6, v5

    check-cast v6, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v6, v6, Lcom/android/settingslib/SignalIcon$State;->activityIn:Z

    if-eqz v6, :cond_22

    move v11, v14

    goto :goto_1a

    :cond_22
    move v11, v15

    .line 752
    :goto_1a
    move-object v6, v5

    check-cast v6, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v6, v6, Lcom/android/settingslib/SignalIcon$MobileState;->dataConnected:Z

    if-eqz v6, :cond_23

    move-object v6, v5

    check-cast v6, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v6, v6, Lcom/android/settingslib/SignalIcon$MobileState;->carrierNetworkChangeMode:Z

    if-nez v6, :cond_23

    move-object v6, v5

    check-cast v6, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v6, v6, Lcom/android/settingslib/SignalIcon$State;->activityOut:Z

    if-eqz v6, :cond_23

    move/from16 v16, v14

    goto :goto_1b

    :cond_23
    move/from16 v16, v15

    .line 756
    :goto_1b
    move-object v6, v5

    check-cast v6, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v6, v6, Lcom/android/settingslib/SignalIcon$MobileState;->isDefault:Z

    if-nez v6, :cond_25

    if-nez v4, :cond_25

    check-cast v5, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v4, v5, Lcom/android/settingslib/SignalIcon$MobileState;->mpTCPEnabled:Z

    if-eqz v4, :cond_24

    goto :goto_1c

    :cond_24
    move v4, v15

    goto :goto_1d

    :cond_25
    :goto_1c
    move v4, v14

    :goto_1d
    and-int/2addr v4, v7

    if-nez v4, :cond_27

    .line 758
    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/settingslib/mobile/MobileMappings$Config;

    iget-boolean v4, v4, Lcom/android/settingslib/mobile/MobileMappings$Config;->alwaysShowDataRatIcon:Z

    if-eqz v4, :cond_26

    goto :goto_1e

    :cond_26
    move v4, v15

    goto :goto_1f

    .line 759
    :cond_27
    :goto_1e
    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mIndicatorRuneWrapper:Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;->customDataIcon()Z

    move-result v4

    if-eqz v4, :cond_28

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mMobileDataResource:Lcom/android/systemui/statusbar/utils/MobileDataResource;

    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    .line 760
    invoke-virtual {v5}, Landroid/telephony/TelephonyDisplayInfo;->getNetworkType()I

    move-result v18

    iget v5, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    iget-object v6, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    move-object/from16 v20, v6

    check-cast v20, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-object v6, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    iget-object v7, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .line 764
    invoke-virtual {v7, v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isAnotherSlotCallingState(I)Z

    move-result v22

    iget-object v7, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v7, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v7, v7, Lcom/android/settingslib/SignalIcon$MobileState;->mpTCPEnabled:Z

    move-object/from16 v17, v4

    move/from16 v19, v5

    move-object/from16 v21, v6

    move/from16 v23, v7

    .line 759
    invoke-virtual/range {v17 .. v23}, Lcom/android/systemui/statusbar/utils/MobileDataResource;->getDataTypeIcon(IILcom/android/settingslib/SignalIcon$MobileState;Landroid/telephony/ServiceState;ZZ)I

    move-result v4

    goto :goto_1f

    .line 766
    :cond_28
    iget v4, v2, Lcom/android/settingslib/SignalIcon$MobileIconGroup;->dataType:I

    .line 769
    :goto_1f
    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v5, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v5, v5, Lcom/android/settingslib/SignalIcon$MobileState;->bluetoothTethered:Z

    sget v6, Lcom/android/systemui/R$drawable;->stat_sys_tether_bluetooth:I

    invoke-interface {v1, v5, v6}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setBtTetherIndicators(ZI)V

    .line 778
    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object v6, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->SUPPORT_MULTI_PATH_TCP:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    new-array v7, v15, [Ljava/lang/Object;

    const/4 v1, -0x1

    .line 779
    invoke-interface {v5, v6, v1, v7}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 780
    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshMPTCPIndicator()V

    .line 783
    :cond_29
    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    move-object v6, v5

    check-cast v6, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v6, v6, Lcom/android/settingslib/SignalIcon$State;->enabled:Z

    if-eqz v6, :cond_2a

    check-cast v5, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v5, v5, Lcom/android/settingslib/SignalIcon$MobileState;->airplaneMode:Z

    if-nez v5, :cond_2a

    move/from16 v18, v14

    goto :goto_20

    :cond_2a
    move/from16 v18, v15

    .line 784
    :goto_20
    new-instance v7, Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataIndicators;

    iget-boolean v2, v2, Lcom/android/settingslib/SignalIcon$MobileIconGroup;->isWide:Z

    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    .line 787
    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v17

    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v5, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v6, v5, Lcom/android/settingslib/SignalIcon$MobileState;->roaming:Z

    move-object v5, v7

    move/from16 v19, v6

    move-object v6, v8

    move-object v8, v7

    move-object v7, v10

    move-object v10, v8

    move v8, v4

    move-object v4, v10

    move v10, v11

    move/from16 v11, v16

    move-object v14, v3

    move v3, v15

    move v15, v2

    move/from16 v16, v17

    move/from16 v17, v19

    invoke-direct/range {v5 .. v18}, Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataIndicators;-><init>(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;IIZZLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZIZZ)V

    .line 789
    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mIndicatorRuneWrapper:Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;->customDataIcon()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 790
    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mMobileDataResource:Lcom/android/systemui/statusbar/utils/MobileDataResource;

    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v5, Lcom/android/settingslib/SignalIcon$MobileState;

    iget v6, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    invoke-virtual {v2, v5, v6}, Lcom/android/systemui/statusbar/utils/MobileDataResource;->getDataActivityIcon(Lcom/android/settingslib/SignalIcon$MobileState;I)I

    move-result v2

    iput v2, v4, Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataIndicators;->dataActivity:I

    .line 793
    :cond_2b
    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mIndicatorRuneWrapper:Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;->customRoaming()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 794
    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mRoamingResource:Lcom/android/systemui/statusbar/utils/RoamingResource;

    iget-object v6, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    move-object v7, v2

    check-cast v7, Lcom/android/settingslib/SignalIcon$MobileState;

    .line 796
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isCdma()Z

    move-result v2

    if-nez v2, :cond_2d

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isCdmaLTE()Z

    move-result v2

    if-eqz v2, :cond_2c

    goto :goto_21

    :cond_2c
    move v8, v3

    goto :goto_22

    :cond_2d
    :goto_21
    const/4 v8, 0x1

    :goto_22
    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    invoke-virtual {v2}, Landroid/telephony/TelephonyDisplayInfo;->getNetworkType()I

    move-result v9

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget v10, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    .line 797
    invoke-virtual {v2, v10}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isAnotherSlotCallingState(I)Z

    move-result v10

    iget v11, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    .line 795
    invoke-virtual/range {v5 .. v11}, Lcom/android/systemui/statusbar/utils/RoamingResource;->getRoamingIcon(Landroid/telephony/ServiceState;Lcom/android/settingslib/SignalIcon$MobileState;ZIZI)I

    move-result v2

    iput v2, v4, Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataIndicators;->roamingIcon:I

    .line 800
    :cond_2e
    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object v5, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->SUPPORT_5G_ACCESS_TEXT:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    new-array v6, v3, [Ljava/lang/Object;

    .line 801
    invoke-interface {v2, v5, v1, v6}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 802
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    if-eqz v1, :cond_30

    .line 803
    invoke-virtual {v1}, Landroid/telephony/TelephonyDisplayInfo;->getNetworkType()I

    move-result v1

    const/16 v2, 0x14

    if-ne v1, v2, :cond_2f

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v1, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v1, v1, Lcom/android/settingslib/SignalIcon$MobileState;->dataConnected:Z

    if-eqz v1, :cond_2f

    const/4 v15, 0x1

    goto :goto_23

    :cond_2f
    move v15, v3

    .line 805
    :goto_23
    iget v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    move-object/from16 v2, p1

    invoke-interface {v2, v1, v15}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setNetworkTypeForCarrierText(IZ)V

    goto :goto_24

    :cond_30
    move-object/from16 v2, p1

    .line 809
    :goto_24
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mIndicatorRuneWrapper:Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;->supportNetworkDebugInfo()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 810
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifyListener: enabled="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v5, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v5, v5, Lcom/android/settingslib/SignalIcon$State;->enabled:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", connected="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v5, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v5, v5, Lcom/android/settingslib/SignalIcon$State;->connected:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", dataConnected="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v5, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v5, v5, Lcom/android/settingslib/SignalIcon$MobileState;->dataConnected:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", networkType="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    const/4 v6, 0x1

    .line 813
    invoke-static {v5, v6}, Lcom/android/settingslib/mobile/MobileStatusTracker;->getDisplayInfoDescription(Landroid/telephony/TelephonyDisplayInfo;Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v5, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-object v5, v5, Lcom/android/settingslib/SignalIcon$State;->iconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

    iget-object v5, v5, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "), emergencyOnly="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v5, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v5, v5, Lcom/android/settingslib/SignalIcon$MobileState;->isEmergency:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", roaming="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v5, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v5, v5, Lcom/android/settingslib/SignalIcon$MobileState;->roaming:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isDefault="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v5, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v5, v5, Lcom/android/settingslib/SignalIcon$MobileState;->isDefault:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", fiveGAvailable="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v5, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v5, v5, Lcom/android/settingslib/SignalIcon$MobileState;->fiveGAvailable:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", mmWave="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v5, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v5, v5, Lcom/android/settingslib/SignalIcon$MobileState;->mmWave:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", showDisabledDataIcon="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v5, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v5, v5, Lcom/android/settingslib/SignalIcon$MobileState;->showDisabledDataIcon:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", voWifiConnected="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v5, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v5, v5, Lcom/android/settingslib/SignalIcon$MobileState;->voWifiConnected:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", dataActivity="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    move-object v6, v5

    check-cast v6, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v6, v6, Lcom/android/settingslib/SignalIcon$State;->activityIn:Z

    check-cast v5, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v5, v5, Lcom/android/settingslib/SignalIcon$State;->activityOut:Z

    .line 822
    invoke-direct {v0, v6, v5}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getDataActivityString(ZZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", simState="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v5, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-object v5, v5, Lcom/android/settingslib/SignalIcon$MobileState;->simState:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", cardOperator="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v5, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-object v5, v5, Lcom/android/settingslib/SignalIcon$MobileState;->cardOperator:Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", simCardActivated="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v0, Lcom/android/settingslib/SignalIcon$MobileState;

    iget v0, v0, Lcom/android/settingslib/SignalIcon$MobileState;->simCardActivated:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 810
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    :cond_31
    invoke-interface {v2, v4}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setMobileDataIndicators(Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataIndicators;)V

    :goto_25
    return-void
.end method

.method notifyMobileLevelChangeIfNecessary(Landroid/telephony/SignalStrength;)V
    .locals 4

    .line 1301
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mProviderModelBehavior:Z

    if-nez v0, :cond_0

    return-void

    .line 1304
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getSignalLevel(Landroid/telephony/SignalStrength;)I

    move-result p1

    .line 1305
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastLevel:I

    if-eq p1, v0, :cond_2

    .line 1306
    iput p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastLevel:I

    .line 1307
    iput p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastWwanLevel:I

    .line 1308
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mImsType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1309
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    const/4 v2, 0x0

    .line 1311
    invoke-direct {p0, p1, v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getCallStrengthIcon(IZ)I

    move-result v3

    .line 1312
    invoke-direct {p0, p1, v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getCallStrengthDescription(IZ)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZILjava/lang/String;)V

    .line 1313
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/SignalController;->notifyCallStateChange(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;I)V

    .line 1315
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v0, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v0, v0, Lcom/android/settingslib/SignalIcon$MobileState;->dataSim:Z

    if-eqz v0, :cond_2

    .line 1316
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->notifyDefaultMobileLevelChange(I)V

    :cond_2
    return-void
.end method

.method notifyWifiLevelChange(I)V
    .locals 3

    .line 1271
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mProviderModelBehavior:Z

    if-nez v0, :cond_0

    return-void

    .line 1274
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastWlanLevel:I

    .line 1275
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mImsType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    return-void

    .line 1278
    :cond_1
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    const/4 v1, 0x1

    .line 1280
    invoke-direct {p0, p1, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getCallStrengthIcon(IZ)I

    move-result v2

    .line 1281
    invoke-direct {p0, p1, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getCallStrengthDescription(IZ)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZILjava/lang/String;)V

    .line 1282
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/policy/SignalController;->notifyCallStateChange(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;I)V

    return-void
.end method

.method public onImsRegStateChanged(Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;)V
    .locals 6

    .line 2022
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onImsRegStateChanged imsRegState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_4

    .line 2025
    invoke-virtual {p1}, Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;->isVoWifiRegistered()Z

    move-result v0

    .line 2026
    invoke-virtual {p1}, Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;->isVoLteRegistered()Z

    move-result v1

    .line 2027
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    move-object v3, v2

    check-cast v3, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v3, v3, Lcom/android/settingslib/SignalIcon$MobileState;->voWifiConnected:Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v3, v0, :cond_0

    .line 2028
    check-cast v2, Lcom/android/settingslib/SignalIcon$MobileState;

    iput-boolean v0, v2, Lcom/android/settingslib/SignalIcon$MobileState;->voWifiConnected:Z

    move v0, v4

    goto :goto_0

    :cond_0
    move v0, v5

    .line 2031
    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mVoLTEConnected:Z

    if-eq v2, v1, :cond_2

    .line 2032
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mVoLTEConnected:Z

    .line 2034
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object v1, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->SHOULD_LIMIT_ICON_AT_CTC_SLAVE_SLOT:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2035
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateLimitedStateForCTCSlaveVoLTE()V

    :cond_1
    move v0, v4

    .line 2038
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object v2, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->SUPPORT_WIFI_CALLING_ICON_AT_WIFI_SLOT:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3, v5}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2039
    invoke-virtual {p1}, Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;->isEpdgRegistered()Z

    move-result p1

    .line 2040
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mEpdgConnected:Z

    if-eq v1, p1, :cond_3

    .line 2041
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mEpdgConnected:Z

    .line 2042
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateEpdgConnectedState()V

    goto :goto_1

    :cond_3
    move v4, v0

    :goto_1
    if-eqz v4, :cond_4

    .line 2048
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateTelephony()V

    :cond_4
    return-void
.end method

.method onMobileDataChanged()V
    .locals 0

    .line 1546
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->checkDefaultData()V

    .line 1547
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SignalController;->notifyListenersIfNecessary()V

    return-void
.end method

.method refreshCallIndicator(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V
    .locals 6

    .line 1240
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 1241
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1242
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->hideNoCalling()Z

    move-result v3

    xor-int/2addr v3, v2

    and-int/2addr v0, v3

    .line 1243
    new-instance v3, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    sget v4, Lcom/android/systemui/R$drawable;->ic_qs_no_calling_sms:I

    sget v5, Lcom/android/settingslib/AccessibilityContentDescriptions;->NO_CALLING:I

    .line 1245
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/policy/SignalController;->getTextIfExists(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v0, v4, v5}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZILjava/lang/String;)V

    .line 1246
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    invoke-interface {p1, v3, v0}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setCallIndicator(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;I)V

    .line 1248
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mImsType:I

    if-eq v0, v2, :cond_3

    const/4 v4, 0x2

    if-eq v0, v4, :cond_2

    const/4 v4, 0x3

    if-eq v0, v4, :cond_1

    goto :goto_1

    .line 1262
    :cond_1
    new-instance v3, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastWlanCrossSimLevel:I

    .line 1264
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getCallStrengthIcon(IZ)I

    move-result v0

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastWlanCrossSimLevel:I

    .line 1265
    invoke-direct {p0, v4, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getCallStrengthDescription(IZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v2, v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZILjava/lang/String;)V

    goto :goto_1

    .line 1256
    :cond_2
    new-instance v3, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastWlanLevel:I

    .line 1258
    invoke-direct {p0, v0, v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getCallStrengthIcon(IZ)I

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastWlanLevel:I

    .line 1259
    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getCallStrengthDescription(IZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v2, v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZILjava/lang/String;)V

    goto :goto_1

    .line 1250
    :cond_3
    new-instance v3, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastWwanLevel:I

    .line 1252
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getCallStrengthIcon(IZ)I

    move-result v0

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastWwanLevel:I

    .line 1253
    invoke-direct {p0, v4, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getCallStrengthDescription(IZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v2, v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZILjava/lang/String;)V

    .line 1267
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p0

    invoke-interface {p1, v3, p0}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setCallIndicator(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;I)V

    return-void
.end method

.method public refreshCarrierText()V
    .locals 2

    .line 1590
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    move-object v1, v0

    check-cast v1, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-object v1, v1, Lcom/android/settingslib/SignalIcon$MobileState;->networkName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1591
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    check-cast v0, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-object v0, v0, Lcom/android/settingslib/SignalIcon$MobileState;->networkName:Ljava/lang/String;

    iget p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    invoke-virtual {v1, v0, p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updatePanelCarrierLabel(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public registerListener()V
    .locals 6

    .line 507
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mMobileStatusTracker:Lcom/android/settingslib/mobile/MobileStatusTracker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/mobile/MobileStatusTracker;->setListening(Z)V

    .line 508
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "mobile_data"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 510
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    .line 511
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 510
    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 513
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mProviderModelBehavior:Z

    if-eqz v0, :cond_0

    .line 514
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mReceiverHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTryRegisterIms:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 517
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object v1, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->SUPPORT_DISABLED_DATA_ICON:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v3, v5}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 518
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mMobileDataObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_1

    .line 519
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mMobileDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 521
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mMobileDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v4}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 534
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object v1, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->SUPPORT_DISPLAY_CBCH50:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    const/4 v2, -0x1

    new-array v3, v4, [Ljava/lang/Object;

    .line 535
    invoke-interface {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 536
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLatinNetworkNameUtil:Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->bindCellBroadcastService(Landroid/content/Context;)V

    .line 540
    :cond_2
    const-class v0, Lcom/android/systemui/util/SystemUIImsManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SystemUIImsManager;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/util/SystemUIImsManager;->addImsRegStateChangedCallback(ILcom/android/systemui/util/SystemUIImsManager$ImsRegStateChangedCallback;)V

    return-void
.end method

.method setActivity(I)V
    .locals 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1556
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    move-object v1, v0

    check-cast v1, Lcom/android/settingslib/SignalIcon$MobileState;

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eq p1, v3, :cond_1

    if-ne p1, v4, :cond_0

    goto :goto_0

    :cond_0
    move v5, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v5, v4

    :goto_1
    iput-boolean v5, v1, Lcom/android/settingslib/SignalIcon$State;->activityIn:Z

    .line 1558
    check-cast v0, Lcom/android/settingslib/SignalIcon$MobileState;

    if-eq p1, v3, :cond_2

    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    :cond_2
    move v2, v4

    :cond_3
    iput-boolean v2, v0, Lcom/android/settingslib/SignalIcon$State;->activityOut:Z

    .line 1560
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SignalController;->notifyListenersIfNecessary()V

    return-void
.end method

.method public setAirplaneMode(Z)V
    .locals 1

    .line 472
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v0, Lcom/android/settingslib/SignalIcon$MobileState;

    iput-boolean p1, v0, Lcom/android/settingslib/SignalIcon$MobileState;->airplaneMode:Z

    .line 474
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->refreshCarrierText()V

    .line 476
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SignalController;->notifyListenersIfNecessary()V

    return-void
.end method

.method public setCarrierNetworkChangeMode(Z)V
    .locals 1

    .line 499
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v0, Lcom/android/settingslib/SignalIcon$MobileState;

    iput-boolean p1, v0, Lcom/android/settingslib/SignalIcon$MobileState;->carrierNetworkChangeMode:Z

    .line 500
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateTelephony()V

    return-void
.end method

.method public setConfiguration(Lcom/android/settingslib/mobile/MobileMappings$Config;)V
    .locals 2

    .line 455
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/settingslib/mobile/MobileMappings$Config;

    .line 456
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateInflateSignalStrength()V

    .line 457
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/settingslib/mobile/MobileMappings$Config;

    invoke-static {p1}, Lcom/android/settingslib/mobile/MobileMappings;->mapIconSets(Lcom/android/settingslib/mobile/MobileMappings$Config;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    .line 458
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/settingslib/mobile/MobileMappings$Config;

    invoke-static {p1}, Lcom/android/settingslib/mobile/MobileMappings;->getDefaultIcons(Lcom/android/settingslib/mobile/MobileMappings$Config;)Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDefaultIcons:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 461
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    move-object v0, p1

    check-cast v0, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-object v0, v0, Lcom/android/settingslib/SignalIcon$MobileState;->networkName:Ljava/lang/String;

    const v1, 0x104064b

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-object p1, p1, Lcom/android/settingslib/SignalIcon$MobileState;->networkName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkNameDefault:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 462
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast p1, Lcom/android/settingslib/SignalIcon$MobileState;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/SignalController;->getTextIfExists(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/settingslib/SignalIcon$MobileState;->networkName:Ljava/lang/String;

    .line 463
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->refreshCarrierText()V

    .line 465
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/SignalController;->getTextIfExists(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkNameDefault:Ljava/lang/String;

    .line 468
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateTelephony()V

    return-void
.end method

.method setImsType(I)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1570
    iput p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mImsType:I

    return-void
.end method

.method public setUserSetupComplete(Z)V
    .locals 1

    .line 480
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v0, Lcom/android/settingslib/SignalIcon$MobileState;

    iput-boolean p1, v0, Lcom/android/settingslib/SignalIcon$MobileState;->userSetup:Z

    .line 481
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SignalController;->notifyListenersIfNecessary()V

    return-void
.end method

.method public unregisterListener()V
    .locals 5

    .line 571
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mMobileStatusTracker:Lcom/android/settingslib/mobile/MobileStatusTracker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settingslib/mobile/MobileStatusTracker;->setListening(Z)V

    .line 572
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 573
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mImsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mRegistrationCallback:Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

    invoke-virtual {v0, v2}, Landroid/telephony/ims/ImsMmTelManager;->unregisterImsRegistrationCallback(Landroid/telephony/ims/RegistrationManager$RegistrationCallback;)V

    .line 575
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object v2, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->SUPPORT_DISABLED_DATA_ICON:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    new-array v4, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3, v4}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 576
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mMobileDataObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mMobileDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 578
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mMobileDataObserver:Landroid/database/ContentObserver;

    .line 580
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isMultiSimDevice:Z

    if-eqz v2, :cond_1

    .line 581
    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->setCallState(IZ)V

    .line 595
    :cond_1
    const-class v0, Lcom/android/systemui/util/SystemUIImsManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SystemUIImsManager;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    invoke-virtual {v0, v2, p0}, Lcom/android/systemui/util/SystemUIImsManager;->removeImsRegStateChangedCallback(ILcom/android/systemui/util/SystemUIImsManager$ImsRegStateChangedCallback;)V

    .line 598
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object v2, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->SUPPORT_DISPLAY_CBCH50:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    const/4 v3, -0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 599
    invoke-interface {v0, v2, v3, v1}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 600
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLatinNetworkNameUtil:Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->unBindCellBroadcastService()V

    :cond_2
    return-void
.end method

.method public updateCarrierNameFromSubscriptionInfo(Ljava/lang/String;)V
    .locals 4

    .line 1613
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isDummySubId()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mIsPLMNbyIntent:Z

    if-nez v0, :cond_1

    .line 1614
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateCarrierNameFromSubscriptionInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1616
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkNameDefault:Ljava/lang/String;

    .line 1617
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mLastState:Lcom/android/settingslib/SignalIcon$State;

    move-object v1, v0

    check-cast v1, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    move-object v3, v2

    check-cast v3, Lcom/android/settingslib/SignalIcon$MobileState;

    iput-object p1, v3, Lcom/android/settingslib/SignalIcon$MobileState;->networkName:Ljava/lang/String;

    iput-object p1, v1, Lcom/android/settingslib/SignalIcon$MobileState;->networkName:Ljava/lang/String;

    .line 1618
    check-cast v0, Lcom/android/settingslib/SignalIcon$MobileState;

    check-cast v2, Lcom/android/settingslib/SignalIcon$MobileState;

    iput-object p1, v2, Lcom/android/settingslib/SignalIcon$MobileState;->networkNameData:Ljava/lang/String;

    iput-object p1, v0, Lcom/android/settingslib/SignalIcon$MobileState;->networkNameData:Ljava/lang/String;

    .line 1620
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->refreshCarrierText()V

    :cond_1
    return-void
.end method

.method public updateConnectivity(Ljava/util/BitSet;Ljava/util/BitSet;)V
    .locals 2

    .line 486
    iget v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTransportType:I

    invoke-virtual {p2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result p2

    .line 487
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v0, Lcom/android/settingslib/SignalIcon$MobileState;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTransportType:I

    invoke-virtual {p1, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/settingslib/SignalIcon$MobileState;->isDefault:Z

    .line 489
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    move-object v1, v0

    check-cast v1, Lcom/android/settingslib/SignalIcon$MobileState;

    if-nez p2, :cond_1

    move-object p2, v0

    check-cast p2, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean p2, p2, Lcom/android/settingslib/SignalIcon$MobileState;->isDefault:Z

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x1

    :goto_1
    iput p2, v1, Lcom/android/settingslib/SignalIcon$State;->inetCondition:I

    .line 492
    check-cast v0, Lcom/android/settingslib/SignalIcon$MobileState;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Ljava/util/BitSet;->get(I)Z

    move-result p1

    iput-boolean p1, v0, Lcom/android/settingslib/SignalIcon$MobileState;->bluetoothTethered:Z

    .line 495
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SignalController;->notifyListenersIfNecessary()V

    return-void
.end method

.method protected updateDataTypeByOverrideType()V
    .locals 7

    .line 1344
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    invoke-virtual {v0}, Landroid/telephony/TelephonyDisplayInfo;->getOverrideNetworkType()I

    move-result v0

    .line 1345
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mIndicatorRuneWrapper:Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;->custom4GDataIcon()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object v4, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->SUPPORT_LTE_WIDE_BAND_ICON:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    iget v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    new-array v6, v3, [Ljava/lang/Object;

    .line 1346
    invoke-interface {v1, v4, v5, v6}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1347
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v1, Lcom/android/settingslib/SignalIcon$MobileState;

    if-ne v0, v2, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    iput-boolean v4, v1, Lcom/android/settingslib/SignalIcon$MobileState;->ca:Z

    .line 1349
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mIndicatorRuneWrapper:Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;->custom5GDataIcon()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1350
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    move-object v4, v1

    check-cast v4, Lcom/android/settingslib/SignalIcon$MobileState;

    iput-boolean v3, v4, Lcom/android/settingslib/SignalIcon$MobileState;->fiveGAvailable:Z

    .line 1351
    check-cast v1, Lcom/android/settingslib/SignalIcon$MobileState;

    iput-boolean v3, v1, Lcom/android/settingslib/SignalIcon$MobileState;->mmWave:Z

    .line 1353
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    invoke-virtual {v1}, Landroid/telephony/TelephonyDisplayInfo;->getNetworkType()I

    move-result v1

    const/16 v3, 0x12

    const/16 v4, 0x14

    if-eq v1, v3, :cond_4

    const/4 v1, 0x3

    const/4 v3, 0x5

    const/4 v5, 0x4

    if-eq v0, v1, :cond_2

    if-eq v0, v5, :cond_2

    if-ne v0, v3, :cond_4

    .line 1358
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v1, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    invoke-virtual {v6}, Landroid/telephony/TelephonyDisplayInfo;->is5gAvailable()Z

    move-result v6

    iput-boolean v6, v1, Lcom/android/settingslib/SignalIcon$MobileState;->fiveGAvailable:Z

    .line 1360
    new-instance v1, Landroid/telephony/TelephonyDisplayInfo;

    invoke-direct {v1, v4, v0}, Landroid/telephony/TelephonyDisplayInfo;-><init>(II)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    .line 1362
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v6, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v6, v6, Lcom/android/settingslib/SignalIcon$MobileState;->fiveGAvailable:Z

    invoke-virtual {v1, v6}, Landroid/telephony/TelephonyDisplayInfo;->set5gAvailable(Z)V

    if-eq v0, v5, :cond_3

    if-ne v0, v3, :cond_4

    .line 1366
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v0, Lcom/android/settingslib/SignalIcon$MobileState;

    iput-boolean v2, v0, Lcom/android/settingslib/SignalIcon$MobileState;->mmWave:Z

    .line 1372
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    invoke-virtual {v0}, Landroid/telephony/TelephonyDisplayInfo;->getNetworkType()I

    move-result v0

    if-ne v0, v4, :cond_5

    .line 1373
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v0, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    invoke-virtual {p0}, Landroid/telephony/TelephonyDisplayInfo;->is5gAvailable()Z

    move-result p0

    iput-boolean p0, v0, Lcom/android/settingslib/SignalIcon$MobileState;->fiveGAvailable:Z

    :cond_5
    return-void
.end method

.method public updateLimitedState()V
    .locals 2

    .line 1920
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isAnotherSlotCallingState(I)Z

    move-result v0

    .line 1921
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mIsAnotherSlotCallingState:Z

    if-eq v0, v1, :cond_0

    .line 1922
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mIsAnotherSlotCallingState:Z

    .line 1923
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SignalController;->notifyListeners()V

    :cond_0
    return-void
.end method

.method public updateMPTCPState(Z)V
    .locals 0

    .line 1731
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast p0, Lcom/android/settingslib/SignalIcon$MobileState;

    iput-boolean p1, p0, Lcom/android/settingslib/SignalIcon$MobileState;->mpTCPEnabled:Z

    return-void
.end method

.method updateMobileStatusBySamsung(Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;)V
    .locals 6

    .line 1381
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 1382
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mIndicatorRuneWrapper:Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;->supportNetworkDebugInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1383
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mBootVoiceSvcAcquired:Z

    if-nez v0, :cond_0

    .line 1385
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    const-string v3, "!@Boot: Voice SVC is acquired"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1386
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mBootVoiceSvcAcquired:Z

    .line 1389
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object v3, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->APPLY_ADVANCED_LTE_ICON:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    new-array v5, v2, [Ljava/lang/Object;

    invoke-interface {v0, v3, v4, v5}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mIndicatorRuneWrapper:Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;

    .line 1390
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;->custom4GDataIcon()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1391
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v0, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getOptionalRadioTech()I

    move-result v3

    iput v3, v0, Lcom/android/settingslib/SignalIcon$MobileState;->optionalRadioTech:I

    .line 1393
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object v3, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->SUPPORT_DISPLAY_CBCH50:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    const/4 v4, -0x1

    new-array v5, v2, [Ljava/lang/Object;

    .line 1394
    invoke-interface {v0, v3, v4, v5}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLatinNetworkNameUtil:Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    .line 1395
    invoke-virtual {v0, v3, v4}, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->isGSM(Landroid/telephony/TelephonyDisplayInfo;Landroid/telephony/ServiceState;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLatinNetworkNameUtil:Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;

    .line 1396
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->getMShowCBMsg()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLatinNetworkNameUtil:Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;

    .line 1397
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->getMCBMsgBody()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLatinNetworkNameUtil:Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;

    .line 1398
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->getMCBMsgBody()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1399
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.sec.android.app.mms.CB_CLEAR"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1400
    iget v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    const-string/jumbo v4, "phone"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1401
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1405
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mIndicatorRuneWrapper:Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;->supportNetworkDebugInfo()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1406
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataState:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    .line 1407
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mBootDataSvcAcquired:Z

    if-nez v0, :cond_4

    .line 1408
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    const-string v3, "!@Boot: Data SVC is acquired"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1409
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mBootDataSvcAcquired:Z

    const-string/jumbo v0, "when data connection is first made"

    .line 1411
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateCardOperatorInfo(Ljava/lang/String;)V

    .line 1416
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mIndicatorRuneWrapper:Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;->supportSignalInfoBackup()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1417
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isDummySubId()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1418
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->displayInfos:[Landroid/telephony/TelephonyDisplayInfo;

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    aput-object v4, v1, v3

    .line 1419
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v1, :cond_5

    .line 1420
    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->serviceState:[Landroid/telephony/ServiceState;

    aput-object v1, v4, v3

    .line 1421
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v1, :cond_6

    .line 1422
    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->signalStrength:[Landroid/telephony/SignalStrength;

    aput-object v1, v0, v3

    .line 1427
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v0, Lcom/android/settingslib/SignalIcon$MobileState;

    iget p1, p1, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;->callState:I

    iput p1, v0, Lcom/android/settingslib/SignalIcon$MobileState;->callState:I

    .line 1428
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object v0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->SUPPORT_DISABLED_DATA_ICON:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {p1, v0, v1, v2}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isMultiSimDevice:Z

    if-eqz v0, :cond_7

    .line 1430
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isCallingState()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->setCallState(IZ)V

    .line 1431
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateLimitedState()V

    .line 1434
    :cond_7
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateDataTypeByOverrideType()V

    return-void
.end method

.method updateNetworkName(ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 21

    move-object/from16 v0, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move/from16 v10, p4

    move-object/from16 v11, p5

    .line 1081
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateNetworkName showSpn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " spn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " dataSpn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " showPlmn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " plmn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CarrierLabel"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 1086
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 1090
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLatinNetworkNameUtil:Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->setLastNetworkName(ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 1093
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object v2, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->IS_MULTI_LINE_PANEL_CARRIER_LABEL_VIEW:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    iget v3, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    .line 1094
    invoke-interface {v1, v2, v3, v5}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object v3, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->IS_CLARO_BRAZIL_PLMN_BRANDING:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    iget v5, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    new-array v6, v4, [Ljava/lang/Object;

    .line 1095
    invoke-interface {v1, v3, v5, v6}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mHasVoWifiPlmn:Z

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLatinNetworkNameUtil:Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    .line 1096
    invoke-virtual {v1, v3, v5}, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->isGSM(Landroid/telephony/TelephonyDisplayInfo;Landroid/telephony/ServiceState;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1097
    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLatinNetworkNameUtil:Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    move-object/from16 v16, v1

    check-cast v16, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mContext:Landroid/content/Context;

    .line 1101
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->hasService()Z

    move-result v18

    .line 1102
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isRoaming()Z

    move-result v19

    .line 1103
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isEmergencyOnly()Z

    move-result v20

    move-object/from16 v17, v1

    .line 1097
    invoke-virtual/range {v14 .. v20}, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->updateNetworkNameLatin(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;Lcom/android/settingslib/SignalIcon$MobileState;Landroid/content/Context;ZZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    if-eqz v10, :cond_2

    if-eqz v11, :cond_2

    .line 1106
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1107
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    if-eqz v7, :cond_4

    if-eqz v8, :cond_4

    .line 1110
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_3

    .line 1111
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkNameSeparator:Ljava/lang/String;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1113
    :cond_3
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1116
    :cond_4
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object v3, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->SUPPORT_DISPLAY_CBCH50:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    new-array v5, v4, [Ljava/lang/Object;

    .line 1117
    invoke-interface {v1, v3, v2, v5}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLatinNetworkNameUtil:Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;

    .line 1118
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->getMShowCBMsg()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLatinNetworkNameUtil:Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;

    .line 1119
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->getMCBMsgBody()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLatinNetworkNameUtil:Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;

    .line 1120
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->getMCBMsgBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 1121
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, " / "

    .line 1122
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1124
    :cond_5
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLatinNetworkNameUtil:Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->getMCBMsgBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1128
    :cond_6
    :goto_0
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_7

    .line 1129
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v1, Lcom/android/settingslib/SignalIcon$MobileState;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/settingslib/SignalIcon$MobileState;->networkName:Ljava/lang/String;

    goto :goto_2

    :cond_7
    if-nez v10, :cond_9

    if-nez v7, :cond_9

    .line 1131
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLatinNetworkNameUtil:Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;

    .line 1132
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->getMShowCBMsg()Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_1

    .line 1135
    :cond_8
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v1, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkNameDefault:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/settingslib/SignalIcon$MobileState;->networkName:Ljava/lang/String;

    goto :goto_2

    .line 1133
    :cond_9
    :goto_1
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v1, Lcom/android/settingslib/SignalIcon$MobileState;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/settingslib/SignalIcon$MobileState;->networkName:Ljava/lang/String;

    :goto_2
    if-eqz v7, :cond_b

    if-eqz v9, :cond_b

    .line 1139
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_a

    .line 1140
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkNameSeparator:Ljava/lang/String;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1142
    :cond_a
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1144
    :cond_b
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_c

    .line 1145
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v1, Lcom/android/settingslib/SignalIcon$MobileState;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/settingslib/SignalIcon$MobileState;->networkNameData:Ljava/lang/String;

    goto :goto_3

    .line 1147
    :cond_c
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v1, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkNameDefault:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/settingslib/SignalIcon$MobileState;->networkNameData:Ljava/lang/String;

    :goto_3
    const/4 v1, 0x1

    .line 1151
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mIsPLMNbyIntent:Z

    .line 1152
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->refreshCarrierText()V

    .line 1154
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object v3, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->NEED_TO_APPLY_CONFIG_RULE_FOR_SHOW_PLMN:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v1, v3, v2, v4}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v1, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-object v1, v1, Lcom/android/settingslib/SignalIcon$MobileState;->networkName:Ljava/lang/String;

    if-eqz v1, :cond_d

    .line 1156
    const-class v1, Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;

    .line 1157
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getIndicatorCarrierPlmnText()Ljava/lang/String;

    move-result-object v0

    .line 1156
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;->updateCarrierPlmnText(Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method updateNoCallingState()V
    .locals 4

    .line 1212
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    const/4 v1, 0x1

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 1214
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->hideNoCalling()Z

    move-result v2

    xor-int/2addr v1, v2

    and-int/2addr v0, v1

    .line 1215
    new-instance v1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    sget v2, Lcom/android/systemui/R$drawable;->ic_qs_no_calling_sms:I

    sget v3, Lcom/android/settingslib/AccessibilityContentDescriptions;->NO_CALLING:I

    .line 1217
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/SignalController;->getTextIfExists(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZILjava/lang/String;)V

    .line 1218
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/policy/SignalController;->notifyCallStateChange(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;I)V

    return-void
.end method
