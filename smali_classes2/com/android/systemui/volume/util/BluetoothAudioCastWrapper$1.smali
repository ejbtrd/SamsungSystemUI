.class Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper$1;
.super Ljava/lang/Object;
.source "BluetoothAudioCastWrapper.java"

# interfaces
.implements Lcom/samsung/android/bluetooth/SemBluetoothCastProfile$BluetoothCastProfileListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper$1;->this$0:Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Lcom/samsung/android/bluetooth/SemBluetoothCastProfile;)V
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper$1;->this$0:Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper;

    check-cast p1, Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;

    invoke-static {p0, p1}, Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper;->access$002(Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper;Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;)Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;

    return-void
.end method

.method public onServiceDisconnected()V
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper$1;->this$0:Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper;

    invoke-static {v0}, Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper;->access$000(Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper;)Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 24
    iget-object p0, p0, Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper$1;->this$0:Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper;->access$002(Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper;Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;)Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;

    :cond_0
    return-void
.end method
