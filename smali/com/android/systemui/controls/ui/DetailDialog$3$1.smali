.class final Lcom/android/systemui/controls/ui/DetailDialog$3$1;
.super Ljava/lang/Object;
.source "DetailDialog.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/ui/DetailDialog;-><init>(Landroid/content/Context;Lcom/android/wm/shell/TaskView;Landroid/app/PendingIntent;Lcom/android/systemui/controls/ui/ControlViewHolder;Lcom/android/systemui/controls/ui/util/SALogger;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $this_apply:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/android/systemui/controls/ui/DetailDialog;


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/ui/DetailDialog;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/ui/DetailDialog$3$1;->this$0:Lcom/android/systemui/controls/ui/DetailDialog;

    iput-object p2, p0, Lcom/android/systemui/controls/ui/DetailDialog$3$1;->$this_apply:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    iget-object p1, p0, Lcom/android/systemui/controls/ui/DetailDialog$3$1;->this$0:Lcom/android/systemui/controls/ui/DetailDialog;

    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/DetailDialog;->removeDetailTask()V

    .line 149
    iget-object p1, p0, Lcom/android/systemui/controls/ui/DetailDialog$3$1;->this$0:Lcom/android/systemui/controls/ui/DetailDialog;

    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/DetailDialog;->dismiss()V

    .line 150
    iget-object p1, p0, Lcom/android/systemui/controls/ui/DetailDialog$3$1;->$this_apply:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 151
    iget-object p1, p0, Lcom/android/systemui/controls/ui/DetailDialog$3$1;->this$0:Lcom/android/systemui/controls/ui/DetailDialog;

    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/DetailDialog;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/PendingIntent;->send()V

    .line 153
    sget-boolean p1, Lcom/android/systemui/BasicRune;->CONTROLS_SAMSUNG_ANALYTICS:Z

    if-eqz p1, :cond_0

    .line 154
    iget-object p0, p0, Lcom/android/systemui/controls/ui/DetailDialog$3$1;->this$0:Lcom/android/systemui/controls/ui/DetailDialog;

    invoke-static {p0}, Lcom/android/systemui/controls/ui/DetailDialog;->access$getSaLogger$p(Lcom/android/systemui/controls/ui/DetailDialog;)Lcom/android/systemui/controls/ui/util/SALogger;

    move-result-object p0

    sget-object p1, Lcom/android/systemui/controls/ui/util/SALogger$Event$LaunchFullController;->INSTANCE:Lcom/android/systemui/controls/ui/util/SALogger$Event$LaunchFullController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/controls/ui/util/SALogger;->sendEvent(Lcom/android/systemui/controls/ui/util/SALogger$Event;)V

    :cond_0
    return-void
.end method
