.class Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$2;
.super Landroid/content/BroadcastReceiver;
.source "FreeformContainerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$2;->this$0:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 108
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 109
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const/4 v0, -0x1

    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p2, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_1
    const-string p2, "com.samsung.intent.action.LELINK_CAST_CONNECTION_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_2
    const-string p2, "android.intent.action.DATE_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_3
    const-string p2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_4
    const-string p2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_5
    const-string p2, "com.samsung.intent.action.WIFI_DISPLAY_SOURCE_STATE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :goto_0
    const-string p2, "[Manager] onReceive: "

    const-string v1, "FreeformContainer"

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 131
    :pswitch_0
    sget-boolean v0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;->DEBUG:Z

    if-eqz v0, :cond_6

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", Restore only minimized container items"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_6
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$2;->this$0:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;

    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;->mH:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;

    const/16 p1, 0x20

    invoke-virtual {p0, p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;->sendMessage(I)V

    goto/16 :goto_1

    .line 111
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$2;->this$0:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;

    invoke-static {v0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;->access$000(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 112
    iget-object v2, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$2;->this$0:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;

    invoke-static {v2}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;->access$100(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;)Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v2

    .line 113
    iget-object v3, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$2;->this$0:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;

    new-instance v4, Landroid/content/res/Configuration;

    invoke-direct {v4, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    invoke-static {v3, v4}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;->access$102(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;Landroid/content/res/Configuration;)Landroid/content/res/Configuration;

    const v0, 0x13204

    and-int/2addr v0, v2

    if-nez v0, :cond_7

    .line 119
    sget-boolean p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;->DEBUG:Z

    if-eqz p0, :cond_9

    .line 120
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", diff=0x"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", No need to rebuild all"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 120
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 127
    :cond_7
    :pswitch_2
    sget-boolean v0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;->DEBUG:Z

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", Rebuild all"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_8
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$2;->this$0:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;

    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;->mH:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;

    const/16 p1, 0x21

    invoke-virtual {p0, p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;->sendMessage(I)V

    goto :goto_1

    .line 140
    :pswitch_3
    iget-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$2;->this$0:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;

    invoke-virtual {p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;->shouldHideInformation()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 141
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$2;->this$0:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;

    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;->mH:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;

    const/16 p1, 0x19

    invoke-virtual {p0, p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;->sendMessage(I)V

    :cond_9
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3f4ab253 -> :sswitch_5
        0x9780086 -> :sswitch_4
        0x392cb822 -> :sswitch_3
        0x3e117848 -> :sswitch_2
        0x66cad08e -> :sswitch_1
        0x6a0dd473 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
