.class Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$6;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "NetworkControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;-><init>(Landroid/content/Context;Landroid/net/ConnectivityManager;Landroid/telephony/TelephonyManager;Lcom/android/systemui/telephony/TelephonyListenerManager;Landroid/net/wifi/WifiManager;Landroid/net/NetworkScoreManager;Landroid/telephony/SubscriptionManager;Lcom/android/settingslib/mobile/MobileMappings$Config;Landroid/os/Looper;Ljava/util/concurrent/Executor;Lcom/android/systemui/statusbar/policy/CallbackHandler;Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;Lcom/android/settingslib/net/DataUsageController;Lcom/android/settingslib/mobile/MobileStatusTracker$SubscriptionDefaults;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/demomode/DemoModeController;Lcom/android/systemui/util/CarrierConfigTracker;Lcom/android/systemui/statusbar/FeatureFlags;Lcom/android/systemui/statusbar/NetworkDependency;Lcom/android/systemui/statusbar/policy/LocationController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mLastNetwork:Landroid/net/Network;

.field private mLastNetworkCapabilities:Landroid/net/NetworkCapabilities;

.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;I)V
    .locals 0

    .line 435
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$6;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-direct {p0, p2}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 4

    .line 456
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$6;->mLastNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v1, 0x10

    if-eqz v0, :cond_0

    .line 457
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 459
    :goto_0
    invoke-virtual {p2, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    .line 463
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$6;->mLastNetwork:Landroid/net/Network;

    invoke-virtual {p1, v2}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-ne v1, v0, :cond_3

    .line 466
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$6;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v0, p2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$1500(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Landroid/net/NetworkCapabilities;)[I

    move-result-object v0

    .line 467
    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    .line 469
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$6;->mLastNetworkCapabilities:Landroid/net/NetworkCapabilities;

    if-eqz v1, :cond_1

    .line 470
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$6;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$1500(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Landroid/net/NetworkCapabilities;)[I

    move-result-object v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    .line 471
    invoke-static {v1}, Ljava/util/Arrays;->sort([I)V

    .line 473
    :cond_2
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 477
    :cond_3
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$6;->mLastNetwork:Landroid/net/Network;

    .line 478
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$6;->mLastNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 479
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$6;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v0, p2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$1102(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Landroid/net/NetworkCapabilities;)Landroid/net/NetworkCapabilities;

    .line 480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 481
    invoke-static {}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$1200()Ljava/text/SimpleDateFormat;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onCapabilitiesChanged: "

    .line 482
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "network="

    .line 483
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "networkCapabilities="

    .line 484
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 485
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 486
    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$6;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {p2, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$1300(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Ljava/lang/String;)V

    .line 487
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$6;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$1400(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 4

    const/4 v0, 0x0

    .line 441
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$6;->mLastNetwork:Landroid/net/Network;

    .line 442
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$6;->mLastNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 443
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$6;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$1102(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Landroid/net/NetworkCapabilities;)Landroid/net/NetworkCapabilities;

    .line 444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 445
    invoke-static {}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$1200()Ljava/text/SimpleDateFormat;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onLost: "

    .line 446
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "network="

    .line 447
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 448
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 449
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$6;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$1300(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Ljava/lang/String;)V

    .line 450
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$6;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$1400(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    return-void
.end method
