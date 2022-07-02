.class Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$1;
.super Ljava/lang/Object;
.source "PanelCarrierLabelManager.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->animateLabelAlpha(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$1;->this$0:Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 205
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    .line 206
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$1;->this$0:Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->access$000(Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;)F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->access$100(Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;F)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$1;->this$0:Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->access$200(Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;F)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$1;->this$0:Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->updateLabelVisibility(Z)V

    .line 209
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$1;->this$0:Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->access$000(Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;)F

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->access$300(Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;FF)Z

    move-result v0

    if-nez v0, :cond_2

    .line 210
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$1;->this$0:Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->access$002(Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;F)F

    :cond_2
    return-void
.end method
