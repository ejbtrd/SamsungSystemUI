.class public Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$NotificationInterruptionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SoundModeTileVolumeMixer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "NotificationInterruptionReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;


# direct methods
.method public static synthetic $r8$lambda$DUMG2nnoivcwmD9lzxj5C0agUNg(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$NotificationInterruptionReceiver;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$NotificationInterruptionReceiver;->lambda$onReceive$0()V

    return-void
.end method

.method protected constructor <init>(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;)V
    .locals 0

    .line 312
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$NotificationInterruptionReceiver;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private synthetic lambda$onReceive$0()V
    .locals 1

    .line 332
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$NotificationInterruptionReceiver;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->access$800(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;)Landroid/app/NotificationManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 333
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$NotificationInterruptionReceiver;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->access$800(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->access$402(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;I)I

    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    .line 330
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.app.action.INTERRUPTION_FILTER_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 331
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$NotificationInterruptionReceiver;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->access$200(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;)Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$MixerHandler;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$NotificationInterruptionReceiver$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$NotificationInterruptionReceiver$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$NotificationInterruptionReceiver;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public registerReceiver()V
    .locals 2

    .line 314
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$NotificationInterruptionReceiver;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->access$700(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 315
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.app.action.INTERRUPTION_FILTER_CHANGED"

    .line 316
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 317
    const-class v1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-virtual {v1, p0, v0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public unregisterReceiver()V
    .locals 2

    .line 320
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$NotificationInterruptionReceiver;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->access$700(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 322
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

    const-string v0, "SoundModeTileVolumeMixer"

    const-string v1, "There is no NotificationInterruptionReceiver"

    .line 324
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
