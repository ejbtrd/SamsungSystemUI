.class Lcom/android/systemui/volume/util/BroadcastManager$2;
.super Landroid/content/BroadcastReceiver;
.source "BroadcastManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/util/BroadcastManager;->registerAudioSharingStateAction(Ljava/util/function/Consumer;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/util/BroadcastManager;

.field final synthetic val$isAudioSharingEnabled:Ljava/util/function/Consumer;

.field final synthetic val$volumeChangedRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/util/BroadcastManager;Ljava/util/function/Consumer;Ljava/lang/Runnable;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/android/systemui/volume/util/BroadcastManager$2;->this$0:Lcom/android/systemui/volume/util/BroadcastManager;

    iput-object p2, p0, Lcom/android/systemui/volume/util/BroadcastManager$2;->val$isAudioSharingEnabled:Ljava/util/function/Consumer;

    iput-object p3, p0, Lcom/android/systemui/volume/util/BroadcastManager$2;->val$volumeChangedRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 91
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 92
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "com.samsung.android.bluetooth.audiocast.action.device.AUDIO_SHARING_MODE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, " "

    const-string/jumbo v2, "onReceive : "

    const-string v3, "BroadcastManager"

    const/4 v4, 0x0

    if-nez v0, :cond_1

    const-string v0, "com.samsung.android.bluetooth.audiocast.action.device.AUDIO_SHARING_DEVICE_VOLUME_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "com.samsung.android.bluetooth.cast.extra.AUDIO_SHARING_DEVICE_VOLUME"

    .line 103
    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 104
    iget-object v0, p0, Lcom/android/systemui/volume/util/BroadcastManager$2;->val$volumeChangedRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 105
    iget-object p0, p0, Lcom/android/systemui/volume/util/BroadcastManager$2;->this$0:Lcom/android/systemui/volume/util/BroadcastManager;

    invoke-static {p0}, Lcom/android/systemui/volume/util/BroadcastManager;->access$000(Lcom/android/systemui/volume/util/BroadcastManager;)Lcom/android/systemui/basic/util/LogWrapper;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "com.samsung.android.bluetooth.cast.extra.AUDIO_SHARING_MODE"

    .line 94
    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    move v4, v0

    .line 96
    :cond_2
    iget-object p2, p0, Lcom/android/systemui/volume/util/BroadcastManager$2;->val$isAudioSharingEnabled:Ljava/util/function/Consumer;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    if-eqz v4, :cond_3

    .line 98
    iget-object p2, p0, Lcom/android/systemui/volume/util/BroadcastManager$2;->val$volumeChangedRunnable:Ljava/lang/Runnable;

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 100
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/volume/util/BroadcastManager$2;->this$0:Lcom/android/systemui/volume/util/BroadcastManager;

    invoke-static {p0}, Lcom/android/systemui/volume/util/BroadcastManager;->access$000(Lcom/android/systemui/volume/util/BroadcastManager;)Lcom/android/systemui/basic/util/LogWrapper;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
