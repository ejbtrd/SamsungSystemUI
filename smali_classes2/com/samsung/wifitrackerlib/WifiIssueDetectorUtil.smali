.class public Lcom/samsung/wifitrackerlib/WifiIssueDetectorUtil;
.super Ljava/lang/Object;
.source "WifiIssueDetectorUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/wifitrackerlib/WifiIssueDetectorUtil$ReportUtil;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/samsung/wifitrackerlib/WifiIssueDetectorUtil;


# instance fields
.field private final mNameOfUid:Ljava/lang/String;

.field private final mPackageName:Ljava/lang/String;

.field private final mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/wifitrackerlib/WifiIssueDetectorUtil;->mPackageName:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/wifitrackerlib/WifiIssueDetectorUtil;->mNameOfUid:Ljava/lang/String;

    const-string/jumbo v0, "sem_wifi"

    .line 45
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/wifi/SemWifiManager;

    iput-object p1, p0, Lcom/samsung/wifitrackerlib/WifiIssueDetectorUtil;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/wifitrackerlib/WifiIssueDetectorUtil;
    .locals 2

    const-class v0, Lcom/samsung/wifitrackerlib/WifiIssueDetectorUtil;

    monitor-enter v0

    .line 36
    :try_start_0
    sget-object v1, Lcom/samsung/wifitrackerlib/WifiIssueDetectorUtil;->sInstance:Lcom/samsung/wifitrackerlib/WifiIssueDetectorUtil;

    if-nez v1, :cond_0

    .line 37
    new-instance v1, Lcom/samsung/wifitrackerlib/WifiIssueDetectorUtil;

    invoke-direct {v1, p0}, Lcom/samsung/wifitrackerlib/WifiIssueDetectorUtil;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/wifitrackerlib/WifiIssueDetectorUtil;->sInstance:Lcom/samsung/wifitrackerlib/WifiIssueDetectorUtil;

    .line 39
    :cond_0
    sget-object p0, Lcom/samsung/wifitrackerlib/WifiIssueDetectorUtil;->sInstance:Lcom/samsung/wifitrackerlib/WifiIssueDetectorUtil;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private hasPassword(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 3

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    .line 53
    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->needsPreSharedKey()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eqz v0, :cond_1

    .line 54
    iget-object p1, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-le p1, v2, :cond_2

    :goto_0
    move p0, v1

    goto :goto_1

    .line 55
    :cond_1
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, p0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    if-eqz p1, :cond_2

    aget-object v0, p1, p0

    if-eqz v0, :cond_2

    .line 57
    aget-object p1, p1, p0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-le p1, v2, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    return p0
.end method


# virtual methods
.method public reportConnectNetwork(ILjava/lang/String;ZZ)V
    .locals 7

    .line 76
    iget-object v0, p0, Lcom/samsung/wifitrackerlib/WifiIssueDetectorUtil;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    iget-object v4, p0, Lcom/samsung/wifitrackerlib/WifiIssueDetectorUtil;->mNameOfUid:Ljava/lang/String;

    const-string v3, "connect"

    move v1, p1

    move-object v2, p2

    move v5, p3

    move v6, p4

    .line 77
    invoke-static/range {v1 .. v6}, Lcom/samsung/wifitrackerlib/WifiIssueDetectorUtil$ReportUtil;->getReportDataForWifiManagerConnectApi(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Landroid/os/Bundle;

    move-result-object p0

    const/16 p1, 0x67

    .line 76
    invoke-virtual {v0, p1, p0}, Lcom/samsung/android/wifi/SemWifiManager;->reportIssue(ILandroid/os/Bundle;)V

    return-void
.end method

.method public reportConnectNetwork(Landroid/net/wifi/WifiConfiguration;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 64
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getPrintableSsid()Ljava/lang/String;

    move-result-object v1

    .line 65
    invoke-direct {p0, p1}, Lcom/samsung/wifitrackerlib/WifiIssueDetectorUtil;->hasPassword(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v2

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result p1

    .line 64
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/samsung/wifitrackerlib/WifiIssueDetectorUtil;->reportConnectNetwork(ILjava/lang/String;ZZ)V

    :cond_0
    return-void
.end method
