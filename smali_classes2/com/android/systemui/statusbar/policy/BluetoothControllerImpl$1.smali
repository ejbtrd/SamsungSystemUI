.class Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$1;
.super Ljava/lang/Object;
.source "BluetoothControllerImpl.java"

# interfaces
.implements Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter$BluetoothCastAdapterStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;-><init>(Landroid/content/Context;Lcom/android/systemui/dump/DumpManager;Landroid/os/Looper;Landroid/os/Looper;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothCastAdapterStateChanged(Z)V
    .locals 1

    .line 116
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->access$000(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;)Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v0, 0x7

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
