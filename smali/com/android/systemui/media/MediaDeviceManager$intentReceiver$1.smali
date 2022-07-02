.class public final Lcom/android/systemui/media/MediaDeviceManager$intentReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "MediaDeviceManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/media/MediaDeviceManager;-><init>(Lcom/android/systemui/media/MediaControllerFactory;Lcom/android/systemui/media/LocalMediaManagerFactory;Landroid/media/MediaRouter2Manager;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/media/MediaDeviceManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/media/MediaDeviceManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/MediaDeviceManager$intentReceiver$1;->this$0:Lcom/android/systemui/media/MediaDeviceManager;

    .line 65
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "intent"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    .line 68
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    const/4 v0, -0x1

    .line 69
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_0

    .line 71
    iget-object p1, p0, Lcom/android/systemui/media/MediaDeviceManager$intentReceiver$1;->this$0:Lcom/android/systemui/media/MediaDeviceManager;

    invoke-static {p1}, Lcom/android/systemui/media/MediaDeviceManager;->access$getTAG$p(Lcom/android/systemui/media/MediaDeviceManager;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "SEM_STREAM_DEVICES_CHANGED_ACTION"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object p1, p0, Lcom/android/systemui/media/MediaDeviceManager$intentReceiver$1;->this$0:Lcom/android/systemui/media/MediaDeviceManager;

    invoke-static {p1}, Lcom/android/systemui/media/MediaDeviceManager;->access$getEntries$p(Lcom/android/systemui/media/MediaDeviceManager;)Ljava/util/Map;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/media/MediaDeviceManager$intentReceiver$1;->this$0:Lcom/android/systemui/media/MediaDeviceManager;

    monitor-enter p1

    .line 73
    :try_start_0
    invoke-static {p0}, Lcom/android/systemui/media/MediaDeviceManager;->access$getEntries$p(Lcom/android/systemui/media/MediaDeviceManager;)Ljava/util/Map;

    move-result-object p0

    sget-object p2, Lcom/android/systemui/media/MediaDeviceManager$intentReceiver$1$onReceive$1$1;->INSTANCE:Lcom/android/systemui/media/MediaDeviceManager$intentReceiver$1$onReceive$1$1;

    invoke-interface {p0, p2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 77
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0

    :cond_0
    :goto_0
    return-void
.end method
