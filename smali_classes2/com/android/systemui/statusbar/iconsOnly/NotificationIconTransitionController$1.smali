.class Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NotificationIconTransitionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->animateIconDisappearing()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field isCanceled:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController$1;->this$0:Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 p1, 0x0

    .line 164
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController$1;->isCanceled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    .line 167
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController$1;->isCanceled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 172
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController$1;->isCanceled:Z

    if-nez p1, :cond_0

    .line 174
    iget-object p1, p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController$1;->this$0:Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->access$000(Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;)Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->setNotiAnimRunning(Z)V

    .line 176
    iget-object p1, p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController$1;->this$0:Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->access$100(Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;)Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 178
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController$1;->this$0:Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->access$200(Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;)Landroid/animation/AnimatorSet;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/animation/AnimatorSet;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method
