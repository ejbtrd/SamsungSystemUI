.class Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkStatsThread;
.super Ljava/lang/Thread;
.source "NetspeedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetspeedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkStatsThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/NetspeedView;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/policy/NetspeedView;)V
    .locals 0

    .line 473
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkStatsThread;->this$0:Lcom/android/systemui/statusbar/policy/NetspeedView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/NetspeedView;Lcom/android/systemui/statusbar/policy/NetspeedView$1;)V
    .locals 0

    .line 473
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkStatsThread;-><init>(Lcom/android/systemui/statusbar/policy/NetspeedView;)V

    return-void
.end method


# virtual methods
.method checkNetworkAvailable(Landroid/content/Context;)Z
    .locals 3

    const-string p0, "connectivity"

    .line 482
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    const-string p1, "NetworkSpeedView"

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "Couldn\'t get connectivity manager"

    .line 484
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 488
    :cond_0
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 490
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 491
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object p1

    .line 492
    invoke-virtual {p0, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 p1, 0x4

    .line 493
    invoke-virtual {p0, p1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    .line 495
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Network is not connected,NetworkInfo.mDetailedState = "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_3
    const-string p0, "There is not active network"

    .line 499
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public run()V
    .locals 2

    .line 476
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkStatsThread;->this$0:Lcom/android/systemui/statusbar/policy/NetspeedView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetspeedView;->access$1200(Lcom/android/systemui/statusbar/policy/NetspeedView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkStatsThread;->checkNetworkAvailable(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/NetspeedView;->access$1102(Lcom/android/systemui/statusbar/policy/NetspeedView;Z)Z

    .line 477
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkStatsThread-mNetworkStats = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkStatsThread;->this$0:Lcom/android/systemui/statusbar/policy/NetspeedView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetspeedView;->access$1100(Lcom/android/systemui/statusbar/policy/NetspeedView;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkSpeedView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkStatsThread;->this$0:Lcom/android/systemui/statusbar/policy/NetspeedView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetspeedView;->access$1300(Lcom/android/systemui/statusbar/policy/NetspeedView;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkStatsThread;->this$0:Lcom/android/systemui/statusbar/policy/NetspeedView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
