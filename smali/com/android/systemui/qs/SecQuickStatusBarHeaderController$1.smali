.class Lcom/android/systemui/qs/SecQuickStatusBarHeaderController$1;
.super Ljava/lang/Object;
.source "SecQuickStatusBarHeaderController.java"

# interfaces
.implements Lcom/android/systemui/privacy/PrivacyItemController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController$1;->this$0:Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private update()V
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController$1;->this$0:Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;

    invoke-static {v0}, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;->access$500(Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    sget v1, Lcom/android/systemui/R$id;->statusIcons:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    .line 118
    iget-object v1, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController$1;->this$0:Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;

    invoke-static {v1}, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;->access$600(Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->setIgnoredSlots(Ljava/util/List;)V

    .line 119
    iget-object p0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController$1;->this$0:Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;

    invoke-static {p0}, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;->access$000(Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;)Lcom/android/systemui/privacy/OngoingPrivacyChip;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/privacy/OngoingPrivacyChip;->getPrivacyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0}, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;->access$100(Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;Z)V

    return-void
.end method


# virtual methods
.method public onFlagLocationChanged(Z)V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController$1;->this$0:Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;

    invoke-static {v0}, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;->access$400(Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;)Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController$1;->this$0:Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;

    invoke-static {v0, p1}, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;->access$402(Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;Z)Z

    .line 112
    invoke-direct {p0}, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController$1;->update()V

    :cond_0
    return-void
.end method

.method public onFlagMicCameraChanged(Z)V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController$1;->this$0:Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;

    invoke-static {v0}, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;->access$300(Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;)Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 103
    iget-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController$1;->this$0:Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;

    invoke-static {v0, p1}, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;->access$302(Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;Z)Z

    .line 104
    invoke-direct {p0}, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController$1;->update()V

    :cond_0
    return-void
.end method

.method public onPrivacyItemsChanged(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/privacy/PrivacyItem;",
            ">;)V"
        }
    .end annotation

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPrivacyItemsChanged : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecQuickStatusBarHeader"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController$1;->this$0:Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;

    invoke-static {v0}, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;->access$000(Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;)Lcom/android/systemui/privacy/OngoingPrivacyChip;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/privacy/OngoingPrivacyChip;->setPrivacyList(Ljava/util/List;)V

    .line 96
    iget-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController$1;->this$0:Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {v0, p1}, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;->access$100(Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;Z)V

    .line 97
    iget-object p0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController$1;->this$0:Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;

    invoke-static {p0}, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;->access$200(Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;)Lcom/android/systemui/privacy/PrivacyDialogController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/privacy/PrivacyDialogController;->dismissDialog()V

    return-void
.end method
