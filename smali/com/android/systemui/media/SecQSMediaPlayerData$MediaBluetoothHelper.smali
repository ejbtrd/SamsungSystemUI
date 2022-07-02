.class Lcom/android/systemui/media/SecQSMediaPlayerData$MediaBluetoothHelper;
.super Ljava/lang/Object;
.source "SecQSMediaPlayerData.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/media/SecQSMediaPlayerData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaBluetoothHelper"
.end annotation


# instance fields
.field mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

.field final synthetic this$0:Lcom/android/systemui/media/SecQSMediaPlayerData;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/SecQSMediaPlayerData;Landroid/content/Context;)V
    .locals 1

    .line 114
    iput-object p1, p0, Lcom/android/systemui/media/SecQSMediaPlayerData$MediaBluetoothHelper;->this$0:Lcom/android/systemui/media/SecQSMediaPlayerData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    .line 117
    invoke-virtual {p1, p2, p0, v0}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    const-string p0, "SecQSMediaPlayerData"

    const-string p1, "getProfileProxy"

    .line 118
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public isDualPlayMode()Z
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/android/systemui/media/SecQSMediaPlayerData$MediaBluetoothHelper;->this$0:Lcom/android/systemui/media/SecQSMediaPlayerData;

    invoke-static {v0}, Lcom/android/systemui/media/SecQSMediaPlayerData;->access$000(Lcom/android/systemui/media/SecQSMediaPlayerData;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 145
    iget-object p0, p0, Lcom/android/systemui/media/SecQSMediaPlayerData$MediaBluetoothHelper;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothA2dp;->semIsDualPlayMode()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 126
    :cond_0
    check-cast p2, Landroid/bluetooth/BluetoothA2dp;

    iput-object p2, p0, Lcom/android/systemui/media/SecQSMediaPlayerData$MediaBluetoothHelper;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    .line 127
    iget-object p0, p0, Lcom/android/systemui/media/SecQSMediaPlayerData$MediaBluetoothHelper;->this$0:Lcom/android/systemui/media/SecQSMediaPlayerData;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/systemui/media/SecQSMediaPlayerData;->access$002(Lcom/android/systemui/media/SecQSMediaPlayerData;Z)Z

    const-string p0, "SecQSMediaPlayerData"

    const-string p1, "onServiceConnected"

    .line 128
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 137
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/media/SecQSMediaPlayerData$MediaBluetoothHelper;->this$0:Lcom/android/systemui/media/SecQSMediaPlayerData;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/systemui/media/SecQSMediaPlayerData;->access$002(Lcom/android/systemui/media/SecQSMediaPlayerData;Z)Z

    const-string p0, "SecQSMediaPlayerData"

    const-string p1, "onServiceDisconnected"

    .line 138
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
