.class public Lcom/android/systemui/qs/SecAutoTileManager;
.super Ljava/lang/Object;
.source "SecAutoTileManager.java"


# instance fields
.field private final mAutoTracker:Lcom/android/systemui/qs/AutoAddTracker;

.field private final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field private final mContext:Landroid/content/Context;

.field private mCurrentUser:Landroid/os/UserHandle;

.field private mDemoResetStartedReceiver:Landroid/content/BroadcastReceiver;

.field private final mHandler:Landroid/os/Handler;

.field private final mHost:Lcom/android/systemui/qs/QSTileHost;

.field private final mManagedProfileController:Lcom/android/systemui/statusbar/phone/ManagedProfileController;

.field private mPackageChangeFinishedByEmergencyModeReceiver:Landroid/content/BroadcastReceiver;

.field private mPreInstallerFinishedReceiver:Landroid/content/BroadcastReceiver;

.field private final mProfileCallback:Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;

.field public mRemovedTileListByAppIntent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTileVisibilityUpdateReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/qs/AutoAddTracker$Builder;Lcom/android/systemui/qs/QSTileHost;Landroid/os/Handler;Lcom/android/systemui/statusbar/phone/ManagedProfileController;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V
    .locals 2

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lcom/android/systemui/qs/SecAutoTileManager;->mPreInstallerFinishedReceiver:Landroid/content/BroadcastReceiver;

    .line 64
    iput-object v0, p0, Lcom/android/systemui/qs/SecAutoTileManager;->mTileVisibilityUpdateReceiver:Landroid/content/BroadcastReceiver;

    .line 66
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/qs/SecAutoTileManager;->mRemovedTileListByAppIntent:Ljava/util/ArrayList;

    .line 68
    iput-object v0, p0, Lcom/android/systemui/qs/SecAutoTileManager;->mPackageChangeFinishedByEmergencyModeReceiver:Landroid/content/BroadcastReceiver;

    .line 71
    iput-object v0, p0, Lcom/android/systemui/qs/SecAutoTileManager;->mDemoResetStartedReceiver:Landroid/content/BroadcastReceiver;

    .line 295
    new-instance v0, Lcom/android/systemui/qs/SecAutoTileManager$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/SecAutoTileManager$5;-><init>(Lcom/android/systemui/qs/SecAutoTileManager;)V

    iput-object v0, p0, Lcom/android/systemui/qs/SecAutoTileManager;->mProfileCallback:Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;

    .line 82
    iput-object p1, p0, Lcom/android/systemui/qs/SecAutoTileManager;->mContext:Landroid/content/Context;

    .line 83
    iput-object p3, p0, Lcom/android/systemui/qs/SecAutoTileManager;->mHost:Lcom/android/systemui/qs/QSTileHost;

    .line 84
    iput-object p4, p0, Lcom/android/systemui/qs/SecAutoTileManager;->mHandler:Landroid/os/Handler;

    .line 85
    invoke-virtual {p3}, Lcom/android/systemui/qs/QSTileHost;->getUserContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/SecAutoTileManager;->mCurrentUser:Landroid/os/UserHandle;

    .line 86
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/android/systemui/qs/AutoAddTracker$Builder;->setUserId(I)Lcom/android/systemui/qs/AutoAddTracker$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/qs/AutoAddTracker$Builder;->build()Lcom/android/systemui/qs/AutoAddTracker;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/SecAutoTileManager;->mAutoTracker:Lcom/android/systemui/qs/AutoAddTracker;

    .line 87
    iput-object p6, p0, Lcom/android/systemui/qs/SecAutoTileManager;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 90
    new-instance p2, Lcom/android/systemui/qs/SecAutoTileManager$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/qs/SecAutoTileManager$1;-><init>(Lcom/android/systemui/qs/SecAutoTileManager;)V

    iput-object p2, p0, Lcom/android/systemui/qs/SecAutoTileManager;->mPreInstallerFinishedReceiver:Landroid/content/BroadcastReceiver;

    .line 109
    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    const-string p3, "com.samsung.intent.action.PREINSTALLER_FINISH"

    .line 110
    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 111
    iget-object p3, p0, Lcom/android/systemui/qs/SecAutoTileManager;->mPreInstallerFinishedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p6, p3, p2}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 115
    new-instance p2, Lcom/android/systemui/qs/SecAutoTileManager$2;

    invoke-direct {p2, p0}, Lcom/android/systemui/qs/SecAutoTileManager$2;-><init>(Lcom/android/systemui/qs/SecAutoTileManager;)V

    iput-object p2, p0, Lcom/android/systemui/qs/SecAutoTileManager;->mTileVisibilityUpdateReceiver:Landroid/content/BroadcastReceiver;

    .line 157
    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    const-string p3, "com.samsung.systemui.qs.action.ACTION_UPDATE_CUSTOMTILE_VISIBILITY"

    .line 158
    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 159
    iget-object p3, p0, Lcom/android/systemui/qs/SecAutoTileManager;->mTileVisibilityUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p6, p3, p2}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 166
    new-instance p2, Lcom/android/systemui/qs/SecAutoTileManager$3;

    invoke-direct {p2, p0}, Lcom/android/systemui/qs/SecAutoTileManager$3;-><init>(Lcom/android/systemui/qs/SecAutoTileManager;)V

    iput-object p2, p0, Lcom/android/systemui/qs/SecAutoTileManager;->mPackageChangeFinishedByEmergencyModeReceiver:Landroid/content/BroadcastReceiver;

    .line 193
    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    const-string p3, "com.samsung.intent.action.EMERGENCY_FINISHED_SENDING_PACKAGE_CHANGED"

    .line 194
    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p3, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    .line 195
    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 196
    iget-object p3, p0, Lcom/android/systemui/qs/SecAutoTileManager;->mPackageChangeFinishedByEmergencyModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p6, p3, p2}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 200
    new-instance p2, Lcom/android/systemui/qs/SecAutoTileManager$4;

    invoke-direct {p2, p0}, Lcom/android/systemui/qs/SecAutoTileManager$4;-><init>(Lcom/android/systemui/qs/SecAutoTileManager;)V

    iput-object p2, p0, Lcom/android/systemui/qs/SecAutoTileManager;->mDemoResetStartedReceiver:Landroid/content/BroadcastReceiver;

    .line 211
    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    const-string p3, "com.samsung.sea.rm.DEMO_RESET_STARTED"

    .line 212
    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 213
    iget-object p3, p0, Lcom/android/systemui/qs/SecAutoTileManager;->mDemoResetStartedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p6, p3, p2}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 216
    iput-object p5, p0, Lcom/android/systemui/qs/SecAutoTileManager;->mManagedProfileController:Lcom/android/systemui/statusbar/phone/ManagedProfileController;

    const-string p0, "WorkMode"

    .line 217
    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/AutoAddTracker;->isAdded(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 218
    invoke-interface {p5, v0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/SecAutoTileManager;)Lcom/android/systemui/qs/QSTileHost;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/systemui/qs/SecAutoTileManager;->mHost:Lcom/android/systemui/qs/QSTileHost;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/SecAutoTileManager;)Landroid/content/BroadcastReceiver;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/systemui/qs/SecAutoTileManager;->mPreInstallerFinishedReceiver:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/systemui/qs/SecAutoTileManager;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/android/systemui/qs/SecAutoTileManager;->mPreInstallerFinishedReceiver:Landroid/content/BroadcastReceiver;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/SecAutoTileManager;)Lcom/android/systemui/broadcast/BroadcastDispatcher;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/systemui/qs/SecAutoTileManager;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/SecAutoTileManager;)Landroid/os/Handler;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/systemui/qs/SecAutoTileManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/SecAutoTileManager;)Landroid/content/Context;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/systemui/qs/SecAutoTileManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/SecAutoTileManager;ILjava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/qs/SecAutoTileManager;->getTileIndex(ILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/SecAutoTileManager;ZLjava/lang/String;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/SecAutoTileManager;->updateRemovedTileListByAppIntent(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/SecAutoTileManager;)Lcom/android/systemui/qs/AutoAddTracker;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/systemui/qs/SecAutoTileManager;->mAutoTracker:Lcom/android/systemui/qs/AutoAddTracker;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/SecAutoTileManager;)Lcom/android/systemui/statusbar/phone/ManagedProfileController;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/systemui/qs/SecAutoTileManager;->mManagedProfileController:Lcom/android/systemui/statusbar/phone/ManagedProfileController;

    return-object p0
.end method

.method private getTileIndex(ILjava/lang/String;Ljava/lang/String;)I
    .locals 5

    .line 242
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "WifiCalling"

    .line 244
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    .line 245
    iget-object p0, p0, Lcom/android/systemui/qs/SecAutoTileManager;->mContext:Landroid/content/Context;

    const-string v1, "QsWifiCallingTileIndex"

    invoke-static {p0, v1, v2}, Lcom/android/systemui/Prefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    if-eq p0, v2, :cond_0

    return p0

    :cond_0
    const-string p0, ","

    .line 250
    invoke-virtual {p3, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length p3, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_2

    aget-object v3, p0, v1

    .line 251
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 252
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 255
    :cond_1
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 257
    :cond_2
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    if-eq p0, v2, :cond_3

    return p0

    :cond_3
    return p1
.end method

.method private updateRemovedTileListByAppIntent(ZLjava/lang/String;)V
    .locals 2

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateRemovedTileListByAppIntent : isAdded = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", spec = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mRemovedTileListByAppIntent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/qs/SecAutoTileManager;->mRemovedTileListByAppIntent:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutoTileManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 225
    iget-object p1, p0, Lcom/android/systemui/qs/SecAutoTileManager;->mRemovedTileListByAppIntent:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 226
    iget-object p0, p0, Lcom/android/systemui/qs/SecAutoTileManager;->mRemovedTileListByAppIntent:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 229
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/SecAutoTileManager;->mRemovedTileListByAppIntent:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 230
    iget-object p0, p0, Lcom/android/systemui/qs/SecAutoTileManager;->mRemovedTileListByAppIntent:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public changeUser(Landroid/os/UserHandle;)V
    .locals 0

    return-void
.end method

.method public isRemovedTileByAppIntent(Ljava/lang/String;)Z
    .locals 2

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isRemovedTileByAppIntent : spec = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mRemovedTileListByAppIntent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/qs/SecAutoTileManager;->mRemovedTileListByAppIntent:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutoTileManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object p0, p0, Lcom/android/systemui/qs/SecAutoTileManager;->mRemovedTileListByAppIntent:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public unmarkTileAsAutoAdded(Ljava/lang/String;)V
    .locals 0

    .line 288
    iget-object p0, p0, Lcom/android/systemui/qs/SecAutoTileManager;->mAutoTracker:Lcom/android/systemui/qs/AutoAddTracker;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/AutoAddTracker;->setTileRemoved(Ljava/lang/String;)V

    return-void
.end method
