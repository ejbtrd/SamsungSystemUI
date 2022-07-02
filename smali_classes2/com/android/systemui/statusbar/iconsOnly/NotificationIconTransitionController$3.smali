.class Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NotificationIconTransitionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->animateIconAppearing()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;)V
    .locals 0

    .line 303
    iput-object p1, p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController$3;->this$0:Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 311
    iget-object p1, p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController$3;->this$0:Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->access$302(Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;Z)Z

    .line 312
    iget-object p1, p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController$3;->this$0:Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->access$500(Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;)Lcom/android/systemui/statusbar/LockscreenNotificationManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->setShowDetail(Z)V

    .line 313
    iget-object p1, p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController$3;->this$0:Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->access$600(Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;)Landroid/animation/AnimatorSet;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/animation/AnimatorSet;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
