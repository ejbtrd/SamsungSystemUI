.class final Lcom/android/systemui/controls/ui/DefaultBehavior$bind$1$1;
.super Ljava/lang/Object;
.source "DefaultBehavior.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/ui/DefaultBehavior;->bind(Lcom/android/systemui/controls/ui/ControlWithState;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $control:Landroid/service/controls/Control;

.field final synthetic this$0:Lcom/android/systemui/controls/ui/DefaultBehavior;


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/ui/DefaultBehavior;Landroid/service/controls/Control;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/ui/DefaultBehavior$bind$1$1;->this$0:Lcom/android/systemui/controls/ui/DefaultBehavior;

    iput-object p2, p0, Lcom/android/systemui/controls/ui/DefaultBehavior$bind$1$1;->$control:Landroid/service/controls/Control;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 38
    iget-object p1, p0, Lcom/android/systemui/controls/ui/DefaultBehavior$bind$1$1;->this$0:Lcom/android/systemui/controls/ui/DefaultBehavior;

    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/DefaultBehavior;->getCvh()Lcom/android/systemui/controls/ui/ControlViewHolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getCustomControlViewHolder()Lcom/android/systemui/controls/ui/CustomControlViewHolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->getCustomControlActionCoordinator()Lcom/android/systemui/controls/ui/CustomControlActionCoordinator;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/controls/ui/DefaultBehavior$bind$1$1;->this$0:Lcom/android/systemui/controls/ui/DefaultBehavior;

    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/DefaultBehavior;->getCvh()Lcom/android/systemui/controls/ui/ControlViewHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/controls/ui/DefaultBehavior$bind$1$1;->$control:Landroid/service/controls/Control;

    invoke-virtual {v1}, Landroid/service/controls/Control;->getControlTemplate()Landroid/service/controls/templates/ControlTemplate;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/controls/templates/ControlTemplate;->getTemplateId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "control.controlTemplate.templateId"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/controls/ui/DefaultBehavior$bind$1$1;->$control:Landroid/service/controls/Control;

    .line 38
    invoke-interface {p1, v0, v1, p0}, Lcom/android/systemui/controls/ui/CustomControlActionCoordinator;->customTouch(Lcom/android/systemui/controls/ui/ControlViewHolder;Ljava/lang/String;Landroid/service/controls/Control;)V

    :goto_0
    return-void
.end method
