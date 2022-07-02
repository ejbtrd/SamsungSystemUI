.class Lcom/samsung/android/edgelighting/container/NotificationEffect$GestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "NotificationEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/edgelighting/container/NotificationEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/edgelighting/container/NotificationEffect;


# direct methods
.method private constructor <init>(Lcom/samsung/android/edgelighting/container/NotificationEffect;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 433
    iput-object p1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect$GestureListener;->this$0:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/edgelighting/container/NotificationEffect;Lcom/samsung/android/edgelighting/container/NotificationEffect$1;)V
    .locals 0

    .line 433
    invoke-direct {p0, p1}, Lcom/samsung/android/edgelighting/container/NotificationEffect$GestureListener;-><init>(Lcom/samsung/android/edgelighting/container/NotificationEffect;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    .line 459
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect$GestureListener;->this$0:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    invoke-static {v0}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->access$200(Lcom/samsung/android/edgelighting/container/NotificationEffect;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onDoubleTap : "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect$GestureListener;->this$0:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    iget-object v0, v0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mMorphView:Lcom/samsung/android/edgelighting/view/MorphView;

    invoke-virtual {v0}, Lcom/samsung/android/edgelighting/view/MorphView;->getTouchRect()Landroid/graphics/Rect;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 464
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect$GestureListener;->this$0:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    invoke-static {v0}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->access$400(Lcom/samsung/android/edgelighting/container/NotificationEffect;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 466
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect$GestureListener;->this$0:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->launchPendingIntent()V

    return v1

    .line 470
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect$GestureListener;->this$0:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    iget-object v0, v0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mPm:Landroid/os/PowerManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 471
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect$GestureListener;->this$0:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->access$500(Lcom/samsung/android/edgelighting/container/NotificationEffect;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 472
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect$GestureListener;->this$0:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    const-string p1, "double touch to root view"

    invoke-static {p0, p1}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->access$600(Lcom/samsung/android/edgelighting/container/NotificationEffect;Ljava/lang/String;)V

    return v1

    .line 479
    :cond_1
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    .line 444
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect$GestureListener;->this$0:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    iget-object v0, v0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mPm:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 447
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect$GestureListener;->this$0:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mTouchableRec:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, v0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    if-eqz p0, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    return v1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "e1",
            "e2",
            "velocityX",
            "velocityY"
        }
    .end annotation

    .line 487
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect$GestureListener;->this$0:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    iget-object v0, v0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mPm:Landroid/os/PowerManager;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect$GestureListener;->this$0:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    invoke-static {v0}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->access$400(Lcom/samsung/android/edgelighting/container/NotificationEffect;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 489
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 490
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x43160000    # 150.0f

    cmpl-float v3, v1, v2

    const/high16 v4, 0x43c80000    # 400.0f

    const/4 v5, 0x1

    if-lez v3, :cond_1

    cmpg-float v3, v0, v4

    if-gez v3, :cond_1

    .line 493
    iget-object p1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect$GestureListener;->this$0:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    invoke-static {p1}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->access$200(Lcom/samsung/android/edgelighting/container/NotificationEffect;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Fling down "

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    iget-object p1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect$GestureListener;->this$0:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->removeTouchArea()V

    .line 496
    invoke-static {}, Lcom/samsung/android/edgelighting/utils/Utils;->isWinnerAndFolded()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 497
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect$GestureListener;->this$0:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->launchPendingIntent()V

    goto :goto_0

    .line 499
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect$GestureListener;->this$0:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->onFlickDownAnimation()V

    :goto_0
    return v5

    :cond_1
    cmpl-float v2, v0, v2

    if-lez v2, :cond_3

    cmpg-float v2, v1, v4

    if-gez v2, :cond_3

    .line 505
    iget-object p3, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect$GestureListener;->this$0:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    invoke-static {p3}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->access$200(Lcom/samsung/android/edgelighting/container/NotificationEffect;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "Fling Side "

    invoke-static {p3, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p3, 0x0

    .line 509
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    sub-float/2addr p2, p1

    const/4 p1, 0x0

    cmpg-float p1, p2, p1

    if-gez p1, :cond_2

    move p3, v5

    .line 512
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect$GestureListener;->this$0:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->removeTouchArea()V

    .line 513
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect$GestureListener;->this$0:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    invoke-static {p0, p3}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->access$700(Lcom/samsung/android/edgelighting/container/NotificationEffect;Z)V

    return v5

    :cond_3
    const/high16 v2, -0x3d740000    # -70.0f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_4

    .line 516
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect$GestureListener;->this$0:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    invoke-static {v0}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->access$200(Lcom/samsung/android/edgelighting/container/NotificationEffect;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Fling up "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect$GestureListener;->this$0:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    invoke-virtual {v0}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->removeTouchArea()V

    .line 518
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect$GestureListener;->this$0:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    invoke-virtual {v0}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->onFlickUpAnimation()V

    goto :goto_1

    .line 520
    :cond_4
    iget-object v2, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect$GestureListener;->this$0:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    invoke-static {v2}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->access$200(Lcom/samsung/android/edgelighting/container/NotificationEffect;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onFling dx : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " dy : "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "velocityX "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " velocityY : "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    :cond_5
    :goto_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p0

    return p0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    .line 547
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect$GestureListener;->this$0:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    invoke-static {v0}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->access$200(Lcom/samsung/android/edgelighting/container/NotificationEffect;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onLongPress"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect$GestureListener;->this$0:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    iget-object v0, v0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mPm:Landroid/os/PowerManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 549
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect$GestureListener;->this$0:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    iget-object v0, v0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mMorphView:Lcom/samsung/android/edgelighting/view/MorphView;

    invoke-virtual {v0}, Lcom/samsung/android/edgelighting/view/MorphView;->getTouchRect()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 550
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 551
    iget-object p1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect$GestureListener;->this$0:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    invoke-static {p1}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->access$400(Lcom/samsung/android/edgelighting/container/NotificationEffect;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 552
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect$GestureListener;->this$0:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->access$800(Lcom/samsung/android/edgelighting/container/NotificationEffect;Z)V

    :cond_0
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    .line 528
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect$GestureListener;->this$0:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    invoke-static {v0}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->access$200(Lcom/samsung/android/edgelighting/container/NotificationEffect;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onSingleTapConfirmed : "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect$GestureListener;->this$0:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    iget-object v0, v0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mPm:Landroid/os/PowerManager;

    if-eqz v0, :cond_1

    .line 530
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect$GestureListener;->this$0:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    iget-object v0, v0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mMorphView:Lcom/samsung/android/edgelighting/view/MorphView;

    invoke-virtual {v0}, Lcom/samsung/android/edgelighting/view/MorphView;->getTouchRect()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 532
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 533
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect$GestureListener;->this$0:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    invoke-static {v0}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->access$400(Lcom/samsung/android/edgelighting/container/NotificationEffect;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 534
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect$GestureListener;->this$0:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    invoke-virtual {v0}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->launchPendingIntent()V

    goto :goto_0

    .line 539
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect$GestureListener;->this$0:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    invoke-static {v0}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->access$200(Lcom/samsung/android/edgelighting/container/NotificationEffect;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " Ignore single Tap in screen off"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
