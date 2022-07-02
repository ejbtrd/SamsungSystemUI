.class public Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper;
.super Ljava/lang/Object;
.source "BluetoothAudioCastWrapper.java"


# instance fields
.field mAudioCastProfileListener:Lcom/samsung/android/bluetooth/SemBluetoothCastProfile$BluetoothCastProfileListener;

.field private mService:Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper$1;-><init>(Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper;)V

    iput-object v0, p0, Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper;->mAudioCastProfileListener:Lcom/samsung/android/bluetooth/SemBluetoothCastProfile$BluetoothCastProfileListener;

    .line 30
    invoke-static {p1, v0}, Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;->getProxy(Landroid/content/Context;Lcom/samsung/android/bluetooth/SemBluetoothCastProfile$BluetoothCastProfileListener;)Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper;)Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper;->mService:Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;

    return-object p0
.end method

.method static synthetic access$002(Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper;Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;)Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper;->mService:Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;

    return-object p1
.end method


# virtual methods
.method public getAudioSharingDeviceName()Ljava/lang/String;
    .locals 2

    .line 47
    iget-object p0, p0, Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper;->mService:Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 50
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;->getAudioCastDevices()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 51
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 52
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;

    if-eqz v1, :cond_1

    .line 54
    invoke-virtual {v1}, Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;->getDeviceName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v0
.end method

.method public getAudioSharingDeviceVolume()I
    .locals 1

    .line 40
    iget-object p0, p0, Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper;->mService:Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, 0x0

    .line 43
    invoke-virtual {p0, v0}, Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;->getAudioSharingDeviceVolume(Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;)I

    move-result p0

    return p0
.end method

.method public setAudioSharingDeviceVolume(I)V
    .locals 1

    .line 34
    iget-object p0, p0, Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper;->mService:Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 35
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;->setAudioSharingDeviceVolume(Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;I)Z

    :cond_0
    return-void
.end method
