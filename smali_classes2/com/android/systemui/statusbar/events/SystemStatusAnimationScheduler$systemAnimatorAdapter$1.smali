.class public final Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler$systemAnimatorAdapter$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SystemStatusAnimationScheduler.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;-><init>(Lcom/android/systemui/statusbar/events/SystemEventCoordinator;Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;Lcom/android/systemui/statusbar/phone/StatusBarWindowController;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/basic/util/CoverUtilWrapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler$systemAnimatorAdapter$1;->this$0:Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;

    .line 409
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1    # Landroid/animation/Animator;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 411
    iget-object p1, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler$systemAnimatorAdapter$1;->this$0:Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;

    invoke-static {p1}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->access$notifySystemFinish(Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;)V

    .line 412
    iget-object p1, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler$systemAnimatorAdapter$1;->this$0:Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->getAnimationState()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 413
    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler$systemAnimatorAdapter$1;->this$0:Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;

    invoke-static {p0}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->access$getStatusBarWindowController$p(Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;)Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->setForceStatusBarVisible(Z)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1    # Landroid/animation/Animator;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 418
    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler$systemAnimatorAdapter$1;->this$0:Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;

    invoke-static {p0}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->access$notifySystemStart(Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;)V

    return-void
.end method
