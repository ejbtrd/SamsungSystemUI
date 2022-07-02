.class Lcom/android/systemui/knox/ContainerMonitor;
.super Ljava/lang/Object;
.source "ContainerMonitor.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field private final ACTION_RCP_POLICY_CHANGED:Ljava/lang/String;

.field private final ACTION_SECURE_FOLDER_SETUP_COMPLETE:Ljava/lang/String;

.field private final ANDROID_NAME:Ljava/lang/String;

.field private final CMAIL_NAME:Ljava/lang/String;

.field private final EFOTA_NAME:Ljava/lang/String;

.field private final EMAIL_COMPOSER_NAME:Ljava/lang/String;

.field private final EMAIL_NAME:Ljava/lang/String;

.field private final EMAIL_PROVIDER_NAME:Ljava/lang/String;

.field private final EMAIL_SYNC_NAME:Ljava/lang/String;

.field private final EMAIL_UI_NAME:Ljava/lang/String;

.field private final KNOXCORE_NAME:Ljava/lang/String;

.field private final KNOX_DEBUG:Z

.field private final KNOX_EXPORT_DATA:I

.field private final KNOX_IMPORT_DATA:I

.field private final KNOX_SANITIZING:I

.field private final KNOX_SANITIZING_LOCKSCREEN:I

.field private final KNOX_SWITCHER_NAME:Ljava/lang/String;

.field private final MESSAGING_NAME:Ljava/lang/String;

.field private final MMS_NAME:Ljava/lang/String;

.field private final PHONE_NAME:Ljava/lang/String;

.field private final SERVER_TELECOM_NAME:Ljava/lang/String;

.field private final SETTINGSRECEIVER_NAME:Ljava/lang/String;

.field private final SETTINGS_NAME:Ljava/lang/String;

.field private final SYSTEMUI_NAME:Ljava/lang/String;

.field private final TELEPHONYUI_NAME:Ljava/lang/String;

.field private final USERID:Ljava/lang/String;

.field private final VVM_NAME:Ljava/lang/String;

.field private final knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field mContainerStateMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/knox/SemPersonaState;",
            ">;"
        }
    .end annotation
.end field

.field private final mDPMPolicyReceiver:Landroid/content/BroadcastReceiver;

.field private final mExportDataPolicyForUserCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mImportDataPolicyForUserCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInCallUIPackageName:Ljava/lang/String;

.field private mIsContainerKioskMode:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private final mPersonaLaunchReceiver:Landroid/content/BroadcastReceiver;

.field private final mPersonaRemovalStartedReceiver:Landroid/content/BroadcastReceiver;

.field private mPersonas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPm:Lcom/samsung/android/knox/SemPersonaManager;

.field private final mRcpPolicyReceiver:Landroid/content/BroadcastReceiver;

.field private final mSanitizeDPMPolicyForUserCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSanitizeDataPolicyForUserCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSanitizeLockScreenDataPolicyForUserCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mStateReceiver:Landroid/os/ContainerStateReceiver;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/knox/KnoxStateMonitorImpl;)V
    .locals 2

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "ro.build.type"

    .line 42
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/knox/ContainerMonitor;->KNOX_DEBUG:Z

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lcom/android/systemui/knox/ContainerMonitor;->mPm:Lcom/samsung/android/knox/SemPersonaManager;

    .line 47
    iput-object v0, p0, Lcom/android/systemui/knox/ContainerMonitor;->mPersonas:Ljava/util/List;

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/android/systemui/knox/ContainerMonitor;->mIsContainerKioskMode:Z

    const-string/jumbo v0, "samsung.knox.intent.action.RCP_POLICY_CHANGED"

    .line 50
    iput-object v0, p0, Lcom/android/systemui/knox/ContainerMonitor;->ACTION_RCP_POLICY_CHANGED:Ljava/lang/String;

    const-string v0, "com.samsung.knox.securefolder.SETUP_COMPLETE"

    .line 51
    iput-object v0, p0, Lcom/android/systemui/knox/ContainerMonitor;->ACTION_SECURE_FOLDER_SETUP_COMPLETE:Ljava/lang/String;

    const-string/jumbo v0, "userId"

    .line 52
    iput-object v0, p0, Lcom/android/systemui/knox/ContainerMonitor;->USERID:Ljava/lang/String;

    const-string v0, "com.samsung.android.email.provider"

    .line 54
    iput-object v0, p0, Lcom/android/systemui/knox/ContainerMonitor;->EMAIL_PROVIDER_NAME:Ljava/lang/String;

    const-string v0, "com.samsung.android.email.sync"

    .line 55
    iput-object v0, p0, Lcom/android/systemui/knox/ContainerMonitor;->EMAIL_SYNC_NAME:Ljava/lang/String;

    const-string v0, "com.samsung.android.email.ui"

    .line 56
    iput-object v0, p0, Lcom/android/systemui/knox/ContainerMonitor;->EMAIL_UI_NAME:Ljava/lang/String;

    const-string v0, "com.samsung.android.email.composer"

    .line 57
    iput-object v0, p0, Lcom/android/systemui/knox/ContainerMonitor;->EMAIL_COMPOSER_NAME:Ljava/lang/String;

    const-string v0, "com.android.email"

    .line 58
    iput-object v0, p0, Lcom/android/systemui/knox/ContainerMonitor;->EMAIL_NAME:Ljava/lang/String;

    const-string v0, "com.android.mms"

    .line 59
    iput-object v0, p0, Lcom/android/systemui/knox/ContainerMonitor;->MMS_NAME:Ljava/lang/String;

    const-string v0, "com.samsung.android.messaging"

    .line 60
    iput-object v0, p0, Lcom/android/systemui/knox/ContainerMonitor;->MESSAGING_NAME:Ljava/lang/String;

    const-string v0, "com.kddi.android.cmail"

    .line 61
    iput-object v0, p0, Lcom/android/systemui/knox/ContainerMonitor;->CMAIL_NAME:Ljava/lang/String;

    const-string v0, "com.android.server.telecom"

    .line 62
    iput-object v0, p0, Lcom/android/systemui/knox/ContainerMonitor;->SERVER_TELECOM_NAME:Ljava/lang/String;

    const-string v0, "com.samsung.android.app.telephonyui"

    .line 63
    iput-object v0, p0, Lcom/android/systemui/knox/ContainerMonitor;->TELEPHONYUI_NAME:Ljava/lang/String;

    const-string v0, "com.samsung.android.SettingsReceiver"

    .line 64
    iput-object v0, p0, Lcom/android/systemui/knox/ContainerMonitor;->SETTINGSRECEIVER_NAME:Ljava/lang/String;

    const-string v0, "com.android.systemui"

    .line 65
    iput-object v0, p0, Lcom/android/systemui/knox/ContainerMonitor;->SYSTEMUI_NAME:Ljava/lang/String;

    const-string v0, "com.android.settings"

    .line 66
    iput-object v0, p0, Lcom/android/systemui/knox/ContainerMonitor;->SETTINGS_NAME:Ljava/lang/String;

    const-string v0, "com.android.phone"

    .line 67
    iput-object v0, p0, Lcom/android/systemui/knox/ContainerMonitor;->PHONE_NAME:Ljava/lang/String;

    const-string v0, "android"

    .line 68
    iput-object v0, p0, Lcom/android/systemui/knox/ContainerMonitor;->ANDROID_NAME:Ljava/lang/String;

    const-string v0, "com.sec.knox.switcher"

    .line 69
    iput-object v0, p0, Lcom/android/systemui/knox/ContainerMonitor;->KNOX_SWITCHER_NAME:Ljava/lang/String;

    const-string v0, "com.samsung.vvm"

    .line 70
    iput-object v0, p0, Lcom/android/systemui/knox/ContainerMonitor;->VVM_NAME:Ljava/lang/String;

    const-string v0, "com.wssyncmldm"

    .line 71
    iput-object v0, p0, Lcom/android/systemui/knox/ContainerMonitor;->EFOTA_NAME:Ljava/lang/String;

    const-string v0, "com.samsung.android.knox.containercore"

    .line 72
    iput-object v0, p0, Lcom/android/systemui/knox/ContainerMonitor;->KNOXCORE_NAME:Ljava/lang/String;

    .line 74
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/knox/ContainerMonitor;->mSanitizeDPMPolicyForUserCache:Landroid/util/SparseArray;

    .line 75
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/knox/ContainerMonitor;->mSanitizeDataPolicyForUserCache:Landroid/util/SparseArray;

    .line 76
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/knox/ContainerMonitor;->mImportDataPolicyForUserCache:Landroid/util/SparseArray;

    .line 77
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/knox/ContainerMonitor;->mExportDataPolicyForUserCache:Landroid/util/SparseArray;

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/knox/ContainerMonitor;->mContainerStateMap:Ljava/util/HashMap;

    .line 80
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/knox/ContainerMonitor;->mSanitizeLockScreenDataPolicyForUserCache:Landroid/util/SparseArray;

    const/16 v0, 0x10

    .line 81
    iput v0, p0, Lcom/android/systemui/knox/ContainerMonitor;->KNOX_SANITIZING_LOCKSCREEN:I

    const/4 v0, 0x1

    .line 84
    iput v0, p0, Lcom/android/systemui/knox/ContainerMonitor;->KNOX_IMPORT_DATA:I

    const/4 v0, 0x2

    .line 85
    iput v0, p0, Lcom/android/systemui/knox/ContainerMonitor;->KNOX_EXPORT_DATA:I

    const/4 v0, 0x4

    .line 86
    iput v0, p0, Lcom/android/systemui/knox/ContainerMonitor;->KNOX_SANITIZING:I

    .line 191
    new-instance v0, Lcom/android/systemui/knox/ContainerMonitor$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/knox/ContainerMonitor$1;-><init>(Lcom/android/systemui/knox/ContainerMonitor;)V

    iput-object v0, p0, Lcom/android/systemui/knox/ContainerMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 219
    new-instance v0, Lcom/android/systemui/knox/ContainerMonitor$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/knox/ContainerMonitor$2;-><init>(Lcom/android/systemui/knox/ContainerMonitor;)V

    iput-object v0, p0, Lcom/android/systemui/knox/ContainerMonitor;->mPersonaRemovalStartedReceiver:Landroid/content/BroadcastReceiver;

    .line 235
    new-instance v0, Lcom/android/systemui/knox/ContainerMonitor$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/knox/ContainerMonitor$3;-><init>(Lcom/android/systemui/knox/ContainerMonitor;)V

    iput-object v0, p0, Lcom/android/systemui/knox/ContainerMonitor;->mPersonaLaunchReceiver:Landroid/content/BroadcastReceiver;

    .line 258
    new-instance v0, Lcom/android/systemui/knox/ContainerMonitor$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/knox/ContainerMonitor$4;-><init>(Lcom/android/systemui/knox/ContainerMonitor;)V

    iput-object v0, p0, Lcom/android/systemui/knox/ContainerMonitor;->mRcpPolicyReceiver:Landroid/content/BroadcastReceiver;

    .line 312
    new-instance v0, Lcom/android/systemui/knox/ContainerMonitor$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/knox/ContainerMonitor$5;-><init>(Lcom/android/systemui/knox/ContainerMonitor;)V

    iput-object v0, p0, Lcom/android/systemui/knox/ContainerMonitor;->mDPMPolicyReceiver:Landroid/content/BroadcastReceiver;

    .line 703
    new-instance v0, Lcom/android/systemui/knox/ContainerMonitor$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/knox/ContainerMonitor$6;-><init>(Lcom/android/systemui/knox/ContainerMonitor;)V

    iput-object v0, p0, Lcom/android/systemui/knox/ContainerMonitor;->mStateReceiver:Landroid/os/ContainerStateReceiver;

    .line 92
    iput-object p1, p0, Lcom/android/systemui/knox/ContainerMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 93
    invoke-virtual {p1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/systemui/knox/ContainerMonitor;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 94
    invoke-virtual {p1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/systemui/knox/ContainerMonitor;->mUserManager:Landroid/os/UserManager;

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/knox/ContainerMonitor;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/android/systemui/knox/ContainerMonitor;->mPersonas:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/systemui/knox/ContainerMonitor;)Landroid/os/UserManager;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/systemui/knox/ContainerMonitor;->mUserManager:Landroid/os/UserManager;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/knox/ContainerMonitor;)Landroid/util/SparseArray;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/systemui/knox/ContainerMonitor;->mSanitizeDPMPolicyForUserCache:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/systemui/knox/ContainerMonitor;ILcom/samsung/android/knox/SemPersonaState;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/knox/ContainerMonitor;->notifyContainerStateChange(ILcom/samsung/android/knox/SemPersonaState;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/knox/ContainerMonitor;)Z
    .locals 0

    .line 38
    iget-boolean p0, p0, Lcom/android/systemui/knox/ContainerMonitor;->KNOX_DEBUG:Z

    return p0
.end method

.method static synthetic access$300(Lcom/android/systemui/knox/ContainerMonitor;I)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/android/systemui/knox/ContainerMonitor;->setContainerKioskMode(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/knox/ContainerMonitor;)Z
    .locals 0

    .line 38
    iget-boolean p0, p0, Lcom/android/systemui/knox/ContainerMonitor;->mIsContainerKioskMode:Z

    return p0
.end method

.method static synthetic access$402(Lcom/android/systemui/knox/ContainerMonitor;Z)Z
    .locals 0

    .line 38
    iput-boolean p1, p0, Lcom/android/systemui/knox/ContainerMonitor;->mIsContainerKioskMode:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/knox/ContainerMonitor;)Lcom/android/systemui/knox/KnoxStateMonitorImpl;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/systemui/knox/ContainerMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/knox/ContainerMonitor;)Landroid/util/SparseArray;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/systemui/knox/ContainerMonitor;->mSanitizeDataPolicyForUserCache:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/knox/ContainerMonitor;)Landroid/util/SparseArray;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/systemui/knox/ContainerMonitor;->mSanitizeLockScreenDataPolicyForUserCache:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/knox/ContainerMonitor;)Landroid/util/SparseArray;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/systemui/knox/ContainerMonitor;->mExportDataPolicyForUserCache:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/systemui/knox/ContainerMonitor;)Landroid/util/SparseArray;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/systemui/knox/ContainerMonitor;->mImportDataPolicyForUserCache:Landroid/util/SparseArray;

    return-object p0
.end method

.method private getPolicy(ILjava/lang/String;I)Z
    .locals 7

    .line 591
    invoke-virtual {p0, p1}, Lcom/android/systemui/knox/ContainerMonitor;->isPersona(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    if-eq p3, v1, :cond_4

    const/4 v2, 0x2

    if-eq p3, v2, :cond_3

    const/4 v2, 0x4

    if-eq p3, v2, :cond_2

    const/16 v2, 0x10

    if-eq p3, v2, :cond_1

    return v0

    .line 610
    :cond_1
    iget-object p3, p0, Lcom/android/systemui/knox/ContainerMonitor;->mSanitizeLockScreenDataPolicyForUserCache:Landroid/util/SparseArray;

    goto :goto_0

    .line 600
    :cond_2
    iget-object p3, p0, Lcom/android/systemui/knox/ContainerMonitor;->mSanitizeDataPolicyForUserCache:Landroid/util/SparseArray;

    goto :goto_0

    .line 606
    :cond_3
    iget-object p3, p0, Lcom/android/systemui/knox/ContainerMonitor;->mExportDataPolicyForUserCache:Landroid/util/SparseArray;

    goto :goto_0

    .line 603
    :cond_4
    iget-object p3, p0, Lcom/android/systemui/knox/ContainerMonitor;->mImportDataPolicyForUserCache:Landroid/util/SparseArray;

    .line 617
    :goto_0
    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "ContainerMonitor"

    const-string/jumbo v4, "true"

    if-nez v2, :cond_6

    .line 620
    :try_start_0
    invoke-direct {p0}, Lcom/android/systemui/knox/ContainerMonitor;->setPersonalManager()V

    .line 621
    iget-object v5, p0, Lcom/android/systemui/knox/ContainerMonitor;->mPm:Lcom/samsung/android/knox/SemPersonaManager;

    const-string v6, "Notifications"

    invoke-virtual {v5, p1, v6, p2}, Lcom/samsung/android/knox/SemPersonaManager;->getRCPDataPolicyForUser(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 625
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "false"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 626
    :cond_5
    invoke-virtual {p3, p1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 629
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPolicy: threw an exception: "

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v3, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 633
    :cond_6
    :goto_1
    iget-boolean p0, p0, Lcom/android/systemui/knox/ContainerMonitor;->KNOX_DEBUG:Z

    if-eqz p0, :cond_7

    .line 634
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getPolicy: policyProperty:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " policy value returned = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    :cond_7
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    return v1

    :cond_8
    return v0
.end method

.method private initInternal()V
    .locals 4

    const-string v0, "ContainerMonitor"

    const-string v1, "initialized"

    .line 107
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v0, p0, Lcom/android/systemui/knox/ContainerMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {v0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 110
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    .line 111
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 113
    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    if-nez v2, :cond_1

    goto :goto_0

    .line 114
    :cond_1
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 115
    iget v2, v1, Landroid/content/pm/UserInfo;->attributes:I

    and-int/lit8 v3, v2, 0x8

    if-lez v3, :cond_2

    .line 116
    iget-object v2, p0, Lcom/android/systemui/knox/ContainerMonitor;->mContainerStateMap:Ljava/util/HashMap;

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v3, Lcom/samsung/android/knox/SemPersonaState;->ADMIN_LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    and-int/lit8 v2, v2, 0x4

    if-lez v2, :cond_3

    .line 119
    iget-object v2, p0, Lcom/android/systemui/knox/ContainerMonitor;->mContainerStateMap:Ljava/util/HashMap;

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v3, Lcom/samsung/android/knox/SemPersonaState;->TIMA_COMPROMISED:Lcom/samsung/android/knox/SemPersonaState;

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 121
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/knox/ContainerMonitor;->mKeyguardManager:Landroid/app/KeyguardManager;

    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v3}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/knox/ContainerMonitor;->mKeyguardManager:Landroid/app/KeyguardManager;

    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v3}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 122
    iget-object v2, p0, Lcom/android/systemui/knox/ContainerMonitor;->mContainerStateMap:Ljava/util/HashMap;

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v3, Lcom/samsung/android/knox/SemPersonaState;->ACTIVE:Lcom/samsung/android/knox/SemPersonaState;

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 124
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/knox/ContainerMonitor;->mKeyguardManager:Landroid/app/KeyguardManager;

    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v3}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 125
    iget-object v2, p0, Lcom/android/systemui/knox/ContainerMonitor;->mContainerStateMap:Ljava/util/HashMap;

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v3, Lcom/samsung/android/knox/SemPersonaState;->LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 130
    :cond_5
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_VOICECALL_CONFIG_INCALLUI_PACKAGE_NAME"

    .line 131
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/knox/ContainerMonitor;->mInCallUIPackageName:Ljava/lang/String;

    .line 134
    iget-object v0, p0, Lcom/android/systemui/knox/ContainerMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {v0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/knox/ContainerMonitor;->mStateReceiver:Landroid/os/ContainerStateReceiver;

    invoke-static {v0, p0}, Landroid/os/ContainerStateReceiver;->register(Landroid/content/Context;Landroid/os/ContainerStateReceiver;)V

    return-void
.end method

.method private isNotificationSanitizedByDPM(I)Z
    .locals 5

    .line 496
    iget-object v0, p0, Lcom/android/systemui/knox/ContainerMonitor;->mSanitizeDPMPolicyForUserCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "TRUE"

    if-nez v0, :cond_2

    .line 499
    iget-object v0, p0, Lcom/android/systemui/knox/ContainerMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {v0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v4, "device_policy"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_1

    const/4 v4, 0x0

    .line 501
    invoke-virtual {v0, v4, p1}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v0

    and-int/lit8 v4, v0, 0x8

    if-nez v4, :cond_0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 504
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/knox/ContainerMonitor;->mSanitizeDPMPolicyForUserCache:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return v1

    .line 508
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/knox/ContainerMonitor;->mSanitizeDPMPolicyForUserCache:Landroid/util/SparseArray;

    const-string v0, "FALSE"

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return v2

    .line 512
    :cond_2
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    return v1

    :cond_3
    return v2
.end method

.method private isPersonaInKioskMode(I)Z
    .locals 0

    .line 385
    iget-object p0, p0, Lcom/android/systemui/knox/ContainerMonitor;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 386
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isKioskModeEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isSanitizedByPolicy(ZZZZ)Z
    .locals 0

    const/4 p0, 0x1

    if-eqz p3, :cond_0

    if-eqz p2, :cond_0

    return p0

    :cond_0
    if-eqz p4, :cond_1

    if-eqz p1, :cond_1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private isSanitizedSamsungEmail(Ljava/lang/String;ZZ)Z
    .locals 0

    const-string p0, "com.samsung.android.email.provider"

    .line 576
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "com.samsung.android.email.sync"

    .line 577
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "com.samsung.android.email.ui"

    .line 578
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "com.samsung.android.email.composer"

    .line 579
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "com.android.email"

    .line 580
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    if-nez p3, :cond_2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private notifyContainerStateChange(ILcom/samsung/android/knox/SemPersonaState;)V
    .locals 6

    .line 335
    iget-object v0, p0, Lcom/android/systemui/knox/ContainerMonitor;->mContainerStateMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaState;

    if-nez v0, :cond_0

    .line 338
    sget-object v0, Lcom/samsung/android/knox/SemPersonaState;->INVALID:Lcom/samsung/android/knox/SemPersonaState;

    :cond_0
    if-ne p2, v0, :cond_1

    return-void

    .line 343
    :cond_1
    sget-object v0, Lcom/android/systemui/knox/ContainerMonitor$7;->$SwitchMap$com$samsung$android$knox$SemPersonaState:[I

    invoke-virtual {p2}, Lcom/samsung/android/knox/SemPersonaState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const-string v2, "notification state for container "

    const-string v3, "ContainerMonitor"

    const/16 v4, 0x138f

    if-eq v0, v1, :cond_7

    const/4 v1, 0x2

    const-string v5, " is locked"

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    .line 364
    iget-boolean v0, p0, Lcom/android/systemui/knox/ContainerMonitor;->KNOX_DEBUG:Z

    if-eqz v0, :cond_2

    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "default state for container "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/knox/ContainerMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {v0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 358
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/knox/ContainerMonitor;->KNOX_DEBUG:Z

    if-eqz v0, :cond_4

    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is active"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/knox/ContainerMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {v0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 352
    :cond_5
    iget-boolean v0, p0, Lcom/android/systemui/knox/ContainerMonitor;->KNOX_DEBUG:Z

    if-eqz v0, :cond_6

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/knox/ContainerMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {v0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 346
    :cond_7
    iget-boolean v0, p0, Lcom/android/systemui/knox/ContainerMonitor;->KNOX_DEBUG:Z

    if-eqz v0, :cond_8

    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is superlocked"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/knox/ContainerMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {v0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 370
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/knox/ContainerMonitor;->mContainerStateMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private registerCallback()V
    .locals 0

    return-void
.end method

.method private registerReceivers()V
    .locals 7

    const-string v0, "ContainerMonitor"

    .line 143
    const-class v1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.intent.action.MANAGED_PROFILE_ADDED"

    .line 144
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.samsung.knox.securefolder.SETUP_COMPLETE"

    .line 145
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 146
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v4, p0, Lcom/android/systemui/knox/ContainerMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 148
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "com.sec.knox.container.action.launchinfo"

    .line 149
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 150
    iget-object v3, p0, Lcom/android/systemui/knox/ContainerMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {v3}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/knox/ContainerMonitor;->mPersonaLaunchReceiver:Landroid/content/BroadcastReceiver;

    const-string v5, "com.samsung.container.LAUNCH_INFO"

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 154
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v3, "samsung.knox.intent.action.RCP_POLICY_CHANGED"

    .line 155
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 156
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v4, p0, Lcom/android/systemui/knox/ContainerMonitor;->mRcpPolicyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 158
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    .line 159
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 160
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v3, p0, Lcom/android/systemui/knox/ContainerMonitor;->mDPMPolicyReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v3, v2, v6, v4}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;)V

    .line 163
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/knox/ContainerMonitor;->mUserManager:Landroid/os/UserManager;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 164
    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/knox/ContainerMonitor;->mPersonas:Ljava/util/List;

    .line 167
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/knox/ContainerMonitor;->mPersonas:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 168
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 169
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 170
    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v3}, Lcom/android/systemui/knox/ContainerMonitor;->setContainerKioskMode(I)V

    .line 171
    iget-boolean v3, p0, Lcom/android/systemui/knox/ContainerMonitor;->KNOX_DEBUG:Z

    if-eqz v3, :cond_1

    .line 172
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "add container observer= for userId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " No. of users="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/knox/ContainerMonitor;->mPersonas:Ljava/util/List;

    .line 174
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 172
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 180
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "start: threw an exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 184
    :cond_2
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.sec.knox.container.action.containerremovalstarted"

    .line 185
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 186
    iget-object v1, p0, Lcom/android/systemui/knox/ContainerMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {v1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/android/systemui/knox/ContainerMonitor;->mPersonaRemovalStartedReceiver:Landroid/content/BroadcastReceiver;

    const-string v2, "com.samsung.container.OBSERVER"

    invoke-virtual {v1, p0, v0, v2, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private setContainerKioskMode(I)V
    .locals 1

    .line 410
    invoke-direct {p0, p1}, Lcom/android/systemui/knox/ContainerMonitor;->isPersonaInKioskMode(I)Z

    move-result p1

    .line 411
    iget-boolean v0, p0, Lcom/android/systemui/knox/ContainerMonitor;->mIsContainerKioskMode:Z

    if-eq v0, p1, :cond_0

    .line 412
    iput-boolean p1, p0, Lcom/android/systemui/knox/ContainerMonitor;->mIsContainerKioskMode:Z

    .line 413
    iget-object p1, p0, Lcom/android/systemui/knox/ContainerMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {p1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getHandler()Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x139d

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 414
    iget-object p0, p0, Lcom/android/systemui/knox/ContainerMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {p0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method private setPersonalManager()V
    .locals 2

    .line 470
    iget-object v0, p0, Lcom/android/systemui/knox/ContainerMonitor;->mPm:Lcom/samsung/android/knox/SemPersonaManager;

    if-nez v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/android/systemui/knox/ContainerMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {v0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v0, p0, Lcom/android/systemui/knox/ContainerMonitor;->mPm:Lcom/samsung/android/knox/SemPersonaManager;

    :cond_0
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    const-string p1, "ContainerMonitor state:"

    .line 776
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "-mIsContainerKioskMode="

    .line 777
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/systemui/knox/ContainerMonitor;->mIsContainerKioskMode:Z

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method public filterOutForKnoxContainer(ILjava/lang/String;Z)Z
    .locals 7

    .line 659
    iget-object v0, p0, Lcom/android/systemui/knox/ContainerMonitor;->mInCallUIPackageName:Ljava/lang/String;

    .line 663
    iget-boolean v1, p0, Lcom/android/systemui/knox/ContainerMonitor;->mIsContainerKioskMode:Z

    const-string v2, "com.kddi.android.cmail"

    const-string v3, "com.samsung.android.messaging"

    const-string v4, "com.android.mms"

    const/4 v5, 0x1

    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    .line 665
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.android.server.telecom"

    .line 666
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.samsung.android.app.telephonyui"

    .line 667
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.samsung.android.SettingsReceiver"

    .line 668
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android"

    .line 669
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.android.systemui"

    .line 670
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 671
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.android.settings"

    .line 672
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.android.phone"

    .line 673
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.samsung.vvm"

    .line 674
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.wssyncmldm"

    .line 675
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.samsung.android.knox.containercore"

    .line 676
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return v5

    .line 679
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/knox/ContainerMonitor;->mIsContainerKioskMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 681
    iget-object v0, p0, Lcom/android/systemui/knox/ContainerMonitor;->mPersonas:Ljava/util/List;

    const/4 v6, -0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 682
    iget-object v0, p0, Lcom/android/systemui/knox/ContainerMonitor;->mPersonas:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    goto :goto_0

    :cond_1
    move v0, v6

    :goto_0
    if-eq v0, v6, :cond_4

    if-nez p1, :cond_4

    .line 686
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 687
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/systemui/knox/ContainerMonitor;->knoxContainerInSuperLockMode(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 688
    iget-boolean p0, p0, Lcom/android/systemui/knox/ContainerMonitor;->KNOX_DEBUG:Z

    if-eqz p0, :cond_3

    const-string p0, "ContainerMonitor"

    const-string p1, "----- filterOutForKnoxContainer:  Skipping com.android.mms notif for COM + ADMIN_LOCKED case"

    .line 689
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v5

    :cond_4
    if-eqz p3, :cond_5

    if-eqz p2, :cond_5

    const-string p0, "com.sec.knox.switcher"

    .line 698
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    return v5

    :cond_5
    return v1
.end method

.method getContainerIds()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 399
    iget-object v0, p0, Lcom/android/systemui/knox/ContainerMonitor;->mPersonas:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 400
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 401
    iget-object p0, p0, Lcom/android/systemui/knox/ContainerMonitor;->mPersonas:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 402
    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method

.method getKnoxName(I)Ljava/lang/String;
    .locals 1

    .line 476
    invoke-direct {p0}, Lcom/android/systemui/knox/ContainerMonitor;->setPersonalManager()V

    .line 477
    iget-object v0, p0, Lcom/android/systemui/knox/ContainerMonitor;->mPm:Lcom/samsung/android/knox/SemPersonaManager;

    iget-object p0, p0, Lcom/android/systemui/knox/ContainerMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {p0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/samsung/android/knox/SemPersonaManager;->getContainerName(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method getKnoxSanitizedText(I)Ljava/lang/String;
    .locals 3

    .line 482
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 483
    iget-object p0, p0, Lcom/android/systemui/knox/ContainerMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {p0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x1040b53

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 485
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/knox/ContainerMonitor;->getKnoxName(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 487
    iget-object p0, p0, Lcom/android/systemui/knox/ContainerMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {p0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$string;->sanitized_content_text:I

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Work profile"

    aput-object v2, v1, v0

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 489
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/knox/ContainerMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {p0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v2, Lcom/android/systemui/R$string;->sanitized_content_text:I

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getProfileIcon(I)I
    .locals 0

    .line 756
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 758
    sget p0, Lcom/android/systemui/R$drawable;->ic_notification_badge:I

    return p0

    .line 760
    :cond_0
    sget p0, Lcom/android/systemui/R$drawable;->stat_sys_workmode_basic_on:I

    return p0
.end method

.method public init()V
    .locals 1

    .line 99
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isTesting()Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    invoke-direct {p0}, Lcom/android/systemui/knox/ContainerMonitor;->initInternal()V

    .line 101
    invoke-direct {p0}, Lcom/android/systemui/knox/ContainerMonitor;->registerCallback()V

    .line 102
    invoke-direct {p0}, Lcom/android/systemui/knox/ContainerMonitor;->registerReceivers()V

    :cond_0
    return-void
.end method

.method isContainerKioskMode()Z
    .locals 0

    .line 393
    iget-boolean p0, p0, Lcom/android/systemui/knox/ContainerMonitor;->mIsContainerKioskMode:Z

    return p0
.end method

.method public isKnoxNotificationSanitizeNeeded(IILjava/lang/String;ZZ)Z
    .locals 6

    const/4 p2, 0x0

    if-eqz p3, :cond_0

    const-string v0, "com.samsung.knox.knoxtrustagent"

    .line 522
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return p2

    :cond_0
    const/4 v0, 0x4

    const-string v1, "knox-sanitize-data"

    .line 526
    invoke-direct {p0, p1, v1, v0}, Lcom/android/systemui/knox/ContainerMonitor;->getPolicy(ILjava/lang/String;I)Z

    move-result v0

    const/16 v1, 0x10

    const-string v2, "knox-sanitize-data-lockscreen"

    .line 527
    invoke-direct {p0, p1, v2, v1}, Lcom/android/systemui/knox/ContainerMonitor;->getPolicy(ILjava/lang/String;I)Z

    move-result v1

    .line 528
    invoke-virtual {p0, p1}, Lcom/android/systemui/knox/ContainerMonitor;->knoxContainerInLockMode(I)Z

    move-result v2

    .line 531
    invoke-direct {p0, p1}, Lcom/android/systemui/knox/ContainerMonitor;->isNotificationSanitizedByDPM(I)Z

    move-result p1

    const/4 v3, 0x1

    const-string v4, "ContainerMonitor"

    if-eqz p1, :cond_1

    const-string p1, "isKnoxNotificationSanitizeNeeded :: isNotificationSanitizedByDPM : true"

    .line 532
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    move v1, v0

    .line 537
    :cond_1
    iget-boolean p1, p0, Lcom/android/systemui/knox/ContainerMonitor;->KNOX_DEBUG:Z

    if-eqz p1, :cond_2

    .line 538
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isKnoxNotificationSanitizeNeeded :: policy "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " policy_lockscreen "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " isContainerLocked "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isKnoxNotificationSanitizeNeeded :: isRemoteViewProvided "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p4, " isLockscreenPublicMode "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    :cond_2
    invoke-direct {p0, p5, v2, v0, v1}, Lcom/android/systemui/knox/ContainerMonitor;->isSanitizedByPolicy(ZZZZ)Z

    move-result p1

    if-nez p1, :cond_4

    .line 548
    invoke-direct {p0, p3, p5, v2}, Lcom/android/systemui/knox/ContainerMonitor;->isSanitizedSamsungEmail(Ljava/lang/String;ZZ)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    return p2

    :cond_4
    :goto_0
    return v3
.end method

.method public isLockScreenDisabledbyKNOX()Z
    .locals 0

    .line 462
    iget-boolean p0, p0, Lcom/android/systemui/knox/ContainerMonitor;->mIsContainerKioskMode:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isManagedProfile(I)Z
    .locals 3

    .line 747
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    .line 748
    invoke-static {p1}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v1

    .line 749
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isLegacyClId(I)Z

    move-result v2

    .line 750
    iget-object p0, p0, Lcom/android/systemui/knox/ContainerMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {p0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/samsung/android/knox/SemPersonaManager;->isAppSeparationUserId(Landroid/content/Context;I)Z

    move-result p0

    if-nez v2, :cond_0

    if-nez v1, :cond_0

    if-eqz p0, :cond_1

    :cond_0
    if-eqz v0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isPersona(I)Z
    .locals 1

    if-nez p1, :cond_1

    .line 376
    iget-boolean p0, p0, Lcom/android/systemui/knox/ContainerMonitor;->KNOX_DEBUG:Z

    if-eqz p0, :cond_0

    .line 377
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isPersona for user "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is false"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ContainerMonitor"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 381
    :cond_1
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result p0

    return p0
.end method

.method public isSkipShowingNotificationForHeadsUp(Ljava/lang/String;)Z
    .locals 2

    .line 645
    iget-boolean v0, p0, Lcom/android/systemui/knox/ContainerMonitor;->mIsContainerKioskMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/knox/ContainerMonitor;->mPersonas:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 646
    iget-object v0, p0, Lcom/android/systemui/knox/ContainerMonitor;->mPersonas:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/knox/ContainerMonitor;->knoxContainerInSuperLockMode(I)Z

    move-result p0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    const-string p0, "com.android.mms"

    .line 648
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "com.samsung.android.messaging"

    .line 649
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "com.kddi.android.cmail"

    .line 650
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method knoxContainerInLockMode(I)Z
    .locals 4

    const-string v0, "ContainerMonitor"

    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 435
    iget-boolean p0, p0, Lcom/android/systemui/knox/ContainerMonitor;->KNOX_DEBUG:Z

    if-eqz p0, :cond_0

    .line 436
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get KnoxInLockMode for user "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is false"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v1

    .line 442
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/knox/ContainerMonitor;->mContainerStateMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/SemPersonaState;

    if-eqz v2, :cond_2

    .line 443
    sget-object v3, Lcom/samsung/android/knox/SemPersonaState;->LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    if-ne v2, v3, :cond_2

    const/4 v1, 0x1

    .line 447
    :cond_2
    iget-boolean p0, p0, Lcom/android/systemui/knox/ContainerMonitor;->KNOX_DEBUG:Z

    if-eqz p0, :cond_3

    .line 448
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get KnoxInLockMode for container "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v1
.end method

.method knoxContainerInSuperLockMode(I)Z
    .locals 3

    .line 419
    invoke-virtual {p0, p1}, Lcom/android/systemui/knox/ContainerMonitor;->isPersona(I)Z

    move-result v0

    const-string v1, "ContainerMonitor"

    if-nez v0, :cond_1

    .line 420
    iget-boolean p0, p0, Lcom/android/systemui/knox/ContainerMonitor;->KNOX_DEBUG:Z

    if-eqz p0, :cond_0

    .line 421
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "get knoxInSuperLockMode for user "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is false"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 425
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/knox/ContainerMonitor;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 426
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isSuperLocked()Z

    move-result v0

    .line 427
    iget-boolean p0, p0, Lcom/android/systemui/knox/ContainerMonitor;->KNOX_DEBUG:Z

    if-eqz p0, :cond_2

    .line 428
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get knoxInSuperLockMode for container "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v0
.end method
