.class final Lcom/android/systemui/controls/ui/TouchBehavior$initialize$1$1;
.super Ljava/lang/Object;
.source "TouchBehavior.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/ui/TouchBehavior$initialize$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

.field final synthetic this$0:Lcom/android/systemui/controls/ui/TouchBehavior;


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/ui/TouchBehavior;Lcom/android/systemui/controls/ui/ControlViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/ui/TouchBehavior$initialize$1$1;->this$0:Lcom/android/systemui/controls/ui/TouchBehavior;

    iput-object p2, p0, Lcom/android/systemui/controls/ui/TouchBehavior$initialize$1$1;->$cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 77
    iget-object v0, p0, Lcom/android/systemui/controls/ui/TouchBehavior$initialize$1$1;->this$0:Lcom/android/systemui/controls/ui/TouchBehavior;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/controls/ui/TouchBehavior;->access$setStatelessTouch$p(Lcom/android/systemui/controls/ui/TouchBehavior;Z)V

    .line 78
    iget-object v2, p0, Lcom/android/systemui/controls/ui/TouchBehavior$initialize$1$1;->$cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    iget-object v0, p0, Lcom/android/systemui/controls/ui/TouchBehavior$initialize$1$1;->this$0:Lcom/android/systemui/controls/ui/TouchBehavior;

    invoke-static {v0}, Lcom/android/systemui/controls/ui/TouchBehavior;->access$getEnabled(Lcom/android/systemui/controls/ui/TouchBehavior;)Z

    move-result v3

    iget-object p0, p0, Lcom/android/systemui/controls/ui/TouchBehavior$initialize$1$1;->this$0:Lcom/android/systemui/controls/ui/TouchBehavior;

    invoke-static {p0}, Lcom/android/systemui/controls/ui/TouchBehavior;->access$getLastColorOffset$p(Lcom/android/systemui/controls/ui/TouchBehavior;)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/android/systemui/controls/ui/ControlViewHolder;->applyRenderInfo$frameworks__base__packages__SystemUI__android_common__SystemUI_core$default(Lcom/android/systemui/controls/ui/ControlViewHolder;ZIZILjava/lang/Object;)V

    return-void
.end method
