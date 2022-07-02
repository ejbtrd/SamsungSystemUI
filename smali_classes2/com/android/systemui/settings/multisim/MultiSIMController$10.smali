.class Lcom/android/systemui/settings/multisim/MultiSIMController$10;
.super Landroid/os/Handler;
.source "MultiSIMController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/settings/multisim/MultiSIMController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;


# direct methods
.method constructor <init>(Lcom/android/systemui/settings/multisim/MultiSIMController;)V
    .locals 0

    .line 770
    iput-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$10;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 773
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x0

    const-string v1, "MultiSIMController"

    packed-switch p1, :pswitch_data_0

    const-string p1, "UpdateDataHandler MESSAGE_EMPTY"

    .line 790
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0
    const-string p1, "MESSAGE_IMS_MANAGER_CONNECTED"

    .line 786
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$10;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-static {p1, v0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->access$900(Lcom/android/systemui/settings/multisim/MultiSIMController;Z)V

    goto :goto_0

    :pswitch_1
    const-string p1, "MESSAGE_UPDATE_SUBSCRIPTION_INFO"

    .line 775
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$10;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/android/systemui/settings/multisim/MultiSIMController;->access$1502(Lcom/android/systemui/settings/multisim/MultiSIMController;Z)Z

    .line 777
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$10;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-static {p1, v0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->access$1000(Lcom/android/systemui/settings/multisim/MultiSIMController;Z)V

    .line 778
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$10;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-static {p1}, Lcom/android/systemui/settings/multisim/MultiSIMController;->access$200(Lcom/android/systemui/settings/multisim/MultiSIMController;)Lcom/android/systemui/settings/multisim/MultiSIMData;

    move-result-object p1

    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$10;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-static {v1}, Lcom/android/systemui/settings/multisim/MultiSIMController;->access$700(Lcom/android/systemui/settings/multisim/MultiSIMController;)Z

    move-result v1

    iput-boolean v1, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->isDataEnabled:Z

    .line 779
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$10;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-static {p1, v0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->access$900(Lcom/android/systemui/settings/multisim/MultiSIMController;Z)V

    goto :goto_0

    :pswitch_2
    const-string p1, "MESSAGE_UPDATE_SERVICE_STATE"

    .line 782
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$10;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-static {p1, v0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->access$900(Lcom/android/systemui/settings/multisim/MultiSIMController;Z)V

    .line 793
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$10;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-static {p0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->access$400(Lcom/android/systemui/settings/multisim/MultiSIMController;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7d0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
