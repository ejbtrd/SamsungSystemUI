.class Lcom/android/systemui/volume/view/VolumePanelMotion$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "VolumePanelMotion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/view/VolumePanelMotion;->startHideVolumeExpandAnimation(Landroid/view/View;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/view/VolumePanelMotion;

.field final synthetic val$endRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/view/VolumePanelMotion;Ljava/lang/Runnable;)V
    .locals 0

    .line 351
    iput-object p1, p0, Lcom/android/systemui/volume/view/VolumePanelMotion$6;->this$0:Lcom/android/systemui/volume/view/VolumePanelMotion;

    iput-object p2, p0, Lcom/android/systemui/volume/view/VolumePanelMotion$6;->val$endRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 359
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumePanelMotion$6;->val$endRunnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 360
    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumePanelMotion$6;->this$0:Lcom/android/systemui/volume/view/VolumePanelMotion;

    new-instance p1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_ANIMATION_FINISHED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/volume/view/VolumePanelMotion;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 354
    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumePanelMotion$6;->this$0:Lcom/android/systemui/volume/view/VolumePanelMotion;

    new-instance p1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_ANIMATION_START:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/volume/view/VolumePanelMotion;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    return-void
.end method
