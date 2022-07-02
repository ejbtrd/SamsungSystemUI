.class Lcom/android/settingslib/wifi/WifiStatusTracker$2;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "WifiStatusTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/wifi/WifiStatusTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/wifi/WifiStatusTracker;


# direct methods
.method constructor <init>(Lcom/android/settingslib/wifi/WifiStatusTracker;I)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker$2;->this$0:Lcom/android/settingslib/wifi/WifiStatusTracker;

    invoke-direct {p0, p2}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 6

    const/4 v0, 0x0

    .line 105
    invoke-virtual {p2, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 106
    invoke-static {p2}, Lcom/android/settingslib/Utils;->tryGetWifiInfoForVcn(Landroid/net/NetworkCapabilities;)Landroid/net/wifi/WifiInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    move v5, v2

    move v2, v0

    move v0, v5

    goto :goto_1

    .line 108
    :cond_1
    invoke-virtual {p2, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 109
    invoke-virtual {p2}, Landroid/net/NetworkCapabilities;->getTransportInfo()Landroid/net/TransportInfo;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiInfo;

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    move v2, v0

    :goto_1
    if-nez v0, :cond_3

    if-eqz v2, :cond_4

    .line 114
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    invoke-static {}, Lcom/android/settingslib/wifi/WifiStatusTracker;->access$200()Ljava/text/SimpleDateFormat;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "onCapabilitiesChanged: "

    .line 116
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "network="

    .line 117
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "networkCapabilities="

    .line 118
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 120
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker$2;->this$0:Lcom/android/settingslib/wifi/WifiStatusTracker;

    invoke-static {v0, p2}, Lcom/android/settingslib/wifi/WifiStatusTracker;->access$300(Lcom/android/settingslib/wifi/WifiStatusTracker;Ljava/lang/String;)V

    :cond_4
    if-nez v1, :cond_5

    return-void

    .line 128
    :cond_5
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->isPrimary()Z

    move-result p2

    if-nez p2, :cond_7

    .line 131
    iget-object p2, p0, Lcom/android/settingslib/wifi/WifiStatusTracker$2;->this$0:Lcom/android/settingslib/wifi/WifiStatusTracker;

    invoke-static {p2}, Lcom/android/settingslib/wifi/WifiStatusTracker;->access$400(Lcom/android/settingslib/wifi/WifiStatusTracker;)Ljava/util/Set;

    move-result-object p2

    invoke-virtual {p1}, Landroid/net/Network;->getNetId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 132
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker$2;->this$0:Lcom/android/settingslib/wifi/WifiStatusTracker;

    invoke-static {p0}, Lcom/android/settingslib/wifi/WifiStatusTracker;->access$400(Lcom/android/settingslib/wifi/WifiStatusTracker;)Ljava/util/Set;

    move-result-object p0

    invoke-virtual {p1}, Landroid/net/Network;->getNetId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_6
    return-void

    .line 136
    :cond_7
    iget-object p2, p0, Lcom/android/settingslib/wifi/WifiStatusTracker$2;->this$0:Lcom/android/settingslib/wifi/WifiStatusTracker;

    invoke-static {p2}, Lcom/android/settingslib/wifi/WifiStatusTracker;->access$400(Lcom/android/settingslib/wifi/WifiStatusTracker;)Ljava/util/Set;

    move-result-object p2

    invoke-virtual {p1}, Landroid/net/Network;->getNetId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    .line 137
    iget-object p2, p0, Lcom/android/settingslib/wifi/WifiStatusTracker$2;->this$0:Lcom/android/settingslib/wifi/WifiStatusTracker;

    invoke-static {p2}, Lcom/android/settingslib/wifi/WifiStatusTracker;->access$400(Lcom/android/settingslib/wifi/WifiStatusTracker;)Ljava/util/Set;

    move-result-object p2

    invoke-virtual {p1}, Landroid/net/Network;->getNetId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 139
    :cond_8
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker$2;->this$0:Lcom/android/settingslib/wifi/WifiStatusTracker;

    invoke-static {p1, v1}, Lcom/android/settingslib/wifi/WifiStatusTracker;->access$500(Lcom/android/settingslib/wifi/WifiStatusTracker;Landroid/net/wifi/WifiInfo;)V

    .line 140
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker$2;->this$0:Lcom/android/settingslib/wifi/WifiStatusTracker;

    invoke-static {p1}, Lcom/android/settingslib/wifi/WifiStatusTracker;->access$000(Lcom/android/settingslib/wifi/WifiStatusTracker;)V

    .line 141
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker$2;->this$0:Lcom/android/settingslib/wifi/WifiStatusTracker;

    invoke-static {p0}, Lcom/android/settingslib/wifi/WifiStatusTracker;->access$100(Lcom/android/settingslib/wifi/WifiStatusTracker;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 4

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    invoke-static {}, Lcom/android/settingslib/wifi/WifiStatusTracker;->access$200()Ljava/text/SimpleDateFormat;

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

    const-string v1, "onLost: "

    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "network="

    .line 149
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 151
    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker$2;->this$0:Lcom/android/settingslib/wifi/WifiStatusTracker;

    invoke-static {v1, v0}, Lcom/android/settingslib/wifi/WifiStatusTracker;->access$300(Lcom/android/settingslib/wifi/WifiStatusTracker;Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker$2;->this$0:Lcom/android/settingslib/wifi/WifiStatusTracker;

    invoke-static {v0}, Lcom/android/settingslib/wifi/WifiStatusTracker;->access$400(Lcom/android/settingslib/wifi/WifiStatusTracker;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Network;->getNetId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker$2;->this$0:Lcom/android/settingslib/wifi/WifiStatusTracker;

    invoke-static {v0}, Lcom/android/settingslib/wifi/WifiStatusTracker;->access$400(Lcom/android/settingslib/wifi/WifiStatusTracker;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Network;->getNetId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 154
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker$2;->this$0:Lcom/android/settingslib/wifi/WifiStatusTracker;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/settingslib/wifi/WifiStatusTracker;->access$500(Lcom/android/settingslib/wifi/WifiStatusTracker;Landroid/net/wifi/WifiInfo;)V

    .line 155
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker$2;->this$0:Lcom/android/settingslib/wifi/WifiStatusTracker;

    invoke-static {p1}, Lcom/android/settingslib/wifi/WifiStatusTracker;->access$000(Lcom/android/settingslib/wifi/WifiStatusTracker;)V

    .line 156
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker$2;->this$0:Lcom/android/settingslib/wifi/WifiStatusTracker;

    invoke-static {p0}, Lcom/android/settingslib/wifi/WifiStatusTracker;->access$100(Lcom/android/settingslib/wifi/WifiStatusTracker;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
