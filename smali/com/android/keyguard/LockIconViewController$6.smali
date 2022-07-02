.class Lcom/android/keyguard/LockIconViewController$6;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "LockIconViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/LockIconViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/LockIconViewController;


# direct methods
.method constructor <init>(Lcom/android/keyguard/LockIconViewController;)V
    .locals 0

    .line 507
    iput-object p1, p0, Lcom/android/keyguard/LockIconViewController$6;->this$0:Lcom/android/keyguard/LockIconViewController;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method private onAffordanceClick()V
    .locals 2

    .line 568
    iget-object v0, p0, Lcom/android/keyguard/LockIconViewController$6;->this$0:Lcom/android/keyguard/LockIconViewController;

    invoke-static {v0}, Lcom/android/keyguard/LockIconViewController;->access$1400(Lcom/android/keyguard/LockIconViewController;)Lcom/android/systemui/plugins/FalsingManager;

    move-result-object v0

    const/16 v1, 0xe

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTouch(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 573
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/LockIconViewController$6;->this$0:Lcom/android/keyguard/LockIconViewController;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/keyguard/LockIconViewController;->mIsBouncerShowing:Z

    .line 574
    invoke-virtual {v0}, Lcom/android/keyguard/LockIconViewController;->updateVisibility()V

    .line 575
    iget-object p0, p0, Lcom/android/keyguard/LockIconViewController$6;->this$0:Lcom/android/keyguard/LockIconViewController;

    iget-object p0, p0, Lcom/android/keyguard/LockIconViewController;->mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {p0, v1}, Lcom/android/keyguard/KeyguardViewController;->showBouncer(Z)V

    return-void
.end method

.method private wasClickableOnDownEvent()Z
    .locals 0

    .line 564
    iget-object p0, p0, Lcom/android/keyguard/LockIconViewController$6;->this$0:Lcom/android/keyguard/LockIconViewController;

    invoke-static {p0}, Lcom/android/keyguard/LockIconViewController;->access$900(Lcom/android/keyguard/LockIconViewController;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 509
    iget-object p1, p0, Lcom/android/keyguard/LockIconViewController$6;->this$0:Lcom/android/keyguard/LockIconViewController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/keyguard/LockIconViewController;->access$802(Lcom/android/keyguard/LockIconViewController;Z)Z

    .line 510
    iget-object p1, p0, Lcom/android/keyguard/LockIconViewController$6;->this$0:Lcom/android/keyguard/LockIconViewController;

    invoke-static {p1}, Lcom/android/keyguard/LockIconViewController;->access$200(Lcom/android/keyguard/LockIconViewController;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 511
    iget-object p0, p0, Lcom/android/keyguard/LockIconViewController$6;->this$0:Lcom/android/keyguard/LockIconViewController;

    invoke-static {p0, v0}, Lcom/android/keyguard/LockIconViewController;->access$902(Lcom/android/keyguard/LockIconViewController;Z)Z

    return v0

    .line 517
    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/LockIconViewController$6;->this$0:Lcom/android/keyguard/LockIconViewController;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/keyguard/LockIconViewController;->access$902(Lcom/android/keyguard/LockIconViewController;Z)Z

    .line 518
    iget-object p1, p0, Lcom/android/keyguard/LockIconViewController$6;->this$0:Lcom/android/keyguard/LockIconViewController;

    invoke-static {p1}, Lcom/android/keyguard/LockIconViewController;->access$1000(Lcom/android/keyguard/LockIconViewController;)Landroid/os/Vibrator;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 519
    iget-object p1, p0, Lcom/android/keyguard/LockIconViewController$6;->this$0:Lcom/android/keyguard/LockIconViewController;

    invoke-static {p1}, Lcom/android/keyguard/LockIconViewController;->access$1000(Lcom/android/keyguard/LockIconViewController;)Landroid/os/Vibrator;

    move-result-object v1

    .line 520
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    iget-object p0, p0, Lcom/android/keyguard/LockIconViewController$6;->this$0:Lcom/android/keyguard/LockIconViewController;

    .line 521
    invoke-static {p0}, Lcom/android/keyguard/LockIconViewController;->access$1100(Lcom/android/keyguard/LockIconViewController;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/systemui/biometrics/UdfpsController;->EFFECT_CLICK:Landroid/os/VibrationEffect;

    .line 524
    invoke-static {}, Lcom/android/keyguard/LockIconViewController;->access$1200()Landroid/media/AudioAttributes;

    move-result-object v6

    const-string v5, "lockIcon-onDown"

    .line 519
    invoke-virtual/range {v1 .. v6}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Ljava/lang/String;Landroid/media/AudioAttributes;)V

    :cond_1
    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 556
    invoke-direct {p0}, Lcom/android/keyguard/LockIconViewController$6;->wasClickableOnDownEvent()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 559
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/LockIconViewController$6;->onAffordanceClick()V

    const/4 p0, 0x1

    return p0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 6

    .line 530
    invoke-direct {p0}, Lcom/android/keyguard/LockIconViewController$6;->wasClickableOnDownEvent()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 534
    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/LockIconViewController$6;->this$0:Lcom/android/keyguard/LockIconViewController;

    invoke-static {p1}, Lcom/android/keyguard/LockIconViewController;->access$1000(Lcom/android/keyguard/LockIconViewController;)Landroid/os/Vibrator;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 535
    iget-object p1, p0, Lcom/android/keyguard/LockIconViewController$6;->this$0:Lcom/android/keyguard/LockIconViewController;

    invoke-static {p1}, Lcom/android/keyguard/LockIconViewController;->access$1000(Lcom/android/keyguard/LockIconViewController;)Landroid/os/Vibrator;

    move-result-object v0

    .line 536
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    iget-object p1, p0, Lcom/android/keyguard/LockIconViewController$6;->this$0:Lcom/android/keyguard/LockIconViewController;

    .line 537
    invoke-static {p1}, Lcom/android/keyguard/LockIconViewController;->access$1300(Lcom/android/keyguard/LockIconViewController;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/biometrics/UdfpsController;->EFFECT_CLICK:Landroid/os/VibrationEffect;

    .line 540
    invoke-static {}, Lcom/android/keyguard/LockIconViewController;->access$1200()Landroid/media/AudioAttributes;

    move-result-object v5

    const-string v4, "lockIcon-onLongPress"

    .line 535
    invoke-virtual/range {v0 .. v5}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Ljava/lang/String;Landroid/media/AudioAttributes;)V

    .line 542
    :cond_1
    iget-object p1, p0, Lcom/android/keyguard/LockIconViewController$6;->this$0:Lcom/android/keyguard/LockIconViewController;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/keyguard/LockIconViewController;->access$802(Lcom/android/keyguard/LockIconViewController;Z)Z

    .line 543
    invoke-direct {p0}, Lcom/android/keyguard/LockIconViewController$6;->onAffordanceClick()V

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 547
    invoke-direct {p0}, Lcom/android/keyguard/LockIconViewController$6;->wasClickableOnDownEvent()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 550
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/LockIconViewController$6;->onAffordanceClick()V

    const/4 p0, 0x1

    return p0
.end method
