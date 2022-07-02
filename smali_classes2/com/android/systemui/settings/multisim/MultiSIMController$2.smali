.class Lcom/android/systemui/settings/multisim/MultiSIMController$2;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lcom/android/systemui/settings/multisim/MultiSIMController;Landroid/os/Handler;)V
    .locals 0

    .line 304
    iput-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$2;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2

    .line 306
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string/jumbo p1, "set_network_mode_by_quick_panel"

    .line 310
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 311
    iget-object p2, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$2;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-static {p2}, Lcom/android/systemui/settings/multisim/MultiSIMController;->access$100(Lcom/android/systemui/settings/multisim/MultiSIMController;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    move v0, p2

    .line 312
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onChanged() -set_network_mode_by_quick_panel : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "MultiSIMController"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_2

    .line 314
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$2;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-static {p1}, Lcom/android/systemui/settings/multisim/MultiSIMController;->access$200(Lcom/android/systemui/settings/multisim/MultiSIMController;)Lcom/android/systemui/settings/multisim/MultiSIMData;

    move-result-object p1

    iput-boolean p2, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->changingNetMode:Z

    .line 315
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$2;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-static {p1}, Lcom/android/systemui/settings/multisim/MultiSIMController;->access$300(Lcom/android/systemui/settings/multisim/MultiSIMController;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 316
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$2;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-static {p1}, Lcom/android/systemui/settings/multisim/MultiSIMController;->access$300(Lcom/android/systemui/settings/multisim/MultiSIMController;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x3e9

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 317
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$2;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-static {p1}, Lcom/android/systemui/settings/multisim/MultiSIMController;->access$300(Lcom/android/systemui/settings/multisim/MultiSIMController;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$2;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-static {v0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->access$300(Lcom/android/systemui/settings/multisim/MultiSIMController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 320
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$2;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-static {p0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->access$400(Lcom/android/systemui/settings/multisim/MultiSIMController;)V

    :cond_3
    return-void
.end method
