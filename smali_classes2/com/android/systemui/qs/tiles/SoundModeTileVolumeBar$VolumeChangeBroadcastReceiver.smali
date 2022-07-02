.class public Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$VolumeChangeBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SoundModeTileVolumeBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "VolumeChangeBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;


# direct methods
.method protected constructor <init>(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;)V
    .locals 0

    .line 432
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$VolumeChangeBroadcastReceiver;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-eqz p2, :cond_2

    .line 454
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$VolumeChangeBroadcastReceiver;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;

    iget-object p1, p1, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mBarHandler:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$BarHandler;

    if-nez p1, :cond_0

    goto :goto_0

    .line 455
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    const-string v0, "android.bluetooth.profile.extra.STATE"

    .line 456
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 457
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$VolumeChangeBroadcastReceiver;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BluetoothA2dp.ACTION_CONNECTION_STATE_CHANGED : newState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->printLog(Ljava/lang/String;)V

    .line 459
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$VolumeChangeBroadcastReceiver;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mBarHandler:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$BarHandler;

    const/16 p1, 0xd9c

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$BarHandler;->sendNewMessage(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public registerReceiver()V
    .locals 2

    .line 434
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$VolumeChangeBroadcastReceiver;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 435
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    .line 436
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.HEADSET_PLUG"

    .line 437
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.DOCK_EVENT"

    .line 438
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    .line 439
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.android.fm.player_lock.status.off"

    .line 440
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.android.fm.player_lock.status.on"

    .line 441
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    .line 442
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 443
    const-class v1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-virtual {v1, p0, v0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public unregisterReceiver()V
    .locals 2

    .line 446
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$VolumeChangeBroadcastReceiver;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 448
    :cond_0
    :try_start_0
    const-class v0, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-virtual {v0, p0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "SoundModeTileVolumeBar"

    const-string v1, "There is no VolumeChangeBroadcastReceiver"

    .line 450
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
