.class final Lcom/android/systemui/controls/ui/TouchBehavior$bind$1;
.super Ljava/lang/Object;
.source "TouchBehavior.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/ui/TouchBehavior;->bind(Lcom/android/systemui/controls/ui/ControlWithState;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/controls/ui/TouchBehavior;


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/ui/TouchBehavior;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/ui/TouchBehavior$bind$1;->this$0:Lcom/android/systemui/controls/ui/TouchBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .line 94
    iget-object p1, p0, Lcom/android/systemui/controls/ui/TouchBehavior$bind$1;->this$0:Lcom/android/systemui/controls/ui/TouchBehavior;

    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/TouchBehavior;->getCvh()Lcom/android/systemui/controls/ui/ControlViewHolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getCustomControlViewHolder()Lcom/android/systemui/controls/ui/CustomControlViewHolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->getCustomControlActionCoordinator()Lcom/android/systemui/controls/ui/CustomControlActionCoordinator;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/controls/ui/TouchBehavior$bind$1;->this$0:Lcom/android/systemui/controls/ui/TouchBehavior;

    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/TouchBehavior;->getCvh()Lcom/android/systemui/controls/ui/ControlViewHolder;

    move-result-object v0

    .line 96
    iget-object v1, p0, Lcom/android/systemui/controls/ui/TouchBehavior$bind$1;->this$0:Lcom/android/systemui/controls/ui/TouchBehavior;

    invoke-virtual {v1}, Lcom/android/systemui/controls/ui/TouchBehavior;->getTemplate()Landroid/service/controls/templates/ControlTemplate;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/controls/templates/ControlTemplate;->getTemplateId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "template.templateId"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    iget-object v2, p0, Lcom/android/systemui/controls/ui/TouchBehavior$bind$1;->this$0:Lcom/android/systemui/controls/ui/TouchBehavior;

    invoke-virtual {v2}, Lcom/android/systemui/controls/ui/TouchBehavior;->getControl()Landroid/service/controls/Control;

    move-result-object v2

    .line 94
    invoke-interface {p1, v0, v1, v2}, Lcom/android/systemui/controls/ui/CustomControlActionCoordinator;->touchMainAction(Lcom/android/systemui/controls/ui/ControlViewHolder;Ljava/lang/String;Landroid/service/controls/Control;)V

    .line 103
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/controls/ui/TouchBehavior$bind$1;->this$0:Lcom/android/systemui/controls/ui/TouchBehavior;

    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/TouchBehavior;->getTemplate()Landroid/service/controls/templates/ControlTemplate;

    move-result-object p1

    instance-of p1, p1, Landroid/service/controls/templates/StatelessTemplate;

    if-eqz p1, :cond_1

    .line 104
    iget-object p1, p0, Lcom/android/systemui/controls/ui/TouchBehavior$bind$1;->this$0:Lcom/android/systemui/controls/ui/TouchBehavior;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/systemui/controls/ui/TouchBehavior;->access$setStatelessTouch$p(Lcom/android/systemui/controls/ui/TouchBehavior;Z)V

    .line 105
    iget-object p1, p0, Lcom/android/systemui/controls/ui/TouchBehavior$bind$1;->this$0:Lcom/android/systemui/controls/ui/TouchBehavior;

    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/TouchBehavior;->getCvh()Lcom/android/systemui/controls/ui/ControlViewHolder;

    move-result-object v0

    iget-object p1, p0, Lcom/android/systemui/controls/ui/TouchBehavior$bind$1;->this$0:Lcom/android/systemui/controls/ui/TouchBehavior;

    invoke-static {p1}, Lcom/android/systemui/controls/ui/TouchBehavior;->access$getEnabled(Lcom/android/systemui/controls/ui/TouchBehavior;)Z

    move-result v1

    iget-object p1, p0, Lcom/android/systemui/controls/ui/TouchBehavior$bind$1;->this$0:Lcom/android/systemui/controls/ui/TouchBehavior;

    invoke-static {p1}, Lcom/android/systemui/controls/ui/TouchBehavior;->access$getLastColorOffset$p(Lcom/android/systemui/controls/ui/TouchBehavior;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/controls/ui/ControlViewHolder;->applyRenderInfo$frameworks__base__packages__SystemUI__android_common__SystemUI_core$default(Lcom/android/systemui/controls/ui/ControlViewHolder;ZIZILjava/lang/Object;)V

    .line 106
    iget-object p1, p0, Lcom/android/systemui/controls/ui/TouchBehavior$bind$1;->this$0:Lcom/android/systemui/controls/ui/TouchBehavior;

    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/TouchBehavior;->getCvh()Lcom/android/systemui/controls/ui/ControlViewHolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getUiExecutor()Lcom/android/systemui/util/concurrency/DelayableExecutor;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/controls/ui/TouchBehavior$bind$1$1;

    iget-object p0, p0, Lcom/android/systemui/controls/ui/TouchBehavior$bind$1;->this$0:Lcom/android/systemui/controls/ui/TouchBehavior;

    invoke-direct {v0, p0}, Lcom/android/systemui/controls/ui/TouchBehavior$bind$1$1;-><init>(Lcom/android/systemui/controls/ui/TouchBehavior;)V

    const-wide/16 v1, 0xbb8

    invoke-interface {p1, v0, v1, v2}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Ljava/lang/Runnable;

    :cond_1
    return-void
.end method
