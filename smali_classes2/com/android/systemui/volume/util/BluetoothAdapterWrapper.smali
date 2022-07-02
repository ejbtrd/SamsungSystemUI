.class public Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;
.super Ljava/lang/Object;
.source "BluetoothAdapterWrapper.java"


# instance fields
.field private mA2dp:Landroid/bluetooth/BluetoothA2dp;

.field private mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mHfp:Landroid/bluetooth/BluetoothHeadset;


# direct methods
.method public static synthetic $r8$lambda$o6kpWEs740RKX5fRjILE4K8hqX8(Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;->lambda$getBtScoDeviceName$0(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$v9vdOPHT99PrRh7slMqj9_Dn5uU(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;->lambda$getConnectedDevicesName$2(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$xZce9OBCxzB9jgU7gwuQOjlNJVc(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;->lambda$getConnectedDevicesAddress$1(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper$1;-><init>(Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;)V

    iput-object v0, p0, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 47
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v1, p0, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v2, 0x2

    invoke-virtual {v0, p1, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 50
    iget-object p0, p0, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p0, v1}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    :cond_0
    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;->mHfp:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method private synthetic lambda$getBtScoDeviceName$0(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;->mHfp:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothHeadset;->isAudioConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$getConnectedDevicesAddress$1(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 0

    .line 88
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getConnectedDevicesName$2(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 0

    .line 97
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->semGetAliasName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getActiveBTDeviceName()Ljava/lang/String;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz p0, :cond_0

    .line 70
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothA2dp;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 72
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->semGetAliasName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public getBtScoDeviceName()Ljava/lang/String;
    .locals 3

    .line 56
    iget-object v0, p0, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;->mHfp:Landroid/bluetooth/BluetoothHeadset;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 58
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;)V

    .line 59
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 60
    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/bluetooth/BluetoothDevice;

    if-eqz p0, :cond_0

    .line 62
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->semGetAliasName()Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public getConnectedDevices()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 79
    iget-object p0, p0, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz p0, :cond_0

    .line 80
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothA2dp;->getConnectedDevices()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getConnectedDevicesAddress()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 86
    iget-object p0, p0, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz p0, :cond_0

    .line 87
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothA2dp;->getConnectedDevices()Ljava/util/List;

    move-result-object p0

    .line 88
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper$$ExternalSyntheticLambda1;->INSTANCE:Lcom/android/systemui/volume/util/BluetoothAdapterWrapper$$ExternalSyntheticLambda1;

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 89
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getConnectedDevicesName()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 95
    iget-object p0, p0, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz p0, :cond_0

    .line 96
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothA2dp;->getConnectedDevices()Ljava/util/List;

    move-result-object p0

    .line 97
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/systemui/volume/util/BluetoothAdapterWrapper$$ExternalSyntheticLambda0;

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 98
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
