.class public final Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$topPopupAnimationListener$1;
.super Ljava/lang/Object;
.source "SubscreenNotificationController.kt"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/log/LogBuffer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$topPopupAnimationListener$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1    # Landroid/animation/Animator;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1    # Landroid/animation/Animator;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 130
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$topPopupAnimationListener$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->access$getNotiPopupView$p(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 131
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$topPopupAnimationListener$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->access$getNotiPopupView$p(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 132
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$topPopupAnimationListener$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->access$getWindowManager$p(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;)Landroid/view/WindowManager;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$topPopupAnimationListener$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->access$getNotiPopupView$p(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;)Landroid/view/View;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 134
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$topPopupAnimationListener$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->access$setNotiPopupShowing$p(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;Z)V

    .line 135
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$topPopupAnimationListener$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->access$setNotiPopupView$p(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;Landroid/view/View;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1    # Landroid/animation/Animator;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1    # Landroid/animation/Animator;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method
