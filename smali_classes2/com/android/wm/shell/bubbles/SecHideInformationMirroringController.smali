.class public Lcom/android/wm/shell/bubbles/SecHideInformationMirroringController;
.super Landroid/content/BroadcastReceiver;
.source "SecHideInformationMirroringController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/bubbles/SecHideInformationMirroringController$HideInformationMirroringCallback;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/android/wm/shell/bubbles/SecHideInformationMirroringController$HideInformationMirroringCallback;

.field private mContext:Landroid/content/Context;

.field private mLeboBroadcastState:I

.field private mModel:Lcom/android/wm/shell/bubbles/SecHideInformationMirroringModel;

.field private mWifiDisplayBroadcastState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/bubbles/SecHideInformationMirroringController$HideInformationMirroringCallback;)V
    .locals 1

    .line 58
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, -0x1

    .line 51
    iput v0, p0, Lcom/android/wm/shell/bubbles/SecHideInformationMirroringController;->mLeboBroadcastState:I

    .line 52
    iput v0, p0, Lcom/android/wm/shell/bubbles/SecHideInformationMirroringController;->mWifiDisplayBroadcastState:I

    .line 59
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/SecHideInformationMirroringController;->mContext:Landroid/content/Context;

    .line 60
    iput-object p2, p0, Lcom/android/wm/shell/bubbles/SecHideInformationMirroringController;->mCallback:Lcom/android/wm/shell/bubbles/SecHideInformationMirroringController$HideInformationMirroringCallback;

    .line 61
    new-instance p1, Lcom/android/wm/shell/bubbles/SecHideInformationMirroringModel;

    invoke-direct {p1}, Lcom/android/wm/shell/bubbles/SecHideInformationMirroringModel;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/SecHideInformationMirroringController;->mModel:Lcom/android/wm/shell/bubbles/SecHideInformationMirroringModel;

    return-void
.end method

.method private initBroadcastReceiver()V
    .locals 2

    .line 73
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.intent.action.LELINK_CAST_CONNECTION_CHANGED"

    .line 74
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.intent.action.WIFI_DISPLAY_SOURCE_STATE"

    .line 75
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 76
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/SecHideInformationMirroringController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private initSettingsObserver()V
    .locals 3

    .line 80
    new-instance v0, Lcom/android/wm/shell/bubbles/SecHideInformationMirroringController$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/bubbles/SecHideInformationMirroringController$1;-><init>(Lcom/android/wm/shell/bubbles/SecHideInformationMirroringController;Landroid/os/Handler;)V

    .line 87
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/SecHideInformationMirroringController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "lelink_cast_on"

    .line 88
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    .line 87
    invoke-virtual {p0, v1, v2, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 3

    .line 65
    sget-boolean v0, Lcom/android/wm/shell/QpShellRune;->NOTI_HIDE_INFORMATION_MIRRORING:Z

    if-nez v0, :cond_0

    return-void

    .line 66
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init() hide?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/SecHideInformationMirroringController;->mModel:Lcom/android/wm/shell/bubbles/SecHideInformationMirroringModel;

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/SecHideInformationMirroringController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/bubbles/SecHideInformationMirroringModel;->shouldHideInformation(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecHideInformationMirroringController-Bubble"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/SecHideInformationMirroringController;->initBroadcastReceiver()V

    .line 68
    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/SecHideInformationMirroringController;->initSettingsObserver()V

    .line 69
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/SecHideInformationMirroringController;->updateMirroringWindowFlag()V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .line 93
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.samsung.intent.action.LELINK_CAST_CONNECTION_CHANGED"

    .line 94
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, " >> "

    const-string v2, ") ("

    const-string/jumbo v3, "onReceive("

    const-string v4, "SecHideInformationMirroringController-Bubble"

    const/4 v5, 0x0

    const-string/jumbo v6, "state"

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {p2, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/wm/shell/bubbles/SecHideInformationMirroringController;->mLeboBroadcastState:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") WifiDisplayBroadcastState:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/wm/shell/bubbles/SecHideInformationMirroringController;->mWifiDisplayBroadcastState:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iput p2, p0, Lcom/android/wm/shell/bubbles/SecHideInformationMirroringController;->mLeboBroadcastState:I

    goto :goto_0

    :cond_0
    const-string v0, "com.samsung.intent.action.WIFI_DISPLAY_SOURCE_STATE"

    .line 98
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    invoke-virtual {p2, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/wm/shell/bubbles/SecHideInformationMirroringController;->mWifiDisplayBroadcastState:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") LeboBroadcastState:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/wm/shell/bubbles/SecHideInformationMirroringController;->mLeboBroadcastState:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iput p2, p0, Lcom/android/wm/shell/bubbles/SecHideInformationMirroringController;->mWifiDisplayBroadcastState:I

    .line 103
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/SecHideInformationMirroringController;->updateMirroringWindowFlag()V

    return-void
.end method

.method public updateMirroringWindowFlag()V
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/SecHideInformationMirroringController;->mCallback:Lcom/android/wm/shell/bubbles/SecHideInformationMirroringController$HideInformationMirroringCallback;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/SecHideInformationMirroringController;->mModel:Lcom/android/wm/shell/bubbles/SecHideInformationMirroringModel;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/SecHideInformationMirroringController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Lcom/android/wm/shell/bubbles/SecHideInformationMirroringModel;->shouldHideInformation(Landroid/content/Context;)Z

    move-result p0

    invoke-interface {v0, p0}, Lcom/android/wm/shell/bubbles/SecHideInformationMirroringController$HideInformationMirroringCallback;->updateHideInformationMirroringWindowFlag(Z)V

    return-void
.end method
