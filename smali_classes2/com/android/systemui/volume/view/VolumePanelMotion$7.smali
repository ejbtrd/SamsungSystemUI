.class Lcom/android/systemui/volume/view/VolumePanelMotion$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "VolumePanelMotion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/view/VolumePanelMotion;->startMidAnimation(IILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/view/VolumePanelMotion;

.field final synthetic val$stream:I

.field final synthetic val$targetState:I


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/view/VolumePanelMotion;II)V
    .locals 0

    .line 511
    iput-object p1, p0, Lcom/android/systemui/volume/view/VolumePanelMotion$7;->this$0:Lcom/android/systemui/volume/view/VolumePanelMotion;

    iput p2, p0, Lcom/android/systemui/volume/view/VolumePanelMotion$7;->val$stream:I

    iput p3, p0, Lcom/android/systemui/volume/view/VolumePanelMotion$7;->val$targetState:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 514
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumePanelMotion$7;->this$0:Lcom/android/systemui/volume/view/VolumePanelMotion;

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_VOLUME_ICON_ANIMATION_FINISHED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    iget v2, p0, Lcom/android/systemui/volume/view/VolumePanelMotion$7;->val$stream:I

    .line 515
    invoke-virtual {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->ICON_TARGET_STATE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    iget p0, p0, Lcom/android/systemui/volume/view/VolumePanelMotion$7;->val$targetState:I

    .line 516
    invoke-virtual {v0, v1, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->ICON_CURRENT_STATE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    const/4 v1, 0x2

    .line 517
    invoke-virtual {p0, v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    .line 518
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p0

    const/4 v0, 0x0

    .line 514
    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/volume/view/VolumePanelMotion;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    return-void
.end method
