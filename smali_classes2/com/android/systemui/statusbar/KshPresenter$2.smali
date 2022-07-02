.class Lcom/android/systemui/statusbar/KshPresenter$2;
.super Landroid/content/BroadcastReceiver;
.source "KshPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/KshPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/KshPresenter;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/KshPresenter;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/android/systemui/statusbar/KshPresenter$2;->this$0:Lcom/android/systemui/statusbar/KshPresenter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 64
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.samsung.android.input.POGO_KEYBOARD_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 65
    iget-object p1, p0, Lcom/android/systemui/statusbar/KshPresenter$2;->this$0:Lcom/android/systemui/statusbar/KshPresenter;

    invoke-static {p1}, Lcom/android/systemui/statusbar/KshPresenter;->access$200(Lcom/android/systemui/statusbar/KshPresenter;)Lcom/android/systemui/statusbar/model/KshData;

    move-result-object p1

    const/4 v0, 0x0

    const-string/jumbo v1, "status"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/model/KshData;->setPogoKeyboardConnected(Z)V

    .line 66
    iget-object p1, p0, Lcom/android/systemui/statusbar/KshPresenter$2;->this$0:Lcom/android/systemui/statusbar/KshPresenter;

    invoke-static {p1}, Lcom/android/systemui/statusbar/KshPresenter;->access$100(Lcom/android/systemui/statusbar/KshPresenter;)Lcom/android/systemui/statusbar/KshView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/KshView;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 67
    iget-object p1, p0, Lcom/android/systemui/statusbar/KshPresenter$2;->this$0:Lcom/android/systemui/statusbar/KshPresenter;

    invoke-static {p1}, Lcom/android/systemui/statusbar/KshPresenter;->access$200(Lcom/android/systemui/statusbar/KshPresenter;)Lcom/android/systemui/statusbar/model/KshData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/model/KshData;->getKshGroups()Ljava/util/List;

    move-result-object p1

    .line 68
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x2

    .line 69
    iget-object v0, p0, Lcom/android/systemui/statusbar/KshPresenter$2;->this$0:Lcom/android/systemui/statusbar/KshPresenter;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KshPresenter;->access$200(Lcom/android/systemui/statusbar/KshPresenter;)Lcom/android/systemui/statusbar/model/KshData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/model/KshData;->getSamsungSystemShortcuts()Landroid/view/KeyboardShortcutGroup;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object p2, p0, Lcom/android/systemui/statusbar/KshPresenter$2;->this$0:Lcom/android/systemui/statusbar/KshPresenter;

    invoke-static {p2}, Lcom/android/systemui/statusbar/KshPresenter;->access$200(Lcom/android/systemui/statusbar/KshPresenter;)Lcom/android/systemui/statusbar/model/KshData;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/model/KshData;->setKshGroups(Ljava/util/List;)V

    .line 71
    iget-object p0, p0, Lcom/android/systemui/statusbar/KshPresenter$2;->this$0:Lcom/android/systemui/statusbar/KshPresenter;

    invoke-static {p0}, Lcom/android/systemui/statusbar/KshPresenter;->access$100(Lcom/android/systemui/statusbar/KshPresenter;)Lcom/android/systemui/statusbar/KshView;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/KshView;->updateKshDialog(Ljava/util/List;)V

    :cond_0
    return-void
.end method
