.class Lcom/android/systemui/settings/multisim/MultiSIMController$11;
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

    .line 797
    iput-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$11;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 800
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x3e8

    const/4 v1, 0x0

    const-string v2, "MultiSIMController"

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3e9

    if-eq p1, v0, :cond_0

    const-string p0, "UIHandler MESSAGE_EMPTY"

    .line 816
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p1, "MESSAGE_UPDATE_SET_NETMODE_DELAY_STATE"

    .line 809
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$11;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-static {p1}, Lcom/android/systemui/settings/multisim/MultiSIMController;->access$200(Lcom/android/systemui/settings/multisim/MultiSIMController;)Lcom/android/systemui/settings/multisim/MultiSIMData;

    move-result-object p1

    iget-boolean p1, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->changingNetMode:Z

    if-eqz p1, :cond_2

    .line 811
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$11;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-static {p1}, Lcom/android/systemui/settings/multisim/MultiSIMController;->access$200(Lcom/android/systemui/settings/multisim/MultiSIMController;)Lcom/android/systemui/settings/multisim/MultiSIMData;

    move-result-object p1

    iput-boolean v1, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->changingNetMode:Z

    .line 812
    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$11;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-static {p0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->access$400(Lcom/android/systemui/settings/multisim/MultiSIMController;)V

    goto :goto_0

    :cond_1
    const-string p1, "MESSAGE_UPDATE_MULTISIM_PREFERRED_DATA_BUTTON"

    .line 802
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$11;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-static {p1}, Lcom/android/systemui/settings/multisim/MultiSIMController;->access$200(Lcom/android/systemui/settings/multisim/MultiSIMController;)Lcom/android/systemui/settings/multisim/MultiSIMData;

    move-result-object p1

    iget-boolean p1, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->changingDataInternally:Z

    if-eqz p1, :cond_2

    .line 804
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$11;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-static {p1}, Lcom/android/systemui/settings/multisim/MultiSIMController;->access$200(Lcom/android/systemui/settings/multisim/MultiSIMController;)Lcom/android/systemui/settings/multisim/MultiSIMData;

    move-result-object p1

    iput-boolean v1, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->changingDataInternally:Z

    .line 805
    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$11;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-static {p0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->access$400(Lcom/android/systemui/settings/multisim/MultiSIMController;)V

    :cond_2
    :goto_0
    return-void
.end method
