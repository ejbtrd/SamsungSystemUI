.class Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$17;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NotificationPanelViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->flingSettings(FILjava/lang/Runnable;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mIsCanceled:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

.field final synthetic val$onFinishRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Ljava/lang/Runnable;)V
    .locals 0

    .line 4026
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$17;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$17;->val$onFinishRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    .line 4035
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$17;->mIsCanceled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 4040
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$17;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$4102(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)Z

    .line 4041
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$17;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$4202(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)Z

    .line 4042
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$17;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->notifyExpandingFinished()V

    .line 4043
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$17;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$2400(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->resetCheckSnoozeLeavebehind()V

    .line 4044
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$17;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$4302(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 4045
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$17;->val$onFinishRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 4046
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 4048
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$17;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$17;->mIsCanceled:Z

    invoke-static {p1, v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$4400(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;ZZ)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 4030
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$17;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->notifyExpandingStarted()V

    return-void
.end method
