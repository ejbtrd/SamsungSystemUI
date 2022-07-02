.class public interface abstract Lcom/android/systemui/statusbar/policy/BluetoothController;
.super Ljava/lang/Object;
.source "BluetoothController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/CallbackController;
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/statusbar/policy/CallbackController<",
        "Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;",
        ">;",
        "Lcom/android/systemui/Dumpable;"
    }
.end annotation


# virtual methods
.method public abstract canConfigBluetooth()Z
.end method

.method public abstract connect(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
.end method

.method public abstract disconnect(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
.end method

.method public abstract getBluetoothState()I
.end method

.method public getCachedCastDevices()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getCastDeviceConnectedList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract getConnectedDevices()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDevices()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLastDeviceName()Ljava/lang/String;
.end method

.method public abstract isBluetoothConnected()Z
.end method

.method public abstract isBluetoothConnecting()Z
.end method

.method public abstract isBluetoothEnabled()Z
.end method

.method public abstract isBluetoothSupported()Z
.end method

.method public isForegroundActivity()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract scan(Z)V
.end method

.method public scanMusicShareDevices(ZZ)V
    .locals 0

    return-void
.end method

.method public abstract setBluetoothEnabled(ZZ)V
.end method

.method public setForegroundActivity(Z)V
    .locals 0

    return-void
.end method

.method public abstract setScanMode(I)V
.end method

.method public abstract updateListDevices()V
.end method
