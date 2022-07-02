.class Lcom/android/systemui/qs/tiles/BluetoothTile$1;
.super Ljava/lang/Object;
.source "BluetoothTile.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/BluetoothTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/BluetoothTile;)V
    .locals 0

    .line 531
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$1;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothDevicesChanged()V
    .locals 2

    .line 564
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$1;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/BluetoothTile;->access$500(Lcom/android/systemui/qs/tiles/BluetoothTile;)Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/qs/tiles/BluetoothTile$1$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/BluetoothTile$1$1;-><init>(Lcom/android/systemui/qs/tiles/BluetoothTile$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onBluetoothScanStateChanged(Z)V
    .locals 1

    .line 592
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$1;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->fireScanStateChanged(Z)V

    .line 593
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$1;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/BluetoothTile;->isShowingDetail()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 595
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$1;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/BluetoothTile;->access$700(Lcom/android/systemui/qs/tiles/BluetoothTile;)Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/qs/tiles/BluetoothTile$1$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/BluetoothTile$1$2;-><init>(Lcom/android/systemui/qs/tiles/BluetoothTile$1;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onBluetoothStateChange(Z)V
    .locals 5

    .line 536
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$1;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/BluetoothTile;->access$000(Lcom/android/systemui/qs/tiles/BluetoothTile;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBluetoothStateChange = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$1;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-virtual {p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    .line 538
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$1;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/BluetoothTile;->access$100(Lcom/android/systemui/qs/tiles/BluetoothTile;)Lcom/android/systemui/statusbar/policy/BluetoothController;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/BluetoothController;->getBluetoothState()I

    move-result p1

    const/4 v0, 0x0

    const/16 v1, 0xc

    if-ne p1, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 540
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$1;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-virtual {v3}, Lcom/android/systemui/qs/tiles/BluetoothTile;->isShowingDetail()Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0xa

    if-eq p1, v1, :cond_1

    if-eq p1, v3, :cond_1

    const/16 v1, 0xd

    if-ne p1, v1, :cond_3

    :cond_1
    if-eqz v2, :cond_2

    .line 542
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$1;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/BluetoothTile;->access$100(Lcom/android/systemui/qs/tiles/BluetoothTile;)Lcom/android/systemui/statusbar/policy/BluetoothController;

    move-result-object v1

    const/16 v4, 0x17

    invoke-interface {v1, v4}, Lcom/android/systemui/statusbar/policy/BluetoothController;->setScanMode(I)V

    .line 543
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$1;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/BluetoothTile;->access$100(Lcom/android/systemui/qs/tiles/BluetoothTile;)Lcom/android/systemui/statusbar/policy/BluetoothController;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/policy/BluetoothController;->scan(Z)V

    .line 544
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$1;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/BluetoothTile;->access$200(Lcom/android/systemui/qs/tiles/BluetoothTile;)Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->setItemsVisible(Z)V

    if-ne p1, v3, :cond_3

    .line 546
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$1;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->fireScanStateChanged(Z)V

    :cond_3
    return-void
.end method

.method public onMusicShareDiscoveryStateChanged(Z)V
    .locals 3

    .line 625
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$1;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/BluetoothTile;->isShowingDetail()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 626
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$1;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/BluetoothTile;->access$900(Lcom/android/systemui/qs/tiles/BluetoothTile;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onMusicShareDiscoveryStateChanged() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$1;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/BluetoothTile;->access$100(Lcom/android/systemui/qs/tiles/BluetoothTile;)Lcom/android/systemui/statusbar/policy/BluetoothController;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$1;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/BluetoothTile;->access$1000(Lcom/android/systemui/qs/tiles/BluetoothTile;)Z

    move-result p0

    invoke-interface {v0, p1, p0}, Lcom/android/systemui/statusbar/policy/BluetoothController;->scanMusicShareDevices(ZZ)V

    :cond_0
    return-void
.end method

.method public onMusicShareStateChanged(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;)V
    .locals 1

    .line 616
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$1;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-virtual {p1}, Lcom/android/systemui/qs/tiles/BluetoothTile;->isShowingDetail()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 617
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$1;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/BluetoothTile;->access$800(Lcom/android/systemui/qs/tiles/BluetoothTile;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "onMusicShareStateChanged()"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$1;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/BluetoothTile;->access$200(Lcom/android/systemui/qs/tiles/BluetoothTile;)Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->access$400(Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;)V

    :cond_0
    return-void
.end method
