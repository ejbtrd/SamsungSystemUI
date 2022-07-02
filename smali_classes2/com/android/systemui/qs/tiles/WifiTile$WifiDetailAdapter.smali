.class public Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;
.super Ljava/lang/Object;
.source "WifiTile.java"

# interfaces
.implements Lcom/android/systemui/plugins/qs/DetailAdapter;
.implements Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPointCallback;
.implements Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$WifiApBleStateChangeCallback;
.implements Lcom/android/systemui/qs/QSDetailItems$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/WifiTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "WifiDetailAdapter"
.end annotation


# instance fields
.field private mAccessPoints:[Lcom/android/wifitrackerlib/WifiEntry;

.field private mAvailable:Landroid/view/ViewGroup;

.field private mAvailableItems:Lcom/android/systemui/qs/QSDetailItems;

.field private mAvailableNetworksTitle:Landroid/widget/TextView;

.field private mBleScanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/wifi/SemWifiApBleScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectedNetworksTitle:Landroid/view/View;

.field private mConntected:Landroid/view/ViewGroup;

.field private mHotspotLive:Landroid/view/ViewGroup;

.field private mHotspotLiveItems:Lcom/android/systemui/qs/QSDetailItems;

.field private mItems:Lcom/android/systemui/qs/QSDetailItems;

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/WifiTile;


# direct methods
.method public static synthetic $r8$lambda$igsVStfU-0s83FI1gdDjoaNAF9g(Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->lambda$setToggleState$0()V

    return-void
.end method

.method protected constructor <init>(Lcom/android/systemui/qs/tiles/WifiTile;)V
    .locals 0

    .line 685
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;)Landroid/view/ViewGroup;
    .locals 0

    .line 685
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mConntected:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$4600(Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;)Landroid/view/ViewGroup;
    .locals 0

    .line 685
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mAvailable:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$4700(Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;)Lcom/android/systemui/qs/QSDetailItems;
    .locals 0

    .line 685
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mAvailableItems:Lcom/android/systemui/qs/QSDetailItems;

    return-object p0
.end method

.method static synthetic access$5800(Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;)Lcom/android/systemui/qs/QSDetailItems;
    .locals 0

    .line 685
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mHotspotLiveItems:Lcom/android/systemui/qs/QSDetailItems;

    return-object p0
.end method

.method static synthetic access$5900(Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;)Landroid/view/ViewGroup;
    .locals 0

    .line 685
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mHotspotLive:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;)V
    .locals 0

    .line 685
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->updateItems()V

    return-void
.end method

.method private filterUnreachableAPs()V
    .locals 7

    .line 840
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mAccessPoints:[Lcom/android/wifitrackerlib/WifiEntry;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v5, v0, v3

    .line 841
    invoke-static {v5}, Lcom/android/systemui/qs/tiles/WifiTile;->access$3700(Lcom/android/wifitrackerlib/WifiEntry;)Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v4, v4, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 843
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mAccessPoints:[Lcom/android/wifitrackerlib/WifiEntry;

    array-length v1, v0

    if-eq v4, v1, :cond_3

    .line 845
    new-array v1, v4, [Lcom/android/wifitrackerlib/WifiEntry;

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mAccessPoints:[Lcom/android/wifitrackerlib/WifiEntry;

    .line 847
    array-length v1, v0

    move v3, v2

    :goto_1
    if-ge v2, v1, :cond_3

    aget-object v4, v0, v2

    .line 848
    invoke-static {v4}, Lcom/android/systemui/qs/tiles/WifiTile;->access$3700(Lcom/android/wifitrackerlib/WifiEntry;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mAccessPoints:[Lcom/android/wifitrackerlib/WifiEntry;

    add-int/lit8 v6, v3, 0x1

    aput-object v4, v5, v3

    move v3, v6

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private synthetic lambda$setToggleState$0()V
    .locals 1

    .line 743
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->setToggleState(Z)V

    return-void
.end method

.method private updateHotspotItems()V
    .locals 2

    const/4 v0, 0x0

    const-string v1, ""

    .line 1089
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->updateHotspotItems(ILjava/lang/String;)V

    return-void
.end method

.method private updateHotspotItems(ILjava/lang/String;)V
    .locals 7

    .line 1034
    sget-boolean p1, Lcom/android/systemui/util/Utils;->SPF_SupportMobileApEnhanced:Z

    if-nez p1, :cond_0

    sget-boolean p1, Lcom/android/systemui/util/Utils;->SPF_SupportMobileApEnhancedLite:Z

    if-nez p1, :cond_0

    sget-boolean p1, Lcom/android/systemui/util/Utils;->SPF_SupportMobileApEnhancedWifiOnlyLite:Z

    if-eqz p1, :cond_8

    .line 1035
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1036
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {p2}, Lcom/android/systemui/qs/tiles/WifiTile;->access$3400(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;->getWifiApBleScanList()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mBleScanList:Ljava/util/List;

    if-eqz p2, :cond_7

    .line 1038
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;

    .line 1039
    new-instance v1, Lcom/android/systemui/qs/QSDetailItems$Item;

    invoke-direct {v1}, Lcom/android/systemui/qs/QSDetailItems$Item;-><init>()V

    .line 1040
    iput-object v0, v1, Lcom/android/systemui/qs/QSDetailItems$Item;->tag:Ljava/lang/Object;

    .line 1041
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/WifiTile;->access$3400(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;->getSmartTetheringIcon(Lcom/samsung/android/wifi/SemWifiApBleScanResult;)I

    move-result v2

    iput v2, v1, Lcom/android/systemui/qs/QSDetailItems$Item;->iconResId:I

    .line 1042
    iget-object v2, v0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mSSID:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/systemui/qs/QSDetailItems$Item;->line1:Ljava/lang/CharSequence;

    .line 1044
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/WifiTile;->access$4800(Lcom/android/systemui/qs/tiles/WifiTile;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1045
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/WifiTile;->access$4900(Lcom/android/systemui/qs/tiles/WifiTile;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".AutoHotspot"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateHotspotItems() - status getting from res.mWifiMac->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/WifiTile;->access$3400(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;

    move-result-object v2

    iget-object v4, v0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    invoke-interface {v2, v4}, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;->getWifiApBleStatus(Ljava/lang/String;)I

    move-result v2

    .line 1047
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v5}, Lcom/android/systemui/qs/tiles/WifiTile;->access$5000(Lcom/android/systemui/qs/tiles/WifiTile;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateHotspotItems() - ConnectedStatus-> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " res.mWifiMac-> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_2

    .line 1049
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/WifiTile;->access$5100(Lcom/android/systemui/qs/tiles/WifiTile;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateHotspotItems() - This mac is connected (do nothing) res.mWifiMac-> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1051
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1052
    iget-object v4, v0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mUserName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1053
    iget v0, v0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mBattery:I

    const/16 v4, 0xf

    const/4 v5, 0x1

    if-gt v0, v4, :cond_3

    .line 1054
    iput-boolean v5, v1, Lcom/android/systemui/qs/QSDetailItems$Item;->isDisabled:Z

    .line 1055
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WifiTile;->access$5300(Lcom/android/systemui/qs/tiles/WifiTile;)Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$string;->comma:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    .line 1056
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WifiTile;->access$5200(Lcom/android/systemui/qs/tiles/WifiTile;)Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$string;->hotspot_live_ap_low_battery_summary:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    if-eq v2, v5, :cond_5

    const/4 v0, 0x2

    if-ne v2, v0, :cond_4

    goto :goto_1

    :cond_4
    if-gez v2, :cond_6

    .line 1063
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WifiTile;->access$5700(Lcom/android/systemui/qs/tiles/WifiTile;)Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$string;->comma:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    .line 1064
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WifiTile;->access$5600(Lcom/android/systemui/qs/tiles/WifiTile;)Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$string;->smart_tethering_ap_connection_failed_summary:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1065
    iput-boolean v5, v1, Lcom/android/systemui/qs/QSDetailItems$Item;->isDisabled:Z

    goto :goto_2

    .line 1059
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WifiTile;->access$5500(Lcom/android/systemui/qs/tiles/WifiTile;)Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$string;->comma:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    .line 1060
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WifiTile;->access$5400(Lcom/android/systemui/qs/tiles/WifiTile;)Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$string;->smart_tethering_ap_connecting_summary:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1069
    :cond_6
    :goto_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/systemui/qs/QSDetailItems$Item;->line2:Ljava/lang/CharSequence;

    .line 1070
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1075
    :cond_7
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mHotspotLiveItems:Lcom/android/systemui/qs/QSDetailItems;

    if-eqz p2, :cond_8

    .line 1076
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/systemui/qs/QSDetailItems$Item;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/systemui/qs/QSDetailItems$Item;

    invoke-virtual {p2, p1}, Lcom/android/systemui/qs/QSDetailItems;->setItems([Lcom/android/systemui/qs/QSDetailItems$Item;)V

    .line 1077
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mHotspotLiveItems:Lcom/android/systemui/qs/QSDetailItems;

    new-instance p2, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter$4;

    invoke-direct {p2, p0}, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter$4;-><init>(Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;)V

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    :cond_8
    return-void
.end method

.method private updateItems()V
    .locals 9

    .line 950
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    if-nez v0, :cond_0

    return-void

    .line 951
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mAccessPoints:[Lcom/android/wifitrackerlib/WifiEntry;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    array-length v0, v0

    if-gtz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    iget-object v3, v0, Lcom/android/systemui/qs/tiles/WifiTile;->mSignalCallback:Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;

    iget-object v3, v3, Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;

    iget-boolean v3, v3, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabled:Z

    if-nez v3, :cond_3

    .line 953
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->fireScanStateChanged(Z)V

    goto :goto_0

    .line 955
    :cond_3
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->fireScanStateChanged(Z)V

    .line 959
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/WifiTile;->mSignalCallback:Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;

    iget-boolean v0, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabled:Z

    const/16 v3, 0x8

    if-nez v0, :cond_6

    .line 960
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSDetailItems;->setItems([Lcom/android/systemui/qs/QSDetailItems$Item;)V

    .line 961
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mAvailableItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSDetailItems;->setItems([Lcom/android/systemui/qs/QSDetailItems$Item;)V

    .line 962
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mConntected:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 963
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mAvailable:Landroid/view/ViewGroup;

    sget v2, Lcom/android/systemui/R$id;->available_networks_group:I

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 965
    sget-boolean v0, Lcom/android/systemui/util/Utils;->SPF_SupportMobileApEnhanced:Z

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/android/systemui/util/Utils;->SPF_SupportMobileApEnhancedLite:Z

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/android/systemui/util/Utils;->SPF_SupportMobileApEnhancedWifiOnlyLite:Z

    if-eqz v0, :cond_5

    .line 966
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mHotspotLiveItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSDetailItems;->setItems([Lcom/android/systemui/qs/QSDetailItems$Item;)V

    .line 967
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mHotspotLive:Landroid/view/ViewGroup;

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_5
    return-void

    .line 975
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 976
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 979
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mAccessPoints:[Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz v5, :cond_9

    move v5, v2

    .line 981
    :goto_1
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mAccessPoints:[Lcom/android/wifitrackerlib/WifiEntry;

    array-length v7, v6

    if-ge v5, v7, :cond_9

    .line 982
    aget-object v6, v6, v5

    .line 983
    new-instance v7, Lcom/android/systemui/qs/QSDetailItems$Item;

    invoke-direct {v7}, Lcom/android/systemui/qs/QSDetailItems$Item;-><init>()V

    .line 984
    iput-object v6, v7, Lcom/android/systemui/qs/QSDetailItems$Item;->tag:Ljava/lang/Object;

    .line 985
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v8}, Lcom/android/systemui/qs/tiles/WifiTile;->access$3400(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;

    move-result-object v8

    invoke-interface {v8, v6}, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;->getIcon(Lcom/android/wifitrackerlib/WifiEntry;)I

    move-result v8

    iput v8, v7, Lcom/android/systemui/qs/QSDetailItems$Item;->iconResId:I

    .line 986
    invoke-virtual {v6}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/android/systemui/qs/QSDetailItems$Item;->line1:Ljava/lang/CharSequence;

    .line 988
    invoke-virtual {v6}, Lcom/android/wifitrackerlib/WifiEntry;->getSummary()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/android/systemui/qs/QSDetailItems$Item;->line2:Ljava/lang/CharSequence;

    .line 994
    invoke-virtual {v6}, Lcom/android/wifitrackerlib/WifiEntry;->semIsSupportedSecurity()Z

    move-result v8

    if-nez v8, :cond_7

    .line 995
    invoke-virtual {v6}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 996
    iput-boolean v2, v7, Lcom/android/systemui/qs/QSDetailItems$Item;->isClickable:Z

    .line 1001
    :cond_7
    invoke-virtual {v6}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v6

    const/4 v8, 0x2

    if-ne v6, v8, :cond_8

    .line 1002
    iput-boolean v1, v7, Lcom/android/systemui/qs/QSDetailItems$Item;->isActive:Z

    .line 1003
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1009
    :cond_8
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1015
    :cond_9
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->updateHotspotItems()V

    .line 1017
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Lcom/android/systemui/qs/QSDetailItems$Item;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/android/systemui/qs/QSDetailItems$Item;

    invoke-virtual {v1, v5}, Lcom/android/systemui/qs/QSDetailItems;->setItems([Lcom/android/systemui/qs/QSDetailItems$Item;)V

    .line 1018
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mAvailableItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Lcom/android/systemui/qs/QSDetailItems$Item;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/android/systemui/qs/QSDetailItems$Item;

    invoke-virtual {v1, v4}, Lcom/android/systemui/qs/QSDetailItems;->setItems([Lcom/android/systemui/qs/QSDetailItems$Item;)V

    .line 1019
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_a

    move v2, v3

    .line 1020
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mConntected:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1021
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mConnectedNetworksTitle:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1022
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mConntected:Landroid/view/ViewGroup;

    sget v1, Lcom/android/systemui/R$id;->connected_networks_title_divider:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 1023
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mAvailableItems:Lcom/android/systemui/qs/QSDetailItems;

    new-instance v1, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter$3;-><init>(Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .line 774
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WifiTile;->access$2900(Lcom/android/systemui/qs/tiles/WifiTile;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createDetailView convertView="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " State : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v4}, Lcom/android/systemui/qs/tiles/WifiTile;->access$3000(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    iget-boolean v4, v4, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " enabled : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    iget-object v4, v4, Lcom/android/systemui/qs/tiles/WifiTile;->mSignalCallback:Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;

    iget-object v4, v4, Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;

    iget-boolean v4, v4, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabled:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 775
    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mAccessPoints:[Lcom/android/wifitrackerlib/WifiEntry;

    .line 784
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/WifiTile;->access$3100(Lcom/android/systemui/qs/tiles/WifiTile;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object p2, v0

    :cond_1
    if-nez p2, :cond_4

    .line 788
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {p2}, Lcom/android/systemui/qs/tiles/WifiTile;->access$3200(Lcom/android/systemui/qs/tiles/WifiTile;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v1, Lcom/android/systemui/R$layout;->qs_detail_wifi:I

    invoke-virtual {p2, v1, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 790
    sget p3, Lcom/android/systemui/R$id;->current_network:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mConntected:Landroid/view/ViewGroup;

    .line 791
    sget v1, Lcom/android/systemui/R$id;->connected_networks_title:I

    invoke-virtual {p3, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mConnectedNetworksTitle:Landroid/view/View;

    .line 792
    iget-object p3, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mConntected:Landroid/view/ViewGroup;

    sget v1, Lcom/android/systemui/R$id;->available_networks_title:I

    invoke-virtual {p3, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mAvailableNetworksTitle:Landroid/widget/TextView;

    .line 793
    iget-object p3, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mConntected:Landroid/view/ViewGroup;

    invoke-static {p1, v0, p3}, Lcom/android/systemui/qs/QSDetailItems;->convertOrInflate(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Lcom/android/systemui/qs/QSDetailItems;

    move-result-object p3

    iput-object p3, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    .line 794
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mConntected:Landroid/view/ViewGroup;

    invoke-virtual {v1, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 795
    iget-object p3, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    const-string v1, "Wifi"

    invoke-virtual {p3, v1}, Lcom/android/systemui/qs/QSDetailItems;->setTagSuffix(Ljava/lang/String;)V

    .line 798
    sget-boolean p3, Lcom/android/systemui/util/Utils;->SPF_SupportMobileApEnhanced:Z

    if-nez p3, :cond_2

    sget-boolean p3, Lcom/android/systemui/util/Utils;->SPF_SupportMobileApEnhancedLite:Z

    if-nez p3, :cond_2

    sget-boolean p3, Lcom/android/systemui/util/Utils;->SPF_SupportMobileApEnhancedWifiOnlyLite:Z

    if-eqz p3, :cond_3

    .line 799
    :cond_2
    sget p3, Lcom/android/systemui/R$id;->hotspot_live_networks:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mHotspotLive:Landroid/view/ViewGroup;

    .line 800
    invoke-static {p1, v0, p3}, Lcom/android/systemui/qs/QSDetailItems;->convertOrInflate(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Lcom/android/systemui/qs/QSDetailItems;

    move-result-object p3

    iput-object p3, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mHotspotLiveItems:Lcom/android/systemui/qs/QSDetailItems;

    const-string v1, "Hotspot.Available"

    .line 801
    invoke-virtual {p3, v1}, Lcom/android/systemui/qs/QSDetailItems;->setTagSuffix(Ljava/lang/String;)V

    .line 802
    iget-object p3, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mHotspotLive:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mHotspotLiveItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {p3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 806
    :cond_3
    sget p3, Lcom/android/systemui/R$id;->available_networks:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mAvailable:Landroid/view/ViewGroup;

    .line 807
    invoke-static {p1, v0, p3}, Lcom/android/systemui/qs/QSDetailItems;->convertOrInflate(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Lcom/android/systemui/qs/QSDetailItems;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mAvailableItems:Lcom/android/systemui/qs/QSDetailItems;

    const-string p3, "Wifi.Available"

    .line 808
    invoke-virtual {p1, p3}, Lcom/android/systemui/qs/QSDetailItems;->setTagSuffix(Ljava/lang/String;)V

    .line 809
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mAvailable:Landroid/view/ViewGroup;

    iget-object p3, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mAvailableItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 810
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {p1, v2}, Lcom/android/systemui/qs/tiles/WifiTile;->access$3102(Lcom/android/systemui/qs/tiles/WifiTile;Z)Z

    .line 812
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mAvailableItems:Lcom/android/systemui/qs/QSDetailItems;

    iget-object p3, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {p3}, Lcom/android/systemui/qs/tiles/WifiTile;->access$3300(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    iget-boolean p3, p3, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz p3, :cond_5

    sget p3, Lcom/android/systemui/R$string;->quick_settings_wifi_detail_scanning_text:I

    goto :goto_1

    :cond_5
    sget p3, Lcom/android/systemui/R$string;->quick_settings_wifi_detail_off_text:I

    :goto_1
    invoke-virtual {p1, p3}, Lcom/android/systemui/qs/QSDetailItems;->setEmptyState(I)V

    .line 814
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/QSDetailItems;->setCallback(Lcom/android/systemui/qs/QSDetailItems$Callback;)V

    .line 816
    sget-boolean p1, Lcom/android/systemui/util/Utils;->SPF_SupportMobileApEnhanced:Z

    if-nez p1, :cond_6

    sget-boolean p1, Lcom/android/systemui/util/Utils;->SPF_SupportMobileApEnhancedLite:Z

    if-nez p1, :cond_6

    sget-boolean p1, Lcom/android/systemui/util/Utils;->SPF_SupportMobileApEnhancedWifiOnlyLite:Z

    if-eqz p1, :cond_7

    .line 817
    :cond_6
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mHotspotLiveItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/QSDetailItems;->setCallback(Lcom/android/systemui/qs/QSDetailItems$Callback;)V

    .line 820
    :cond_7
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mAvailableItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/QSDetailItems;->setCallback(Lcom/android/systemui/qs/QSDetailItems$Callback;)V

    .line 821
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/WifiTile;->access$3400(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;->scanForAccessPoints()V

    .line 822
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/WifiTile;->access$3500(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    iget-boolean p3, p3, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    invoke-virtual {p1, p3}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->fireScanStateChanged(Z)V

    .line 823
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/WifiTile;->access$3600(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    iget-boolean p1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->setItemsVisible(Z)V

    return-object p2
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x98

    return p0
.end method

.method public getSettingsIntent()Landroid/content/Intent;
    .locals 0

    .line 710
    invoke-static {}, Lcom/android/systemui/qs/tiles/WifiTile;->access$900()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 706
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/WifiTile;->access$800(Lcom/android/systemui/qs/tiles/WifiTile;)Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$string;->quick_settings_sec_wifi_label:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getToggleEnabled()Z
    .locals 0

    .line 925
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/WifiTile;->access$4300(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    iget p0, p0, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getToggleState()Ljava/lang/Boolean;
    .locals 0

    .line 715
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/WifiTile;->access$1000(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    iget-boolean p0, p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public onAccessPointsChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/wifitrackerlib/WifiEntry;",
            ">;)V"
        }
    .end annotation

    .line 831
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/wifitrackerlib/WifiEntry;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/wifitrackerlib/WifiEntry;

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mAccessPoints:[Lcom/android/wifitrackerlib/WifiEntry;

    .line 832
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->filterUnreachableAPs()V

    .line 834
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->updateItems()V

    return-void
.end method

.method public onDetailItemClick(Lcom/android/systemui/qs/QSDetailItems$Item;)V
    .locals 3

    if-eqz p1, :cond_6

    .line 860
    iget-object p1, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->tag:Ljava/lang/Object;

    if-nez p1, :cond_0

    goto/16 :goto_0

    .line 861
    :cond_0
    instance-of v0, p1, Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz v0, :cond_3

    .line 862
    check-cast p1, Lcom/android/wifitrackerlib/WifiEntry;

    .line 871
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v0

    if-nez v0, :cond_2

    .line 882
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WifiTile;->access$3400(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;->connect(Lcom/android/wifitrackerlib/WifiEntry;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 883
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/WifiTile;->access$3900(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/qs/QSHost;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/qs/QSHost;->forceCollapsePanels()V

    goto/16 :goto_0

    .line 886
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/WifiTile;->access$4000(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter$1;-><init>(Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;)V

    const-wide/16 v1, 0xfa

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 894
    :cond_2
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 896
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/WifiTile;->access$3400(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;->startSettings(Lcom/android/wifitrackerlib/WifiEntry;)V

    goto/16 :goto_0

    .line 902
    :cond_3
    sget-boolean v0, Lcom/android/systemui/util/Utils;->SPF_SupportMobileApEnhanced:Z

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/android/systemui/util/Utils;->SPF_SupportMobileApEnhancedLite:Z

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/android/systemui/util/Utils;->SPF_SupportMobileApEnhancedWifiOnlyLite:Z

    if-eqz v0, :cond_6

    :cond_4
    instance-of v0, p1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;

    if-eqz v0, :cond_6

    .line 903
    check-cast p1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;

    .line 904
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WifiTile;->access$3400(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;->triggerWifiApBleConnection(Lcom/samsung/android/wifi/SemWifiApBleScanResult;)Z

    move-result v0

    const-string v1, ".AutoHotspot"

    if-eqz v0, :cond_5

    .line 905
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/WifiTile;->access$4100(Lcom/android/systemui/qs/tiles/WifiTile;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDetailItemClick() - Triggering updateHotspotItems for connecting with apBLE.mWifiMac-> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 907
    iget-object p1, p1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->updateHotspotItems(ILjava/lang/String;)V

    goto :goto_0

    .line 910
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/WifiTile;->access$4200(Lcom/android/systemui/qs/tiles/WifiTile;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDetailItemClick() - Triggering updateHotspotItems for connection time out with apBLE.mWifiMac-> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0xa

    .line 911
    iget-object p1, p1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->updateHotspotItems(ILjava/lang/String;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public onDetailItemDisconnect(Lcom/android/systemui/qs/QSDetailItems$Item;)V
    .locals 0

    return-void
.end method

.method public onSettingsActivityTriggered(Landroid/content/Intent;)V
    .locals 1

    .line 855
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/WifiTile;->access$3800(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/plugins/ActivityStarter;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    return-void
.end method

.method public onWifiApBleStateChanged(ILjava/lang/String;)V
    .locals 4

    .line 1093
    sget-boolean v0, Lcom/android/systemui/util/Utils;->SPF_SupportMobileApEnhanced:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/util/Utils;->SPF_SupportMobileApEnhancedLite:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/util/Utils;->SPF_SupportMobileApEnhancedWifiOnlyLite:Z

    if-eqz v0, :cond_2

    .line 1094
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/WifiTile;->access$6000(Lcom/android/systemui/qs/tiles/WifiTile;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".AutoHotspot"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onWifiApBleStateChanged() : mhsMac -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " state -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_1

    return-void

    :cond_1
    if-gtz p1, :cond_2

    .line 1098
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/WifiTile;->access$6100(Lcom/android/systemui/qs/tiles/WifiTile;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onWifiApBleStateChanged() - Triggering updateHotspotItems for connection time out with mhsMac-> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->updateHotspotItems(ILjava/lang/String;)V

    :cond_2
    return-void
.end method

.method public setItemsVisible(Z)V
    .locals 3

    .line 929
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WifiTile;->access$4400(Lcom/android/systemui/qs/tiles/WifiTile;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " setItemsVisible : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_2

    const/4 p1, 0x0

    .line 932
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSDetailItems;->setItems([Lcom/android/systemui/qs/QSDetailItems$Item;)V

    .line 933
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mAvailableItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSDetailItems;->setItems([Lcom/android/systemui/qs/QSDetailItems$Item;)V

    .line 934
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    new-instance v1, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter$2;-><init>(Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 942
    sget-boolean v0, Lcom/android/systemui/util/Utils;->SPF_SupportMobileApEnhanced:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/util/Utils;->SPF_SupportMobileApEnhancedLite:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/util/Utils;->SPF_SupportMobileApEnhancedWifiOnlyLite:Z

    if-eqz v0, :cond_2

    .line 943
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mHotspotLiveItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSDetailItems;->setItems([Lcom/android/systemui/qs/QSDetailItems$Item;)V

    :cond_2
    return-void
.end method

.method public setToggleState(Z)V
    .locals 4

    .line 720
    invoke-static {}, Lcom/android/systemui/qs/tiles/WifiTile;->access$1100()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WifiTile;->access$1200(Lcom/android/systemui/qs/tiles/WifiTile;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setToggleState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WifiTile;->access$1300(Lcom/android/systemui/qs/tiles/WifiTile;)Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x99

    invoke-static {v0, v1, p1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 722
    const-class v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 723
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-interface {v0}, Lcom/android/systemui/knox/KnoxStateMonitor;->isWifiTileBlocked()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    .line 724
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WifiTile;->access$1400(Lcom/android/systemui/qs/tiles/WifiTile;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_2

    .line 731
    :cond_1
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_MANAGE_POWER_PLANNING_DOWNLOADABLE:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WifiTile;->access$1600(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEnableReserveMaxMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 732
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->fireToggleStateChanged(Z)V

    return-void

    .line 736
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WifiTile;->access$200(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    .line 737
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WifiTile;->access$1700(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    .line 738
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WifiTile;->access$1700(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/WifiTile;->access$1700(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    .line 739
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WifiTile;->access$1600(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isLockFunctionsEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    .line 740
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WifiTile;->access$1800(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    .line 741
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/WifiTile;->access$1900(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/qs/QSHost;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/systemui/qs/QSHost;->forceCollapsePanels()V

    .line 742
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/WifiTile;->access$2000(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/plugins/ActivityStarter;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;)V

    invoke-interface {p1, v0}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    .line 745
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->fireToggleStateChanged(Z)V

    return-void

    .line 748
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WifiTile;->access$2200(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/WifiTile;->access$2100(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->copyTo(Lcom/android/systemui/plugins/qs/QSTile$State;)Z

    .line 750
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/android/systemui/qs/tiles/WifiTile;->access$2300()Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :goto_0
    invoke-static {v0, v2}, Lcom/android/systemui/qs/tiles/WifiTile;->access$2400(Lcom/android/systemui/qs/tiles/WifiTile;Ljava/lang/Object;)V

    .line 751
    invoke-static {}, Lcom/android/systemui/qs/tiles/WifiTile;->access$2500()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WifiTile;->access$2600(Lcom/android/systemui/qs/tiles/WifiTile;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setToggleState fireToggleStateChanged"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->fireToggleStateChanged(Z)V

    .line 753
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WifiTile;->access$2700(Lcom/android/systemui/qs/tiles/WifiTile;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1, p1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 754
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/WifiTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/policy/NetworkController;->setWifiEnabled(Z)V

    if-eqz p1, :cond_6

    .line 755
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WifiTile;->access$2800(Lcom/android/systemui/qs/tiles/WifiTile;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "wifi_ap_wifi_sharing"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 763
    :cond_6
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mAvailableItems:Lcom/android/systemui/qs/QSDetailItems;

    if-eqz p1, :cond_7

    sget p1, Lcom/android/systemui/R$string;->quick_settings_wifi_detail_scanning_text:I

    goto :goto_1

    :cond_7
    sget p1, Lcom/android/systemui/R$string;->quick_settings_wifi_detail_off_text:I

    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSDetailItems;->setEmptyState(I)V

    return-void

    .line 725
    :cond_8
    :goto_2
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/WifiTile;->access$1500(Lcom/android/systemui/qs/tiles/WifiTile;)V

    .line 726
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->fireToggleStateChanged(Z)V

    return-void
.end method
