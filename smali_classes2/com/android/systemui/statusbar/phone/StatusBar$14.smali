.class Lcom/android/systemui/statusbar/phone/StatusBar$14;
.super Lcom/android/systemui/animation/DelegateLaunchAnimatorController;
.source "StatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;->wrapAnimationController(Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;Z)Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;)V
    .locals 0

    .line 3612
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$14;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-direct {p0, p2}, Lcom/android/systemui/animation/DelegateLaunchAnimatorController;-><init>(Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;)V

    return-void
.end method


# virtual methods
.method public onLaunchAnimationEnd(Z)V
    .locals 1

    .line 3621
    invoke-virtual {p0}, Lcom/android/systemui/animation/DelegateLaunchAnimatorController;->getDelegate()Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;->onLaunchAnimationEnd(Z)V

    .line 3622
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$14;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->setLaunchAnimationRunning(Z)V

    return-void
.end method

.method public onLaunchAnimationStart(Z)V
    .locals 1

    .line 3615
    invoke-virtual {p0}, Lcom/android/systemui/animation/DelegateLaunchAnimatorController;->getDelegate()Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;->onLaunchAnimationStart(Z)V

    .line 3616
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$14;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->setLaunchAnimationRunning(Z)V

    return-void
.end method
