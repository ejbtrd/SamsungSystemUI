.class final Lcom/android/systemui/controls/ui/TouchBehavior$bind$1$1;
.super Ljava/lang/Object;
.source "TouchBehavior.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/ui/TouchBehavior$bind$1;->onClick(Landroid/view/View;)V
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

    iput-object p1, p0, Lcom/android/systemui/controls/ui/TouchBehavior$bind$1$1;->this$0:Lcom/android/systemui/controls/ui/TouchBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 107
    iget-object v0, p0, Lcom/android/systemui/controls/ui/TouchBehavior$bind$1$1;->this$0:Lcom/android/systemui/controls/ui/TouchBehavior;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/controls/ui/TouchBehavior;->access$setStatelessTouch$p(Lcom/android/systemui/controls/ui/TouchBehavior;Z)V

    .line 108
    iget-object v0, p0, Lcom/android/systemui/controls/ui/TouchBehavior$bind$1$1;->this$0:Lcom/android/systemui/controls/ui/TouchBehavior;

    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/TouchBehavior;->getCvh()Lcom/android/systemui/controls/ui/ControlViewHolder;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/controls/ui/TouchBehavior$bind$1$1;->this$0:Lcom/android/systemui/controls/ui/TouchBehavior;

    invoke-static {v0}, Lcom/android/systemui/controls/ui/TouchBehavior;->access$getEnabled(Lcom/android/systemui/controls/ui/TouchBehavior;)Z

    move-result v2

    iget-object p0, p0, Lcom/android/systemui/controls/ui/TouchBehavior$bind$1$1;->this$0:Lcom/android/systemui/controls/ui/TouchBehavior;

    invoke-static {p0}, Lcom/android/systemui/controls/ui/TouchBehavior;->access$getLastColorOffset$p(Lcom/android/systemui/controls/ui/TouchBehavior;)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/android/systemui/controls/ui/ControlViewHolder;->applyRenderInfo$frameworks__base__packages__SystemUI__android_common__SystemUI_core$default(Lcom/android/systemui/controls/ui/ControlViewHolder;ZIZILjava/lang/Object;)V

    return-void
.end method
