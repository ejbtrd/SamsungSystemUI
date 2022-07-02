.class Lcom/android/systemui/toast/ToastUI$ToastOutAnimatorListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ToastUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/toast/ToastUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ToastOutAnimatorListener"
.end annotation


# instance fields
.field final mPrevCallback:Landroid/app/ITransientNotificationCallback;

.field final mPrevPresenter:Landroid/widget/ToastPresenter;

.field mShowNextToastRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/systemui/toast/ToastUI;


# direct methods
.method constructor <init>(Lcom/android/systemui/toast/ToastUI;Landroid/widget/ToastPresenter;Landroid/app/ITransientNotificationCallback;Ljava/lang/Runnable;)V
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/android/systemui/toast/ToastUI$ToastOutAnimatorListener;->this$0:Lcom/android/systemui/toast/ToastUI;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 245
    iput-object p2, p0, Lcom/android/systemui/toast/ToastUI$ToastOutAnimatorListener;->mPrevPresenter:Landroid/widget/ToastPresenter;

    .line 246
    iput-object p3, p0, Lcom/android/systemui/toast/ToastUI$ToastOutAnimatorListener;->mPrevCallback:Landroid/app/ITransientNotificationCallback;

    .line 247
    iput-object p4, p0, Lcom/android/systemui/toast/ToastUI$ToastOutAnimatorListener;->mShowNextToastRunnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 256
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    const-string p1, "ToastUI"

    const-string/jumbo v0, "onAnimationCancel"

    .line 257
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-object p1, p0, Lcom/android/systemui/toast/ToastUI$ToastOutAnimatorListener;->mPrevPresenter:Landroid/widget/ToastPresenter;

    iget-object v0, p0, Lcom/android/systemui/toast/ToastUI$ToastOutAnimatorListener;->mPrevCallback:Landroid/app/ITransientNotificationCallback;

    invoke-virtual {p1, v0}, Landroid/widget/ToastPresenter;->hide(Landroid/app/ITransientNotificationCallback;)V

    .line 259
    iget-object p1, p0, Lcom/android/systemui/toast/ToastUI$ToastOutAnimatorListener;->mShowNextToastRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 260
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 262
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/toast/ToastUI$ToastOutAnimatorListener;->this$0:Lcom/android/systemui/toast/ToastUI;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/systemui/toast/ToastUI;->access$002(Lcom/android/systemui/toast/ToastUI;Lcom/android/systemui/toast/ToastUI$ToastOutAnimatorListener;)Lcom/android/systemui/toast/ToastUI$ToastOutAnimatorListener;

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 267
    iget-object p1, p0, Lcom/android/systemui/toast/ToastUI$ToastOutAnimatorListener;->mPrevPresenter:Landroid/widget/ToastPresenter;

    iget-object v0, p0, Lcom/android/systemui/toast/ToastUI$ToastOutAnimatorListener;->mPrevCallback:Landroid/app/ITransientNotificationCallback;

    invoke-virtual {p1, v0}, Landroid/widget/ToastPresenter;->hide(Landroid/app/ITransientNotificationCallback;)V

    .line 268
    iget-object p1, p0, Lcom/android/systemui/toast/ToastUI$ToastOutAnimatorListener;->mShowNextToastRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 269
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 271
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/toast/ToastUI$ToastOutAnimatorListener;->this$0:Lcom/android/systemui/toast/ToastUI;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/systemui/toast/ToastUI;->access$002(Lcom/android/systemui/toast/ToastUI;Lcom/android/systemui/toast/ToastUI$ToastOutAnimatorListener;)Lcom/android/systemui/toast/ToastUI$ToastOutAnimatorListener;

    return-void
.end method

.method setShowNextToastRunnable(Ljava/lang/Runnable;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/android/systemui/toast/ToastUI$ToastOutAnimatorListener;->mShowNextToastRunnable:Ljava/lang/Runnable;

    return-void
.end method
