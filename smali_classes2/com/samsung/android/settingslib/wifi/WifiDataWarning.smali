.class public Lcom/samsung/android/settingslib/wifi/WifiDataWarning;
.super Ljava/lang/Object;
.source "WifiDataWarning.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSemShowOnce:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lcom/samsung/android/settingslib/wifi/WifiDataWarning$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settingslib/wifi/WifiDataWarning$1;-><init>(Lcom/samsung/android/settingslib/wifi/WifiDataWarning;)V

    iput-object v0, p0, Lcom/samsung/android/settingslib/wifi/WifiDataWarning;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 35
    iput-object p1, p0, Lcom/samsung/android/settingslib/wifi/WifiDataWarning;->mContext:Landroid/content/Context;

    if-nez p1, :cond_0

    return-void

    .line 37
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.wifi.STATE_CHANGE"

    .line 38
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 39
    iget-object p0, p0, Lcom/samsung/android/settingslib/wifi/WifiDataWarning;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settingslib/wifi/WifiDataWarning;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settingslib/wifi/WifiDataWarning;->handleBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private handleBroadcast(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 50
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleBroadcast action : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WifiDataWarning"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "android.net.wifi.STATE_CHANGE"

    .line 52
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "networkInfo"

    .line 53
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/net/NetworkInfo;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 54
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    .line 56
    iput-boolean v0, p0, Lcom/samsung/android/settingslib/wifi/WifiDataWarning;->mSemShowOnce:Z

    goto :goto_2

    :cond_1
    if-eqz p2, :cond_2

    .line 58
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    if-eqz p1, :cond_3

    if-nez v0, :cond_3

    .line 59
    iget-boolean p2, p0, Lcom/samsung/android/settingslib/wifi/WifiDataWarning;->mSemShowOnce:Z

    if-eqz p2, :cond_3

    .line 60
    invoke-static {p1}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->showCHNDataChargeWarningToast(Landroid/content/Context;)V

    .line 61
    iput-boolean v1, p0, Lcom/samsung/android/settingslib/wifi/WifiDataWarning;->mSemShowOnce:Z

    :cond_3
    :goto_2
    return-void
.end method
