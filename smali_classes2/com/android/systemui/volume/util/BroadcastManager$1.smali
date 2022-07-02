.class Lcom/android/systemui/volume/util/BroadcastManager$1;
.super Landroid/content/BroadcastReceiver;
.source "BroadcastManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/util/BroadcastManager;->registerDisplayManagerStateAction(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/util/BroadcastManager;

.field final synthetic val$isDLNAEnabled:Ljava/util/function/Consumer;

.field final synthetic val$supportTvVolumeControl:Ljava/util/function/Consumer;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/util/BroadcastManager;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/android/systemui/volume/util/BroadcastManager$1;->this$0:Lcom/android/systemui/volume/util/BroadcastManager;

    iput-object p2, p0, Lcom/android/systemui/volume/util/BroadcastManager$1;->val$supportTvVolumeControl:Ljava/util/function/Consumer;

    iput-object p3, p0, Lcom/android/systemui/volume/util/BroadcastManager$1;->val$isDLNAEnabled:Ljava/util/function/Consumer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 55
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 56
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "com.samsung.intent.action.DLNA_STATUS_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_1
    const-string v0, "com.samsung.intent.action.WIFI_DISPLAY_VOLUME_SUPPORT_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v3, v1

    goto :goto_0

    :sswitch_2
    const-string v0, "com.samsung.intent.action.WIFI_DISPLAY_SOURCE_STATE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_0
    const-string v0, "BroadcastManager"

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    const-string/jumbo p1, "status"

    .line 65
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v1, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    .line 67
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/volume/util/BroadcastManager$1;->val$isDLNAEnabled:Ljava/util/function/Consumer;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 68
    iget-object p0, p0, Lcom/android/systemui/volume/util/BroadcastManager$1;->this$0:Lcom/android/systemui/volume/util/BroadcastManager;

    invoke-static {p0}, Lcom/android/systemui/volume/util/BroadcastManager;->access$000(Lcom/android/systemui/volume/util/BroadcastManager;)Lcom/android/systemui/basic/util/LogWrapper;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onReceive : SEM_ACTION_DLNA_STATUS_CHANGED = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :pswitch_1
    const-string/jumbo v3, "state"

    .line 59
    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "isSupportDisplayVolumeControl"

    .line 60
    invoke-virtual {p2, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    .line 61
    iget-object v4, p0, Lcom/android/systemui/volume/util/BroadcastManager$1;->val$supportTvVolumeControl:Ljava/util/function/Consumer;

    if-ne v3, v1, :cond_4

    if-eqz p2, :cond_4

    move v5, v1

    goto :goto_2

    :cond_4
    move v5, v2

    :goto_2
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 62
    iget-object p0, p0, Lcom/android/systemui/volume/util/BroadcastManager$1;->this$0:Lcom/android/systemui/volume/util/BroadcastManager;

    invoke-static {p0}, Lcom/android/systemui/volume/util/BroadcastManager;->access$000(Lcom/android/systemui/volume/util/BroadcastManager;)Lcom/android/systemui/basic/util/LogWrapper;

    move-result-object p0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onReceive : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v3, v1, :cond_5

    if-eqz p2, :cond_5

    goto :goto_3

    :cond_5
    move v1, v2

    :goto_3
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x3f4ab253 -> :sswitch_2
        0x676d493f -> :sswitch_1
        0x706b3984 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
