.class public interface abstract Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;
.super Ljava/lang/Object;
.source "BluetoothController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/BluetoothController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onBluetoothDevicesChanged()V
.end method

.method public abstract onBluetoothScanStateChanged(Z)V
.end method

.method public abstract onBluetoothStateChange(Z)V
.end method

.method public onMusicShareDiscoveryStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onMusicShareStateChanged(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;)V
    .locals 0

    return-void
.end method
