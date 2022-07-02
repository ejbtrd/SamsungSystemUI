.class Lcom/android/systemui/statusbar/KshPresenter$3;
.super Ljava/lang/Object;
.source "KshPresenter.java"

# interfaces
.implements Landroid/view/WindowManager$KeyboardShortcutsReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/KshPresenter;->showKeyboardShortcuts(I)V
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

    .line 131
    iput-object p1, p0, Lcom/android/systemui/statusbar/KshPresenter$3;->this$0:Lcom/android/systemui/statusbar/KshPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyboardShortcutsReceived(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/KeyboardShortcutGroup;",
            ">;)V"
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/android/systemui/statusbar/KshPresenter$3;->this$0:Lcom/android/systemui/statusbar/KshPresenter;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KshPresenter;->access$200(Lcom/android/systemui/statusbar/KshPresenter;)Lcom/android/systemui/statusbar/model/KshData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/model/KshData;->getSamsungSystemShortcuts()Landroid/view/KeyboardShortcutGroup;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    iget-object v0, p0, Lcom/android/systemui/statusbar/KshPresenter$3;->this$0:Lcom/android/systemui/statusbar/KshPresenter;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KshPresenter;->access$200(Lcom/android/systemui/statusbar/KshPresenter;)Lcom/android/systemui/statusbar/model/KshData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/model/KshData;->getSamsungAppShortcuts()Landroid/view/KeyboardShortcutGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 138
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/KshPresenter$3;->this$0:Lcom/android/systemui/statusbar/KshPresenter;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KshPresenter;->access$200(Lcom/android/systemui/statusbar/KshPresenter;)Lcom/android/systemui/statusbar/model/KshData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/model/KshData;->setKshGroups(Ljava/util/List;)V

    .line 141
    iget-object p0, p0, Lcom/android/systemui/statusbar/KshPresenter$3;->this$0:Lcom/android/systemui/statusbar/KshPresenter;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/KshPresenter;->access$600(Lcom/android/systemui/statusbar/KshPresenter;Ljava/util/List;)V

    return-void
.end method
