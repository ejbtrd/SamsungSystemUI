.class Lcom/android/systemui/popup/PopupUI$1;
.super Landroid/content/BroadcastReceiver;
.source "PopupUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/popup/PopupUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/popup/PopupUI;


# direct methods
.method constructor <init>(Lcom/android/systemui/popup/PopupUI;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/android/systemui/popup/PopupUI$1;->this$0:Lcom/android/systemui/popup/PopupUI;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 82
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 83
    iget-object v0, p0, Lcom/android/systemui/popup/PopupUI$1;->this$0:Lcom/android/systemui/popup/PopupUI;

    invoke-static {v0}, Lcom/android/systemui/popup/PopupUI;->access$000(Lcom/android/systemui/popup/PopupUI;)Lcom/android/systemui/basic/util/LogWrapper;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PopupUIReceiver.onReceive() action : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PopupUI"

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 97
    iget-object p0, p0, Lcom/android/systemui/popup/PopupUI$1;->this$0:Lcom/android/systemui/popup/PopupUI;

    invoke-static {p0}, Lcom/android/systemui/popup/PopupUI;->access$100(Lcom/android/systemui/popup/PopupUI;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/popup/viewmodel/PopupUIViewModel;

    .line 98
    invoke-interface {p1, p2}, Lcom/android/systemui/popup/viewmodel/PopupUIViewModel;->show(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    const-string v0, "displayId"

    .line 87
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 90
    iget-object p0, p0, Lcom/android/systemui/popup/PopupUI$1;->this$0:Lcom/android/systemui/popup/PopupUI;

    invoke-static {p0}, Lcom/android/systemui/popup/PopupUI;->access$100(Lcom/android/systemui/popup/PopupUI;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/popup/viewmodel/PopupUIViewModel;

    .line 91
    invoke-interface {p1}, Lcom/android/systemui/popup/viewmodel/PopupUIViewModel;->dismiss()V

    goto :goto_1

    :cond_1
    return-void
.end method
