.class public Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$WifiPickerTrackerFactory;
.super Ljava/lang/Object;
.source "AccessPointControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WifiPickerTrackerFactory"
.end annotation


# instance fields
.field private final mClock:Ljava/time/Clock;

.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field public final mContext:Landroid/content/Context;

.field private final mMainHandler:Landroid/os/Handler;

.field private final mNetworkScoreManager:Landroid/net/NetworkScoreManager;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field private final mWorkerHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;Landroid/net/NetworkScoreManager;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 2

    .line 512
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 497
    new-instance v0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$WifiPickerTrackerFactory$1;

    sget-object v1, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$WifiPickerTrackerFactory$1;-><init>(Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$WifiPickerTrackerFactory;Ljava/time/ZoneId;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$WifiPickerTrackerFactory;->mClock:Ljava/time/Clock;

    .line 513
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$WifiPickerTrackerFactory;->mContext:Landroid/content/Context;

    .line 514
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$WifiPickerTrackerFactory;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 515
    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$WifiPickerTrackerFactory;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 516
    iput-object p4, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$WifiPickerTrackerFactory;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    .line 517
    iput-object p5, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$WifiPickerTrackerFactory;->mMainHandler:Landroid/os/Handler;

    .line 518
    iput-object p6, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$WifiPickerTrackerFactory;->mWorkerHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public create(Landroidx/lifecycle/Lifecycle;Lcom/android/wifitrackerlib/WifiPickerTracker$WifiPickerTrackerCallback;Z)Lcom/android/wifitrackerlib/WifiPickerTracker;
    .locals 17

    move-object/from16 v0, p0

    .line 533
    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$WifiPickerTrackerFactory;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v3, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 536
    :cond_0
    new-instance v16, Lcom/android/wifitrackerlib/WifiPickerTracker;

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$WifiPickerTrackerFactory;->mContext:Landroid/content/Context;

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$WifiPickerTrackerFactory;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$WifiPickerTrackerFactory;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    iget-object v6, v0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$WifiPickerTrackerFactory;->mMainHandler:Landroid/os/Handler;

    iget-object v7, v0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$WifiPickerTrackerFactory;->mWorkerHandler:Landroid/os/Handler;

    iget-object v8, v0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$WifiPickerTrackerFactory;->mClock:Ljava/time/Clock;

    const-wide/16 v9, 0x3a98

    const-wide/16 v11, 0x2710

    const/4 v14, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object/from16 v13, p2

    move/from16 v15, p3

    invoke-direct/range {v0 .. v15}, Lcom/android/wifitrackerlib/WifiPickerTracker;-><init>(Landroidx/lifecycle/Lifecycle;Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;Landroid/net/NetworkScoreManager;Landroid/os/Handler;Landroid/os/Handler;Ljava/time/Clock;JJLcom/android/wifitrackerlib/WifiPickerTracker$WifiPickerTrackerCallback;Lcom/android/wifitrackerlib/WifiPickerTracker$SemWifiPickerTrackerCallback;Z)V

    return-object v16
.end method
