.class Lcom/android/systemui/globalactions/GlobalActionsDialogLite$8;
.super Landroid/os/Handler;
.source "GlobalActionsDialogLite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/globalactions/GlobalActionsDialogLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;


# direct methods
.method constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialogLite;)V
    .locals 0

    .line 2048
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$8;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 2050
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    if-eq v0, p1, :cond_0

    goto :goto_1

    .line 2062
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$8;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

    invoke-static {p1}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->access$2900(Lcom/android/systemui/globalactions/GlobalActionsDialogLite;)V

    .line 2063
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$8;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyAdapter;

    throw v1

    .line 2052
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$8;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

    iget-object v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;

    if-eqz v0, :cond_3

    .line 2053
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string v0, "dream"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2054
    iget-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$8;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

    iget-object p1, p1, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;

    invoke-virtual {p1}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->completeDismiss()V

    goto :goto_0

    .line 2056
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$8;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

    iget-object p1, p1, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;

    invoke-virtual {p1}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->dismiss()V

    .line 2058
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$8;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

    iput-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;

    :cond_3
    :goto_1
    return-void
.end method
