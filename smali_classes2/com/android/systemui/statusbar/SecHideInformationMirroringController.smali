.class public Lcom/android/systemui/statusbar/SecHideInformationMirroringController;
.super Landroid/content/BroadcastReceiver;
.source "SecHideInformationMirroringController.java"


# instance fields
.field private mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field private mContext:Landroid/content/Context;

.field private mLeboBroadcastState:I

.field private mModel:Lcom/android/systemui/statusbar/SecHideInformationMirroringModel;

.field private mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

.field private mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

.field private mWifiDisplayBroadcastState:I


# direct methods
.method public static synthetic $r8$lambda$7Q6Kkv7MojMCni3VGMKbgcDdaMM(Lcom/android/systemui/statusbar/SecHideInformationMirroringController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/SecHideInformationMirroringController;->lambda$handleHideInformationMirroringWindowFlag$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lcom/android/systemui/statusbar/phone/StatusBarWindowController;)V
    .locals 1

    .line 70
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, -0x1

    .line 60
    iput v0, p0, Lcom/android/systemui/statusbar/SecHideInformationMirroringController;->mLeboBroadcastState:I

    .line 61
    iput v0, p0, Lcom/android/systemui/statusbar/SecHideInformationMirroringController;->mWifiDisplayBroadcastState:I

    .line 71
    iput-object p1, p0, Lcom/android/systemui/statusbar/SecHideInformationMirroringController;->mContext:Landroid/content/Context;

    .line 72
    iput-object p2, p0, Lcom/android/systemui/statusbar/SecHideInformationMirroringController;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 73
    iput-object p3, p0, Lcom/android/systemui/statusbar/SecHideInformationMirroringController;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    .line 74
    iput-object p4, p0, Lcom/android/systemui/statusbar/SecHideInformationMirroringController;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    .line 75
    new-instance p1, Lcom/android/systemui/statusbar/SecHideInformationMirroringModel;

    invoke-direct {p1}, Lcom/android/systemui/statusbar/SecHideInformationMirroringModel;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/SecHideInformationMirroringController;->mModel:Lcom/android/systemui/statusbar/SecHideInformationMirroringModel;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/SecHideInformationMirroringController;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SecHideInformationMirroringController;->handleHideInformationMirroringWindowFlag()V

    return-void
.end method

.method private handleHideInformationMirroringWindowFlag()V
    .locals 2

    .line 121
    sget-object v0, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/SecHideInformationMirroringController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/SecHideInformationMirroringController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/SecHideInformationMirroringController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private initBroadcastReceiver()V
    .locals 2

    .line 87
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.intent.action.LELINK_CAST_CONNECTION_CHANGED"

    .line 88
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.intent.action.WIFI_DISPLAY_SOURCE_STATE"

    .line 89
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 90
    iget-object v1, p0, Lcom/android/systemui/statusbar/SecHideInformationMirroringController;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-virtual {v1, p0, v0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method private initSettingsObserver()V
    .locals 3

    .line 94
    new-instance v0, Lcom/android/systemui/statusbar/SecHideInformationMirroringController$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/SecHideInformationMirroringController$1;-><init>(Lcom/android/systemui/statusbar/SecHideInformationMirroringController;Landroid/os/Handler;)V

    .line 101
    iget-object p0, p0, Lcom/android/systemui/statusbar/SecHideInformationMirroringController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "lelink_cast_on"

    .line 102
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    .line 101
    invoke-virtual {p0, v1, v2, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private synthetic lambda$handleHideInformationMirroringWindowFlag$0()V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecHideInformationMirroringController;->mModel:Lcom/android/systemui/statusbar/SecHideInformationMirroringModel;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SecHideInformationMirroringController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/SecHideInformationMirroringModel;->shouldHideInformation(Landroid/content/Context;)Z

    move-result v0

    .line 123
    iget-object v1, p0, Lcom/android/systemui/statusbar/SecHideInformationMirroringController;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/NotificationShadeWindowController;->setHideInformationMirroringState(Z)V

    .line 124
    iget-object p0, p0, Lcom/android/systemui/statusbar/SecHideInformationMirroringController;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->setHideInformationMirroringState(Z)V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 3

    .line 79
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_HIDE_INFORMATION_MIRRORING:Z

    if-nez v0, :cond_0

    return-void

    .line 80
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init() hide?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SecHideInformationMirroringController;->mModel:Lcom/android/systemui/statusbar/SecHideInformationMirroringModel;

    iget-object v2, p0, Lcom/android/systemui/statusbar/SecHideInformationMirroringController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/SecHideInformationMirroringModel;->shouldHideInformation(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecHideInformationMirroringController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SecHideInformationMirroringController;->initBroadcastReceiver()V

    .line 82
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SecHideInformationMirroringController;->initSettingsObserver()V

    .line 83
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SecHideInformationMirroringController;->handleHideInformationMirroringWindowFlag()V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .line 107
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.samsung.intent.action.LELINK_CAST_CONNECTION_CHANGED"

    .line 108
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, " >> "

    const-string v2, ") ("

    const-string/jumbo v3, "onReceive("

    const-string v4, "SecHideInformationMirroringController"

    const/4 v5, 0x0

    const-string/jumbo v6, "state"

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {p2, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/systemui/statusbar/SecHideInformationMirroringController;->mLeboBroadcastState:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") WifiDisplayBroadcastState:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/systemui/statusbar/SecHideInformationMirroringController;->mWifiDisplayBroadcastState:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iput p2, p0, Lcom/android/systemui/statusbar/SecHideInformationMirroringController;->mLeboBroadcastState:I

    goto :goto_0

    :cond_0
    const-string v0, "com.samsung.intent.action.WIFI_DISPLAY_SOURCE_STATE"

    .line 112
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    invoke-virtual {p2, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/systemui/statusbar/SecHideInformationMirroringController;->mWifiDisplayBroadcastState:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") LeboBroadcastState:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/systemui/statusbar/SecHideInformationMirroringController;->mLeboBroadcastState:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iput p2, p0, Lcom/android/systemui/statusbar/SecHideInformationMirroringController;->mWifiDisplayBroadcastState:I

    .line 117
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SecHideInformationMirroringController;->handleHideInformationMirroringWindowFlag()V

    return-void
.end method
