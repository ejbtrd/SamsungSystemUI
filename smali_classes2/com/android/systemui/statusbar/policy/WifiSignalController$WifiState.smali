.class public Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;
.super Lcom/android/settingslib/SignalIcon$State;
.source "WifiSignalController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/WifiSignalController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WifiState"
.end annotation


# instance fields
.field public epdgConnected:Z

.field public isCarrierMerged:Z

.field public isDefault:Z

.field public isEmptyConnectedTransport:Z

.field public isGigaAp:Z

.field public isTransient:Z

.field public networkId:I

.field public receivedConnectivityReport:Z

.field public receivedInetCondition:I

.field public shouldForceHide:Z

.field public ssid:Ljava/lang/String;

.field public statusLabel:Ljava/lang/String;

.field public subId:I

.field public wifi6EMode:Z

.field public wifi6Mode:Z

.field public wifiConfiguration:Landroid/net/wifi/WifiConfiguration;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 486
    invoke-direct {p0}, Lcom/android/settingslib/SignalIcon$State;-><init>()V

    const/4 v0, 0x1

    .line 496
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->receivedConnectivityReport:Z

    const/4 v0, -0x1

    .line 497
    iput v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->receivedInetCondition:I

    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/android/settingslib/SignalIcon$State;)V
    .locals 1

    .line 506
    invoke-super {p0, p1}, Lcom/android/settingslib/SignalIcon$State;->copyFrom(Lcom/android/settingslib/SignalIcon$State;)V

    .line 507
    check-cast p1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    .line 508
    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->ssid:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->ssid:Ljava/lang/String;

    .line 509
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->isTransient:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->isTransient:Z

    .line 510
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->isDefault:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->isDefault:Z

    .line 511
    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->statusLabel:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->statusLabel:Ljava/lang/String;

    .line 512
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->isCarrierMerged:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->isCarrierMerged:Z

    .line 513
    iget v0, p1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->subId:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->subId:I

    .line 514
    sget-boolean v0, Lcom/android/systemui/BasicRune;->STATUS_NETWORK_WIFI_FLASHING:Z

    if-eqz v0, :cond_0

    .line 515
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->receivedConnectivityReport:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->receivedConnectivityReport:Z

    .line 516
    iget v0, p1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->receivedInetCondition:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->receivedInetCondition:I

    .line 519
    :cond_0
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->shouldForceHide:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->shouldForceHide:Z

    .line 521
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->wifi6Mode:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->wifi6Mode:Z

    .line 522
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->wifi6EMode:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->wifi6EMode:Z

    .line 525
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->epdgConnected:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->epdgConnected:Z

    .line 526
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->isGigaAp:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->isGigaAp:Z

    .line 527
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->isEmptyConnectedTransport:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->isEmptyConnectedTransport:Z

    .line 530
    iget v0, p1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->networkId:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->networkId:I

    .line 531
    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .line 566
    invoke-super {p0, p1}, Lcom/android/settingslib/SignalIcon$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 569
    :cond_0
    check-cast p1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    .line 572
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->receivedConnectivityReport:Z

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->receivedConnectivityReport:Z

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1

    iget v0, p1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->receivedInetCondition:I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->receivedInetCondition:I

    if-ne v0, v2, :cond_1

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->shouldForceHide:Z

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->shouldForceHide:Z

    if-ne v0, v2, :cond_1

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->wifi6Mode:Z

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->wifi6Mode:Z

    if-ne v0, v2, :cond_1

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->wifi6EMode:Z

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->wifi6EMode:Z

    if-ne v0, v2, :cond_1

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->epdgConnected:Z

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->epdgConnected:Z

    if-ne v0, v2, :cond_1

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->isGigaAp:Z

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->isGigaAp:Z

    if-ne v0, v2, :cond_1

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->isEmptyConnectedTransport:Z

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->isEmptyConnectedTransport:Z

    if-ne v0, v2, :cond_1

    iget v0, p1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->networkId:I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->networkId:I

    if-ne v0, v2, :cond_1

    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    if-ne v0, v2, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v1

    .line 584
    :goto_0
    iget-object v2, p1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->ssid:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->ssid:Ljava/lang/String;

    invoke-static {v2, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->isTransient:Z

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->isTransient:Z

    if-ne v2, v4, :cond_2

    iget-boolean v2, p1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->isDefault:Z

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->isDefault:Z

    if-ne v2, v4, :cond_2

    iget-object v2, p1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->statusLabel:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->statusLabel:Ljava/lang/String;

    .line 587
    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->isCarrierMerged:Z

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->isCarrierMerged:Z

    if-ne v2, v4, :cond_2

    iget p1, p1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->subId:I

    iget p0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->subId:I

    if-ne p1, p0, :cond_2

    if-eqz v0, :cond_2

    move v1, v3

    :cond_2
    return v1
.end method

.method protected toString(Ljava/lang/StringBuilder;)V
    .locals 1

    .line 537
    invoke-super {p0, p1}, Lcom/android/settingslib/SignalIcon$State;->toString(Ljava/lang/StringBuilder;)V

    const-string v0, ",ssid="

    .line 538
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->ssid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",isTransient="

    .line 539
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->isTransient:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",isDefault="

    .line 540
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->isDefault:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",statusLabel="

    .line 541
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->statusLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",isCarrierMerged="

    .line 542
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->isCarrierMerged:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",subId="

    .line 543
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->subId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 544
    sget-boolean v0, Lcom/android/systemui/BasicRune;->STATUS_NETWORK_WIFI_FLASHING:Z

    if-eqz v0, :cond_0

    const-string v0, ",receivedConnectivityReport="

    .line 545
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->receivedConnectivityReport:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",receivedInetCondition="

    .line 546
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->receivedInetCondition:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    const-string v0, ",shouldForceHide="

    .line 549
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->shouldForceHide:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",wifi6Mode="

    .line 551
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->wifi6Mode:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",wifi6EMode="

    .line 552
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->wifi6EMode:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",epdgConnected="

    .line 555
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->epdgConnected:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",isGigaAp="

    .line 556
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->isGigaAp:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",isNoConnectedTransport="

    .line 557
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->isEmptyConnectedTransport:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",networkId="

    .line 560
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->networkId:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-void
.end method
