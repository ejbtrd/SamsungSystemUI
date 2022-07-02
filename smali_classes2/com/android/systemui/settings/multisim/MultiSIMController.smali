.class public Lcom/android/systemui/settings/multisim/MultiSIMController;
.super Ljava/lang/Object;
.source "MultiSIMController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/settings/multisim/MultiSIMController$MultiSIMVisibilityChangedCallback;,
        Lcom/android/systemui/settings/multisim/MultiSIMController$MultiSIMDataChangedCallback;,
        Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;
    }
.end annotation


# static fields
.field private static final INTERNAL_URI:Landroid/net/Uri;

.field private static sInstance:Lcom/android/systemui/settings/multisim/MultiSIMController;


# instance fields
.field private mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private mChangNetModeObserver:Landroid/database/ContentObserver;

.field private final mContext:Landroid/content/Context;

.field private mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

.field protected final mDataCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/systemui/settings/multisim/MultiSIMController$MultiSIMDataChangedCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private mDataController:Lcom/android/settingslib/net/DataUsageController;

.field private mDataNotified:Lcom/android/systemui/settings/multisim/MultiSIMData;

.field private final mDefaultIdUpdateList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;",
            ">;"
        }
    .end annotation
.end field

.field private mHasOpportunisticESim:Z

.field private mImsManagerMap:[Lcom/samsung/android/ims/SemImsManager;

.field private mInitDone:Z

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mInvalidSimInfo:Ljava/lang/String;

.field private mIsLoadedMultiSim:Z

.field private mMaxSimIconNumber:I

.field private mMobileDataObserver:Landroid/database/ContentObserver;

.field private mMultiSimDataCrossSlotObserver:Landroid/database/ContentObserver;

.field private mNeedCheckOpportunisticESim:Z

.field private mNetController:Lcom/android/systemui/statusbar/policy/NetworkController;

.field private mNetworkNameDefault:Ljava/lang/String;

.field private final mNotifyDataToCallbackRunnable:Ljava/lang/Runnable;

.field private final mNotifyVisToCallbackRunnable:Ljava/lang/Runnable;

.field private mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private mPreferedVoiceObserver:Landroid/database/ContentObserver;

.field private mSemImsRegistragionListener:[Lcom/samsung/android/ims/SemImsRegistrationListener;

.field private mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private final mSettingsValueList:[Landroid/net/Uri;

.field private mSimCardCallback:Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceCallback;

.field private mSimCardManagerService:Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerService;

.field private mSimIconAndNameObserver:Landroid/database/ContentObserver;

.field private final mUIHandler:Landroid/os/Handler;

.field private mUIVisible:Z

.field private mUnknownPhoneNumber:Ljava/lang/String;

.field private final mUpdateDataHandler:Landroid/os/Handler;

.field protected final mVisCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/systemui/settings/multisim/MultiSIMController$MultiSIMVisibilityChangedCallback;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$El750caMSihbcKV4jZKRI2Us_Y0(Lcom/android/systemui/settings/multisim/MultiSIMController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->lambda$new$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$YvwkzZfxssCFnC433n2zR6pUsW0(Lcom/android/systemui/settings/multisim/MultiSIMController$MultiSIMVisibilityChangedCallback;Ljava/lang/ref/WeakReference;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/settings/multisim/MultiSIMController;->lambda$removeCallback$2(Lcom/android/systemui/settings/multisim/MultiSIMController$MultiSIMVisibilityChangedCallback;Ljava/lang/ref/WeakReference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$pJyNnBxTmVnUx_8qX8kf415bUic(Lcom/android/systemui/settings/multisim/MultiSIMController$MultiSIMDataChangedCallback;Ljava/lang/ref/WeakReference;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/settings/multisim/MultiSIMController;->lambda$removeCallback$1(Lcom/android/systemui/settings/multisim/MultiSIMController$MultiSIMDataChangedCallback;Ljava/lang/ref/WeakReference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$pd_dUd9WINab4DzklJEVTKKongY(Lcom/android/systemui/settings/multisim/MultiSIMController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$zbUq36fl6kHFLq7GBfAeEecCVCk(Lcom/android/systemui/settings/multisim/MultiSIMController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->lambda$onUIVisibilityChanged$3()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.samsung.android.app.telephonyui.internal"

    .line 925
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->INTERNAL_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [Lcom/samsung/android/ims/SemImsRegistrationListener;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    const/4 v4, 0x1

    aput-object v3, v1, v4

    .line 79
    iput-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mSemImsRegistragionListener:[Lcom/samsung/android/ims/SemImsRegistrationListener;

    new-array v0, v0, [Lcom/samsung/android/ims/SemImsManager;

    aput-object v3, v0, v2

    aput-object v3, v0, v4

    .line 80
    iput-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mImsManagerMap:[Lcom/samsung/android/ims/SemImsManager;

    .line 113
    iput-object v3, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mSimCardCallback:Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceCallback;

    .line 121
    iput-boolean v2, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mUIVisible:Z

    .line 123
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mDataCallbacks:Ljava/util/ArrayList;

    .line 125
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mVisCallbacks:Ljava/util/ArrayList;

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mDefaultIdUpdateList:Ljava/util/ArrayList;

    .line 134
    iput-boolean v2, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mIsLoadedMultiSim:Z

    .line 135
    iput-boolean v2, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mHasOpportunisticESim:Z

    .line 136
    iput-boolean v4, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mNeedCheckOpportunisticESim:Z

    .line 138
    iput-boolean v2, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mInitDone:Z

    .line 271
    new-instance v0, Lcom/android/systemui/settings/multisim/MultiSIMController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/systemui/settings/multisim/MultiSIMController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/settings/multisim/MultiSIMController;)V

    iput-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mNotifyDataToCallbackRunnable:Ljava/lang/Runnable;

    .line 292
    new-instance v0, Lcom/android/systemui/settings/multisim/MultiSIMController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/settings/multisim/MultiSIMController$1;-><init>(Lcom/android/systemui/settings/multisim/MultiSIMController;)V

    iput-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 304
    new-instance v0, Lcom/android/systemui/settings/multisim/MultiSIMController$2;

    sget-object v1, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Handler;

    invoke-direct {v0, p0, v3}, Lcom/android/systemui/settings/multisim/MultiSIMController$2;-><init>(Lcom/android/systemui/settings/multisim/MultiSIMController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mChangNetModeObserver:Landroid/database/ContentObserver;

    .line 325
    new-instance v0, Lcom/android/systemui/settings/multisim/MultiSIMController$3;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v3}, Lcom/android/systemui/settings/multisim/MultiSIMController$3;-><init>(Lcom/android/systemui/settings/multisim/MultiSIMController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mPreferedVoiceObserver:Landroid/database/ContentObserver;

    .line 332
    new-instance v0, Lcom/android/systemui/settings/multisim/MultiSIMController$4;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v3}, Lcom/android/systemui/settings/multisim/MultiSIMController$4;-><init>(Lcom/android/systemui/settings/multisim/MultiSIMController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mMultiSimDataCrossSlotObserver:Landroid/database/ContentObserver;

    new-array v0, v4, [Landroid/net/Uri;

    const-string v3, "airplane_mode_on"

    .line 341
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v0, v2

    iput-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mSettingsValueList:[Landroid/net/Uri;

    .line 342
    new-instance v0, Lcom/android/systemui/settings/multisim/MultiSIMController$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/settings/multisim/MultiSIMController$5;-><init>(Lcom/android/systemui/settings/multisim/MultiSIMController;)V

    iput-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    .line 356
    new-instance v0, Lcom/android/systemui/settings/multisim/MultiSIMController$6;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v2}, Lcom/android/systemui/settings/multisim/MultiSIMController$6;-><init>(Lcom/android/systemui/settings/multisim/MultiSIMController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mMobileDataObserver:Landroid/database/ContentObserver;

    .line 363
    new-instance v0, Lcom/android/systemui/settings/multisim/MultiSIMController$7;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/settings/multisim/MultiSIMController$7;-><init>(Lcom/android/systemui/settings/multisim/MultiSIMController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mSimIconAndNameObserver:Landroid/database/ContentObserver;

    .line 391
    new-instance v0, Lcom/android/systemui/settings/multisim/MultiSIMController$8;

    invoke-direct {v0, p0}, Lcom/android/systemui/settings/multisim/MultiSIMController$8;-><init>(Lcom/android/systemui/settings/multisim/MultiSIMController;)V

    iput-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 770
    new-instance v0, Lcom/android/systemui/settings/multisim/MultiSIMController$10;

    invoke-direct {v0, p0}, Lcom/android/systemui/settings/multisim/MultiSIMController$10;-><init>(Lcom/android/systemui/settings/multisim/MultiSIMController;)V

    iput-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mUpdateDataHandler:Landroid/os/Handler;

    .line 797
    new-instance v0, Lcom/android/systemui/settings/multisim/MultiSIMController$11;

    invoke-direct {v0, p0}, Lcom/android/systemui/settings/multisim/MultiSIMController$11;-><init>(Lcom/android/systemui/settings/multisim/MultiSIMController;)V

    iput-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mUIHandler:Landroid/os/Handler;

    .line 883
    new-instance v0, Lcom/android/systemui/settings/multisim/MultiSIMController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/settings/multisim/MultiSIMController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/settings/multisim/MultiSIMController;)V

    iput-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mNotifyVisToCallbackRunnable:Ljava/lang/Runnable;

    .line 141
    iput-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mContext:Landroid/content/Context;

    .line 142
    invoke-direct {p0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/settings/multisim/MultiSIMController;)Landroid/os/Handler;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mUpdateDataHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/settings/multisim/MultiSIMController;)Landroid/content/Context;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/settings/multisim/MultiSIMController;Z)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/android/systemui/settings/multisim/MultiSIMController;->updateMultiSimReadyState(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/settings/multisim/MultiSIMController;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->updateSimSlotType()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/settings/multisim/MultiSIMController;)I
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->getSRoamingVirtualSlot()I

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lcom/android/systemui/settings/multisim/MultiSIMController;)[Lcom/samsung/android/ims/SemImsRegistrationListener;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mSemImsRegistragionListener:[Lcom/samsung/android/ims/SemImsRegistrationListener;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/systemui/settings/multisim/MultiSIMController;)[Lcom/samsung/android/ims/SemImsManager;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mImsManagerMap:[Lcom/samsung/android/ims/SemImsManager;

    return-object p0
.end method

.method static synthetic access$1502(Lcom/android/systemui/settings/multisim/MultiSIMController;Z)Z
    .locals 0

    .line 61
    iput-boolean p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mNeedCheckOpportunisticESim:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/settings/multisim/MultiSIMController;)Lcom/android/systemui/settings/multisim/MultiSIMData;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/settings/multisim/MultiSIMController;)Landroid/os/Handler;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mUIHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/settings/multisim/MultiSIMController;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->notifyDataToCallback()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/settings/multisim/MultiSIMController;Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/android/systemui/settings/multisim/MultiSIMController;->updateCurrentDefaultSlot(Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/settings/multisim/MultiSIMController;)Z
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->isRestrictionsForMmsUse()Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/android/systemui/settings/multisim/MultiSIMController;)Z
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->isDataEnabled()Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/android/systemui/settings/multisim/MultiSIMController;)I
    .locals 0

    .line 61
    iget p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mMaxSimIconNumber:I

    return p0
.end method

.method static synthetic access$900(Lcom/android/systemui/settings/multisim/MultiSIMController;Z)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/android/systemui/settings/multisim/MultiSIMController;->updateCarrierNameAndPhoneNumber(Z)V

    return-void
.end method

.method private checkCall()Z
    .locals 5

    .line 751
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 752
    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 751
    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 752
    invoke-direct {p0, v1}, Lcom/android/systemui/settings/multisim/MultiSIMController;->getSubId(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->getCallState(I)I

    move-result v0

    .line 753
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v2

    .line 754
    invoke-virtual {v2}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 753
    invoke-static {v2}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    const/4 v3, 0x1

    .line 754
    invoke-direct {p0, v3}, Lcom/android/systemui/settings/multisim/MultiSIMController;->getSubId(I)I

    move-result p0

    invoke-virtual {v2, p0}, Landroid/telephony/TelephonyManager;->getCallState(I)I

    move-result p0

    .line 755
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Check Call SIM1 : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", SIM2 : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "MultiSIMController"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v0, v3, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    if-eq p0, v3, :cond_0

    if-ne p0, v2, :cond_1

    :cond_0
    move v1, v3

    :cond_1
    return v1
.end method

.method private createSemImsManager(I)V
    .locals 4

    .line 457
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mImsManagerMap:[Lcom/samsung/android/ims/SemImsManager;

    new-instance v1, Lcom/samsung/android/ims/SemImsManager;

    iget-object v2, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/systemui/settings/multisim/MultiSIMController$9;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/settings/multisim/MultiSIMController$9;-><init>(Lcom/android/systemui/settings/multisim/MultiSIMController;I)V

    invoke-direct {v1, v2, v3, p1}, Lcom/samsung/android/ims/SemImsManager;-><init>(Landroid/content/Context;Lcom/samsung/android/ims/SemImsManager$ImsServiceConnectionListener;I)V

    aput-object v1, v0, p1

    .line 494
    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mImsManagerMap:[Lcom/samsung/android/ims/SemImsManager;

    aget-object p0, p0, p1

    invoke-virtual {p0}, Lcom/samsung/android/ims/SemImsManager;->connectService()V

    return-void
.end method

.method private getCurrentVoiceSlotByMethodCall()I
    .locals 7

    const-string v0, ", "

    const-string v1, "MultiSIMController"

    const-string v2, "getCurrentVoiceCall"

    const/4 v3, 0x0

    .line 963
    :try_start_0
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 964
    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v5, Lcom/android/systemui/settings/multisim/MultiSIMController;->INTERNAL_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v2, v6, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_0

    .line 966
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bundle is null : "

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    const-string/jumbo v4, "success"

    .line 970
    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    const-string/jumbo v5, "result"

    .line 971
    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    .line 972
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    .line 975
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/settings/multisim/MultiSIMController;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 147
    :cond_0
    sget-object v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->sInstance:Lcom/android/systemui/settings/multisim/MultiSIMController;

    if-nez v0, :cond_2

    .line 148
    const-class v0, Lcom/android/systemui/settings/multisim/MultiSIMController;

    monitor-enter v0

    .line 149
    :try_start_0
    sget-object v1, Lcom/android/systemui/settings/multisim/MultiSIMController;->sInstance:Lcom/android/systemui/settings/multisim/MultiSIMController;

    if-nez v1, :cond_1

    .line 150
    new-instance v1, Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-direct {v1, p0}, Lcom/android/systemui/settings/multisim/MultiSIMController;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/systemui/settings/multisim/MultiSIMController;->sInstance:Lcom/android/systemui/settings/multisim/MultiSIMController;

    .line 152
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 154
    :cond_2
    :goto_0
    sget-object p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->sInstance:Lcom/android/systemui/settings/multisim/MultiSIMController;

    return-object p0
.end method

.method private getOwnNumber(I)Ljava/lang/String;
    .locals 1

    .line 498
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mImsManagerMap:[Lcom/samsung/android/ims/SemImsManager;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    .line 499
    invoke-direct {p0, p1}, Lcom/android/systemui/settings/multisim/MultiSIMController;->createSemImsManager(I)V

    .line 501
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mImsManagerMap:[Lcom/samsung/android/ims/SemImsManager;

    aget-object v0, p0, p1

    if-eqz v0, :cond_1

    .line 502
    aget-object p0, p0, p1

    invoke-virtual {p0}, Lcom/samsung/android/ims/SemImsManager;->getImsRegistration()Lcom/samsung/android/ims/SemImsRegistration;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 504
    invoke-virtual {p0}, Lcom/samsung/android/ims/SemImsRegistration;->getOwnNumber()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MultiSIMController"

    const-string v0, "getOwnNumber"

    .line 506
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getPhoneId(I)I
    .locals 0

    .line 1004
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result p0

    return p0
.end method

.method private final getSRoamingStatus(Ljava/lang/String;)I
    .locals 0

    const-string p0, "activating"

    .line 908
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "activated"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_1

    :cond_0
    const-string p0, "deactivating"

    .line 910
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "deactivated"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/16 p0, 0x9

    goto :goto_2

    :cond_2
    :goto_0
    const/4 p0, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p0, 0x1

    :goto_2
    return p0
.end method

.method private getSRoamingVirtualSlot()I
    .locals 7

    .line 1049
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.globalroaming"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/settings/multisim/MultiSIMController;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x9

    if-eqz v0, :cond_3

    const-string v0, "MultiSIMController"

    const-string v2, "has sroaming package"

    .line 1050
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "persist.sys.softsim.status"

    const/4 v3, 0x0

    const-string v4, "default"

    .line 1052
    invoke-static {v2, v3, v4}, Lcom/android/systemui/util/DeviceState;->getMSimSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    .line 1053
    invoke-static {v2, v6, v4}, Lcom/android/systemui/util/DeviceState;->getMSimSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1054
    invoke-direct {p0, v5}, Lcom/android/systemui/settings/multisim/MultiSIMController;->getSRoamingStatus(Ljava/lang/String;)I

    move-result v4

    .line 1055
    invoke-direct {p0, v2}, Lcom/android/systemui/settings/multisim/MultiSIMController;->getSRoamingStatus(Ljava/lang/String;)I

    move-result p0

    if-eq v4, v6, :cond_1

    if-ne p0, v6, :cond_0

    goto :goto_0

    :cond_0
    if-nez v4, :cond_2

    if-nez p0, :cond_2

    move v1, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v6

    .line 1061
    :cond_2
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sroaming status : "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v1
.end method

.method private getSubId(I)I
    .locals 0

    .line 898
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object p0

    if-eqz p0, :cond_0

    .line 899
    array-length p1, p0

    if-lez p1, :cond_0

    const/4 p1, 0x0

    .line 900
    aget p0, p0, p1

    return p0

    :cond_0
    const-string p0, "MultiSIMController"

    const-string p1, "getSubId: no valid subs"

    .line 902
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method

.method private hasPackage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    const/4 p0, 0x0

    const-string v0, "MultiSIMController"

    if-nez p1, :cond_0

    .line 1068
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "context is null : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    .line 1071
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v1, 0x1

    const/16 v2, 0x80

    .line 1075
    :try_start_0
    invoke-virtual {p1, p2, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move p0, v1

    goto :goto_0

    .line 1078
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package not found : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return p0
.end method

.method private init()V
    .locals 9

    .line 176
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.LOCALE_CHANGED"

    .line 178
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.ACTION_DEFAULT_VOICE_SUBSCRIPTION_CHANGED"

    .line 182
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.telephony.action.DEFAULT_SMS_SUBSCRIPTION_CHANGED"

    .line 183
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    .line 184
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    .line 185
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    .line 186
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.samsung.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGE_SUCCESS"

    .line 188
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.samsung.action.ACTION_NETWORK_SLOT_CHANGING_FINISH"

    .line 189
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.PHONE_STATE"

    .line 191
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.SERVICE_STATE"

    .line 192
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.samsung.android.softsim.ServiceStatus"

    .line 195
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.samsung.android.knox.intent.action.KNOX_RESTRICTIONS_CHANGED_INTERNAL"

    .line 198
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 200
    const-class v2, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v3, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 202
    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;->getService(Landroid/content/Context;)Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mSimCardManagerService:Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerService;

    .line 204
    const-class v1, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkController;

    iput-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mNetController:Lcom/android/systemui/statusbar/policy/NetworkController;

    .line 205
    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->getMobileDataController()Lcom/android/settingslib/net/DataUsageController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    .line 208
    new-instance v1, Lcom/android/systemui/settings/multisim/MultiSIMData;

    invoke-direct {v1}, Lcom/android/systemui/settings/multisim/MultiSIMData;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mDataNotified:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 209
    new-instance v1, Lcom/android/systemui/settings/multisim/MultiSIMData;

    invoke-direct {v1}, Lcom/android/systemui/settings/multisim/MultiSIMData;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    const/4 v1, 0x0

    .line 210
    iput-boolean v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mInitDone:Z

    .line 211
    sget-object v2, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->VOICE:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    invoke-direct {p0, v2}, Lcom/android/systemui/settings/multisim/MultiSIMController;->updateCurrentDefaultSlot(Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;)V

    .line 212
    sget-object v2, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->SMS:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    invoke-direct {p0, v2}, Lcom/android/systemui/settings/multisim/MultiSIMController;->updateCurrentDefaultSlot(Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;)V

    .line 213
    sget-object v2, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->DATA:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    invoke-direct {p0, v2}, Lcom/android/systemui/settings/multisim/MultiSIMController;->updateCurrentDefaultSlot(Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;)V

    .line 215
    iget-object v2, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$array;->multisim_psim_icon_res_id_list:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    iput v2, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mMaxSimIconNumber:I

    .line 216
    iget-object v2, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget-object v2, v2, Lcom/android/systemui/settings/multisim/MultiSIMData;->simImageIdx:[I

    iget-object v3, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "select_icon_1"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    aput v3, v2, v1

    .line 217
    iget-object v2, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget-object v2, v2, Lcom/android/systemui/settings/multisim/MultiSIMData;->simImageIdx:[I

    aget v3, v2, v1

    const-string v5, "MultiSIMController"

    if-ltz v3, :cond_0

    aget v2, v2, v1

    iget v3, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mMaxSimIconNumber:I

    if-lt v2, v3, :cond_1

    .line 218
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MultiSIMPreferredSlotBar SimImageIdx[0] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget-object v3, v3, Lcom/android/systemui/settings/multisim/MultiSIMData;->simImageIdx:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v2, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget-object v2, v2, Lcom/android/systemui/settings/multisim/MultiSIMData;->simImageIdx:[I

    aput v1, v2, v1

    .line 221
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget-object v2, v2, Lcom/android/systemui/settings/multisim/MultiSIMData;->simName:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "select_name_1"

    invoke-static {v3, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 222
    iget-object v2, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget-object v2, v2, Lcom/android/systemui/settings/multisim/MultiSIMData;->simImageIdx:[I

    iget-object v3, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v7, "select_icon_2"

    const/4 v8, 0x1

    invoke-static {v3, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    aput v3, v2, v8

    .line 223
    iget-object v2, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget-object v2, v2, Lcom/android/systemui/settings/multisim/MultiSIMData;->simImageIdx:[I

    aget v3, v2, v8

    if-ltz v3, :cond_2

    aget v2, v2, v8

    iget v3, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mMaxSimIconNumber:I

    if-lt v2, v3, :cond_3

    .line 224
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MultiSIMPreferredSlotBar SimImageIdx[1] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget-object v3, v3, Lcom/android/systemui/settings/multisim/MultiSIMData;->simImageIdx:[I

    aget v3, v3, v8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v2, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget-object v2, v2, Lcom/android/systemui/settings/multisim/MultiSIMData;->simImageIdx:[I

    aput v8, v2, v8

    .line 227
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget-object v2, v2, Lcom/android/systemui/settings/multisim/MultiSIMData;->simName:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v5, "select_name_2"

    invoke-static {v3, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    .line 229
    iget-object v2, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mSimIconAndNameObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 231
    iget-object v2, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mSimIconAndNameObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 233
    iget-object v2, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v7}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mSimIconAndNameObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 235
    iget-object v2, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mSimIconAndNameObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 237
    iget-object v2, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "prefered_voice_call"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mPreferedVoiceObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 239
    iget-object v2, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "mobile_data"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mMobileDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 241
    iget-object v2, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "multi_sim_datacross_slot"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mMultiSimDataCrossSlotObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 243
    iget-object v2, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "set_network_mode_by_quick_panel"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mChangNetModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 246
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/util/SettingsHelper;

    iget-object v3, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    iget-object v4, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mSettingsValueList:[Landroid/net/Uri;

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 247
    iget-object v2, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    iget-object v3, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mSettingsValueList:[Landroid/net/Uri;

    aget-object v1, v3, v1

    invoke-interface {v2, v1}, Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;->onChanged(Landroid/net/Uri;)V

    .line 249
    invoke-direct {p0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->getSRoamingVirtualSlot()I

    move-result v1

    if-ne v1, v8, :cond_4

    .line 250
    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iput-boolean v8, v1, Lcom/android/systemui/settings/multisim/MultiSIMData;->isSRoaming:Z

    .line 253
    :cond_4
    const-class v1, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/ActivityStarter;

    iput-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 255
    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v1, v2}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 258
    invoke-direct {p0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->updateSimSlotType()V

    .line 259
    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    invoke-direct {p0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->isRestrictionsForMmsUse()Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/systemui/settings/multisim/MultiSIMData;->isRestrictionsForMmsUse:Z

    .line 260
    invoke-direct {p0, v8}, Lcom/android/systemui/settings/multisim/MultiSIMController;->updateMultiSimReadyState(Z)V

    .line 261
    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    invoke-direct {p0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->checkCall()Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/systemui/settings/multisim/MultiSIMData;->isCalling:Z

    .line 262
    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    invoke-direct {p0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->isDataEnabled()Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/systemui/settings/multisim/MultiSIMData;->isDataEnabled:Z

    .line 263
    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isAirplaneModeOn()Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/systemui/settings/multisim/MultiSIMData;->airplaneMode:Z

    .line 265
    invoke-direct {p0, v8}, Lcom/android/systemui/settings/multisim/MultiSIMController;->updateCarrierNameAndPhoneNumber(Z)V

    .line 267
    iput-boolean v8, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mInitDone:Z

    .line 268
    invoke-direct {p0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->notifyDataToCallback()V

    return-void
.end method

.method private isAisNetworkLock(I)Z
    .locals 5

    const-string/jumbo p0, "ro.csc.sales_code"

    const-string/jumbo v0, "unknown"

    .line 514
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "AIS"

    .line 516
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    const-string p0, "gsm.sim.state"

    const-string v1, "NOT_READY"

    .line 517
    invoke-static {p0, v0, v1}, Lcom/android/systemui/util/DeviceState;->getMSimSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 518
    invoke-static {p0, v0, v1}, Lcom/android/systemui/util/DeviceState;->getMSimSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "MultiSIMController"

    const-string v3, "NETWORK_LOCKED"

    const/4 v4, 0x1

    if-nez p1, :cond_0

    .line 520
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string/jumbo p0, "sim1 Network Lock!!"

    .line 521
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_0
    if-ne p1, v4, :cond_1

    .line 525
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string/jumbo p0, "sim2 Network Lock!!"

    .line 526
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_1
    return v0
.end method

.method private isDataEnabled()Z
    .locals 1

    .line 761
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    if-eqz v0, :cond_0

    .line 762
    invoke-virtual {v0}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    invoke-virtual {p0}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isDefaultDataSlotAllowedByMethodCall(I)Z
    .locals 6

    const-string v0, ", "

    const-string v1, "MultiSIMController"

    const-string v2, "isDefaultDataSlotAllowed"

    const/4 v3, 0x0

    .line 983
    :try_start_0
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v5, "selectItem"

    .line 984
    invoke-virtual {v4, v5, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 985
    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Lcom/android/systemui/settings/multisim/MultiSIMController;->INTERNAL_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {p0, p1, v2, v5, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_0

    .line 987
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "bundle is null : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    const-string/jumbo p1, "success"

    .line 991
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    const-string/jumbo v4, "result"

    .line 992
    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    .line 993
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    .line 996
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method private isMMSuse()Z
    .locals 3

    .line 744
    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "multi_sim_datacross_slot"

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    .line 745
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isMMSuse ="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MultiSIMController"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eq p0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isRestrictionsForMmsUse()Z
    .locals 2

    .line 738
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isQcomChipType()Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SEM_FIRST_SDK_INT:I

    const/16 v1, 0x1f

    if-ge v0, v1, :cond_0

    .line 740
    invoke-direct {p0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->isMMSuse()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$new$0()V
    .locals 4

    .line 272
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mDataNotified:Lcom/android/systemui/settings/multisim/MultiSIMData;

    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/multisim/MultiSIMData;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 273
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mDataCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 274
    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mDataCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/settings/multisim/MultiSIMController$MultiSIMDataChangedCallback;

    if-eqz v1, :cond_0

    .line 276
    new-instance v2, Lcom/android/systemui/settings/multisim/MultiSIMData;

    invoke-direct {v2}, Lcom/android/systemui/settings/multisim/MultiSIMData;-><init>()V

    .line 277
    iget-object v3, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    invoke-virtual {v2, v3}, Lcom/android/systemui/settings/multisim/MultiSIMData;->copyFrom(Lcom/android/systemui/settings/multisim/MultiSIMData;)V

    .line 278
    invoke-interface {v1, v2}, Lcom/android/systemui/settings/multisim/MultiSIMController$MultiSIMDataChangedCallback;->onDataChanged(Lcom/android/systemui/settings/multisim/MultiSIMData;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 281
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mDataNotified:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    invoke-virtual {v0, p0}, Lcom/android/systemui/settings/multisim/MultiSIMData;->copyFrom(Lcom/android/systemui/settings/multisim/MultiSIMData;)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$new$4()V
    .locals 3

    const/4 v0, 0x0

    .line 884
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mVisCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 885
    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mVisCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/settings/multisim/MultiSIMController$MultiSIMVisibilityChangedCallback;

    if-eqz v1, :cond_0

    .line 887
    iget-boolean v2, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mUIVisible:Z

    invoke-interface {v1, v2}, Lcom/android/systemui/settings/multisim/MultiSIMController$MultiSIMVisibilityChangedCallback;->onVisibilityChanged(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private synthetic lambda$onUIVisibilityChanged$3()V
    .locals 0

    .line 825
    invoke-direct {p0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->updateCurrentDefaultSlot()V

    return-void
.end method

.method private static synthetic lambda$removeCallback$1(Lcom/android/systemui/settings/multisim/MultiSIMController$MultiSIMDataChangedCallback;Ljava/lang/ref/WeakReference;)Z
    .locals 0

    .line 613
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

.method private static synthetic lambda$removeCallback$2(Lcom/android/systemui/settings/multisim/MultiSIMController$MultiSIMVisibilityChangedCallback;Ljava/lang/ref/WeakReference;)Z
    .locals 0

    .line 631
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

.method private notifyDataToCallback()V
    .locals 2

    .line 286
    iget-boolean v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mInitDone:Z

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mUIHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mNotifyDataToCallbackRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 288
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mUIHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mNotifyDataToCallbackRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private notifyVisToCallback()V
    .locals 2

    .line 893
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mUIHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mNotifyVisToCallbackRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 894
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mUIHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mNotifyVisToCallbackRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private removeRemainMessage()V
    .locals 1

    .line 766
    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mUIHandler:Landroid/os/Handler;

    if-eqz p0, :cond_0

    const/16 v0, 0x3e8

    .line 767
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method private setDefaultSlotByMethodCall(Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;I)V
    .locals 6

    const-string v0, ", "

    const-string v1, "MultiSIMController"

    const-string/jumbo v2, "quickpanel_simcard_change"

    .line 933
    sget-object v3, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->VOICE:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    const/4 v4, 0x0

    if-ne p1, v3, :cond_0

    const-string p1, "PREFERRED_VOICE_CALLS"

    goto :goto_0

    .line 935
    :cond_0
    sget-object v3, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->SMS:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    if-ne p1, v3, :cond_1

    const-string p1, "PREFERRED_TEXT_MESSAGES"

    goto :goto_0

    .line 937
    :cond_1
    sget-object v3, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->DATA:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    if-ne p1, v3, :cond_2

    const-string p1, "PREFERRED_MOBILE_DATA"

    goto :goto_0

    :cond_2
    move-object p1, v4

    .line 942
    :goto_0
    :try_start_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v5, "changeType"

    .line 943
    invoke-virtual {v3, v5, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "selectItem"

    .line 944
    invoke-virtual {v3, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 946
    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Lcom/android/systemui/settings/multisim/MultiSIMController;->INTERNAL_URI:Landroid/net/Uri;

    invoke-virtual {p0, p1, v2, v4, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_3

    .line 948
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "bundle is null : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    const-string/jumbo p1, "success"

    .line 952
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    const-string p2, "error"

    .line 953
    invoke-virtual {p0, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    .line 954
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 956
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private updateCarrierNameAndPhoneNumber(Z)V
    .locals 3

    if-eqz p1, :cond_0

    const p1, 0x104064b

    .line 564
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mNetworkNameDefault:Ljava/lang/String;

    .line 565
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->qs_multisim_unknown_number:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mUnknownPhoneNumber:Ljava/lang/String;

    .line 566
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->qs_multisim_invalid_sim_info:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mInvalidSimInfo:Ljava/lang/String;

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x2

    if-ge p1, v0, :cond_4

    .line 569
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 571
    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget-object v1, v1, Lcom/android/systemui/settings/multisim/MultiSIMData;->carrierName:[Ljava/lang/String;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 572
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mNetworkNameDefault:Ljava/lang/String;

    :goto_1
    aput-object v2, v1, p1

    .line 573
    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget-object v1, v1, Lcom/android/systemui/settings/multisim/MultiSIMData;->phoneNumber:[Ljava/lang/String;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getNumber()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, p1

    .line 574
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget-object v0, v0, Lcom/android/systemui/settings/multisim/MultiSIMData;->phoneNumber:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 576
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget-object v0, v0, Lcom/android/systemui/settings/multisim/MultiSIMData;->phoneNumber:[Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/systemui/settings/multisim/MultiSIMController;->getOwnNumber(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    .line 577
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget-object v0, v0, Lcom/android/systemui/settings/multisim/MultiSIMData;->phoneNumber:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 578
    invoke-direct {p0, p1}, Lcom/android/systemui/settings/multisim/MultiSIMController;->isAisNetworkLock(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 579
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget-object v0, v0, Lcom/android/systemui/settings/multisim/MultiSIMData;->phoneNumber:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mInvalidSimInfo:Ljava/lang/String;

    aput-object v1, v0, p1

    goto :goto_2

    .line 581
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget-object v0, v0, Lcom/android/systemui/settings/multisim/MultiSIMData;->phoneNumber:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mUnknownPhoneNumber:Ljava/lang/String;

    aput-object v1, v0, p1

    :cond_3
    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private updateCurrentDefaultSlot()V
    .locals 2

    const-string v0, "MultiSIMController"

    const-string/jumbo v1, "updateCurrentDefaultSlot list"

    .line 1009
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mDefaultIdUpdateList:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1011
    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mDefaultIdUpdateList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1012
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    .line 1013
    invoke-direct {p0, v1}, Lcom/android/systemui/settings/multisim/MultiSIMController;->updateCurrentDefaultSlot(Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateCurrentDefaultSlot(Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;)V
    .locals 3

    .line 1018
    iget-boolean v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mUIVisible:Z

    const-string v1, "MultiSIMController"

    if-nez v0, :cond_1

    .line 1019
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mDefaultIdUpdateList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1020
    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mDefaultIdUpdateList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1022
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateCurrentDefaultSlot later type = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1025
    :cond_1
    sget-object v0, Lcom/android/systemui/settings/multisim/MultiSIMController$13;->$SwitchMap$com$android$systemui$settings$multisim$MultiSIMController$ButtonType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    goto/16 :goto_2

    .line 1040
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->getPhoneId(I)I

    move-result v0

    iput v0, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultDataSimId:I

    .line 1041
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateCurrentDefaultSlot : data = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget v0, v0, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultDataSimId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1036
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubscriptionId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->getPhoneId(I)I

    move-result v0

    iput v0, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultSmsSimId:I

    .line 1037
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateCurrentDefaultSlot : sms = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget v0, v0, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultSmsSimId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1028
    :cond_4
    :try_start_0
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mSimCardManagerService:Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerService;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;->isServiceRunningCheck(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 1029
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mSimCardManagerService:Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerService;

    invoke-interface {v2}, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerService;->GetCurrentVoiceCall()I

    move-result v2

    goto :goto_1

    :cond_6
    invoke-direct {p0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->getCurrentVoiceSlotByMethodCall()I

    move-result v2

    :goto_1
    iput v2, v0, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultVoiceSimId:I

    .line 1030
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateCurrentDefaultSlot : voice = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget v2, v2, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultVoiceSimId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    const-string v0, "Caught exception from updateCurrentDefaultSlot"

    .line 1032
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1044
    :goto_2
    invoke-direct {p0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->notifyDataToCallback()V

    return-void
.end method

.method private updateMultiSimReadyState(Z)V
    .locals 5

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    .line 536
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->getLoadedSimCount(Landroid/content/Context;)I

    move-result p1

    if-ne p1, v0, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mIsLoadedMultiSim:Z

    .line 538
    :cond_1
    iget-boolean p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mIsLoadedMultiSim:Z

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mNeedCheckOpportunisticESim:Z

    if-eqz p1, :cond_4

    .line 539
    iput-boolean v2, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mHasOpportunisticESim:Z

    .line 540
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/SubscriptionManager;->getCompleteActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object p1

    .line 541
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v0, :cond_3

    .line 542
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    .line 543
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/SubscriptionInfo;

    .line 544
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getGroupUuid()Landroid/os/ParcelUuid;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getGroupUuid()Landroid/os/ParcelUuid;

    move-result-object v3

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getGroupUuid()Landroid/os/ParcelUuid;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 545
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->isOpportunistic()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->isOpportunistic()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 546
    :cond_2
    iput-boolean v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mHasOpportunisticESim:Z

    .line 550
    :cond_3
    iput-boolean v2, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mNeedCheckOpportunisticESim:Z

    .line 551
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateMultiSimReadyState: mHasOpportunisticESim = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mHasOpportunisticESim:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MultiSIMController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget-boolean v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mIsLoadedMultiSim:Z

    if-eqz v0, :cond_5

    iget-boolean p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mHasOpportunisticESim:Z

    if-nez p0, :cond_5

    goto :goto_1

    :cond_5
    move v1, v2

    :goto_1
    iput-boolean v1, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->isMultiSimReady:Z

    return-void
.end method

.method private updateSimSlotType()V
    .locals 3

    const/4 v0, 0x0

    .line 917
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget-object v1, v1, Lcom/android/systemui/settings/multisim/MultiSIMData;->isESimSlot:[Z

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 918
    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->isESIM(I)Z

    move-result v2

    aput-boolean v2, v1, v0

    .line 919
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSimSlotType() - sim slot "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is eSim: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget-object v2, v2, Lcom/android/systemui/settings/multisim/MultiSIMData;->isESimSlot:[Z

    aget-boolean v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MultiSIMController"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 3

    .line 704
    const-class v0, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 705
    iput-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 707
    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mPreferedVoiceObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 708
    iput-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mPreferedVoiceObserver:Landroid/database/ContentObserver;

    .line 710
    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mMobileDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 711
    iput-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mMobileDataObserver:Landroid/database/ContentObserver;

    .line 713
    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mMultiSimDataCrossSlotObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 714
    iput-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mMultiSimDataCrossSlotObserver:Landroid/database/ContentObserver;

    .line 716
    const-class v1, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/SettingsHelper;

    iget-object v2, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v1, v2}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    .line 717
    iput-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    .line 719
    invoke-direct {p0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->removeRemainMessage()V

    .line 720
    invoke-virtual {p0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->unRegisterSimCardManagerCallback()V

    .line 722
    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v1, v2}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 723
    iput-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 725
    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mSimIconAndNameObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 726
    iput-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mSimIconAndNameObserver:Landroid/database/ContentObserver;

    .line 728
    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mChangNetModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 729
    iput-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mChangNetModeObserver:Landroid/database/ContentObserver;

    .line 731
    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mVisCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 732
    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mDataCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 734
    sput-object v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->sInstance:Lcom/android/systemui/settings/multisim/MultiSIMController;

    return-void
.end method

.method public getCurrentData()Lcom/android/systemui/settings/multisim/MultiSIMData;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 159
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    if-nez v0, :cond_0

    .line 160
    new-instance v0, Lcom/android/systemui/settings/multisim/MultiSIMData;

    invoke-direct {v0}, Lcom/android/systemui/settings/multisim/MultiSIMData;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 162
    :cond_0
    new-instance v0, Lcom/android/systemui/settings/multisim/MultiSIMData;

    invoke-direct {v0}, Lcom/android/systemui/settings/multisim/MultiSIMData;-><init>()V

    .line 163
    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    invoke-virtual {v0, p0}, Lcom/android/systemui/settings/multisim/MultiSIMData;->copyFrom(Lcom/android/systemui/settings/multisim/MultiSIMData;)V

    return-object v0
.end method

.method public isBlockedAllMultiSimBar()Z
    .locals 2

    .line 593
    const-class p0, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-static {}, Lcom/android/systemui/Operator;->shouldFirstSimLock()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ril.lockpolicy"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 594
    :cond_0
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-interface {v0}, Lcom/android/systemui/knox/KnoxStateMonitor;->isBlockedEdmSettingsChange()Z

    move-result v0

    if-nez v0, :cond_2

    .line 595
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-interface {p0}, Lcom/android/systemui/knox/KnoxStateMonitor;->isUserMobileDataRestricted()Z

    move-result p0

    if-eqz p0, :cond_1

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

.method public isDataBlocked(I)Z
    .locals 3

    .line 685
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mSimCardManagerService:Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerService;

    const/4 v1, 0x0

    const-string v2, "MultiSIMController"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;->isServiceRunningCheck(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 687
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mSimCardManagerService:Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerService;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerService;->isDefaultDataSlotAllowed(I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string p1, "Caught exception from isDataBlocked"

    .line 689
    invoke-static {v2, p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1

    .line 692
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mSimCardManagerService:Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerService;

    if-eqz v0, :cond_1

    const-string v0, "isDataBlocked : isDefaultDataSlotAllowedByMethodCall"

    .line 693
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    invoke-direct {p0, p1}, Lcom/android/systemui/settings/multisim/MultiSIMController;->isDefaultDataSlotAllowedByMethodCall(I)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    .line 695
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;->getService(Landroid/content/Context;)Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mSimCardManagerService:Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerService;

    return p1

    :cond_1
    const-string p0, "isDataBlocked : mSimCardManagerService is null."

    .line 698
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public isMultiSimReady()Z
    .locals 0

    .line 558
    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget-boolean p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isMultiSimReady:Z

    return p0
.end method

.method public isSupportCallpreferredOthers()Z
    .locals 4

    .line 652
    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object p0

    const/4 v0, 0x1

    .line 654
    invoke-virtual {p0, v0}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts(Z)Ljava/util/List;

    move-result-object v1

    .line 656
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/PhoneAccountHandle;

    .line 657
    invoke-virtual {p0, v2}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 660
    invoke-virtual {v2}, Landroid/telecom/PhoneAccount;->getCapabilities()I

    move-result v2

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_1

    move v3, v0

    :cond_1
    if-nez v3, :cond_0

    const-string p0, "MultiSIMController"

    const-string v1, "Support Call preferred Others"

    .line 662
    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2
    return v3
.end method

.method public launchSimManager()V
    .locals 4

    .line 636
    invoke-virtual {p0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->isBlockedAllMultiSimBar()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 638
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "MultiSIMController"

    const-string/jumbo v2, "onClick()"

    .line 639
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v2, "com.samsung.android.app.telephonyui"

    const-string v3, "com.samsung.android.app.telephonyui.netsettings.ui.simcardmanager.SimCardMgrActivity"

    .line 642
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v2, 0x10008000

    .line 644
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 645
    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    const/4 v2, 0x0

    invoke-interface {p0, v0, v2}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "activity not found"

    .line 647
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onUIVisibilityChanged(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 823
    iget-boolean v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mUIVisible:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 824
    iput-boolean v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mUIVisible:Z

    .line 825
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/settings/multisim/MultiSIMController$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/systemui/settings/multisim/MultiSIMController$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/settings/multisim/MultiSIMController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 827
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mUIVisible:Z

    .line 828
    invoke-direct {p0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->notifyVisToCallback()V

    return-void
.end method

.method public registerCallback(Lcom/android/systemui/settings/multisim/MultiSIMController$MultiSIMDataChangedCallback;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    move v1, v0

    .line 600
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mDataCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 601
    iget-object v2, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mDataCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 605
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mDataCallbacks:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 606
    invoke-virtual {p0, p1}, Lcom/android/systemui/settings/multisim/MultiSIMController;->removeCallback(Lcom/android/systemui/settings/multisim/MultiSIMController$MultiSIMDataChangedCallback;)V

    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method public registerCallback(Lcom/android/systemui/settings/multisim/MultiSIMController$MultiSIMVisibilityChangedCallback;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    move v1, v0

    .line 618
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mVisCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 619
    iget-object v2, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mVisCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 623
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mVisCallbacks:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 624
    invoke-virtual {p0, p1}, Lcom/android/systemui/settings/multisim/MultiSIMController;->removeCallback(Lcom/android/systemui/settings/multisim/MultiSIMController$MultiSIMVisibilityChangedCallback;)V

    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method public registerSimCardManagerCallback()V
    .locals 3

    .line 832
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mSimCardManagerService:Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerService;

    const-string v1, "MultiSIMController"

    if-nez v0, :cond_0

    .line 833
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;->getService(Landroid/content/Context;)Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mSimCardManagerService:Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerService;

    .line 834
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerSimCardManagerCallback SimCardManagerService "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mSimCardManagerService:Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerService;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;->getSimCardManagerServiceCallback()Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceCallback;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mSimCardCallback:Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceCallback;

    if-nez v0, :cond_2

    .line 838
    new-instance v0, Lcom/android/systemui/settings/multisim/MultiSIMController$12;

    invoke-direct {v0, p0}, Lcom/android/systemui/settings/multisim/MultiSIMController$12;-><init>(Lcom/android/systemui/settings/multisim/MultiSIMController;)V

    iput-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mSimCardCallback:Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceCallback;

    .line 850
    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mSimCardManagerService:Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerService;

    if-eqz p0, :cond_1

    .line 852
    :try_start_0
    invoke-interface {p0, v0}, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerService;->registerSimCardManagerServiceCallback(Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceCallback;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "Caught exception from registerSimCardManagerCallback"

    .line 854
    invoke-static {v1, v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    const-string/jumbo p0, "registerSimCardManagerCallback : mSimCardManagerService is null "

    .line 857
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string/jumbo p0, "registerSimCardManagerCallback : mSimCardCallback is not null "

    .line 860
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public removeCallback(Lcom/android/systemui/settings/multisim/MultiSIMController$MultiSIMDataChangedCallback;)V
    .locals 1

    .line 613
    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mDataCallbacks:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/settings/multisim/MultiSIMController$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lcom/android/systemui/settings/multisim/MultiSIMController$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/settings/multisim/MultiSIMController$MultiSIMDataChangedCallback;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    return-void
.end method

.method public removeCallback(Lcom/android/systemui/settings/multisim/MultiSIMController$MultiSIMVisibilityChangedCallback;)V
    .locals 1

    .line 631
    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mVisCallbacks:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/settings/multisim/MultiSIMController$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Lcom/android/systemui/settings/multisim/MultiSIMController$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/settings/multisim/MultiSIMController$MultiSIMVisibilityChangedCallback;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    return-void
.end method

.method public setDefaultSlot(Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;I)V
    .locals 3

    .line 671
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDefaultSlot : type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MultiSIMController"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    sget-object v0, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->DATA:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget v2, v0, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultDataSimId:I

    if-eq p2, v2, :cond_0

    const/4 v2, 0x1

    .line 673
    iput-boolean v2, v0, Lcom/android/systemui/settings/multisim/MultiSIMData;->changingDataInternally:Z

    .line 675
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;->isServiceRunningCheck(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 676
    invoke-virtual {p1}, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->getIndex()I

    move-result p0

    invoke-static {p0, p2}, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;->setChangeSimCardManagerSlot(II)Z

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "setDefaultSlotByMethodCall"

    .line 678
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/settings/multisim/MultiSIMController;->setDefaultSlotByMethodCall(Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;I)V

    .line 680
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;->getService(Landroid/content/Context;)Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mSimCardManagerService:Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerService;

    :goto_0
    return-void
.end method

.method public unRegisterSimCardManagerCallback()V
    .locals 3

    .line 865
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mSimCardManagerService:Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerService;

    const-string v1, "MultiSIMController"

    if-eqz v0, :cond_1

    .line 867
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mSimCardCallback:Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceCallback;

    if-eqz v2, :cond_0

    .line 868
    invoke-interface {v0, v2}, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerService;->unregisterSimCardManagerServiceCallback(Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceCallback;)Z

    .line 870
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;->isServiceRunningCheck(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 871
    invoke-static {}, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;->CloseService()Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Caught exception from unRegisterSimCardManagerCallback"

    .line 874
    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "unRegisterSimCardManagerCallback : mSimCardManagerService is null "

    .line 877
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 879
    iput-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mSimCardManagerService:Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerService;

    .line 880
    iput-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mSimCardCallback:Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceCallback;

    return-void
.end method
