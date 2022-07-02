.class public final synthetic Lcom/android/systemui/volume/view/VolumePanelMotion$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Landroid/view/View;

.field public final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/view/VolumePanelMotion$$ExternalSyntheticLambda5;->f$0:Landroid/view/View;

    iput-object p2, p0, Lcom/android/systemui/volume/view/VolumePanelMotion$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelMotion$$ExternalSyntheticLambda5;->f$0:Landroid/view/View;

    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumePanelMotion$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Runnable;

    invoke-static {v0, p0, p1}, Lcom/android/systemui/volume/view/VolumePanelMotion;->$r8$lambda$65l75GC3ydWVLJ6Lq7Zxru6NjCk(Landroid/view/View;Ljava/lang/Runnable;Landroid/animation/ValueAnimator;)V

    return-void
.end method
